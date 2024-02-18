local Mercury = loadstring(game:HttpGet("https://raw.githubusercontent.com/deeeity/mercury-lib/master/src.lua"))()
local NevVer = "PreRelease 1.0.9"

local GUI = Mercury:Create{
    Name = "Nev | "..NevVer,
    Size = UDim2.fromOffset(700, 500),
    Theme = Mercury.Themes.Dark,
    Link = "https://github.com/outrozl/project/blob/main/master/FindScripts/"
}

-- Functions

local function selectMethod(method, useRaw)
    if method == 1 then
        return useRaw and game.HttpGet or function(url) return game:HttpGet(url) end
    elseif method == 2 then
        return useRaw and game.HttpGetAsync or function(url) return game:HttpGetAsync(url) end
    elseif method == 3 then
        return useRaw and loadstring(game:HttpGet(url, true)) or function(url) return loadstring(game:HttpGet(url, true))() end
    end
end

local scripts = {
    ["Infinite Yield"] = { URL = "https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source", Method = 1 },
    ["CMD - X"] = { URL = "https://github.com/CMD-X/CMD-X/blob/master/Source?raw=true", Method = 3 },
    ["Orca"] = { URL = "https://raw.githubusercontent.com/richie0866/orca/master/public/latest.lua", Method = 2 },
    ["HoHo Hub V3"] = { URL = 'https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI', Method = 1 },
    ["Tiger Admin"] = { URL = "https://github.com/H17S32/Tiger_Admin/blob/main/TigeradminREVAMP.txt?raw=true", Method = 1 },
    ["Redzhub"] = { URL = "https://raw.githubusercontent.com/REDzHUB/BloxFruits/main/redz9999", Method = 1 },
    ["Alchemy Hub"] = { URL = "https://alchemyhub.xyz/v2", Method = 1 },
    ["Dex Explorer"] = { URL = "https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/BypassedDarkDexV3.lua", Method = 3 },
    ["Unfair Hub"] = { URL = "https://raw.githubusercontent.com/rblxscriptsnet/unfair/main/rblxhub.lua", Method = 3 },
    ["Uranium X Hub"] = { URL = "https://raw.githubusercontent.com/Augustzyzx/UraniumMobile/main/UraniumKak.lua", Method = 1 },
    ["CFrame Hub"] = { URL = "https://raw.githubusercontent.com/CFrame3310/CFrameHub/main/BloxFruitV2.lua", Method = 1 },
    ["Neva Hub"] = { URL = "https://raw.githubusercontent.com/VEZ2/NEVAHUB/main/2", Method = 1 },
    ["Makima Hub"] = { URL = "https://raw.githubusercontent.com/Piwwy0909/MakimaRemake/main/Cumback.Makima", Method = 1 },
    ["Sonic Hub"] = { URL = "https://raw.githubusercontent.com/NickelHUBB/SonicTuru/main/Protected-25.lua", Method = 1 },
    ["Zee Hub"] = { URL = "https://zKuzy.link/ZeeHub.lua", Method = 1 },
    ["Wally Autoplayer"] = { URL = "https://github.com/Bart3kk/funky-friday-autoplay/blob/main/script.lua?raw=true", Method = 3 },
    ["Hoho Hub V2"] = { URL = "https://raw.githubusercontent.com/acsu123/HohoV2/main/OldScriptLoad", Method = 1 },
    ["Madox Hub"] = { URL = "https://raw.githubusercontent.com/Fiend1sh/FiendMain/main/MadoxHubKey", Method = 3 },
    ["2x Hub"] = { URL = "https://raw.githubusercontent.com/armch063/BF-1XLIIHUB-V3/main/README.md", Method = 1 },
    ["Speed Hub X"] = { URL = "https://github.com/ahmadsgamer2/Speed-Hub-X/blob/main/SpeedHubX", Method = 1 },
    ["Unique Hub"] = { URL = "https://raw.githubusercontent.com/AkiraNus/UniquehubKak/main/FreeCr.Xenonhub", Method = 1 },
    ["Chiba Hub"] = { URL = "https://raw.githubusercontent.com/ChibaHub/ChibaHub/main/ChibaHub.lua", Method = 1 },
    ["Zaque Hub"] = { URL = "https://raw.githubusercontent.com/Mei2232/ZaqueHub/main/Zaque%20Hub", Method = 1 },
    ["Glord Hub"] = { URL = "https://raw.githubusercontent.com/GGhostVN/GhostLord/main/BF", Method = 1 },
    ["Blck Hub"] = { URL = "https://raw.githubusercontent.com/1f0yt/community/main/BLCK", Method = 1 },
    ["Loli Hub"] = { URL = "https://raw.githubusercontent.com/1f0yt/community/main/neon", Method = 1 },
    ["Alucard Hub"] = { URL = "https://raw.githubusercontent.com/JJTChannel/Alucard_hub/main/main.lua", Method = 1 },
    ["Mukuru Hub"] = { URL = "https://raw.githubusercontent.com/xQuartyx/DonateMe/main/ScriptLoader", Method = 1 },
    ["Zen Hub"] = { URL = "https://raw.githubusercontent.com/Kaizenofficiall/ZenHub/main/Loader", Method = 1 },
    ["Ripper Hub"] = { URL = "https://raw.githubusercontent.com/xDestinyx/RipperHub/main/Loader.lua", Method = 1 },
    ["Ren Hub"] = { URL = "https://raw.githubusercontent.com/UltraStuff/scripts2/main/ren", Method = 1 },
    ["Void Hub"] = { URL = "https://raw.githubusercontent.com/Efe0626/VoidHub/main/Script", Method = 1 },
    ["BlackTrap Gui"] = { URL = "https://gitlab.com/Sky2836/test/-/raw/main/Script_All_In-One", Method = 1 },
    ["Destiny Hub"] = { URL = "https://raw.githubusercontent.com/KudoCon/DestinyHub/main/DestinyKey", Method = 1 },
    ["Atomic Hub"] = { URL = "https://raw.githubusercontent.com/ArceusXHub/atomic-hub/main/atomic-hub.lua", Method = 1 },
    ["Zamex Hub"] = { URL = "https://raw.githubusercontent.com/Sixnumz/ZamexMobile/main/Zamex_Mobile.lua", Method = 1 },
    ["Saki Hub"] = { URL = "https://sharetext.me/raw/u3if6m3hgr", Method = 1 },
    ["Fruit Finder (Blox Fruits)"] = { URL = "https://raw.githubusercontent.com/NickelHUBB/SonicTuru/main/BetaFruitFinder", Method = 1 },
    ["Chest Farm (Blox Fruits)"] = { URL = "https://raw.githubusercontent.com/NickelHUBB/SonicTuru/main/ChestFarmOp", Method = 1 },
    ["3008 Gui (No tiene nombre)"] = { URL = "https://github.com/UltraStuff/scripts2/blob/main/3008?raw=true", Method = 1 },
    ["Nova Hub"] = { URL = "https://raw.githubusercontent.com/Synergy-Networks/products/main/ProjectNova/loader.lua", Method = 3 },
}

