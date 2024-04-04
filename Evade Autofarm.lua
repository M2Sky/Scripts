local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local sheesh = Players.LocalPlayer

local part = Instance.new('Part', Workspace)
part.Name = "part"
part.Size = Vector3.new(100000, 5, 100000)
part.Color = Color3.fromRGB(100, 166, 200)
part.Anchored = true
part.Transparency = 0
part.CFrame = CFrame.new(308, -397, 544)

local LoopAutofarm = getgenv().LoopAutofarm
local HumanoidRootPart = sheesh.Character and sheesh.Character:WaitForChild("HumanoidRootPart")

local function ResetAutofarm()
    task.wait(8) -- Wait for 8 seconds before resetting
    LoopAutofarm = true -- Set LoopAutofarm to true to restart the autofarm
end

spawn(function()
    while LoopAutofarm do
        task.wait(0.4)
        for _, v in ipairs(Workspace.Game.Effects.Tickets:GetChildren()) do
            if v.HumanoidRootPart and not sheesh:GetAttribute('InMenu') then
                HumanoidRootPart.CFrame = CFrame.new(308, -397, 544)
                task.wait()
                HumanoidRootPart.CFrame = CFrame.new(v.HumanoidRootPart.Position)
                task.wait(0.8)
                HumanoidRootPart.CFrame = CFrame.new(308, -397, 544)
            end
        end
    end
end)

spawn(function()
    task.wait(0.7)
    while LoopAutofarm do
        task.wait(1)
        if sheesh.Character and sheesh.Character:GetAttribute("Downed") then
            ReplicatedStorage.Events.Respawn:FireServer()
            ResetAutofarm() -- Call the function to reset the autofarm loop
        end
    end
end)

spawn(function()
    task.wait(0.4)
    while LoopAutofarm do
        task.wait(1)
        if not part or part.Parent == nil then
            part = Instance.new('Part', Workspace)
            part.Name = "part"
            part.Size = Vector3.new(100000, 5, 100000)
            part.Color = Color3.fromRGB(100, 166, 200)
            part.Anchored = true
            part.Transparency = 0
            part.CFrame = CFrame.new(308, -397, 544)
        end
    end
end)

spawn(function()
    task.wait(0.6)
    while LoopAutofarm do
        HumanoidRootPart.CFrame = CFrame.new(308, -397, 544)
        task.wait(0.8)
        HumanoidRootPart.CFrame = CFrame.new(297, -397, 499)
        task.wait(0.8)
        HumanoidRootPart.CFrame = CFrame.new(413, 100, 544)
        task.wait(6)
        HumanoidRootPart.CFrame = CFrame.new(394, -200, 499)
    end
end)
