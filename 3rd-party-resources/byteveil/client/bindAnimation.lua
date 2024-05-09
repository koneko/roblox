--- @diagnostic disable: undefined-global, unused-function, need-check-nil, undefined-field, inject-field
--- Written with the assumption that the script is in [StarterPlayer -> StarterCharacterScripts]

local character = script.Parent
local humanoid = character:FindFirstChildWhichIsA('Humanoid') or character:WaitForChild('Humanoid')
local animator = humanoid:WaitForChild('Animator')

local starterPlayer = game:GetService('StarterPlayer')
local lastAnimationData

local function createAnimation(animationId)
	local animation = Instance.new('Animation')
	animation.AnimationId = animationId
	return animation
end

local animationFunctions = {
	{
		bind = 'j',
		animation = createAnimation('rbxassetid://16898967644'), -- Must be an Animation
		track = nil, -- You do not need to change this value
		speed = 'default', -- These values can be 'default' for the default in-game speed or a number
		jump = 'default'
	}
}

local function calculateSpeed(speed)
	return speed == 'default' and starterPlayer.CharacterWalkSpeed or speed
end

local function calculateJump(jump)
	return jump == 'default' and starterPlayer.CharacterJumpPower or jump
end

game:GetService('UserInputService').InputBegan:Connect(function(inputObject, gameProcessedEvent)
	if gameProcessedEvent == true then
		return
	end

	for _, animationData in pairs(animationFunctions) do
		local animation = animationData.animation
		local track = animationData.track
		local bind = animationData.bind
		local speed = animationData.speed
		local jump = animationData.jump

		if inputObject.KeyCode.Name:lower() == bind and animator then
			if lastAnimationData then
				lastAnimationData.track:Stop()
				humanoid.WalkSpeed = starterPlayer.CharacterWalkSpeed
				humanoid.JumpPower = starterPlayer.CharacterJumpPower
			end

			if animationData ~= lastAnimationData and typeof(animation) == 'Instance' and animation:IsA('Animation') then
				animationData.track = animator:LoadAnimation(animation)
				track = animationData.track
				track.Priority = Enum.AnimationPriority.Action
				track:Play()
				humanoid.WalkSpeed = calculateSpeed(speed)
				humanoid.JumpPower = calculateJump(jump)
				lastAnimationData = animationData
				break
			end

			lastAnimationData = nil
		end
	end
end)
