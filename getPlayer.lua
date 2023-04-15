local function startswith(main, start)
	return main:sub(1, #start) == start
end
local function getPlayer(name)
	for _, player in pairs(game.Players:GetChildren()) do
		if startswith(player.Name:lower(), name:lower()) then
				return player
    end
  end
end
