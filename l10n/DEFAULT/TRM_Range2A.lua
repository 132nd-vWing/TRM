--- Range 2A---

-- ON DEMAND SPAWNING -- 
BlueSpawnerR2A = UNIT:FindByName("BlueInfantryR2A")
RedSpawnerR2A = UNIT:FindByName("REDInfantryR2A")

 Recon_HMMWV_vehicle_R2A = SPAWN:NewWithAlias("_ON_DEMAND_1: Recon_HMMWV_vehicle", "Range2A Target1")
 Recon_HMMWV_section_R2A = SPAWN:NewWithAlias("_ON_DEMAND_1: Recon_HMMWV_section", "Range2A Target2")
 Recon_BRDM_vehicle_R2A = SPAWN:NewWithAlias("_ON_DEMAND_1: Recon_BRDM_vehicle", "Range2A Target3")
 Recon_BRDM_section_R2A = SPAWN:NewWithAlias("_ON_DEMAND_1: Recon_BRDM_section", "Range2A Target4")
 Recon_STRYKER_vehicle_R2A = SPAWN:NewWithAlias("_ON_DEMAND_1: Recon_stryker_vehicle", "Range2A Target5")
 Recon_STRYKER_section_R2A = SPAWN:NewWithAlias("_ON_DEMAND_1: Recon_stryker_section", "Range2A Target6")
 IFV_BMP2_vehicle_R2A = SPAWN:NewWithAlias("_ON_DEMAND_2: IFV_BMP2_vehicle", "Range2A Target7" )
 IFV_BMP2_section_R2A = SPAWN:NewWithAlias("_ON_DEMAND_2: IFV_BMP2_section", "Range2A Target8")
 IFV_LAV25_vehicle_R2A = SPAWN:NewWithAlias("_ON_DEMAND_2: IFV_LAV25_vehicle", "Range2A Target9")
 IFV_LAV25_section_R2A = SPAWN:NewWithAlias("_ON_DEMAND_2: IFV_LAV25_section", "Range2A Target10")
 IFV_BRADLEY_vehicle_R2A = SPAWN:NewWithAlias("_ON_DEMAND_2: IFV_Bradley_vehicle", "Range2A Target11")
 IFV_BRADLEY_section_R2A = SPAWN:NewWithAlias("_ON_DEMAND_2: IFV_Bradley_section", "Range2A Target12")
 IFV_BMP3_vehicle_R2A = SPAWN:NewWithAlias("_ON_DEMAND_2: IFV_BMP3_vehicle", "Range2A Target13")
 IFV_BMP3_section_R2A = SPAWN:NewWithAlias("_ON_DEMAND_2: IFV_BMP3_section", "Range2A Target14")
 IFV_BTR_vehicle_R2A = SPAWN:NewWithAlias("_ON_DEMAND_2: IFV_BTR_vehicle", "Range2A Target15")
 IFV_BTR_section_R2A = SPAWN:NewWithAlias("_ON_DEMAND_2: IFV_BTR_section", "Range2A Target16")
 IFV_M113_vehicle_R2A = SPAWN:NewWithAlias("_ON_DEMAND_2: IFV_M113_vehicle", "Range2A Target17")
 IFV_M113_section_R2A = SPAWN:NewWithAlias("_ON_DEMAND_2: IFV_M113_section", "Range2A Target18")
 MBT_T72_vehicle_R2A = SPAWN:NewWithAlias("_ON_DEMAND_3: MBT_T72_vehicle", "Range2A Target19")
 MBT_T72_section_R2A = SPAWN:NewWithAlias("_ON_DEMAND_3: MBT_T72_section", "Range2A Target20")
 MBT_T80_vehicle_R2A = SPAWN:NewWithAlias("_ON_DEMAND_3: MBT_T80_vehicle", "Range2A Target21")
 MBT_T80_section_R2A = SPAWN:NewWithAlias("_ON_DEMAND_3: MBT_T80_section", "Range2A Target122")
 MBT_ABRAMS_vehicle_R2A = SPAWN:NewWithAlias("_ON_DEMAND_3: MBT_Abrams_vehicle", "Range2A Target23")
 MBT_ABRAMS_section_R2A = SPAWN:NewWithAlias("_ON_DEMAND_3: MBT_Abrams_section", "Range2A Target24")
 MBT_LEO2_vehicle_R2A = SPAWN:NewWithAlias("_ON_DEMAND_3: MBT_Leo2_vehicle", "Range2A Target25")
 MBT_LEO2_section_R2A = SPAWN:NewWithAlias("_ON_DEMAND_3: MBT_Leo2_section", "Range2A Target26")
 MISC_SHILKA_vehicle_R2A = SPAWN:NewWithAlias("_ON_DEMAND_4: Misc_Shilka_vehicle", "Range2A Target27")
 MISC_C2_vehicle_R2A = SPAWN:NewWithAlias("_ON_DEMAND_4: Misc_C2_vehicle", "Range2A Target28")
 MISC_ARTY_vehicle_R2A = SPAWN:NewWithAlias("_ON_DEMAND_4: Misc_Arty_vehicle", "Range2A Target29")
 MISC_MLRS_vehicle_R2A = SPAWN:NewWithAlias("_ON_DEMAND_4: Misc_MLRS_vehicle", "Range2A Target30")
 MISC_SA13_vehicle_R2A = SPAWN:NewWithAlias("_ON_DEMAND_4: Misc_SA-13_vehicle", "Range2A Target31")
 MISC_SA19_vehicle_R2A = SPAWN:NewWithAlias("_ON_DEMAND_4: Misc_SA-19_vehicle", "Range2A Target32")



