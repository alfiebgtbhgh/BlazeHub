-- tables

local crystals = {
    {"Blue Crystal", CFrame.new(120,3,30)},
    {"Orange Crystal", CFrame.new(120,3,30)}
}
local shops = {
	{"Item Shop", CFrame.new(120,3,30)},
	{"Skills Shop", CFrame.new(87,2,105)},
	{"Dark Skills Shop", CFrame.new(-117,3,55)},
	{"Light Skills Shop", CFrame.new(-120,3,2)}
}
local darkzones = {
	{"Lava Pit", CFrame.new(-121,12953,279)},
	{"Tornado", CFrame.new(325,16872,-9)},
	{"Sword of Ancients", CFrame.new(648,38,2409)},
	{"Fallen Infinity Blade", CFrame.new(1864,38,-6844)}
}
local lightzones = {
	{"Mystical Waters", CFrame.new(347,8824,114)},
	{"Sword of Legends", CFrame.new(1834,38,-141)},
	{"Elemental Tornado", CFrame.new(296,30383,-81)},
	{"Zen Master's Blade", CFrame.new(5021,38,1588)}
}
local islands = {"Enchanted Island","Astral Island","Mystical Island","Space Island","Tundra Island","Eternal Island","Sandstorm","Thunderstorm","Ancient Inferno Island","Midnight Shadow Island","Mythical Souls Island","Winter Wonder Island","Golden Master Island","Dragon Legend Island","Skystorm Ultraus Island","Chaos Legends Island","Soul Fusion Island","Dark Elements Island","Inner Peace Island"}

-- init
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/alfiebgtbhgh/BlazeHub/main/UILib.lua"))()
local venyx = library.new("Blaze Hub | Ninja Legends", 5013109572)

-- themes
local themes = {
Background = Color3.fromRGB(24, 24, 24),
Glow = Color3.fromRGB(0, 0, 0),
Accent = Color3.fromRGB(10, 10, 10),
LightContrast = Color3.fromRGB(20, 20, 20),
DarkContrast = Color3.fromRGB(14, 14, 14),  
TextColor = Color3.fromRGB(255, 255, 255)
}

-- second page
local farming = venyx:addPage("Farming", 5012544693)
local mainfarmingsection = farming:addSection("Main")
local bossesfarmingsection = farming:addSection("Bosses")

mainfarmingsection:addToggle("Auto Swing", false, function(State)
    _G.swing = State
		
		while wait() do
			if _G.swing == true then
			local args = {
				[1] = "swingKatana"
			}
			
			game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(unpack(args))
			end
		end
end)

mainfarmingsection:addToggle("Auto Sell", false, function(State)
    _G.sell = State
		
		while wait() do
			if _G.sell == true then
			local circle = game:GetService("Workspace").sellAreaCircles.sellAreaCircle16.circleInner
			circle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
			wait()
			circle.CFrame = CFrame.new(0,0,0)
			end
		end
end)

mainfarmingsection:addToggle("Auto Hoops", false, function(State)
    _G.hoops = State
		
		while wait(0.3) do
			if _G.hoops == true then
			local rootpart = game.Players.LocalPlayer.Character.HumanoidRootPart
			local cfbeforetp = rootpart.CFrame
			for i,v in pairs(game.Workspace.Hoops:GetChildren()) do 
				rootpart.CFrame = v.CFrame
			end
			end
		end
end)

mainfarmingsection:addToggle("Auto Chi", false, function(State)
    _G.chi = State
		
		while wait(.125) do
			if _G.chi == true then
			for i,v in pairs(game.Workspace.spawnedCoins.Valley:GetChildren()) do
				if string.match(v.name, "Chi") then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Position)
				end
			end
			end
		end
end)

