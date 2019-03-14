function accident(_accidentnumber)
  local accident = SPAWN:New(_accidentnumber):Spawn()
  local crashunit = accident:GetUnit(15)
  local crashunit2 = accident:GetUnit(10)
  local crashunit_location = crashunit2:GetVec3()
  local crashunit_coord = crashunit2:GetCoordinate()
  local injured = SPAWN:New("Injured")
  local injuredgroup= injured:SpawnFromVec3(crashunit_location)
  local ToCoord_injured = crashunit_coord:Translate( 1, math.random(359) )
  table.insert(ctld.droppedTroopsBLUE,injuredgroup:GetName())
  local move_injured = injuredgroup:TaskRouteToVec2( ToCoord_injured:GetVec2() )
  crashunit:Explode(1,20)
  function ctld.createRadioBeaconAtGROUP(accident, _beaconname)
    local _zonePos = accident:GetVec3()
    ctld.beaconCount = ctld.beaconCount + 1

    if _name == nil or _name == "" then
      _name = "Beacon #" .. ctld.beaconCount
    end
    ctld.createRadioBeacon(_zonePos, 2, 2, _beaconname, 1440)
  end
  ctld.createRadioBeaconAtGROUP(accident,"Car-Accident")
end

accidentnumer =  3 --math.random(3)
if accidentnumer == 1
then
  accident("Accident1")  -- _accidentnumber is the string of the groupname in the ME
end
if accidentnumer == 2
then
  accident("Accident2")
end
if accidentnumer == 3
then
  accident("Accident3")
end

--- ARK-UD BEACONS --
-- creates a medic hummer at a random position within the TMA. The unit will broadcast an ARK-UD Beacon on preset 1
RW_Training_Zone= ZONE_POLYGON:New(RW_Training_Zone,GROUP:FindByName("RW_Training_Zone"))
RescueParty = SPAWN:New("RescueParty"):SpawnInZone(RW_Training_Zone,true)

local RescuePartyLocation = RescueParty:GetCoordinate()
local RescueCargo = SPAWNSTATIC:NewFromStatic("Rescue_Cargo",country.id.GERMANY)
RescueCargo:SpawnFromCoordinate(RescuePartyLocation)
local ToCoord = RescuePartyLocation:Translate( 3, math.random(359) )
local ToCoord_vec2 = ToCoord:GetVec2()
local RescueParty_Task = RescueParty:TaskRouteToVec2( ToCoord_vec2 )
local RescueParty_Pickup = SPAWN:New("RescueParty_Pickup")
local RescueParty_Pickup_Group = RescueParty_Pickup:SpawnFromVec2(ToCoord_vec2)
STATIC:FindByName("Rescue_Cargo",false):Destroy(false)
table.insert(ctld.droppedTroopsBLUE, RescueParty_Pickup_Group:GetName())

SCHEDULER:New(nil,function()
  if RescueParty ~= nil
  then
    BEACON2_Radio = RescueParty:GetBeacon()
    BEACON2_Radio:RadioBeacon("beacon.ogg",114.333,radio.modulation.AM,150,55)--preset2
  end end,{},16,60)




--CH1: 114.166

--CH2: 114.333

--CH3: 114.583

--CH4: 121.500

--CH5: 123.100

--CH6: 124.100
