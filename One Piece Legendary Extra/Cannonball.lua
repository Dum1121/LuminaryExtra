for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
	if v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
		v.HumanoidRootPart.Anchored = true
		v.HumanoidRootPart.Size = Vector3.new(30,30,30)
		v.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,20,-30)
pcall(function()
spawn(function()
if not game.Players.LocalPlayer.Character:FindFirstChild("Cannon Ball") then
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack["Cannon Ball"])
else
local args = {
    [1] = v.HumanoidRootPart.CFrame * CFrame.new(0,10,0)
}

game:GetService("Players").LocalPlayer.Character:FindFirstChild("Cannon Ball").RemoteEvent:FireServer(unpack(args))
end
if v.Humanoid.Health == 0 then
v:Destroy()
end
for i,c in pairs(workspace.ResourceHolder["Resources_"..game.Players.LocalPlayer.UserId]:GetDescendants()) do
if c.Name == ("CannonBall") then
c.CFrame = v.HumanoidRootPart.CFrame
wait(0.5)
c:Destroy()
end
end
end)
end)
		end
		end