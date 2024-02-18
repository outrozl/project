
--[[
    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
]]

local Mercury = loadstring(game:HttpGet("https://raw.githubusercontent.com/deeeity/mercury-lib/master/src.lua"))()

local GUI = Mercury:Create{
    Name = "Nev | Script Hub",
    Size = UDim2.fromOffset(600, 400),
    Theme = Mercury.Themes.Dark,
    Link = "https://github.com/outrozl"
}

-- Functions

local scripts = {
    ["Infinite Yield"] = "https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source",
    ["IY"] = "https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source",
    ["InfiniteYield"] = "https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source",
    ["Inf Yield"] = "https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source",
    ["CMD - X"] = "https://raw.githubusercontent.com/CMD-X/CMD/master/Source",
    ["CMD-X"] = "https://raw.githubusercontent.com/CMD-X/CMD/master/Source",
    ["CMDX"] = "https://raw.githubusercontent.com/CMD-X/CMD/master/Source",
    ["Orca"] = {
        URL = "https://raw.githubusercontent.com/richie0866/orca/master/public/latest.lua",
        UseFirstMethod = true
    },
}

-- Tabs

local Universals = GUI:Tab{
	Name = "Universals",
	Icon = "rbxassetid://6034227139"
}

-- Content

Universals:Slider{
    Name = "Velocidad",
    Default = 16,
    Min = 0,
    Max = 500,
    Callback = function(value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
    end
}

Universals:Slider{
    Name = "Salto",
    Default = 50,
    Min = 0,
    Max = 500,
    Callback = function(value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = value
    end
}

-- Select game
Universals:Textbox{
    Name = "Pon el nombre de algun script",
    Callback = function(text)
        local selectedScript = scripts[text]
        if selectedScript then
            local success, result = pcall(function()
                local loadFunction = selectedScript.UseFirstMethod and game.HttpGetAsync or game.HttpGet
                return loadstring(loadFunction(selectedScript.URL))()
            end)
            if not success then
                warn("Hubo un error al cargar el script:", result)
                game:GetService("StarterGui"):SetCore("SendNotification",{
                    Title = "Nev | Script Hub", -- Required
                    Text = "Hubo un erro al cargar el script: " .. result .. ".", -- Required
                    Icon = "rbxassetid://7734053281" -- Optional
                })
            end
        else
            warn("El nombre del script ingresado no coincide con ningún script disponible.")
            game:GetService("StarterGui"):SetCore("SendNotification",{
                Title = "Nev | Script Hub", -- Required
                Text = "El nombre del script ingresado no coincide con qué script disponible.", -- Required
                Icon = "rbxassetid://7734053281" -- Optional
            })
        end
    end
}

GUI:Credit{
	Name = "Nev",
	Description = "Buscador, Codigo, No tengo V3rm",
	V3rm = nil,
	Discord = "https://discord.gg/GXYytRX6H3"
}

GUI:Notification{
	Title = "Nev | Script Hub",
	Text = "El script ha cargado correctamente.",
	Duration = 3,
	Callback = function() end
}

-- loadstring(game:HttpGet("https://raw.githubusercontent.com/outrozl/project/main/script-es/es-ui.lua?raw=true"))()
