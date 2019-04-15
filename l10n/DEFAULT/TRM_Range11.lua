-- Range 11 --

-- ON DEMAND SPAWNING --
BlueSpawnerR111 = UNIT:FindByName("BlueInfantryR11")
RedSpawnerR111 = UNIT:FindByName("RedInfantryR11")
Recon_HMMWV_vehicle_R11 = SPAWN:NewWithAlias("_ON_DEMAND_1: Recon_HMMWV_vehicle", "Range11 Target1")
Recon_HMMWV_section_R11 = SPAWN:NewWithAlias("_ON_DEMAND_1: Recon_HMMWV_section", "Range11 Target2")
Recon_BRDM_vehicle_R11 = SPAWN:NewWithAlias("_ON_DEMAND_1: Recon_BRDM_vehicle", "Range11 Target3")
Recon_BRDM_section_R11 = SPAWN:NewWithAlias("_ON_DEMAND_1: Recon_BRDM_section", "Range11 Target4")
Recon_STRYKER_vehicle_R11 = SPAWN:NewWithAlias("_ON_DEMAND_1: Recon_stryker_vehicle", "Range11 Target5")
Recon_STRYKER_section_R11 = SPAWN:NewWithAlias("_ON_DEMAND_1: Recon_stryker_section", "Range11 Target6")
IFV_BMP2_vehicle_R11 = SPAWN:NewWithAlias("_ON_DEMAND_2: IFV_BMP2_vehicle", "Range11 Target7" )
IFV_BMP2_section_R11 = SPAWN:NewWithAlias("_ON_DEMAND_2: IFV_BMP2_section", "Range11 Target8")
IFV_LAV25_vehicle_R11 = SPAWN:NewWithAlias("_ON_DEMAND_2: IFV_LAV25_vehicle", "Range11 Target9")
IFV_LAV25_section_R11 = SPAWN:NewWithAlias("_ON_DEMAND_2: IFV_LAV25_section", "Range11 Target10")
IFV_BRADLEY_vehicle_R11 = SPAWN:NewWithAlias("_ON_DEMAND_2: IFV_Bradley_vehicle", "Range11 Target11")
IFV_BRADLEY_section_R11 = SPAWN:NewWithAlias("_ON_DEMAND_2: IFV_Bradley_section", "Range11 Target12")
IFV_BMP3_vehicle_R11 = SPAWN:NewWithAlias("_ON_DEMAND_2: IFV_BMP3_vehicle", "Range11 Target13")
IFV_BMP3_section_R11 = SPAWN:NewWithAlias("_ON_DEMAND_2: IFV_BMP3_section", "Range11 Target14")
IFV_BTR_vehicle_R11 = SPAWN:NewWithAlias("_ON_DEMAND_2: IFV_BTR_vehicle", "Range11 Target15")
IFV_BTR_section_R11 = SPAWN:NewWithAlias("_ON_DEMAND_2: IFV_BTR_section", "Range11 Target16")
IFV_M113_vehicle_R11 = SPAWN:NewWithAlias("_ON_DEMAND_2: IFV_M113_vehicle", "Range11 Target17")
IFV_M113_section_R11 = SPAWN:NewWithAlias("_ON_DEMAND_2: IFV_M113_section", "Range11 Target18")
MBT_T72_vehicle_R11 = SPAWN:NewWithAlias("_ON_DEMAND_3: MBT_T72_vehicle", "Range11 Target19")
MBT_T72_section_R11 = SPAWN:NewWithAlias("_ON_DEMAND_3: MBT_T72_section", "Range11 Target20")
MBT_T80_vehicle_R11 = SPAWN:NewWithAlias("_ON_DEMAND_3: MBT_T80_vehicle", "Range11 Target21")
MBT_T80_section_R11 = SPAWN:NewWithAlias("_ON_DEMAND_3: MBT_T80_section", "Range11 Target122")
MBT_ABRAMS_vehicle_R11 = SPAWN:NewWithAlias("_ON_DEMAND_3: MBT_Abrams_vehicle", "Range11 Target23")
MBT_ABRAMS_section_R11 = SPAWN:NewWithAlias("_ON_DEMAND_3: MBT_Abrams_section", "Range11 Target24")
MBT_LEO2_vehicle_R11 = SPAWN:NewWithAlias("_ON_DEMAND_3: MBT_Leo2_vehicle", "Range11 Target25")
MBT_LEO2_section_R11 = SPAWN:NewWithAlias("_ON_DEMAND_3: MBT_Leo2_section", "Range11 Target26")
MISC_SHILKA_vehicle_R11 = SPAWN:NewWithAlias("_ON_DEMAND_4: Misc_Shilka_vehicle", "Range11 Target27")
MISC_C2_vehicle_R11 = SPAWN:NewWithAlias("_ON_DEMAND_4: Misc_C2_vehicle", "Range11 Target28")
MISC_ARTY_vehicle_R11 = SPAWN:NewWithAlias("_ON_DEMAND_4: Misc_Arty_vehicle", "Range11 Target29")
MISC_MLRS_vehicle_R11 = SPAWN:NewWithAlias("_ON_DEMAND_4: Misc_MLRS_vehicle", "Range11 Target30")
MISC_SA13_vehicle_R11 = SPAWN:NewWithAlias("_ON_DEMAND_4: Misc_SA-13_vehicle", "Range11 Target31")
MISC_SA19_vehicle_R11 = SPAWN:NewWithAlias("_ON_DEMAND_4: Misc_SA-19_vehicle", "Range11 Target32")


