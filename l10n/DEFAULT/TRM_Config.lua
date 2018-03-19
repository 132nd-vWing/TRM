--command center off
_SETTINGS:SetPlayerMenuOff()
-- command center off



-- Missile Trainer
Trainer = MISSILETRAINER:New( 500, "Missile Trainer is active, ONLY if you see this message when entering an Aircraft, Missiles will be intercepted!" )
Trainer:InitMessagesOnOff(true):InitAlertsToAll(true):InitAlertsHitsOnOff(true):InitAlertsLaunchesOnOff(true):InitBearingOnOff(false):InitRangeOnOff(false):InitTrackingOnOff(false):InitTrackingToAll(false):InitMenusOnOff(false)
-- Missile Trainer


-- Range Menu--
Menu_Range_Options = MENU_MISSION:New("Range Options")
-- Range Options -- 


-- Threat Options -- 
Menu_Threat_Options = MENU_MISSION:New("Threat Sites")

