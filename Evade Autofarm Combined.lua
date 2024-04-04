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

local Player = game.Players.LocalPlayer    
local Http = game:GetService("HttpService")
local TPS = game:GetService("TeleportService")
local Api = "https://games.roblox.com/v1/games/"

local _place,_id = game.PlaceId, game.JobId
local _servers = Api.._place.."/servers/Public?sortOrder=Asc&limit=10"
function ListServers(cursor)
   local Raw = game:HttpGet(_servers .. ((cursor and "&cursor="..cursor) or ""))
   return Http:JSONDecode(Raw)
end

time_to_wait = 250
while wait(time_to_wait) do
   Player.Character.HumanoidRootPart.Anchored = true
   local Servers = ListServers()
   local Server = Servers.data[math.random(1,#Servers.data)]
   TPS:TeleportToPlaceInstance(_place, Server.id, Player)
end
