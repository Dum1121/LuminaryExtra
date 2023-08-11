for i,v in pairs(game:GetService("Workspace").ISLAND:GetChildren()) do
    if string.find(v.Name,"Base") then
        v:Destroy()
    end
end
local Base1 = Instance.new("Part",game:GetService("Workspace").ISLAND) Base1.Name = "Base1"
local Base2 = Instance.new("Part",game:GetService("Workspace").ISLAND) Base2.Name = "Base2"
for i,v in pairs(game:GetService("Workspace").ISLAND:GetChildren()) do
    if v.Name == "Base1" then
        v.Size = Vector3.new(60, 3, 65)
        v.Position = Vector3.new(math.random(150000,200000),20000,math.random(150000,200000))
        v.Anchored = true
    end
    if v.Name == "Base2" then
        v.Size = Vector3.new(2,1,2)
        v.Position = Vector3.new(math.random(150000,200000),207.5,math.random(150000,200000))
        v.Anchored = true
    end
end