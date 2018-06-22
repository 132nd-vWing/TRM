
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
 
-- ON DEMAND SPAWNING -- 
BlueSpawnerR3B = UNIT:FindByName("BlueInfantryR3B")
RedSpawnerR3B = UNIT:FindByName("REDInfantryR3B")

 local Recon_HMMWV_vehicle_R3B = SPAWN:NewWithAlias("_ON_DEMAND_1: Recon_HMMWV_vehicle", "Range3B Target1")
 local Recon_HMMWV_section_R3B = SPAWN:NewWithAlias("_ON_DEMAND_1: Recon_HMMWV_section", "Range3B Target2")
 local Recon_BRDM_vehicle_R3B = SPAWN:NewWithAlias("_ON_DEMAND_1: Recon_BRDM_vehicle", "Range3B Target3")
 local Recon_BRDM_section_R3B = SPAWN:NewWithAlias("_ON_DEMAND_1: Recon_BRDM_section", "Range3B Target4")
 local Recon_STRYKER_vehicle_R3B = SPAWN:NewWithAlias("_ON_DEMAND_1: Recon_stryker_vehicle", "Range3B Target5")
 local Recon_STRYKER_section_R3B = SPAWN:NewWithAlias("_ON_DEMAND_1: Recon_stryker_section", "Range3B Target6")
 local IFV_BMP2_vehicle_R3B = SPAWN:NewWithAlias("_ON_DEMAND_2: IFV_BMP2_vehicle", "Range3B Target7" )
 local IFV_BMP2_section_R3B = SPAWN:NewWithAlias("_ON_DEMAND_2: IFV_BMP2_section", "Range3B Target8")
 IFV_LAV25_vehicle_R3B = SPAWN:NewWithAlias("_ON_DEMAND_2: IFV_LAV25_vehicle", "Range3B Target9")
 IFV_LAV25_section_R3B = SPAWN:NewWithAlias("_ON_DEMAND_2: IFV_LAV25_section", "Range3B Target10")
 IFV_BRADLEY_vehicle_R3B = SPAWN:NewWithAlias("_ON_DEMAND_2: IFV_Bradley_vehicle", "Range3B Target11")
 IFV_BRADLEY_section_R3B = SPAWN:NewWithAlias("_ON_DEMAND_2: IFV_Bradley_section", "Range3B Target12")
 IFV_BMP3_vehicle_R3B = SPAWN:NewWithAlias("_ON_DEMAND_2: IFV_BMP3_vehicle", "Range3B Target13")
 IFV_BMP3_section_R3B = SPAWN:NewWithAlias("_ON_DEMAND_2: IFV_BMP3_section", "Range3B Target14")
 IFV_BTR_vehicle_R3B = SPAWN:NewWithAlias("_ON_DEMAND_2: IFV_BTR_vehicle", "Range3B Target15")
 IFV_BTR_section_R3B = SPAWN:NewWithAlias("_ON_DEMAND_2: IFV_BTR_section", "Range3B Target16")
 IFV_M113_vehicle_R3B = SPAWN:NewWithAlias("_ON_DEMAND_2: IFV_M113_vehicle", "Range3B Target17")
 IFV_M113_section_R3B = SPAWN:NewWithAlias("_ON_DEMAND_2: IFV_M113_section", "Range3B Target18")
 MBT_T72_vehicle_R3B = SPAWN:NewWithAlias("_ON_DEMAND_3: MBT_T72_vehicle", "Range3B Target19")
 MBT_T72_section_R3B = SPAWN:NewWithAlias("_ON_DEMAND_3: MBT_T72_section", "Range3B Target20")
 MBT_T80_vehicle_R3B = SPAWN:NewWithAlias("_ON_DEMAND_3: MBT_T80_vehicle", "Range3B Target21")
 MBT_T80_section_R3B = SPAWN:NewWithAlias("_ON_DEMAND_3: MBT_T80_section", "Range3B Target122")
 MBT_ABRAMS_vehicle_R3B = SPAWN:NewWithAlias("_ON_DEMAND_3: MBT_Abrams_vehicle", "Range3B Target23")
 MBT_ABRAMS_section_R3B = SPAWN:NewWithAlias("_ON_DEMAND_3: MBT_Abrams_section", "Range3B Target24")
 MBT_LEO2_vehicle_R3B = SPAWN:NewWithAlias("_ON_DEMAND_3: MBT_Leo2_vehicle", "Range3B Target25")
 MBT_LEO2_section_R3B = SPAWN:NewWithAlias("_ON_DEMAND_3: MBT_Leo2_section", "Range3B Target26")
 MISC_SHILKA_vehicle_R3B = SPAWN:NewWithAlias("_ON_DEMAND_4: Misc_Shilka_vehicle", "Range3B Target27")
 MISC_C2_vehicle_R3B = SPAWN:NewWithAlias("_ON_DEMAND_4: Misc_C2_vehicle", "Range3B Target28")
 MISC_ARTY_vehicle_R3B = SPAWN:NewWithAlias("_ON_DEMAND_4: Misc_Arty_vehicle", "Range3B Target29")
 MISC_MLRS_vehicle_R3B = SPAWN:NewWithAlias("_ON_DEMAND_4: Misc_MLRS_vehicle", "Range3B Target30")
 MISC_SA13_vehicle_R3B = SPAWN:NewWithAlias("_ON_DEMAND_4: Misc_SA-13_vehicle", "Range3B Target31")
 MISC_SA19_vehicle_R3B = SPAWN:NewWithAlias("_ON_DEMAND_4: Misc_SA-19_vehicle", "Range3B Target32")


function _ON_DEMAND_1_Recon_HMMWV_vehicle_R3B ()
  Recon_HMMWV_vehicle_R3B:OnSpawnGroup(function(group)
    group:OptionDisperseOff()
  end)
  Recon_HMMWV_vehicle_R3B:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR3B)
end

function _ON_DEMAND_1_Recon_HMMWV_section_R3B ()
  Recon_HMMWV_section_R3B:OnSpawnGroup(function(group)
    group:OptionDisperseOff()
  end)
  Recon_HMMWV_section_R3B:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR3B)
