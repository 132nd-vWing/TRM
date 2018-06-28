-- Range 1 -- 
Range1_Groups = SET_GROUP:New():FilterCategoryGround():FilterPrefixes("Range1 Target"):FilterStart()


-- ON DEMAND SPAWNING -- 
BlueSpawnerR1 = UNIT:FindByName("BlueInfantryR1")
RedSpawnerR1 = UNIT:FindByName("REDInfantryR1")
 Recon_HMMWV_vehicle_R1 = SPAWN:NewWithAlias("_ON_DEMAND_1: Recon_HMMWV_vehicle", "Range1 Target1")
 Recon_HMMWV_section_R1 = SPAWN:NewWithAlias("_ON_DEMAND_1: Recon_HMMWV_section", "Range1 Target2")
 Recon_BRDM_vehicle_R1 = SPAWN:NewWithAlias("_ON_DEMAND_1: Recon_BRDM_vehicle", "Range1 Target3")
 Recon_BRDM_section_R1 = SPAWN:NewWithAlias("_ON_DEMAND_1: Recon_BRDM_section", "Range1 Target4")
 Recon_STRYKER_vehicle_R1 = SPAWN:NewWithAlias("_ON_DEMAND_1: Recon_stryker_vehicle", "Range1 Target5")
 Recon_STRYKER_section_R1 = SPAWN:NewWithAlias("_ON_DEMAND_1: Recon_stryker_section", "Range1 Target6")
 IFV_BMP2_vehicle_R1 = SPAWN:NewWithAlias("_ON_DEMAND_2: IFV_BMP2_vehicle", "Range1 Target7" )
 IFV_BMP2_section_R1 = SPAWN:NewWithAlias("_ON_DEMAND_2: IFV_BMP2_section", "Range1 Target8")
 IFV_LAV25_vehicle_R1 = SPAWN:NewWithAlias("_ON_DEMAND_2: IFV_LAV25_vehicle", "Range1 Target9")
 IFV_LAV25_section_R1 = SPAWN:NewWithAlias("_ON_DEMAND_2: IFV_LAV25_section", "Range1 Target10")
 IFV_BRADLEY_vehicle_R1 = SPAWN:NewWithAlias("_ON_DEMAND_2: IFV_Bradley_vehicle", "Range1 Target11")
 IFV_BRADLEY_section_R1 = SPAWN:NewWithAlias("_ON_DEMAND_2: IFV_Bradley_section", "Range1 Target12")
 IFV_BMP3_vehicle_R1 = SPAWN:NewWithAlias("_ON_DEMAND_2: IFV_BMP3_vehicle", "Range1 Target13")
 IFV_BMP3_section_R1 = SPAWN:NewWithAlias("_ON_DEMAND_2: IFV_BMP3_section", "Range1 Target14")
 IFV_BTR_vehicle_R1 = SPAWN:NewWithAlias("_ON_DEMAND_2: IFV_BTR_vehicle", "Range1 Target15")
 IFV_BTR_section_R1 = SPAWN:NewWithAlias("_ON_DEMAND_2: IFV_BTR_section", "Range1 Target16")
 IFV_M113_vehicle_R1 = SPAWN:NewWithAlias("_ON_DEMAND_2: IFV_M113_vehicle", "Range1 Target17")
 IFV_M113_section_R1 = SPAWN:NewWithAlias("_ON_DEMAND_2: IFV_M113_section", "Range1 Target18")
 MBT_T72_vehicle_R1 = SPAWN:NewWithAlias("_ON_DEMAND_3: MBT_T72_vehicle", "Range1 Target19")
 MBT_T72_section_R1 = SPAWN:NewWithAlias("_ON_DEMAND_3: MBT_T72_section", "Range1 Target20")
 MBT_T80_vehicle_R1 = SPAWN:NewWithAlias("_ON_DEMAND_3: MBT_T80_vehicle", "Range1 Target21")
 MBT_T80_section_R1 = SPAWN:NewWithAlias("_ON_DEMAND_3: MBT_T80_section", "Range1 Target122")
 MBT_ABRAMS_vehicle_R1 = SPAWN:NewWithAlias("_ON_DEMAND_3: MBT_Abrams_vehicle", "Range1 Target23")
 MBT_ABRAMS_section_R1 = SPAWN:NewWithAlias("_ON_DEMAND_3: MBT_Abrams_section", "Range1 Target24")
 MBT_LEO2_vehicle_R1 = SPAWN:NewWithAlias("_ON_DEMAND_3: MBT_Leo2_vehicle", "Range1 Target25")
 MBT_LEO2_section_R1 = SPAWN:NewWithAlias("_ON_DEMAND_3: MBT_Leo2_section", "Range1 Target26")
 MISC_SHILKA_vehicle_R1 = SPAWN:NewWithAlias("_ON_DEMAND_4: Misc_Shilka_vehicle", "Range1 Target27")
 MISC_C2_vehicle_R1 = SPAWN:NewWithAlias("_ON_DEMAND_4: Misc_C2_vehicle", "Range1 Target28")
 MISC_ARTY_vehicle_R1 = SPAWN:NewWithAlias("_ON_DEMAND_4: Misc_Arty_vehicle", "Range1 Target29")
 MISC_MLRS_vehicle_R1 = SPAWN:NewWithAlias("_ON_DEMAND_4: Misc_MLRS_vehicle", "Range1 Target30")
 MISC_SA13_vehicle_R1 = SPAWN:NewWithAlias("_ON_DEMAND_4: Misc_SA-13_vehicle", "Range1 Target31")
 MISC_SA19_vehicle_R1 = SPAWN:NewWithAlias("_ON_DEMAND_4: Misc_SA-19_vehicle", "Range1 Target32")


