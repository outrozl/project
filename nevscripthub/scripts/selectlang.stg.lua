local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Select Language"..game.Name, HidePremium = false, SaveConfig = true, IntroEnabled = false, ConfigFolder = "OrionTest"})

local Tab = Window:MakeTab({
    Name = "Select Language",
    Icon = "rbxassetid://6031225812",
    PremiumOnly = false
})

Tab:AddDropdown({
	Name = "Dropdown",
	Default = nil,
	Options = {"English", "Español", "Português", "日本語"},
	Callback = function(Value)
		if Value == "English" then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/outrozl/project/main/nevscripthub/scripts/stg-en.lua"))()
            OrionLib:Destroy()
        elseif Value == "Español" then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/outrozl/project/main/nevscripthub/scripts/stg-es.lua"))()
            OrionLib:Destroy()
        elseif Value == "Português" then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/outrozl/project/main/nevscripthub/scripts/stg-pr.lua"))()
            OrionLib:Destroy()
        elseif Value == "日本語" then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/outrozl/project/main/nevscripthub/scripts/stg-jp.lua"))()
            OrionLib:Destroy()
        end
	end    
})

OrionLib:Init()