end

function _ON_DEMAND_1_Recon_BRDM_vehicle_R3B ()
  Recon_BRDM_vehicle_R3B:OnSpawnGroup(function(group)
    group:OptionDisperseOff()
  end)
  Recon_BRDM_vehicle_R3B:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR3B)
end

function _ON_DEMAND_1_Recon_BRDM_section_R3B ()
  Recon_BRDM_section_R3B:OnSpawnGroup(function(group)
    group:OptionDisperseOff()
  end)
  Recon_BRDM_section_R3B:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR3B)
end

function _ON_DEMAND_1_Recon_STRYKER_vehicle_R3B ()
  Recon_STRYKER_vehicle_R3B:OnSpawnGroup(function(group)
    group:OptionDisperseOff()end)
  Recon_STRYKER_vehicle_R3B:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR3B)
end

 function _ON_DEMAND_1_Recon_STRYKER_section_R3B ()
Recon_STRYKER_section_R3B:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
Recon_STRYKER_section_R3B:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR3B)
end

 function _ON_DEMAND_2_IFV_BMP2_vehicle_R3B ()
IFV_BMP2_vehicle_R3B:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
IFV_BMP2_vehicle_R3B:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR3B)
end

 function _ON_DEMAND_2_IFV_BMP2_section_R3B ()
IFV_BMP2_section_R3B:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
IFV_BMP2_section_R3B:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR3B)
end

 function _ON_DEMAND_2_IFV_LAV25_vehicle_R3B ()
IFV_LAV25_vehicle_R3B:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
IFV_LAV25_vehicle_R3B:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR3B)
end

 function _ON_DEMAND_2_IFV_LAV25_section_R3B ()
IFV_LAV25_section_R3B:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
IFV_LAV25_section_R3B:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR3B)
end

 function _ON_DEMAND_2_IFV_BRADLEY_vehicle_R3B ()
IFV_BRADLEY_vehicle_R3B:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
IFV_BRADLEY_vehicle_R3B:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR3B)
end

 function _ON_DEMAND_2_IFV_BRADLEY_section_R3B ()
IFV_BRADLEY_section_R3B:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
IFV_BRADLEY_section_R3B:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR3B)
end

 function _ON_DEMAND_2_IFV_BMP3_vehicle_R3B ()
IFV_BMP3_vehicle_R3B:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
IFV_BMP3_vehicle_R3B:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR3B)
end

 function _ON_DEMAND_2_IFV_BMP3_section_R3B ()
IFV_BMP3_section_R3B:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
IFV_BMP3_section_R3B:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR3B)
end

 function _ON_DEMAND_2_IFV_BTR_vehicle_R3B ()
IFV_BTR_vehicle_R3B:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
IFV_BTR_vehicle_R3B:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR3B)
end

 function _ON_DEMAND_2_IFV_BTR_section_R3B ()
IFV_BTR_section_R3B:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
IFV_BTR_section_R3B:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR3B)
end

 function _ON_DEMAND_2_IFV_M113_vehicle_R3B ()
IFV_BTR_vehicle_R3B:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
IFV_BTR_vehicle_R3B:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR3B)
end

 function _ON_DEMAND_2_IFV_M113_section_R3B ()
IFV_BTR_section_R3B:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
IFV_BTR_section_R3B:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR3B)
end

 function _ON_DEMAND_3_MBT_T72_vehicle_R3B ()
MBT_T72_vehicle_R3B:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
MBT_T72_vehicle_R3B:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR3B)
end

 function _ON_DEMAND_3_MBT_T72_section_R3B ()
MBT_T72_section_R3B:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
MBT_T72_section_R3B:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR3B)
end

 function _ON_DEMAND_3_MBT_T80_vehicle_R3B ()
MBT_T80_vehicle_R3B:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
MBT_T80_vehicle_R3B:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR3B)
end

 function _ON_DEMAND_3_MBT_T80_section_R3B ()
MBT_T80_section_R3B:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
MBT_T80_section_R3B:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR3B)
end

 function _ON_DEMAND_3_MBT_ABRAMS_vehicle_R3B ()
MBT_ABRAMS_vehicle_R3B:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
MBT_ABRAMS_vehicle_R3B:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR3B)
end

 function _ON_DEMAND_3_MBT_ABRAMS_section_R3B ()
MBT_ABRAMS_section_R3B:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
MBT_ABRAMS_section_R3B:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR3B)
end

 function _ON_DEMAND_3_MBT_LEO2_vehicle_R3B ()
MBT_LEO2_vehicle_R3B:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
MBT_LEO2_vehicle_R3B:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR3B)
end

 function _ON_DEMAND_3_MBT_LEO2_section_R3B ()
MBT_LEO2_section_R3B:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
MBT_LEO2_section_R3B:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR3B)
end


 function _ON_DEMAND_4_MISC_SHILKA_vehicle_R3B ()
MISC_SHILKA_vehicle_R3B:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
MISC_SHILKA_vehicle_R3B:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR3B)
end

 function _ON_DEMAND_4_MISC_C2_vehicle_R3B ()
MISC_C2_vehicle_R3B:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
MISC_C2_vehicle_R3B:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR3B)
end

 function _ON_DEMAND_4_MISC_ARTY_vehicle_R3B ()
MISC_ARTY_vehicle_R3B:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
MISC_ARTY_vehicle_R3B:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR3B)
end

 function _ON_DEMAND_4_MISC_MLRS_vehicle_R3B ()
MISC_MLRS_vehicle_R3B:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
MISC_MLRS_vehicle_R3B:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR3B)
end

 function _ON_DEMAND_4_MISC_SA13_vehicle_R3B ()
MISC_SA13_vehicle_R3B:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
MISC_SA13_vehicle_R3B:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR3B)
end

 function _ON_DEMAND_4_MISC_SA19_vehicle_R3B ()
MISC_SA19_vehicle_R3B:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
MISC_SA19_vehicle_R3B:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR3B)
end
-- ON DEMAND SPAWNING -- 

