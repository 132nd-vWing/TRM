SEAD_script = true                 -- set to TRUE if you want to enable SEAD Evasion of SAMs
SEAD_enabled_Sams = {"THREAT SITE 5 #005", "THREAT SITE 6 #003", "THREAT SITE 8", "THREAT SITE 12","THREAT SITE 12 #002"}      -- insert the UNIT Names as they are set in the mission editor to activate SEAD Evasion for the Groups listed
Target_Smoke = false               -- set to TRUE if you want red smoke deployed from the Target SAM  (mainly used for debugging)
radar_delay = math.random(120,300)   -- time in seconds until the unit will turn its radar back on (random number between the two)
move_distance =  math.random(50,200)-- meters the unit will move before stopping (random number between the two)















function SEAD_active()
  BASE:HandleEvent(EVENTS.Shot)
  function BASE:OnEventShot(EventData)
    local clientplane = EventData.IniPlayerName
    if clientplane ~= nil
    then
      env.info("a missile has been shot by "..clientplane)
      local SEAD_Weapon_Name = EventData.Weapon:getTypeName()
      if SEAD_Weapon_Name == "weapons.missiles.AGM_88" then
        local SEAD_Target = EventData.Weapon:getTarget()
        local SEAD_Target_Name = Unit.getName(SEAD_Target)
        local SEAD_Target_Unit = UNIT:FindByName(SEAD_Target_Name)
        local SEAD_Target_GROUP = SEAD_Target_Unit:GetGroup()
        local SEAD_Shooter_Unit = EventData.IniUnit
        local SEAD_Shooter_Name = SEAD_Shooter_Unit:GetName()
        if #SEAD_enabled_Sams ~= 0
        then
          for _,Sead_enabled_Sam in ipairs(SEAD_enabled_Sams) do
            if Sead_enabled_Sam == SEAD_Target_Name
            then
              env.info(SEAD_Shooter_Name.." has fired "..SEAD_Weapon_Name.." at "..SEAD_Target_Name)
              env.info("AGM_88 shot detected from  "..SEAD_Shooter_Name.." on "..SEAD_Target_Name)
              SEAD_evade(SEAD_Target_GROUP)
            end
          end
        end
      end
    end
  end
end


if SEAD_script == true
then SEAD_active()
end



  
function SEAD_evade(_group) -- define the evasive action of the SAMsite when shot at by a HARM
  local _unit = _group:GetUnit(1)
  if Target_Smoke == true then
    _unit:SmokeRed() end
  _group:OptionAlarmStateGreen()
  local _groupcoordinate = _group:GetCoordinate()
  local _tocoordinate = _groupcoordinate:Translate( move_distance, math.random(359) )
  local _ToCoord_vec2 = _tocoordinate:GetVec2()
  _group:TaskRouteToVec2( _ToCoord_vec2 )
  _group:OptionAlarmStateGreen()
  radarbackon = SCHEDULER:New(nil,function()_group:OptionAlarmStateRed()
    env.info("radar back on")
    radarbackon:Stop()
  end,{},radar_delay,360,0,380)
  
end




--- Threat Sites---
ActiveThreatSites = {}
local function Sam_Footprints()
  if #ActiveThreatSites ~= 0
  then
    for _,activeSam in ipairs(ActiveThreatSites) do
      MessageToAll("Active Sites: "..activeSam,5)
    end
  else
    MessageToAll("No Sam Sites Active",5)
  end
end

local function InactiveThreadSites(ActiveThreatSites, SamtoRemove)
  for i,SamtoRemove in ipairs(ActiveThreatSites)
  do
    if SamtoRemove == SamtoRemove
    then
      table.remove(ActiveThreatSites,i)
      env.info(SamtoRemove.." with index "..i.." removed from ActiveThreatSites")
    end
  end
end


-- Deactivate all Threatsites at the start --
ThreatSite_1 = GROUP:FindByName("THREAT SITE 1")
ThreatSite_2 = GROUP:FindByName("THREAT SITE 2")
ThreatSite_3 = GROUP:FindByName("THREAT SITE 3")
ThreatSite_4 = GROUP:FindByName("THREAT SITE 4")
ThreatSite_5 = GROUP:FindByName("THREAT SITE 5")
ThreatSite_6 = GROUP:FindByName("THREAT SITE 6")
ThreatSite_7 = GROUP:FindByName("THREAT SITE 7")
ThreatSite_8 = GROUP:FindByName("THREAT SITE 8")
ThreatSite_9 = GROUP:FindByName("THREAT SITE 9")
ThreatSite_10 = GROUP:FindByName("THREAT SITE 10")
ThreatSite_11 = GROUP:FindByName("THREAT SITE 11")
ThreatSite_12 = GROUP:FindByName("THREAT SITE 12")
ThreatSite_13 = GROUP:FindByName("THREAT SITE 13")

