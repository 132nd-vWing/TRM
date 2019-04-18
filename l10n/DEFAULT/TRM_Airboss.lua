AIRBOSS.MenuF10Root=MENU_MISSION:New("Carrier Control").MenuPath

--helo
stennis_rescuehelo1=RESCUEHELO:New("CVN STENNIS", "Stennis_Rescue")
stennis_rescuehelo1:SetTakeoffHot()
stennis_rescuehelo1:SetModex(42)
stennis_rescuehelo1:SetHomeBase(AIRBASE:FindByName("Oliver Hazzard Perry class"))

--tanker
airboss_stennis_tanker= RECOVERYTANKER:New("CVN STENNIS", "TEXACO 2 #IFF:5112FR")
airboss_stennis_tanker:SetTakeoffHot()
airboss_stennis_tanker:SetRadio(242)
airboss_stennis_tanker:SetTACAN(40, "S-3")
airboss_stennis_tanker:SetAltitude(8000)
airboss_stennis_tanker:SetSpeed(350)
airboss_stennis_tanker:Start()

--airboss
airboss_stennis = AIRBOSS:New("CVN STENNIS")

airboss_stennis:SetMenuSingleCarrier(Single)
airboss_stennis:SetSoundfilesFolder("Airboss Soundfiles/")

airboss_stennis:SetICLS(1,'CVN')
airboss_stennis:SetTACAN(74,X,'CVN')

airboss_stennis:SetMarshalRadio(305)
airboss_stennis:SetLSORadio(264)
--airboss_stennis:SetRadioRelayLSO(stennis_rescuehelo1:GetUnitName())
--airboss_stennis:SetRadioRelayMarshal(stennis_rescuehelo1:GetUnitName())

airboss_stennis:SetRecoveryTanker(airboss_stennis_tanker)
airboss_stennis:SetDespawnOnEngineShutdown()

airboss_stennis:Start()

---------------------------------
--- Define Recovery Windows ---
---------------------------------

function airboss_stennis:OnAfterStart(From,Event,To)
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
  MessageToAll("Carrier turning into the Wind, Case "..case.." Recovery Window open from time "..C0.." until "..C9,20)
end

-- Stop recovery function.
local function StopRecovery()
  airboss_stennis:RecoveryStop()
  airboss_stennis:DeleteAllRecoveryWindows()
  stennis_rescuehelo1:RTB()
  function stennis_rescuehelo1:OnEventLand(EventData)
    SCHEDULER:New(nil,function () stennis_rescuehelo1:Stop()
      end,{},10)
  end
end


local menucarriercontrol_root=MENU_MISSION:New("Carrier Control")
local menucarriercontrol = MENU_MISSION:New("Open / Close Deck for Recovery", menucarriercontrol_root)
MENU_MISSION_COMMAND:New("Start CASE I",menucarriercontrol,StartRecovery,1)
MENU_MISSION_COMMAND:New("Start CASE II",menucarriercontrol,StartRecovery,2)
MENU_MISSION_COMMAND:New("Start CASE III",menucarriercontrol,StartRecovery,3)
MENU_MISSION_COMMAND:New("Stop Recovery",menucarriercontrol,StopRecovery)




---------------------------------
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
local recoverymessage = string.format("Starting Recovery Case %d ops.", Case)
  env.info(recoverymessage)
  MessageToAll(recoverymessage,15)
end