Menu_Range_R3B = MENU_MISSION:New("Range 3B Center", Menu_Range_Options)
spawn_menu_OD_R3B = MENU_MISSION:New("On Demand Spawning",Menu_Range_R3B)
spawn_menu_OD_Recon_R3B = MENU_MISSION:New("On Demand - RECON",spawn_menu_OD_R3B)
spawn_menu_OD_IFV_R3B = MENU_MISSION:New("On Demand - IFV",spawn_menu_OD_R3B)
spawn_menu_OD_IFV_R3B_BMP2 = MENU_MISSION:New("On Demand - IFV - BMP2",spawn_menu_OD_IFV_R3B)
spawn_menu_OD_IFV_R3B_LAV25 = MENU_MISSION:New("On Demand - IFV - LAV25",spawn_menu_OD_IFV_R3B)
spawn_menu_OD_IFV_R3B_BRADLEY = MENU_MISSION:New("On Demand - IFV - Bradley",spawn_menu_OD_IFV_R3B)
spawn_menu_OD_IFV_R3B_BMP3 = MENU_MISSION:New("On Demand - IFV - BMP3",spawn_menu_OD_IFV_R3B)
spawn_menu_OD_IFV_R3B_BTR = MENU_MISSION:New("On Demand - IFV - BTR",spawn_menu_OD_IFV_R3B)
spawn_menu_OD_IFV_R3B_M113 = MENU_MISSION:New("On Demand - IFV - M113",spawn_menu_OD_IFV_R3B)
spawn_menu_OD_MBT_R3B = MENU_MISSION:New("On Demand - MBT",spawn_menu_OD_R3B)
spawn_menu_OD_MBT_R3B_T72 = MENU_MISSION:New("On Demand - MBT- T72",spawn_menu_OD_MBT_R3B)
spawn_menu_OD_MBT_R3B_T80 = MENU_MISSION:New("On Demand - MBT -T80",spawn_menu_OD_MBT_R3B)
spawn_menu_OD_MBT_R3B_ABRAMS = MENU_MISSION:New("On Demand - MBT - Abrams",spawn_menu_OD_MBT_R3B)
spawn_menu_OD_MBT_R3B_LEO2 = MENU_MISSION:New("On Demand - MBT - Leopard2",spawn_menu_OD_MBT_R3B)
spawn_menu_OD_MISC_R3B = MENU_MISSION:New("On Demand - MISC",spawn_menu_OD_R3B)   



local menu_ON_DEMAND_1_Recon_HMMWV_vehicle_R3B = MENU_MISSION_COMMAND:New("Spawn Recon HMMWV Vehicle",spawn_menu_OD_Recon_R3B,_ON_DEMAND_1_Recon_HMMWV_vehicle_R3B)
local menu_ON_DEMAND_1_Recon_HMMWV_section_R3B = MENU_MISSION_COMMAND:New("Spawn Recon HMMWV Section",spawn_menu_OD_Recon_R3B,_ON_DEMAND_1_Recon_HMMWV_section_R3B)
local menu_ON_DEMAND_1_Recon_BRDM_vehicle_R3B = MENU_MISSION_COMMAND:New("Spawn Recon BRDM Vehicle",spawn_menu_OD_Recon_R3B,_ON_DEMAND_1_Recon_BRDM_vehicle_R3B)
local menu_ON_DEMAND_1_Recon_BRDM_section_R3B = MENU_MISSION_COMMAND:New("Spawn Recon BRDM Section",spawn_menu_OD_Recon_R3B,_ON_DEMAND_1_Recon_BRDM_section_R3B)
local menu_ON_DEMAND_1_Recon_STRYKER_vehicle_R3B = MENU_MISSION_COMMAND:New("Spawn Recon STRYKER Vehicle",spawn_menu_OD_Recon_R3B,_ON_DEMAND_1_Recon_STRYKER_vehicle_R3B)
local menu_ON_DEMAND_1_Recon_STRYKER_section_R3B = MENU_MISSION_COMMAND:New("Spawn Recon STRYKER Section",spawn_menu_OD_Recon_R3B,_ON_DEMAND_1_Recon_STRYKER_section_R3B)

local menu_ON_DEMAND_2_IFV_BMP2_vehicle_R3B = MENU_MISSION_COMMAND:New("Spawn IFV BMP2 Vehicle",spawn_menu_OD_IFV_R3B_BMP2,_ON_DEMAND_2_IFV_BMP2_vehicle_R3B)
local menu_ON_DEMAND_2_IFV_BMP2_section_R3B = MENU_MISSION_COMMAND:New("Spawn IFV BMP2 Section",spawn_menu_OD_IFV_R3B_BMP2,_ON_DEMAND_2_IFV_BMP2_section_R3B)
local menu_ON_DEMAND_2_IFV_LAV25_vehicle_R3B = MENU_MISSION_COMMAND:New("Spawn IFV LAV25 Vehicle",spawn_menu_OD_IFV_R3B_LAV25,_ON_DEMAND_2_IFV_LAV25_vehicle_R3B)
local menu_ON_DEMAND_2_IFV_LAV25_section_R3B = MENU_MISSION_COMMAND:New("Spawn IFV LAV25 Section",spawn_menu_OD_IFV_R3B_LAV25,_ON_DEMAND_2_IFV_LAV25_section_R3B)
local menu_ON_DEMAND_2_IFV_BRADLEY_vehicle_R3B = MENU_MISSION_COMMAND:New("Spawn IFV BRADLEY Vehicle",spawn_menu_OD_IFV_R3B_BRADLEY,_ON_DEMAND_2_IFV_BRADLEY_vehicle_R3B)
local menu_ON_DEMAND_2_IFV_BRADLEY_section_R3B = MENU_MISSION_COMMAND:New("Spawn IFV BRADLEY Section",spawn_menu_OD_IFV_R3B_BRADLEY,_ON_DEMAND_2_IFV_BRADLEY_section_R3B)
local menu_ON_DEMAND_2_IFV_BMP3_vehicle_R3B = MENU_MISSION_COMMAND:New("Spawn IFV BMP3 Vehicle",spawn_menu_OD_IFV_R3B_BMP3,_ON_DEMAND_2_IFV_BMP3_vehicle_R3B)
local menu_ON_DEMAND_2_IFV_BMP3_section_R3B = MENU_MISSION_COMMAND:New("Spawn IFV BMP3 Section",spawn_menu_OD_IFV_R3B_BMP3,_ON_DEMAND_2_IFV_BMP3_section_R3B)
local menu_ON_DEMAND_2_IFV_BTR_vehicle_R3B = MENU_MISSION_COMMAND:New("Spawn IFV BTR Vehicle",spawn_menu_OD_IFV_R3B_BTR,_ON_DEMAND_2_IFV_BTR_vehicle_R3B)
local menu_ON_DEMAND_2_IFV_BTR_section_R3B = MENU_MISSION_COMMAND:New("Spawn IFV BTR Section",spawn_menu_OD_IFV_R3B_BTR,_ON_DEMAND_2_IFV_BTR_section_R3B)
local menu_ON_DEMAND_2_IFV_M113_vehicle_R3B = MENU_MISSION_COMMAND:New("Spawn IFV M113 Vehicle",spawn_menu_OD_IFV_R3B_M113,_ON_DEMAND_2_IFV_M113_vehicle_R3B)
local menu_ON_DEMAND_2_IFV_M113_section_R3B = MENU_MISSION_COMMAND:New("Spawn IFV M113 Section",spawn_menu_OD_IFV_R3B_M113,_ON_DEMAND_2_IFV_M113_section_R3B)

