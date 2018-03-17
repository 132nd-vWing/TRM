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



Menu_Range_T3 = MENU_MISSION:New("Range T3", Menu_Range_Options)
Menu_Range_T3_startfire = MENU_MISSION_COMMAND:New("Hostiles: Start Firing",Menu_Range_T3,T3_startfire)
        