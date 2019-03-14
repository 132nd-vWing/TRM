--helo
stennis_rescuehelo1=RESCUEHELO:New("CVN STENNIS", "Stennis_Rescue")
stennis_rescuehelo1:SetHomeBase(AIRBASE:FindByName("Perry"))
stennis_rescuehelo1:SetTakeoffHot()
stennis_rescuehelo1:SetModex(42)
stennis_rescuehelo1:Start()

--tanker
airboss_stennis_tanker= RECOVERYTANKER:New("CVN STENNIS", "TEXACO 2")
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



