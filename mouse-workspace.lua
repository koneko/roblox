    local Camera = workspace.CurrentCamera
    local Player = game:GetService("Players").LocalPlayer
    local Mouse = Player:GetMouse()
     
    --This will create a cube facing centered at the origin of the [[Ray]] returned and facing in the same direction. The center of the cube will be one stud in front of the camera.
    Mouse.Button1Down:Connect(function()
    	  local ray = Camera:ScreenPointToRay(Mouse.X, Mouse.Y, 1)
        local cube = Instance.new("Part", workspace)
        cube.Size = Vector3.new(1, 1, 1)
        cube.CFrame = CFrame.new(ray.Origin, ray.Origin + ray.Direction)
        cube.Anchored = true
    end)
