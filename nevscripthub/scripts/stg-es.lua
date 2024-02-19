local Mercury = loadstring(game:HttpGet("https://raw.githubusercontent.com/deeeity/mercury-lib/master/src.lua"))()
local NevVer = "1.0.0"

local GUI = Mercury:Create{
    Name = "Nev | STB | "..NevVer,
    Size = UDim2.fromOffset(600, 400),
    Theme = Mercury.Themes.Dark,
    Link = "https://github.com/outrozl/project/blob/main/nevscripthub/scripts/stb"
}

local mejores = {
    ["Light Tux"] = { URL = "https://raw.githubusercontent.com/Scripterbacon/TSBobfuscator/main/Main.Lua", Método = 1 },
    ["GUI 2"] = { URL = "https://raw.githubusercontent.com/LOLking123456/Strongest/main/Battlegrounds77", Método = 1 },
    ["GUI 3"] = { URL = "https://raw.githubusercontent.com/Nicuse/RobloxScripts/main/SaitamaBattlegrounds.lua", Método = 1 },
}

-- Funciones

local function seleccionarMétodo(método, usarRaw)
    if método == 1 then
        return usarRaw y game.HttpGet or function(url) return game:HttpGet(url) end
    elseif método == 2 then
        return usarRaw y game.HttpGetAsync or function(url) return game:HttpGetAsync(url) end
    elseif método == 3 then
        return usarRaw y loadstring(game:HttpGet(url, true)) or function(url) return loadstring(game:HttpGet(url, true))() end
    end
end

local MejorTab = GUI:Tab{
    Nombre = "Scripts",
    Icono = "rbxassetid://7733749837"
}

-- Función para ordenar alfabéticamente los scripts
local function ordenAlfabético(a, b)
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
local nombresScriptsOrdenados = {}
for nombreScript, _ in pairs(mejores) do
    table.insert(nombresScriptsOrdenados, nombreScript)
end
table.sort(nombresScriptsOrdenados, ordenAlfabético)

-- Agregar botones para cada script almacenado, en orden alfabético
for _, nombreScript in ipairs(nombresScriptsOrdenados) do
    local datosScript = mejores[nombreScript]
    MejorTab:Button{
        Nombre = nombreScript,
        Descripción = nil,
        Callback = function() 
            local éxito, resultado = pcall(function()
                local funciónCarga = seleccionarMétodo(datosScript.Método)
                return loadstring(funciónCarga(datosScript.URL))()
            end)
            if not éxito then
                warn("Hubo un error al cargar el script: ", resultado)
                game:GetService("StarterGui"):SetCore("SendNotification",{
                    Título = "Nev | Hub de Scripts",
                    Texto = "Hubo un error al cargar el script: " .. resultado .. ".",
                    Icono = "rbxassetid://7734053281"
                })
            end
        end
    }
end

GUI:Crédito{
    Nombre = "Nev",
    Descripción = "Buscador, Código, No tengo V3rm",
    V3rm = nil,
    Discordia = "https://discord.gg/GXYytRX6H3"
}

GUI:Notificación{
    Título = "Nev | Hub de Scripts",
    Texto = "Script cargado correctamente, versión: " ..NevVer,
    Duración = 3,
    Callback = function() end
}

GUI:Prompt{
    Seguimiento = false,
    Título = "Nev | Hub de Scripts",
    Texto = "¿Quieres unirte a nuestro servidor de Discord?",
    Botones = {
        ok = function()
            setclipboard("https://discord.gg/GXYytRX6H3")
            GUI:Notificación{
                Título = "Nev | Hub de Scripts",
                Texto = "Se ha copiado el enlace del servidor de Discord en tu portapapeles.",
                Duración = 3,
                Callback = function() end
            }
            return true
        end,
        no = function()
            return false
        end
    }
}
