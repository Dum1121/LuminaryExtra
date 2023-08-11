for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
    if string.find(v.Name , "Rod") then
                        for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
if string.find(v.Name , "Rod") then
    game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
end
end
    end
end
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
    if string.find(v.Name , "Rod") then
                        for _,x in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
if string.find(x.Name , "Rod") then
    for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
        if v:FindFirstChild("Bobber") then
            if v.Bobber.Effect.Enabled == true then
                
                wait(0.5)
                local args = {
                    [1] = Vector3.new(100,100,100)
                }
                game:GetService("Players").LocalPlayer.Character:FindFirstChild(x.Name).Click:FireServer(unpack(args))
            end
        elseif v.Name == "Cast" and not v:FindFirstChild("Bobber") then
            
            wait(0.5)
            local args = {
                [1] = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
            }
            game:GetService("Players").LocalPlayer.Character:FindFirstChild(x.Name).Click:FireServer(unpack(args))
        end
    end
end
end
        wait(0.5)
    end
end
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
    if string.find(v.Name , "Small") or string.find(v.Name , "Medium") or string.find(v.Name , "Large") then
        game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
    end
end
wait(0.5)
local args = {
    [1] = CFrame.new(-1754.22559, 215.300003, -328.040588, -0.423235953, 0.686230123, -0.591573775, -0, 0.652937114, 0.757412136, 0.906019449, 0.320564061, -0.276346475),
    [2] = workspace:WaitForChild("Firepit"):WaitForChild("Part")
}

game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Click:FireServer(unpack(args))
wait(0.5)
workspace:WaitForChild("Merchants"):WaitForChild("FishMerchant"):WaitForChild("Clickable"):WaitForChild("Retum"):FireServer()