mainfarmingsection:addToggle("Auto Pets XP", false, function(State)
    _G.ss = State
		
		while wait(0.3) do
			if _G.ss == true then
			local rootpart = game.Players.LocalPlayer.Character.HumanoidRootPart
			local cfbeforetp = rootpart.CFrame
			for i,v in pairs(game.Workspace.Hoops:GetChildren()) do 
				rootpart.CFrame = v.CFrame
			end
			end
		end
end)

mainfarmingsection:addButton("Auto Good Karma (Disabled)",function()
    --venyx:Notify("This feature has been disabled.")
    --loadstring(game:HttpGet(('https://pastebin.com/raw/AaqHqPyw'),true))()
end)

mainfarmingsection:addButton("Auto Bad Karma (Disabled)", function()
    --venyx:Notify("This feature has been disabled.")
    --loadstring(game:HttpGet(('https://pastebin.com/raw/wEEB3nQt'),true))()	
end)

bossesfarmingsection:addToggle("Auto Farm Robot Boss", false, function(State)
    _G.boss1 = State
		
		while wait() do
			if _G.boss1 == true then
                if game:GetService("Workspace").bossFolder:FindFirstChild("RobotBoss"):FindFirstChild("HumanoidRootPart") then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.bossFolder.RobotBoss.HumanoidRootPart.CFrame
                end
                local args = {
                    [1] = "swingKatana"
                }
                
                game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(unpack(args))
			end
		end
end)

bossesfarmingsection:addToggle("Auto Farm Eternal Boss", false, function(State)
    _G.boss2 = State
		
		while wait() do
			if _G.boss2 == true then
                if game:GetService("Workspace").bossFolder:FindFirstChild("EternalBoss"):FindFirstChild("HumanoidRootPart") then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.bossFolder.EternalBoss.HumanoidRootPart.CFrame
                end
                local args = {
                    [1] = "swingKatana"
                }
                
                game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(unpack(args))
			end
		end
end)

bossesfarmingsection:addToggle("Auto Farm Ancient Magma Boss", false, function(State)
    _G.boss3 = State
		
		while wait() do
			if _G.boss3 == true then
                if game:GetService("Workspace").bossFolder:FindFirstChild("AncientMagmaBoss"):FindFirstChild("HumanoidRootPart") then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.bossFolder.AncientMagmaBoss.HumanoidRootPart.CFrame
                end
                local args = {
                    [1] = "swingKatana"
                }
                
                game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(unpack(args))
			end
		end
end)

--third page

local autobuy = venyx:addPage("Auto Buy", 5012544693)
local mainautobuysection = autobuy:addSection("Main")

mainautobuysection:addToggle("Auto Buy Swords", false, function(State)
    _G.autobuyswords = State
		
		while wait() do
			if _G.autobuyswords == true then
                local args = {
                    [1] = "buyAllSwords",
                    [2] = "Inner Peace Island"
                }
                
                game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(unpack(args))
			end
		end
end)

mainautobuysection:addToggle("Auto Buy Belts", false, function(State)
    _G.autobuybelts = State
		
		while wait() do
			if _G.autobuybelts == true then
                local args = {
                    [1] = "buyAllBelts",
                    [2] = "Inner Peace Island"
                }
                
                game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(unpack(args))
			end
		end
end)

mainautobuysection:addToggle("Auto Buy Ranks", false, function(State)
    _G.autobuyranks = State
		
		while wait() do
			if _G.autobuyranks == true then
                local rank = "buyAllRanks"
			    local meh2 = {"Inner Peace Island"}
			    for i = 1, #rank do
				    game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(rank, meh2[i])
			    end
			end
		end
end)

mainautobuysection:addToggle("Auto Buy Skills", false, function(State)
    _G.autobuyskills = State
		
		while wait() do
			if _G.autobuyskills == true then
                local args = {
                    [1] = "buyAllSkills",
                    [2] = "Inner Peace Island"
                }
                
                game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(unpack(args))
			end
		end
end)

mainautobuysection:addToggle("Auto Buy Shruikens", false, function(State)
    _G.autobuyshurikens = State
		
		while wait() do
			if _G.autobuyshurikens == true then
                local args = {
                    [1] = "buyAllShurikens",
                    [2] = "Inner Peace Island"
                }
                
                game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(unpack(args))
			end
		end
end)

