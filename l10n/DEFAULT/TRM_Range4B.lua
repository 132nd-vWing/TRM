-- Range Menu--
if Menu_Range_Options  ~= true then 
Menu_Range_Options = MENU_MISSION:New("Range Options")
else 
end
-- Range Options --



Menu_Ranges_R4B = MENU_MISSION:New("Range 4B", Menu_Range_Options)


--- Range 4B Mobile Threats  --
R4B_Mobile_Threat_Zone = ZONE_POLYGON:New("R4B_Mobile_Threat_Zone",GROUP:FindByName("Range4B_Mobilethreat_zone"))
R4B_Mobile_Threat_Table = { "Mobilethreat1_SA9", "Mobilethreat2_SA13", "Mobilethreat3_SA8","Mobilethreat4_Manpad"  } -- table for mobile threats
R4B_Threat = SPAWN:NewWithAlias("Mobile_Threat_Spawner", "SpawnMobileThreats_R4B"):InitRandomizeTemplate(R4B_Mobile_Threat_Table)

function SpawnMobileThreats_R4B()
  R4B_Threat:SpawnInZone(R4B_Mobile_Threat_Zone,true)
end
 
R4B_Mobile_Threat_Zone_Menu = MENU_MISSION_COMMAND:New("Add Mobile Air-Defense Threat at Range 4B",Menu_Ranges_R4B,SpawnMobileThreats_R4B)
