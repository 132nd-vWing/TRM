
RANGE.MenuF10Root=MENU_MISSION:New("Basic Ranges Range 3B/ Range 10").MenuPath

 -- Strafe pits. Each pit can consist of multiple targets. Here we have two pits and each of the pits has two targets. These are names of the corresponding units defined in the ME.
 RangeT3B_13_Strafepit_Table={"T3B.13_Strafepit1", "T3B.13_Strafepit2"}

 -- Table of bombing target names. 
 bombtargets_RangeT3B_13={"T3B.13_Bombingcircle_W", "T3B.13_Bombingcircle_E", "T3B.13_Bombingcircle_N" }

 -- Create a range object.
 RangeT3B_13=RANGE:New("Range3B")
 

 
 
 
 
 
--RangeT3B_13:DebugON()
RangeT3B_13:SetMaxStrafeAlt(3000)
 -- Distance between foul line and strafe target. Note that this could also be done manually by simply measuring the distance between the target and the foul line in the ME.
 RangeT3B_13_Strafepit=UNIT:FindByName("T3B.13_Strafepit1")
 RangeT3B_13_Foulline=UNIT:FindByName("T3B.13_foulline")

 RangeT3B_13_fouldist=RangeT3B_13_Strafepit:GetCoordinate():Get2DDistance(RangeT3B_13_Foulline:GetCoordinate())



 -- Add strafe pits. Each pit (left and right) consists of two targets.
 RangeT3B_13:AddStrafePit(RangeT3B_13_Strafepit_Table, 5000, 800, nil, true, 20, RangeT3B_13_fouldist)


 -- Add bombing targets. A good hit is if the bomb falls less then 50 m from the target.
 RangeT3B_13:AddBombingTargets(bombtargets_RangeT3B_13, 50)


RangeT3B_13:Start()



 -- Strafe pits. Each pit can consist of multiple targets. Here we have two pits and each of the pits has two targets. These are names of the corresponding units defined in the ME.
 Range10_Strafepit_Table={"Range10_Strafepit1", "Range10_Strafepit2"}

 -- Table of bombing target names. 
 bombtargets_range10={"Range10_CircleNorth", "Range10_CircleSouth", "Range10_CircleEast" }

 -- Create a range object.
 Range10=RANGE:New("Range 10")
 

 
 
 
 
 
--Range10:DebugON()
Range10:SetMaxStrafeAlt(3000)
 -- Distance between foul line and strafe target. Note that this could also be done manually by simply measuring the distance between the target and the foul line in the ME.
 Range10_Strafepit=UNIT:FindByName("Range10_Strafepit1")
 Range10_Foulline=UNIT:FindByName("Range10_Foulline")

 Range10_fouldist=Range10_Strafepit:GetCoordinate():Get2DDistance(Range10_Foulline:GetCoordinate())



 -- Add strafe pits. Each pit (left and right) consists of two targets.
 Range10:AddStrafePit(Range10_Strafepit_Table, 5000, 800, nil, true, 20, Range10_fouldist)


 -- Add bombing targets. A good hit is if the bomb falls less then 50 m from the target.
 Range10:AddBombingTargets(bombtargets_range10, 50)

 -- Start range.
--birthEventandler = EVENTHANDLER:New()
--birthEventandler:HandleEvent(EVENTS.Birth)
--
--slotChangeHandler = EVENTHANDLER:New()
--slotChangeHandler:HandleEvent(EVENTS.PlayerEnterUnit)
--function slotChangeHandler:OnEventPlayerEnterUnit(EventData)
--  BASE:F({EventData})
--  -- Get Group Name
--  local birhtGroup = EventData.IniGroup --Wrapper.Group#GROUP
--  local playerName = birhtGroup:GetPlayerName()
--  if playerName ~= nil then -- We have got a player
--    MESSAGE:New("Hello " .. playerName .."\nHow are you? Welcome to this mission" ,20,"Welcome"):ToGroup(birhtGroup)
--    Range10:_AddF10Commands(EventData.IniUnitName)
--  end
--end
--
--

Range10:Start()
 