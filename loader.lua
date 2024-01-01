-- Credits vynixus for the loader

-- Creditos a vynixus por el cargador
local games = {
  [{2753915549, 4442272183, 7449423635}] = "https://raw.githubusercontent.com/outrozl/project/main/scripts/bf.lua",
  [{142823291}] = "https://raw.githubusercontent.com/outrozl/project/main/scripts/mm2.lua",
  [{3101667897}] = "https://raw.githubusercontent.com/outrozl/project/main/scripts/los.lua",
  [{13772394625}] = "https://raw.githubusercontent.com/outrozl/project/main/scripts/BB.lua"
}

game:GetService("StarterGui"):SetCore("SendNotification", {
  Title = "Iniciando búsqueda de juego...",
  Text = "Buscando tu juego",
  Duration = 1
})

for ids, url in next, games do
  game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Comprobando ID:",
    Text = tostring(ids),
    Duration = 2
  })

  if table.find(ids, game.PlaceId) then
    loadstring(game:HttpGet(url))()
    break
  else
    game:GetService("StarterGui"):SetCore("SendNotification", {
      Title = "Error!",
      Text = "El juego que estas jugando no se ha encontrado en nuestro sistema",
      Duration = 4,
      Icon = "rbxassetid://1234567890"
    })
  end
end
