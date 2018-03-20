
 -- Strafe pits. Each pit can consist of multiple targets. Here we have two pits and each of the pits has two targets. These are names of the corresponding units defined in the ME.
 local Range10_Strafepit_Table={"Range10_Strafepit1", "Range10_Strafepit2"}

 -- Table of bombing target names. 
 local bombtargets_range10={"Range10_CircleNorth", "Range10_CircleSouth", "Range10_CircleEast" }

 -- Create a range object.
 local Range10=RANGE:New("Range 10")
 

 
 
 
 
 
--Range10:DebugON()
Range10:SetMaxStrafeAlt(5000)
 -- Distance between foul line and strafe target. Note that this could also be done manually by simply measuring the distance between the target and the foul line in the ME.
 local Range10_Strafepit=UNIT:FindByName("Range10_Strafepit1")
 local Range10_Foulline=UNIT:FindByName("Range10_Foulline")

 local fouldist=Range10_Strafepit:GetCoordinate():Get2DDistance(Range10_Foulline:GetCoordinate())



 -- Add strafe pits. Each pit (left and right) consists of two targets.
 Range10:AddStrafePit(Range10_Strafepit_Table, 5000, 800, nil, true, 20, fouldist)


 -- Add bombing targets. A good hit is if the bomb falls less then 50 m from the target.
 Range10:AddBombingTargets(bombtargets_range10, 50)

 -- Start range.




Range10:Start()
 
birthEventandler = EVENTHANDLER:New()
birthEventandler:HandleEvent(EVENTS.Birth)

function birthEventandler:OnEventBirth(EventData)
  BASE:F({EventData})
  -- Get Group Name
  local birhtGroup = EventData.IniGroup --Wrapper.Group#GROUP
  local playerName = birhtGroup:GetPlayerName()
    if playerName ~= nil then -- We have got a player
   Range10:_AddF10Commands(EventData.IniUnitName)
  end
end