function _ON_DEMAND_1_Recon_HMMWV_vehicle_R11 ()
  Recon_HMMWV_vehicle_R11:OnSpawnGroup(function(group)
    group:OptionDisperseOff()
  end)
  Recon_HMMWV_vehicle_R11:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR111)
end

function _ON_DEMAND_1_Recon_HMMWV_section_R11 ()
  Recon_HMMWV_section_R11:OnSpawnGroup(function(group)
    group:OptionDisperseOff()
  end)
  Recon_HMMWV_section_R11:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR111)
end

function _ON_DEMAND_1_Recon_BRDM_vehicle_R11 ()
  Recon_BRDM_vehicle_R11:OnSpawnGroup(function(group)
    group:OptionDisperseOff()
  end)
  Recon_BRDM_vehicle_R11:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR111)
end

function _ON_DEMAND_1_Recon_BRDM_section_R11 ()
  Recon_BRDM_section_R11:OnSpawnGroup(function(group)
    group:OptionDisperseOff()
  end)
  Recon_BRDM_section_R11:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR111)
end

function _ON_DEMAND_1_Recon_STRYKER_vehicle_R11 ()
  Recon_STRYKER_vehicle_R11:OnSpawnGroup(function(group)
    group:OptionDisperseOff()
  end)
  Recon_STRYKER_vehicle_R11:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR111)
end

function _ON_DEMAND_1_Recon_STRYKER_section_R11 ()
  Recon_STRYKER_section_R11:OnSpawnGroup(function(group)
    group:OptionDisperseOff()
  end)
  Recon_STRYKER_section_R11:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR111)
end

function _ON_DEMAND_2_IFV_BMP2_vehicle_R11 ()
  IFV_BMP2_vehicle_R11:OnSpawnGroup(function(group)
    group:OptionDisperseOff()
  end)
  IFV_BMP2_vehicle_R11:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR111)
end

function _ON_DEMAND_2_IFV_BMP2_section_R11 ()
  IFV_BMP2_section_R11:OnSpawnGroup(function(group)
    group:OptionDisperseOff()
  end)
  IFV_BMP2_section_R11:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR111)
end

function _ON_DEMAND_2_IFV_LAV25_vehicle_R11 ()
  IFV_LAV25_vehicle_R11:OnSpawnGroup(function(group)
    group:OptionDisperseOff()
  end)
  IFV_LAV25_vehicle_R11:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR111)
end

function _ON_DEMAND_2_IFV_LAV25_section_R11 ()
  IFV_LAV25_section_R11:OnSpawnGroup(function(group)
    group:OptionDisperseOff()
  end)
  IFV_LAV25_section_R11:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR111)
end

function _ON_DEMAND_2_IFV_BRADLEY_vehicle_R11 ()
  IFV_BRADLEY_vehicle_R11:OnSpawnGroup(function(group)
    group:OptionDisperseOff()
  end)
  IFV_BRADLEY_vehicle_R11:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR111)
end

