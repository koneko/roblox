--- @diagnostic disable: undefined-global
--- Using the ControlModule is best done within the PlayerScripts instance.

local playerScripts = script:FindFirstAncestorWhichIsA('PlayerScripts')
local playerModule = require(playerScripts:WaitForChild('PlayerModule'))
local controlModule = playerModule:GetControls()

--- The ControlModule is enabled by default.
controlModule:Disable()

--- Do a task between disabling and re-enabling it.
wait(3)
controlModule:Enable()