function _ON_DEMAND_1_Recon_HMMWV_section_R2A ()
Recon_HMMWV_section_R2A:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR2A)
Recon_HMMWV_section_R2A:OnSpawnGroup(function(group)
group:OptionDisperseOff()
end)
end

 function _ON_DEMAND_1_Recon_BRDM_vehicle_R2A ()
Recon_BRDM_vehicle_R2A:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR2A)
Recon_BRDM_vehicle_R2A:OnSpawnGroup(function(group)
group:OptionDisperseOff()
end)
end

 function _ON_DEMAND_1_Recon_BRDM_section_R2A ()
Recon_BRDM_section_R2A:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR2A)
Recon_BRDM_section_R2A:OnSpawnGroup(function(group)
group:OptionDisperseOff()
end)
end

 function _ON_DEMAND_1_Recon_STRYKER_vehicle_R2A ()
Recon_STRYKER_vehicle_R2A:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR2A)
Recon_STRYKER_vehicle_R2A:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
end

 function _ON_DEMAND_1_Recon_STRYKER_section_R2A ()
Recon_STRYKER_section_R2A:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR2A)
Recon_STRYKER_section_R2A:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
end

 function _ON_DEMAND_2_IFV_BMP2_vehicle_R2A ()
IFV_BMP2_vehicle_R2A:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR2A)
IFV_BMP2_vehicle_R2A:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
end
 function _ON_DEMAND_2_IFV_BMP2_section_R2A ()
IFV_BMP2_section_R2A:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR2A)
IFV_BMP2_section_R2A:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
end
 function _ON_DEMAND_2_IFV_LAV25_vehicle_R2A ()
IFV_LAV25_vehicle_R2A:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR2A)
IFV_LAV25_vehicle_R2A:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
end

 function _ON_DEMAND_2_IFV_LAV25_section_R2A ()
IFV_LAV25_section_R2A:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR2A)
IFV_LAV25_section_R2A:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
end

 function _ON_DEMAND_2_IFV_BRADLEY_vehicle_R2A ()
IFV_BRADLEY_vehicle_R2A:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR2A)
IFV_BRADLEY_vehicle_R2A:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
end

 function _ON_DEMAND_2_IFV_BRADLEY_section_R2A ()
IFV_BRADLEY_section_R2A:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR2A)
IFV_BRADLEY_section_R2A:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
end

 function _ON_DEMAND_2_IFV_BMP3_vehicle_R2A ()
IFV_BMP3_vehicle_R2A:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR2A)
IFV_BMP3_vehicle_R2A:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
end

 function _ON_DEMAND_2_IFV_BMP3_section_R2A ()
IFV_BMP3_section_R2A:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR2A)
IFV_BMP3_section_R2A:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
end

 function _ON_DEMAND_2_IFV_BTR_vehicle_R2A ()
IFV_BTR_vehicle_R2A:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR2A)
IFV_BTR_vehicle_R2A:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
end

 function _ON_DEMAND_2_IFV_BTR_section_R2A ()
IFV_BTR_section_R2A:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR2A)
IFV_BTR_section_R2A:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
end

 function _ON_DEMAND_2_IFV_M113_vehicle_R2A ()
IFV_BTR_vehicle_R2A:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR2A)
IFV_BTR_vehicle_R2A:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
end

 function _ON_DEMAND_2_IFV_M113_section_R2A ()
IFV_BTR_section_R2A:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR2A)
IFV_BTR_section_R2A:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
end

 function _ON_DEMAND_3_MBT_T72_vehicle_R2A ()
MBT_T72_vehicle_R2A:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR2A)
MBT_T72_vehicle_R2A:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
end

 function _ON_DEMAND_3_MBT_T72_section_R2A ()
MBT_T72_section_R2A:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR2A)
MBT_T72_section_R2A:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
end

 function _ON_DEMAND_3_MBT_T80_vehicle_R2A ()
