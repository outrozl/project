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

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Select Language | "..NevVer, HidePremium = false, SaveConfig = true, IntroEnabled = false, ConfigFolder = "OrionTest"})

local Tab = Window:MakeTab({
    Name = "Select Language",
    Icon = "rbxassetid://6031225812",
    PremiumOnly = false
})

Tab:AddDropdown({
	Name = "Dropdown",
	Default = nil,
	Options = {"English", "Español (No esta funcionando)", "Português (não está funcionando)", "日本語 (動かない)"},
	Callback = function(Value)
		if Value == "English" then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/outrozl/project/main/nevscripthub/scripts/stg-en.lua"))()
            OrionLib:Destroy()
        elseif Value == "Español (No esta funcionando)" then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/outrozl/project/main/nevscripthub/scripts/stg-es.lua"))()
            OrionLib:Destroy()
        elseif Value == "Português (não está funcionando)" then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/outrozl/project/main/nevscripthub/scripts/stg-pr.lua"))()
            OrionLib:Destroy()
        elseif Value == "日本語 (動かない)" then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/outrozl/project/main/nevscripthub/scripts/stg-jp.lua"))()
            OrionLib:Destroy()
        end
	end    
})

OrionLib:Init()
