-- Credits vynixus for the loader

-- Creditos a vynixus por el cargador
local games = {
    [{2753915549, 4442272183, 7449423635}] = "https://raw.githubusercontent.com/outrozl/project/main/scripts/bf.lua"
}

for ids, url in next, games do
    if table.find(ids, game.PlaceId) then
        loadstring(game:HttpGet(url))()
        break
    end
end
