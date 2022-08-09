local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local MainWindow = OrionLib:MakeWindow({Name = "Guess The Image", HidePremium = false, SaveConfig = true, ConfigFolder = "GuessTheImage.lua"})
local MainTab = MainWindow:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local MainStuff = MainTab:AddSection({
	Name = "Main"
})
local BackToGamePicker = MainWindow:MakeTab({
	Name = "Go Back",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local GamePicker = BackToGamePicker:AddSection({
	Name = "Go Back"
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

BackToGamePicker:AddButton({
Name = "Go Back To Game Picker",
Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/dudeididntliterally/GamePickerMain/main/GamePicker.lua"))()
end})
