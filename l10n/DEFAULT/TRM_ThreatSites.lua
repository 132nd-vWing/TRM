--- Threat Sites---
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








function ThreatSite_1_threat_on()
ThreatSite_1:SetAIOn()
Menu_ThreatSite_1_On:Remove()
Menu_ThreatSite_1_Off = MENU_MISSION_COMMAND:New("Deactivate Threat Site 1",Menu_Threat_Options_Ranges1_4,ThreatSite_1_threat_off)
end

function ThreatSite_1_threat_off()
ThreatSite_1:SetAIOff()
Menu_ThreatSite_1_Off:Remove()
Menu_ThreatSite_1_On = MENU_MISSION_COMMAND:New("Activate Threat Site 1",Menu_Threat_Options_Ranges1_4,ThreatSite_1_threat_on)
end

function ThreatSite_2_threat_on()
ThreatSite_2:SetAIOn()
Menu_ThreatSite_2_On:Remove()
Menu_ThreatSite_2_Off = MENU_MISSION_COMMAND:New("Deactivate Threat Site 2",Menu_Threat_Options_Ranges1_4,ThreatSite_2_threat_off)
end

function ThreatSite_2_threat_off()
ThreatSite_2:SetAIOff()
Menu_ThreatSite_2_Off:Remove()
Menu_ThreatSite_2_On = MENU_MISSION_COMMAND:New("Activate Threat Site 2",Menu_Threat_Options_Ranges1_4,ThreatSite_2_threat_on)
end

function ThreatSite_3_threat_on()
ThreatSite_3:SetAIOn()
Menu_ThreatSite_3_On:Remove()
Menu_ThreatSite_3_Off = MENU_MISSION_COMMAND:New("Deactivate Threat Site 3",Menu_Threat_Options_Ranges1_4,ThreatSite_3_threat_off)
end

function ThreatSite_3_threat_off()
ThreatSite_3:SetAIOff()
Menu_ThreatSite_3_Off:Remove()
Menu_ThreatSite_3_On = MENU_MISSION_COMMAND:New("Activate Threat Site 3",Menu_Threat_Options_Ranges1_4,ThreatSite_3_threat_on)
end

function ThreatSite_4_threat_on()
ThreatSite_4:SetAIOn()
Menu_ThreatSite_4_On:Remove()
Menu_ThreatSite_4_Off = MENU_MISSION_COMMAND:New("Deactivate Threat Site 4",Menu_Threat_Options_Ranges1_4,ThreatSite_4_threat_off)
end

function ThreatSite_4_threat_off()
ThreatSite_4:SetAIOff()
Menu_ThreatSite_4_Off:Remove()
Menu_ThreatSite_4_On = MENU_MISSION_COMMAND:New("Activate Threat Site 4",Menu_Threat_Options_Ranges1_4,ThreatSite_4_threat_on)
end

function ThreatSite_5_threat_on()
ThreatSite_5:SetAIOn()
Menu_ThreatSite_5_On:Remove()
Menu_ThreatSite_5_Off = MENU_MISSION_COMMAND:New("Deactivate Threat Site 5",Menu_Threat_Options_Ranges5_8,ThreatSite_5_threat_off)
end

function ThreatSite_5_threat_off()
ThreatSite_5:SetAIOff()
Menu_ThreatSite_5_Off:Remove()
Menu_ThreatSite_5_On = MENU_MISSION_COMMAND:New("Activate Threat Site 5",Menu_Threat_Options_Ranges5_8,ThreatSite_5_threat_on)
end

function ThreatSite_6_threat_on()
ThreatSite_6:SetAIOn()
Menu_ThreatSite_6_On:Remove()
Menu_ThreatSite_6_Off = MENU_MISSION_COMMAND:New("Deactivate Threat Site 6",Menu_Threat_Options_Ranges5_8,ThreatSite_6_threat_off)
end

function ThreatSite_6_threat_off()
ThreatSite_6:SetAIOff()
Menu_ThreatSite_6_Off:Remove()
Menu_ThreatSite_6_On = MENU_MISSION_COMMAND:New("Activate Threat Site 6",Menu_Threat_Options_Ranges5_8,ThreatSite_6_threat_on)
end

