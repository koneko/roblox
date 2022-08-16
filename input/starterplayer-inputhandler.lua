local UIS = game:GetService("UserInputService")
local function inputHandler() 
	local keysPressed = UIS:GetKeysPressed()
	for _, key in pairs(keysPressed) do

	end
end


UIS.InputBegan:Connect(function(input, state)
	if state then
		return
	else
		inputHandler()
	end
end)
