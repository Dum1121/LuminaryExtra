getgenv().test = true
while getgenv().test do wait()
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
	if v.Name == "Cannon Ball" then
	if not game.Players.LocalPlayer.Character:FindFirstChild("Cannon Ball") then
game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
end
wait(0.6)
local args = {
    [1] = CFrame.new(game.Players["dnq0510"].Character.HumanoidRootPart.Position),
    [2] = workspace:WaitForChild("IslandWindmill"):WaitForChild("Base"):WaitForChild("Rocks"):WaitForChild("Rock")
}

game:GetService("Players").LocalPlayer.Character:FindFirstChild("Cannon Ball").RemoteEvent:FireServer(unpack(args))
game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
end
end
end