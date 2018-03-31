--- Range 2B.2 (North)---

-- ON DEMAND SPAWNING -- 
BlueSpawnerR2B = UNIT:FindByName("BlueInfantryR2B")
RedSpawnerR2B = UNIT:FindByName("REDInfantryR2B")

local Recon_HMMWV_vehicle_R2B = SPAWN:New("_ON_DEMAND_1: Recon_HMMWV_vehicle")
local Recon_HMMWV_section_R2B = SPAWN:New("_ON_DEMAND_1: Recon_HMMWV_section")
local Recon_BRDM_vehicle_R2B = SPAWN:New("_ON_DEMAND_1: Recon_BRDM_vehicle")
local Recon_BRDM_section_R2B = SPAWN:New("_ON_DEMAND_1: Recon_BRDM_section")
local Recon_STRYKER_vehicle_R2B = SPAWN:New("_ON_DEMAND_1: Recon_stryker_vehicle")
local Recon_STRYKER_section_R2B = SPAWN:New("_ON_DEMAND_1: Recon_stryker_section")

local IFV_BMP2_vehicle_R2B = SPAWN:New("_ON_DEMAND_2: IFV_BMP2_vehicle")
local IFV_BMP2_section_R2B = SPAWN:New("_ON_DEMAND_2: IFV_BMP2_section")
local IFV_LAV25_vehicle_R2B = SPAWN:New("_ON_DEMAND_2: IFV_LAV25_vehicle")
local IFV_LAV25_section_R2B = SPAWN:New("_ON_DEMAND_2: IFV_LAV25_section")
local IFV_BRADLEY_vehicle_R2B = SPAWN:New("_ON_DEMAND_2: IFV_Bradley_vehicle")
local IFV_BRADLEY_section_R2B = SPAWN:New("_ON_DEMAND_2: IFV_Bradley_section")
local IFV_BMP3_vehicle_R2B = SPAWN:New("_ON_DEMAND_2: IFV_BMP3_vehicle")
local IFV_BMP3_section_R2B = SPAWN:New("_ON_DEMAND_2: IFV_BMP3_section")
local IFV_BTR_vehicle_R2B = SPAWN:New("_ON_DEMAND_2: IFV_BTR_vehicle")
local IFV_BTR_section_R2B = SPAWN:New("_ON_DEMAND_2: IFV_BTR_section")
local IFV_M113_vehicle_R2B = SPAWN:New("_ON_DEMAND_2: IFV_M113_vehicle")
local IFV_M113_section_R2B = SPAWN:New("_ON_DEMAND_2: IFV_M113_section")


local MBT_T72_vehicle_R2B = SPAWN:New("_ON_DEMAND_3: MBT_T72_vehicle")
local MBT_T72_section_R2B = SPAWN:New("_ON_DEMAND_3: MBT_T72_section")
local MBT_T80_vehicle_R2B = SPAWN:New("_ON_DEMAND_3: MBT_T80_vehicle")
local MBT_T80_section_R2B = SPAWN:New("_ON_DEMAND_3: MBT_T80_section")
local MBT_ABRAMS_vehicle_R2B = SPAWN:New("_ON_DEMAND_3: MBT_Abrams_vehicle")
local MBT_ABRAMS_section_R2B = SPAWN:New("_ON_DEMAND_3: MBT_Abrams_section")
local MBT_LEO2_vehicle_R2B = SPAWN:New("_ON_DEMAND_3: MBT_Leo2_vehicle")
local MBT_LEO2_section_R2B = SPAWN:New("_ON_DEMAND_3: MBT_Leo2_section")

local MISC_SHILKA_vehicle_R2B = SPAWN:New("_ON_DEMAND_4: Misc_Shilka_vehicle")
local MISC_C2_vehicle_R2B = SPAWN:New("_ON_DEMAND_4: Misc_C2_vehicle")
local MISC_ARTY_vehicle_R2B = SPAWN:New("_ON_DEMAND_4: Misc_Arty_vehicle")
local MISC_MLRS_vehicle_R2B = SPAWN:New("_ON_DEMAND_4: Misc_MLRS_vehicle")
local MISC_SA13_vehicle_R2B = SPAWN:New("_ON_DEMAND_4: Misc_SA-13_vehicle")
local MISC_SA19_vehicle_R2B = SPAWN:New("_ON_DEMAND_4: Misc_SA-19_vehicle")