function _ON_DEMAND_1_Recon_HMMWV_vehicle_R1 ()
  Recon_HMMWV_vehicle_R1:OnSpawnGroup(function(group)
    group:OptionDisperseOff()
  end)
  Recon_HMMWV_vehicle_R1:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR1)
end

function _ON_DEMAND_1_Recon_HMMWV_section_R1 ()
  Recon_HMMWV_section_R1:OnSpawnGroup(function(group)
    group:OptionDisperseOff()
  end)
  Recon_HMMWV_section_R1:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR1)
end

function _ON_DEMAND_1_Recon_BRDM_vehicle_R1 ()
  Recon_BRDM_vehicle_R1:OnSpawnGroup(function(group)
    group:OptionDisperseOff()
  end)
  Recon_BRDM_vehicle_R1:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR1)
end

function _ON_DEMAND_1_Recon_BRDM_section_R1 ()
  Recon_BRDM_section_R1:OnSpawnGroup(function(group)
    group:OptionDisperseOff()
  end)
  Recon_BRDM_section_R1:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR1)
end

function _ON_DEMAND_1_Recon_STRYKER_vehicle_R1 ()
  Recon_STRYKER_vehicle_R1:OnSpawnGroup(function(group)
    group:OptionDisperseOff()end)
  Recon_STRYKER_vehicle_R1:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR1)
end

 function _ON_DEMAND_1_Recon_STRYKER_section_R1 ()
Recon_STRYKER_section_R1:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
Recon_STRYKER_section_R1:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR1)
end

 function _ON_DEMAND_2_IFV_BMP2_vehicle_R1 ()
IFV_BMP2_vehicle_R1:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
IFV_BMP2_vehicle_R1:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR1)
end

 function _ON_DEMAND_2_IFV_BMP2_section_R1 ()
IFV_BMP2_section_R1:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
IFV_BMP2_section_R1:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR1)
end

 function _ON_DEMAND_2_IFV_LAV25_vehicle_R1 ()
IFV_LAV25_vehicle_R1:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
IFV_LAV25_vehicle_R1:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR1)
end

 function _ON_DEMAND_2_IFV_LAV25_section_R1 ()
IFV_LAV25_section_R1:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
IFV_LAV25_section_R1:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR1)
end

 function _ON_DEMAND_2_IFV_BRADLEY_vehicle_R1 ()
IFV_BRADLEY_vehicle_R1:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
IFV_BRADLEY_vehicle_R1:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR1)
end

 function _ON_DEMAND_2_IFV_BRADLEY_section_R1 ()
IFV_BRADLEY_section_R1:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
IFV_BRADLEY_section_R1:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR1)
end

 function _ON_DEMAND_2_IFV_BMP3_vehicle_R1 ()
