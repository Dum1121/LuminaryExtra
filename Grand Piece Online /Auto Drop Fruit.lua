-- // legend fruit list
local dropleg = {"Goro",
    "Paw","Hie","Magu","Zushi",
    "Kage","Pika","Yuki","Suna",
    "Yami","Mera","Ito","Gura"}
-- // myth fruit list
local dropmyth = {"Ope","Mochi","Venom","Tori","Buddha"}

-- // Virtual
local vim = game:GetService('VirtualInputManager')
function drop()
        vim:SendKeyEvent(true, Enum.KeyCode.Backspace, false, nil)
	task.wait(0.1)
        vim:SendKeyEvent(false, Enum.KeyCode.Backspace, false, nil)
    end
-- // function
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
	if not game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and table.find(dropleg,v.Name) then
	drop()
	end
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
	if not game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and table.find(dropmyth,v.Name) then
	drop()
	end
wait(0.7)
		end
	end
end
			end)
		end
	end
end)