local function _ON_DEMAND_1_Recon_HMMWV_vehicle_R2B ()
Recon_HMMWV_vehicle_R2B:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR2B)
end
local function _ON_DEMAND_1_Recon_HMMWV_section_R2B ()
Recon_HMMWV_section_R2B:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR2B)
end
local function _ON_DEMAND_1_Recon_BRDM_vehicle_R2B ()
Recon_BRDM_vehicle_R2B:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR2B)
end
local function _ON_DEMAND_1_Recon_BRDM_section_R2B ()
Recon_BRDM_section_R2B:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR2B)
end
local function _ON_DEMAND_1_Recon_STRYKER_vehicle_R2B ()
Recon_STRYKER_vehicle_R2B:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR2B)
end
local function _ON_DEMAND_1_Recon_STRYKER_section_R2B ()
Recon_STRYKER_section_R2B:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR2B)
end

local function _ON_DEMAND_2_IFV_BMP2_vehicle_R2B ()
IFV_BMP2_vehicle_R2B:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR2B)
end
local function _ON_DEMAND_2_IFV_BMP2_section_R2B ()
IFV_BMP2_section_R2B:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR2B)
end
local function _ON_DEMAND_2_IFV_LAV25_vehicle_R2B ()
IFV_LAV25_vehicle_R2B:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR2B)
end
local function _ON_DEMAND_2_IFV_LAV25_section_R2B ()
IFV_LAV25_section_R2B:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR2B)
end
local function _ON_DEMAND_2_IFV_BRADLEY_vehicle_R2B ()
IFV_BRADLEY_vehicle_R2B:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR2B)
end
local function _ON_DEMAND_2_IFV_BRADLEY_section_R2B ()
IFV_BRADLEY_section_R2B:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR2B)
end
local function _ON_DEMAND_2_IFV_BMP3_vehicle_R2B ()
IFV_BMP3_vehicle_R2B:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR2B)
end
local function _ON_DEMAND_2_IFV_BMP3_section_R2B ()
IFV_BMP3_section_R2B:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR2B)
end
local function _ON_DEMAND_2_IFV_BTR_vehicle_R2B ()
IFV_BTR_vehicle_R2B:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR2B)
end
local function _ON_DEMAND_2_IFV_BTR_section_R2B ()
IFV_BTR_section_R2B:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR2B)
end
local function _ON_DEMAND_2_IFV_M113_vehicle_R2B ()
IFV_BTR_vehicle_R2B:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR2B)
end
local function _ON_DEMAND_2_IFV_M113_section_R2B ()
IFV_BTR_section_R2B:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR2B)
end

local function _ON_DEMAND_3_MBT_T72_vehicle_R2B ()
MBT_T72_vehicle_R2B:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR2B)
end
local function _ON_DEMAND_3_MBT_T72_section_R2B ()
MBT_T72_section_R2B:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR2B)
end
local function _ON_DEMAND_3_MBT_T80_vehicle_R2B ()
MBT_T80_vehicle_R2B:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR2B)
end
local function _ON_DEMAND_3_MBT_T80_section_R2B ()
MBT_T80_section_R2B:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR2B)
end
local function _ON_DEMAND_3_MBT_ABRAMS_vehicle_R2B ()
MBT_ABRAMS_vehicle_R2B:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR2B)
end
local function _ON_DEMAND_3_MBT_ABRAMS_section_R2B ()
MBT_ABRAMS_section_R2B:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR2B)
end
local function _ON_DEMAND_3_MBT_LEO2_vehicle_R2B ()
MBT_LEO2_vehicle_R2B:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR2B)
end
local function _ON_DEMAND_3_MBT_LEO2_section_R2B ()
MBT_LEO2_section_R2B:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR2B)
end

local function _ON_DEMAND_4_MISC_SHILKA_vehicle_R2B ()
MISC_SHILKA_vehicle_R2B:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR2B)
end
local function _ON_DEMAND_4_MISC_C2_vehicle_R2B ()
MISC_C2_vehicle_R2B:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR2B)
end
local function _ON_DEMAND_4_MISC_ARTY_vehicle_R2B ()
MISC_ARTY_vehicle_R2B:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR2B)
end
local function _ON_DEMAND_4_MISC_MLRS_vehicle_R2B ()
MISC_MLRS_vehicle_R2B:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR2B)
end
local function _ON_DEMAND_4_MISC_SA13_vehicle_R2B ()
MISC_SA13_vehicle_R2B:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR2B)
end
local function _ON_DEMAND_4_MISC_SA19_vehicle_R2B ()
MISC_SA19_vehicle_R2B:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR2B)
end
-- ON DEMAND SPAWNING -- 