IFV_BMP3_vehicle_R1:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
IFV_BMP3_vehicle_R1:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR1)
end

 function _ON_DEMAND_2_IFV_BMP3_section_R1 ()
IFV_BMP3_section_R1:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
IFV_BMP3_section_R1:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR1)
end

 function _ON_DEMAND_2_IFV_BTR_vehicle_R1 ()
IFV_BTR_vehicle_R1:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
IFV_BTR_vehicle_R1:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR1)
end

 function _ON_DEMAND_2_IFV_BTR_section_R1 ()
IFV_BTR_section_R1:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
IFV_BTR_section_R1:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR1)
end

 function _ON_DEMAND_2_IFV_M113_vehicle_R1 ()
IFV_BTR_vehicle_R1:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
IFV_BTR_vehicle_R1:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR1)
end

 function _ON_DEMAND_2_IFV_M113_section_R1 ()
IFV_BTR_section_R1:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
IFV_BTR_section_R1:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR1)
end

 function _ON_DEMAND_3_MBT_T72_vehicle_R1 ()
MBT_T72_vehicle_R1:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
MBT_T72_vehicle_R1:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR1)
end

 function _ON_DEMAND_3_MBT_T72_section_R1 ()
MBT_T72_section_R1:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
MBT_T72_section_R1:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR1)
end

 function _ON_DEMAND_3_MBT_T80_vehicle_R1 ()
MBT_T80_vehicle_R1:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
MBT_T80_vehicle_R1:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR1)
end

 function _ON_DEMAND_3_MBT_T80_section_R1 ()
MBT_T80_section_R1:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
MBT_T80_section_R1:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR1)
end

 function _ON_DEMAND_3_MBT_ABRAMS_vehicle_R1 ()
MBT_ABRAMS_vehicle_R1:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
MBT_ABRAMS_vehicle_R1:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR1)
end

 function _ON_DEMAND_3_MBT_ABRAMS_section_R1 ()
MBT_ABRAMS_section_R1:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
MBT_ABRAMS_section_R1:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR1)
end

 function _ON_DEMAND_3_MBT_LEO2_vehicle_R1 ()
MBT_LEO2_vehicle_R1:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
MBT_LEO2_vehicle_R1:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR1)
end

 function _ON_DEMAND_3_MBT_LEO2_section_R1 ()
MBT_LEO2_section_R1:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
MBT_LEO2_section_R1:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR1)
end


 function _ON_DEMAND_4_MISC_SHILKA_vehicle_R1 ()
MISC_SHILKA_vehicle_R1:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
MISC_SHILKA_vehicle_R1:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR1)
end

 function _ON_DEMAND_4_MISC_C2_vehicle_R1 ()
MISC_C2_vehicle_R1:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
MISC_C2_vehicle_R1:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR1)
end

 function _ON_DEMAND_4_MISC_ARTY_vehicle_R1 ()
MISC_ARTY_vehicle_R1:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
MISC_ARTY_vehicle_R1:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR1)
end

 function _ON_DEMAND_4_MISC_MLRS_vehicle_R1 ()
MISC_MLRS_vehicle_R1:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
MISC_MLRS_vehicle_R1:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR1)
end

 function _ON_DEMAND_4_MISC_SA13_vehicle_R1 ()
MISC_SA13_vehicle_R1:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
MISC_SA13_vehicle_R1:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR1)
end

 function _ON_DEMAND_4_MISC_SA19_vehicle_R1 ()
MISC_SA19_vehicle_R1:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
MISC_SA19_vehicle_R1:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR1)
end
-- ON DEMAND SPAWNING -- 

-- Range Menu--
if Menu_Range_Options  ~= true then 
Menu_Range_Options = MENU_MISSION:New("Range Options")
else 
end
-- Range Options --

Menu_Range_R1 = MENU_MISSION:New("Range 1", Menu_Range_Options)

