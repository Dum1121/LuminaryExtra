local plr = game.Players.LocalPlayer
for index, value in next, game:GetService("Workspace").Enemies:GetChildren() do
if value:FindFirstChildOfClass("Humanoid") then
if (plr.Character.HumanoidRootPart.Position - value.HumanoidRootPart.Position).Magnitude <= 500 then
value.Humanoid.Health = 0
                end
end
end