Menu_Range_R2 = MENU_MISSION:New("Range 2B", Menu_Range_Options)
Menu_Range_R2B = MENU_MISSION:New("Range 2B.2", Menu_Range_R2)
spawn_menu_OD_R2B = MENU_MISSION:New("On Demand Spawning",Menu_Range_R2B)

spawn_menu_OD_Recon_R2B = MENU_MISSION:New("On Demand - RECON",spawn_menu_OD_R2B)
spawn_menu_OD_IFV_R2B = MENU_MISSION:New("On Demand - IFV",spawn_menu_OD_R2B)
spawn_menu_OD_IFV_R2B_BMP2 = MENU_MISSION:New("On Demand - IFV - BMP2",spawn_menu_OD_IFV_R2B)
spawn_menu_OD_IFV_R2B_LAV25 = MENU_MISSION:New("On Demand - IFV - LAV25",spawn_menu_OD_IFV_R2B)
spawn_menu_OD_IFV_R2B_BRADLEY = MENU_MISSION:New("On Demand - IFV - Bradley",spawn_menu_OD_IFV_R2B)
spawn_menu_OD_IFV_R2B_BMP3 = MENU_MISSION:New("On Demand - IFV - BMP3",spawn_menu_OD_IFV_R2B)
spawn_menu_OD_IFV_R2B_BTR = MENU_MISSION:New("On Demand - IFV - BTR",spawn_menu_OD_IFV_R2B)
spawn_menu_OD_IFV_R2B_M113 = MENU_MISSION:New("On Demand - IFV - M113",spawn_menu_OD_IFV_R2B)
spawn_menu_OD_MBT_R2B = MENU_MISSION:New("On Demand - MBT",spawn_menu_OD_R2B)
spawn_menu_OD_MBT_R2B_T72 = MENU_MISSION:New("On Demand - MBT- T72",spawn_menu_OD_MBT_R2B)
spawn_menu_OD_MBT_R2B_T80 = MENU_MISSION:New("On Demand - MBT -T80",spawn_menu_OD_MBT_R2B)
spawn_menu_OD_MBT_R2B_ABRAMS = MENU_MISSION:New("On Demand - MBT - Abrams",spawn_menu_OD_MBT_R2B)
spawn_menu_OD_MBT_R2B_LEO2 = MENU_MISSION:New("On Demand - MBT - Leopard2",spawn_menu_OD_MBT_R2B)
spawn_menu_OD_MISC_R2B = MENU_MISSION:New("On Demand - MISC",spawn_menu_OD_R2B)   



local menu_ON_DEMAND_1_Recon_HMMWV_vehicle_R2B = MENU_MISSION_COMMAND:New("Spawn Recon HMMWV Vehicle",spawn_menu_OD_Recon_R2B,_ON_DEMAND_1_Recon_HMMWV_vehicle_R2B)
local menu_ON_DEMAND_1_Recon_HMMWV_section_R2B = MENU_MISSION_COMMAND:New("Spawn Recon HMMWV Section",spawn_menu_OD_Recon_R2B,_ON_DEMAND_1_Recon_HMMWV_section_R2B)
local menu_ON_DEMAND_1_Recon_BRDM_vehicle_R2B = MENU_MISSION_COMMAND:New("Spawn Recon BRDM Vehicle",spawn_menu_OD_Recon_R2B,_ON_DEMAND_1_Recon_BRDM_vehicle_R2B)
local menu_ON_DEMAND_1_Recon_BRDM_section_R2B = MENU_MISSION_COMMAND:New("Spawn Recon BRDM Section",spawn_menu_OD_Recon_R2B,_ON_DEMAND_1_Recon_BRDM_section_R2B)
local menu_ON_DEMAND_1_Recon_STRYKER_vehicle_R2B = MENU_MISSION_COMMAND:New("Spawn Recon STRYKER Vehicle",spawn_menu_OD_Recon_R2B,_ON_DEMAND_1_Recon_STRYKER_vehicle_R2B)
local menu_ON_DEMAND_1_Recon_STRYKER_section_R2B = MENU_MISSION_COMMAND:New("Spawn Recon STRYKER Section",spawn_menu_OD_Recon_R2B,_ON_DEMAND_1_Recon_STRYKER_section_R2B)