local teleports = venyx:addPage("Teleports", 5012544693)
local islandteleportssection = teleports:addSection("Islands")
local shopsteleportsection = teleports:addSection("Shops")
local darkzonesteleportsection = teleports:addSection("Dark Zones")
local lightzonesteleportsection = teleports:addSection("Light Zones")

for _,v in pairs(islands) do
	islandteleportssection:addButton(v, function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").islandUnlockParts[v].islandSignPart.CFrame	
	end)
end

for _,v in pairs(shops) do
	shopsteleportsection:addButton(v[1], function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v[2]	
	end)
end

for _,v in pairs(darkzones) do
	darkzonesteleportsection:addButton(v[1], function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v[2]	
	end)
end

for _,v in pairs(lightzones) do
	lightzonesteleportsection:addButton(v[1], function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v[2]	
	end)
end

local pets = venyx:addPage("Pets", 5012544693)
local petsmainsection = pets:addSection("Main")
local petsbuysection = pets:addSection("Auto Buy Crystals")

petsmainsection:addToggle("Auto Evolve Pets", false, function(value)
    _G.autopetevolve = State
		
		while wait() do
			if _G.autopetevolve == true then
                local args = {
                    [1] = "autoEvolvePets"
                }
                
                game:GetService("ReplicatedStorage").rEvents.autoEvolveRemote:InvokeServer(unpack(args))
			end
		end
end)

for _,v in pairs(game:GetService("ReplicatedStorage").crystalPrices:GetChildren()) do
    petsbuysection:addButton("Buy "..v.Name.." ("..game:GetService("ReplicatedStorage").crystalPrices[v.Name].price.Value.." "..game:GetService("ReplicatedStorage").crystalPrices[v.Name].priceType.Value..")", function()
        game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer("openCrystal",v.Name)
	end)
end

local elements = venyx:addPage("Elements", 5012544693)
local elementsmainsection = elements:addSection("Main")

elementsmainsection:addButton("Give All Elements",function()
    game.ReplicatedStorage.rEvents.elementMasteryEvent:FireServer("Frost")
		wait(0.2)
		
		--Inferno
		game.ReplicatedStorage.rEvents.elementMasteryEvent:FireServer("Inferno")
		wait(0.2)
		
		--Lightning
		game.ReplicatedStorage.rEvents.elementMasteryEvent:FireServer("Lightning")
		wait(0.2)
		--Electral
		game.ReplicatedStorage.rEvents.elementMasteryEvent:FireServer("Electral Chaos")
		wait(0.2)
		
		--Wrath
		game.ReplicatedStorage.rEvents.elementMasteryEvent:FireServer("Masterful Wrath")
		wait(0.2)
		
		--Shadow
		game.ReplicatedStorage.rEvents.elementMasteryEvent:FireServer("Shadow Charge")
		wait(0.2)
		
		--ShadowFire
		game.ReplicatedStorage.rEvents.elementMasteryEvent:FireServer("Shadowfire")
end)

local misc = venyx:addPage("Misc", 5012544693)
local miscmainsection = misc:addSection("Main")
local misccreditssection = misc:addSection("Credits")

