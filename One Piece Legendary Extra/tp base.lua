function tp(tp)
    for i,v in pairs(game:GetService("Workspace").ISLAND:GetChildren()) do
        if tp == "Base1" and v.Name == "Base1" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame * CFrame.new(0,1,0)
        elseif tp == "Base2" and v.Name == "Base2" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame * CFrame.new(0,1,0)
        end
    end
end
tp("Base1")