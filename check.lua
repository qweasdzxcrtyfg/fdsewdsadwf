repeat
    task.wait()
until game:IsLoaded()
-- Config Zone
_G.Item = {
    "Cursed Dual Katana",
    "Dark Coat",
    "Tushita",
    "Dark Dagger",
    "Yama",
    "Hallow Scythe",
    "True Triple Katana",
    "Soul Guitar"
}
_G.FilterItem = true
_G.Distance = 10000 -- Distance Hop
_G.HopNear = false -- Hop Near Player And Block
_G.Lengened = true -- Filter Fruit 1 M +
_G.ShowOnlyCDK = true -- Set Alias Show Only Cursed Dual Katana and 6 Melee
_G.LowHop = false -- Hop Low Server
-- 1 Template Sheet https://docs.google.com/spreadsheets/d/1kJE3pD0h_hPLfZOIqtjVwqL-XOqg2SE2aRpyoytAAiM/edit#gid=0
-- 2 Template Sheet https://docs.google.com/spreadsheets/d/1S43SfZSK26RH-poaRLrExk0jgjrFCyN0jwkQb6LhICk/edit?usp=sharing
_G.SheetType = 2 -- Type Of Sheet
_G.Delay = 5 -- Time Delay
-- Config Zone
if not _G.Delay then 
	_G.Delay = 10 
end
if type(_G.Delay) ~= "number" then
		_G.Delay = 10 
end
local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(
    function()
        vu:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
        wait(1)
        vu:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    end
)
print("Anti AFK Is Loaded")
Nexus_Version = 101
loadstring(
    game:HttpGet "https://raw.githubusercontent.com/ic3w0lf22/Roblox-Account-Manager/master/RBX%20Alt%20Manager/Nexus/Nexus.lua"
)()
task.spawn(
    function()
        Nexus:Connect()
    end
)
local HttpService = game:GetService("HttpService")
local Request = syn.request
join = game.Players.localPlayer.Neutral == false
if _G.Team == nil then
    _G.Team = "Pirates"
end
repeat
        wait()
until (game.Players.localPlayer.Neutral == false) == true
local function len(x)
    local q = 0
    for i, v in pairs(x) do
        q = q + 1
    end
    return q
end
function getRartiy(__)
    if __["Rarity"] == 3 and _G.Legendary then
        return __
    else
        return __
    end
end
wait(6)
spawn(
    function()
        while true do
            wait()
            local x, p =
                pcall(
                function()
                    Nexus:NewLine()
                    Nexus:CreateLabel("loginfo", "Sheet-Link")
                    Nexus:NewLine()
                    Nexus:CreateTextBox("loginput", "https://sheet.best/api/sheets/xxxxx", {100, 20})
                    Nexus:CreateButton("logbtn", "Log", {100, 20})
                    Nexus:NewLine()
                end
            )
            if x then
                break
            end
        end
    end
)
function PraseFruit()
	r = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getAwakenedAbilities")
            if r then
                q = len(r)
                w = 0
                for i, v in pairs(r) do
                    if v["Awakened"] then
                        w = w + 1
                    end
                end
					return " | A : " .. w .. " )"
            else
                return " )"
            end
            
    
