--- Range 2B.4 South ---

-- ON DEMAND SPAWNING -- 
BlueSpawnerR2B_SOUTH = UNIT:FindByName("BlueInfantryR2B_SOUTH")
RedSpawnerR2B_SOUTH = UNIT:FindByName("REDInfantryR2B_SOUTH")

local Recon_HMMWV_vehicle_R2B_SOUTH = SPAWN:New("_ON_DEMAND_1: Recon_HMMWV_vehicle")
local Recon_HMMWV_section_R2B_SOUTH = SPAWN:New("_ON_DEMAND_1: Recon_HMMWV_section")
local Recon_BRDM_vehicle_R2B_SOUTH = SPAWN:New("_ON_DEMAND_1: Recon_BRDM_vehicle")
local Recon_BRDM_section_R2B_SOUTH = SPAWN:New("_ON_DEMAND_1: Recon_BRDM_section")
local Recon_STRYKER_vehicle_R2B_SOUTH = SPAWN:New("_ON_DEMAND_1: Recon_stryker_vehicle")
local Recon_STRYKER_section_R2B_SOUTH = SPAWN:New("_ON_DEMAND_1: Recon_stryker_section")

local IFV_BMP2_vehicle_R2B_SOUTH = SPAWN:New("_ON_DEMAND_2: IFV_BMP2_vehicle")
local IFV_BMP2_section_R2B_SOUTH = SPAWN:New("_ON_DEMAND_2: IFV_BMP2_section")
local IFV_LAV25_vehicle_R2B_SOUTH = SPAWN:New("_ON_DEMAND_2: IFV_LAV25_vehicle")
local IFV_LAV25_section_R2B_SOUTH = SPAWN:New("_ON_DEMAND_2: IFV_LAV25_section")
local IFV_BRADLEY_vehicle_R2B_SOUTH = SPAWN:New("_ON_DEMAND_2: IFV_Bradley_vehicle")
local IFV_BRADLEY_section_R2B_SOUTH = SPAWN:New("_ON_DEMAND_2: IFV_Bradley_section")
local IFV_BMP3_vehicle_R2B_SOUTH = SPAWN:New("_ON_DEMAND_2: IFV_BMP3_vehicle")
local IFV_BMP3_section_R2B_SOUTH = SPAWN:New("_ON_DEMAND_2: IFV_BMP3_section")
local IFV_BTR_vehicle_R2B_SOUTH = SPAWN:New("_ON_DEMAND_2: IFV_BTR_vehicle")
local IFV_BTR_section_R2B_SOUTH = SPAWN:New("_ON_DEMAND_2: IFV_BTR_section")
local IFV_M113_vehicle_R2B_SOUTH = SPAWN:New("_ON_DEMAND_2: IFV_M113_vehicle")
local IFV_M113_section_R2B_SOUTH = SPAWN:New("_ON_DEMAND_2: IFV_M113_section")


local MBT_T72_vehicle_R2B_SOUTH = SPAWN:New("_ON_DEMAND_3: MBT_T72_vehicle")
local MBT_T72_section_R2B_SOUTH = SPAWN:New("_ON_DEMAND_3: MBT_T72_section")
local MBT_T80_vehicle_R2B_SOUTH = SPAWN:New("_ON_DEMAND_3: MBT_T80_vehicle")
local MBT_T80_section_R2B_SOUTH = SPAWN:New("_ON_DEMAND_3: MBT_T80_section")
local MBT_ABRAMS_vehicle_R2B_SOUTH = SPAWN:New("_ON_DEMAND_3: MBT_Abrams_vehicle")
local MBT_ABRAMS_section_R2B_SOUTH = SPAWN:New("_ON_DEMAND_3: MBT_Abrams_section")
local MBT_LEO2_vehicle_R2B_SOUTH = SPAWN:New("_ON_DEMAND_3: MBT_Leo2_vehicle")
local MBT_LEO2_section_R2B_SOUTH = SPAWN:New("_ON_DEMAND_3: MBT_Leo2_section")