ThreatSite_1:SetAIOff()
ThreatSite_2:SetAIOff()
ThreatSite_3:SetAIOff()
ThreatSite_4:SetAIOff()
ThreatSite_5:SetAIOff()
ThreatSite_6:SetAIOff()
ThreatSite_7:SetAIOff()
ThreatSite_8:SetAIOff()
ThreatSite_9:SetAIOff()
ThreatSite_10:SetAIOff()
ThreatSite_11:SetAIOff()
ThreatSite_12:SetAIOff()
ThreatSite_13:SetAIOff()



function ThreatSite_1_threat_on()
  ThreatSite_1:SetAIOn()
  Menu_ThreatSite_1_On:Remove()
  Menu_ThreatSite_1_Off = MENU_MISSION_COMMAND:New("Deactivate Threat Site 1",Menu_Threat_Options_Ranges1_4,ThreatSite_1_threat_off)
  table.insert(ActiveThreatSites,"Threatsite1")
end

function ThreatSite_1_threat_off()
  ThreatSite_1:SetAIOff()
  Menu_ThreatSite_1_Off:Remove()
  Menu_ThreatSite_1_On = MENU_MISSION_COMMAND:New("Activate Threat Site 1",Menu_Threat_Options_Ranges1_4,ThreatSite_1_threat_on)
  InactiveThreadSites(ActiveThreatSites, "Threatsite1")
end

function ThreatSite_2_threat_on()
  ThreatSite_2:SetAIOn()
  Menu_ThreatSite_2_On:Remove()
  Menu_ThreatSite_2_Off = MENU_MISSION_COMMAND:New("Deactivate Threat Site 2",Menu_Threat_Options_Ranges1_4,ThreatSite_2_threat_off)
  table.insert(ActiveThreatSites,"Threatsite2")
end

function ThreatSite_2_threat_off()
  ThreatSite_2:SetAIOff()
  Menu_ThreatSite_2_Off:Remove()
  Menu_ThreatSite_2_On = MENU_MISSION_COMMAND:New("Activate Threat Site 2",Menu_Threat_Options_Ranges1_4,ThreatSite_2_threat_on)
  InactiveThreadSites(ActiveThreatSites, "Threatsite2")
end

function ThreatSite_3_threat_on()
  ThreatSite_3:SetAIOn()
  Menu_ThreatSite_3_On:Remove()
  Menu_ThreatSite_3_Off = MENU_MISSION_COMMAND:New("Deactivate Threat Site 3",Menu_Threat_Options_Ranges1_4,ThreatSite_3_threat_off)
  table.insert(ActiveThreatSites,"Threatsite3")
end

function ThreatSite_3_threat_off()
  ThreatSite_3:SetAIOff()
  Menu_ThreatSite_3_Off:Remove()
  Menu_ThreatSite_3_On = MENU_MISSION_COMMAND:New("Activate Threat Site 3",Menu_Threat_Options_Ranges1_4,ThreatSite_3_threat_on)
  InactiveThreadSites(ActiveThreatSites, "Threatsite3")
end

function ThreatSite_4_threat_on()
  ThreatSite_4:SetAIOn()
  Menu_ThreatSite_4_On:Remove()
  Menu_ThreatSite_4_Off = MENU_MISSION_COMMAND:New("Deactivate Threat Site 4",Menu_Threat_Options_Ranges1_4,ThreatSite_4_threat_off)
  table.insert(ActiveThreatSites,"Threatsite4")
end

function ThreatSite_4_threat_off()
  ThreatSite_4:SetAIOff()
  Menu_ThreatSite_4_Off:Remove()
  Menu_ThreatSite_4_On = MENU_MISSION_COMMAND:New("Activate Threat Site 4",Menu_Threat_Options_Ranges1_4,ThreatSite_4_threat_on)
  InactiveThreadSites(ActiveThreatSites, "Threatsite4")
end

function ThreatSite_5_threat_on()
  ThreatSite_5:SetAIOn()
  Menu_ThreatSite_5_On:Remove()
  Menu_ThreatSite_5_Off = MENU_MISSION_COMMAND:New("Deactivate Threat Site 5",Menu_Threat_Options_Ranges5_8,ThreatSite_5_threat_off)
  table.insert(ActiveThreatSites,"Threatsite5")
end

function ThreatSite_5_threat_off()
  ThreatSite_5:SetAIOff()
  Menu_ThreatSite_5_Off:Remove()
  Menu_ThreatSite_5_On = MENU_MISSION_COMMAND:New("Activate Threat Site 5",Menu_Threat_Options_Ranges5_8,ThreatSite_5_threat_on)
  InactiveThreadSites(ActiveThreatSites, "Threatsite5")
end

