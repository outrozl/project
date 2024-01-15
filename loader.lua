-- Creditos a vynixus por el cargador
local games = {
 [{2753915549, 4442272183, 7449423635}] = "https://raw.githubusercontent.com/outrozl/project/main/scripts/bf.lua",
 [{142823291}] = "https://raw.githubusercontent.com/outrozl/project/main/scripts/mm2.lua",
 [{3101667897}] = "https://raw.githubusercontent.com/outrozl/project/main/scripts/los.lua",
 [{13772394625}] = "https://raw.githubusercontent.com/outrozl/project/main/scripts/BB.lua"
}

-- Añadir una variable para almacenar la ID del juego actual
local gameId = game.PlaceId

for ids, url in next, games do

 -- Actualizar la condición del bucle `for`
 if table.find(ids, gameId) then
  loadstring(game:HttpGet(url))()
  break
 else
  -- Mostrar una notificación de error
  game:GetService("StarterGui"):SetCore("SendNotification", {
   Title = "Error!",
   Text = "El juego que estas jugando no se ha encontrado en nuestro sistema",
   Duration = 10,
   Icon = "rbxassetid://13499341131"
  })
 end
end