local menu_ON_DEMAND_2_IFV_BMP2_vehicle_R2B = MENU_MISSION_COMMAND:New("Spawn IFV BMP2 Vehicle",spawn_menu_OD_IFV_R2B_BMP2,_ON_DEMAND_2_IFV_BMP2_vehicle_R2B)
local menu_ON_DEMAND_2_IFV_BMP2_section_R2B = MENU_MISSION_COMMAND:New("Spawn IFV BMP2 Section",spawn_menu_OD_IFV_R2B_BMP2,_ON_DEMAND_2_IFV_BMP2_section_R2B)
local menu_ON_DEMAND_2_IFV_LAV25_vehicle_R2B = MENU_MISSION_COMMAND:New("Spawn IFV LAV25 Vehicle",spawn_menu_OD_IFV_R2B_LAV25,_ON_DEMAND_2_IFV_LAV25_vehicle_R2B)
local menu_ON_DEMAND_2_IFV_LAV25_section_R2B = MENU_MISSION_COMMAND:New("Spawn IFV LAV25 Section",spawn_menu_OD_IFV_R2B_LAV25,_ON_DEMAND_2_IFV_LAV25_section_R2B)
local menu_ON_DEMAND_2_IFV_BRADLEY_vehicle_R2B = MENU_MISSION_COMMAND:New("Spawn IFV BRADLEY Vehicle",spawn_menu_OD_IFV_R2B_BRADLEY,_ON_DEMAND_2_IFV_BRADLEY_vehicle_R2B)
local menu_ON_DEMAND_2_IFV_BRADLEY_section_R2B = MENU_MISSION_COMMAND:New("Spawn IFV BRADLEY Section",spawn_menu_OD_IFV_R2B_BRADLEY,_ON_DEMAND_2_IFV_BRADLEY_section_R2B)
local menu_ON_DEMAND_2_IFV_BMP3_vehicle_R2B = MENU_MISSION_COMMAND:New("Spawn IFV BMP3 Vehicle",spawn_menu_OD_IFV_R2B_BMP3,_ON_DEMAND_2_IFV_BMP3_vehicle_R2B)
local menu_ON_DEMAND_2_IFV_BMP3_section_R2B = MENU_MISSION_COMMAND:New("Spawn IFV BMP3 Section",spawn_menu_OD_IFV_R2B_BMP3,_ON_DEMAND_2_IFV_BMP3_section_R2B)
local menu_ON_DEMAND_2_IFV_BTR_vehicle_R2B = MENU_MISSION_COMMAND:New("Spawn IFV BTR Vehicle",spawn_menu_OD_IFV_R2B_BTR,_ON_DEMAND_2_IFV_BTR_vehicle_R2B)
local menu_ON_DEMAND_2_IFV_BTR_section_R2B = MENU_MISSION_COMMAND:New("Spawn IFV BTR Section",spawn_menu_OD_IFV_R2B_BTR,_ON_DEMAND_2_IFV_BTR_section_R2B)
local menu_ON_DEMAND_2_IFV_M113_vehicle_R2B = MENU_MISSION_COMMAND:New("Spawn IFV M113 Vehicle",spawn_menu_OD_IFV_R2B_M113,_ON_DEMAND_2_IFV_M113_vehicle_R2B)
local menu_ON_DEMAND_2_IFV_M113_section_R2B = MENU_MISSION_COMMAND:New("Spawn IFV M113 Section",spawn_menu_OD_IFV_R2B_M113,_ON_DEMAND_2_IFV_M113_section_R2B)

