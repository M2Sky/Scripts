local nigga = game:GetService("Players").LocalPlayer

woah = Instance.new('Part', game.Workspace)
woah.Name = "WEWEWEWEWEWEWEWWEWEWBATUYSWASHERE"
woah.Size = Vector3.new(100000,5,100000)
woah.Color = Color3.fromRGB(100,166,200)
woah.Anchored = true
woah.Transparency = 0 --set to whatever lol
woah.CFrame = CFrame.new(308, -397, 544)

WEWEWEWEWEWEWEWWEWEWBATUYSWASHERE = Instance.new('Part', game.Workspace)
WEWEWEWEWEWEWEWWEWEWBATUYSWASHERE.Name = "WEWEWEWEWEWEWEWWEWEWBATUYSWASHERE"
WEWEWEWEWEWEWEWWEWEWBATUYSWASHERE.Size = Vector3.new(100000,5,100000)
WEWEWEWEWEWEWEWWEWEWBATUYSWASHERE.Color = Color3.fromRGB(100,166,200)
WEWEWEWEWEWEWEWWEWEWBATUYSWASHERE.Anchored = true
WEWEWEWEWEWEWEWWEWEWBATUYSWASHERE.Transparency = 0
WEWEWEWEWEWEWEWWEWEWBATUYSWASHERE.CFrame = CFrame.new(308, -397, 544)



local function AutoFarm()
    while true do
        wait(1)
        for i,v in pairs(game:GetService("Workspace").Game.Effects.Tickets:GetChildren()) do
            if v.HumanoidRootPart ~= nil and game.Players.LocalPlayer:GetAttribute('InMenu') ~= true then
                local nigga = game.Players.LocalPlayer.Character -- Assuming nigga is the local player's character
                nigga.HumanoidRootPart.CFrame = CFrame.new(308, -397, 544)
                wait(1)
                nigga.HumanoidRootPart.CFrame = CFrame.new(v:WaitForChild('HumanoidRootPart').Position)
                wait(0.5)
                nigga.HumanoidRootPart.CFrame = CFrame.new(308, -397, 544)
                wait(1)
            end
        end
    end
end
wait(1)
spawn(AutoFarm)


spawn(function() 
    while getgenv().LoopAutofarm do  --instant respawn when downed for safety
        wait(1)
    if nigga.Character and nigga.Character:GetAttribute("Downed") then
            game:GetService("ReplicatedStorage").Events.Respawn:FireServer()
            task.wait(3)
spawn(AutoFarm)
            end
    end
end)

spawn(function() 
    wait(1)
    while getgenv().LoopAutofarm do 
        wait(5)--checking if part destroyed for safe autofarm
        if game.Workspace.WEWEWEWEWEWEWEWWEWEWBATUYSWASHERE or woah == nil then
woah = Instance.new('Part', game.Workspace)
woah.Name = "WEWEWEWEWEWEWEWWEWEWBATUYSWASHERE"
woah.Size = Vector3.new(100000,5,100000)
woah.Color = Color3.fromRGB(100,166,200)
woah.Anchored = true
woah.Transparency = 0 
woah.CFrame = CFrame.new(308, -397, 544)

WEWEWEWEWEWEWEWWEWEWBATUYSWASHERE = Instance.new('Part', game.Workspace)
WEWEWEWEWEWEWEWWEWEWBATUYSWASHERE.Name = "WEWEWEWEWEWEWEWWEWEWBATUYSWASHERE"
WEWEWEWEWEWEWEWWEWEWBATUYSWASHERE.Size = Vector3.new(100000,5,100000)
WEWEWEWEWEWEWEWWEWEWBATUYSWASHERE.Color = Color3.fromRGB(100,166,200)
WEWEWEWEWEWEWEWWEWEWBATUYSWASHERE.Anchored = true
WEWEWEWEWEWEWEWWEWEWBATUYSWASHERE.Transparency = 0
WEWEWEWEWEWEWEWWEWEWBATUYSWASHERE.CFrame = CFrame.new(308, -397, 544)
end
    end
end)


spawn(function() 
    wait(1)
    while getgenv().LoopAutofarm do --for safety
        wait(10)
        nigga.Character.HumanoidRootPart.CFrame = CFrame.new(308, 10000, 544)
        wait(10)
        nigga.Character.HumanoidRootPart.CFrame = CFrame.new(931, 769, 521)
    end
end)
