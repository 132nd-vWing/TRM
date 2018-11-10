-- Create RAT object. Additionally, to the template group name we give the group an alias to be able to distinguish to another group created from this template.
 Civ737=RAT:New("Civ737")
 Civ747=RAT:New("Civ747")
 CivA380=RAT:New("CivA380")
 Civ757=RAT:New("Civ757")
 CivA320=RAT:New("CivA320")
 

 -- Change coalition of Yak to blue.
 Civ737:SetCoalitionAircraft("red")
 Civ747:SetCoalitionAircraft("red") 
 CivA380:SetCoalitionAircraft("red")
 Civ757:SetCoalitionAircraft("red") 
 CivA320:SetCoalitionAircraft("red")
 
 -- This restricts the possible departure and destination airports the airports belonging to the red coalition.
 -- Here it is important that in the mission editor enough (>2) airports have been set to red! Otherwise there will be no possible departure and/or destination airports.
 Civ737:SetCoalition("sameonly")
 Civ747:SetCoalition("sameonly")
 CivA380:SetCoalition("sameonly")
 Civ757:SetCoalition("sameonly")
 CivA320:SetCoalition("sameonly")
 
 Civ737:ExcludedAirports("Soganlug")
 Civ747:ExcludedAirports("Soganlug")
 Civ757:ExcludedAirports("Soganlug")
 CivA380:ExcludedAirports("Soganlug")
 CivA320:ExcludedAirports("Soganlug")
  
 -- We also change the livery of these groups. If a table of liveries is given, each spawned group gets a random livery.
 Civ737:Livery({"Air Algerie", "Air France", "airBaltic", "Airzena", "American_Airlines", "British Airways", "Disney", "EA",
  "easyjet", "FINNAIR", "HARIBO", "JA", "Jet2", "kulula", "LH", "OMAN AIR", "Polskie Linie Lotnicze LOT", "QANTAS", "RYANAIR",
   "SouthWest Lone Star", "ThomsonFly", "TNT",  "Ukraine Airlines", "UPS"})
  
 Civ747:Livery({"AF", "AI", "KLM", "LH", "TA"})
 
 CivA380:Livery({"Air France", "China Southern", "Emirates", "LH" })
   
 Civ757:Livery({ "DHL", "easyJet", "Swiss", "Thomson"})
 
CivA320:Livery({"Alitalia", "Condor", "Eurowings Europa Park", "Fly Georgia","Star Alliance", "Turkish Airlines"})
     

  
 -- This makes aircraft respawn at their destination airport instead of another random airport.
 Civ737:ContinueJourney()
 Civ747:ContinueJourney()
 Civ757:ContinueJourney()
 CivA380:ContinueJourney()
 CivA320:ContinueJourney()
 

Civ737:StatusReports(false)
Civ737:Spawn(math.random(1,3))

CivA320:StatusReports(false)
CivA320:Spawn(math.random(1,4))
 
local B747= math.random(1,10)
if B747 <= 7 then
  Civ747:StatusReports(false)
  Civ747:Spawn(math.random(1,2))
else
end
if B747 >7 then
  local A380 =  math.random(0,1)
  if A380 == 1 then
    CivA380:StatusReports(false)
    CivA380:Spawn(1)
  else
  end
end

local B757 = (math.random(0,3))
if B757 >= 1 then
  Civ757:StatusReports(false)
  Civ757:Spawn(math.random(1,2))
else
end