local menu_ON_DEMAND_3_MBT_T72_vehicle_R2B = MENU_MISSION_COMMAND:New("Spawn MBT T72 Vehicle",spawn_menu_OD_MBT_R2B_T72,_ON_DEMAND_3_MBT_T72_vehicle_R2B)
local menu_ON_DEMAND_3_MBT_T72_section_R2B = MENU_MISSION_COMMAND:New("Spawn MBT T72 Section",spawn_menu_OD_MBT_R2B_T72,_ON_DEMAND_3_MBT_T72_section_R2B)
local menu_ON_DEMAND_3_MBT_T80_vehicle_R2B = MENU_MISSION_COMMAND:New("Spawn MBT T80 Vehicle",spawn_menu_OD_MBT_R2B_T80,_ON_DEMAND_3_MBT_T80_vehicle_R2B)
local menu_ON_DEMAND_3_MBT_T80_section_R2B = MENU_MISSION_COMMAND:New("Spawn MBT T80 Section",spawn_menu_OD_MBT_R2B_T80,_ON_DEMAND_3_MBT_T80_section_R2B)
local menu_ON_DEMAND_3_MBT_ABRAMS_vehicle_R2B = MENU_MISSION_COMMAND:New("Spawn MBT ABRAMS Vehicle",spawn_menu_OD_MBT_R2B_ABRAMS,_ON_DEMAND_3_MBT_ABRAMS_vehicle_R2B)
local menu_ON_DEMAND_3_MBT_ABRAMS_section_R2B = MENU_MISSION_COMMAND:New("Spawn MBT ABRAMS Section",spawn_menu_OD_MBT_R2B_ABRAMS,_ON_DEMAND_3_MBT_ABRAMS_section_R2B)
local menu_ON_DEMAND_3_MBT_LEO2_vehicle_R2B = MENU_MISSION_COMMAND:New("Spawn MBT Leopard2 Vehicle",spawn_menu_OD_MBT_R2B_LEO2,_ON_DEMAND_3_MBT_LEO2_vehicle_R2B)
local menu_ON_DEMAND_3_MBT_LEO2_section_R2B = MENU_MISSION_COMMAND:New("Spawn MBT Leopard2 Section",spawn_menu_OD_MBT_R2B_LEO2,_ON_DEMAND_3_MBT_LEO2_section_R2B)

local menu_ON_DEMAND_4_MISC_SHILKA_vehicle_R2B = MENU_MISSION_COMMAND:New("Spawn SHILKA Vehicle",spawn_menu_OD_MISC_R2B,_ON_DEMAND_4_MISC_SHILKA_vehicle_R2B)
local menu_ON_DEMAND_4_MISC_C2_vehicle_R2B = MENU_MISSION_COMMAND:New("Spawn C2 Vehicle",spawn_menu_OD_MISC_R2B,_ON_DEMAND_4_MISC_C2_vehicle_R2B)
local menu_ON_DEMAND_4_MISC_ARTY_vehicle_R2B = MENU_MISSION_COMMAND:New("Spawn Artillery Vehicle",spawn_menu_OD_MISC_R2B,_ON_DEMAND_4_MISC_ARTY_vehicle_R2B)
local menu_ON_DEMAND_4_MISC_MLRS_vehicle_R2B = MENU_MISSION_COMMAND:New("Spawn MLRS Vehicle",spawn_menu_OD_MISC_R2B,_ON_DEMAND_4_MISC_MLRS_vehicle_R2B)
local menu_ON_DEMAND_4_MISC_SA13_vehicle_R2B = MENU_MISSION_COMMAND:New("Spawn SA13 Vehicle",spawn_menu_OD_MISC_R2B,_ON_DEMAND_4_MISC_SA13_vehicle_R2B)
local menu_ON_DEMAND_4_MISC_SA19_vehicle_R2B = MENU_MISSION_COMMAND:New("Spawn SA19 Vehicle",spawn_menu_OD_MISC_R2B,_ON_DEMAND_4_MISC_SA19_vehicle_R2B)


  
  --- Range 2B.4 South ---

-- ON DEMAND SPAWNING -- 
BlueSpawnerR2B_SOUTH = UNIT:FindByName("BlueInfantryR2B_SOUTH")
RedSpawnerR2B_SOUTH = UNIT:FindByName("REDInfantryR2B_SOUTH")

local Recon_HMMWV_vehicle_R2B_SOUTH = SPAWN:NewWithAlias("_ON_DEMAND_1: Recon_HMMWV_vehicle","Range2B.4 Target1")
local Recon_HMMWV_section_R2B_SOUTH = SPAWN:NewWithAlias("_ON_DEMAND_1: Recon_HMMWV_section","Range2B.4 Target2")
local Recon_BRDM_vehicle_R2B_SOUTH = SPAWN:NewWithAlias("_ON_DEMAND_1: Recon_BRDM_vehicle","Range2B.4 Target3")
local Recon_BRDM_section_R2B_SOUTH = SPAWN:NewWithAlias("_ON_DEMAND_1: Recon_BRDM_section","Range2B.4 Target4")
local Recon_STRYKER_vehicle_R2B_SOUTH = SPAWN:NewWithAlias("_ON_DEMAND_1: Recon_stryker_vehicle","Range2B.4 Target5")
local Recon_STRYKER_section_R2B_SOUTH = SPAWN:NewWithAlias("_ON_DEMAND_1: Recon_stryker_section","Range2B.4 Target6")


