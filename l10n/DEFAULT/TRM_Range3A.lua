--- Range 3 --- 

-- RED TABLE

R3A_table_red_IFV = { "Template 9.3: IFV platoon", "Template 9.2: IFV section", "Template 9.1: IFV vehicle" } -- table for the red IFV
R3A_table_red_MBT = { "Template 10.3: MBT platoon", "Template 10.2: MBT section", "Template 10.1: MBT vehicle" } -- table for the red MBT
R3A_table_red_misc = { "Template 13.1: logistics vehicle", "Template 13.2: logistics section" } -- table for the red misc
R3A_table_red_hummer = { "Template 16.1: Hummer vehicle", "Template 16.1: Hummer section" } -- table for the red misc
-- RED TABLE

-- RED Spawners

R3A_red_IFV = SPAWN:NewWithAlias("R3A_red_IFV", "Range3A Target1"):InitRandomizeTemplate(R3A_table_red_IFV):Spawn()
R3A_red_IFV:OptionDisperseOff()
R3A_red_MBT = SPAWN:NewWithAlias("R3A_red_MBT", "Range3A Target2"):InitRandomizeTemplate(R3A_table_red_MBT):Spawn()
R3A_red_MBT:OptionDisperseOff()
R3A_red_misc = SPAWN:NewWithAlias("R3A_red_misc", "Range3A Target3"):InitRandomizeTemplate(R3A_table_red_misc):Spawn()
R3A_red_misc:OptionDisperseOff()
R3A_red_hummer = SPAWN:NewWithAlias("R3A_red_hummer", "Range3A Target4"):InitRandomizeTemplate(R3A_table_red_hummer):Spawn()
R3A_red_hummer:OptionDisperseOff()

-- RED Spawners
R3A_red_IFV:PatrolRoute()
R3A_red_MBT:PatrolRoute()
R3A_red_misc:PatrolRoute()
R3A_red_hummer:PatrolRoute()



--JTAC Moving Column Fire--

R3A_JTAC_CONVOY = GROUP:FindByName("R3A_JTAC CONVOY")

T3A2_1 = GROUP:FindByName("T3A.2_1")
T3A2_2 = GROUP:FindByName("T3A.2_2")
T3A2_3 = GROUP:FindByName("T3A.2_3")
T3A2_4 = GROUP:FindByName("T3A.2_4")
T3A2_5 = GROUP:FindByName("T3A.2_5")

function T3_startfire()
T3A2_1fire = SCHEDULER:New( nil,
          function()
Convoy_location = R3A_JTAC_CONVOY:GetVec2()
T3A2_1:SetTask(
                {
                  id = 'FireAtPoint',
                  params = {
                    x=Convoy_location.x + 15,
                    y=Convoy_location.y + 15,
                    radius=100,
                    expendQty=100,
                    expendQtyEnabled=y
                  }
                }, 1)

       
          end,
        {}, 2, 30 )
        

T3A2_2fire = SCHEDULER:New( nil,
          function()
Convoy_location = R3A_JTAC_CONVOY:GetVec2()
T3A2_2:SetTask(
                {
                  id = 'FireAtPoint',
                  params = {
                    x=Convoy_location.x + 15,
                    y=Convoy_location.y + 15,
                    radius=100,
                    expendQty=100,
                    expendQtyEnabled=y
                  }
                }, 1)

       
          end,
        {}, 2, 30 )

T3A2_3fire = SCHEDULER:New( nil,
          function()
Convoy_location = R3A_JTAC_CONVOY:GetVec2()
T3A2_3:SetTask(
                {
                  id = 'FireAtPoint',
                  params = {
                    x=Convoy_location.x + 15,
                    y=Convoy_location.y + 15,
                    radius=100,
                    expendQty=100,
                    expendQtyEnabled=y
                  }
                }, 1)

       
          end,
        {}, 2, 30 )
        


T3A2_4fire = SCHEDULER:New( nil,
          function()
Convoy_location = R3A_JTAC_CONVOY:GetVec2()
T3A2_4:SetTask(
                {
                  id = 'FireAtPoint',
                  params = {
                    x=Convoy_location.x + 15,
                    y=Convoy_location.y + 15,
                    radius=100,
                    expendQty=100,
                    expendQtyEnabled=y
                  }
                }, 1)

       
          end,
        {}, 2, 30 )
       


