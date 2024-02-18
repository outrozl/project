local Mercury = loadstring(game:HttpGet("https://raw.githubusercontent.com/deeeity/mercury-lib/master/src.lua"))()

local GUI = Mercury:Create{
    Name = "Nev | Script Hub",
    Size = UDim2.fromOffset(600, 400),
    Theme = Mercury.Themes.Dark,
    Link = "https://github.com/outrozl"
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
    ["TigerAdmin"] = { URL = "https://github.com/H17S32/Tiger_Admin/blob/main/TigeradminREVAMP.txt?raw=true", Method = 1 },
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
    ["2x Hub"] = { URL = "https://raw.githubusercontent.com/armch063/BF-1XLIIHUB-V3/main/README.md", Method = 3 },
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

local function alphabeticalOrder(a, b)
    local firstLetterA = string.sub(a, 1, 1):lower()
    local firstLetterB = string.sub(b, 1, 1):lower()
    return firstLetterA < firstLetterB
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

-- loadstring(game:HttpGet("https://raw.githubusercontent.com/outrozl/project/main/master/findscript.lua?raw=true"))()
