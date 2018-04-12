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
Menu_Range_T3_stopfire = MENU_MISSION_COMMAND:New("Hostiles: Stop Firing",Menu_Range_T3,T3_stopfire)
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
Menu_Range_T3_startfire = MENU_MISSION_COMMAND:New("Hostiles: Start Firing",Menu_Range_T3,T3_startfire)  
end      



Menu_Range_T3 = MENU_MISSION:New("Range 3A", Menu_Range_Options)
Menu_Range_T3_startfire = MENU_MISSION_COMMAND:New("Hostiles: Start Firing",Menu_Range_T3,T3_startfire)


--JTAC Moving Column Fire--
        