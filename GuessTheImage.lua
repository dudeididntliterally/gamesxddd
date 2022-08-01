local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/kav"))()
local Window = Library.CreateLib("Guess The Image", "DarkTheme")
local HomeWindow = Window:NewTab("Home")
local Home = HomeWindow:NewSection("Home Section")

local workspace = game:GetService("Workspace")

Home:NewButton("Get All Badges", "Home", function()
for i,v in pairs(workspace:GetDescendants()) do
    if v.Name == "Part" then
        firetouchinterest(v, game.Players.LocalPlayer.Character.HumanoidRootPart, 0)
    end
end
end)
