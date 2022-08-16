local Player = game.Players:GetPlayerFromCharacter(script.Parent)
C = script.Parent
Mouse = Player:GetMouse()
Debounce = false

Mouse.KeyDown:connect(function(key)
key = string.lower(key)
if string.byte(key) == 48 then
if Debounce == false then
Debounce = true
C.Humanoid.WalkSpeed = 25 -- Change to what you want the players walkspeed to be.
for i=1,10 do
--game.Workspace.CurrentCamera.FieldOfView = (70 + (i * 2)) -- This makes the players camera go farther away from the player so it makes a nice run effect. Since the camera's current view is 70 we just made it 90.
wait()
end
end
end
end)

Mouse.KeyUp:connect(function(key)
key = string.lower(key)
if string.byte(key) == 48 then
if Debounce == true then
Debounce = false
C.Humanoid.WalkSpeed = 12
for i=1,10 do
--game.Workspace.CurrentCamera.FieldOfView = (90 - (i * 2)) -- This makes the players camera go closer to the player. Now the camera makes the walking effect. The camera view is now 70.
wait()
end
end
end
end)