MBT_T80_vehicle_R2A:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR2A)
MBT_T80_vehicle_R2A:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
end

 function _ON_DEMAND_3_MBT_T80_section_R2A ()
MBT_T80_section_R2A:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR2A)
MBT_T80_section_R2A:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
end

 function _ON_DEMAND_3_MBT_ABRAMS_vehicle_R2A ()
MBT_ABRAMS_vehicle_R2A:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR2A)
MBT_ABRAMS_vehicle_R2A:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
end

 function _ON_DEMAND_3_MBT_ABRAMS_section_R2A ()
MBT_ABRAMS_section_R2A:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR2A)
MBT_ABRAMS_section_R2A:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
end

 function _ON_DEMAND_3_MBT_LEO2_vehicle_R2A ()
MBT_LEO2_vehicle_R2A:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR2A)
MBT_LEO2_vehicle_R2A:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
end

 function _ON_DEMAND_3_MBT_LEO2_section_R2A ()
MBT_LEO2_section_R2A:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR2A)
MBT_LEO2_section_R2A:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
end


 function _ON_DEMAND_4_MISC_SHILKA_vehicle_R2A ()
MISC_SHILKA_vehicle_R2A:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR2A)
MISC_SHILKA_vehicle_R2A:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
end

 function _ON_DEMAND_4_MISC_C2_vehicle_R2A ()
MISC_C2_vehicle_R2A:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR2A)
MISC_C2_vehicle_R2A:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
end

 function _ON_DEMAND_4_MISC_ARTY_vehicle_R2A ()
MISC_ARTY_vehicle_R2A:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR2A)
MISC_ARTY_vehicle_R2A:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
end

 function _ON_DEMAND_4_MISC_MLRS_vehicle_R2A ()
MISC_MLRS_vehicle_R2A:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR2A)
MISC_MLRS_vehicle_R2A:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
end

 function _ON_DEMAND_4_MISC_SA13_vehicle_R2A ()
MISC_SA13_vehicle_R2A:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR2A)
MISC_SA13_vehicle_R2A:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
end

 function _ON_DEMAND_4_MISC_SA19_vehicle_R2A ()
MISC_SA19_vehicle_R2A:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR2A)
MISC_SA19_vehicle_R2A:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
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
R2A_red_recon = SPAWN:NewWithAlias("R2A_red_recon", "Range2A Target33"):InitRandomizeTemplate(R2A_table_red_recon):InitRandomizeRoute(3,0,100):Spawn()  
R2A_red_recon:OptionDisperseOff()
R2A_red_IFV = SPAWN:NewWithAlias("R2A_red_IFV", "Range2A Target34"):InitRandomizeTemplate(R2A_table_red_IFV):InitRandomizeRoute(3,0,100):Spawn()
R2A_red_IFV:OptionDisperseOff()
R2A_red_MBT = SPAWN:NewWithAlias("R2A_red_MBT", "Range2A Target35"):InitRandomizeTemplate(R2A_table_red_MBT):InitRandomizeRoute(3,0,100):Spawn()
R2A_red_MBT:OptionDisperseOff()
R2A_red_AAA = SPAWN:NewWithAlias("R2A_red_AAA", "Range2A Target36"):InitRandomizeTemplate(R2A_table_red_AAA):InitRandomizeRoute(3,0,100):Spawn()
R2A_red_AAA:OptionDisperseOff()
R2A_red_misc = SPAWN:NewWithAlias("R2A_red_misc", "Range2A Target37"):InitRandomizeTemplate(R2A_table_red_misc):InitRandomizeRoute(3,0,100):Spawn()
R2A_red_misc:OptionDisperseOff()

-- RED Spawners
-- BLUE Spawners
R2A_blue_recon = SPAWN:NewWithAlias("R2A_blue_recon", "Range2A Target38"):InitRandomizeTemplate(R2A_table_blue_recon):InitRandomizeRoute(3,0,100):Spawn()
R2A_blue_IFV = SPAWN:NewWithAlias("R2A_blue_IFV", "Range2A Target39"):InitRandomizeTemplate(R2A_table_blue_IFV):InitRandomizeRoute(3,0,100):Spawn()
R2A_blue_MBT = SPAWN:NewWithAlias("R2A_blue_MBT", "Range2A Target40"):InitRandomizeTemplate(R2A_table_blue_MBT):InitRandomizeRoute(3,0,100):Spawn()
R2A_blue_recon:OptionDisperseOff()
R2A_blue_IFV:OptionDisperseOff()
R2A_blue_MBT:OptionDisperseOff()
-- BLUE Spawners
spawn_menu_R2A:Remove()
end

spawn_menu_R2A = MENU_MISSION_COMMAND:New("Set up Range 2A.1 dynamically",Menu_Range_R2A,SpawnTargets_R2A)

