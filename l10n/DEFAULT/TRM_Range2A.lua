--- Range 2A---

-- ON DEMAND SPAWNING -- 
BlueSpawnerR2A = UNIT:FindByName("BlueInfantryR2A")
RedSpawnerR2A = UNIT:FindByName("REDInfantryR2A")

local Recon_HMMWV_vehicle_R2A = SPAWN:New("_ON_DEMAND_1: Recon_HMMWV_vehicle")
local Recon_HMMWV_section_R2A = SPAWN:New("_ON_DEMAND_1: Recon_HMMWV_section")
local Recon_BRDM_vehicle_R2A = SPAWN:New("_ON_DEMAND_1: Recon_BRDM_vehicle")
local Recon_BRDM_section_R2A = SPAWN:New("_ON_DEMAND_1: Recon_BRDM_section")
local Recon_STRYKER_vehicle_R2A = SPAWN:New("_ON_DEMAND_1: Recon_stryker_vehicle")
local Recon_STRYKER_section_R2A = SPAWN:New("_ON_DEMAND_1: Recon_stryker_section")

local IFV_BMP2_vehicle_R2A = SPAWN:New("_ON_DEMAND_2: IFV_BMP2_vehicle")
local IFV_BMP2_section_R2A = SPAWN:New("_ON_DEMAND_2: IFV_BMP2_section")
local IFV_LAV25_vehicle_R2A = SPAWN:New("_ON_DEMAND_2: IFV_LAV25_vehicle")
local IFV_LAV25_section_R2A = SPAWN:New("_ON_DEMAND_2: IFV_LAV25_section")
local IFV_BRADLEY_vehicle_R2A = SPAWN:New("_ON_DEMAND_2: IFV_Bradley_vehicle")
local IFV_BRADLEY_section_R2A = SPAWN:New("_ON_DEMAND_2: IFV_Bradley_section")
local IFV_BMP3_vehicle_R2A = SPAWN:New("_ON_DEMAND_2: IFV_BMP3_vehicle")
local IFV_BMP3_section_R2A = SPAWN:New("_ON_DEMAND_2: IFV_BMP3_section")
local IFV_BTR_vehicle_R2A = SPAWN:New("_ON_DEMAND_2: IFV_BTR_vehicle")
local IFV_BTR_section_R2A = SPAWN:New("_ON_DEMAND_2: IFV_BTR_section")
local IFV_M113_vehicle_R2A = SPAWN:New("_ON_DEMAND_2: IFV_M113_vehicle")
local IFV_M113_section_R2A = SPAWN:New("_ON_DEMAND_2: IFV_M113_section")


local MBT_T72_vehicle_R2A = SPAWN:New("_ON_DEMAND_3: MBT_T72_vehicle")
local MBT_T72_section_R2A = SPAWN:New("_ON_DEMAND_3: MBT_T72_section")
local MBT_T80_vehicle_R2A = SPAWN:New("_ON_DEMAND_3: MBT_T80_vehicle")
local MBT_T80_section_R2A = SPAWN:New("_ON_DEMAND_3: MBT_T80_section")
local MBT_ABRAMS_vehicle_R2A = SPAWN:New("_ON_DEMAND_3: MBT_Abrams_vehicle")
local MBT_ABRAMS_section_R2A = SPAWN:New("_ON_DEMAND_3: MBT_Abrams_section")
local MBT_LEO2_vehicle_R2A = SPAWN:New("_ON_DEMAND_3: MBT_Leo2_vehicle")
local MBT_LEO2_section_R2A = SPAWN:New("_ON_DEMAND_3: MBT_Leo2_section")

local MISC_SHILKA_vehicle_R2A = SPAWN:New("_ON_DEMAND_4: Misc_Shilka_vehicle")
local MISC_C2_vehicle_R2A = SPAWN:New("_ON_DEMAND_4: Misc_C2_vehicle")
local MISC_ARTY_vehicle_R2A = SPAWN:New("_ON_DEMAND_4: Misc_Arty_vehicle")
local MISC_MLRS_vehicle_R2A = SPAWN:New("_ON_DEMAND_4: Misc_MLRS_vehicle")
local MISC_SA13_vehicle_R2A = SPAWN:New("_ON_DEMAND_4: Misc_SA-13_vehicle")
local MISC_SA19_vehicle_R2A = SPAWN:New("_ON_DEMAND_4: Misc_SA-19_vehicle")


