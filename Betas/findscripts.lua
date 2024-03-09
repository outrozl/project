local OrionLib = loadstring(game:HttpGet(('https://github.com/outrozl/UI/blob/main/OrionEdited.lua?raw=true')))()
local Window = OrionLib:MakeWindow({
    Name = "FindScripts",
    HidePremium = false,
    SaveConfig = true,
    IntroEnabled = true,
    IntroText = "By just_nev_dev",
    IntroIcon = "rbxassetid://6034227139",
    ConfigFolder = "NevStudiosConfig"
})

local JVer = "1.0.8 🅱️"

local function addnotify(title, content, icon, time)
    OrionLib:MakeNotification({
        Name = title,
        Content = content,
        Image = "rbxassetid://" .. icon .. "",
        Time = time
    })
end

OrionLib:MakeNotification({
    Name = "Nev Studios",
    Content = "FindScripts Loaded",
    Image = "rbxassetid://6034227139",
    Time = 5
})

local Tab = Window:MakeTab({
    Name = "Loader",
    Icon = "rbxassetid://6034227139",
    PremiumOnly = false
})

local HelpTab = Window:MakeTab({
    Name = "Ayuda",
    Icon = "rbxassetid://7733765398",
    PremiumOnly = false
})

local Tab2 = Window:MakeTab({
    Name = "Universales",
    Icon = "rbxassetid://7733920768",
    PremiumOnly = false
})

local Section = Tab:AddSection({
    Name = "Loader (Usa el link raw para cargar el script)"
})

Tab:AddTextbox({
    Name = "Loader: (Solo links raw)",
    Default = "",
    TextDisappear = false,
    Callback = function(Value)
        loadstring(game:HttpGet('' .. Value .. ''))()
    end
})

local Section3 = Tab2:AddSection({
    Name = "Scripts Universales"
})

local function addscript(TabToUse, name, callbacktoscript)
    TabToUse:AddButton({
        Name = name,
        Callback = function()
            local success, errorMsg = pcall(callbacktoscript)
            if success then
                addnotify("Script Loaded", name .. " script executed successfully (thanks for using FindScripts)")
            else
                addnotify("Script Error", "Failed to execute " .. name .. ": " .. errorMsg, "4483345998", 5)
            end
        end
    })
end

local function addtext(TabToUse, Name, Content)
    TabToUse:AddParagraph(Name, Content)
end

addscript(Tab2, "Infinite Yield (✨, ✅)", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
end)

addscript(Tab2, "Hydroxide (✨, ✅)", function()
    local owner = "Upbolt"
    local branch = "revision"

    local function webImport(file)
        return loadstring(
            game:HttpGetAsync(("https://raw.githubusercontent.com/%s/Hydroxide/%s/%s.lua"):format(owner, branch, file)),
            file .. '.lua')()
    end

    webImport("init")
    webImport("ui/main")
end)

addscript(Tab2, "Fates Admin (✨)", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/fatesc/fates-admin/main/main.lua"))()
end)

addscript(Tab2, "Orca (✨, ✅)", function()
    loadstring(
        game:HttpGetAsync("https://raw.githubusercontent.com/richie0866/orca/master/public/latest.lua")
    )()
end)

addscript(Tab2, "Orca (📑 ,✨, ✅)", function()
    loadstring(
        game:HttpGetAsync("https://raw.githubusercontent.com/richie0866/orca/master/public/snapshot.lua")
    )()
end)

addscript(Tab2, "CMD-X (✨, ✅)", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source"))()
end)

addscript(Tab2, "Unnamed ESP (✨, ✅)", function()
    pcall(function()
        loadstring(game:HttpGet(
            'https://raw.githubusercontent.com/ic3w0lf22/Unnamed-ESP/master/UnnamedESP.lua'))()
    end)
end)

addscript(Tab2, "V.G Hub (✨, ✅)", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/1201for/V.G-Hub/main/V.Ghub"))()
end)

addscript(Tab2, "HoHo Hub (🤚, ✅)", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI"))()
end)

addtext(HelpTab, "FindScripts",
    "Totalmente hecho por just_nev_dev \n La interfaz de Find Scripts es de OrionLib creada por shlexware")
addtext(HelpTab, "Referencias",
    "🤚 Mensión honorable \n 👑 Hecho por just_nev_dev \n ✅ just_nev_dev ha usado este script \n ✨ De los mejores scripts \n 🅱️ es para referirse alas Betas \n 📑 es para referirse alas Snapshot")
