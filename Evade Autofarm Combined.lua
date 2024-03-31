local function executeScript(script)
    local success, result = pcall(loadstring(script))
    return success, result
end

game.Loaded:Wait()

game:GetService("ReplicatedStorage").Events.Respawn:FireServer()
wait(10)

getgenv().LoopAutofarm = true

local success, error = executeScript(game:HttpGet("https://raw.githubusercontent.com/M2Sky/Scripts/main/Evade%20Autofarm.lua"))
if not success then
    warn("Evade Autofarm script failed to execute:", error)
end

wait(400)

success, error = executeScript(game:HttpGet("https://raw.githubusercontent.com/LeoKholYt/roblox/main/lk_serverhop.lua"))
if not success then
    warn("Server hop script failed to execute:", error)
end

if module and module.Teleport then
    module:Teleport(game.PlaceId)
end