local function _ON_DEMAND_1_Recon_HMMWV_vehicle_R2A ()
Recon_HMMWV_vehicle_R2A:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR2A)
end
local function _ON_DEMAND_1_Recon_HMMWV_section_R2A ()
Recon_HMMWV_section_R2A:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR2A)
end
local function _ON_DEMAND_1_Recon_BRDM_vehicle_R2A ()
Recon_BRDM_vehicle_R2A:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR2A)
end
local function _ON_DEMAND_1_Recon_BRDM_section_R2A ()
Recon_BRDM_section_R2A:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR2A)
end
local function _ON_DEMAND_1_Recon_STRYKER_vehicle_R2A ()
Recon_STRYKER_vehicle_R2A:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR2A)
end
local function _ON_DEMAND_1_Recon_STRYKER_section_R2A ()
Recon_STRYKER_section_R2A:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR2A)
end

local function _ON_DEMAND_2_IFV_BMP2_vehicle_R2A ()
IFV_BMP2_vehicle_R2A:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR2A)
end
local function _ON_DEMAND_2_IFV_BMP2_section_R2A ()
IFV_BMP2_section_R2A:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR2A)
end
local function _ON_DEMAND_2_IFV_LAV25_vehicle_R2A ()
IFV_LAV25_vehicle_R2A:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR2A)
end
local function _ON_DEMAND_2_IFV_LAV25_section_R2A ()
IFV_LAV25_section_R2A:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR2A)
end
local function _ON_DEMAND_2_IFV_BRADLEY_vehicle_R2A ()
IFV_BRADLEY_vehicle_R2A:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR2A)
end
local function _ON_DEMAND_2_IFV_BRADLEY_section_R2A ()
IFV_BRADLEY_section_R2A:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR2A)
end
local function _ON_DEMAND_2_IFV_BMP3_vehicle_R2A ()
IFV_BMP3_vehicle_R2A:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR2A)
end
local function _ON_DEMAND_2_IFV_BMP3_section_R2A ()
IFV_BMP3_section_R2A:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR2A)
end
local function _ON_DEMAND_2_IFV_BTR_vehicle_R2A ()
IFV_BTR_vehicle_R2A:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR2A)
end
local function _ON_DEMAND_2_IFV_BTR_section_R2A ()
IFV_BTR_section_R2A:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR2A)
end
local function _ON_DEMAND_2_IFV_M113_vehicle_R2A ()
IFV_BTR_vehicle_R2A:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR2A)
end
local function _ON_DEMAND_2_IFV_M113_section_R2A ()
IFV_BTR_section_R2A:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR2A)
end

local function _ON_DEMAND_3_MBT_T72_vehicle_R2A ()
MBT_T72_vehicle_R2A:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR2A)
end
local function _ON_DEMAND_3_MBT_T72_section_R2A ()
MBT_T72_section_R2A:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR2A)
end
local function _ON_DEMAND_3_MBT_T80_vehicle_R2A ()
MBT_T80_vehicle_R2A:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR2A)
end
local function _ON_DEMAND_3_MBT_T80_section_R2A ()
MBT_T80_section_R2A:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR2A)
end
local function _ON_DEMAND_3_MBT_ABRAMS_vehicle_R2A ()
MBT_ABRAMS_vehicle_R2A:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR2A)
end
local function _ON_DEMAND_3_MBT_ABRAMS_section_R2A ()
MBT_ABRAMS_section_R2A:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR2A)
end
local function _ON_DEMAND_3_MBT_LEO2_vehicle_R2A ()
MBT_LEO2_vehicle_R2A:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR2A)
end
local function _ON_DEMAND_3_MBT_LEO2_section_R2A ()
MBT_LEO2_section_R2A:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR2A)
end

