local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local games = {
    [{2753915549, 4442272183, 7449423635}] = "https://github.com/outrozl/project/blob/main/nevscripthub/scripts/selectlang.bf.lua?raw=true",
    [{10449761463}] = "https://github.com/outrozl/project/blob/main/nevscripthub/scripts/selectlang.stg.lua?raw=true",
    [{155615604}] = "https://github.com/outrozl/project/blob/main/nevscripthub/scripts/selectlang.prisonlife.lua?raw=true",
}

local gameSupported = false

for ids, url in next, games do
    if table.find(ids, game.PlaceId) then
        gameSupported = true
        OrionLib:MakeNotification({
            Name = "Nev | Script Hub",
            Content = "Game supported, loading script...",
            Image = "rbxassetid://7734053281",
            Time = 5
        })
        wait(5)
        loadstring(game:HttpGet(url))()
        break
    end
end

if not gameSupported then
    OrionLib:MakeNotification({
        Name = "Nev | Script Hub",
        Content = "Game not supported",
        Image = "rbxassetid://7734053281",
        Time = 5
    })
end
