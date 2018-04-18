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
-- Threat Options --

-- AWACS --
awacs1 = SPAWN:New("BLUE AWACS #1"):InitLimit(1,0):SpawnScheduled(20,0)
awacs2 = SPAWN:New("BLUE AWACS #2"):InitLimit(1,0):SpawnScheduled(20,0)
awacs3 = SPAWN:New("RED AGGRESSOR AWACS"):InitLimit(1,0):SpawnScheduled(20,0)

-- DISPERSE UNDER FIRE OFF
--search for this line in moose:
--function CONTROLLABLE:OptionROEOpenFirePossible()
--
--then paste the following code at the end of the function
--
--function CONTROLLABLE:OptionDisperseOff()
--  self:F2( { self.ControllableName } )
--
--  local DCSControllable = self:GetDCSObject()
--  if DCSControllable then
--    local Controller = self:_GetController()
--
--      Controller:setOption( 8,0 )
--
--    return self
--  end
--
--  return nil
--end


AllGroundUnits = SET_GROUP:New():FilterCategoryGround()
AllGroundUnits:FilterOnce()
AllGroundUnits:ForEachGroup(function (allgroups)
  allgroups:OptionDisperseOff() end)
env.info("We iterated over each Ground Group and set their option to disperse under fire to off")
-- this will iterate over all existing ground units at mission start and will set the disperse off function that we added to moose