local function _ON_DEMAND_4_MISC_SHILKA_vehicle_R2A ()
MISC_SHILKA_vehicle_R2A:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR2A)
end
local function _ON_DEMAND_4_MISC_C2_vehicle_R2A ()
MISC_C2_vehicle_R2A:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR2A)
end
local function _ON_DEMAND_4_MISC_ARTY_vehicle_R2A ()
MISC_ARTY_vehicle_R2A:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR2A)
end
local function _ON_DEMAND_4_MISC_MLRS_vehicle_R2A ()
MISC_MLRS_vehicle_R2A:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR2A)
end
local function _ON_DEMAND_4_MISC_SA13_vehicle_R2A ()
MISC_SA13_vehicle_R2A:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR2A)
end
local function _ON_DEMAND_4_MISC_SA19_vehicle_R2A ()
MISC_SA19_vehicle_R2A:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR2A)
end
-- ON DEMAND SPAWNING -- 

Menu_Range_R2A = MENU_MISSION:New("Range 2A", Menu_Range_Options)
spawn_menu_OD_R2A = MENU_MISSION:New("On Demand Spawning",Menu_Range_R2A)
spawn_menu_OD_Recon_R2A = MENU_MISSION:New("On Demand - RECON",spawn_menu_OD_R2A)
spawn_menu_OD_IFV_R2A = MENU_MISSION:New("On Demand - IFV",spawn_menu_OD_R2A)
spawn_menu_OD_IFV_R2A_BMP2 = MENU_MISSION:New("On Demand - IFV - BMP2",spawn_menu_OD_IFV_R2A)
spawn_menu_OD_IFV_R2A_LAV25 = MENU_MISSION:New("On Demand - IFV - LAV25",spawn_menu_OD_IFV_R2A)
spawn_menu_OD_IFV_R2A_BRADLEY = MENU_MISSION:New("On Demand - IFV - Bradley",spawn_menu_OD_IFV_R2A)
spawn_menu_OD_IFV_R2A_BMP3 = MENU_MISSION:New("On Demand - IFV - BMP3",spawn_menu_OD_IFV_R2A)
spawn_menu_OD_IFV_R2A_BTR = MENU_MISSION:New("On Demand - IFV - BTR",spawn_menu_OD_IFV_R2A)
spawn_menu_OD_IFV_R2A_M113 = MENU_MISSION:New("On Demand - IFV - M113",spawn_menu_OD_IFV_R2A)
spawn_menu_OD_MBT_R2A = MENU_MISSION:New("On Demand - MBT",spawn_menu_OD_R2A)
spawn_menu_OD_MBT_R2A_T72 = MENU_MISSION:New("On Demand - MBT- T72",spawn_menu_OD_MBT_R2A)
spawn_menu_OD_MBT_R2A_T80 = MENU_MISSION:New("On Demand - MBT -T80",spawn_menu_OD_MBT_R2A)
spawn_menu_OD_MBT_R2A_ABRAMS = MENU_MISSION:New("On Demand - MBT - Abrams",spawn_menu_OD_MBT_R2A)
spawn_menu_OD_MBT_R2A_LEO2 = MENU_MISSION:New("On Demand - MBT - Leopard2",spawn_menu_OD_MBT_R2A)
spawn_menu_OD_MISC_R2A = MENU_MISSION:New("On Demand - MISC",spawn_menu_OD_R2A)   



local menu_ON_DEMAND_1_Recon_HMMWV_vehicle_R2A = MENU_MISSION_COMMAND:New("Spawn Recon HMMWV Vehicle",spawn_menu_OD_Recon_R2A,_ON_DEMAND_1_Recon_HMMWV_vehicle_R2A)
local menu_ON_DEMAND_1_Recon_HMMWV_section_R2A = MENU_MISSION_COMMAND:New("Spawn Recon HMMWV Section",spawn_menu_OD_Recon_R2A,_ON_DEMAND_1_Recon_HMMWV_section_R2A)
local menu_ON_DEMAND_1_Recon_BRDM_vehicle_R2A = MENU_MISSION_COMMAND:New("Spawn Recon BRDM Vehicle",spawn_menu_OD_Recon_R2A,_ON_DEMAND_1_Recon_BRDM_vehicle_R2A)
local menu_ON_DEMAND_1_Recon_BRDM_section_R2A = MENU_MISSION_COMMAND:New("Spawn Recon BRDM Section",spawn_menu_OD_Recon_R2A,_ON_DEMAND_1_Recon_BRDM_section_R2A)
local menu_ON_DEMAND_1_Recon_STRYKER_vehicle_R2A = MENU_MISSION_COMMAND:New("Spawn Recon STRYKER Vehicle",spawn_menu_OD_Recon_R2A,_ON_DEMAND_1_Recon_STRYKER_vehicle_R2A)
local menu_ON_DEMAND_1_Recon_STRYKER_section_R2A = MENU_MISSION_COMMAND:New("Spawn Recon STRYKER Section",spawn_menu_OD_Recon_R2A,_ON_DEMAND_1_Recon_STRYKER_section_R2A)