T3A2_5fire = SCHEDULER:New( nil,
          function()
Convoy_location = R3A_JTAC_CONVOY:GetVec2()
T3A2_5:SetTask(
                {
                  id = 'FireAtPoint',
                  params = {
                    x=Convoy_location.x + 15,
                    y=Convoy_location.y + 15,
                    radius=100,
                    expendQty=100,
                    expendQtyEnabled=y
                  }
                }, 1)

       
          end,
        {}, 2, 30 )
 
Menu_Range_T3_startfire:Remove()
Menu_Range_T3_stopfire = MENU_MISSION_COMMAND:New("Hostiles: Stop Firing",Menu_Range_R3A,T3_stopfire)
end

function T3_stopfire ()
T3A2_1:ClearTasks()
T3A2_2:ClearTasks()
T3A2_3:ClearTasks()
T3A2_4:ClearTasks()
T3A2_5:ClearTasks()
T3A2_1fire:Stop()
T3A2_2fire:Stop() 
T3A2_3fire:Stop() 
T3A2_4fire:Stop() 
T3A2_5fire:Stop()
Menu_Range_T3_stopfire:Remove()
Menu_Range_T3_startfire = MENU_MISSION_COMMAND:New("Hostiles: Start Firing",Menu_Range_R3A,T3_startfire)  
end      



Menu_Range_R3A = MENU_MISSION:New("Range 3A", Menu_Range_Options)
Menu_Range_T3_startfire = MENU_MISSION_COMMAND:New("Hostiles: Start Firing",Menu_Range_R3A,T3_startfire)


--JTAC Moving Column Fire--

