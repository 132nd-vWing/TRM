AIRBOSS.MenuF10Root=MENU_MISSION:New("Carrier Control").MenuPath
--AIRBOSS.MenuF10=MENU_MISSION:New("CVN STENNIS").MenuPath
--AIRBOSS.MenuF10=MENU_MISSION:New("CVN68 NIMITZ").MenuPath

--helo
stennis_rescuehelo1=RESCUEHELO:New("CVN STENNIS", "Stennis_Rescue")
stennis_rescuehelo1:SetTakeoffHot()
stennis_rescuehelo1:SetModex(42)
stennis_rescuehelo1:SetHomeBase(AIRBASE:FindByName("Oliver Hazzard Perry class"))

nimitz_rescuehelo1=RESCUEHELO:New("CVN68 NIMITZ", "Nimitz_Rescue")
nimitz_rescuehelo1:SetTakeoffHot()
nimitz_rescuehelo1:SetModex(44)
nimitz_rescuehelo1:SetHomeBase(AIRBASE:FindByName("Nimitz Escort Perry"))

--tanker
airboss_stennis_tanker= RECOVERYTANKER:New("CVN STENNIS", "TEXACO 2 #IFF:5112FR")
airboss_stennis_tanker:SetTakeoffHot()
airboss_stennis_tanker:SetRadio(242)
airboss_stennis_tanker:SetTACAN(40, "STN")
airboss_stennis_tanker:SetAltitude(8000)
airboss_stennis_tanker:SetSpeed(350)
airboss_stennis_tanker:Start()


airboss_nimitz_tanker= RECOVERYTANKER:New("CVN68 NIMITZ", "SHELL 2 #IFF:5132FR")
airboss_nimitz_tanker:SetTakeoffHot()
airboss_nimitz_tanker:SetRadio(247)
airboss_nimitz_tanker:SetTACAN(42, "NIM")
airboss_nimitz_tanker:SetAltitude(8000)
airboss_nimitz_tanker:SetSpeed(350)
airboss_nimitz_tanker:Start(5)

airboss_nimitz_awacs= RECOVERYTANKER:New("CVN68 NIMITZ", "FOCUS #IFF:5214FR")
airboss_nimitz_awacs:SetAWACS()
airboss_nimitz_awacs:SetCallsign(CALLSIGN.AWACS.Focus)
airboss_nimitz_awacs:SetRacetrackDistances(30, 15)
airboss_nimitz_awacs:SetTakeoffHot()
airboss_nimitz_awacs:SetRadio(237.5)
airboss_nimitz_awacs:SetAltitude(34000)
airboss_nimitz_awacs:Start(40)



--airboss
airboss_stennis = AIRBOSS:New("CVN STENNIS")
airboss_nimitz = AIRBOSS:New("CVN68 NIMITZ")

airboss_stennis:SetMaxFlightsPerStack(1)
airboss_nimitz:SetMaxFlightsPerStack(1)

airboss_stennis:SetSoundfilesFolder("Airboss Soundfiles/")
airboss_nimitz:SetSoundfilesFolder("Airboss Soundfiles/")

airboss_stennis:SetICLS(1,'C_S')
airboss_stennis:SetTACAN(74,X,'C_S')

airboss_nimitz:SetICLS(2,'C_N')
airboss_nimitz:SetTACAN(68,X,'C_N')

airboss_stennis:SetMarshalRadio(305)
airboss_stennis:SetLSORadio(264)

airboss_nimitz:SetMarshalRadio(308)
airboss_nimitz:SetLSORadio(238)

airboss_stennis:SetRecoveryTanker(airboss_stennis_tanker)
airboss_stennis:SetDespawnOnEngineShutdown()

airboss_nimitz:SetRecoveryTanker(airboss_nimitz_tanker)
airboss_nimitz:SetDespawnOnEngineShutdown()

airboss_stennis:Start()
airboss_nimitz:Start()

---------------------------------
--- Define Recovery Windows ---
---------------------------------

function airboss_stennis:OnAfterStart(From,Event,To)
  self:DeleteAllRecoveryWindows()
end

function airboss_nimitz:OnAfterStart(From,Event,To)
  self:DeleteAllRecoveryWindows()
end


-- Start recovery function.
local function StartRecovery(case)
  -- Recovery staring in 5 min for 120 min.
  local t0=timer.getAbsTime()+5*60
  local t9=t0+120*60
  local C0=UTILS.SecondsToClock(t0)
  local C9=UTILS.SecondsToClock(t9)

  -- Carrier will turn into the wind. Wind on deck 25 knots. U-turn on.
  airboss_stennis:AddRecoveryWindow(C0, C9,case, 30, true, 25, true)
  stennis_rescuehelo1:Start()
  MessageToAll("Carrier CVN STENNIS turning into the Wind, Case "..case.." Recovery Window open from time "..C0.." until "..C9,20)
end