local menu_ON_DEMAND_3_MBT_T72_vehicle_R3B = MENU_MISSION_COMMAND:New("Spawn MBT T72 Vehicle",spawn_menu_OD_MBT_R3B_T72,_ON_DEMAND_3_MBT_T72_vehicle_R3B)
local menu_ON_DEMAND_3_MBT_T72_section_R3B = MENU_MISSION_COMMAND:New("Spawn MBT T72 Section",spawn_menu_OD_MBT_R3B_T72,_ON_DEMAND_3_MBT_T72_section_R3B)
local menu_ON_DEMAND_3_MBT_T80_vehicle_R3B = MENU_MISSION_COMMAND:New("Spawn MBT T80 Vehicle",spawn_menu_OD_MBT_R3B_T80,_ON_DEMAND_3_MBT_T80_vehicle_R3B)
local menu_ON_DEMAND_3_MBT_T80_section_R3B = MENU_MISSION_COMMAND:New("Spawn MBT T80 Section",spawn_menu_OD_MBT_R3B_T80,_ON_DEMAND_3_MBT_T80_section_R3B)
local menu_ON_DEMAND_3_MBT_ABRAMS_vehicle_R3B = MENU_MISSION_COMMAND:New("Spawn MBT ABRAMS Vehicle",spawn_menu_OD_MBT_R3B_ABRAMS,_ON_DEMAND_3_MBT_ABRAMS_vehicle_R3B)
local menu_ON_DEMAND_3_MBT_ABRAMS_section_R3B = MENU_MISSION_COMMAND:New("Spawn MBT ABRAMS Section",spawn_menu_OD_MBT_R3B_ABRAMS,_ON_DEMAND_3_MBT_ABRAMS_section_R3B)
local menu_ON_DEMAND_3_MBT_LEO2_vehicle_R3B = MENU_MISSION_COMMAND:New("Spawn MBT Leopard2 Vehicle",spawn_menu_OD_MBT_R3B_LEO2,_ON_DEMAND_3_MBT_LEO2_vehicle_R3B)
local menu_ON_DEMAND_3_MBT_LEO2_section_R3B = MENU_MISSION_COMMAND:New("Spawn MBT Leopard2 Section",spawn_menu_OD_MBT_R3B_LEO2,_ON_DEMAND_3_MBT_LEO2_section_R3B)

local menu_ON_DEMAND_4_MISC_SHILKA_vehicle_R3B = MENU_MISSION_COMMAND:New("Spawn SHILKA Vehicle",spawn_menu_OD_MISC_R3B,_ON_DEMAND_4_MISC_SHILKA_vehicle_R3B)
local menu_ON_DEMAND_4_MISC_C2_vehicle_R3B = MENU_MISSION_COMMAND:New("Spawn C2 Vehicle",spawn_menu_OD_MISC_R3B,_ON_DEMAND_4_MISC_C2_vehicle_R3B)
local menu_ON_DEMAND_4_MISC_ARTY_vehicle_R3B = MENU_MISSION_COMMAND:New("Spawn Artillery Vehicle",spawn_menu_OD_MISC_R3B,_ON_DEMAND_4_MISC_ARTY_vehicle_R3B)
local menu_ON_DEMAND_4_MISC_MLRS_vehicle_R3B = MENU_MISSION_COMMAND:New("Spawn MLRS Vehicle",spawn_menu_OD_MISC_R3B,_ON_DEMAND_4_MISC_MLRS_vehicle_R3B)
local menu_ON_DEMAND_4_MISC_SA13_vehicle_R3B = MENU_MISSION_COMMAND:New("Spawn SA13 Vehicle",spawn_menu_OD_MISC_R3B,_ON_DEMAND_4_MISC_SA13_vehicle_R3B)
local menu_ON_DEMAND_4_MISC_SA19_vehicle_R3B = MENU_MISSION_COMMAND:New("Spawn SA19 Vehicle",spawn_menu_OD_MISC_R3B,_ON_DEMAND_4_MISC_SA19_vehicle_R3B)




