local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local games = {
  [{2753915549, 4442272183, 7449423635}] = "https://raw.githubusercontent.com/outrozl/project/main/scripts/bf.lua",
}

for ids, url in next, games do

  if table.find(ids, game.PlaceId) then
    OrionLib:MakeNotification({
	    Name = "Nev | Script Hub",
	    Content = "The game is supported wait!",
	    Image = "rbxassetid://7733710700",
	    Time = 5
    })
    wait(5)
    loadstring(game:HttpGet(url))()
    break
  else
    game:GetService("StarterGui"):SetCore("SendNotification", {
        OrionLib:MakeNotification({
	        Name = "Nev | Script Hub",
	        Content = "Game not supported",
	        Image = "rbxassetid://7734053281",
	        Time = 5
        })
    })
  end
end
