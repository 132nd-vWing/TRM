--- T1.1 ---

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

function SpawnTargets ()
-- RED Spawners
T1_1_red_recon = SPAWN:New("T1_1_red_recon"):InitRandomizeTemplate(T1_1_table_red_recon):InitRandomizeRoute(3,0,100):Spawn()  
T1_1_red_IFV = SPAWN:New("T1_1_red_IFV"):InitRandomizeTemplate(T1_1_table_red_IFV):InitRandomizeRoute(3,0,100):Spawn()
T1_1_red_MBT = SPAWN:New("T1_1_red_MBT"):InitRandomizeTemplate(T1_1_table_red_MBT):InitRandomizeRoute(3,0,100):Spawn()
T1_1_red_AAA = SPAWN:New("T1_1_red_AAA"):InitRandomizeTemplate(T1_1_table_red_AAA):InitRandomizeRoute(3,0,100):Spawn()
T1_1_red_misc = SPAWN:New("T1_1_red_misc"):InitRandomizeTemplate(T1_1_table_red_misc):InitRandomizeRoute(3,0,100):Spawn()
-- RED Spawners

-- BLUE Spawners
T1_1_blue_recon = SPAWN:New("T1_1_blue_recon"):InitRandomizeTemplate(T1_1_table_blue_recon):InitRandomizeRoute(3,0,100):Spawn()
T1_1_blue_IFV = SPAWN:New("T1_1_blue_IFV"):InitRandomizeTemplate(T1_1_table_blue_IFV):InitRandomizeRoute(3,0,100):Spawn()
T1_1_blue_MBT = SPAWN:New("T1_1_blue_MBT"):InitRandomizeTemplate(T1_1_table_blue_MBT):InitRandomizeRoute(3,0,100):Spawn()
-- BLUE Spawners
spawn_menu:Remove()

end



t1_1_redzone = ZONE_POLYGON:New("t1_1_redzone", GROUP:FindByName( "t1.1_redzone" ))

--function patrolRed ()
--SCHEDULER:New(nil,function()
--T1_1_red_recon:RouteToVec3((t1_1_redzone:GetRandomPointVec3()),25)
--T1_1_red_IFV:RouteToVec3((t1_1_redzone:GetRandomPointVec3()),25)
--T1_1_red_MBT:RouteToVec3((t1_1_redzone:GetRandomPointVec3()),25)
--T1_1_red_AAA:RouteToVec3((t1_1_redzone:GetRandomPointVec3()),25)
--T1_1_red_misc:RouteToVec3((t1_1_redzone:GetRandomPointVec3()),25)
--patrol_menu:Remove()
--end,{},3,120)
--end
 

-- ON DEMAND SPAWNING -- 
BlueSpawnerT1_1 = UNIT:FindByName("BlueInfantryT1.1")
RedSpawnerT1_1 = UNIT:FindByName("REDInfantryT1.1")

Recon_HMMWV_vehicle = SPAWN:New("_ON_DEMAND_1: Recon_HMMWV_vehicle")
Recon_HMMWV_section = SPAWN:New("_ON_DEMAND_1: Recon_HMMWV_section")
Recon_BRDM_vehicle = SPAWN:New("_ON_DEMAND_1: Recon_BRDM_vehicle")
Recon_BRDM_section = SPAWN:New("_ON_DEMAND_1: Recon_BRDM_section")
Recon_STRYKER_vehicle = SPAWN:New("_ON_DEMAND_1: Recon_stryker_vehicle")
Recon_STRYKER_section = SPAWN:New("_ON_DEMAND_1: Recon_stryker_section")

function _ON_DEMAND_1_Recon_HMMWV_vehicle ()
Recon_HMMWV_vehicle:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerT1_1)
end

function _ON_DEMAND_1_Recon_HMMWV_section ()
Recon_HMMWV_section:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerT1_1)
end

function _ON_DEMAND_1_Recon_BRDM_vehicle ()
Recon_BRDM_vehicle:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerT1_1)
end

function _ON_DEMAND_1_Recon_BRDM_section ()
Recon_BRDM_section:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerT1_1)
end

function _ON_DEMAND_1_Recon_STRYKER_vehicle ()
Recon_STRYKER_vehicle:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerT1_1)
end

function _ON_DEMAND_1_Recon_STRYKER_section ()
Recon_STRYKER_section:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerT1_1)
end















Menu_Range_Options = MENU_MISSION:New("Range Options")
Menu_Range_T1_1 = MENU_MISSION:New("Range T1.1", Menu_Range_Options)
spawn_menu = MENU_MISSION_COMMAND:New("Set up the Range dynamically",Menu_Range_T1_1,SpawnTargets)
spawn_menu_OD = MENU_MISSION:New("On Demand Spawning",Menu_Range_T1_1)
spawn_menu_OD_Recon = MENU_MISSION:New("On Demand Spawning - RECON",spawn_menu_OD)
spawn_menu_OD_IFV = MENU_MISSION:New("On Demand Spawning - IFV",spawn_menu_OD)
spawn_menu_OD_MBT = MENU_MISSION:New("On Demand Spawning - MBT",spawn_menu_OD)  

menu_ON_DEMAND_1_Recon_HMMWV_vehicle = MENU_MISSION_COMMAND:New("Spawn in Recon HMMWV Vehicle",spawn_menu_OD_Recon,_ON_DEMAND_1_Recon_HMMWV_vehicle)
menu_ON_DEMAND_1_Recon_HMMWV_section = MENU_MISSION_COMMAND:New("Spawn in Recon HMMWV section",spawn_menu_OD_Recon,_ON_DEMAND_1_Recon_HMMWV_section)
menu_ON_DEMAND_1_Recon_BRDM_vehicle = MENU_MISSION_COMMAND:New("Spawn in Recon BRDM Vehicle",spawn_menu_OD_Recon,_ON_DEMAND_1_Recon_BRDM_vehicle)
menu_ON_DEMAND_1_Recon_BRDM_section = MENU_MISSION_COMMAND:New("Spawn in Recon BRDM section",spawn_menu_OD_Recon,_ON_DEMAND_1_Recon_BRDM_section)
menu_ON_DEMAND_1_Recon_STRYKER_vehicle = MENU_MISSION_COMMAND:New("Spawn in Recon STRYKER Vehicle",spawn_menu_OD_Recon,_ON_DEMAND_1_Recon_STRYKER_vehicle)
menu_ON_DEMAND_1_Recon_STRYKER_section = MENU_MISSION_COMMAND:New("Spawn in Recon STRYKER section",spawn_menu_OD_Recon,_ON_DEMAND_1_Recon_STRYKER_section)



