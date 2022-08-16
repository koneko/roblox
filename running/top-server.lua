game.Players.PlayerAdded:connect(function(player)
local RunS = script.RunFunction:clone()
RunS.Parent = player.Character
RunS.Disabled = false

player.CharacterAdded:connect(function(Character)
local RunS = script.RunFunction:clone()
RunS.Parent = player.Character
RunS.Disabled = false
end)
end)