spawn_menu_OD_R1 = MENU_MISSION:New("On Demand Spawning",Menu_Range_R1)
spawn_menu_OD_Recon_R1 = MENU_MISSION:New("On Demand - RECON",spawn_menu_OD_R1)
spawn_menu_OD_IFV_R1 = MENU_MISSION:New("On Demand - IFV",spawn_menu_OD_R1)
spawn_menu_OD_IFV_R1_BMP2 = MENU_MISSION:New("On Demand - IFV - BMP2",spawn_menu_OD_IFV_R1)
spawn_menu_OD_IFV_R1_LAV25 = MENU_MISSION:New("On Demand - IFV - LAV25",spawn_menu_OD_IFV_R1)
spawn_menu_OD_IFV_R1_BRADLEY = MENU_MISSION:New("On Demand - IFV - Bradley",spawn_menu_OD_IFV_R1)
spawn_menu_OD_IFV_R1_BMP3 = MENU_MISSION:New("On Demand - IFV - BMP3",spawn_menu_OD_IFV_R1)
spawn_menu_OD_IFV_R1_BTR = MENU_MISSION:New("On Demand - IFV - BTR",spawn_menu_OD_IFV_R1)
spawn_menu_OD_IFV_R1_M113 = MENU_MISSION:New("On Demand - IFV - M113",spawn_menu_OD_IFV_R1)
spawn_menu_OD_MBT_R1 = MENU_MISSION:New("On Demand - MBT",spawn_menu_OD_R1)
spawn_menu_OD_MBT_R1_T72 = MENU_MISSION:New("On Demand - MBT- T72",spawn_menu_OD_MBT_R1)
spawn_menu_OD_MBT_R1_T80 = MENU_MISSION:New("On Demand - MBT -T80",spawn_menu_OD_MBT_R1)
spawn_menu_OD_MBT_R1_ABRAMS = MENU_MISSION:New("On Demand - MBT - Abrams",spawn_menu_OD_MBT_R1)
spawn_menu_OD_MBT_R1_LEO2 = MENU_MISSION:New("On Demand - MBT - Leopard2",spawn_menu_OD_MBT_R1)
spawn_menu_OD_MISC_R1 = MENU_MISSION:New("On Demand - MISC",spawn_menu_OD_R1)   

-- ON DEMAND SPAWNING -- 


local menu_ON_DEMAND_1_Recon_HMMWV_vehicle_R1 = MENU_MISSION_COMMAND:New("Spawn Recon HMMWV Vehicle",spawn_menu_OD_Recon_R1,_ON_DEMAND_1_Recon_HMMWV_vehicle_R1)
local menu_ON_DEMAND_1_Recon_HMMWV_section_R1 = MENU_MISSION_COMMAND:New("Spawn Recon HMMWV Section",spawn_menu_OD_Recon_R1,_ON_DEMAND_1_Recon_HMMWV_section_R1)
local menu_ON_DEMAND_1_Recon_BRDM_vehicle_R1 = MENU_MISSION_COMMAND:New("Spawn Recon BRDM Vehicle",spawn_menu_OD_Recon_R1,_ON_DEMAND_1_Recon_BRDM_vehicle_R1)
local menu_ON_DEMAND_1_Recon_BRDM_section_R1 = MENU_MISSION_COMMAND:New("Spawn Recon BRDM Section",spawn_menu_OD_Recon_R1,_ON_DEMAND_1_Recon_BRDM_section_R1)
local menu_ON_DEMAND_1_Recon_STRYKER_vehicle_R1 = MENU_MISSION_COMMAND:New("Spawn Recon STRYKER Vehicle",spawn_menu_OD_Recon_R1,_ON_DEMAND_1_Recon_STRYKER_vehicle_R1)
local menu_ON_DEMAND_1_Recon_STRYKER_section_R1 = MENU_MISSION_COMMAND:New("Spawn Recon STRYKER Section",spawn_menu_OD_Recon_R1,_ON_DEMAND_1_Recon_STRYKER_section_R1)

