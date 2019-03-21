--helo
stennis_rescuehelo1=RESCUEHELO:New("CVN STENNIS", "Stennis_Rescue")
stennis_rescuehelo1:SetHomeBase(AIRBASE:FindByName("Perry"))
stennis_rescuehelo1:SetTakeoffHot()
stennis_rescuehelo1:SetModex(42)
stennis_rescuehelo1:Start()

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

airboss_stennis:AddRecoveryWindow("9:01",  "20:59", 1)
airboss_stennis:AddRecoveryWindow("21:00", "09:00", 3)

airboss_stennis:SetMarshalRadio(305)
airboss_stennis:SetLSORadio(264)
airboss_stennis:SetRadioRelayLSO(stennis_rescuehelo1:GetUnitName())
airboss_stennis:SetRadioRelayMarshal(stennis_rescuehelo1:GetUnitName())

airboss_stennis:SetRecoveryTanker(airboss_stennis_tanker)
airboss_stennis:SetDespawnOnEngineShutdown()

airboss_stennis:Start()


---------------------------------
--- Define LSO/Marshal Shifts ---
---------------------------------

-- Current shift.
local shift=1

local function ChangeShift(airboss)
  local airboss=airboss --Ops.Airboss#AIRBOSS

  -- Next shift.
  shift=shift+1

  -- One cycle done. Next will be first shift.
  if shift==4 then
    shift=1
  end

  -- Set sound folder and voice over timings. 
  if shift==1 then
    env.info("Starting LSO/Marshal Shift 1: LSO Raynor, Marshal Raynor")
    airboss:SetSoundfilesFolder("Airboss Soundfiles/")
    airboss:SetVoiceOversLSOByRaynor()
    airboss:SetVoiceOversMarshalByRaynor()
  elseif shift==2 then
    env.info("Starting LSO/Marshal Shift 2: LSO FF, Marshal Raynor")
    airboss:SetSoundfilesFolder("Airboss Soundfiles Shift 2/")
    airboss:SetVoiceOversLSOByFF()
    airboss:SetVoiceOversMarshalByRaynor()  
  elseif shift==3 then
    env.info("Starting LSO/Marshal Shift 3: LSO Raynor, Marshal FF")
    airboss:SetSoundfilesFolder("Airboss Soundfiles Shift 3/")
    airboss:SetVoiceOversLSOByRaynor()
    airboss:SetVoiceOversMarshalByFF()    
  end
 
end

-- Length of shift in minutes.
local L=30

-- Start shift scheduler to change shift every L minutes.
SCHEDULER:New(nil, ChangeShift, {AirbossStennis}, L*60, L*60)


