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

print("Nev | Script Hub | "..NevVer.." : Wait version 1.1.3 remodel of UI and gamechecker")
