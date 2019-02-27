

Accident1 = SPAWN:New("Accident1"):Spawn()
--local fire = SPAWNSTATIC:NewFromStatic("accident1_fire",country.id.GERMANY)
local crashunit = Accident1:GetUnit(15)
crashunit:Explode(1,5)
--local firelocation = crashunit:GetCoordinate()
--fire:SpawnFromCoordinate(firelocation)
--STATIC:FindByName("accident1_fire",false):Destroy(false)

function ctld.createRadioBeaconAtGROUP(_group, _beaconname)
  local _zonePos = _group:GetVec3()
  --  local _grouplocation = _group:GetCoordinate()
  --  local _ToCoord = _grouplocation:Translate( 1, 90 )
  --  _group:TaskRouteToVec2( _ToCoord:GetVec2() )

  ctld.beaconCount = ctld.beaconCount + 1

  if _name == nil or _name == "" then
    _name = "Beacon #" .. ctld.beaconCount
  end


  ctld.createRadioBeacon(_zonePos, 2, 2, _beaconname, 1440)

end

ctld.createRadioBeaconAtGROUP(Accident1,"Car-Accident")


--- ARK-UD BEACONS -- 
-- creates a medic hummer at a random position within the TMA. The unit will broadcast an ARK-UD Beacon on preset 1
RW_Training_Zone= ZONE_POLYGON:New(RW_Training_Zone,GROUP:FindByName("RW_Training_Zone"))
RescueParty = SPAWN:New("RescueParty"):SpawnInZone(RW_Training_Zone,true)
RescuePartyLocation = RescueParty:GetCoordinate()
RescueCargo = SPAWNSTATIC:NewFromStatic("Rescue_Cargo",country.id.GERMANY)
RescueCargo:SpawnFromCoordinate(RescuePartyLocation)
ToCoord = RescuePartyLocation:Translate( 3, math.random(359) )
RescueParty_Task = RescueParty:TaskRouteToVec2( ToCoord:GetVec2() )

STATIC:FindByName("Rescue_Cargo",false):Destroy(false)



SCHEDULER:New(nil,function()
  if RescueParty ~= nil
  then
    BEACON1_Radio = RescueParty:GetBeacon()
    BEACON1_Radio:RadioBeacon("beacon.ogg",114.333,radio.modulation.AM,150,55)--preset2
  end end,{},15,60)


--CH1: 114.166
--CH2: 114.333
--CH3: 114.583
--CH4: 121.500
--CH5: 123.100
--CH6: 124.100