-- ON DEMAND SPAWNING -- 
BlueSpawnerR3A = UNIT:FindByName("BlueInfantryR3A")
RedSpawnerR3A = UNIT:FindByName("REDInfantryR3A")

 local Recon_HMMWV_vehicle_R3A = SPAWN:NewWithAlias("_ON_DEMAND_1: Recon_HMMWV_vehicle", "Range3A Target1")
 local Recon_HMMWV_section_R3A = SPAWN:NewWithAlias("_ON_DEMAND_1: Recon_HMMWV_section", "Range3A Target2")
 local Recon_BRDM_vehicle_R3A = SPAWN:NewWithAlias("_ON_DEMAND_1: Recon_BRDM_vehicle", "Range3A Target3")
 local Recon_BRDM_section_R3A = SPAWN:NewWithAlias("_ON_DEMAND_1: Recon_BRDM_section", "Range3A Target4")
 local Recon_STRYKER_vehicle_R3A = SPAWN:NewWithAlias("_ON_DEMAND_1: Recon_stryker_vehicle", "Range3A Target5")
 local Recon_STRYKER_section_R3A = SPAWN:NewWithAlias("_ON_DEMAND_1: Recon_stryker_section", "Range3A Target6")
 local IFV_BMP2_vehicle_R3A = SPAWN:NewWithAlias("_ON_DEMAND_2: IFV_BMP2_vehicle", "Range3A Target7" )
 local IFV_BMP2_section_R3A = SPAWN:NewWithAlias("_ON_DEMAND_2: IFV_BMP2_section", "Range3A Target8")
 local IFV_LAV25_vehicle_R3A = SPAWN:NewWithAlias("_ON_DEMAND_2: IFV_LAV25_vehicle", "Range3A Target9")
 local IFV_LAV25_section_R3A = SPAWN:NewWithAlias("_ON_DEMAND_2: IFV_LAV25_section", "Range3A Target10")
 local IFV_BRADLEY_vehicle_R3A = SPAWN:NewWithAlias("_ON_DEMAND_2: IFV_Bradley_vehicle", "Range3A Target11")
 local IFV_BRADLEY_section_R3A = SPAWN:NewWithAlias("_ON_DEMAND_2: IFV_Bradley_section", "Range3A Target12")
 local IFV_BMP3_vehicle_R3A = SPAWN:NewWithAlias("_ON_DEMAND_2: IFV_BMP3_vehicle", "Range3A Target13")
 local IFV_BMP3_section_R3A = SPAWN:NewWithAlias("_ON_DEMAND_2: IFV_BMP3_section", "Range3A Target14")
 local IFV_BTR_vehicle_R3A = SPAWN:NewWithAlias("_ON_DEMAND_2: IFV_BTR_vehicle", "Range3A Target15")
 local IFV_BTR_section_R3A = SPAWN:NewWithAlias("_ON_DEMAND_2: IFV_BTR_section", "Range3A Target16")
 local IFV_M113_vehicle_R3A = SPAWN:NewWithAlias("_ON_DEMAND_2: IFV_M113_vehicle", "Range3A Target17")
 local IFV_M113_section_R3A = SPAWN:NewWithAlias("_ON_DEMAND_2: IFV_M113_section", "Range3A Target18")
 local MBT_T72_vehicle_R3A = SPAWN:NewWithAlias("_ON_DEMAND_3: MBT_T72_vehicle", "Range3A Target19")
 local MBT_T72_section_R3A = SPAWN:NewWithAlias("_ON_DEMAND_3: MBT_T72_section", "Range3A Target20")
 local MBT_T80_vehicle_R3A = SPAWN:NewWithAlias("_ON_DEMAND_3: MBT_T80_vehicle", "Range3A Target21")
 local MBT_T80_section_R3A = SPAWN:NewWithAlias("_ON_DEMAND_3: MBT_T80_section", "Range3A Target122")
 local MBT_ABRAMS_vehicle_R3A = SPAWN:NewWithAlias("_ON_DEMAND_3: MBT_Abrams_vehicle", "Range3A Target23")
 local MBT_ABRAMS_section_R3A = SPAWN:NewWithAlias("_ON_DEMAND_3: MBT_Abrams_section", "Range3A Target24")
 local MBT_LEO2_vehicle_R3A = SPAWN:NewWithAlias("_ON_DEMAND_3: MBT_Leo2_vehicle", "Range3A Target25")
 local MBT_LEO2_section_R3A = SPAWN:NewWithAlias("_ON_DEMAND_3: MBT_Leo2_section", "Range3A Target26")
 local MISC_SHILKA_vehicle_R3A = SPAWN:NewWithAlias("_ON_DEMAND_4: Misc_Shilka_vehicle", "Range3A Target27")
 local MISC_C2_vehicle_R3A = SPAWN:NewWithAlias("_ON_DEMAND_4: Misc_C2_vehicle", "Range3A Target28")
 local MISC_ARTY_vehicle_R3A = SPAWN:NewWithAlias("_ON_DEMAND_4: Misc_Arty_vehicle", "Range3A Target29")
 local MISC_MLRS_vehicle_R3A = SPAWN:NewWithAlias("_ON_DEMAND_4: Misc_MLRS_vehicle", "Range3A Target30")
 local MISC_SA13_vehicle_R3A = SPAWN:NewWithAlias("_ON_DEMAND_4: Misc_SA-13_vehicle", "Range3A Target31")
 local MISC_SA19_vehicle_R3A = SPAWN:NewWithAlias("_ON_DEMAND_4: Misc_SA-19_vehicle", "Range3A Target32")


function _ON_DEMAND_1_Recon_HMMWV_vehicle_R3A ()
  Recon_HMMWV_vehicle_R3A:OnSpawnGroup(function(group)
    group:OptionDisperseOff()
  end)
  Recon_HMMWV_vehicle_R3A:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR3A)
end

function _ON_DEMAND_1_Recon_HMMWV_section_R3A ()
  Recon_HMMWV_section_R3A:OnSpawnGroup(function(group)
    group:OptionDisperseOff()
  end)
  Recon_HMMWV_section_R3A:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR3A)
end

function _ON_DEMAND_1_Recon_BRDM_vehicle_R3A ()
  Recon_BRDM_vehicle_R3A:OnSpawnGroup(function(group)
    group:OptionDisperseOff()
  end)
  Recon_BRDM_vehicle_R3A:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR3A)
end

function _ON_DEMAND_1_Recon_BRDM_section_R3A ()
  Recon_BRDM_section_R3A:OnSpawnGroup(function(group)
    group:OptionDisperseOff()
  end)
  Recon_BRDM_section_R3A:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR3A)
end

function _ON_DEMAND_1_Recon_STRYKER_vehicle_R3A ()
  Recon_STRYKER_vehicle_R3A:OnSpawnGroup(function(group)
    group:OptionDisperseOff()end)
  Recon_STRYKER_vehicle_R3A:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR3A)
