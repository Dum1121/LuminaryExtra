for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
    if string.find(v.Name , "Small") or string.find(v.Name , "Medium") or string.find(v.Name , "Large") then
        game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
wait(0.3)
local args = {
    [1] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame,
    [2] = workspace:WaitForChild("Firepit"):WaitForChild("Part")
}

game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Click:FireServer(unpack(args))
wait(0.1)
workspace:WaitForChild("Merchants"):WaitForChild("FishMerchant"):WaitForChild("Clickable"):WaitForChild("Retum"):FireServer()
    end
end