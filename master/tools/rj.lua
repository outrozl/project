-- Esperamos a que el jugador local esté disponible
repeat wait() until game.Players.LocalPlayer

-- Obtener el servicio de Teleport
local teleportService = game:GetService("TeleportService")

-- Función para manejar el teletransporte
local function teleportToPlace(placeId)
    -- Teletransportar al jugador al lugar especificado
    local success, errorMessage = pcall(function()
        teleportService:Teleport(placeId, game.Players.LocalPlayer)
    end)
    if not success then
        warn("Error al teletransportar:", errorMessage)
    end
end

-- Uso de la función para teletransportar al jugador local al mismo servidor
teleportToPlace(game.PlaceId)
