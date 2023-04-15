wait(1)

local UIS = game:GetService("UserInputService")

local humanoid = script.Parent:WaitForChild("Humanoid",10)

local playingAnimationTrack, Playing, CurrentPlaying = nil, false, "NONE"
local CurrentSpeed, CurrentJump = 0, 0

-- put script in starterplayer -> startercharacterscripts
local animationTable = {
	{
		AnimationKey = "J",
		AnimationTrack = script:WaitForChild("AnimNameAsChildOfScript"),
		AnimationSpeed = 16,
		AnimationJump = 50,
	},
}


function stopAnimations()
	if playingAnimationTrack ~= nil then
		playingAnimationTrack:Stop()
	end
end

UIS.InputBegan:Connect(function(input, gpe)
	if gpe then return end
	for i,anim in pairs(animationTable) do
		if input.KeyCode == Enum.KeyCode[anim.AnimationKey] then
			if Playing == true then
				
				if CurrentPlaying ~= anim.AnimationTrack.Name then
					stopAnimations()
					playingAnimationTrack = humanoid:LoadAnimation(anim.AnimationTrack)
					playingAnimationTrack.Priority = Enum.AnimationPriority.Action4
					playingAnimationTrack.Looped = true
					playingAnimationTrack:Play()

					Playing = true
					CurrentPlaying = anim.AnimationTrack.Name
					CurrentSpeed = anim.AnimationSpeed
					CurrentJump = anim.AnimationJump
					
				else
					stopAnimations()
					playingAnimationTrack = nil

					Playing = false
					CurrentPlaying = "NONE"
					humanoid.WalkSpeed = 16
					humanoid.JumpPower = 50
					
				end
				
			elseif Playing == false then
				
				stopAnimations()
				playingAnimationTrack = humanoid:LoadAnimation(anim.AnimationTrack)
				playingAnimationTrack.Priority = Enum.AnimationPriority.Action4
				playingAnimationTrack.Looped = true
				playingAnimationTrack:Play()
				
				Playing = true
				CurrentPlaying = anim.AnimationTrack.Name
				CurrentSpeed = anim.AnimationSpeed
				CurrentJump = anim.AnimationJump
				
			end
		end
	end
end)

while wait(0.1) do 
	if humanoid ~= nil and Playing then
		humanoid.WalkSpeed = CurrentSpeed
		humanoid.JumpPower = CurrentJump
	end
end