function ThreatSite_6_threat_on()
  ThreatSite_6:SetAIOn()
  Menu_ThreatSite_6_On:Remove()
  Menu_ThreatSite_6_Off = MENU_MISSION_COMMAND:New("Deactivate Threat Site 6",Menu_Threat_Options_Ranges5_8,ThreatSite_6_threat_off)
  table.insert(ActiveThreatSites,"Threatsite6")
end

function ThreatSite_6_threat_off()
  ThreatSite_6:SetAIOff()
  Menu_ThreatSite_6_Off:Remove()
  Menu_ThreatSite_6_On = MENU_MISSION_COMMAND:New("Activate Threat Site 6",Menu_Threat_Options_Ranges5_8,ThreatSite_6_threat_on)
  InactiveThreadSites(ActiveThreatSites, "Threatsite6")
end

function ThreatSite_7_threat_on()
  ThreatSite_7:SetAIOn()
  Menu_ThreatSite_7_On:Remove()
  Menu_ThreatSite_7_Off = MENU_MISSION_COMMAND:New("Deactivate Threat Site 7",Menu_Threat_Options_Ranges5_8,ThreatSite_7_threat_off)
  table.insert(ActiveThreatSites,"Threatsite7")
end

function ThreatSite_7_threat_off()
  ThreatSite_7:SetAIOff()
  Menu_ThreatSite_7_Off:Remove()
  Menu_ThreatSite_7_On = MENU_MISSION_COMMAND:New("Activate Threat Site 7",Menu_Threat_Options_Ranges5_8,ThreatSite_7_threat_on)
  InactiveThreadSites(ActiveThreatSites, "Threatsite7")
end

function ThreatSite_8_threat_on()
  ThreatSite_8:SetAIOn()
  Menu_ThreatSite_8_On:Remove()
  Menu_ThreatSite_8_Off = MENU_MISSION_COMMAND:New("Deactivate Threat Site 8",Menu_Threat_Options_Ranges5_8,ThreatSite_8_threat_off)
  table.insert(ActiveThreatSites,"Threatsite8")
end

function ThreatSite_8_threat_off()
  ThreatSite_8:SetAIOff()
  Menu_ThreatSite_8_Off:Remove()
  Menu_ThreatSite_8_On = MENU_MISSION_COMMAND:New("Activate Threat Site 8",Menu_Threat_Options_Ranges5_8,ThreatSite_8_threat_on)
  InactiveThreadSites(ActiveThreatSites, "Threatsite8")
end

function ThreatSite_9_threat_on()
  ThreatSite_9:SetAIOn()
  Menu_ThreatSite_9_On:Remove()
  Menu_ThreatSite_9_Off = MENU_MISSION_COMMAND:New("Deactivate Threat Site 9",Menu_Threat_Options_MOAs,ThreatSite_9_threat_off)
  table.insert(ActiveThreatSites,"Threatsite9")
end

function ThreatSite_9_threat_off()
  ThreatSite_9:SetAIOff()
  Menu_ThreatSite_9_Off:Remove()
  Menu_ThreatSite_9_On = MENU_MISSION_COMMAND:New("Activate Threat Site 9",Menu_Threat_Options_MOAs,ThreatSite_9_threat_on)
  InactiveThreadSites(ActiveThreatSites, "Threatsite9")
end

function ThreatSite_10_threat_on()
  ThreatSite_10:SetAIOn()
  Menu_ThreatSite_10_On:Remove()
  Menu_ThreatSite_10_Off = MENU_MISSION_COMMAND:New("Deactivate Threat Site 10",Menu_Threat_Options_MOAs,ThreatSite_10_threat_off)
  table.insert(ActiveThreatSites,"Threatsite10")
end

function ThreatSite_10_threat_off()
  ThreatSite_10:SetAIOff()
  Menu_ThreatSite_10_Off:Remove()
  Menu_ThreatSite_10_On = MENU_MISSION_COMMAND:New("Activate Threat Site 10",Menu_Threat_Options_MOAs,ThreatSite_10_threat_on)
  InactiveThreadSites(ActiveThreatSites, "Threatsite10")
end

function ThreatSite_11_threat_on()
  ThreatSite_11:SetAIOn()
  Menu_ThreatSite_11_On:Remove()
  Menu_ThreatSite_11_Off = MENU_MISSION_COMMAND:New("Deactivate Threat Site 11",Menu_Threat_Options_MOAs,ThreatSite_11_threat_off)
  table.insert(ActiveThreatSites,"Threatsite11")
end

function ThreatSite_11_threat_off()
  ThreatSite_11:SetAIOff()
  Menu_ThreatSite_11_Off:Remove()
  Menu_ThreatSite_11_On = MENU_MISSION_COMMAND:New("Activate Threat Site 11",Menu_Threat_Options_MOAs,ThreatSite_11_threat_on)
  InactiveThreadSites(ActiveThreatSites, "Threatsite11")