local menu_ON_DEMAND_2_IFV_BMP2_vehicle_R2A = MENU_MISSION_COMMAND:New("Spawn IFV BMP2 Vehicle",spawn_menu_OD_IFV_R2A_BMP2,_ON_DEMAND_2_IFV_BMP2_vehicle_R2A)
local menu_ON_DEMAND_2_IFV_BMP2_section_R2A = MENU_MISSION_COMMAND:New("Spawn IFV BMP2 Section",spawn_menu_OD_IFV_R2A_BMP2,_ON_DEMAND_2_IFV_BMP2_section_R2A)
local menu_ON_DEMAND_2_IFV_LAV25_vehicle_R2A = MENU_MISSION_COMMAND:New("Spawn IFV LAV25 Vehicle",spawn_menu_OD_IFV_R2A_LAV25,_ON_DEMAND_2_IFV_LAV25_vehicle_R2A)
local menu_ON_DEMAND_2_IFV_LAV25_section_R2A = MENU_MISSION_COMMAND:New("Spawn IFV LAV25 Section",spawn_menu_OD_IFV_R2A_LAV25,_ON_DEMAND_2_IFV_LAV25_section_R2A)
local menu_ON_DEMAND_2_IFV_BRADLEY_vehicle_R2A = MENU_MISSION_COMMAND:New("Spawn IFV BRADLEY Vehicle",spawn_menu_OD_IFV_R2A_BRADLEY,_ON_DEMAND_2_IFV_BRADLEY_vehicle_R2A)
local menu_ON_DEMAND_2_IFV_BRADLEY_section_R2A = MENU_MISSION_COMMAND:New("Spawn IFV BRADLEY Section",spawn_menu_OD_IFV_R2A_BRADLEY,_ON_DEMAND_2_IFV_BRADLEY_section_R2A)
local menu_ON_DEMAND_2_IFV_BMP3_vehicle_R2A = MENU_MISSION_COMMAND:New("Spawn IFV BMP3 Vehicle",spawn_menu_OD_IFV_R2A_BMP3,_ON_DEMAND_2_IFV_BMP3_vehicle_R2A)
local menu_ON_DEMAND_2_IFV_BMP3_section_R2A = MENU_MISSION_COMMAND:New("Spawn IFV BMP3 Section",spawn_menu_OD_IFV_R2A_BMP3,_ON_DEMAND_2_IFV_BMP3_section_R2A)
local menu_ON_DEMAND_2_IFV_BTR_vehicle_R2A = MENU_MISSION_COMMAND:New("Spawn IFV BTR Vehicle",spawn_menu_OD_IFV_R2A_BTR,_ON_DEMAND_2_IFV_BTR_vehicle_R2A)
local menu_ON_DEMAND_2_IFV_BTR_section_R2A = MENU_MISSION_COMMAND:New("Spawn IFV BTR Section",spawn_menu_OD_IFV_R2A_BTR,_ON_DEMAND_2_IFV_BTR_section_R2A)
local menu_ON_DEMAND_2_IFV_M113_vehicle_R2A = MENU_MISSION_COMMAND:New("Spawn IFV M113 Vehicle",spawn_menu_OD_IFV_R2A_M113,_ON_DEMAND_2_IFV_M113_vehicle_R2A)
local menu_ON_DEMAND_2_IFV_M113_section_R2A = MENU_MISSION_COMMAND:New("Spawn IFV M113 Section",spawn_menu_OD_IFV_R2A_M113,_ON_DEMAND_2_IFV_M113_section_R2A)