addtext(HelpTab, "Changelogs",
    "Cambios \n Se añadio un game checker \n Version actual: " ..
    JVer)

local texts = {
    "¡Eres tan genial como un sándwich de queso a la plancha perfectamente dorado!",
    "Tu sonrisa es tan radiante como un atardecer de verano.",
    "Tu ingenio es tan afilado como un katana recién forjado.",
    "Tu amabilidad es tan reconfortante como una manta suave en un día frío.",
    "Tu presencia es tan energizante como una taza de café recién hecho.",
    "Tu sentido del humor es tan contagioso como una risa incontrolable.",
    "Tu creatividad es tan inspiradora como una obra de arte maestra.",
    "Tu inteligencia es tan admirable como un libro lleno de sabiduría.",
    "Tu bondad es tan contagiosa como un bostezo.",
    "¡Eres tan increíble como un unicornio mágico!",
}

local function addTexting()
    while true do
        wait(math.random(120, 180))
        local randomIndex = math.random(#texts)
        addnotify("¡Oye mira esto!", texts[randomIndex], "6034227139", 4)
    end
end

local function checkgame()
    if game.PlaceId == 155615604 then
        local gamename = game.name
        local GameChecker = Window:MakeTab({
            Name = gamename,
            Icon = "rbxassetid://7733675275",
            PremiumOnly = false
        })
        addscript(GameChecker, "Tiger Admin (✨, ✅)", function()
            loadstring(game:HttpGet("https://github.com/H17S32/Tiger_Admin/blob/main/TigeradminREVAMP.txt?raw=true"))()
        end)
        addscript(GameChecker, "Septex Admin (✨, ✅)", function()
            loadstring(game:HttpGet(('https://raw.githubusercontent.com/XTheMasterX/Scripts/Main/PrisonLife'), true))()
        end)
    elseif game.PlaceId == 2753915549 then
        local gamename = game.name
        local GameChecker = Window:MakeTab({
            Name = gamename,
            Icon = "rbxassetid://7733675275",
            PremiumOnly = false
        })

        addscript(GameChecker, "HoHo Hub (✨, ✅)", function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI"))()
        end)

        addscript(GameChecker, "Speed X Hub (✨, ✅)", function()
            loadstring(game:HttpGetAsync(
                "https://raw.githubusercontent.com/ahmadsgamer2/Script--Game/main/Script%20Game"))()
        end)

        addscript(GameChecker, "Mas scripts (De Furky) (✨, ✅)", function()
            loadstring(game:HttpGet("https://github.com/UltraStuff/scripts2/blob/main/bf?raw=true"))()
        end)
    elseif game.PlaceId == 4442272183 then
        local gamename = game.name
        local GameChecker = Window:MakeTab({
            Name = gamename,
            Icon = "rbxassetid://7733675275",
            PremiumOnly = false
        })

        addscript(GameChecker, "HoHo Hub (✨, ✅)", function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI"))()
        end)

        addscript(GameChecker, "Speed X Hub (✨, ✅)", function()
            loadstring(game:HttpGetAsync(
                "https://raw.githubusercontent.com/ahmadsgamer2/Script--Game/main/Script%20Game"))()
        end)

        addscript(GameChecker, "Mas scripts (De Furky) (✨, ✅)", function()
            loadstring(game:HttpGet("https://github.com/UltraStuff/scripts2/blob/main/bf?raw=true"))()
        end)
    elseif game.PlaceId == 7449423635 then
        local gamename = game.name
        local GameChecker = Window:MakeTab({
            Name = gamename,
            Icon = "rbxassetid://7733675275",
            PremiumOnly = false
        })

        addscript(GameChecker, "HoHo Hub (✨, ✅)", function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI"))()
        end)

        addscript(GameChecker, "Speed X Hub (✨, ✅)", function()
            loadstring(game:HttpGetAsync(
                "https://raw.githubusercontent.com/ahmadsgamer2/Script--Game/main/Script%20Game"))()
        end)

        addscript(GameChecker, "Mas scripts (De Furky) (✨, ✅)", function()
            loadstring(game:HttpGet("https://github.com/UltraStuff/scripts2/blob/main/bf?raw=true"))()
        end)
    else
        addnotify("FindScripts", "Juego no encontrado usa los scripts Universales.", "6034227139", 5)
    end
end

checkgame()

addTexting()

OrionLib:init()