local menu_ON_DEMAND_2_IFV_BMP2_vehicle_R1 = MENU_MISSION_COMMAND:New("Spawn IFV BMP2 Vehicle",spawn_menu_OD_IFV_R1_BMP2,_ON_DEMAND_2_IFV_BMP2_vehicle_R1)
local menu_ON_DEMAND_2_IFV_BMP2_section_R1 = MENU_MISSION_COMMAND:New("Spawn IFV BMP2 Section",spawn_menu_OD_IFV_R1_BMP2,_ON_DEMAND_2_IFV_BMP2_section_R1)
local menu_ON_DEMAND_2_IFV_LAV25_vehicle_R1 = MENU_MISSION_COMMAND:New("Spawn IFV LAV25 Vehicle",spawn_menu_OD_IFV_R1_LAV25,_ON_DEMAND_2_IFV_LAV25_vehicle_R1)
local menu_ON_DEMAND_2_IFV_LAV25_section_R1 = MENU_MISSION_COMMAND:New("Spawn IFV LAV25 Section",spawn_menu_OD_IFV_R1_LAV25,_ON_DEMAND_2_IFV_LAV25_section_R1)
local menu_ON_DEMAND_2_IFV_BRADLEY_vehicle_R1 = MENU_MISSION_COMMAND:New("Spawn IFV BRADLEY Vehicle",spawn_menu_OD_IFV_R1_BRADLEY,_ON_DEMAND_2_IFV_BRADLEY_vehicle_R1)
local menu_ON_DEMAND_2_IFV_BRADLEY_section_R1 = MENU_MISSION_COMMAND:New("Spawn IFV BRADLEY Section",spawn_menu_OD_IFV_R1_BRADLEY,_ON_DEMAND_2_IFV_BRADLEY_section_R1)
local menu_ON_DEMAND_2_IFV_BMP3_vehicle_R1 = MENU_MISSION_COMMAND:New("Spawn IFV BMP3 Vehicle",spawn_menu_OD_IFV_R1_BMP3,_ON_DEMAND_2_IFV_BMP3_vehicle_R1)
local menu_ON_DEMAND_2_IFV_BMP3_section_R1 = MENU_MISSION_COMMAND:New("Spawn IFV BMP3 Section",spawn_menu_OD_IFV_R1_BMP3,_ON_DEMAND_2_IFV_BMP3_section_R1)
local menu_ON_DEMAND_2_IFV_BTR_vehicle_R1 = MENU_MISSION_COMMAND:New("Spawn IFV BTR Vehicle",spawn_menu_OD_IFV_R1_BTR,_ON_DEMAND_2_IFV_BTR_vehicle_R1)
local menu_ON_DEMAND_2_IFV_BTR_section_R1 = MENU_MISSION_COMMAND:New("Spawn IFV BTR Section",spawn_menu_OD_IFV_R1_BTR,_ON_DEMAND_2_IFV_BTR_section_R1)
local menu_ON_DEMAND_2_IFV_M113_vehicle_R1 = MENU_MISSION_COMMAND:New("Spawn IFV M113 Vehicle",spawn_menu_OD_IFV_R1_M113,_ON_DEMAND_2_IFV_M113_vehicle_R1)
local menu_ON_DEMAND_2_IFV_M113_section_R1 = MENU_MISSION_COMMAND:New("Spawn IFV M113 Section",spawn_menu_OD_IFV_R1_M113,_ON_DEMAND_2_IFV_M113_section_R1)

local menu_ON_DEMAND_3_MBT_T72_vehicle_R1 = MENU_MISSION_COMMAND:New("Spawn MBT T72 Vehicle",spawn_menu_OD_MBT_R1_T72,_ON_DEMAND_3_MBT_T72_vehicle_R1)
local menu_ON_DEMAND_3_MBT_T72_section_R1 = MENU_MISSION_COMMAND:New("Spawn MBT T72 Section",spawn_menu_OD_MBT_R1_T72,_ON_DEMAND_3_MBT_T72_section_R1)
local menu_ON_DEMAND_3_MBT_T80_vehicle_R1 = MENU_MISSION_COMMAND:New("Spawn MBT T80 Vehicle",spawn_menu_OD_MBT_R1_T80,_ON_DEMAND_3_MBT_T80_vehicle_R1)
local menu_ON_DEMAND_3_MBT_T80_section_R1 = MENU_MISSION_COMMAND:New("Spawn MBT T80 Section",spawn_menu_OD_MBT_R1_T80,_ON_DEMAND_3_MBT_T80_section_R1)
local menu_ON_DEMAND_3_MBT_ABRAMS_vehicle_R1 = MENU_MISSION_COMMAND:New("Spawn MBT ABRAMS Vehicle",spawn_menu_OD_MBT_R1_ABRAMS,_ON_DEMAND_3_MBT_ABRAMS_vehicle_R1)
local menu_ON_DEMAND_3_MBT_ABRAMS_section_R1 = MENU_MISSION_COMMAND:New("Spawn MBT ABRAMS Section",spawn_menu_OD_MBT_R1_ABRAMS,_ON_DEMAND_3_MBT_ABRAMS_section_R1)
local menu_ON_DEMAND_3_MBT_LEO2_vehicle_R1 = MENU_MISSION_COMMAND:New("Spawn MBT Leopard2 Vehicle",spawn_menu_OD_MBT_R1_LEO2,_ON_DEMAND_3_MBT_LEO2_vehicle_R1)
local menu_ON_DEMAND_3_MBT_LEO2_section_R1 = MENU_MISSION_COMMAND:New("Spawn MBT Leopard2 Section",spawn_menu_OD_MBT_R1_LEO2,_ON_DEMAND_3_MBT_LEO2_section_R1)