function _ON_DEMAND_2_IFV_BRADLEY_section_R11 ()
  IFV_BRADLEY_section_R11:OnSpawnGroup(function(group)
    group:OptionDisperseOff()
  end)
  IFV_BRADLEY_section_R11:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR111)
end

function _ON_DEMAND_2_IFV_BMP3_vehicle_R11 ()
  IFV_BMP3_vehicle_R11:OnSpawnGroup(function(group)
    group:OptionDisperseOff()
  end)
  IFV_BMP3_vehicle_R11:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR111)
end

function _ON_DEMAND_2_IFV_BMP3_section_R11 ()
  IFV_BMP3_section_R11:OnSpawnGroup(function(group)
    group:OptionDisperseOff()
  end)
  IFV_BMP3_section_R11:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR111)
end

function _ON_DEMAND_2_IFV_BTR_vehicle_R11 ()
  IFV_BTR_vehicle_R11:OnSpawnGroup(function(group)
    group:OptionDisperseOff()
  end)
  IFV_BTR_vehicle_R11:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR111)
end

function _ON_DEMAND_2_IFV_BTR_section_R11 ()
  IFV_BTR_section_R11:OnSpawnGroup(function(group)
    group:OptionDisperseOff()
  end)
  IFV_BTR_section_R11:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR111)
end

function _ON_DEMAND_2_IFV_M113_vehicle_R11 ()
  IFV_BTR_vehicle_R11:OnSpawnGroup(function(group)
    group:OptionDisperseOff()
  end)
  IFV_BTR_vehicle_R11:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR111)
end

function _ON_DEMAND_2_IFV_M113_section_R11 ()
  IFV_BTR_section_R11:OnSpawnGroup(function(group)
    group:OptionDisperseOff()
  end)
  IFV_BTR_section_R11:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR111)
end

function _ON_DEMAND_3_MBT_T72_vehicle_R11 ()
  MBT_T72_vehicle_R11:OnSpawnGroup(function(group)
    group:OptionDisperseOff()
  end)
  MBT_T72_vehicle_R11:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR111)
end

function _ON_DEMAND_3_MBT_T72_section_R11 ()
  MBT_T72_section_R11:OnSpawnGroup(function(group)
    group:OptionDisperseOff()
  end)
  MBT_T72_section_R11:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR111)
end

function _ON_DEMAND_3_MBT_T80_vehicle_R11 ()
  MBT_T80_vehicle_R11:OnSpawnGroup(function(group)
    group:OptionDisperseOff()
  end)
  MBT_T80_vehicle_R11:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR111)
end

function _ON_DEMAND_3_MBT_T80_section_R11 ()
  MBT_T80_section_R11:OnSpawnGroup(function(group)
    group:OptionDisperseOff()
  end)
  MBT_T80_section_R11:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR111)
end

function _ON_DEMAND_3_MBT_ABRAMS_vehicle_R11 ()
  MBT_ABRAMS_vehicle_R11:OnSpawnGroup(function(group)
    group:OptionDisperseOff()
  end)
  MBT_ABRAMS_vehicle_R11:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR111)
end

function _ON_DEMAND_3_MBT_ABRAMS_section_R11 ()
  MBT_ABRAMS_section_R11:OnSpawnGroup(function(group)
    group:OptionDisperseOff()
  end)
  MBT_ABRAMS_section_R11:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR111)
end

function _ON_DEMAND_3_MBT_LEO2_vehicle_R11 ()
  MBT_LEO2_vehicle_R11:OnSpawnGroup(function(group)
    group:OptionDisperseOff()
  end)
  MBT_LEO2_vehicle_R11:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR111)
end

function _ON_DEMAND_3_MBT_LEO2_section_R11 ()
  MBT_LEO2_section_R11:OnSpawnGroup(function(group)
    group:OptionDisperseOff()
  end)
  MBT_LEO2_section_R11:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR111)
end


function _ON_DEMAND_4_MISC_SHILKA_vehicle_R11 ()
  MISC_SHILKA_vehicle_R11:OnSpawnGroup(function(group)
    group:OptionDisperseOff()
  end)
  MISC_SHILKA_vehicle_R11:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR111)
end

function _ON_DEMAND_4_MISC_C2_vehicle_R11 ()
  MISC_C2_vehicle_R11:OnSpawnGroup(function(group)
    group:OptionDisperseOff()
  end)
  MISC_C2_vehicle_R11:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR111)