-- random setup for Range 2A.2
function SpawnTargets_R2A_2 ()
-- RED Spawners
spawn_menu_R2A_2:Remove()
R2A_2_red_recon = SPAWN:NewWithAlias("R2A_2_red_recon", "Range2A Target41"):InitRandomizeTemplate(R2A_table_red_recon):Spawn()  
R2A_2_red_recon:OptionDisperseOff()
R2A_2_red_IFV = SPAWN:NewWithAlias("R2A_2_red_IFV", "Range2A Target42"):InitRandomizeTemplate(R2A_table_red_IFV):Spawn()
R2A_2_red_IFV:OptionDisperseOff()
R2A_2_red_MBT = SPAWN:NewWithAlias("R2A_2_red_MBT", "Range2A Target43"):InitRandomizeTemplate(R2A_table_red_MBT):Spawn()
R2A_2_red_MBT:OptionDisperseOff()
R2A_2_red_AAA = SPAWN:NewWithAlias("R2A_2_red_AAA", "Range2A Target44"):InitRandomizeTemplate(R2A_table_red_AAA):Spawn()
R2A_2_red_AAA:OptionDisperseOff()
R2A_2_red_misc = SPAWN:NewWithAlias("R2A_2_red_misc", "Range2A Target45"):InitRandomizeTemplate(R2A_table_red_misc):Spawn()
R2A_2_red_misc:OptionDisperseOff()

-- RED Spawners

end
spawn_menu_R2A_2 = MENU_MISSION_COMMAND:New("Set up Targets at 2A.2 dynamically",Menu_Range_R2A,SpawnTargets_R2A_2)

-- Range Auto Setup -- 
-- move targets 

Range2A_Groups_movetimer = 5 -- time in MINUTES for randomized movement
Range2A_Groups_RandomFaktor = 0.5 -- Timer above ranomize Faktor
Range2A_Groups_Distance_Min = 50 -- min Distance in Meters for randomized movement
Range2A_Groups_Distance_Max = 300 -- max Distance in Meters for randomized movement



function moveRange2AGroups()

Range2A_Groups:ForEachGroupAlive(function (move)

-- Get the current coordinate of GroundGroup
local FromCoord = move:GetCoordinate()


-- From the current coordinate, calculate a random vector 2A00m-2A000m away with an random angle.
local ToCoord = FromCoord:Translate( math.random(Range2A_Groups_Distance_Min,Range2A_Groups_Distance_Max), math.random(1,360) )
move:RouteGroundTo(ToCoord,20,5)

end)
end
-- move targets


Range2A_Groups_movetimer = 5 -- time in MINUTES for randomized movement
Range2A_Groups_RandomFaktor = 0.5 -- Timer above ranomize Faktor
Range2A_Groups_Distance_Min = 50 -- min Distance in Meters for randomized movement
Range2A_Groups_Distance_Max = 300 -- max Distance in Meters for randomized movement




-- move targets_periodically 
function moveRange2AGroups_periodically_start()
  spawn_menu_OD_Range2A_MoveODSpawns_periodically_stop = MENU_MISSION_COMMAND:New("Disable Spawned Group changing Position every " ..Range2A_Groups_movetimer.."Minutes",Menu_Range_R2A,moveRange2AGroups_periodically_stop)
  spawn_menu_OD_Range2A_MoveODSpawns_periodically_start:Remove()
  Range2A_PositionChange =
    SCHEDULER:New(nil,function ()
      Range2A_Groups:ForEachGroupAlive(function (move)
        -- Get the current coordinate of GroundGroup
        local FromCoord = move:GetCoordinate()
        -- From the current coordinate, calculate a random vector 2A00m-2A000m away with an random angle.
        local ToCoord = FromCoord:Translate( math.random(Range2A_Groups_Distance_Min,Range2A_Groups_Distance_Max), math.random(1,360) )
        move:RouteGroundTo(ToCoord,20,5)
      end)
    end,{},5,Range2A_Groups_movetimer*60,Range2A_Groups_RandomFaktor)
end

function moveRange2AGroups_periodically_stop()
spawn_menu_OD_Range2A_MoveODSpawns_periodically_stop:Remove()
spawn_menu_OD_Range2A_MoveODSpawns_periodically_start = MENU_MISSION_COMMAND:New("Spawned Groups Change Position every 5 Minutes",Menu_Range_R2A,moveRange2AGroups_periodically_start)
Range2A_PositionChange:Stop()
end

spawn_menu_OD_Range2A_MoveODSpawns = MENU_MISSION_COMMAND:New("Move Positions of Spawned Groups",Menu_Range_R2A,moveRange2AGroups)
spawn_menu_OD_Range2A_MoveODSpawns_periodically_start = MENU_MISSION_COMMAND:New("Spawned Groups Change Position every 5 Minutes",Menu_Range_R2A,moveRange2AGroups_periodically_start)

-- move targets_periodically