end
Nexus:OnButtonClick(
    "logbtn",
    function()
        url = Nexus:GetText("loginput")
        local World = ""
        local Money = ""
        local Username = game.Players.LocalPlayer.Name
        local Fragment = ""
        local Level = ""
        local Fruit = ""
        local Material = ""
        local Race = ""
        local World = ""
        local FruitMastery = ""
        local Gun = ""
        local RequestgetInventory
        local HttpService = game:GetService("HttpService")
        local Malee = ""
        local Sword = ""
        local Accesorry = ""
        local Awake = ""
        local Combo = ""
        local function formatNumber(number)
            local i, k, j = tostring(number):match("(%-?%d?)(%d*)(%.?.*)")
            return i .. k:reverse():gsub("(%d%d%d)", "%1,"):reverse() .. j
        end
        local function notifyCheck(types, ...)
            if types == "Notify" then
                require(game.ReplicatedStorage.Notification).new(...):Display()
            end
        end
        Money = formatNumber(game:GetService("Players").LocalPlayer.Data.Beli.Value)
        Fragment = formatNumber(game:GetService("Players").LocalPlayer.Data.Fragments.Value)
        Race = game:GetService("Players").LocalPlayer.Data.Race.Value
        Level = game:GetService("Players").LocalPlayer.Data.Level.Value

        if
            game.ReplicatedStorage.Remotes.CommF_:InvokeServer("DressrosaQuestProgress", "Dressrosa") == 0 and
                game.ReplicatedStorage.Remotes.CommF_:InvokeServer("ZQuestProgress", "Zou") == 0
         then
            World = "Thrid Sea"
        elseif
            game.ReplicatedStorage.Remotes.CommF_:InvokeServer("DressrosaQuestProgress", "Dressrosa") == 0 and
                not game.ReplicatedStorage.Remotes.CommF_:InvokeServer("ZQuestProgress", "Zou") == 0
         then
            World = "Secnond Sea"
        else
            World = "First Sea"
        end

        RequestgetInventory = game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventory")
        for i, __ in pairs(RequestgetInventory) do
            if __["Type"] == "Sword" then
                if Sword == "" then
                    Sword = __["Name, "] .. " "
                else
                    Sword = Sword .. __["Name, "] .. " "
                end
            end
            if __["Type"] == "Wear" then
                if Accesorry == "" then
                    Accesorry = __["Name, "] .. " "
                else
                    Accesorry = Accesorry .. __["Name, "] .. " "
                end
            end
            if __["Type"] == "Blox Fruit" then
                if _G.Lengened then 
                    if __["Rarity"] == 3  then
    					if Fruit == "" then
    						Fruit = __["Name, "] .. " "
    					else
    						Fruit = Fruit .. __["Name, "] .. " "
    					end
					end
                else
					if Fruit == "" then
						Fruit = __["Name, "] .. " "
					else
						Fruit = Fruit .. __["Name, "] .. " "
					end
				end
            end
            if __["Type"] == "Material" then
                if Material == "" then
                    Material = __["Name"] .. " "
                else
                    Material = Material .. __["Name"] .. "( x" .. __["Count"] .. " )" .. " "
                end
            end
            if __["Type"] == "Gun" then
                if Gun == "" then
                    Gun = __["Name"] .. " "
                else
                    Gun = Gun .. __["Name"] .. " "
                end
            end
        end
        local args = {
            [1] = "BuyDeathStep",
            [2] = true
        }

        DeathStep = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        if DeathStep == 1 then
            HasDeathStep = true
        else
            HasDeathStep = false
        end
        wait(0.2)

        local args = {
            [1] = "BuySharkmanKarate",
            [2] = true
        }

        SharkmanKarate = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        if SharkmanKarate == 0 then
            HasSharkmanKarate = false
        else
            HasSharkmanKarate = true
        end
        wait(0.2)

        local args = {
            [1] = "BuySuperhuman",
            [2] = true
        }

        Superhuman = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        if Superhuman == 1 then
            HasSuperhuman = true
        else
            HasSuperhuman = false
        end
        wait(0.2)

        local args = {
            [1] = "BuyElectricClaw",
            [2] = true
        }

        ElectricClaw = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        if ElectricClaw == 1 then
            HasElectricClaw = true
        else
            HasElectricClaw = false
        end
        local args = {
            [1] = "BuyDragonTalon",
            [2] = true
        }

        DragonTalon = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        if type(DragonTalon) == "number" then
            if DragonTalon == 1 then
                HasDragonTalon = true
            else
                HasDragonTalon = false
            end
        end

        local args = {
            [1] = "BuyGodhuman",
            [2] = true
        }
        local FruitName = ""
        Godhuman = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        if type(Godhuman) == "number" then
            if Godhuman == 1 then
                HasGodhuman = true
            else
                HasGodhuman = false
            end
        end
        if HasGodhuman then
            Malee = Malee .. "God Human, "
        end
        if HasDragonTalon then
            Malee = Malee .. "Dragon Talon, "
        end
        if HasElectricClaw then
            Malee = Malee .. "Electric Claw, "
        end
        if HasSuperhuman then
            Malee = Malee .. "Superhuman, "
        end
        if HasSharkmanKarate then
            Malee = Malee .. "Sharkman Karate, "
        end
        if HasDeathStep then
            Malee = Malee .. "Death Step "
        end
        for _i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if v:IsA("Tool") then
                if v.ToolTip == "Blox Fruit" then
                    FruitMastery = v.Level.Value
                    FruitName = v.Name
                end
            end
        end
        r = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getAwakenedAbilities")
        if r then
            for i, v in pairs(r) do
                if v["Awakened"] then
                    Awake = Awake .. i .. " "
                end
            end
        else
            Awake = "None"
        end
        RequestgetInventory = game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventory")
            for i, __ in pairs(RequestgetInventory) do
                if __["Type"] == "Sword" then
                    if __["Name"] == "Cursed Dual Katana" then
                        CDKHas = true
                    end
                end
            end
        local Type = ""
        Combo = Sword .. " " .. Gun .. " " .. Accesorry
        if CDKHas then 
            Type = "CDK "    
        end
        if
                HasGodhuman and HasElectricClaw and HasSuperhuman and HasSharkmanKarate and HasDeathStep and
                    HasDragonTalon
             then
                SixMalee = true
             end
        if SixMalee then 
            Type = Type .. "6 Melee"    
        end
        if not SixMalee then 
            Type = Type .. "3-5 Melee"    
        end
        if _G.SheetType == 1 then 
        	Payload =
				HttpService:JSONEncode(
				{
					["UserName"] = Username,
					["FruitAwake"] = Awake,
					["Beli"] = Money,
					["Fragment"] = Fragment,
					["WeaponInventory"] = Combo,
					["FruitInventory"] = Fruit,
					["FruitName"] = FruitName,
					["Race"] = Race,
					["World"] = World,
					["FruitMastery"] = FruitMastery,
					["Melee"] = Malee,
					["Level"] = Level
				}
			)
		elseif _G.SheetType == 2 then
			Payload =
				HttpService:JSONEncode(
				{
					["Account"] = Username,
					["Inventory"] = Sword,
					["RareFruit"] = Fruit,
					["Fruit"] = FruitName .. '( M : ' .. FruitMastery .. PraseFruit(),
					["World"] = World,
					["Melee"] = Malee,
					["Level"] = Level,
					["Type"] = Type
				}
			)
		end
        if syn or syn.request then
            requestWebhook =
                syn.request(
                {
                    ["Url"] = url,
                    ["Method"] = "POST",
                    ["Body"] = Payload,
                    ["Headers"] = {
                        ["Content-Type"] = "application/json"
                    }
                }
            )
        else
            requestWebhook =
                syn.request(
                {
                    ["Url"] = url,
                    ["Method"] = "POST",
                    ["Body"] = Payload,
                    ["Headers"] = {
                        ["Content-Type"] = "application/json"
                    }
                }
            )
        end
    end
)