local IFV_BMP2_vehicle_R2B_SOUTH = SPAWN:NewWithAlias("_ON_DEMAND_2: IFV_BMP2_vehicle","Range2B.4 Target7")
local IFV_BMP2_section_R2B_SOUTH = SPAWN:NewWithAlias("_ON_DEMAND_2: IFV_BMP2_section","Range2B.4 Target8")
local IFV_LAV25_vehicle_R2B_SOUTH = SPAWN:NewWithAlias("_ON_DEMAND_2: IFV_LAV25_vehicle","Range2B.4 Target9")
local IFV_LAV25_section_R2B_SOUTH = SPAWN:NewWithAlias("_ON_DEMAND_2: IFV_LAV25_section","Range2B.4 Target10")
local IFV_BRADLEY_vehicle_R2B_SOUTH = SPAWN:NewWithAlias("_ON_DEMAND_2: IFV_Bradley_vehicle","Range2B.4 Target11")
local IFV_BRADLEY_section_R2B_SOUTH = SPAWN:NewWithAlias("_ON_DEMAND_2: IFV_Bradley_section","Range2B.4 Target12")
local IFV_BMP3_vehicle_R2B_SOUTH = SPAWN:NewWithAlias("_ON_DEMAND_2: IFV_BMP3_vehicle","Range2B.4 Target13")
local IFV_BMP3_section_R2B_SOUTH = SPAWN:NewWithAlias("_ON_DEMAND_2: IFV_BMP3_section","Range2B.4 Target14")
local IFV_BTR_vehicle_R2B_SOUTH = SPAWN:NewWithAlias("_ON_DEMAND_2: IFV_BTR_vehicle","Range2B.4 Target15")
local IFV_BTR_section_R2B_SOUTH = SPAWN:NewWithAlias("_ON_DEMAND_2: IFV_BTR_section","Range2B.4 Target16")
local IFV_M113_vehicle_R2B_SOUTH = SPAWN:NewWithAlias("_ON_DEMAND_2: IFV_M113_vehicle","Range2B.4 Target17")
local IFV_M113_section_R2B_SOUTH = SPAWN:NewWithAlias("_ON_DEMAND_2: IFV_M113_section","Range2B.4 Target18")

local MBT_T72_vehicle_R2B_SOUTH = SPAWN:NewWithAlias("_ON_DEMAND_3: MBT_T72_vehicle","Range2B.4 Target19")
local MBT_T72_section_R2B_SOUTH = SPAWN:NewWithAlias("_ON_DEMAND_3: MBT_T72_section","Range2B.4 Target20")
local MBT_T80_vehicle_R2B_SOUTH = SPAWN:NewWithAlias("_ON_DEMAND_3: MBT_T80_vehicle","Range2B.4 Target21")
local MBT_T80_section_R2B_SOUTH = SPAWN:NewWithAlias("_ON_DEMAND_3: MBT_T80_section","Range2B.4 Target22")
local MBT_ABRAMS_vehicle_R2B_SOUTH = SPAWN:NewWithAlias("_ON_DEMAND_3: MBT_Abrams_vehicle","Range2B.4 Target23")
local MBT_ABRAMS_section_R2B_SOUTH = SPAWN:NewWithAlias("_ON_DEMAND_3: MBT_Abrams_section","Range2B.4 Target24")
local MBT_LEO2_vehicle_R2B_SOUTH = SPAWN:NewWithAlias("_ON_DEMAND_3: MBT_Leo2_vehicle","Range2B.4 Target25")
local MBT_LEO2_section_R2B_SOUTH = SPAWN:NewWithAlias("_ON_DEMAND_3: MBT_Leo2_vehicle","Range2B.4 Target26")


