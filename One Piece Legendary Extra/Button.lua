if not getgenv().RemoveButtonSetup then 
	game:GetService('RunService').Stepped:Connect(function()
		if getgenv().notbutton then 
			pcall(function() 
				for _,v in pairs(game:GetService("CoreGui").Luminary.Main.SizeFullSection:GetDescendants()) do
if v.Name == "RemoveButton" and not v:FindFirstChild("Button") then
v:Destroy()
end
end
			end)
		end
	end)
	getgenv().RemoveButtonSetup = true
end