end

function _ON_DEMAND_4_MISC_ARTY_vehicle_R11 ()
  MISC_ARTY_vehicle_R11:OnSpawnGroup(function(group)
    group:OptionDisperseOff()
  end)
  MISC_ARTY_vehicle_R11:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR111)
end

function _ON_DEMAND_4_MISC_MLRS_vehicle_R11 ()
  MISC_MLRS_vehicle_R11:OnSpawnGroup(function(group)
    group:OptionDisperseOff()
  end)
  MISC_MLRS_vehicle_R11:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR111)
end

function _ON_DEMAND_4_MISC_SA13_vehicle_R11 ()
  MISC_SA13_vehicle_R11:OnSpawnGroup(function(group)
    group:OptionDisperseOff()
  end)
  MISC_SA13_vehicle_R11:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR111)
end

function _ON_DEMAND_4_MISC_SA19_vehicle_R11 ()
  MISC_SA19_vehicle_R11:OnSpawnGroup(function(group)
    group:OptionDisperseOff()
  end)
  MISC_SA19_vehicle_R11:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR111)
end
-- ON DEMAND SPAWNING --

-- Range Menu--
if Menu_Range_Options  ~= true then
  Menu_Range_Options = MENU_MISSION:New("Range Options")
else
end
-- Range Options --

Menu_Range_R11 = MENU_MISSION:New("Range 11", Menu_Range_Options)

spawn_menu_OD_R11 = MENU_MISSION:New("On Demand Spawning",Menu_Range_R11)
spawn_menu_OD_Recon_R11 = MENU_MISSION:New("On Demand - RECON",spawn_menu_OD_R11)
spawn_menu_OD_IFV_R11 = MENU_MISSION:New("On Demand - IFV",spawn_menu_OD_R11)
spawn_menu_OD_IFV_R11_BMP2 = MENU_MISSION:New("On Demand - IFV - BMP2",spawn_menu_OD_IFV_R11)
spawn_menu_OD_IFV_R11_LAV25 = MENU_MISSION:New("On Demand - IFV - LAV25",spawn_menu_OD_IFV_R11)
spawn_menu_OD_IFV_R11_BRADLEY = MENU_MISSION:New("On Demand - IFV - Bradley",spawn_menu_OD_IFV_R11)
spawn_menu_OD_IFV_R11_BMP3 = MENU_MISSION:New("On Demand - IFV - BMP3",spawn_menu_OD_IFV_R11)
spawn_menu_OD_IFV_R11_BTR = MENU_MISSION:New("On Demand - IFV - BTR",spawn_menu_OD_IFV_R11)
spawn_menu_OD_IFV_R11_M113 = MENU_MISSION:New("On Demand - IFV - M113",spawn_menu_OD_IFV_R11)
spawn_menu_OD_MBT_R11 = MENU_MISSION:New("On Demand - MBT",spawn_menu_OD_R11)
spawn_menu_OD_MBT_R11_T72 = MENU_MISSION:New("On Demand - MBT- T72",spawn_menu_OD_MBT_R11)
spawn_menu_OD_MBT_R11_T80 = MENU_MISSION:New("On Demand - MBT -T80",spawn_menu_OD_MBT_R11)
spawn_menu_OD_MBT_R11_ABRAMS = MENU_MISSION:New("On Demand - MBT - Abrams",spawn_menu_OD_MBT_R11)
spawn_menu_OD_MBT_R11_LEO2 = MENU_MISSION:New("On Demand - MBT - Leopard2",spawn_menu_OD_MBT_R11)
spawn_menu_OD_MISC_R11 = MENU_MISSION:New("On Demand - MISC",spawn_menu_OD_R11)   

-- ON DEMAND SPAWNING -- 


