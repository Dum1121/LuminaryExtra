-- // legend fruit list
local dropleg = {"Goro",
    "Paw","Hie","Magu","Zushi",
    "Kage","Pika","Yuki","Suna",
    "Yami","Mera","Ito","Gura"}
-- // myth fruit list
local dropmyth = {"Ope","Mochi","Venom","Tori","Buddha"}

-- function
if not getgenv().execute then getgenv().execute = true else return end
spawn(function()
	while wait() do
		if getgenv().enable then
			pcall(function()
if getgenv().autodropleg then
	for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
    		if v:IsA("Tool") and table.find(dropleg,v.Name) then
	wait(getgenv().droplegdelay)
      game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack[v.Name])
	wait(0.6)
	        local args = {
            [1] = "drop",
            [2] = game.Players.LocalPlayer.Character:FindFirstChild(v.Name)
        }

        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Tools"):InvokeServer(unpack(args))
wait(0.7)
		end
	end
end
wait(1)
if getgenv().autodropmyth then
	for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
    		if v:IsA("Tool") and table.find(dropmyth,v.Name) then
	wait(getgenv().dropmythdelay)
      game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack[v.Name])
	wait(0.6)
	        local args = {
            [1] = "drop",
            [2] = game.Players.LocalPlayer.Character:FindFirstChild(v.Name)
        }

        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Tools"):InvokeServer(unpack(args))
wait(0.7)
		end
	end
end
			end)
		end
	end
end)