-- ON DEMAND SPAWNING -- 
BlueSpawnerR3B_North = UNIT:FindByName("BlueInfantryR3B_North")
RedSpawnerR3B_North = UNIT:FindByName("REDInfantryR3B_North")

 local Recon_HMMWV_vehicle_R3B_North = SPAWN:NewWithAlias("_ON_DEMAND_1: Recon_HMMWV_vehicle", "Range3B_North Target1")
 local Recon_HMMWV_section_R3B_North = SPAWN:NewWithAlias("_ON_DEMAND_1: Recon_HMMWV_section", "Range3B_North Target2")
 local Recon_BRDM_vehicle_R3B_North = SPAWN:NewWithAlias("_ON_DEMAND_1: Recon_BRDM_vehicle", "Range3B_North Target3")
 local Recon_BRDM_section_R3B_North = SPAWN:NewWithAlias("_ON_DEMAND_1: Recon_BRDM_section", "Range3B_North Target4")
 local Recon_STRYKER_vehicle_R3B_North = SPAWN:NewWithAlias("_ON_DEMAND_1: Recon_stryker_vehicle", "Range3B_North Target5")
 local Recon_STRYKER_section_R3B_North = SPAWN:NewWithAlias("_ON_DEMAND_1: Recon_stryker_section", "Range3B_North Target6")
 local IFV_BMP2_vehicle_R3B_North = SPAWN:NewWithAlias("_ON_DEMAND_2: IFV_BMP2_vehicle", "Range3B_North Target7" )
 local IFV_BMP2_section_R3B_North = SPAWN:NewWithAlias("_ON_DEMAND_2: IFV_BMP2_section", "Range3B_North Target8")
 IFV_LAV25_vehicle_R3B_North = SPAWN:NewWithAlias("_ON_DEMAND_2: IFV_LAV25_vehicle", "Range3B_North Target9")
 IFV_LAV25_section_R3B_North = SPAWN:NewWithAlias("_ON_DEMAND_2: IFV_LAV25_section", "Range3B_North Target10")
 IFV_BRADLEY_vehicle_R3B_North = SPAWN:NewWithAlias("_ON_DEMAND_2: IFV_Bradley_vehicle", "Range3B_North Target11")
 IFV_BRADLEY_section_R3B_North = SPAWN:NewWithAlias("_ON_DEMAND_2: IFV_Bradley_section", "Range3B_North Target12")
 IFV_BMP3_vehicle_R3B_North = SPAWN:NewWithAlias("_ON_DEMAND_2: IFV_BMP3_vehicle", "Range3B_North Target13")
 IFV_BMP3_section_R3B_North = SPAWN:NewWithAlias("_ON_DEMAND_2: IFV_BMP3_section", "Range3B_North Target14")
 IFV_BTR_vehicle_R3B_North = SPAWN:NewWithAlias("_ON_DEMAND_2: IFV_BTR_vehicle", "Range3B_North Target15")
 IFV_BTR_section_R3B_North = SPAWN:NewWithAlias("_ON_DEMAND_2: IFV_BTR_section", "Range3B_North Target16")
 IFV_M113_vehicle_R3B_North = SPAWN:NewWithAlias("_ON_DEMAND_2: IFV_M113_vehicle", "Range3B_North Target17")
 IFV_M113_section_R3B_North = SPAWN:NewWithAlias("_ON_DEMAND_2: IFV_M113_section", "Range3B_North Target18")
 MBT_T72_vehicle_R3B_North = SPAWN:NewWithAlias("_ON_DEMAND_3: MBT_T72_vehicle", "Range3B_North Target19")
 MBT_T72_section_R3B_North = SPAWN:NewWithAlias("_ON_DEMAND_3: MBT_T72_section", "Range3B_North Target20")
 MBT_T80_vehicle_R3B_North = SPAWN:NewWithAlias("_ON_DEMAND_3: MBT_T80_vehicle", "Range3B_North Target21")
 MBT_T80_section_R3B_North = SPAWN:NewWithAlias("_ON_DEMAND_3: MBT_T80_section", "Range3B_North Target122")
 MBT_ABRAMS_vehicle_R3B_North = SPAWN:NewWithAlias("_ON_DEMAND_3: MBT_Abrams_vehicle", "Range3B_North Target23")
 MBT_ABRAMS_section_R3B_North = SPAWN:NewWithAlias("_ON_DEMAND_3: MBT_Abrams_section", "Range3B_North Target24")
 MBT_LEO2_vehicle_R3B_North = SPAWN:NewWithAlias("_ON_DEMAND_3: MBT_Leo2_vehicle", "Range3B_North Target25")
 MBT_LEO2_section_R3B_North = SPAWN:NewWithAlias("_ON_DEMAND_3: MBT_Leo2_section", "Range3B_North Target26")
 MISC_SHILKA_vehicle_R3B_North = SPAWN:NewWithAlias("_ON_DEMAND_4: Misc_Shilka_vehicle", "Range3B_North Target27")
 MISC_C2_vehicle_R3B_North = SPAWN:NewWithAlias("_ON_DEMAND_4: Misc_C2_vehicle", "Range3B_North Target28")
 MISC_ARTY_vehicle_R3B_North = SPAWN:NewWithAlias("_ON_DEMAND_4: Misc_Arty_vehicle", "Range3B_North Target29")
 MISC_MLRS_vehicle_R3B_North = SPAWN:NewWithAlias("_ON_DEMAND_4: Misc_MLRS_vehicle", "Range3B_North Target30")
 MISC_SA13_vehicle_R3B_North = SPAWN:NewWithAlias("_ON_DEMAND_4: Misc_SA-13_vehicle", "Range3B_North Target31")
 MISC_SA19_vehicle_R3B_North = SPAWN:NewWithAlias("_ON_DEMAND_4: Misc_SA-19_vehicle", "Range3B_North Target32")


function _ON_DEMAND_1_Recon_HMMWV_vehicle_R3B_North ()
  Recon_HMMWV_vehicle_R3B_North:OnSpawnGroup(function(group)
    group:OptionDisperseOff()
  end)
  Recon_HMMWV_vehicle_R3B_North:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR3B_North)
end

function _ON_DEMAND_1_Recon_HMMWV_section_R3B_North ()
  Recon_HMMWV_section_R3B_North:OnSpawnGroup(function(group)
    group:OptionDisperseOff()
  end)
  Recon_HMMWV_section_R3B_North:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR3B_North)
end

function _ON_DEMAND_1_Recon_BRDM_vehicle_R3B_North ()
  Recon_BRDM_vehicle_R3B_North:OnSpawnGroup(function(group)
    group:OptionDisperseOff()
  end)
  Recon_BRDM_vehicle_R3B_North:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR3B_North)
end

function _ON_DEMAND_1_Recon_BRDM_section_R3B_North ()
  Recon_BRDM_section_R3B_North:OnSpawnGroup(function(group)
    group:OptionDisperseOff()
  end)
  Recon_BRDM_section_R3B_North:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR3B_North)
