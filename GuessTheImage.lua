local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local MainWindow = OrionLib:MakeWindow({Name = "Guess The Image", HidePremium = false, SaveConfig = true, ConfigFolder = "GuessTheImage.lua"})
local MainTab = MainWindow:MakeTab({
	Name = "Home",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Section = MainTab:AddSection({
	Name = "Main"
})

local workspace = game:GetService("Workspace")

MainTab:AddButton({
	Name = "Get Badges",
	Callback = function()
for i,v in pairs(workspace:GetDescendants()) do
    if v.Name == "Part" then
        firetouchinterest(v, game.Players.LocalPlayer.Character.HumanoidRootPart, 0)
    end
end
end})