local menu_ON_DEMAND_3_MBT_T72_vehicle_R2A = MENU_MISSION_COMMAND:New("Spawn MBT T72 Vehicle",spawn_menu_OD_MBT_R2A_T72,_ON_DEMAND_3_MBT_T72_vehicle_R2A)
local menu_ON_DEMAND_3_MBT_T72_section_R2A = MENU_MISSION_COMMAND:New("Spawn MBT T72 Section",spawn_menu_OD_MBT_R2A_T72,_ON_DEMAND_3_MBT_T72_section_R2A)
local menu_ON_DEMAND_3_MBT_T80_vehicle_R2A = MENU_MISSION_COMMAND:New("Spawn MBT T80 Vehicle",spawn_menu_OD_MBT_R2A_T80,_ON_DEMAND_3_MBT_T80_vehicle_R2A)
local menu_ON_DEMAND_3_MBT_T80_section_R2A = MENU_MISSION_COMMAND:New("Spawn MBT T80 Section",spawn_menu_OD_MBT_R2A_T80,_ON_DEMAND_3_MBT_T80_section_R2A)
local menu_ON_DEMAND_3_MBT_ABRAMS_vehicle_R2A = MENU_MISSION_COMMAND:New("Spawn MBT ABRAMS Vehicle",spawn_menu_OD_MBT_R2A_ABRAMS,_ON_DEMAND_3_MBT_ABRAMS_vehicle_R2A)
local menu_ON_DEMAND_3_MBT_ABRAMS_section_R2A = MENU_MISSION_COMMAND:New("Spawn MBT ABRAMS Section",spawn_menu_OD_MBT_R2A_ABRAMS,_ON_DEMAND_3_MBT_ABRAMS_section_R2A)
local menu_ON_DEMAND_3_MBT_LEO2_vehicle_R2A = MENU_MISSION_COMMAND:New("Spawn MBT Leopard2 Vehicle",spawn_menu_OD_MBT_R2A_LEO2,_ON_DEMAND_3_MBT_LEO2_vehicle_R2A)
local menu_ON_DEMAND_3_MBT_LEO2_section_R2A = MENU_MISSION_COMMAND:New("Spawn MBT Leopard2 Section",spawn_menu_OD_MBT_R2A_LEO2,_ON_DEMAND_3_MBT_LEO2_section_R2A)

local menu_ON_DEMAND_4_MISC_SHILKA_vehicle_R2A = MENU_MISSION_COMMAND:New("Spawn SHILKA Vehicle",spawn_menu_OD_MISC_R2A,_ON_DEMAND_4_MISC_SHILKA_vehicle_R2A)
local menu_ON_DEMAND_4_MISC_C2_vehicle_R2A = MENU_MISSION_COMMAND:New("Spawn C2 Vehicle",spawn_menu_OD_MISC_R2A,_ON_DEMAND_4_MISC_C2_vehicle_R2A)
local menu_ON_DEMAND_4_MISC_ARTY_vehicle_R2A = MENU_MISSION_COMMAND:New("Spawn Artillery Vehicle",spawn_menu_OD_MISC_R2A,_ON_DEMAND_4_MISC_ARTY_vehicle_R2A)
local menu_ON_DEMAND_4_MISC_MLRS_vehicle_R2A = MENU_MISSION_COMMAND:New("Spawn MLRS Vehicle",spawn_menu_OD_MISC_R2A,_ON_DEMAND_4_MISC_MLRS_vehicle_R2A)
local menu_ON_DEMAND_4_MISC_SA13_vehicle_R2A = MENU_MISSION_COMMAND:New("Spawn SA13 Vehicle",spawn_menu_OD_MISC_R2A,_ON_DEMAND_4_MISC_SA13_vehicle_R2A)
local menu_ON_DEMAND_4_MISC_SA19_vehicle_R2A = MENU_MISSION_COMMAND:New("Spawn SA19 Vehicle",spawn_menu_OD_MISC_R2A,_ON_DEMAND_4_MISC_SA19_vehicle_R2A)




-- Range Auto Setup -- 