-- Tabs
local Universals = GUI:Tab{
	Name = "Universals",
	Icon = "rbxassetid://6034227139"
}

local ScriptsTab = GUI:Tab{
	Name = "Almacenados",
	Icon = "rbxassetid://7733749837"
}

-- Content

Universals:Slider{
    Name = "Velocidad",
    Default = 16,
    Min = 0,
    Max = 500,
    Callback = function(value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
    end
}

Universals:Slider{
    Name = "Salto",
    Default = 50,
    Min = 0,
    Max = 500,
    Callback = function(value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = value
    end
}

Universals:Button{
	Name = "Rejoin / Reunete al servidor",
	Description = nil,
	Callback = function() 
        game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, game:GetService("Players").LocalPlayer)
        wait(game.loaded)
        loadstring(game:HttpGet("https://raw.githubusercontent.com/outrozl/project/main/master/findscript.lua?raw=true"))()
    end
}

Universals:Button{
    Name = "¿Quieres añadir scripts? Presiona este botón",
	Description = "Copiaras la invitacion a el servidor de discord",
	Callback = function() 
        setclipboard("https://discord.gg/9aFQxqW")
    end
}

-- Select game
Universals:Textbox{
    Name = "Pon el nombre de algun script",
    Callback = function(text)
        local selectedScript = scripts[text]
        if selectedScript then
            local success, result = pcall(function()
                local loadFunction = selectMethod(selectedScript.Method, selectedScript.UseRaw)
                return loadstring(loadFunction(selectedScript.URL))()
            end)
            if not success then
                warn("Hubo un error al cargar el script:", result)
                game:GetService("StarterGui"):SetCore("SendNotification",{
                    Title = "Nev | Script Hub", -- Required
                    Text = "Hubo un erro al cargar el script: " .. result .. ".", -- Required
                    Icon = "rbxassetid://7734053281" -- Optional
                })
            end
        else
            warn("El nombre del script ingresado no coincide con ningún script disponible.")
            game:GetService("StarterGui"):SetCore("SendNotification",{
                Title = "Nev | Script Hub", -- Required
                Text = "El nombre del script ingresado no coincide con qué script disponible.", -- Required
                Icon = "rbxassetid://7734053281" -- Optional
            })
            if text ~= scripts["Alchemy"] or scripts["Alchemy Hub"] or scripts["alchemy"] or scripts["alchemyhub"] or scripts["AlchemyHub"] then
                game:GetService("StarterGui"):SetCore("SendNotification",{
                    Title = "Nev | Script Hub", -- Required
                    Text = "Si Alchemy Hub no se ejecuta pueden ser problemas con tu antivirus.", -- Required
                    Icon = "rbxassetid://7734053281" -- Optional
                })
            end
        end
    end
}

-- Función para ordenar alfabéticamente los scripts
local function alphabeticalOrder(a, b)
    -- Si la primera letra de 'a' es un número y la primera letra de 'b' no lo es, se elige la segunda letra de 'a'
    if tonumber(string.sub(a, 1, 1)) and not tonumber(string.sub(b, 1, 1)) then
        return string.sub(a, 2, 2):lower() < string.sub(b, 1, 1):lower()
    -- Si la primera letra de 'b' es un número y la primera letra de 'a' no lo es, se elige la primera letra de 'a'
    elseif tonumber(string.sub(b, 1, 1)) and not tonumber(string.sub(a, 1, 1)) then
        return string.sub(a, 1, 1):lower() < string.sub(b, 2, 2):lower()
    -- En otros casos, se compara normalmente la primera letra de cada nombre
    else
        return string.sub(a, 1, 1):lower() < string.sub(b, 1, 1):lower()
    end
end

-- Lista ordenada de nombres de scripts
local sortedScriptNames = {}
for scriptName, _ in pairs(scripts) do
    table.insert(sortedScriptNames, scriptName)
end
table.sort(sortedScriptNames, alphabeticalOrder)

-- Agregar botones para cada script almacenado, en orden alfabético
for _, scriptName in ipairs(sortedScriptNames) do
    local scriptData = scripts[scriptName]
    ScriptsTab:Button{
        Name = scriptName,
        Description = nil,
        Callback = function() 
            local success, result = pcall(function()
                local loadFunction = selectMethod(scriptData.Method)
                return loadstring(loadFunction(scriptData.URL))()
            end)
            if not success then
                warn("Hubo un error al cargar el script:", result)
                game:GetService("StarterGui"):SetCore("SendNotification",{
                    Title = "Nev | Script Hub",
                    Text = "Hubo un error al cargar el script: " .. result .. ".",
                    Icon = "rbxassetid://7734053281"
                })
            end
        end
    }
end

GUI:Credit{
	Name = "Nev",
	Description = "Buscador, Codigo, No tengo V3rm",
	V3rm = nil,
	Discord = "https://discord.gg/GXYytRX6H3"
}

GUI:Notification{
	Title = "Nev | Script Hub",
	Text = "El script ha cargado correctamente.",
	Duration = 3,
	Callback = function() end
}
GUI:Notification{
	Title = "Nev | Script Hub",
	Text = "Version actual: "..NevVer,
	Duration = 3,
	Callback = function() end
}

-- loadstring(game:HttpGet("https://raw.githubusercontent.com/outrozl/project/main/master/findscript.lua?raw=true"))() -- loadstring(game:HttpGet("https://github.com/ahmadsgamer2/Script--Game/blob/main/Shindo-Life?raw=true"))()