local MISC_SHILKA_vehicle_R2B_SOUTH = SPAWN:NewWithAlias("_ON_DEMAND_4: Misc_Shilka_vehicle","Range2B.4 Target27")
local MISC_C2_vehicle_R2B_SOUTH = SPAWN:NewWithAlias("_ON_DEMAND_4: Misc_C2_vehicle","Range2B.4 Target28")
local MISC_ARTY_vehicle_R2B_SOUTH = SPAWN:NewWithAlias("_ON_DEMAND_4: Misc_Arty_vehicle","Range2B.4 Target29")
local MISC_MLRS_vehicle_R2B_SOUTH = SPAWN:NewWithAlias("_ON_DEMAND_4: Misc_MLRS_vehicle","Range2B.4 Target30")
local MISC_SA13_vehicle_R2B_SOUTH = SPAWN:NewWithAlias("_ON_DEMAND_4: Misc_SA-13_vehicle","Range2B.4 Target31")
local MISC_SA19_vehicle_R2B_SOUTH = SPAWN:NewWithAlias("_ON_DEMAND_4: Misc_SA-19_vehicle","Range2B.4 Target32")


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

-- move targets 

Range2B_4_Groups_movetimer = 5 -- time in MINUTES for randomized movement
Range2B_4_Groups_RandomFaktor = 0.5 -- Timer above ranomize Faktor
Range2B_4_Groups_Distance_Min = 100 -- min Distance in Meters for randomized movement
Range2B_4_Groups_Distance_Max = 1000 -- max Distance in Meters for randomized movement



function moveT2B4Groups()

Range2B_4_Groups:ForEachGroupAlive(function (move)

-- Get the current coordinate of GroundGroup
local FromCoord = move:GetCoordinate()


-- From the current coordinate, calculate a random vector 100m-1000m away with an random angle.
local ToCoord = FromCoord:Translate( math.random(Range2B_4_Groups_Distance_Min,Range2B_4_Groups_Distance_Max), math.random(1,360) )
move:RouteGroundTo(ToCoord,20,5)

end)
end
-- move targets


Range2B_4_Groups_movetimer = 5 -- time in MINUTES for randomized movement
Range2B_4_Groups_RandomFaktor = 0.5 -- Timer above ranomize Faktor
Range2B_4_Groups_Distance_Min = 100 -- min Distance in Meters for randomized movement
Range2B_4_Groups_Distance_Max = 1000 -- max Distance in Meters for randomized movement




-- move targets_periodically 
function moveT2B4Groups_periodically_start()
  spawn_menu_OD_R2B_SOUTH_MoveODSpawns_periodically_stop = MENU_MISSION_COMMAND:New("Disable Spawned Group changing Position every " ..Range2B_4_Groups_movetimer.."Minutes",Menu_Range_R2B_SOUTH,moveT2B4Groups_periodically_stop)
  spawn_menu_OD_R2B_SOUTH_MoveODSpawns_periodically_start:Remove()
  Range2B_4_PositionChange =
    SCHEDULER:New(nil,function ()
      Range2B_4_Groups:ForEachGroupAlive(function (move)
        -- Get the current coordinate of GroundGroup
        local FromCoord = move:GetCoordinate()
        -- From the current coordinate, calculate a random vector 100m-1000m away with an random angle.
        local ToCoord = FromCoord:Translate( math.random(Range2B_4_Groups_Distance_Min,Range2B_4_Groups_Distance_Max), math.random(1,360) )
        move:RouteGroundTo(ToCoord,20,5)
      end)
    end,{},5,Range2B_4_Groups_movetimer*60,Range2B_4_Groups_RandomFaktor)
end

function moveT2B4Groups_periodically_stop()
spawn_menu_OD_R2B_SOUTH_MoveODSpawns_periodically_stop:Remove()
spawn_menu_OD_R2B_SOUTH_MoveODSpawns_periodically_start = MENU_MISSION_COMMAND:New("Spawned Groups Change Position every 5 Minutes",Menu_Range_R2B_SOUTH,moveT2B4Groups_periodically_start)
Range2B_4_PositionChange:Stop()
end

-- move targets_periodically


Range2B_4_Groups = SET_GROUP:New():FilterCategoryGround():FilterPrefixes("Range2B.4 Target"):FilterStart()

Menu_Range_R2B_SOUTH = MENU_MISSION:New("Range 2B.4", Menu_Range_R2)
spawn_menu_OD_R2B_SOUTH = MENU_MISSION:New("On Demand Spawning",Menu_Range_R2B_SOUTH)
spawn_menu_OD_R2B_SOUTH_MoveODSpawns = MENU_MISSION_COMMAND:New("Move Positions of Spawned Groups",Menu_Range_R2B_SOUTH,moveT2B4Groups)
spawn_menu_OD_R2B_SOUTH_MoveODSpawns_periodically_start = MENU_MISSION_COMMAND:New("Spawned Groups Change Position every 5 Minutes",Menu_Range_R2B_SOUTH,moveT2B4Groups_periodically_start)

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