-- RED TABLE
R2A_table_red_recon = { "Template 8.3: Recon platoon", "Template 8.2: Recon section", "Template 8.1: Recon vehicle" } -- table for the red recon
R2A_table_red_IFV = { "Template 9.3: IFV platoon", "Template 9.2: IFV section", "Template 9.1: IFV vehicle" } -- table for the red IFV
R2A_table_red_MBT = { "Template 10.3: MBT platoon", "Template 10.2: MBT section", "Template 10.1: MBT vehicle" } -- table for the red MBT
R2A_table_red_AAA = { "Template 11.1: AAA vehicle", "Template 11.2 AAA vehicle on Ural", "Template 11.3 AAA vehicle with support", "Template 12.1: SA-13 vehicle" } -- table for the red AAA
R2A_table_red_misc = { "Template 13.1: logistics vehicle", "Template 13.2: logistics section", "Template 14.1: C2 vehicle", "Template 15.1: Artillery vehicle", "Template 15.2: Artillery section" } -- table for the red misc
-- RED TABLE


-- BLUE Table
R2A_table_blue_recon = { "Template 1.1: Recon vehicle", "Template 1.2: Recon section", "Template 1.3: Recon platoon" } -- table for the blue recon
R2A_table_blue_IFV = { "Template 2.1: IFV vehicle", "Template 2.2: IFV section", "Template 2.3: IFV platoon" } -- table for the blue IFV
R2A_table_blue_MBT = { "Template 3.1: MBT vehicle", "Template 3.2: MBT section", "Template 3.3: MBT platoon" } -- table for the blue MBT 
-- BLUE Table

-- random setup for Range 2A.1
function SpawnTargets_R2A ()
-- RED Spawners
R2A_red_recon = SPAWN:New("R2A_red_recon"):InitRandomizeTemplate(R2A_table_red_recon):InitRandomizeRoute(3,0,100):Spawn()  
R2A_red_IFV = SPAWN:New("R2A_red_IFV"):InitRandomizeTemplate(R2A_table_red_IFV):InitRandomizeRoute(3,0,100):Spawn()
R2A_red_MBT = SPAWN:New("R2A_red_MBT"):InitRandomizeTemplate(R2A_table_red_MBT):InitRandomizeRoute(3,0,100):Spawn()
R2A_red_AAA = SPAWN:New("R2A_red_AAA"):InitRandomizeTemplate(R2A_table_red_AAA):InitRandomizeRoute(3,0,100):Spawn()
R2A_red_misc = SPAWN:New("R2A_red_misc"):InitRandomizeTemplate(R2A_table_red_misc):InitRandomizeRoute(3,0,100):Spawn()
-- RED Spawners
-- BLUE Spawners
R2A_blue_recon = SPAWN:New("R2A_blue_recon"):InitRandomizeTemplate(R2A_table_blue_recon):InitRandomizeRoute(3,0,100):Spawn()
R2A_blue_IFV = SPAWN:New("R2A_blue_IFV"):InitRandomizeTemplate(R2A_table_blue_IFV):InitRandomizeRoute(3,0,100):Spawn()
R2A_blue_MBT = SPAWN:New("R2A_blue_MBT"):InitRandomizeTemplate(R2A_table_blue_MBT):InitRandomizeRoute(3,0,100):Spawn()
-- BLUE Spawners
spawn_menu_R2A:Remove()
end

spawn_menu_R2A = MENU_MISSION_COMMAND:New("Set up Range 2A.1 dynamically",Menu_Range_R2A,SpawnTargets_R2A)

-- random setup for Range 2A.1



function SpawnTargets_R2A_2 ()
-- RED Spawners
spawn_menu_R2A_2:Remove()
R2A_2_red_recon = SPAWN:New("R2A_2_red_recon"):InitRandomizeTemplate(R2A_table_red_recon):Spawn()  
R2A_2_red_IFV = SPAWN:New("R2A_2_red_IFV"):InitRandomizeTemplate(R2A_table_red_IFV):Spawn()
R2A_2_red_MBT = SPAWN:New("R2A_2_red_MBT"):InitRandomizeTemplate(R2A_table_red_MBT):Spawn()
R2A_2_red_AAA = SPAWN:New("R2A_2_red_AAA"):InitRandomizeTemplate(R2A_table_red_AAA):Spawn()
R2A_2_red_misc = SPAWN:New("R2A_2_red_misc"):InitRandomizeTemplate(R2A_table_red_misc):Spawn()
-- RED Spawners

end
spawn_menu_R2A_2 = MENU_MISSION_COMMAND:New("Set up Targets at 2A.2 dynamically",Menu_Range_R2A,SpawnTargets_R2A_2)

-- Range Auto Setup -- 