end

function ThreatSite_12_threat_on()
  ThreatSite_12:SetAIOn()
  Menu_ThreatSite_12_On:Remove()
  Menu_ThreatSite_12_Off = MENU_MISSION_COMMAND:New("Deactivate Threat Site 12",Menu_Threat_Options_Ranges1_4,ThreatSite_12_threat_off)
  table.insert(ActiveThreatSites,"Threatsite12")
end

function ThreatSite_12_threat_off()
  ThreatSite_12:SetAIOff()
  Menu_ThreatSite_12_Off:Remove()
  Menu_ThreatSite_12_On = MENU_MISSION_COMMAND:New("Activate Threat Site 12",Menu_Threat_Options_Ranges1_4,ThreatSite_12_threat_on)
  InactiveThreadSites(ActiveThreatSites, "Threatsite12")
end

function ThreatSite_13_threat_on()
  ThreatSite_13:SetAIOn()
  Menu_ThreatSite_13_On:Remove()
  Menu_ThreatSite_13_Off = MENU_MISSION_COMMAND:New("Deactivate Threat Site 13",Menu_Threat_Options_MOAs,ThreatSite_13_threat_off)
  table.insert(ActiveThreatSites,"Threatsite13")
end

function ThreatSite_13_threat_off()
  ThreatSite_13:SetAIOff()
  Menu_ThreatSite_13_Off:Remove()
  Menu_ThreatSite_13_On = MENU_MISSION_COMMAND:New("Activate Threat Site 13",Menu_Threat_Options_MOAs,ThreatSite_13_threat_on)
  InactiveThreadSites(ActiveThreatSites, "Threatsite13")
end


Menu_Threat_Options_Ranges = MENU_MISSION:New("Ranges", Menu_Threat_Options)
Menu_Threat_Options_Ranges1_4 = MENU_MISSION:New("Threat Sites 1-4", Menu_Threat_Options_Ranges)
Menu_Threat_Options_Ranges5_8 = MENU_MISSION:New("Threat Sites 5-8", Menu_Threat_Options_Ranges)
Menu_Threat_Options_MOAs = MENU_MISSION:New("MOAs", Menu_Threat_Options)
Menu_Threat_ListActive = MENU_MISSION_COMMAND:New("List Active Threat Sites",Menu_Threat_Options,Sam_Footprints)

Menu_ThreatSite_1_On = MENU_MISSION_COMMAND:New("Activate Threat Site 1",Menu_Threat_Options_Ranges1_4,ThreatSite_1_threat_on)
Menu_ThreatSite_2_On = MENU_MISSION_COMMAND:New("Activate Threat Site 2",Menu_Threat_Options_Ranges1_4,ThreatSite_2_threat_on)
Menu_ThreatSite_3_On = MENU_MISSION_COMMAND:New("Activate Threat Site 3",Menu_Threat_Options_Ranges1_4,ThreatSite_3_threat_on)
Menu_ThreatSite_4_On = MENU_MISSION_COMMAND:New("Activate Threat Site 4",Menu_Threat_Options_Ranges1_4,ThreatSite_4_threat_on)
Menu_ThreatSite_5_On = MENU_MISSION_COMMAND:New("Activate Threat Site 5",Menu_Threat_Options_Ranges5_8,ThreatSite_5_threat_on)
Menu_ThreatSite_6_On = MENU_MISSION_COMMAND:New("Activate Threat Site 6",Menu_Threat_Options_Ranges5_8,ThreatSite_6_threat_on)
Menu_ThreatSite_7_On = MENU_MISSION_COMMAND:New("Activate Threat Site 7",Menu_Threat_Options_Ranges5_8,ThreatSite_7_threat_on)
Menu_ThreatSite_8_On = MENU_MISSION_COMMAND:New("Activate Threat Site 8",Menu_Threat_Options_Ranges5_8,ThreatSite_8_threat_on)
Menu_ThreatSite_9_On = MENU_MISSION_COMMAND:New("Activate Threat Site 9",Menu_Threat_Options_MOAs,ThreatSite_9_threat_on)
Menu_ThreatSite_10_On = MENU_MISSION_COMMAND:New("Activate Threat Site 10",Menu_Threat_Options_MOAs,ThreatSite_10_threat_on)
Menu_ThreatSite_11_On = MENU_MISSION_COMMAND:New("Activate Threat Site 11",Menu_Threat_Options_MOAs,ThreatSite_11_threat_on)
Menu_ThreatSite_12_On = MENU_MISSION_COMMAND:New("Activate Threat Site 12",Menu_Threat_Options_Ranges1_4,ThreatSite_12_threat_on)
Menu_ThreatSite_13_On = MENU_MISSION_COMMAND:New("Activate Threat Site 13",Menu_Threat_Options_MOAs,ThreatSite_13_threat_on)


  
