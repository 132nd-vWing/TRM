 -- Strafe pits. Each pit can consist of multiple targets. Here we have two pits and each of the pits has two targets. These are names of the corresponding units defined in the ME.
 local strafepit_north={"StrafepitNorth", "StrafepitNorth2"}
 local strafepit_south={"StrafepitSouth", "StrafepitSouth2"}

 -- Table of bombing target names. 
 local bombtargets_range10={"Range10_CircleNorth", "Range10_CircleSouth", "Range10_CircleEast" }

 -- Create a range object.
 local Range10=RANGE:New("Range 10")

 -- Distance between foul line and strafe target. Note that this could also be done manually by simply measuring the distance between the target and the foul line in the ME.
 local strafe_north=UNIT:FindByName("StrafepitNorth")
 local foul_north=UNIT:FindByName("FoullineNorth")
 local strafe_south=UNIT:FindByName("StrafepitSouth")
 local foul_south=UNIT:FindByName("FoullineSouth")
 local fouldist_north=strafe_north:GetCoordinate():Get2DDistance(foul_north:GetCoordinate())
 local fouldist_south=strafe_south:GetCoordinate():Get2DDistance(foul_south:GetCoordinate())


 -- Add strafe pits. Each pit (left and right) consists of two targets.
 Range10:AddStrafePit(strafepit_north, 3000, 300, nil, true, 20, fouldist_north)
 Range10:AddStrafePit(strafepit_south, 3000, 300, nil, true, 20, fouldist_south)

 -- Add bombing targets. A good hit is if the bomb falls less then 50 m from the target.
 Range10:AddBombingTargets(bombtargets_range10, 50)

 -- Start range.
 Range10:Start()