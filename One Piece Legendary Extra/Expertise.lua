--Quest = {"Kill","Elite Kill","Quests","Money"}
if workspace.UserData["User_"..game.Players.LocalPlayer.UserId].Data.MissionObjective == "None" then
    workspace:WaitForChild("Merchants"):WaitForChild("ExpertiseMerchant"):WaitForChild("Clickable"):WaitForChild("Retum"):FireServer()
    end