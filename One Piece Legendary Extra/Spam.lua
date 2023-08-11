local remotes = {}
    local a
    a=hookmetamethod(game,"__namecall",function(self,...)
        local args = {...}
        local method = getnamecallmethod()
        if method == "FireServer" or method == "InvokeServer" then
            if self.Name == "RemoteEvent" and not getgenv().goro and args[3] == "StopCharging" then
                remotes[self.Name] = args[1]
                return a(self,unpack(args))
            end
        end
          return a(self,...)
    end)
    
    local attackremote = {}
    
    local a

    a=hookmetamethod(game,"__namecall",function(self,...)
        local args = {...}
        local method = getnamecallmethod()
        if method == "FireServer" or method == "InvokeServer" then
            if self.Name == "RequestAnimation" and not getgenv().fastattack then
                attackremote[self.Name] = args[1]
                return a(self,unpack(args))
            end
        end
          return a(self,...)
    end)

    function serializeTable(val, name, skipnewlines, depth)
       skipnewlines = skipnewlines or false
       depth = depth or 0
    
       local tmp = string.rep("", depth)
    
       if name then tmp = tmp end
    
       if type(val) == "table" then
           tmp = tmp .. (not skipnewlines and "" or "")
    
           for k, v in pairs(val) do
               tmp =  tmp .. serializeTable(v, k, skipnewlines, depth + 1) .. (not skipnewlines and "" or "")
           end
    
           tmp = tmp .. string.rep("", depth) 
       elseif type(val) == "number" then
           tmp = tmp .. tostring(val)
       elseif type(val) == "string" then
           tmp = tmp .. string.format("%q", val)
       elseif type(val) == "boolean" then
           tmp = tmp .. (val and "true" or "false")
       elseif type(val) == "function" then
           tmp = tmp  .. "func: " .. debug.getinfo(val).name
       else
           tmp = tmp .. tostring(val)
       end
    
       return tmp
    end
   
getgenv().test = true
while getgenv().test do wait()
for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
	if v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health ~= 0 then
	--if(game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude < 300 then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,75,0)
repeat wait()
local args = {
    [1] = tonumber(serializeTable(remotes)),
    [2] = "GasPower4",
    [3] = "StartCharging",
    [4] = CFrame.new(v.HumanoidRootPart.Position),
    [5] = v.HumanoidRootPart,
    [7] = "Right"
}

game:GetService("Players").LocalPlayer.Character.Powers.Gas.RemoteEvent:FireServer(unpack(args))
local args = {
    [1] = tonumber(serializeTable(remotes)),
    [2] = "GasPower4",
    [3] = "StopCharging",
    [4] = CFrame.new(v.HumanoidRootPart.Position),
    [5] = v.HumanoidRootPart,
    [6] = 100
}

game:GetService("Players").LocalPlayer.Character.Powers.Gas.RemoteEvent:FireServer(unpack(args))
until v.Humanoid.Health == 0 or game.Players.LocalPlayer.Character.Humanoid.Health == 0 or not getgenv().test
end
end
end