function ThreatSite_7_threat_on()
ThreatSite_7:SetAIOn()
Menu_ThreatSite_7_On:Remove()
Menu_ThreatSite_7_Off = MENU_MISSION_COMMAND:New("Deactivate Threat Site 7",Menu_Threat_Options_Ranges5_8,ThreatSite_7_threat_off)
end

function ThreatSite_7_threat_off()
ThreatSite_7:SetAIOff()
Menu_ThreatSite_7_Off:Remove()
Menu_ThreatSite_7_On = MENU_MISSION_COMMAND:New("Activate Threat Site 7",Menu_Threat_Options_Ranges5_8,ThreatSite_7_threat_on)
end

function ThreatSite_8_threat_on()
ThreatSite_8:SetAIOn()
Menu_ThreatSite_8_On:Remove()
Menu_ThreatSite_8_Off = MENU_MISSION_COMMAND:New("Deactivate Threat Site 8",Menu_Threat_Options_Ranges5_8,ThreatSite_8_threat_off)
end

function ThreatSite_8_threat_off()
ThreatSite_8:SetAIOff()
Menu_ThreatSite_8_Off:Remove()
Menu_ThreatSite_8_On = MENU_MISSION_COMMAND:New("Activate Threat Site 8",Menu_Threat_Options_Ranges5_8,ThreatSite_8_threat_on)
end

function ThreatSite_9_threat_on()
ThreatSite_9:SetAIOn()
Menu_ThreatSite_9_On:Remove()
Menu_ThreatSite_9_Off = MENU_MISSION_COMMAND:New("Deactivate Threat Site 9",Menu_Threat_Options_MOAs,ThreatSite_9_threat_off)
end

function ThreatSite_9_threat_off()
ThreatSite_9:SetAIOff()
Menu_ThreatSite_9_Off:Remove()
Menu_ThreatSite_9_On = MENU_MISSION_COMMAND:New("Activate Threat Site 9",Menu_Threat_Options_MOAs,ThreatSite_9_threat_on)
end

function ThreatSite_10_threat_on()
ThreatSite_10:SetAIOn()
Menu_ThreatSite_10_On:Remove()
Menu_ThreatSite_10_Off = MENU_MISSION_COMMAND:New("Deactivate Threat Site 10",Menu_Threat_Options_MOAs,ThreatSite_10_threat_off)
end

function ThreatSite_10_threat_off()
ThreatSite_10:SetAIOff()
Menu_ThreatSite_10_Off:Remove()
Menu_ThreatSite_10_On = MENU_MISSION_COMMAND:New("Activate Threat Site 10",Menu_Threat_Options_MOAs,ThreatSite_10_threat_on)
end

function ThreatSite_11_threat_on()
ThreatSite_11:SetAIOn()
Menu_ThreatSite_11_On:Remove()
Menu_ThreatSite_11_Off = MENU_MISSION_COMMAND:New("Deactivate Threat Site 11",Menu_Threat_Options_MOAs,ThreatSite_11_threat_off)
end

function ThreatSite_11_threat_off()
ThreatSite_11:SetAIOff()
Menu_ThreatSite_11_Off:Remove()
Menu_ThreatSite_11_On = MENU_MISSION_COMMAND:New("Activate Threat Site 11",Menu_Threat_Options_MOAs,ThreatSite_11_threat_on)
end




Menu_Threat_Options_Ranges = MENU_MISSION:New("Ranges", Menu_Threat_Options)
Menu_Threat_Options_Ranges1_4 = MENU_MISSION:New("Threat Sites 1-4", Menu_Threat_Options_Ranges)
Menu_Threat_Options_Ranges5_8 = MENU_MISSION:New("Threat Sites 5-8", Menu_Threat_Options_Ranges)
Menu_Threat_Options_MOAs = MENU_MISSION:New("MOAs", Menu_Threat_Options)

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



  
