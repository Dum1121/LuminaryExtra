if getgenv().noclipsetup ~= true then
    spawn(function()
        game:GetService("RunService").Heartbeat:Connect(function()
            if getgenv().noclip then
                if not game:GetService("Workspace"):FindFirstChild("LOL") then
                    local LOL = Instance.new("Part")
                    LOL.Name = "LOL"
                    LOL.Parent = game.Workspace
                    LOL.Anchored = true
                    LOL.Transparency = 1
                    LOL.Size = Vector3.new(50,-0.5,50)
                elseif game:GetService("Workspace"):FindFirstChild("LOL") then
                    game.Workspace["LOL"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, -3, 0)
                end
            else
                if game:GetService("Workspace"):FindFirstChild("LOL") then
                    game:GetService("Workspace"):FindFirstChild("LOL"):Destroy()
                end
            end
        end)
    end)
    spawn(function()
        game:GetService("RunService").Stepped:Connect(function()
            if getgenv().noclip then
                for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                    if v:IsA("BasePart") then
                        v.CanCollide = false
                    end
                end
            end
        end)
    end)
    getgenv().noclipsetup = true
end