local MISC_SHILKA_vehicle_R2B_SOUTH = SPAWN:New("_ON_DEMAND_4: Misc_Shilka_vehicle")
local MISC_C2_vehicle_R2B_SOUTH = SPAWN:New("_ON_DEMAND_4: Misc_C2_vehicle")
local MISC_ARTY_vehicle_R2B_SOUTH = SPAWN:New("_ON_DEMAND_4: Misc_Arty_vehicle")
local MISC_MLRS_vehicle_R2B_SOUTH = SPAWN:New("_ON_DEMAND_4: Misc_MLRS_vehicle")
local MISC_SA13_vehicle_R2B_SOUTH = SPAWN:New("_ON_DEMAND_4: Misc_SA-13_vehicle")
local MISC_SA19_vehicle_R2B_SOUTH = SPAWN:New("_ON_DEMAND_4: Misc_SA-19_vehicle")


local function _ON_DEMAND_1_Recon_HMMWV_vehicle_R2B_SOUTH ()
Recon_HMMWV_vehicle_R2B_SOUTH:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR2B_SOUTH)
end
local function _ON_DEMAND_1_Recon_HMMWV_section_R2B_SOUTH ()
Recon_HMMWV_section_R2B_SOUTH:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR2B_SOUTH)
end
local function _ON_DEMAND_1_Recon_BRDM_vehicle_R2B_SOUTH ()
Recon_BRDM_vehicle_R2B_SOUTH:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR2B_SOUTH)
end
local function _ON_DEMAND_1_Recon_BRDM_section_R2B_SOUTH ()
Recon_BRDM_section_R2B_SOUTH:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR2B_SOUTH)
end
local function _ON_DEMAND_1_Recon_STRYKER_vehicle_R2B_SOUTH ()
Recon_STRYKER_vehicle_R2B_SOUTH:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR2B_SOUTH)
end
local function _ON_DEMAND_1_Recon_STRYKER_section_R2B_SOUTH ()
Recon_STRYKER_section_R2B_SOUTH:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR2B_SOUTH)
end

local function _ON_DEMAND_2_IFV_BMP2_vehicle_R2B_SOUTH ()
IFV_BMP2_vehicle_R2B_SOUTH:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR2B_SOUTH)
end
local function _ON_DEMAND_2_IFV_BMP2_section_R2B_SOUTH ()
IFV_BMP2_section_R2B_SOUTH:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR2B_SOUTH)
end
local function _ON_DEMAND_2_IFV_LAV25_vehicle_R2B_SOUTH ()
IFV_LAV25_vehicle_R2B_SOUTH:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR2B_SOUTH)
end
local function _ON_DEMAND_2_IFV_LAV25_section_R2B_SOUTH ()
IFV_LAV25_section_R2B_SOUTH:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR2B_SOUTH)
end
local function _ON_DEMAND_2_IFV_BRADLEY_vehicle_R2B_SOUTH ()
IFV_BRADLEY_vehicle_R2B_SOUTH:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR2B_SOUTH)
end
local function _ON_DEMAND_2_IFV_BRADLEY_section_R2B_SOUTH ()
IFV_BRADLEY_section_R2B_SOUTH:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR2B_SOUTH)
end
local function _ON_DEMAND_2_IFV_BMP3_vehicle_R2B_SOUTH ()
IFV_BMP3_vehicle_R2B_SOUTH:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR2B_SOUTH)
end
local function _ON_DEMAND_2_IFV_BMP3_section_R2B_SOUTH ()
IFV_BMP3_section_R2B_SOUTH:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR2B_SOUTH)
end
local function _ON_DEMAND_2_IFV_BTR_vehicle_R2B_SOUTH ()
IFV_BTR_vehicle_R2B_SOUTH:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR2B_SOUTH)
end
local function _ON_DEMAND_2_IFV_BTR_section_R2B_SOUTH ()
IFV_BTR_section_R2B_SOUTH:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR2B_SOUTH)
end
local function _ON_DEMAND_2_IFV_M113_vehicle_R2B_SOUTH ()
IFV_BTR_vehicle_R2B_SOUTH:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR2B_SOUTH)
end
local function _ON_DEMAND_2_IFV_M113_section_R2B_SOUTH ()
IFV_BTR_section_R2B_SOUTH:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR2B_SOUTH)
end

