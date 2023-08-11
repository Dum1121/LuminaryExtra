getgenv().a = false
getgenv().b = "khoingc5"

for i,v in pairs(game.Players:GetChildren()) do
if v.Name ~= game.Players.LocalPlayer.Name then
if v.Name ~= getgenv().b and getgenv().a then
for i,c in pairs(game.Workspace:GetChildren()) do
if c:IsA("Model") and c.Name == v.Name then
print(c.Name)
end
end
else
for i,c in pairs(game.Workspace:GetChildren()) do
if c:IsA("Model") and c.Name == v.Name then
print(c.Name)
end
end
end
end
end