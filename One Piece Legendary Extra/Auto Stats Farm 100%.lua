while wait() do
spawn(function()
	repeat wait()
		pcall(function()
		workspace.UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote:FireServer("Claim","Challenge13")
		workspace.UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote:FireServer("Claim","Challenge14")
		spawn(function()
			for i,v in pairs(game.Workspace:GetChildren()) do 
				if v.ClassName == "Tool" and v.Name ~= "Ultra Rare Box" and v.Name ~= "Rare Box" then
			v.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
				end
			end
			for i,v in pairs(game:GetService("Workspace").Island8.Kitchen:GetDescendants()) do
					if v:IsA("ClickDetector") then
					fireclickdetector(v)
				end
			end
		end)
		spawn(function()
			for i,v in pairs(game:GetService("Workspace").Barrels.Barrels:GetChildren()) do
				if v.Name == "Barrel" and v.Rotation ~= Vector3.new(0,0,0) and v:FindFirstChild("ClickDetector") then
					fireclickdetector(v.ClickDetector)
				end
			end
			for i,v in pairs(game:GetService("Workspace").Barrels.Crates:GetChildren()) do
				if v:FindFirstChild("ClickDetector") then
					fireclickdetector(v.ClickDetector)
				end
			end
		end)
		spawn(function()
						for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
							if v:IsA("Tool") and string.find(v.Name, "Juice") or string.find(v.Name, "Milk") or string.find(v.Name, "Cider") or string.find(v.Name, "Lemonade") or string.find(v.Name, "Smoothie") or string.find(v.Name, "Golden") then
													game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
													wait(0.1)
						for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
							if v:IsA("Tool") and string.find(v.Name, "Juice") or string.find(v.Name, "Milk") or string.find(v.Name, "Cider") or string.find(v.Name, "Lemonade") or string.find(v.Name, "Smoothie") or string.find(v.Name, "Golden") then
									v:Activate()
								end
							end
							end
							end
						end)
							end)
		until game.Players.LocalPlayer.Character.Humanoid.Health <= 0
		end)
		for i,v in pairs(workspace.Barrels.Barrels:GetChildren()) do
			if v.Name == "Barrel" and v.Rotation ~= Vector3.new(0,0,0) then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
			wait(0.15)
			end
		end
		for i,v in pairs(workspace.Barrels.Crates:GetChildren()) do
			if v.Name == "Crate" and v.Rotation ~= Vector3.new(0,0,0) and v:FindFirstChild("ClickDetector") then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
			wait(0.15)
			end
		end
	end