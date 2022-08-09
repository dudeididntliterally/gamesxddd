local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local MainWindow = OrionLib:MakeWindow({Name = "Tower Of Guessing", HidePremium = false, SaveConfig = true, ConfigFolder = "TowerOfGuessing.lua"})
local MainTab = MainWindow:MakeTab({
	Name = "Home",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Section = MainTab:AddSection({
	Name = "Section"
})

MainTab:AddButton({
Name = "Get All Badges",
Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-462.151398, 4369.55518, 364.999878)
end})