local function _ON_DEMAND_3_MBT_T72_vehicle_R2B_SOUTH ()
MBT_T72_vehicle_R2B_SOUTH:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR2B_SOUTH)
end
local function _ON_DEMAND_3_MBT_T72_section_R2B_SOUTH ()
MBT_T72_section_R2B_SOUTH:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR2B_SOUTH)
end
local function _ON_DEMAND_3_MBT_T80_vehicle_R2B_SOUTH ()
MBT_T80_vehicle_R2B_SOUTH:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR2B_SOUTH)
end
local function _ON_DEMAND_3_MBT_T80_section_R2B_SOUTH ()
MBT_T80_section_R2B_SOUTH:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR2B_SOUTH)
end
local function _ON_DEMAND_3_MBT_ABRAMS_vehicle_R2B_SOUTH ()
MBT_ABRAMS_vehicle_R2B_SOUTH:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR2B_SOUTH)
end
local function _ON_DEMAND_3_MBT_ABRAMS_section_R2B_SOUTH ()
MBT_ABRAMS_section_R2B_SOUTH:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR2B_SOUTH)
end
local function _ON_DEMAND_3_MBT_LEO2_vehicle_R2B_SOUTH ()
MBT_LEO2_vehicle_R2B_SOUTH:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR2B_SOUTH)
end
local function _ON_DEMAND_3_MBT_LEO2_section_R2B_SOUTH ()
MBT_LEO2_section_R2B_SOUTH:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR2B_SOUTH)
end

local function _ON_DEMAND_4_MISC_SHILKA_vehicle_R2B_SOUTH ()
MISC_SHILKA_vehicle_R2B_SOUTH:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR2B_SOUTH)
end
local function _ON_DEMAND_4_MISC_C2_vehicle_R2B_SOUTH ()
MISC_C2_vehicle_R2B_SOUTH:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR2B_SOUTH)
end
local function _ON_DEMAND_4_MISC_ARTY_vehicle_R2B_SOUTH ()
MISC_ARTY_vehicle_R2B_SOUTH:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR2B_SOUTH)
end
local function _ON_DEMAND_4_MISC_MLRS_vehicle_R2B_SOUTH ()
MISC_MLRS_vehicle_R2B_SOUTH:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR2B_SOUTH)
end
local function _ON_DEMAND_4_MISC_SA13_vehicle_R2B_SOUTH ()
MISC_SA13_vehicle_R2B_SOUTH:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR2B_SOUTH)
end
local function _ON_DEMAND_4_MISC_SA19_vehicle_R2B_SOUTH ()
MISC_SA19_vehicle_R2B_SOUTH:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR2B_SOUTH)
end
-- ON DEMAND SPAWNING -- 