local menu_ON_DEMAND_4_MISC_SHILKA_vehicle_R1 = MENU_MISSION_COMMAND:New("Spawn SHILKA Vehicle",spawn_menu_OD_MISC_R1,_ON_DEMAND_4_MISC_SHILKA_vehicle_R1)
local menu_ON_DEMAND_4_MISC_C2_vehicle_R1 = MENU_MISSION_COMMAND:New("Spawn C2 Vehicle",spawn_menu_OD_MISC_R1,_ON_DEMAND_4_MISC_C2_vehicle_R1)
local menu_ON_DEMAND_4_MISC_ARTY_vehicle_R1 = MENU_MISSION_COMMAND:New("Spawn Artillery Vehicle",spawn_menu_OD_MISC_R1,_ON_DEMAND_4_MISC_ARTY_vehicle_R1)
local menu_ON_DEMAND_4_MISC_MLRS_vehicle_R1 = MENU_MISSION_COMMAND:New("Spawn MLRS Vehicle",spawn_menu_OD_MISC_R1,_ON_DEMAND_4_MISC_MLRS_vehicle_R1)
local menu_ON_DEMAND_4_MISC_SA13_vehicle_R1 = MENU_MISSION_COMMAND:New("Spawn SA13 Vehicle",spawn_menu_OD_MISC_R1,_ON_DEMAND_4_MISC_SA13_vehicle_R1)
local menu_ON_DEMAND_4_MISC_SA19_vehicle_R1 = MENU_MISSION_COMMAND:New("Spawn SA19 Vehicle",spawn_menu_OD_MISC_R1,_ON_DEMAND_4_MISC_SA19_vehicle_R1)



-- Range Auto Setup -- 

-- RED TABLE
T1_1_table_red_recon = { "Template 8.3: Recon platoon", "Template 8.2: Recon section", "Template 8.1: Recon vehicle" } -- table for the red recon
T1_1_table_red_IFV = { "Template 9.3: IFV platoon", "Template 9.2: IFV section", "Template 9.1: IFV vehicle" } -- table for the red IFV
T1_1_table_red_MBT = { "Template 10.3: MBT platoon", "Template 10.2: MBT section", "Template 10.1: MBT vehicle" } -- table for the red MBT
T1_1_table_red_AAA = { "Template 11.1: AAA vehicle", "Template 11.2 AAA vehicle on Ural", "Template 11.3 AAA vehicle with support", "Template 12.1: SA-13 vehicle" } -- table for the red AAA
T1_1_table_red_misc = { "Template 13.1: logistics vehicle", "Template 13.2: logistics section", "Template 14.1: C2 vehicle", "Template 15.1: Artillery vehicle", "Template 15.2: Artillery section" } -- table for the red misc
-- RED TABLE


-- BLUE Table
T1_1_table_blue_recon = { "Template 1.1: Recon vehicle", "Template 1.2: Recon section", "Template 1.3: Recon platoon" } -- table for the blue recon
T1_1_table_blue_IFV = { "Template 2.1: IFV vehicle", "Template 2.2: IFV section", "Template 2.3: IFV platoon" } -- table for the blue IFV
T1_1_table_blue_MBT = { "Template 3.1: MBT vehicle", "Template 3.2: MBT section", "Template 3.3: MBT platoon" } -- table for the blue MBT 
-- BLUE Table