miscmainsection:addButton("Collect Chests",function()
    game:GetService("Workspace").mythicalChest["circleInner"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		wait(3.5)
		game:GetService("Workspace").goldenChest["circleInner"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		wait(3.5)
		game:GetService("Workspace").enchantedChest["circleInner"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		wait(3.5)
		game:GetService("Workspace").magmaChest["circleInner"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		wait(3.5)
		game:GetService("Workspace").legendsChest["circleInner"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		wait(3.5)
		game:GetService("Workspace").eternalChest["circleInner"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		wait(3.5)
		game:GetService("Workspace").saharaChest["circleInner"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		wait(3.5)
		game:GetService("Workspace").thunderChest["circleInner"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		wait(3.5)
		game:GetService("Workspace").ancientChest["circleInner"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		wait(3.5)
		game:GetService("Workspace").midnightShadowChest["circleInner"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		wait(3.5)
		game:GetService("Workspace").groupRewardsCircle["circleInner"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		wait(3.5)
		game:GetService("Workspace")["Daily Chest"].circleInner.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		wait(3.5)
		game:GetService("Workspace")["wonderChest"].circleInner.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		wait(3.5)
		game:GetService("Workspace")[".skystormmasterschest"].circleInner.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		wait(3.5)
		game:GetService("Workspace")[".ultraninjutsuchest"].circleInner.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		wait(3.5)
		game:GetService("Workspace")[".goldenzenchest"].circleInner.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		wait(3.5)
		game:GetService("Workspace").goldenzenchest["circleInner"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		game:GetService("Workspace").ultraninjutsuchest["circleInner"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		game:GetService("Workspace").skystormmasterschest["circleInner"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		game:GetService("Workspace").wonderChest["circleInner"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		game:GetService("Workspace").midnightShadowChest["circleInner"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		game:GetService("Workspace").ancientChest["circleInner"].CFrame = game.Workspace.Part.CFrame
		game:GetService("Workspace").midnightShadowChest["circleInner"].CFrame = game.Workspace.Part.CFrame
		game:GetService("Workspace").thunderChest["circleInner"].CFrame = game.Workspace.Part.CFrame
		game:GetService("Workspace").saharaChest["circleInner"].CFrame = game.Workspace.Part.CFrame
		game:GetService("Workspace").eternalChest["circleInner"].CFrame = game.Workspace.Part.CFrame
		game:GetService("Workspace").legendsChest["circleInner"].CFrame = game.Workspace.Part.CFrame
		game:GetService("Workspace").magmaChest["circleInner"].CFrame = game.Workspace.Part.CFrame
		game:GetService("Workspace").enchantedChest["circleInner"].CFrame = game.Workspace.Part.CFrame
		game:GetService("Workspace").goldenChest["circleInner"].CFrame = game.Workspace.Part.CFrame
		game:GetService("Workspace").mythicalChest["circleInner"].CFrame = game.Workspace.Part.CFrame
		game:GetService("Workspace").groupRewardsCircle["circleInner"].CFrame = game.Workspace.Part.CFrame
		game:GetService("Workspace")["Daily Chest"].circleInner.CFrame = game.Workspace.Part.CFrame
end)

miscmainsection:addButton("Collect Light Chests",function()
    game:GetService("Workspace").lightKarmaChest["circleInner"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		wait(5)
		game:GetService("Workspace").lightKarmaChest["circleInner"].CFrame = game.Workspace.Part.CFrame
end)

miscmainsection:addButton("Collect Dark Chests",function()
    game:GetService("Workspace").evilKarmaChest["circleInner"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
	wait(5)
	game:GetService("Workspace").evilKarmaChest["circleInner"].CFrame = game.Workspace.Part.CFrame
end)

miscmainsection:addButton("Max Jumps",function()
    while wait() do
        game.Players.LocalPlayer.multiJumpCount.Value = "1000000000"
    end
end)

miscmainsection:addButton("Hide Popups",function()
    game:GetService("Players").LocalPlayer.PlayerGui.statEffectsGui.Enabled = not game:GetService("Players").LocalPlayer.PlayerGui.statEffectsGui.Enabled
	game:GetService("Players").LocalPlayer.PlayerGui.hoopGui.Enabled = not game:GetService("Players").LocalPlayer.PlayerGui.hoopGui.Enabled
end)

misccreditssection:addButton("Made by: $mirandaa#0005",function()
    
end)

misccreditssection:addButton("Discord: https://discord.gg/65YQu2X",function()
    
end)

-- load
venyx:SelectPage(venyx.pages[1], true) -- no default for more freedom
