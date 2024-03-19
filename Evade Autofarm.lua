-- Not made by me


local sheesh = game:GetService("Players").LocalPlayer

woah = Instance.new('Part', game.Workspace)
woah.Name = "part"
woah.Size = Vector3.new(100000,5,100000)
woah.Color = Color3.fromRGB(100,166,200)
woah.Anchored = true
woah.Transparency = 0
woah.CFrame = CFrame.new(308, -397, 544)

part = Instance.new('Part', game.Workspace)
part.Name = "part"
part.Size = Vector3.new(100000,5,100000)
part.Color = Color3.fromRGB(100,166,200)
part.Anchored = true
part.Transparency = 0
part.CFrame = CFrame.new(308, -397, 544)



spawn(function() 
    
while getgenv().LoopAutofarm do
    wait(1)
    for i,v in pairs(game:GetService("Workspace").Game.Effects.Tickets:GetChildren()) do
    if v.HumanoidRootPart ~= nil and game.Players.LocalPlayer:GetAttribute('InMenu') ~= true then
    sheesh.Character.HumanoidRootPart.CFrame = CFrame.new(308, -397, 544)
    wait(1)
    sheesh.Character.HumanoidRootPart.CFrame = CFrame.new(v:WaitForChild('HumanoidRootPart').Position)
    wait(0.5)
    sheesh.Character.HumanoidRootPart.CFrame = CFrame.new(308, -397, 544)
    wait(1)
end
end
end
end)

spawn(function() 
    while getgenv().LoopAutofarm do
        wait(1)
    if sheesh.Character and sheesh.Character:GetAttribute("Downed") then
            game:GetService("ReplicatedStorage").Events.Respawn:FireServer()
            task.wait(3)
            end
    end
end)

spawn(function() 
    wait(1)
    while getgenv().LoopAutofarm do 
        wait(5)
        if game.Workspace.part or woah == nil then
woah = Instance.new('Part', game.Workspace)
woah.Name = "part"
woah.Size = Vector3.new(100000,5,100000)
woah.Color = Color3.fromRGB(100,166,200)
woah.Anchored = true
woah.Transparency = 0 
woah.CFrame = CFrame.new(308, -397, 544)

part = Instance.new('Part', game.Workspace)
part.Name = "part"
part.Size = Vector3.new(100000,5,100000)
part.Color = Color3.fromRGB(100,166,200)
part.Anchored = true
part.Transparency = 0
part.CFrame = CFrame.new(308, -397, 544)
end
    end
end)


spawn(function() 
    wait(1)
    while getgenv().LoopAutofarm do
        wait(10)
        sheesh.Character.HumanoidRootPart.CFrame = CFrame.new(308, -397, 544)
    end
end)
