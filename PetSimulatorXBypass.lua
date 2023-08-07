local plr = game.Players.LocalPlayer
local Client = require(game.ReplicatedStorage.Library.Client)
local Library = require(game.ReplicatedStorage.Library)
if (not getgenv().hooked) then
do -- Patching/Hooking
    
        hookfunction(debug.getupvalue(Client.Network.Fire, 1) , function(...) return true end)
        hookfunction(debug.getupvalue(Client.Network.Invoke, 1) , function(...) return true end)
        getgenv().hooked = true
    

    local Blunder = require(game.ReplicatedStorage:FindFirstChild("BlunderList", true))
    local OldGet = Blunder.getAndClear

    setreadonly(Blunder, false)

    Blunder.getAndClear = function(...)
        local Packet = ...
        for i,v in next, Packet.list do
            if v.message ~= "PING" then
                table.remove(Packet.list, i)
            end
        end
        return OldGet(Packet)
    end
end
end