function SpawnTargets_T1_1 ()
-- RED Spawners
-- RED Spawners
T1_1_red_recon = SPAWN:NewWithAlias("T1_1_red_recon", "Range1 Target33"):InitRandomizeTemplate(T1_1_table_red_recon):InitRandomizeRoute(3,0,100):Spawn()  
T1_1_red_recon:OptionDisperseOff()
T1_1_red_IFV = SPAWN:NewWithAlias("T1_1_red_IFV", "Range1 Target34"):InitRandomizeTemplate(T1_1_table_red_IFV):InitRandomizeRoute(3,0,100):Spawn()
T1_1_red_IFV:OptionDisperseOff()
T1_1_red_MBT = SPAWN:NewWithAlias("T1_1_red_MBT", "Range1 Target35"):InitRandomizeTemplate(T1_1_table_red_MBT):InitRandomizeRoute(3,0,100):Spawn()
T1_1_red_MBT:OptionDisperseOff()
T1_1_red_AAA = SPAWN:NewWithAlias("T1_1_red_AAA", "Range1 Target336"):InitRandomizeTemplate(T1_1_table_red_AAA):InitRandomizeRoute(3,0,100):Spawn()
T1_1_red_AAA:OptionDisperseOff()
T1_1_red_misc = SPAWN:NewWithAlias("T1_1_red_misc", "Range1 Target37"):InitRandomizeTemplate(T1_1_table_red_misc):InitRandomizeRoute(3,0,100):Spawn()
T1_1_red_misc:OptionDisperseOff()
-- RED Spawners

-- BLUE Spawners
T1_1_blue_recon = SPAWN:NewWithAlias("T1_1_blue_recon", "Range1 Target38"):InitRandomizeTemplate(T1_1_table_blue_recon):InitRandomizeRoute(3,0,100):Spawn()
T1_1_blue_IFV = SPAWN:NewWithAlias("T1_1_blue_IFV", "Range1 Target39"):InitRandomizeTemplate(T1_1_table_blue_IFV):InitRandomizeRoute(3,0,100):Spawn()
T1_1_blue_MBT = SPAWN:NewWithAlias("T1_1_blue_MBT", "Range1 Target40"):InitRandomizeTemplate(T1_1_table_blue_MBT):InitRandomizeRoute(3,0,100):Spawn()
T1_1_blue_recon:OptionDisperseOff()
T1_1_blue_IFV:OptionDisperseOff()
T1_1_blue_MBT:OptionDisperseOff()
-- BLUE Spawners
spawn_menu_T1_1:Remove()
end

function SpawnTargets_T1_2 ()
-- RED Spawners
T1_2_red_recon = SPAWN:NewWithAlias("T1_2_red_recon", "Range1 Target41"):InitRandomizeTemplate(T1_1_table_red_recon):InitRandomizeRoute(3,0,100):Spawn()  
T1_2_red_IFV = SPAWN:NewWithAlias("T1_2_red_IFV", "Range1 Target42"):InitRandomizeTemplate(T1_1_table_red_IFV):InitRandomizeRoute(3,0,100):Spawn()
T1_2_red_MBT = SPAWN:NewWithAlias("T1_2_red_MBT", "Range1 Target43"):InitRandomizeTemplate(T1_1_table_red_MBT):InitRandomizeRoute(3,0,100):Spawn()
T1_2_red_AAA = SPAWN:NewWithAlias("T1_2_red_AAA", "Range1 Target44"):InitRandomizeTemplate(T1_1_table_red_AAA):InitRandomizeRoute(3,0,100):Spawn()
T1_2_red_misc = SPAWN:NewWithAlias("T1_2_red_misc", "Range1 Target45"):InitRandomizeTemplate(T1_1_table_red_misc):InitRandomizeRoute(3,0,100):Spawn()
T1_2_red_recon:OptionDisperseOff()  
T1_2_red_IFV:OptionDisperseOff()
T1_2_red_MBT:OptionDisperseOff()
T1_2_red_AAA:OptionDisperseOff()
T1_2_red_misc:OptionDisperseOff()
-- RED Spawners
-- BLUE Spawners
T1_2_blue_recon = SPAWN:NewWithAlias("T1_2_blue_recon", "Range1 Target46"):InitRandomizeTemplate(T1_1_table_blue_recon):InitRandomizeRoute(3,0,100):Spawn()
T1_2_blue_IFV = SPAWN:NewWithAlias("T1_2_blue_IFV", "Range1 Target47"):InitRandomizeTemplate(T1_1_table_blue_IFV):InitRandomizeRoute(3,0,100):Spawn()
T1_2_blue_MBT = SPAWN:NewWithAlias("T1_2_blue_MBT", "Range1 Target48"):InitRandomizeTemplate(T1_1_table_blue_MBT):InitRandomizeRoute(3,0,100):Spawn()
T1_2_blue_recon:OptionDisperseOff()
T1_2_blue_IFV:OptionDisperseOff()
T1_2_blue_MBT:OptionDisperseOff()
-- BLUE Spawners
spawn_menu_T1_2:Remove()
end

