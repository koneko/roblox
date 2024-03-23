local function hideAllPlayers()
	for _, plr in pairs(game.Players:GetPlayers()) do
			local char = plr.Character
		for _, child in pairs(char:GetChildren()) do
			if child.Name == "HumanoidRootPart" then continue end
			if child.Name == "Head" then
				child.face.Transparency = 1
			end
			if child:IsA("Part") or child:IsA("MeshPart") then
				child.Transparency = 1
			elseif child:IsA("Accessory") then
				child:FindFirstChild("Handle").Transparency = 1
			end
		end
	end
end

local function showAllPlayers()
	for _, plr in pairs(game.Players:GetPlayers()) do
		local char = plr.Character
		for _, child in pairs(char:GetChildren()) do
			if child.Name == "HumanoidRootPart" then continue end
			if child.Name == "Head" then
				child.face.Transparency = 1
			end
			if child:IsA("Part") or child:IsA("MeshPart") then
				child.Transparency = 0
			elseif child:IsA("Accessory") then
				child:FindFirstChild("Handle").Transparency = 0
			end
		end
	end
end
