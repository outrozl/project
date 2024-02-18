local Mercury = loadstring(game:HttpGet("https://raw.githubusercontent.com/deeeity/mercury-lib/master/src.lua"))()

local GUI = Mercury:Create{
    Name = "Nev | Script Hub",
    Size = UDim2.fromOffset(600, 400),
    Theme = Mercury.Themes.Dark,
    Link = "https://github.com/outrozl"
}

-- Functions

local function selectMethod(method, useRaw)
    if method == 1 then
        return useRaw and game.HttpGet or function(url) return game:HttpGet(url) end
    elseif method == 2 then
        return useRaw and game.HttpGetAsync or function(url) return game:HttpGetAsync(url) end
    elseif method == 3 then
        return useRaw and loadstring(game:HttpGet(url, true)) or function(url) return loadstring(game:HttpGet(url, true))() end
    end
end

local scripts = {
    ["Infinite Yield"] = { URL = "https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source", Method = 1 },
    ["IY"] = { URL = "https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source", Method = 1 },
    ["InfiniteYield"] = { URL = "https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source", Method = 1 },
    ["Inf Yield"] = { URL = "https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source", Method = 1 },
    ["CMD - X"] = { URL = "https://github.com/CMD-X/CMD-X/blob/master/Source?raw=true", Method = 3 },
    ["CMD-X"] = { URL = "https://github.com/CMD-X/CMD-X/blob/master/Source?raw=true", Method = 3 },
    ["CMDX"] = { URL = "https://github.com/CMD-X/CMD-X/blob/master/Source?raw=true", Method = 3 },
    ["Orca"] = { URL = "https://raw.githubusercontent.com/richie0866/orca/master/public/latest.lua", Method = 2 },
    ["HoHo Hub"] = { URL = 'https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI', Method = 1 },
    ["hoho hub"] = { URL = 'https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI', Method = 1 },
    ["hohohub"] = { URL = 'https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI', Method = 1 },
    ["hoho"] = { URL = 'https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI', Method = 1 },
    ["TigerAdmin"] = { URL = "https://github.com/H17S32/Tiger_Admin/blob/main/TigeradminREVAMP.txt?raw=true", Method = 1 },
    ["tiger"] = { URL = "https://github.com/H17S32/Tiger_Admin/blob/main/TigeradminREVAMP.txt?raw=true", Method = 1 },
    ["tigeradmin"] = { URL = "https://github.com/H17S32/Tiger_Admin/blob/main/TigeradminREVAMP.txt?raw=true", Method = 1 },
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
                local loadFunction = selectMethod(selectedScript.Method, selectedScript.UseRaw)
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

-- loadstring(game:HttpGet("https://raw.githubusercontent.com/outrozl/project/main/master/findscript.lua?raw=true"))()
