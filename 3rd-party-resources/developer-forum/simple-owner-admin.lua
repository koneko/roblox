local commands = {}

commands.example = function(player,args)
 
end

game.Players.PlayerAdded:Connect(function(player)
	if player.UserId == 440177821 or (game.PrivateServerId ~= 0 and player.UserId == game.PrivateServerOwnerId) then
		player.Chatted:Connect(function(msg, recipient)
			msg = string.lower(msg)
			local splitStr = msg:split(" ")
			local cmd = splitStr[1]:split(":")[2]
			table.remove(splitStr, 1)
			local args = splitStr
			if commands[cmd] then
				commands[cmd](player, args)
			end
		end)
	end
	
end)