end

 function _ON_DEMAND_1_Recon_STRYKER_section_R3A ()
Recon_STRYKER_section_R3A:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
Recon_STRYKER_section_R3A:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR3A)
end

 function _ON_DEMAND_2_IFV_BMP2_vehicle_R3A ()
IFV_BMP2_vehicle_R3A:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
IFV_BMP2_vehicle_R3A:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR3A)
end

 function _ON_DEMAND_2_IFV_BMP2_section_R3A ()
IFV_BMP2_section_R3A:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
IFV_BMP2_section_R3A:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR3A)
end

 function _ON_DEMAND_2_IFV_LAV25_vehicle_R3A ()
IFV_LAV25_vehicle_R3A:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
IFV_LAV25_vehicle_R3A:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR3A)
end

 function _ON_DEMAND_2_IFV_LAV25_section_R3A ()
IFV_LAV25_section_R3A:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
IFV_LAV25_section_R3A:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR3A)
end

 function _ON_DEMAND_2_IFV_BRADLEY_vehicle_R3A ()
IFV_BRADLEY_vehicle_R3A:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
IFV_BRADLEY_vehicle_R3A:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR3A)
end

 function _ON_DEMAND_2_IFV_BRADLEY_section_R3A ()
IFV_BRADLEY_section_R3A:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
IFV_BRADLEY_section_R3A:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR3A)
end

 function _ON_DEMAND_2_IFV_BMP3_vehicle_R3A ()
IFV_BMP3_vehicle_R3A:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
IFV_BMP3_vehicle_R3A:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR3A)
end

 function _ON_DEMAND_2_IFV_BMP3_section_R3A ()
IFV_BMP3_section_R3A:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
IFV_BMP3_section_R3A:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR3A)
end

 function _ON_DEMAND_2_IFV_BTR_vehicle_R3A ()
IFV_BTR_vehicle_R3A:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
IFV_BTR_vehicle_R3A:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR3A)
end

 function _ON_DEMAND_2_IFV_BTR_section_R3A ()
IFV_BTR_section_R3A:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
IFV_BTR_section_R3A:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR3A)
end

 function _ON_DEMAND_2_IFV_M113_vehicle_R3A ()
IFV_BTR_vehicle_R3A:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
IFV_BTR_vehicle_R3A:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR3A)
end

 function _ON_DEMAND_2_IFV_M113_section_R3A ()
IFV_BTR_section_R3A:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
IFV_BTR_section_R3A:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR3A)
end

 function _ON_DEMAND_3_MBT_T72_vehicle_R3A ()
MBT_T72_vehicle_R3A:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
MBT_T72_vehicle_R3A:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR3A)
end

 function _ON_DEMAND_3_MBT_T72_section_R3A ()
MBT_T72_section_R3A:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
MBT_T72_section_R3A:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR3A)
end

 function _ON_DEMAND_3_MBT_T80_vehicle_R3A ()
MBT_T80_vehicle_R3A:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
MBT_T80_vehicle_R3A:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR3A)
end

 function _ON_DEMAND_3_MBT_T80_section_R3A ()
MBT_T80_section_R3A:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
MBT_T80_section_R3A:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR3A)
end

 function _ON_DEMAND_3_MBT_ABRAMS_vehicle_R3A ()
MBT_ABRAMS_vehicle_R3A:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
MBT_ABRAMS_vehicle_R3A:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR3A)
end

 function _ON_DEMAND_3_MBT_ABRAMS_section_R3A ()
MBT_ABRAMS_section_R3A:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
MBT_ABRAMS_section_R3A:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR3A)
end

 function _ON_DEMAND_3_MBT_LEO2_vehicle_R3A ()
MBT_LEO2_vehicle_R3A:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
MBT_LEO2_vehicle_R3A:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR3A)
end

 function _ON_DEMAND_3_MBT_LEO2_section_R3A ()
MBT_LEO2_section_R3A:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
MBT_LEO2_section_R3A:InitRandomizePosition(true,20,5):SpawnFromUnit(BlueSpawnerR3A)
end


 function _ON_DEMAND_4_MISC_SHILKA_vehicle_R3A ()
MISC_SHILKA_vehicle_R3A:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
MISC_SHILKA_vehicle_R3A:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR3A)
end

 function _ON_DEMAND_4_MISC_C2_vehicle_R3A ()
