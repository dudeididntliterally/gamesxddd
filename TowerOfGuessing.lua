local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local MainWindow = OrionLib:MakeWindow({Name = "Tower Of Guessing", HidePremium = false, SaveConfig = true, ConfigFolder = "TowerOfGuessing.lua"})
local MainTab = MainWindow:MakeTab({
	Name = "Home",
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

MainTab:AddButton({
Name = "Get All Badges",
Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-462.151398, 4369.55518, 364.999878)
end})

BackToGamePicker:AddButton({
Name = "Go Back To Game Picker",
Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/dudeididntliterally/GamePickerMain/main/GamePicker.lua"))()
end})
