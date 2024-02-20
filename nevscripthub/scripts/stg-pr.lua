local function GetVer()
    -- Enlace que contiene solo el número de versión
    local versionURL = "https://raw.githubusercontent.com/outrozl/project/main/nevscripthub/scripts/tools/version.txt"
    
    -- Realizar una solicitud HTTP para obtener el contenido del enlace
    local response = game.HttpGet(versionURL)
    
    -- Verificar si la respuesta es válida
    if response then
        -- Extraer el número de versión del texto obtenido
        local NevVer = response:match("(%d+%.%d+%.%d+)")
        return NevVer
    else
        -- Manejar el caso en que la respuesta no sea válida
        return nil
    end
end

-- Obtener la versión
local NevVer = GetVer()

local Mercury = loadstring(game:HttpGet("https://raw.githubusercontent.com/deeeity/mercury-lib/master/src.lua"))()

local GUI = Mercury:Create{
    Name = "Nev | STG | "..NevVer,
    Size = UDim2.fromOffset(600, 400),
    Theme = Mercury.Themes.Dark,
    Link = "https://github.com/outrozl/project/blob/main/nevscripthub/scripts/stg"
}

local best = {
    ["Light Tux"] = { URL = "https://raw.githubusercontent.com/Scripterbacon/TSBobfuscator/main/Main.Lua", Method = 1 },
    ["GUI 2"] = { URL = "https://raw.githubusercontent.com/LOLking123456/Strongest/main/Battlegrounds77", Method = 1 },
    ["GUI 3"] = { URL = "https://raw.githubusercontent.com/Nicuse/RobloxScripts/main/SaitamaBattlegrounds.lua", Method = 1 },
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

local BestTab = GUI:Tab{
	Name = "Scripts",
	Icon = "rbxassetid://7733749837"
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
for scriptName, _ in pairs(best) do
    table.insert(sortedScriptNames, scriptName)
end
table.sort(sortedScriptNames, alphabeticalOrder)

-- Agregar botones para cada script almacenado, en orden alfabético
for _, scriptName in ipairs(sortedScriptNames) do
    local scriptData = best[scriptName]
    BestTab:Button{
        Name = scriptName,
        Description = nil,
        Callback = function() 
            local success, result = pcall(function()
                local loadFunction = selectMethod(scriptData.Method)
                return loadstring(loadFunction(scriptData.URL))()
            end)
            if not success then
                warn("There was an error loading the script: ", result)
                game:GetService("StarterGui"):SetCore("SendNotification",{
                    Title = "Nev | Script Hub",
                    Text = "There was an error loading the script: " .. result .. ".",
                    Icon = "rbxassetid://7734053281"
                })
            end
        end
    }
end

GUI:Credit{
    Name = "Nev",
    Description = "Pesquisador, código, não tenho V3rm",
    V3rm = nil,
    Discord = "https://discord.gg/GXYytRX6H3"
}

GUI:Notification{
	Title = "Nev | Script Hub",
	Text = "Script carregado com sucesso, versão: " ..NevVer,
	Duration = 3,
	Callback = function() end
}

GUI:Prompt{
	Followup = false,
	Title = "Nev | Script Hub",
	Text = "Quer entrar no nosso servidor discord?",
	Buttons = {
		ok = function()
            setclipboard("https://discord.gg/GXYytRX6H3")
            GUI:Notification{
                Title = "Nev | Script Hub",
                Text = "Copiou o link do servidor discord para sua área de transferência.",
                Duration = 3,
                Callback = function() end
            }
			return true
		end,
		no = function()
			return false
		end
	}
}