--local menu_ON_DEMAND_1_Recon_HMMWV_vehicle_R11 = MENU_MISSION_COMMAND:New("Spawn Recon HMMWV Vehicle",spawn_menu_OD_Recon_R11,_ON_DEMAND_1_Recon_HMMWV_vehicle_R11)
local menu_ON_DEMAND_1_Recon_HMMWV_section_R11 = MENU_MISSION_COMMAND:New("Spawn Recon HMMWV Section",spawn_menu_OD_Recon_R11,_ON_DEMAND_1_Recon_HMMWV_section_R11)
--local menu_ON_DEMAND_1_Recon_BRDM_vehicle_R11 = MENU_MISSION_COMMAND:New("Spawn Recon BRDM Vehicle",spawn_menu_OD_Recon_R11,_ON_DEMAND_1_Recon_BRDM_vehicle_R11)
local menu_ON_DEMAND_1_Recon_BRDM_section_R11 = MENU_MISSION_COMMAND:New("Spawn Recon BRDM Section",spawn_menu_OD_Recon_R11,_ON_DEMAND_1_Recon_BRDM_section_R11)
--local menu_ON_DEMAND_1_Recon_STRYKER_vehicle_R11 = MENU_MISSION_COMMAND:New("Spawn Recon STRYKER Vehicle",spawn_menu_OD_Recon_R11,_ON_DEMAND_1_Recon_STRYKER_vehicle_R11)
local menu_ON_DEMAND_1_Recon_STRYKER_section_R11 = MENU_MISSION_COMMAND:New("Spawn Recon STRYKER Section",spawn_menu_OD_Recon_R11,_ON_DEMAND_1_Recon_STRYKER_section_R11)

--local menu_ON_DEMAND_2_IFV_BMP2_vehicle_R11 = MENU_MISSION_COMMAND:New("Spawn IFV BMP2 Vehicle",spawn_menu_OD_IFV_R11_BMP2,_ON_DEMAND_2_IFV_BMP2_vehicle_R11)
local menu_ON_DEMAND_2_IFV_BMP2_section_R11 = MENU_MISSION_COMMAND:New("Spawn IFV BMP2 Section",spawn_menu_OD_IFV_R11_BMP2,_ON_DEMAND_2_IFV_BMP2_section_R11)
--local menu_ON_DEMAND_2_IFV_LAV25_vehicle_R11 = MENU_MISSION_COMMAND:New("Spawn IFV LAV25 Vehicle",spawn_menu_OD_IFV_R11_LAV25,_ON_DEMAND_2_IFV_LAV25_vehicle_R11)
local menu_ON_DEMAND_2_IFV_LAV25_section_R11 = MENU_MISSION_COMMAND:New("Spawn IFV LAV25 Section",spawn_menu_OD_IFV_R11_LAV25,_ON_DEMAND_2_IFV_LAV25_section_R11)
--local menu_ON_DEMAND_2_IFV_BRADLEY_vehicle_R11 = MENU_MISSION_COMMAND:New("Spawn IFV BRADLEY Vehicle",spawn_menu_OD_IFV_R11_BRADLEY,_ON_DEMAND_2_IFV_BRADLEY_vehicle_R11)
local menu_ON_DEMAND_2_IFV_BRADLEY_section_R11 = MENU_MISSION_COMMAND:New("Spawn IFV BRADLEY Section",spawn_menu_OD_IFV_R11_BRADLEY,_ON_DEMAND_2_IFV_BRADLEY_section_R11)
--local menu_ON_DEMAND_2_IFV_BMP3_vehicle_R11 = MENU_MISSION_COMMAND:New("Spawn IFV BMP3 Vehicle",spawn_menu_OD_IFV_R11_BMP3,_ON_DEMAND_2_IFV_BMP3_vehicle_R11)
local menu_ON_DEMAND_2_IFV_BMP3_section_R11 = MENU_MISSION_COMMAND:New("Spawn IFV BMP3 Section",spawn_menu_OD_IFV_R11_BMP3,_ON_DEMAND_2_IFV_BMP3_section_R11)
--local menu_ON_DEMAND_2_IFV_BTR_vehicle_R11 = MENU_MISSION_COMMAND:New("Spawn IFV BTR Vehicle",spawn_menu_OD_IFV_R11_BTR,_ON_DEMAND_2_IFV_BTR_vehicle_R11)
local menu_ON_DEMAND_2_IFV_BTR_section_R11 = MENU_MISSION_COMMAND:New("Spawn IFV BTR Section",spawn_menu_OD_IFV_R11_BTR,_ON_DEMAND_2_IFV_BTR_section_R11)
--local menu_ON_DEMAND_2_IFV_M113_vehicle_R11 = MENU_MISSION_COMMAND:New("Spawn IFV M113 Vehicle",spawn_menu_OD_IFV_R11_M113,_ON_DEMAND_2_IFV_M113_vehicle_R11)
local menu_ON_DEMAND_2_IFV_M113_section_R11 = MENU_MISSION_COMMAND:New("Spawn IFV M113 Section",spawn_menu_OD_IFV_R11_M113,_ON_DEMAND_2_IFV_M113_section_R11)

