--- @diagnostic disable: undefined-global
--- Written with the assumption that the script is in [StarterPlayer -> StarterCharacterScripts]

local character = script.Parent
local humanoid = character:FindFirstChildWhichIsA('Humanoid') or character:WaitForChild('Humanoid')

local userInputService = game:GetService('UserInputService')
local starterPlayer = game:GetService('StarterPlayer')

local currentCamera = workspace.CurrentCamera
local fov = currentCamera.FieldOfView
local walkspeed = starterPlayer.CharacterWalkSpeed

workspace:GetPropertyChangedSignal('CurrentCamera'):Connect(function()
	currentCamera = workspace.CurrentCamera
end)

local function lerp(a, b, t)
	return a + (b - a) * t
end

while typeof(humanoid) == 'Instance' and humanoid.Health > 0 do
	task.wait()
	if typeof(currentCamera) == 'Instance' then
		if userInputService:IsKeyDown(Enum.KeyCode.LeftShift) then
			currentCamera.FieldOfView = lerp(currentCamera.FieldOfView, fov * 1.05, 0.3)
			humanoid.WalkSpeed = lerp(humanoid.WalkSpeed, walkspeed * 1.5, .3)
		else
			currentCamera.FieldOfView = lerp(currentCamera.FieldOfView, fov, 0.3)
			humanoid.WalkSpeed = lerp(humanoid.WalkSpeed, walkspeed, .3)
		end
	end
end