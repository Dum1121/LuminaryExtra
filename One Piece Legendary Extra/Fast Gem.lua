getgenv().a = false
local plr = game.Players.LocalPlayer
while getgenv().a do wait(0.5)
function FGCheck()
local args = {[1] = "Claim",[2] = "Daily1"}workspace:WaitForChild("UserData"):WaitForChild("User_"..game.Players.LocalPlayer.UserId):WaitForChild("ChallengesRemote"):FireServer(unpack(args))
local args = {[1] = "Claim",[2] = "Daily2"}workspace:WaitForChild("UserData"):WaitForChild("User_"..game.Players.LocalPlayer.UserId):WaitForChild("ChallengesRemote"):FireServer(unpack(args))
local args = {[1] = "Claim",[2] = "Daily3"}workspace:WaitForChild("UserData"):WaitForChild("User_"..game.Players.LocalPlayer.UserId):WaitForChild("ChallengesRemote"):FireServer(unpack(args))
local args = {[1] = "Claim",[2] = "Daily4"}workspace:WaitForChild("UserData"):WaitForChild("User_"..game.Players.LocalPlayer.UserId):WaitForChild("ChallengesRemote"):FireServer(unpack(args))
end
function APack()
    workspace:WaitForChild("Merchants"):WaitForChild("QuestFishMerchant"):WaitForChild("Clickable"):WaitForChild("Retum"):FireServer()
wait(0.3)
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if v.Name == "Package" then
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Package") then
                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack["Package"])
                end
            end
        end
wait(0.3)
        for i,v in pairs(workspace.Merchants:GetChildren()) do
            if v:IsA("Model") and v.Name ~= "QuestHakiMerchant" and game.Players.LocalPlayer.Character:FindFirstChild("Package") then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Head.CFrame * CFrame.new(0,0,1)
		wait(0.3)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(0,0))
            end
        end
    end
function FGStart()
FGCheck()
wait(0.5)
    if workspace.UserData["User_"..game.Players.LocalPlayer.UserId].Data.QQQ_Daily1.Value == false then
        wait(0.3)
        if string.find(game:GetService("Players").LocalPlayer.PlayerGui.MissionGui.Frame.Frame.Description.Text,"Complete 1") then
            APack()
        else
            workspace:WaitForChild("UserData"):WaitForChild("User_"..game.Players.LocalPlayer.UserId):WaitForChild("Stats"):FireServer()
            wait(0.5)
            workspace:WaitForChild("Merchants"):WaitForChild("ExpertiseMerchant"):WaitForChild("Clickable"):WaitForChild("Retum"):FireServer()

        end
    elseif workspace.UserData["User_"..game.Players.LocalPlayer.UserId].Data.QQQ_Daily2.Value == false then
        print("Daily 1 Complete")
        for i,v in pairs(workspace:GetDescendants()) do
            if v.Name == "TreasureChestPart" then
            v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            end
            end
            wait(0.3)
            APack()
        elseif workspace.UserData["User_"..game.Players.LocalPlayer.UserId].Data.QQQ_Daily3.Value == false then
            print("Daily 2 Complete")
            if workspace.UserData["User_"..game.Players.LocalPlayer.UserId].Data.Weapon_Sword.Value == "None" then
            local args = {
                [1] = "Katana",
                [2] = 10000
            }
            
            workspace:WaitForChild("Merchants"):WaitForChild("SwordMerchant"):WaitForChild("Clickable"):WaitForChild("Retum"):FireServer(unpack(args))
        end
        for i,v in pairs(workspace.Enemies:GetChildren()) do
            if v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health ~= 0 and v:IsA("Model") and string.find(v.Name,"Crab") then
pcall(function()
spawn(function()
            local SwordT = workspace.UserData["User_"..game.Players.LocalPlayer.UserId].Data.Weapon_Sword.Value
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack[SwordT])
game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):Activate()
end)
end)
                pcall(function()
                repeat wait()
spawn(function()
                    if v.Humanoid.Health == 0 then
                    game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):Activate()
                    wait(6)
                    v:Destroy()
                    end
                    end)
                                        v.HumanoidRootPart.Size = Vector3.new(15,15,15)
                                        v.Humanoid.Health = 0
                                        v.Humanoid.MaxHealth = 0
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,2,4)
                                        
                FGCheck()

                until workspace.UserData["User_"..game.Players.LocalPlayer.UserId].Data.QQQ_Daily3.Value == true or game.Players.LocalPlayer.Character.Humanoid.Health == 0 or getgenv().a == false
            end)
            end
        end
    elseif workspace.UserData["User_"..game.Players.LocalPlayer.UserId].Data.QQQ_Daily4.Value == false then
        print("Daily 3 Complete")
        local args = {[1] = "Claim1"}workspace:WaitForChild("Merchants"):WaitForChild("QuestMerchant"):WaitForChild("Clickable"):WaitForChild("Retum"):FireServer(unpack(args))
        if game.Players.LocalPlayer.Backpack:FindFirstChild("Compass") then
            game.Players.LocalPlayer.Character.Humanoid.Health = 0
        end
    elseif not workspace.UserData["User_"..game.Players.LocalPlayer.UserId].Data.QQQ_AllDaily.Value == true then
    local args = {[1] = "Claim",[2] = "AllDaily"}workspace:WaitForChild("UserData"):WaitForChild("User_"..game.Players.LocalPlayer.UserId):WaitForChild("ChallengesRemote"):FireServer(unpack(args))
    else
        workspace:WaitForChild("UserData"):WaitForChild("User_"..game.Players.LocalPlayer.UserId):WaitForChild("Stats"):FireServer()
end
end
FGStart()
end