local Level = game:GetService("Players").LocalPlayer.Data.Level.Value
local Request = syn.request
local function formatNumber(number)
    local i, k, j = tostring(number):match("(%-?%d?)(%d*)(%.?.*)")
    return i .. k:reverse():gsub("(%d%d%d)", "%1,"):reverse() .. j
end
spawn(
    function()
        while wait(_G.Delay) do
            local World = ""
            local Money = ""
            local Username = game.Players.LocalPlayer.Name
            local Fragment = ""
            local Level = ""
            local Fruit = ""
            local Material = ""
            local Race = ""
            local World = ""
            local FruitMastery = ""
            local Gun = ""
            local RequestgetInventory
            local HttpService = game:GetService("HttpService")
            local Malee = ""
            local Sword = ""
            local Accesorry = ""
            local Awake = ""
            local Combo = ""
            local Evo = ""
            local function notifyCheck(types, ...)
                if types == "Notify" then
                    require(game.ReplicatedStorage.Notification).new(...):Display()
                end
            end
            Money = formatNumber(game:GetService("Players").LocalPlayer.Data.Beli.Value)
            Fragment = formatNumber(game:GetService("Players").LocalPlayer.Data.Fragments.Value)
            Race = game:GetService("Players").LocalPlayer.Data.Race.Value
            Level = game:GetService("Players").LocalPlayer.Data.Level.Value

            if
                game.ReplicatedStorage.Remotes.CommF_:InvokeServer("DressrosaQuestProgress", "Dressrosa") == 0 and
                    game.ReplicatedStorage.Remotes.CommF_:InvokeServer("ZQuestProgress", "Zou") == 0
             then
                World = "Thrid Sea"
            elseif
                game.ReplicatedStorage.Remotes.CommF_:InvokeServer("DressrosaQuestProgress", "Dressrosa") == 0 and
                    not game.ReplicatedStorage.Remotes.CommF_:InvokeServer("ZQuestProgress", "Zou") and
                    game.ReplicatedStorage.Remotes.CommF_:InvokeServer("ZQuestProgress", "Zou") ~= 0
             then
                World = "Secnond Sea"
            else
                World = "First Sea"
            end

            RequestgetInventory = game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventory")
            for i, __ in pairs(RequestgetInventory) do
                if __["Type"] == "Sword" then
                    if Sword == "" then
                        if _G.Item and _G.FilterItem then
                            if table.find(_G.Item, __["Name"]) then
                                Sword = __["Name"] .. ", "
                            end
                        else
                            Sword = __["Name"] .. ", "
                        end
                    else
                        if _G.Item and _G.FilterItem then
                            if table.find(_G.Item, __["Name"]) then
                                Sword = Sword .. __["Name"] .. ", "
                            end
                        else
                            Sword = Sword .. __["Name"] .. ", "
                        end
                    end
                end
                if __["Type"] == "Wear" then
                    if Accesorry == "" then
                        Accesorry = __["Name"] .. ", "
                    else
                        Accesorry = Accesorry .. __["Name"] .. ", "
                    end
                end
                if __["Type"] == "Blox Fruit" then
                    if Fruit == "" then
                        if _G.Lengened then
                            if __["Rarity"] == 3 then
                                Fruit = __["Name"] .. ", "
                            end
                        else
                            Fruit = __["Name"] .. ", "
                        end
                    else
                        if _G.Lengened then
                            if __["Rarity"] == 3 then
                                Fruit = Fruit .. __["Name"] .. ", "
                            end
                        else
                            Fruit = Fruit .. __["Name"] .. ", "
                        end
                    end
                end
                if __["Type"] == "Material" then
                    if Material == "" then
                        Material = __["Name"] .. ", "
                    else
                        Material = Material .. __["Name"] .. "( x" .. __["Count"] .. " )" .. ", "
                    end
                end
                if __["Type"] == "Gun" then
                    if Gun == "" then
                        Gun = __["Name"] .. ", "
                    else
                        Gun = Gun .. __["Name"] .. ", "
                    end
                end
            end
            local args = {
                [1] = "BuyDeathStep",
                [2] = true
            }

            DeathStep = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            if DeathStep == 1 then
                HasDeathStep = true
            else
                HasDeathStep = false
            end
            wait(0.2)

            local args = {
                [1] = "BuySharkmanKarate",
                [2] = true
            }

            SharkmanKarate = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            if SharkmanKarate == 0 then
                HasSharkmanKarate = false
            else
                HasSharkmanKarate = true
            end
            wait(0.2)

            local args = {
                [1] = "BuySuperhuman",
                [2] = true
            }

            Superhuman = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            if Superhuman == 1 then
                HasSuperhuman = true
            else
                HasSuperhuman = false
            end
            wait(0.2)

            local args = {
                [1] = "BuyElectricClaw",
                [2] = true
            }

            ElectricClaw = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            if ElectricClaw == 1 then
                HasElectricClaw = true
            else
                HasElectricClaw = false
            end
            local args = {
                [1] = "BuyDragonTalon",
                [2] = true
            }

            DragonTalon = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            if type(DragonTalon) == "number" then
                if DragonTalon == 1 then
                    HasDragonTalon = true
                else
                    HasDragonTalon = false
                end
            end

            local args = {
                [1] = "BuyGodhuman",
                [2] = true
            }
            local FruitName = ""
            Godhuman = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            if type(Godhuman) == "number" then
                if Godhuman == 1 then
                    HasGodhuman = true
                else
                    HasGodhuman = false
                end
            end
            if HasGodhuman then
                Malee = Malee .. "God Human, "
            end
            if HasDragonTalon then
                Malee = Malee .. "Dragon Talon, "
            end
            if HasElectricClaw then
                Malee = Malee .. "Electric Claw, "
            end
            if HasSuperhuman then
                Malee = Malee .. "Superhuman, "
            end
            if HasSharkmanKarate then
                Malee = Malee .. "Sharkman Karate, "
            end
            if HasDeathStep then
                Malee = Malee .. "Death Step "
            end
            for _i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if v:IsA("Tool") then
                    if v.ToolTip == "Blox Fruit" then
                        FruitMastery = v.Level.Value
                        FruitName = v.Name
                    end
                end
            end

            r = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getAwakenedAbilities")
            if r then
                for i, v in pairs(r) do
                    if v["Awakened"] then
                        Awake = Awake .. i .. " "
                    end
                end
            else
                Awake = "None"
            end
            if game:GetService("Players").LocalPlayer.Data.Race:FindFirstChild("Evolved") then
                Evo = "Yes"
            else
                Evo = "No"
            end
            local Payload =
                "Level : {l} \nWorld : {w} \nRace: {r} \nEvolved : {re} \nMelee: {m} \nFruit Inventory : {fi} \nSword : {s} \nBeli : {b} \nFragment : {f} \nAwake : {a}\nFruit : {fn} \nFruit Mastery: {fm} "
            Payload =
                string.gsub(
                string.gsub(
                    string.gsub(
                        string.gsub(
                            string.gsub(
                                string.gsub(
                                    string.gsub(
                                        string.gsub(
                                            string.gsub(
                                                string.gsub(
                                                    string.gsub(string.gsub(Payload, "{l}", Level), "{r}", Race),
                                                    "{m}",
                                                    Malee
                                                ),
                                                "{fi}",
                                                Fruit
                                            ),
                                            "{s}",
                                            Sword
                                        ),
                                        "{b}",
                                        Money
                                    ),
                                    "{f}",
                                    Fragment
                                ),
                                "{a}",
                                Awake
                            ),
                            "{w}",
                            World
                        ),
                        "{fn}",
                        FruitName
                    ),
                    "{fm}",
                    FruitMastery
                ),
                "{re}",
                Evo
            )

            r =
                Request(
                {
                    Method = "POST",
                    Url = "http://localhost:7963/SetDescription?Account=" .. Username,
                    Body = Payload
                }
            )
        end
    end
)
spawn(
    function()
        while wait(_G.Delay) do
            local World = ""
            local Payload = ".[ "
            local Username = game.Players.LocalPlayer.Name
            local SixMalee = false
            local CDKHas = false
            local Level = game:GetService("Players").LocalPlayer.Data.Level.Value
            if
                game.ReplicatedStorage.Remotes.CommF_:InvokeServer("DressrosaQuestProgress", "Dressrosa") == 0 and
                    game.ReplicatedStorage.Remotes.CommF_:InvokeServer("ZQuestProgress", "Zou") == 0
             then
                World = "Thrid Sea"
            elseif
                game.ReplicatedStorage.Remotes.CommF_:InvokeServer("DressrosaQuestProgress", "Dressrosa") == 0 and
                    not game.ReplicatedStorage.Remotes.CommF_:InvokeServer("ZQuestProgress", "Zou") and
                    game.ReplicatedStorage.Remotes.CommF_:InvokeServer("ZQuestProgress", "Zou") ~= 0
             then
                World = "Secnond Sea"
            else
                World = "First Sea"
            end
            Payload = Payload .. World .. " "
            r = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getAwakenedAbilities")
            if r then
                q = len(r)
                w = 0
                for i, v in pairs(r) do
                    if v["Awakened"] then
                        w = w + 1
                    end
                end
            else
                Awake = "None"
            end
            if q == w then
                Payload = Payload .. "Awakeed "
            end
            if Level >= 2450 then
                Payload = Payload .. "Level Max "
            end
            Payload = Payload .. "]."
            local args = {
                [1] = "BuyDeathStep",
                [2] = true
            }

            DeathStep = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            if DeathStep == 1 then
                HasDeathStep = true
            else
                HasDeathStep = false
            end
            wait(0.2)

            local args = {
                [1] = "BuySharkmanKarate",
                [2] = true
            }

            SharkmanKarate = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            if SharkmanKarate == 0 then
                HasSharkmanKarate = false
            else
                HasSharkmanKarate = true
            end
            wait(0.2)

            local args = {
                [1] = "BuySuperhuman",
                [2] = true
            }

            Superhuman = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            if Superhuman == 1 then
                HasSuperhuman = true
            else
                HasSuperhuman = false
            end
            wait(0.2)

            local args = {
                [1] = "BuyElectricClaw",
                [2] = true
            }

            ElectricClaw = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            if ElectricClaw == 1 then
                HasElectricClaw = true
            else
                HasElectricClaw = false
            end
            local args = {
                [1] = "BuyDragonTalon",
                [2] = true
            }

            DragonTalon = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            if type(DragonTalon) == "number" then
                if DragonTalon == 1 then
                    HasDragonTalon = true
                else
                    HasDragonTalon = false
                end
            end

            local args = {
                [1] = "BuyGodhuman",
                [2] = true
            }
            local FruitName = ""
            Godhuman = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            if type(Godhuman) == "number" then
                if Godhuman == 1 then
                    HasGodhuman = true
                else
                    HasGodhuman = false
                end
            end
            if
                HasGodhuman and HasElectricClaw and HasSuperhuman and HasSharkmanKarate and HasDeathStep and
                    HasDragonTalon
             then
                SixMalee = true
            end
            RequestgetInventory = game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventory")
            for i, __ in pairs(RequestgetInventory) do
                if __["Type"] == "Sword" then
                    if __["Name"] == "Cursed Dual Katana" then
                        CDKHas = true
                    end
                end
            end
            if _G.ShowOnlyCDK then 
				Payload = "-[ "
				if CDKHas then 
					Payload = Payload .. "CDK"
				end
				if SixMalee then 
					Payload = Payload .. " & 6 Melee"
				end
				Payload = Payload .. " ]-"
			end
            r =
                Request(
                {
                    Method = "POST",
                    Url = "http://localhost:7963/SetAlias?Account=" .. Username,
                    Body = Payload
                }
            )
        end
    end
)
function getUser()
    if not isfile("BlockUserList.txt") then
        writefile("BlockUserList.txt", "")
    end
    if isfile("BlockUserList.txt") then
        local r = readfile("BlockUserList.txt")
        local q = {}
        for s in r:gmatch("[^\r\n]+") do
            table.insert(q, s)
        end
        return q
    end