MISC_C2_vehicle_R3A:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
MISC_C2_vehicle_R3A:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR3A)
end

 function _ON_DEMAND_4_MISC_ARTY_vehicle_R3A ()
MISC_ARTY_vehicle_R3A:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
MISC_ARTY_vehicle_R3A:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR3A)
end

 function _ON_DEMAND_4_MISC_MLRS_vehicle_R3A ()
MISC_MLRS_vehicle_R3A:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
MISC_MLRS_vehicle_R3A:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR3A)
end

 function _ON_DEMAND_4_MISC_SA13_vehicle_R3A ()
MISC_SA13_vehicle_R3A:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
MISC_SA13_vehicle_R3A:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR3A)
end

 function _ON_DEMAND_4_MISC_SA19_vehicle_R3A ()
MISC_SA19_vehicle_R3A:OnSpawnGroup(function(group)
group:OptionDisperseOff()end)
MISC_SA19_vehicle_R3A:InitRandomizePosition(true,20,5):SpawnFromUnit(RedSpawnerR3A)
end
-- ON DEMAND SPAWNING -- 

Menu_Range_R3A = MENU_MISSION:New("Range 3A", Menu_Range_Options)
spawn_menu_OD_R3A = MENU_MISSION:New("On Demand Spawning",Menu_Range_R3A)
spawn_menu_OD_Recon_R3A = MENU_MISSION:New("On Demand - RECON",spawn_menu_OD_R3A)
spawn_menu_OD_IFV_R3A = MENU_MISSION:New("On Demand - IFV",spawn_menu_OD_R3A)
spawn_menu_OD_IFV_R3A_BMP2 = MENU_MISSION:New("On Demand - IFV - BMP2",spawn_menu_OD_IFV_R3A)
spawn_menu_OD_IFV_R3A_LAV25 = MENU_MISSION:New("On Demand - IFV - LAV25",spawn_menu_OD_IFV_R3A)
spawn_menu_OD_IFV_R3A_BRADLEY = MENU_MISSION:New("On Demand - IFV - Bradley",spawn_menu_OD_IFV_R3A)
spawn_menu_OD_IFV_R3A_BMP3 = MENU_MISSION:New("On Demand - IFV - BMP3",spawn_menu_OD_IFV_R3A)
spawn_menu_OD_IFV_R3A_BTR = MENU_MISSION:New("On Demand - IFV - BTR",spawn_menu_OD_IFV_R3A)
spawn_menu_OD_IFV_R3A_M113 = MENU_MISSION:New("On Demand - IFV - M113",spawn_menu_OD_IFV_R3A)
spawn_menu_OD_MBT_R3A = MENU_MISSION:New("On Demand - MBT",spawn_menu_OD_R3A)
spawn_menu_OD_MBT_R3A_T72 = MENU_MISSION:New("On Demand - MBT- T72",spawn_menu_OD_MBT_R3A)
spawn_menu_OD_MBT_R3A_T80 = MENU_MISSION:New("On Demand - MBT -T80",spawn_menu_OD_MBT_R3A)
spawn_menu_OD_MBT_R3A_ABRAMS = MENU_MISSION:New("On Demand - MBT - Abrams",spawn_menu_OD_MBT_R3A)
spawn_menu_OD_MBT_R3A_LEO2 = MENU_MISSION:New("On Demand - MBT - Leopard2",spawn_menu_OD_MBT_R3A)
spawn_menu_OD_MISC_R3A = MENU_MISSION:New("On Demand - MISC",spawn_menu_OD_R3A)   



