local Traffic=false

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

local window1=airboss_stennis:AddRecoveryWindow( "8:00", "14:00", 1, nil, true, 25)
-- Case II with +15 degrees holding offset from 15:00 for 60 min.
local window2=airboss_stennis:AddRecoveryWindow("15:00", "20:00", 2,  15, true, 23)
-- Case III with +30 degrees holding offset from 2100 to 2200.
local window3=airboss_stennis:AddRecoveryWindow("21:00", "22:00", 3,  30, true, 21)



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
  env.info(string.format("Starting Recovery Case %d ops.", Case))
end


-- Spawn some AI flights as additional traffic.
if Traffic then
  local F181=SPAWN:New("FA18 Group 1"):InitModex(101) -- Coming in from NW after  ~6 min
  local F182=SPAWN:New("FA18 Group 2"):InitModex(201) -- Coming in from NW after ~20 min
  local F183=SPAWN:New("FA18 Group 3"):InitModex(301) -- Coming in from W  after ~18 min
  local F14=SPAWN:New("F-14B 2ship"):InitModex(401)   -- Coming in from SW after  ~4 min
  local E2D=SPAWN:New("E-2D Group"):InitModex(501)    -- Coming in from NE after ~10 min
  local S3B=SPAWN:New("S-3B Group"):InitModex(601)    -- Coming in from S  after ~16 min
  
  -- Spawn always 9 min before the recovery window opens.
  local spawntimes={"7:51", "14:51", "20:51"}
  for _,spawntime in pairs(spawntimes) do
    local _time=UTILS.ClockToSeconds(spawntime)-timer.getAbsTime()
    if _time>0 then
      SCHEDULER:New(nil, F181.Spawn, {F181}, _time)
      SCHEDULER:New(nil, F182.Spawn, {F182}, _time)
      SCHEDULER:New(nil, F183.Spawn, {F183}, _time)
      SCHEDULER:New(nil, F14.Spawn,  {F14},  _time)
      SCHEDULER:New(nil, E2D.Spawn,  {E2D},  _time)
      SCHEDULER:New(nil, S3B.Spawn,  {S3B},  _time)
    end
  end  
end

