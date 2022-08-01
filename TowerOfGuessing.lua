local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/kav"))()
local Window = Library.CreateLib("Tower Of Badges", "DarkTheme")
local HomeWindow = Window:NewTab("Home")
local Home = HomeWindow:NewSection("Home Section")

local workspace = game:GetService("Workspace")

Home:NewButton("Get Badges (30+)", "Home", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-479.921051, 4369.55518, 365.876068)
end)