local menu_ON_DEMAND_1_Recon_HMMWV_vehicle_R3A = MENU_MISSION_COMMAND:New("Spawn Recon HMMWV Vehicle",spawn_menu_OD_Recon_R3A,_ON_DEMAND_1_Recon_HMMWV_vehicle_R3A)
local menu_ON_DEMAND_1_Recon_HMMWV_section_R3A = MENU_MISSION_COMMAND:New("Spawn Recon HMMWV Section",spawn_menu_OD_Recon_R3A,_ON_DEMAND_1_Recon_HMMWV_section_R3A)
local menu_ON_DEMAND_1_Recon_BRDM_vehicle_R3A = MENU_MISSION_COMMAND:New("Spawn Recon BRDM Vehicle",spawn_menu_OD_Recon_R3A,_ON_DEMAND_1_Recon_BRDM_vehicle_R3A)
local menu_ON_DEMAND_1_Recon_BRDM_section_R3A = MENU_MISSION_COMMAND:New("Spawn Recon BRDM Section",spawn_menu_OD_Recon_R3A,_ON_DEMAND_1_Recon_BRDM_section_R3A)
local menu_ON_DEMAND_1_Recon_STRYKER_vehicle_R3A = MENU_MISSION_COMMAND:New("Spawn Recon STRYKER Vehicle",spawn_menu_OD_Recon_R3A,_ON_DEMAND_1_Recon_STRYKER_vehicle_R3A)
local menu_ON_DEMAND_1_Recon_STRYKER_section_R3A = MENU_MISSION_COMMAND:New("Spawn Recon STRYKER Section",spawn_menu_OD_Recon_R3A,_ON_DEMAND_1_Recon_STRYKER_section_R3A)

local menu_ON_DEMAND_2_IFV_BMP2_vehicle_R3A = MENU_MISSION_COMMAND:New("Spawn IFV BMP2 Vehicle",spawn_menu_OD_IFV_R3A_BMP2,_ON_DEMAND_2_IFV_BMP2_vehicle_R3A)
local menu_ON_DEMAND_2_IFV_BMP2_section_R3A = MENU_MISSION_COMMAND:New("Spawn IFV BMP2 Section",spawn_menu_OD_IFV_R3A_BMP2,_ON_DEMAND_2_IFV_BMP2_section_R3A)
local menu_ON_DEMAND_2_IFV_LAV25_vehicle_R3A = MENU_MISSION_COMMAND:New("Spawn IFV LAV25 Vehicle",spawn_menu_OD_IFV_R3A_LAV25,_ON_DEMAND_2_IFV_LAV25_vehicle_R3A)
local menu_ON_DEMAND_2_IFV_LAV25_section_R3A = MENU_MISSION_COMMAND:New("Spawn IFV LAV25 Section",spawn_menu_OD_IFV_R3A_LAV25,_ON_DEMAND_2_IFV_LAV25_section_R3A)
local menu_ON_DEMAND_2_IFV_BRADLEY_vehicle_R3A = MENU_MISSION_COMMAND:New("Spawn IFV BRADLEY Vehicle",spawn_menu_OD_IFV_R3A_BRADLEY,_ON_DEMAND_2_IFV_BRADLEY_vehicle_R3A)
local menu_ON_DEMAND_2_IFV_BRADLEY_section_R3A = MENU_MISSION_COMMAND:New("Spawn IFV BRADLEY Section",spawn_menu_OD_IFV_R3A_BRADLEY,_ON_DEMAND_2_IFV_BRADLEY_section_R3A)
local menu_ON_DEMAND_2_IFV_BMP3_vehicle_R3A = MENU_MISSION_COMMAND:New("Spawn IFV BMP3 Vehicle",spawn_menu_OD_IFV_R3A_BMP3,_ON_DEMAND_2_IFV_BMP3_vehicle_R3A)
local menu_ON_DEMAND_2_IFV_BMP3_section_R3A = MENU_MISSION_COMMAND:New("Spawn IFV BMP3 Section",spawn_menu_OD_IFV_R3A_BMP3,_ON_DEMAND_2_IFV_BMP3_section_R3A)
local menu_ON_DEMAND_2_IFV_BTR_vehicle_R3A = MENU_MISSION_COMMAND:New("Spawn IFV BTR Vehicle",spawn_menu_OD_IFV_R3A_BTR,_ON_DEMAND_2_IFV_BTR_vehicle_R3A)
local menu_ON_DEMAND_2_IFV_BTR_section_R3A = MENU_MISSION_COMMAND:New("Spawn IFV BTR Section",spawn_menu_OD_IFV_R3A_BTR,_ON_DEMAND_2_IFV_BTR_section_R3A)
local menu_ON_DEMAND_2_IFV_M113_vehicle_R3A = MENU_MISSION_COMMAND:New("Spawn IFV M113 Vehicle",spawn_menu_OD_IFV_R3A_M113,_ON_DEMAND_2_IFV_M113_vehicle_R3A)
local menu_ON_DEMAND_2_IFV_M113_section_R3A = MENU_MISSION_COMMAND:New("Spawn IFV M113 Section",spawn_menu_OD_IFV_R3A_M113,_ON_DEMAND_2_IFV_M113_section_R3A)