Menu_Range_R2B_SOUTH = MENU_MISSION:New("Range 2B.4", Menu_Range_Options)
spawn_menu_OD_R2B_SOUTH = MENU_MISSION:New("On Demand Spawning",Menu_Range_R2B_SOUTH)
spawn_menu_OD_Recon_R2B_SOUTH = MENU_MISSION:New("On Demand - RECON",spawn_menu_OD_R2B_SOUTH)
spawn_menu_OD_IFV_R2B_SOUTH = MENU_MISSION:New("On Demand - IFV",spawn_menu_OD_R2B_SOUTH)
spawn_menu_OD_IFV_R2B_SOUTH_BMP2 = MENU_MISSION:New("On Demand - IFV - BMP2",spawn_menu_OD_IFV_R2B_SOUTH)
spawn_menu_OD_IFV_R2B_SOUTH_LAV25 = MENU_MISSION:New("On Demand - IFV - LAV25",spawn_menu_OD_IFV_R2B_SOUTH)
spawn_menu_OD_IFV_R2B_SOUTH_BRADLEY = MENU_MISSION:New("On Demand - IFV - Bradley",spawn_menu_OD_IFV_R2B_SOUTH)
spawn_menu_OD_IFV_R2B_SOUTH_BMP3 = MENU_MISSION:New("On Demand - IFV - BMP3",spawn_menu_OD_IFV_R2B_SOUTH)
spawn_menu_OD_IFV_R2B_SOUTH_BTR = MENU_MISSION:New("On Demand - IFV - BTR",spawn_menu_OD_IFV_R2B_SOUTH)
spawn_menu_OD_IFV_R2B_SOUTH_M113 = MENU_MISSION:New("On Demand - IFV - M113",spawn_menu_OD_IFV_R2B_SOUTH)
spawn_menu_OD_MBT_R2B_SOUTH = MENU_MISSION:New("On Demand - MBT",spawn_menu_OD_R2B_SOUTH)
spawn_menu_OD_MBT_R2B_SOUTH_T72 = MENU_MISSION:New("On Demand - MBT- T72",spawn_menu_OD_MBT_R2B_SOUTH)
spawn_menu_OD_MBT_R2B_SOUTH_T80 = MENU_MISSION:New("On Demand - MBT -T80",spawn_menu_OD_MBT_R2B_SOUTH)
spawn_menu_OD_MBT_R2B_SOUTH_ABRAMS = MENU_MISSION:New("On Demand - MBT - Abrams",spawn_menu_OD_MBT_R2B_SOUTH)
spawn_menu_OD_MBT_R2B_SOUTH_LEO2 = MENU_MISSION:New("On Demand - MBT - Leopard2",spawn_menu_OD_MBT_R2B_SOUTH)
spawn_menu_OD_MISC_R2B_SOUTH = MENU_MISSION:New("On Demand - MISC",spawn_menu_OD_R2B_SOUTH)   



local menu_ON_DEMAND_1_Recon_HMMWV_vehicle_R2B_SOUTH = MENU_MISSION_COMMAND:New("Spawn Recon HMMWV Vehicle",spawn_menu_OD_Recon_R2B_SOUTH,_ON_DEMAND_1_Recon_HMMWV_vehicle_R2B_SOUTH)
local menu_ON_DEMAND_1_Recon_HMMWV_section_R2B_SOUTH = MENU_MISSION_COMMAND:New("Spawn Recon HMMWV Section",spawn_menu_OD_Recon_R2B_SOUTH,_ON_DEMAND_1_Recon_HMMWV_section_R2B_SOUTH)
local menu_ON_DEMAND_1_Recon_BRDM_vehicle_R2B_SOUTH = MENU_MISSION_COMMAND:New("Spawn Recon BRDM Vehicle",spawn_menu_OD_Recon_R2B_SOUTH,_ON_DEMAND_1_Recon_BRDM_vehicle_R2B_SOUTH)
local menu_ON_DEMAND_1_Recon_BRDM_section_R2B_SOUTH = MENU_MISSION_COMMAND:New("Spawn Recon BRDM Section",spawn_menu_OD_Recon_R2B_SOUTH,_ON_DEMAND_1_Recon_BRDM_section_R2B_SOUTH)
local menu_ON_DEMAND_1_Recon_STRYKER_vehicle_R2B_SOUTH = MENU_MISSION_COMMAND:New("Spawn Recon STRYKER Vehicle",spawn_menu_OD_Recon_R2B_SOUTH,_ON_DEMAND_1_Recon_STRYKER_vehicle_R2B_SOUTH)
local menu_ON_DEMAND_1_Recon_STRYKER_section_R2B_SOUTH = MENU_MISSION_COMMAND:New("Spawn Recon STRYKER Section",spawn_menu_OD_Recon_R2B_SOUTH,_ON_DEMAND_1_Recon_STRYKER_section_R2B_SOUTH)

