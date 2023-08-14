local a = 0

getgenv().aw = true
while getgenv().aw do wait(0.1)
local args = {
    [1] = ""..a.."",
    [2] = "59"
}

game:GetService("ReplicatedStorage"):WaitForChild("UnAFK"):InvokeServer(unpack(args))
local args = {
    [1] = "-"..a.."",
    [2] = "59"
}

game:GetService("ReplicatedStorage"):WaitForChild("UnAFK"):InvokeServer(unpack(args))
a += 1
if a >= 100 then
a -= a
end
end
