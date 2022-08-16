local player = game:GetService("Players").LocalPlayer -- player
local controls = require(player.PlayerScripts:WaitForChild("PlayerModule")):GetControls() -- controls

controls:Disable() -- disables player controls
controls:Enable() -- enables player controls