local menu_ON_DEMAND_2_IFV_BMP2_vehicle_R2B_SOUTH = MENU_MISSION_COMMAND:New("Spawn IFV BMP2 Vehicle",spawn_menu_OD_IFV_R2B_SOUTH_BMP2,_ON_DEMAND_2_IFV_BMP2_vehicle_R2B_SOUTH)
local menu_ON_DEMAND_2_IFV_BMP2_section_R2B_SOUTH = MENU_MISSION_COMMAND:New("Spawn IFV BMP2 Section",spawn_menu_OD_IFV_R2B_SOUTH_BMP2,_ON_DEMAND_2_IFV_BMP2_section_R2B_SOUTH)
local menu_ON_DEMAND_2_IFV_LAV25_vehicle_R2B_SOUTH = MENU_MISSION_COMMAND:New("Spawn IFV LAV25 Vehicle",spawn_menu_OD_IFV_R2B_SOUTH_LAV25,_ON_DEMAND_2_IFV_LAV25_vehicle_R2B_SOUTH)
local menu_ON_DEMAND_2_IFV_LAV25_section_R2B_SOUTH = MENU_MISSION_COMMAND:New("Spawn IFV LAV25 Section",spawn_menu_OD_IFV_R2B_SOUTH_LAV25,_ON_DEMAND_2_IFV_LAV25_section_R2B_SOUTH)
local menu_ON_DEMAND_2_IFV_BRADLEY_vehicle_R2B_SOUTH = MENU_MISSION_COMMAND:New("Spawn IFV BRADLEY Vehicle",spawn_menu_OD_IFV_R2B_SOUTH_BRADLEY,_ON_DEMAND_2_IFV_BRADLEY_vehicle_R2B_SOUTH)
local menu_ON_DEMAND_2_IFV_BRADLEY_section_R2B_SOUTH = MENU_MISSION_COMMAND:New("Spawn IFV BRADLEY Section",spawn_menu_OD_IFV_R2B_SOUTH_BRADLEY,_ON_DEMAND_2_IFV_BRADLEY_section_R2B_SOUTH)
local menu_ON_DEMAND_2_IFV_BMP3_vehicle_R2B_SOUTH = MENU_MISSION_COMMAND:New("Spawn IFV BMP3 Vehicle",spawn_menu_OD_IFV_R2B_SOUTH_BMP3,_ON_DEMAND_2_IFV_BMP3_vehicle_R2B_SOUTH)
local menu_ON_DEMAND_2_IFV_BMP3_section_R2B_SOUTH = MENU_MISSION_COMMAND:New("Spawn IFV BMP3 Section",spawn_menu_OD_IFV_R2B_SOUTH_BMP3,_ON_DEMAND_2_IFV_BMP3_section_R2B_SOUTH)
local menu_ON_DEMAND_2_IFV_BTR_vehicle_R2B_SOUTH = MENU_MISSION_COMMAND:New("Spawn IFV BTR Vehicle",spawn_menu_OD_IFV_R2B_SOUTH_BTR,_ON_DEMAND_2_IFV_BTR_vehicle_R2B_SOUTH)
local menu_ON_DEMAND_2_IFV_BTR_section_R2B_SOUTH = MENU_MISSION_COMMAND:New("Spawn IFV BTR Section",spawn_menu_OD_IFV_R2B_SOUTH_BTR,_ON_DEMAND_2_IFV_BTR_section_R2B_SOUTH)
local menu_ON_DEMAND_2_IFV_M113_vehicle_R2B_SOUTH = MENU_MISSION_COMMAND:New("Spawn IFV M113 Vehicle",spawn_menu_OD_IFV_R2B_SOUTH_M113,_ON_DEMAND_2_IFV_M113_vehicle_R2B_SOUTH)
local menu_ON_DEMAND_2_IFV_M113_section_R2B_SOUTH = MENU_MISSION_COMMAND:New("Spawn IFV M113 Section",spawn_menu_OD_IFV_R2B_SOUTH_M113,_ON_DEMAND_2_IFV_M113_section_R2B_SOUTH)

