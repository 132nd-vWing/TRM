--command center off
_SETTINGS:SetPlayerMenuOff()
-- command center off



-- Missile Trainer
Trainer = MISSILETRAINER:New( 500, "Missile Trainer is active, ONLY if you see this message when entering an Aircraft, Missiles will be intercepted!" )
Trainer:InitMessagesOnOff(true):InitAlertsToAll(true):InitAlertsHitsOnOff(true):InitAlertsLaunchesOnOff(true):InitBearingOnOff(false):InitRangeOnOff(false):InitTrackingOnOff(false):InitTrackingToAll(false):InitMenusOnOff(false)
-- Missile Trainer

-- Threat Options --
Menu_Threat_Options = MENU_MISSION:New("Threat Sites")
-- Threat Options --

-- AWACS --




awacs1 = SPAWN:New("BLUE AWACS #1")
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
            awacs1_group:RouteRTB()
            awacs1_unit_fuel_scheduler:Stop()
            env.info(awacs1_group:GetName().." is low on fuel and RTBing")
            awacs1spawn()
          end
        else
          awacs1_unit_fuel_scheduler:Stop()
          awacs1spawn()
        end
      end
      ,{},5,30)
    end):Spawn()
end
awacs1spawn()

awacs2 = SPAWN:New("BLUE AWACS #2")
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
            awacs2_group:RouteRTB()
            awacs2_unit_fuel_scheduler:Stop()
            env.info(awacs2_group:GetName().." is low on fuel and RTBing")
            awacs2spawn()
          end
        else
          awacs2_unit_fuel_scheduler:Stop()
          awacs2spawn()
        end
      end
      ,{},5,30)
    end):Spawn()
end
awacs2spawn()

awacs3 = SPAWN:New("RED AGGRESSOR AWACS")
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
            awacs3_group:RouteRTB()
            awacs3_unit_fuel_scheduler:Stop()
            env.info(awacs3_group:GetName().." is low on fuel and RTBing")
            awacs3spawn()
          end
        else
          awacs3_unit_fuel_scheduler:Stop()
          awacs3spawn()
        end
      end
      ,{},5,30)
    end):Spawn()
end
awacs3spawn()




AWACS_Tankers  = SET_GROUP:New():FilterPrefixes({"BLUE AWACS", 'IL-78_TANKER_A', "RED AGGRESSOR", 'KC-130_TANKER_B', 'KC-135_SHELL','KC-135_TEXACO','AGGRESSOR_Il78M'}):FilterStart()
SCHEDULER:New(nil,function()
  AWACS_Tankers:ForEachGroup(function(_group)
    local _unit = _group:GetUnit(1)
    speed = _unit:GetVelocityMPS()
    if speed <= 1 then
    env.info (_unit:GetName().." was stuck on the ground and has been despawned")
    _group:Destroy()
    end
  end)
end,{},400,330,0,0)


-- ARK-UD BEACONS -- 
--SCHEDULER:New(nil,function()
--STENNIS = GROUP:FindByName("CVN STENNIS")
--STENNIS_Radio = STENNIS:GetBeacon()
--STENNIS_Radio:RadioBeacon("beacon.ogg",114.583,radio.modulation.AM,150)--preset3
--env.info('Stennis beacons refreshed')
--end,{},5,60)

--SCHEDULER:New(nil,function()
--Tarawa = GROUP:FindByName("LHA-1 Tarawa")
--Tarawa_Radio = Tarawa:GetBeacon()
--Tarawa_Radio:RadioBeacon("beacon.ogg",121.500,radio.modulation.AM,150)--preset4
--env.info('Tarawa beacons refreshed')
--end,{},35,60)

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