local function StartRecovery_nimitz(case)
  -- Recovery staring in 5 min for 120 min.
  local t0=timer.getAbsTime()+5*60
  local t9=t0+120*60
  local C0=UTILS.SecondsToClock(t0)
  local C9=UTILS.SecondsToClock(t9)

  -- Carrier will turn into the wind. Wind on deck 25 knots. U-turn on.
  airboss_nimitz:AddRecoveryWindow(C0, C9,case, 30, true, 25, true)
  nimitz_rescuehelo1:Start()
  MessageToAll("Carrier CVN NIMITZ turning into the Wind, Case "..case.." Recovery Window open from time "..C0.." until "..C9,20)
end



-- Stop recovery function.
local function StopRecovery()
  airboss_stennis:RecoveryStop()
  stennis_rescuehelo1:RTB()
  function stennis_rescuehelo1:OnEventLand(EventData)
    SCHEDULER:New(nil,function () stennis_rescuehelo1:Stop()
      end,{},10)
  end
end

local function StopRecovery_nimitz()
  airboss_nimitz:RecoveryStop()
  nimitz_rescuehelo1:RTB()
  function nimitz_rescuehelo1:OnEventLand(EventData)
    SCHEDULER:New(nil,function () nimitz_rescuehelo1:Stop()
      end,{},10)
  end
end



local menucarriercontrol_root=MENU_MISSION:New("Carrier Control")
local menucarriercontrol_root_manual=MENU_MISSION:New("Recovery Window Control",menucarriercontrol_root)

local menucarriercontrol_stennis = MENU_MISSION:New("CVN STENNIS Open / Close Deck for Recovery", menucarriercontrol_root_manual)
MENU_MISSION_COMMAND:New("Start CASE I",menucarriercontrol_stennis,StartRecovery,1)
MENU_MISSION_COMMAND:New("Start CASE II",menucarriercontrol_stennis,StartRecovery,2)
MENU_MISSION_COMMAND:New("Start CASE III",menucarriercontrol_stennis,StartRecovery,3)
MENU_MISSION_COMMAND:New("Stop Recovery",menucarriercontrol_stennis,StopRecovery)

local menucarriercontrol_nimitz = MENU_MISSION:New("CVN NIMITZ Open / Close Deck for Recovery", menucarriercontrol_root_manual)
MENU_MISSION_COMMAND:New("Start CASE I",menucarriercontrol_nimitz,StartRecovery_nimitz,1)
MENU_MISSION_COMMAND:New("Start CASE II",menucarriercontrol_nimitz,StartRecovery_nimitz,2)
MENU_MISSION_COMMAND:New("Start CASE III",menucarriercontrol_nimitz,StartRecovery_nimitz,3)
MENU_MISSION_COMMAND:New("Stop Recovery",menucarriercontrol_nimitz,StopRecovery_nimitz)





-------------------------<$%y--------
--- Define LSO/Marshal Shifts ---
---------------------------------

-- Current shift.
local shift=1

local function ChangeShift(airboss_stennis)
  local airboss_stennis=airboss_stennis --Ops.Airboss#AIRBOSS

  -- Next shift.
  shift=shift+1

  -- One cycle done. Next will be first shift.
  if shift==5 then
    shift=1
  end

  -- Set sound folder and voice over timings. 
  if shift==1 then
    env.info("Starting LSO/Marshal Shift 1: LSO Raynor, Marshal Raynor")
    airboss_stennis:SetVoiceOversLSOByRaynor()
    airboss_stennis:SetVoiceOversMarshalByRaynor()
  elseif shift==2 then
    env.info("Starting LSO/Marshal Shift 2: LSO FF, Marshal Raynor")
    airboss_stennis:SetVoiceOversLSOByFF("Airboss Soundpack LSO FF/")
    airboss_stennis:SetVoiceOversMarshalByRaynor()  
  elseif shift==3 then
    env.info("Starting LSO/Marshal Shift 3: LSO Raynor, Marshal FF")
    airboss_stennis:SetVoiceOversLSOByRaynor()
    airboss_stennis:SetVoiceOversMarshalByFF("Airboss Soundpack Marshal FF/")
  elseif shift==4 then
    env.info("Starting LSO/Marshal Shift 4: LSO FF, Marshal FF")
    airboss_stennis:SetVoiceOversLSOByFF("Airboss Soundpack LSO FF/")
    airboss_stennis:SetVoiceOversMarshalByFF("Airboss Soundpack Marshal FF/")
  end
 
end

-- Length of shift in minutes.
local L=30

-- Start shift scheduler to change shift every L minutes.
SCHEDULER:New(nil, ChangeShift, {airboss_stennis}, L*60, L*60)


--- Function called when recovery starts.
function airboss_stennis:OnAfterRecoveryStart(Event, From, To, Case, Offset)
local recoverymessage = string.format("CVN Stennis Starting Recovery Case %d ops.", Case)
  env.info(recoverymessage)
  MessageToAll(recoverymessage,15)
end

--- Function called when recovery starts.
function airboss_nimitz:OnAfterRecoveryStart(Event, From, To, Case, Offset)
local recoverymessage = string.format("CVN Nimitz Starting Recovery Case %d ops.", Case)
  env.info(recoverymessage)
  MessageToAll(recoverymessage,15)
end


