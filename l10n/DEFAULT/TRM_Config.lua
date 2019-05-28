


--command center off
_SETTINGS:SetPlayerMenuOff()
-- command center off

function CONTROLLABLE:OptionDisperseOff()
env.info("Group Spawned")
end

-- FOX script (replaces Missiletrainer)
fox=FOX:New()
fox:AddSafeZone(ZONE:New("global_save"))
fox:AddLaunchZone(ZONE:New("global_launch"))
fox:Start()


---- Missile Trainer
--Trainer = MISSILETRAINER:New(70, "Missile Trainer is active!" )
--Trainer:InitMessagesOnOff(true):InitAlertsToAll(true):InitAlertsHitsOnOff(true):InitAlertsLaunchesOnOff(true):InitBearingOnOff(false):InitRangeOnOff(false):InitTrackingOnOff(false):InitTrackingToAll(false):InitMenusOnOff(false)
---- Missile Trainer

-- Threat Options --
Menu_Threat_Options = MENU_MISSION:New("Threat Sites")
-- Threat Options --

FARP_KUTAISI = GROUP:FindByName("FARP KUTAISI Tanker")
SCHEDULER:New(nil,function()
  if FARP_KUTAISI ~= nil
  then
    BEACON1_Radio = FARP_KUTAISI:GetBeacon()
    BEACON1_Radio:RadioBeacon("beacon.ogg",114.166,radio.modulation.AM,150,55)--preset1
  end end,{},1,60)
  
  
  FARP_London = GROUP:FindByName("FARP LONDON vehicles")
SCHEDULER:New(nil,function()
  if FARP_London ~= nil
  then
    BEACON3_Radio = FARP_London:GetBeacon()
    BEACON3_Radio:RadioBeacon("beacon.ogg",114.583,radio.modulation.AM,150,55)--preset3
  end end,{},31,60)

  Hospital_Kutaisi = GROUP:FindByName("Hospital Kutaisi")
SCHEDULER:New(nil,function()
  if Hospital_Kutaisi ~= nil
  then
    BEACON4_Radio = Hospital_Kutaisi:GetBeacon()
    BEACON4_Radio:RadioBeacon("beacon.ogg",121.500,radio.modulation.AM,150,55)--preset4
  end end,{},46,60)




-- AWACS --
awacs1 = SPAWN:New("BLUE AWACS #1 #IFF:5211FR")
function awacs1spawn()
  awacs1:OnSpawnGroup(
    function (awacs1_group)
      awacs1_unit_fuel_scheduler = SCHEDULER:New(nil,function ()
        awacs1_unit = awacs1_group:GetUnit(1)
        if awacs1_unit
        then
          awacs1_unit_fuel = awacs1_unit:GetFuel()
          if awacs1_unit_fuel <= 0.3
          then
            awacs1_group:ClearTasks()
            awacs1_unit_fuel_scheduler:Stop()
            env.info(awacs1_group:GetName().." is low on fuel and RTBing")
            awacs1spawn()
          end
        else
          awacs1_unit_fuel_scheduler:Stop()
          awacs1spawn()
        end
      end
      ,{},5,300)
    end):Spawn()
end
awacs1spawn()

awacs2 = SPAWN:New("BLUE AWACS #2 #IFF:5212FR")
function awacs2spawn()
  awacs2:OnSpawnGroup(
    function (awacs2_group)
      awacs2_unit_fuel_scheduler = SCHEDULER:New(nil,function ()
        awacs2_unit = awacs2_group:GetUnit(1)
        if awacs2_unit
        then
          awacs2_unit_fuel = awacs2_unit:GetFuel()
          if awacs2_unit_fuel <= 0.3
          then
            awacs2_group:ClearTasks()
            awacs2_unit_fuel_scheduler:Stop()
            env.info(awacs2_group:GetName().." is low on fuel and RTBing")
            awacs2spawn()
          end
        else
          awacs2_unit_fuel_scheduler:Stop()
          awacs2spawn()
        end
      end
      ,{},5,300)
    end):Spawn()
end
awacs2spawn()



awacs3 = SPAWN:New("RED AGGRESSOR AWACS #IFF:1301EN")
function awacs3spawn()
  awacs3:OnSpawnGroup(
    function (awacs3_group)
      awacs3_unit_fuel_scheduler = SCHEDULER:New(nil,function ()
        awacs3_unit = awacs3_group:GetUnit(1)
        if awacs3_unit
        then
          awacs3_unit_fuel = awacs3_unit:GetFuel()
          if awacs3_unit_fuel <= 0.3
          then
            awacs3_group:ClearTasks()
            awacs3_unit_fuel_scheduler:Stop()
            env.info(awacs3_group:GetName().." is low on fuel and RTBing")
            awacs3spawn()
          end
        else
          awacs3_unit_fuel_scheduler:Stop()
          awacs3spawn()
        end
      end
      ,{},5,300)
    end):Spawn()
end
awacs3spawn()


AWACS_Tankers  = SET_GROUP:New():FilterPrefixes({"BLUE AWACS", 'ARO_KC', "SHL_KC", 'TEX_KC', 'AGR_AGGRESSOR','RED AGGRESSOR'}):FilterStart()
SCHEDULER:New(nil,function()
  AWACS_Tankers:ForEachGroupAlive(function(_group)
    local _unit = _group:GetUnit(1)
    speed = _unit:GetVelocityMPS()
    if speed <= 1 then
      env.info (_unit:GetName().." was stuck on the ground and has been despawned")
      _group:Destroy()
    end
  end)
end,{},400,330,0,0)