--local menu_ON_DEMAND_3_MBT_T72_vehicle_R11 = MENU_MISSION_COMMAND:New("Spawn MBT T72 Vehicle",spawn_menu_OD_MBT_R1_T72,_ON_DEMAND_3_MBT_T72_vehicle_R11)
local menu_ON_DEMAND_3_MBT_T72_section_R11 = MENU_MISSION_COMMAND:New("Spawn MBT T72 Section",spawn_menu_OD_MBT_R11_T72,_ON_DEMAND_3_MBT_T72_section_R11)
--local menu_ON_DEMAND_3_MBT_T80_vehicle_R11 = MENU_MISSION_COMMAND:New("Spawn MBT T80 Vehicle",spawn_menu_OD_MBT_R1_T80,_ON_DEMAND_3_MBT_T80_vehicle_R11)
local menu_ON_DEMAND_3_MBT_T80_section_R11 = MENU_MISSION_COMMAND:New("Spawn MBT T80 Section",spawn_menu_OD_MBT_R11_T80,_ON_DEMAND_3_MBT_T80_section_R11)
--local menu_ON_DEMAND_3_MBT_ABRAMS_vehicle_R11 = MENU_MISSION_COMMAND:New("Spawn MBT ABRAMS Vehicle",spawn_menu_OD_MBT_R1_ABRAMS,_ON_DEMAND_3_MBT_ABRAMS_vehicle_R11)
local menu_ON_DEMAND_3_MBT_ABRAMS_section_R11 = MENU_MISSION_COMMAND:New("Spawn MBT ABRAMS Section",spawn_menu_OD_MBT_R11_ABRAMS,_ON_DEMAND_3_MBT_ABRAMS_section_R11)
--local menu_ON_DEMAND_3_MBT_LEO2_vehicle_R11 = MENU_MISSION_COMMAND:New("Spawn MBT Leopard2 Vehicle",spawn_menu_OD_MBT_R11_LEO2,_ON_DEMAND_3_MBT_LEO2_vehicle_R11)
local menu_ON_DEMAND_3_MBT_LEO2_section_R11 = MENU_MISSION_COMMAND:New("Spawn MBT Leopard2 Section",spawn_menu_OD_MBT_R11_LEO2,_ON_DEMAND_3_MBT_LEO2_section_R11)

local menu_ON_DEMAND_4_MISC_SHILKA_vehicle_R11 = MENU_MISSION_COMMAND:New("Spawn SHILKA Vehicle",spawn_menu_OD_MISC_R11,_ON_DEMAND_4_MISC_SHILKA_vehicle_R11)
local menu_ON_DEMAND_4_MISC_C2_vehicle_R11 = MENU_MISSION_COMMAND:New("Spawn C2 Vehicle",spawn_menu_OD_MISC_R11,_ON_DEMAND_4_MISC_C2_vehicle_R11)
local menu_ON_DEMAND_4_MISC_ARTY_vehicle_R11 = MENU_MISSION_COMMAND:New("Spawn Artillery Vehicle",spawn_menu_OD_MISC_R11,_ON_DEMAND_4_MISC_ARTY_vehicle_R11)
local menu_ON_DEMAND_4_MISC_MLRS_vehicle_R11 = MENU_MISSION_COMMAND:New("Spawn MLRS Vehicle",spawn_menu_OD_MISC_R11,_ON_DEMAND_4_MISC_MLRS_vehicle_R11)
local menu_ON_DEMAND_4_MISC_SA13_vehicle_R11 = MENU_MISSION_COMMAND:New("Spawn SA13 Vehicle",spawn_menu_OD_MISC_R11,_ON_DEMAND_4_MISC_SA13_vehicle_R11)
local menu_ON_DEMAND_4_MISC_SA19_vehicle_R11 = MENU_MISSION_COMMAND:New("Spawn SA19 Vehicle",spawn_menu_OD_MISC_R11,_ON_DEMAND_4_MISC_SA19_vehicle_R11)









  