local menu_ON_DEMAND_3_MBT_T72_vehicle_R2B_SOUTH = MENU_MISSION_COMMAND:New("Spawn MBT T72 Vehicle",spawn_menu_OD_MBT_R2B_SOUTH_T72,_ON_DEMAND_3_MBT_T72_vehicle_R2B_SOUTH)
local menu_ON_DEMAND_3_MBT_T72_section_R2B_SOUTH = MENU_MISSION_COMMAND:New("Spawn MBT T72 Section",spawn_menu_OD_MBT_R2B_SOUTH_T72,_ON_DEMAND_3_MBT_T72_section_R2B_SOUTH)
local menu_ON_DEMAND_3_MBT_T80_vehicle_R2B_SOUTH = MENU_MISSION_COMMAND:New("Spawn MBT T80 Vehicle",spawn_menu_OD_MBT_R2B_SOUTH_T80,_ON_DEMAND_3_MBT_T80_vehicle_R2B_SOUTH)
local menu_ON_DEMAND_3_MBT_T80_section_R2B_SOUTH = MENU_MISSION_COMMAND:New("Spawn MBT T80 Section",spawn_menu_OD_MBT_R2B_SOUTH_T80,_ON_DEMAND_3_MBT_T80_section_R2B_SOUTH)
local menu_ON_DEMAND_3_MBT_ABRAMS_vehicle_R2B_SOUTH = MENU_MISSION_COMMAND:New("Spawn MBT ABRAMS Vehicle",spawn_menu_OD_MBT_R2B_SOUTH_ABRAMS,_ON_DEMAND_3_MBT_ABRAMS_vehicle_R2B_SOUTH)
local menu_ON_DEMAND_3_MBT_ABRAMS_section_R2B_SOUTH = MENU_MISSION_COMMAND:New("Spawn MBT ABRAMS Section",spawn_menu_OD_MBT_R2B_SOUTH_ABRAMS,_ON_DEMAND_3_MBT_ABRAMS_section_R2B_SOUTH)
local menu_ON_DEMAND_3_MBT_LEO2_vehicle_R2B_SOUTH = MENU_MISSION_COMMAND:New("Spawn MBT Leopard2 Vehicle",spawn_menu_OD_MBT_R2B_SOUTH_LEO2,_ON_DEMAND_3_MBT_LEO2_vehicle_R2B_SOUTH)
local menu_ON_DEMAND_3_MBT_LEO2_section_R2B_SOUTH = MENU_MISSION_COMMAND:New("Spawn MBT Leopard2 Section",spawn_menu_OD_MBT_R2B_SOUTH_LEO2,_ON_DEMAND_3_MBT_LEO2_section_R2B_SOUTH)

local menu_ON_DEMAND_4_MISC_SHILKA_vehicle_R2B_SOUTH = MENU_MISSION_COMMAND:New("Spawn SHILKA Vehicle",spawn_menu_OD_MISC_R2B_SOUTH,_ON_DEMAND_4_MISC_SHILKA_vehicle_R2B_SOUTH)
local menu_ON_DEMAND_4_MISC_C2_vehicle_R2B_SOUTH = MENU_MISSION_COMMAND:New("Spawn C2 Vehicle",spawn_menu_OD_MISC_R2B_SOUTH,_ON_DEMAND_4_MISC_C2_vehicle_R2B_SOUTH)
local menu_ON_DEMAND_4_MISC_ARTY_vehicle_R2B_SOUTH = MENU_MISSION_COMMAND:New("Spawn Artillery Vehicle",spawn_menu_OD_MISC_R2B_SOUTH,_ON_DEMAND_4_MISC_ARTY_vehicle_R2B_SOUTH)
local menu_ON_DEMAND_4_MISC_MLRS_vehicle_R2B_SOUTH = MENU_MISSION_COMMAND:New("Spawn MLRS Vehicle",spawn_menu_OD_MISC_R2B_SOUTH,_ON_DEMAND_4_MISC_MLRS_vehicle_R2B_SOUTH)
local menu_ON_DEMAND_4_MISC_SA13_vehicle_R2B_SOUTH = MENU_MISSION_COMMAND:New("Spawn SA13 Vehicle",spawn_menu_OD_MISC_R2B_SOUTH,_ON_DEMAND_4_MISC_SA13_vehicle_R2B_SOUTH)
local menu_ON_DEMAND_4_MISC_SA19_vehicle_R2B_SOUTH = MENU_MISSION_COMMAND:New("Spawn SA19 Vehicle",spawn_menu_OD_MISC_R2B_SOUTH,_ON_DEMAND_4_MISC_SA19_vehicle_R2B_SOUTH)


  