local menu_ON_DEMAND_3_MBT_T72_vehicle_R3A = MENU_MISSION_COMMAND:New("Spawn MBT T72 Vehicle",spawn_menu_OD_MBT_R3A_T72,_ON_DEMAND_3_MBT_T72_vehicle_R3A)
local menu_ON_DEMAND_3_MBT_T72_section_R3A = MENU_MISSION_COMMAND:New("Spawn MBT T72 Section",spawn_menu_OD_MBT_R3A_T72,_ON_DEMAND_3_MBT_T72_section_R3A)
local menu_ON_DEMAND_3_MBT_T80_vehicle_R3A = MENU_MISSION_COMMAND:New("Spawn MBT T80 Vehicle",spawn_menu_OD_MBT_R3A_T80,_ON_DEMAND_3_MBT_T80_vehicle_R3A)
local menu_ON_DEMAND_3_MBT_T80_section_R3A = MENU_MISSION_COMMAND:New("Spawn MBT T80 Section",spawn_menu_OD_MBT_R3A_T80,_ON_DEMAND_3_MBT_T80_section_R3A)
local menu_ON_DEMAND_3_MBT_ABRAMS_vehicle_R3A = MENU_MISSION_COMMAND:New("Spawn MBT ABRAMS Vehicle",spawn_menu_OD_MBT_R3A_ABRAMS,_ON_DEMAND_3_MBT_ABRAMS_vehicle_R3A)
local menu_ON_DEMAND_3_MBT_ABRAMS_section_R3A = MENU_MISSION_COMMAND:New("Spawn MBT ABRAMS Section",spawn_menu_OD_MBT_R3A_ABRAMS,_ON_DEMAND_3_MBT_ABRAMS_section_R3A)
local menu_ON_DEMAND_3_MBT_LEO2_vehicle_R3A = MENU_MISSION_COMMAND:New("Spawn MBT Leopard2 Vehicle",spawn_menu_OD_MBT_R3A_LEO2,_ON_DEMAND_3_MBT_LEO2_vehicle_R3A)
local menu_ON_DEMAND_3_MBT_LEO2_section_R3A = MENU_MISSION_COMMAND:New("Spawn MBT Leopard2 Section",spawn_menu_OD_MBT_R3A_LEO2,_ON_DEMAND_3_MBT_LEO2_section_R3A)

local menu_ON_DEMAND_4_MISC_SHILKA_vehicle_R3A = MENU_MISSION_COMMAND:New("Spawn SHILKA Vehicle",spawn_menu_OD_MISC_R3A,_ON_DEMAND_4_MISC_SHILKA_vehicle_R3A)
local menu_ON_DEMAND_4_MISC_C2_vehicle_R3A = MENU_MISSION_COMMAND:New("Spawn C2 Vehicle",spawn_menu_OD_MISC_R3A,_ON_DEMAND_4_MISC_C2_vehicle_R3A)
local menu_ON_DEMAND_4_MISC_ARTY_vehicle_R3A = MENU_MISSION_COMMAND:New("Spawn Artillery Vehicle",spawn_menu_OD_MISC_R3A,_ON_DEMAND_4_MISC_ARTY_vehicle_R3A)
local menu_ON_DEMAND_4_MISC_MLRS_vehicle_R3A = MENU_MISSION_COMMAND:New("Spawn MLRS Vehicle",spawn_menu_OD_MISC_R3A,_ON_DEMAND_4_MISC_MLRS_vehicle_R3A)
local menu_ON_DEMAND_4_MISC_SA13_vehicle_R3A = MENU_MISSION_COMMAND:New("Spawn SA13 Vehicle",spawn_menu_OD_MISC_R3A,_ON_DEMAND_4_MISC_SA13_vehicle_R3A)
local menu_ON_DEMAND_4_MISC_SA19_vehicle_R3A = MENU_MISSION_COMMAND:New("Spawn SA19 Vehicle",spawn_menu_OD_MISC_R3A,_ON_DEMAND_4_MISC_SA19_vehicle_R3A)













        