-- Range Auto Setup -- 

-- RED TABLE
R2B_2_table_red_recon = { "Template 8.3: Recon platoon", "Template 8.2: Recon section", "Template 8.1: Recon vehicle" } -- table for the red recon
R2B_2_table_red_IFV = { "Template 9.3: IFV platoon", "Template 9.2: IFV section", "Template 9.1: IFV vehicle" } -- table for the red IFV
R2B_2_table_red_MBT = { "Template 10.3: MBT platoon", "Template 10.2: MBT section", "Template 10.1: MBT vehicle" } -- table for the red MBT
R2B_2_table_red_AAA = { "Template 11.1: AAA vehicle", "Template 11.2 AAA vehicle on Ural", "Template 11.3 AAA vehicle with support", "Template 12.1: SA-13 vehicle" } -- table for the red AAA
R2B_2_table_red_misc = { "Template 13.1: logistics vehicle", "Template 13.2: logistics section", "Template 14.1: C2 vehicle", "Template 15.1: Artillery vehicle", "Template 15.2: Artillery section" } -- table for the red misc
-- RED TABLE


-- BLUE Table
R2B_2_table_blue_recon = { "Template 1.1: Recon vehicle", "Template 1.2: Recon section", "Template 1.3: Recon platoon" } -- table for the blue recon
R2B_2_table_blue_IFV = { "Template 2.1: IFV vehicle", "Template 2.2: IFV section", "Template 2.3: IFV platoon" } -- table for the blue IFV
R2B_2_table_blue_MBT = { "Template 3.1: MBT vehicle", "Template 3.2: MBT section", "Template 3.3: MBT platoon" } -- table for the blue MBT 
-- BLUE Table

-- random setup for Range 2B.2
function SpawnTargets_R2B_2 ()
-- RED Spawners
R2B_2_red_recon = SPAWN:New("R2B_2_red_recon"):InitRandomizeTemplate(R2B_2_table_red_recon):InitRandomizeRoute(3,0,100):Spawn()  
R2B_2_red_IFV = SPAWN:New("R2B_2_red_IFV"):InitRandomizeTemplate(R2B_2_table_red_IFV):InitRandomizeRoute(3,0,100):Spawn()
R2B_2_red_MBT = SPAWN:New("R2B_2_red_MBT"):InitRandomizeTemplate(R2B_2_table_red_MBT):InitRandomizeRoute(3,0,100):Spawn()
R2B_2_red_AAA = SPAWN:New("R2B_2_red_AAA"):InitRandomizeTemplate(R2B_2_table_red_AAA):InitRandomizeRoute(3,0,20):Spawn()
R2B_2_red_misc = SPAWN:New("R2B_2_red_misc"):InitRandomizeTemplate(R2B_2_table_red_misc):InitRandomizeRoute(3,0,100):Spawn()
-- RED Spawners
-- BLUE Spawners
R2B_2_blue_recon = SPAWN:New("R2B_2_blue_recon"):InitRandomizeTemplate(R2B_2_table_blue_recon):InitRandomizeRoute(3,0,100):Spawn()
R2B_2_blue_IFV = SPAWN:New("R2B_2_blue_IFV"):InitRandomizeTemplate(R2B_2_table_blue_IFV):InitRandomizeRoute(3,0,100):Spawn()
R2B_2_blue_MBT = SPAWN:New("R2B_2_blue_MBT"):InitRandomizeTemplate(R2B_2_table_blue_MBT):InitRandomizeRoute(3,0,100):Spawn()
-- BLUE Spawners
spawn_menu_R2B_2:Remove()
end

spawn_menu_R2B_2 = MENU_MISSION_COMMAND:New("Set up Range 2B.2 dynamically",Menu_Range_R2B,SpawnTargets_R2B_2)

-- random setup for Range 2A.1



-- Range Auto Setup -- 


-- move targets 
function moveT2B4Groups()
Range2B_4_Groups = SET_GROUP:New():FilterCategoryGround():FilterPrefixes("Range2B.4 Target"):FilterStart()
Range2B_4_Groups:ForEachGroupAlive(function (move)
move:Destroy()
end)
end
-- move targets








   
  