end
spawn(
    function()
        while true do
            wait(Delay)
            local Username = game.Players.LocalPlayer.Name
            for i, v in pairs(game.Players:GetPlayers()) do
                if v ~= game.Players.LocalPlayer then
                    q = getUser()
                    for x, e in pairs(q) do
                        if string.find(string.lower(v.Name), string.lower(e)) then
                            Request(
                                {
                                    Method = "GET",
                                    Url = "http://localhost:7963/BlockUser?Account=" ..
                                        Username .. "&UserId=" .. v.UserId
                                }
                            )
                            wait(2)
                            pcall(
                                function()
                                    if _G.LowHop == false then
                                        for count = math.random(1, math.random(40, 75)), 100 do
                                            local v4 =
                                                game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer(count)
                                            for v5, v6 in pairs(v4) do
                                                if tonumber(v6["Count"]) < 12 then
                                                    game:GetService("TeleportService"):TeleportToPlaceInstance(
                                                        game.PlaceId,
                                                        v5
                                                    )
                                                end
                                            end
                                        end
                                    end
                                    if _G.LowHop then
                                        task.spawn(
                                            function()
                                                local c = nil
                                                local d = nil
                                                local x = nil
                                                while true do
                                                    task.wait()
                                                    if c == nil then
                                                        d =
                                                            game:HttpGet(
                                                            "https://games.roblox.com/v1/games/" ..
                                                                tostring(game.PlaceId) ..
                                                                    "/servers/Public?sortOrder=Asc&excludeFullGames=false&limit=100&cursor="
                                                        )
                                                        x = game:GetService("HttpService"):JSONDecode(d)
                                                        s = x.data
                                                        print(d)
                                                        c = x.nextPageCursor
                                                        for i, v in pairs(s) do
                                                            if v.playing then
                                                                if v.playing >= 1 then
                                                                    game:GetService("TeleportService"):TeleportToPlaceInstance(
                                                                        game.PlaceId,
                                                                        v.id
                                                                    )
                                                                end
                                                            end
                                                        end
                                                    end
                                                    if c then
                                                        d =
                                                            game:HttpGet(
                                                            "https://games.roblox.com/v1/games/" ..
                                                                tostring(game.PlaceId) ..
                                                                    "/servers/Public?sortOrder=Asc&excludeFullGames=false&limit=100&cursor=" ..
                                                                        c
                                                        )
                                                        x = game:GetService("HttpService"):JSONDecode(d)
                                                        s = x.data
                                                        print(d)
                                                        c = x.nextPageCursor
                                                        for i, v in pairs(s) do
                                                            if v.playing then
                                                                if v.playing >= 1 then
                                                                    game:GetService("TeleportService"):TeleportToPlaceInstance(
                                                                        game.PlaceId,
                                                                        v.id
                                                                    )
                                                                end
                                                            end
                                                        end
                                                    end
                                                end
                                            end
                                        )
                                    end
                                end
                            )
                        end
                    end
                end
            end
        end
    end
)
spawn(
    function()
        while true do
            wait()
            if _G.HopNear then
                for i, v in pairs(game:GetService("Players"):GetPlayers()) do
                    if v ~= game.Players.LocalPlayer then
                        local v1 = game.Players.LocalPlayer
                        local v2 = v.Character or v.CharacterAdded:Wait()
                        if v2 then
                            local v3 = v.Character:FindFirstChild("HumanoidRootPart")
                            if v3 then
                                if v3.Position then
                                    if _G.Distance then
                                        if v1:DistanceFromCharacter(v3.Position) <= _G.Distance then
                                            local Username = game.Players.LocalPlayer.Name
                                            Request(
                                                {
                                                    Method = "GET",
                                                    Url = "http://localhost:7963/BlockUser?Account=" ..
                                                        Username .. "&UserId=" .. v.UserId
                                                }
                                            )
                                            pcall(
                                                function()
                                                    if _G.LowHop == false then
                                                        for count = math.random(1, math.random(40, 75)), 100 do
                                                            local v4 =
                                                                game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer(
                                                                count
                                                            )
                                                            for v5, v6 in pairs(v4) do
                                                                if tonumber(v6["Count"]) < 12 then
                                                                    game:GetService("TeleportService"):TeleportToPlaceInstance(
                                                                        game.PlaceId,
                                                                        v5
                                                                    )
                                                                end
                                                            end
                                                        end
                                                    end
                                                    if _G.LowHop then
                                                        task.spawn(
                                                            function()
                                                                local c = nil
                                                                local d = nil
                                                                local x = nil
                                                                while true do
                                                                    task.wait()
                                                                    if c == nil then
                                                                        d =
                                                                            game:HttpGet(
                                                                            "https://games.roblox.com/v1/games/" ..
                                                                                tostring(game.PlaceId) ..
                                                                                    "/servers/Public?sortOrder=Asc&excludeFullGames=false&limit=100&cursor="
                                                                        )
                                                                        x = game:GetService("HttpService"):JSONDecode(d)
                                                                        s = x.data
                                                                        c = x.nextPageCursor
                                                                        for i, v in pairs(s) do
                                                                            if v.playing then
                                                                                if v.playing >= 1 then
                                                                                    game:GetService("TeleportService"):TeleportToPlaceInstance(
                                                                                        game.PlaceId,
                                                                                        v.id
                                                                                    )
                                                                                end
                                                                            end
                                                                        end
                                                                    end
                                                                    if c then
                                                                        d =
                                                                            game:HttpGet(
                                                                            "https://games.roblox.com/v1/games/" ..
                                                                                tostring(game.PlaceId) ..
                                                                                    "/servers/Public?sortOrder=Asc&excludeFullGames=false&limit=100&cursor=" ..
                                                                                        c
                                                                        )
                                                                        x = game:GetService("HttpService"):JSONDecode(d)
                                                                        s = x.data
                                                                        c = x.nextPageCursor
                                                                        for i, v in pairs(s) do
                                                                            if v.playing then
                                                                                if v.playing >= 1 then
                                                                                    game:GetService("TeleportService"):TeleportToPlaceInstance(
                                                                                        game.PlaceId,
                                                                                        v.id
                                                                                    )
                                                                                end
                                                                            end
                                                                        end
                                                                    end
                                                                end
                                                            end
                                                        )
                                                    end
                                                end
                                            )
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
)
