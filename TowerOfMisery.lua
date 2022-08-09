--Tower Of Misery Different UI

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/kav"))()
local Window = Library.CreateLib("Tower Of Misery", "DarkTheme")
local HomeWindow = Window:NewTab("Home")
local OtherWindow = Window:NewTab("Other")
local TeleportWindow = Window:NewTab("Teleport")
local AntiCheatWindow = Window:NewTab("Anti Cheat")
local FunWindow = Window:NewTab("Fun")
local SpecialWindow = Window:NewTab("Special")
local Home = HomeWindow:NewSection("Home Section")
local OtherStuff = OtherWindow:NewSection("OtherStuff")
local Teleport = TeleportWindow:NewSection("Teleports")
local AntiCheat = AntiCheatWindow:NewSection("AntiCheat")
local Fun = FunWindow:NewSection("Fun Stuff")

local cmdp = game:GetService("Players")
local cmdlp = cmdp.LocalPlayer
local player = cmdlp

function findplr(args, tbl)
	if tbl == nil then
		local tbl = cmdp:GetPlayers()
		if args == "me" then
			return cmdlp
		elseif args == "random" then 
			return tbl[math.random(1,#tbl)]
		elseif args == "new" then
			local vAges = {} 
			for _,v in pairs(tbl) do
				if v.AccountAge < 30 and v ~= cmdlp then
					vAges[#vAges+1] = v
				end
			end
			return vAges[math.random(1,#vAges)]
		elseif args == "old" then
			local vAges = {} 
			for _,v in pairs(tbl) do
				if v.AccountAge > 30 and v ~= cmdlp then
					vAges[#vAges+1] = v
				end
			end
			return vAges[math.random(1,#vAges)]
		elseif args == "bacon" then
			local vAges = {} 
			for _,v in pairs(tbl) do
				if v.Character:FindFirstChild("Pal Hair") or v.Character:FindFirstChild("Kate Hair") and v ~= cmdlp then
					vAges[#vAges+1] = v
				end
			end
			return vAges[math.random(1,#vAges)]
		elseif args == "friend" then
			local vAges = {} 
			for _,v in pairs(tbl) do
				if v:IsFriendsWith(cmdlp.UserId) and v ~= cmdlp then
					vAges[#vAges+1] = v
				end
			end
			return vAges[math.random(1,#vAges)]
		elseif args == "notfriend" then
			local vAges = {} 
			for _,v in pairs(tbl) do
				if not v:IsFriendsWith(cmdlp.UserId) and v ~= cmdlp then
					vAges[#vAges+1] = v
				end
			end
			return vAges[math.random(1,#vAges)]
		elseif args == "ally" then
			local vAges = {} 
			for _,v in pairs(tbl) do
				if v.Team == cmdlp.Team and v ~= cmdlp then
					vAges[#vAges+1] = v
				end
			end
			return vAges[math.random(1,#vAges)]
		elseif args == "enemy" then
			local vAges = {} 
			for _,v in pairs(tbl) do
				if v.Team ~= cmdlp.Team then
					vAges[#vAges+1] = v
				end
			end
			return vAges[math.random(1,#vAges)]
		elseif args == "near" then
			local vAges = {} 
			for _,v in pairs(tbl) do
				if v ~= cmdlp then
					local math = (v.Character:FindFirstChild("HumanoidRootPart").Position - cmdlp.Character.HumanoidRootPart.Position).magnitude
					if math < 30 then
						vAges[#vAges+1] = v
					end
				end
			end
			return vAges[math.random(1,#vAges)]
		elseif args == "far" then
			local vAges = {} 
			for _,v in pairs(tbl) do
				if v ~= cmdlp then
					local math = (v.Character:FindFirstChild("HumanoidRootPart").Position - cmdlp.Character.HumanoidRootPart.Position).magnitude
					if math > 30 then
						vAges[#vAges+1] = v
					end
				end
			end
			return vAges[math.random(1,#vAges)]
		else 
			for _,v in pairs(tbl) do
				if v.Name:lower():find(args:lower()) or v.DisplayName:lower():find(args:lower()) then
					return v
				end
			end
		end
	else
		for _, plr in pairs(tbl) do
			if plr.UserName:lower():find(args:lower()) or plr.DisplayName:lower():find(args:lower()) then
				return plr
			end
		end
	end
end

local workspace = game:GetService("Workspace")
local Rep = game.ReplicatedStorage

wait()
game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage",{
	Text = "Designed And Mostly Coded By BIGDAWGZACK#8318",
	Color = Color3.fromRGB(207, 96, 36)
})
wait()
game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage",{
	Text = "Updated Both FE Kill And FE Bring So Just Type Some Of The User (aka shortened)",
	Color = Color3.fromRGB(207, 96, 36)
})

Home:NewButton("God Mode", "Home", function()
    Rep.Server_Data.ImmunityEnabled.Value = true
end
)

Home:NewButton("Fly (e = toggle)", "Home", function()
loadstring(game:HttpGet('https://pastebin.com/raw/d32zM888'))()
end
)

Teleport:NewButton("TP To Top", "Teleport", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-117.169624, 253.999847, 49.9136276)
end
)

OtherStuff:NewButton("Old Bypass WalkSpeed","OtherStuff",function()
    local old
old = hookfunction(getrawmetatable(game).__namecall,(function(...)
    local args = {...}
    local self = args[1]
    local method = getnamecallmethod()
    if(self==game and method=="GetService"and args[2]:lower()=="workspace")then
        return game.ReplicatedStorage
    end
    return old(...)
end))
local old
old = hookfunction(getrawmetatable(game).__index,(function(...)
    local self,key = ...
    if(self:IsA("Humanoid")and key=="WalkSpeed")then
        return 16
    end
    return old(...)
end))
end
)

AntiCheat:NewButton("Anti Cheat Bypass (Fly)", "AntiCheat", function()
game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage",{
	Text = "Press On Respawn And After Every Round",
	Color = Color3.fromRGB(207, 96, 36)
})
local h = game.Workspace
for i,v in pairs(getconnections(h:GetPropertyChangedSignal"Gravity")) do
   v:Disable()
end
end)

AntiCheat:NewButton("Anti Cheat Bypass (Gravity)", "AntiCheat", function()
game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage",{
	Text = "Press On Respawn And After Every Round",
	Color = Color3.fromRGB(207, 96, 36)
})
local h = game.Players.LocalPlayer.Character.HumanoidRootPart
for i,v in pairs(getconnections(h:GetPropertyChangedSignal"Velocity")) do
   v:Disable()
end
end)

OtherStuff:NewButton("Old Bypass JumpPower", "OtherStuff", function()
    local old
old = hookfunction(getrawmetatable(game).__namecall,(function(...)
    local args = {...}
    local self = args[1]
    local method = getnamecallmethod()
    if(self==game and method=="GetService"and args[2]:lower()=="workspace")then
        return game.ReplicatedStorage
    end
    return old(...)
end))
local old
old = hookfunction(getrawmetatable(game).__index,(function(...)
    local self,key = ...
    if(self:IsA("Humanoid")and key=="JumpPower")then
        return 50
    end
    return old(...)
end))
end
)

OtherStuff:NewSlider("WalkSpeed", "Home", 300, 16, function(arg)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = arg
end
)

OtherStuff:NewSlider("JumpPower", "Home", 350, 50, function(arg)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = arg
end
)

AntiCheat:NewButton("Anti Cheat Bypass", "AntiCheat", function()
local mt = getrawmetatable(game)
make_writeable(mt)

local namecall = mt.__namecall

mt.__namecall = newcclosure(function(self, ...)
    local method = getnamecallmethod()
    local args = {...}
    
    if method == "InvokeServer" and tostring(self) == "CallFunction" then
        return warn("CallFunction Tried To Fire It's Self")
    end
    return namecall(self, table.unpack(args))
end)
end
)


Home:NewButton("Inf Yield", "Home", function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
end
)

Home:NewButton("Gravity Coil (free)", "Home", function()
game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage",{
	Text = "Press as many times as you want.",
	Color = Color3.fromRGB(207, 96, 36)
})
local args = {
    [1] = "Gravity Coil"
}

game:GetService("ReplicatedStorage").Remote_Functions.General.Equip_Coil:InvokeServer(unpack(args))
end
)

Fun:NewButton("Collect Orbs", "Fun", function()
for i,v in pairs(workspace:GetDescendants()) do
    if v.Name == "Magic_Orb" then
        firetouchinterest(v, game.Players.LocalPlayer.Character.HumanoidRootPart, 0)
    end
end
end)

Fun:NewTextBox("Bring Player:", "Fun", function(bring)
local Player = function(Ev)
	if Ev == "" then
		return nil
	elseif Ev == "random" then
		return game:GetService("Players"):GetPlayers()[math.random(1, #game:GetService("Players"):GetPlayers())]
	else
		for _, v in pairs(game:GetService("Players"):GetPlayers()) do
			if v.Name:lower():sub(1, #Ev) == Ev:lower() or v.DisplayName:lower():sub(1, #Ev) == Ev then
				return v
			end
		end
	end
end
	local target = findplr(bring)
	cmdlp.Character.Humanoid.Name = 1
	local l = cmdlp.Character["1"]:Clone()
	l.Parent = cmdlp.Character
	l.Name = "Humanoid"
	wait(.2)
	cmdlp.Character["1"]:Destroy()
	workspace.CurrentCamera.CameraSubject = cmdlp.Character
	cmdlp.Character.Humanoid.DisplayDistanceType = "None"
	cmdlp.Character.Humanoid:UnequipTools()
	local v = cmdlp.Backpack:FindFirstChildOfClass("Tool")
	v.Parent = cmdlp.Character
	v.Parent = cmdlp.Character.HumanoidRootPart
	firetouchinterest(target.Character.HumanoidRootPart, v.Handle, 0)
	firetouchinterest(target.Character.HumanoidRootPart, v.Handle, 1)
	pcall(function() cmdlp.Character.HumanoidRootPart.CFrame = NormPos end)
	wait(.3)
	cmdlp.Character:Remove()
	cmdlp.CharacterAdded:Wait()
end)

Fun:NewTextBox("Kill Player:", "Fun", function(kill)
    local Player = function(Ev)
	if Ev == "" then
		return nil
	elseif Ev == "random" then
		return game:GetService("Players"):GetPlayers()[math.random(1, #game:GetService("Players"):GetPlayers())]
	else
		for _, v in pairs(game:GetService("Players"):GetPlayers()) do
			if v.Name:lower():sub(1, #Ev) == Ev:lower() or v.DisplayName:lower():sub(1, #Ev) == Ev then
				return v
			end
		end
	end
end
local plr = game:GetService("Players").LocalPlayer

	plr.Character.Humanoid:UnequipTools()
	local Humanoid = plr.Character.Humanoid:Clone()
	local Target = Player(kill)
	local Tool = plr.Backpack:FindFirstChildOfClass("Tool")

	plr.Character.Animate.Disabled = true
	plr.Character.Humanoid:Destroy()
	Humanoid.Parent = plr.Character
	Tool.Parent = plr.Character
    game.Players.LocalPlayer.Character.Humanoid:ChangeState(15)
	firetouchinterest(Target.Character.HumanoidRootPart, Tool.Handle, 0);
end)

Fun:NewButton("Break Peoples Screens (trading)", "Fun", function()
_G.breakgame = true
while _G.breakgame == true do
wait(6)
for i, v in pairs(game:GetService("Players"):GetChildren()) do
local args = {
    [1] = v
}

game:GetService("ReplicatedStorage").Crate_System_V2.Remote_Events.Accept_Trade_Request:FireServer(unpack(args))
end
end
end)

Fun:NewButton("Stop Messing With People's Screens", "Fun", function()
_G.breakgame = false
end)

OtherStuff:NewButton("Buy Everything", "OtherStuff", function()
local args = {
    [1] = "QuickSpawn"
}

game:GetService("ReplicatedStorage").Remote_Functions.Shop.Purchase_Quick_Spawn:InvokeServer(unpack(args))
wait()
local args = {
    [1] = "Immunity"
}

game:GetService("ReplicatedStorage").Remote_Functions.Shop.Purchase_Immunity:InvokeServer(unpack(args))
wait()
local args = {
    [1] = "GlassTower"
}

game:GetService("ReplicatedStorage").Remote_Functions.Shop.Purchase_Glass_Tower:InvokeServer(unpack(args))
wait()
local args = {
    [1] = "HighSpeed"
}

game:GetService("ReplicatedStorage").Remote_Functions.Shop.Purchase_High_Speed:InvokeServer(unpack(args))
wait()
local args = {
    [1] = "LowGravity"
}

game:GetService("ReplicatedStorage").Remote_Functions.Shop.Purchase_Low_Gravity:InvokeServer(unpack(args))
wait()
local args = {
    [1] = "NightMode"
}

game:GetService("ReplicatedStorage").Remote_Functions.Shop.Purchase_Night_Mode:InvokeServer(unpack(args))
wait()
local args = {
    [1] = "SpeedTimer"
}

game:GetService("ReplicatedStorage").Remote_Functions.Shop.Purchase_Speed_Timer:InvokeServer(unpack(args))
wait(0.5)
print("Auto Bought Everything!")
end
)

Fun:NewTextBox("Force Trade User", "Fun", function(lol)
local Player = function(Ev)
	if Ev == "" then
		return nil
	elseif Ev == "random" then
		return game:GetService("Players"):GetPlayers()[math.random(1, #game:GetService("Players"):GetPlayers())]
	else
		for _, v in pairs(game:GetService("Players"):GetPlayers()) do
			if v.Name:lower():sub(1, #Ev) == Ev:lower() or v.DisplayName:lower():sub(1, #Ev) == Ev then
				return v
			end
		end
	end
end
local target = Player(lol)
local args = {
    [1] = Player(lol)
}

game:GetService("ReplicatedStorage").Crate_System_V2.Remote_Events.Accept_Trade_Request:FireServer(unpack(args))
end)

Home:NewButton("Auto Respawn", "Home", function()
	game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage",{
		Text = "UPDATE: ONLY PRESS ONCE OR IT FIRES THE REMOTE MORE, ALSO PRESS AFTER EVERY ROUND (same location)",
		Color = Color3.fromRGB(207, 96, 36)
	})
while true do
wait()
local blah = (game.Players.LocalPlayer.Name)

      if game:GetService("Workspace")[blah].Humanoid.Health == 0 then
	   saved = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		local A_1 = game:GetService("Players").LocalPlayer

local Respawn = game:GetService("ReplicatedStorage").Remote_Functions.General.Respawn_Player
Respawn:InvokeServer(A_1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = saved
end
wait()
local blah = (game.Players.LocalPlayer.Name)

      if game:GetService("Workspace")[blah].Humanoid.Health == 0 then
	   saved = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		local A_1 = game:GetService("Players").LocalPlayer

local Respawn = game:GetService("ReplicatedStorage").Remote_Functions.General.Respawn_Player
Respawn:InvokeServer(A_1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = saved
end
wait()
local blah = (game.Players.LocalPlayer.Name)

      if game:GetService("Workspace")[blah].Humanoid.Health == 0 then
	   saved = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		local A_1 = game:GetService("Players").LocalPlayer

local Respawn = game:GetService("ReplicatedStorage").Remote_Functions.General.Respawn_Player
Respawn:InvokeServer(A_1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = saved
end
wait()
local blah = (game.Players.LocalPlayer.Name)

      if game:GetService("Workspace")[blah].Humanoid.Health == 0 then
	   saved = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		local A_1 = game:GetService("Players").LocalPlayer

local Respawn = game:GetService("ReplicatedStorage").Remote_Functions.General.Respawn_Player
Respawn:InvokeServer(A_1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = saved
end
end
end)

Home:NewButton("AFK Farm", "Home", function()
game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage",{
	Text = "Go to Teleports to turn this off",
	Color = Color3.fromRGB(207, 96, 36)
})
_G.afkfarm = true
while _G.afmfarm == true do
wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-117.169624, 253.999847, 49.9136276)
end
end)

OtherStuff:NewButton("Get Sword", "OtherStuff", function()
	game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage",{
		Text = "Using this will teleport you back to the winners room every round so just teleport back with the teleport to top",
		Color = Color3.fromRGB(207, 96, 36)
	})
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-117.169624, 253.999847, 49.9136276)
wait(0.2)
local playerHead = game.Players.LocalPlayer.Character.Head
for i, v in pairs(game:GetService("Workspace").TopSection.PortalTeleportationModel.PortalDoor:GetDescendants()) do
    if v.Name == "TouchInterest" and v.Parent then
    firetouchinterest(playerHead, v.Parent, 0)
    wait(0.1)
    firetouchinterest(playerHead, v.Parent, 1)
    break;
end
end
wait(0.3)
fireclickdetector(game:GetService("Workspace").WinnersRoomServerSide.SwordGiver.ClickPart.ClickDetector)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-117.169624, 253.999847, 49.9136276)
end
)

Teleport:NewButton("TP To Winners Room", "Teleport", function()
local playerHead = game.Players.LocalPlayer.Character.Head
for i, v in pairs(game:GetService("Workspace").TopSection.PortalTeleportationModel.PortalDoor:GetDescendants()) do
    if v.Name == "TouchInterest" and v.Parent then
    firetouchinterest(playerHead, v.Parent, 0)
    wait(0.1)
    firetouchinterest(playerHead, v.Parent, 1)
    break;
end
end
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(36.1369514, 233.999954, 2820.86865)
end
)

Teleport:NewButton("Flappy Bird", "Teleport", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-54.7847023, 234.399963, 2805.98145)
end
)

Teleport:NewButton("Track Slide", "Teleport", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-53.9553223, 234.199951, 2824.10547)
end
)

Teleport:NewButton("Turn Off AFK Farm", "Teleport", function()
_G.afkfarm = false
end)