end

function _ON_DEMAND_1_Recon_STRYKER_vehicle_R3B_North ()
  Recon_STRYKER_vehicle_R3B_North:OnSpawnGroup(function(group)
    group:OptionDisperseOff()end)
  Recon_STRYKER_vehicle_R3B_North:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR3B_North)
end

 function _ON_DEMAND_1_Recon_STRYKER_section_R3B_North ()
Recon_STRYKER_section_R3B_North:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
Recon_STRYKER_section_R3B_North:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR3B_North)
end

 function _ON_DEMAND_2_IFV_BMP2_vehicle_R3B_North ()
IFV_BMP2_vehicle_R3B_North:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
IFV_BMP2_vehicle_R3B_North:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR3B_North)
end

 function _ON_DEMAND_2_IFV_BMP2_section_R3B_North ()
IFV_BMP2_section_R3B_North:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
IFV_BMP2_section_R3B_North:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR3B_North)
end

 function _ON_DEMAND_2_IFV_LAV25_vehicle_R3B_North ()
IFV_LAV25_vehicle_R3B_North:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
IFV_LAV25_vehicle_R3B_North:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR3B_North)
end

 function _ON_DEMAND_2_IFV_LAV25_section_R3B_North ()
IFV_LAV25_section_R3B_North:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
IFV_LAV25_section_R3B_North:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR3B_North)
end

 function _ON_DEMAND_2_IFV_BRADLEY_vehicle_R3B_North ()
IFV_BRADLEY_vehicle_R3B_North:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
IFV_BRADLEY_vehicle_R3B_North:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR3B_North)
end

 function _ON_DEMAND_2_IFV_BRADLEY_section_R3B_North ()
IFV_BRADLEY_section_R3B_North:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
IFV_BRADLEY_section_R3B_North:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR3B_North)
end

 function _ON_DEMAND_2_IFV_BMP3_vehicle_R3B_North ()
IFV_BMP3_vehicle_R3B_North:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
IFV_BMP3_vehicle_R3B_North:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR3B_North)
end

 function _ON_DEMAND_2_IFV_BMP3_section_R3B_North ()
IFV_BMP3_section_R3B_North:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
IFV_BMP3_section_R3B_North:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR3B_North)
end

 function _ON_DEMAND_2_IFV_BTR_vehicle_R3B_North ()
IFV_BTR_vehicle_R3B_North:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
IFV_BTR_vehicle_R3B_North:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR3B_North)
end

 function _ON_DEMAND_2_IFV_BTR_section_R3B_North ()
IFV_BTR_section_R3B_North:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
IFV_BTR_section_R3B_North:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR3B_North)
end

 function _ON_DEMAND_2_IFV_M113_vehicle_R3B_North ()
IFV_BTR_vehicle_R3B_North:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
IFV_BTR_vehicle_R3B_North:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR3B_North)
end

 function _ON_DEMAND_2_IFV_M113_section_R3B_North ()
IFV_BTR_section_R3B_North:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
IFV_BTR_section_R3B_North:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR3B_North)
end

 function _ON_DEMAND_3_MBT_T72_vehicle_R3B_North ()
MBT_T72_vehicle_R3B_North:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
MBT_T72_vehicle_R3B_North:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR3B_North)
end

 function _ON_DEMAND_3_MBT_T72_section_R3B_North ()
MBT_T72_section_R3B_North:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
MBT_T72_section_R3B_North:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR3B_North)
end

 function _ON_DEMAND_3_MBT_T80_vehicle_R3B_North ()
MBT_T80_vehicle_R3B_North:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
MBT_T80_vehicle_R3B_North:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR3B_North)
end

 function _ON_DEMAND_3_MBT_T80_section_R3B_North ()
MBT_T80_section_R3B_North:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
MBT_T80_section_R3B_North:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR3B_North)
end

 function _ON_DEMAND_3_MBT_ABRAMS_vehicle_R3B_North ()
MBT_ABRAMS_vehicle_R3B_North:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
MBT_ABRAMS_vehicle_R3B_North:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR3B_North)
end

 function _ON_DEMAND_3_MBT_ABRAMS_section_R3B_North ()
MBT_ABRAMS_section_R3B_North:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
MBT_ABRAMS_section_R3B_North:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR3B_North)
end

 function _ON_DEMAND_3_MBT_LEO2_vehicle_R3B_North ()
MBT_LEO2_vehicle_R3B_North:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
MBT_LEO2_vehicle_R3B_North:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR3B_North)
end

 function _ON_DEMAND_3_MBT_LEO2_section_R3B_North ()
MBT_LEO2_section_R3B_North:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
MBT_LEO2_section_R3B_North:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR3B_North)
end


 function _ON_DEMAND_4_MISC_SHILKA_vehicle_R3B_North ()
MISC_SHILKA_vehicle_R3B_North:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
MISC_SHILKA_vehicle_R3B_North:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR3B_North)
end

 function _ON_DEMAND_4_MISC_C2_vehicle_R3B_North ()
MISC_C2_vehicle_R3B_North:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
MISC_C2_vehicle_R3B_North:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR3B_North)
end

 function _ON_DEMAND_4_MISC_ARTY_vehicle_R3B_North ()
MISC_ARTY_vehicle_R3B_North:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
MISC_ARTY_vehicle_R3B_North:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR3B_North)
end

 function _ON_DEMAND_4_MISC_MLRS_vehicle_R3B_North ()
MISC_MLRS_vehicle_R3B_North:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
MISC_MLRS_vehicle_R3B_North:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR3B_North)
end

 function _ON_DEMAND_4_MISC_SA13_vehicle_R3B_North ()
MISC_SA13_vehicle_R3B_North:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
MISC_SA13_vehicle_R3B_North:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR3B_North)
end

 function _ON_DEMAND_4_MISC_SA19_vehicle_R3B_North ()
MISC_SA19_vehicle_R3B_North:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
MISC_SA19_vehicle_R3B_North:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR3B_North)
end
-- ON DEMAND SPAWNING -- 