spawn_menu_T1_1 = MENU_MISSION_COMMAND:New("Set up Range 1.1 dynamically",Menu_Range_R1,SpawnTargets_T1_1)
spawn_menu_T1_2 = MENU_MISSION_COMMAND:New("Set up Range 1.2 dynamically",Menu_Range_R1,SpawnTargets_T1_2)

-- Range Auto Setup -- 

-- move targets 

Range1_Groups_movetimer = 5 -- time in MINUTES for randomized movement
Range1_Groups_RandomFaktor = 0.5 -- Timer above ranomize Faktor
Range1_Groups_Distance_Min = 50 -- min Distance in Meters for randomized movement
Range1_Groups_Distance_Max = 300 -- max Distance in Meters for randomized movement



function moveRange1Groups()

Range1_Groups:ForEachGroupAlive(function (move)

-- Get the current coordinate of GroundGroup
local FromCoord = move:GetCoordinate()


-- From the current coordinate, calculate a random vector 100m-1000m away with an random angle.
local ToCoord = FromCoord:Translate( math.random(Range1_Groups_Distance_Min,Range1_Groups_Distance_Max), math.random(1,360) )
move:RouteGroundTo(ToCoord,20,5)

end)
end
-- move targets


Range1_Groups_movetimer = 5 -- time in MINUTES for randomized movement
Range1_Groups_RandomFaktor = 0.5 -- Timer above ranomize Faktor
Range1_Groups_Distance_Min = 50 -- min Distance in Meters for randomized movement
Range1_Groups_Distance_Max = 300 -- max Distance in Meters for randomized movement




-- move targets_periodically 
function moveRange1Groups_periodically_start()
  spawn_menu_OD_Range1_MoveODSpawns_periodically_stop = MENU_MISSION_COMMAND:New("Disable Spawned Group changing Position every " ..Range1_Groups_movetimer.."Minutes",Menu_Range_R1,moveRange1Groups_periodically_stop)
  spawn_menu_OD_Range1_MoveODSpawns_periodically_start:Remove()
  Range1_PositionChange =
    SCHEDULER:New(nil,function ()
      Range1_Groups:ForEachGroupAlive(function (move)
        -- Get the current coordinate of GroundGroup
        local FromCoord = move:GetCoordinate()
        -- From the current coordinate, calculate a random vector 100m-1000m away with an random angle.
        local ToCoord = FromCoord:Translate( math.random(Range1_Groups_Distance_Min,Range1_Groups_Distance_Max), math.random(1,360) )
        move:RouteGroundTo(ToCoord,20,5)
      end)
    end,{},5,Range1_Groups_movetimer*60,Range1_Groups_RandomFaktor)
end

function moveRange1Groups_periodically_stop()
spawn_menu_OD_Range1_MoveODSpawns_periodically_stop:Remove()
spawn_menu_OD_Range1_MoveODSpawns_periodically_start = MENU_MISSION_COMMAND:New("Spawned Groups Change Position every 5 Minutes",Menu_Range_R1,moveRange1Groups_periodically_start)
Range1_PositionChange:Stop()
end

spawn_menu_OD_Range1_MoveODSpawns = MENU_MISSION_COMMAND:New("Move Positions of Spawned Groups",Menu_Range_R1,moveRange1Groups)
spawn_menu_OD_Range1_MoveODSpawns_periodically_start = MENU_MISSION_COMMAND:New("Spawned Groups Change Position every 5 Minutes",Menu_Range_R1,moveRange1Groups_periodically_start)

-- move targets_periodically







  