Menu_Range_R3B_North = MENU_MISSION:New("Range 3B North", Menu_Range_Options)
spawn_menu_OD_R3B_North = MENU_MISSION:New("On Demand Spawning",Menu_Range_R3B_North)
spawn_menu_OD_Recon_R3B_North = MENU_MISSION:New("On Demand - RECON",spawn_menu_OD_R3B_North)
spawn_menu_OD_IFV_R3B_North = MENU_MISSION:New("On Demand - IFV",spawn_menu_OD_R3B_North)
spawn_menu_OD_IFV_R3B_North_BMP2 = MENU_MISSION:New("On Demand - IFV - BMP2",spawn_menu_OD_IFV_R3B_North)
spawn_menu_OD_IFV_R3B_North_LAV25 = MENU_MISSION:New("On Demand - IFV - LAV25",spawn_menu_OD_IFV_R3B_North)
spawn_menu_OD_IFV_R3B_North_BRADLEY = MENU_MISSION:New("On Demand - IFV - Bradley",spawn_menu_OD_IFV_R3B_North)
spawn_menu_OD_IFV_R3B_North_BMP3 = MENU_MISSION:New("On Demand - IFV - BMP3",spawn_menu_OD_IFV_R3B_North)
spawn_menu_OD_IFV_R3B_North_BTR = MENU_MISSION:New("On Demand - IFV - BTR",spawn_menu_OD_IFV_R3B_North)
spawn_menu_OD_IFV_R3B_North_M113 = MENU_MISSION:New("On Demand - IFV - M113",spawn_menu_OD_IFV_R3B_North)
spawn_menu_OD_MBT_R3B_North = MENU_MISSION:New("On Demand - MBT",spawn_menu_OD_R3B_North)
spawn_menu_OD_MBT_R3B_North_T72 = MENU_MISSION:New("On Demand - MBT- T72",spawn_menu_OD_MBT_R3B_North)
spawn_menu_OD_MBT_R3B_North_T80 = MENU_MISSION:New("On Demand - MBT -T80",spawn_menu_OD_MBT_R3B_North)
spawn_menu_OD_MBT_R3B_North_ABRAMS = MENU_MISSION:New("On Demand - MBT - Abrams",spawn_menu_OD_MBT_R3B_North)
spawn_menu_OD_MBT_R3B_North_LEO2 = MENU_MISSION:New("On Demand - MBT - Leopard2",spawn_menu_OD_MBT_R3B_North)
spawn_menu_OD_MISC_R3B_North = MENU_MISSION:New("On Demand - MISC",spawn_menu_OD_R3B_North)   



local menu_ON_DEMAND_1_Recon_HMMWV_vehicle_R3B_North = MENU_MISSION_COMMAND:New("Spawn Recon HMMWV Vehicle",spawn_menu_OD_Recon_R3B_North,_ON_DEMAND_1_Recon_HMMWV_vehicle_R3B_North)
local menu_ON_DEMAND_1_Recon_HMMWV_section_R3B_North = MENU_MISSION_COMMAND:New("Spawn Recon HMMWV Section",spawn_menu_OD_Recon_R3B_North,_ON_DEMAND_1_Recon_HMMWV_section_R3B_North)
local menu_ON_DEMAND_1_Recon_BRDM_vehicle_R3B_North = MENU_MISSION_COMMAND:New("Spawn Recon BRDM Vehicle",spawn_menu_OD_Recon_R3B_North,_ON_DEMAND_1_Recon_BRDM_vehicle_R3B_North)
local menu_ON_DEMAND_1_Recon_BRDM_section_R3B_North = MENU_MISSION_COMMAND:New("Spawn Recon BRDM Section",spawn_menu_OD_Recon_R3B_North,_ON_DEMAND_1_Recon_BRDM_section_R3B_North)
local menu_ON_DEMAND_1_Recon_STRYKER_vehicle_R3B_North = MENU_MISSION_COMMAND:New("Spawn Recon STRYKER Vehicle",spawn_menu_OD_Recon_R3B_North,_ON_DEMAND_1_Recon_STRYKER_vehicle_R3B_North)
local menu_ON_DEMAND_1_Recon_STRYKER_section_R3B_North = MENU_MISSION_COMMAND:New("Spawn Recon STRYKER Section",spawn_menu_OD_Recon_R3B_North,_ON_DEMAND_1_Recon_STRYKER_section_R3B_North)

local menu_ON_DEMAND_2_IFV_BMP2_vehicle_R3B_North = MENU_MISSION_COMMAND:New("Spawn IFV BMP2 Vehicle",spawn_menu_OD_IFV_R3B_North_BMP2,_ON_DEMAND_2_IFV_BMP2_vehicle_R3B_North)
local menu_ON_DEMAND_2_IFV_BMP2_section_R3B_North = MENU_MISSION_COMMAND:New("Spawn IFV BMP2 Section",spawn_menu_OD_IFV_R3B_North_BMP2,_ON_DEMAND_2_IFV_BMP2_section_R3B_North)
local menu_ON_DEMAND_2_IFV_LAV25_vehicle_R3B_North = MENU_MISSION_COMMAND:New("Spawn IFV LAV25 Vehicle",spawn_menu_OD_IFV_R3B_North_LAV25,_ON_DEMAND_2_IFV_LAV25_vehicle_R3B_North)
local menu_ON_DEMAND_2_IFV_LAV25_section_R3B_North = MENU_MISSION_COMMAND:New("Spawn IFV LAV25 Section",spawn_menu_OD_IFV_R3B_North_LAV25,_ON_DEMAND_2_IFV_LAV25_section_R3B_North)
local menu_ON_DEMAND_2_IFV_BRADLEY_vehicle_R3B_North = MENU_MISSION_COMMAND:New("Spawn IFV BRADLEY Vehicle",spawn_menu_OD_IFV_R3B_North_BRADLEY,_ON_DEMAND_2_IFV_BRADLEY_vehicle_R3B_North)
local menu_ON_DEMAND_2_IFV_BRADLEY_section_R3B_North = MENU_MISSION_COMMAND:New("Spawn IFV BRADLEY Section",spawn_menu_OD_IFV_R3B_North_BRADLEY,_ON_DEMAND_2_IFV_BRADLEY_section_R3B_North)
local menu_ON_DEMAND_2_IFV_BMP3_vehicle_R3B_North = MENU_MISSION_COMMAND:New("Spawn IFV BMP3 Vehicle",spawn_menu_OD_IFV_R3B_North_BMP3,_ON_DEMAND_2_IFV_BMP3_vehicle_R3B_North)
local menu_ON_DEMAND_2_IFV_BMP3_section_R3B_North = MENU_MISSION_COMMAND:New("Spawn IFV BMP3 Section",spawn_menu_OD_IFV_R3B_North_BMP3,_ON_DEMAND_2_IFV_BMP3_section_R3B_North)
local menu_ON_DEMAND_2_IFV_BTR_vehicle_R3B_North = MENU_MISSION_COMMAND:New("Spawn IFV BTR Vehicle",spawn_menu_OD_IFV_R3B_North_BTR,_ON_DEMAND_2_IFV_BTR_vehicle_R3B_North)
local menu_ON_DEMAND_2_IFV_BTR_section_R3B_North = MENU_MISSION_COMMAND:New("Spawn IFV BTR Section",spawn_menu_OD_IFV_R3B_North_BTR,_ON_DEMAND_2_IFV_BTR_section_R3B_North)
local menu_ON_DEMAND_2_IFV_M113_vehicle_R3B_North = MENU_MISSION_COMMAND:New("Spawn IFV M113 Vehicle",spawn_menu_OD_IFV_R3B_North_M113,_ON_DEMAND_2_IFV_M113_vehicle_R3B_North)
local menu_ON_DEMAND_2_IFV_M113_section_R3B_North = MENU_MISSION_COMMAND:New("Spawn IFV M113 Section",spawn_menu_OD_IFV_R3B_North_M113,_ON_DEMAND_2_IFV_M113_section_R3B_North)

local menu_ON_DEMAND_3_MBT_T72_vehicle_R3B_North = MENU_MISSION_COMMAND:New("Spawn MBT T72 Vehicle",spawn_menu_OD_MBT_R3B_North_T72,_ON_DEMAND_3_MBT_T72_vehicle_R3B_North)
local menu_ON_DEMAND_3_MBT_T72_section_R3B_North = MENU_MISSION_COMMAND:New("Spawn MBT T72 Section",spawn_menu_OD_MBT_R3B_North_T72,_ON_DEMAND_3_MBT_T72_section_R3B_North)
local menu_ON_DEMAND_3_MBT_T80_vehicle_R3B_North = MENU_MISSION_COMMAND:New("Spawn MBT T80 Vehicle",spawn_menu_OD_MBT_R3B_North_T80,_ON_DEMAND_3_MBT_T80_vehicle_R3B_North)
local menu_ON_DEMAND_3_MBT_T80_section_R3B_North = MENU_MISSION_COMMAND:New("Spawn MBT T80 Section",spawn_menu_OD_MBT_R3B_North_T80,_ON_DEMAND_3_MBT_T80_section_R3B_North)
local menu_ON_DEMAND_3_MBT_ABRAMS_vehicle_R3B_North = MENU_MISSION_COMMAND:New("Spawn MBT ABRAMS Vehicle",spawn_menu_OD_MBT_R3B_North_ABRAMS,_ON_DEMAND_3_MBT_ABRAMS_vehicle_R3B_North)
local menu_ON_DEMAND_3_MBT_ABRAMS_section_R3B_North = MENU_MISSION_COMMAND:New("Spawn MBT ABRAMS Section",spawn_menu_OD_MBT_R3B_North_ABRAMS,_ON_DEMAND_3_MBT_ABRAMS_section_R3B_North)
local menu_ON_DEMAND_3_MBT_LEO2_vehicle_R3B_North = MENU_MISSION_COMMAND:New("Spawn MBT Leopard2 Vehicle",spawn_menu_OD_MBT_R3B_North_LEO2,_ON_DEMAND_3_MBT_LEO2_vehicle_R3B_North)
local menu_ON_DEMAND_3_MBT_LEO2_section_R3B_North = MENU_MISSION_COMMAND:New("Spawn MBT Leopard2 Section",spawn_menu_OD_MBT_R3B_North_LEO2,_ON_DEMAND_3_MBT_LEO2_section_R3B_North)

local menu_ON_DEMAND_4_MISC_SHILKA_vehicle_R3B_North = MENU_MISSION_COMMAND:New("Spawn SHILKA Vehicle",spawn_menu_OD_MISC_R3B_North,_ON_DEMAND_4_MISC_SHILKA_vehicle_R3B_North)
local menu_ON_DEMAND_4_MISC_C2_vehicle_R3B_North = MENU_MISSION_COMMAND:New("Spawn C2 Vehicle",spawn_menu_OD_MISC_R3B_North,_ON_DEMAND_4_MISC_C2_vehicle_R3B_North)
local menu_ON_DEMAND_4_MISC_ARTY_vehicle_R3B_North = MENU_MISSION_COMMAND:New("Spawn Artillery Vehicle",spawn_menu_OD_MISC_R3B_North,_ON_DEMAND_4_MISC_ARTY_vehicle_R3B_North)
local menu_ON_DEMAND_4_MISC_MLRS_vehicle_R3B_North = MENU_MISSION_COMMAND:New("Spawn MLRS Vehicle",spawn_menu_OD_MISC_R3B_North,_ON_DEMAND_4_MISC_MLRS_vehicle_R3B_North)
local menu_ON_DEMAND_4_MISC_SA13_vehicle_R3B_North = MENU_MISSION_COMMAND:New("Spawn SA13 Vehicle",spawn_menu_OD_MISC_R3B_North,_ON_DEMAND_4_MISC_SA13_vehicle_R3B_North)
local menu_ON_DEMAND_4_MISC_SA19_vehicle_R3B_North = MENU_MISSION_COMMAND:New("Spawn SA19 Vehicle",spawn_menu_OD_MISC_R3B_North,_ON_DEMAND_4_MISC_SA19_vehicle_R3B_North)


 
 