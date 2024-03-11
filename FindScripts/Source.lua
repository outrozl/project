local OrionLib = loadstring(game:HttpGet(('https://github.com/outrozl/UI/blob/main/OrionEdited.lua?raw=true')))()
local Window = OrionLib:MakeWindow({
    Name = "FindScripts",
    HidePremium = false,
    SaveConfig = false,
    IntroEnabled = true,
    IntroText = "By just_nev_dev",
    IntroIcon = "rbxassetid://6034227139",
    ConfigFolder = "NevStudiosConfig"
})

local JVer = "v1.1.0"

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

local HelpTab = Window:MakeTab({
    Name = "Ayuda",
    Icon = "rbxassetid://7733765398",
    PremiumOnly = false
})

local ServerTab = Window:MakeTab({
    Name = "Estadisticas",
    Icon = "rbxassetid://7733749837",
    PremiumOnly = false
})

local Tab = Window:MakeTab({
    Name = "Loader",
    Icon = "rbxassetid://6034227139",
    PremiumOnly = false
})

local scriptsbynev = Window:MakeTab({
    Name = "Scripts de Nev",
    Icon = "rbxassetid://6034227139",
    PremiumOnly = false
})

local Tab2 = Window:MakeTab({
    Name = "Universales",
    Icon = "rbxassetid://7733920768",
    PremiumOnly = false
})

local Sectiondw = Tab:AddSection({
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
                addnotify("FindScripts", name .. " script ejecutado con exito (Gracias por usar FindScripts)",
                    "6034227139", 5)
            else
                addnotify("FindScripts", "Error al ejecutar " .. name .. ": " .. errorMsg, "6031071053", 5)
            end
        end
    })
end

function getNumberOfPlayers()
    local players = game:GetService("Players")
    local playerCount = 0
    for _, player in pairs(players:GetPlayers()) do
        -- Check if player is not the local player and not a descendant of it
        if player ~= game.Players.LocalPlayer and not player:IsDescendantOf(game.Players.LocalPlayer) then
            playerCount = playerCount + 1
        end
    end
    return playerCount
end

local playerCount = getNumberOfPlayers()

local function addtext(TabToUse, Name, Content)
    TabToUse:AddParagraph(Name, Content)
end

local bb = game:GetService("VirtualUser")

local function toggleAntiAFK(enabled)
    if enabled then
        local afkConnection = game:GetService('Players').LocalPlayer.Idled:connect(function()
            showAntiAFKMessage()
            bb:CaptureController()
            bb:ClickButton2(Vector2.new())
            print("Anti AFK activado.")
        end)
        addnotify("Anti AFK", "Anti AFK ha sido activado.", "7733710700", 4)
    else
        if afkConnection then          -- Check if connection exists
            afkConnection:Disconnect() -- Disconnect the saved connection
            print("Anti AFK desactivado.")
        end
        addnotify("Anti AFK", "Anti AFK ha sido desactivado.", "7733710700", 4)
    end
end

local function addToggler(TabToUse, name, normal, CanSave, callbacktotoggle)
    TabToUse:AddToggle({
        Name = name,
        Default = normal,
        Save = CanSave,
        Callback = callbacktotoggle
    })
end

local SerStats = ServerTab:AddSection({
    Name = "Servidor"
})

addtext(SerStats, "Servidor", "Jugadores: " .. playerCount)

addscript(scriptsbynev, "FindScripts (👑)", function()
    loadstring(game:HttpGet("https://github.com/outrozl/project/blob/main/FindScripts/Source.lua"))()
end)

addscript(scriptsbynev, "Ejecutador de scripts para pc (👑)", function()
    addnotify("Nev Internal Executer", "En desarrollo....", "6034227139", 5)
end)

addtext(scriptsbynev, "Ejecutador de scripts para pc",
    "Este script lo hice para que las personas que deceen recordar los exploits de pc en un emulador de android lo puedan hacer.")

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

addscript(Tab2, "Optimizador (✅)", function()
    loadstring(game:HttpGet("https://github.com/outrozl/project/blob/main/FindScripts/alert_optimizer.lua?raw=true"))()
end)

addToggler(Tab2, "Anti AFK (👑)", false, false, toggleAntiAFK)

addtext(HelpTab, "FindScripts",
    "Totalmente hecho por just_nev_dev \n La interfaz de Find Scripts es de OrionLib creada por shlexware")
addtext(HelpTab, "Referencias",
    "🤚 Mensión honorable \n 👑 Hecho por just_nev_dev \n ✅ just_nev_dev ha usado este script \n ✨ De los mejores scripts \n 🅱️ es para referirse alas Betas \n 📑 es para referirse alas Snapshot")
addtext(HelpTab, "GameChecker",
    "Juegos Actuales \n Blox Fruits \n Prison life \n Legends of speed \n Blade Ball \n My Restaurant \n Saitama battlegrounds (No duelos aprende a jugar sin script XD)")
addtext(HelpTab, "Changelogs",
    "Cambios \n Se actualizo el GameChecker \n Se añadio un antiafk \n Version actual: " ..
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
    "¡Tu potencial es tan ilimitado como el cielo!",
    "¡Tu determinación es tan admirable como una montaña inamovible!",
    "¡Tu espíritu aventurero es tan emocionante como un viaje a lo desconocido!",
    "¡Tu mente abierta es tan refrescante como una brisa de aire fresco!",
    "¡Tu capacidad de adaptación es tan inspiradora como un árbol que se dobla con el viento!",
    "¡Tu fuerza interior es tan poderosa como una ola gigante!",
    "¡Tu pasión por la vida es tan contagiosa como una sonrisa!",
    "¡Tu capacidad para superar obstáculos es tan admirable como un halcón que surca los cielos!",
    "¡Tu optimismo es tan radiante como el sol!",
    "¡Tu capacidad para inspirar a otros es tan poderosa como un faro en la noche!",
    "¡Eres tan divertido como un meme que nunca pasa de moda!",
    "¡Tus chistes son tan buenos como una pizza caliente!",
    "¡Tu risa es tan contagiosa como un ataque de hipo!",
    "¡Tu sentido del humor es tan único como una huella digital!",
    "¡Tu capacidad para hacer reír a la gente es tan admirable como un comediante profesional!",
    "¡Eres capaz de lograr cualquier cosa que te propongas!",
    "¡Confía en ti mismo, eres increíble!",
    "¡El mundo necesita más personas como tú!",
    "¡Eres una persona valiosa y mereces ser feliz!",
    "¡No tengas miedo de ser tú mismo, el mundo te necesita!",
    "¡Tu valentía es tan inspiradora como un león que enfrenta a una tormenta!",
    "¡Tu capacidad para afrontar los desafíos es tan admirable como un roble que resiste el viento!",
    "¡Tu resistencia es tan notable como un diamante que resiste el paso del tiempo!",
    "¡Tu sabiduría es tan invaluable como un tesoro escondido!",
    "¡Tu coraje es tan contagioso como un incendio que se propaga!",
    "¡Tu capacidad para soñar en grande es tan admirable como un águila que vuela alto!",
    "¡Tu mente abierta es tan refrescante como una ráfaga de aire fresco en un día caluroso!",
    "¡Tu capacidad para aprender y crecer es tan inspiradora como una flor que florece!",
    "¡Tu perspicacia es tan aguda como un halcón que observa a su presa!",
    "¡Tu capacidad para conectar con los demás es tan admirable como un puente que une dos mundos!",
    "¡Tus expresiones faciales son tan divertidas como una caricatura!",
    "¡Tu torpeza es tan adorable como un cachorro!",
    "¡Tu capacidad para reírte de ti mismo es tan admirable como un comediante profesional!",
    "¡Tus comentarios sarcásticos son tan ingeniosos como un comediante!",
    "¡Tu capacidad para hacer bromas a los demás es tan contagiosa como una risa!",
    "¡Eres único y especial a tu manera!",
    "¡El mundo es un lugar mejor porque estás aquí!",
    "¡Tienes el poder de cambiar el mundo!",
    "¡No tengas miedo de ser tú mismo, el mundo te necesita!",
    "¡Cree en ti mismo, eres capaz de lograr grandes cosas!",
    "¡La vida es un viaje, disfrútalo al máximo!",
    "¡Cada día es una nueva oportunidad para aprender y crecer!",
    "¡No te dejes llevar por las dificultades, enfócate en lo positivo!",
    "¡Rodéate de personas que te hagan feliz y te inspiren!",
    "¡Sé agradecido por lo que tienes, hay muchas personas que tienen menos!",
    "¡No tengas miedo de tomar riesgos!",
    "¡Sigue tus sueños!",
    "¡Lucha por lo que crees!",
    "¡Cree en ti mismo, eres capaz de lograr grandes cosas!",
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
        local GameChecker = Window:MakeTab({
            Name = "Prison Life",
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
        local GameChecker = Window:MakeTab({
            Name = "Blox Fruits",
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
        local GameChecker = Window:MakeTab({
            Name = "Blox Fruits",
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
        local GameChecker = Window:MakeTab({
            Name = "Blox Fruits",
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
    elseif game.PlaceId == 13772394625 then
        local GameChecker = Window:MakeTab({
            Name = "Blade Ball",
            Icon = "rbxassetid://7733675275",
            PremiumOnly = false
        })

        addscript(GameChecker, "NO HAX V3", function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/r4mpage4/NoHaxV3/main/BladeBallNoHax%20V3"))();
        end)

        addscript(GameChecker, "Alchemy Hub (✨, ✅)", function()
            v = 1; loadstring(game:HttpGet("https://alchemyhub.xyz/v2"))()
        end)
    elseif game.PlaceId == 3101667897 then
        local GameChecker = Window:MakeTab({
            Name = "LoS",
            Icon = "rbxassetid://7733675275",
            PremiumOnly = false
        })

        addscript(GameChecker, "Speed X Hub (✨, ✅)", function()
            loadstring(game:HttpGetAsync(
                "https://raw.githubusercontent.com/ahmadsgamer2/Script--Game/main/Script%20Game"))()
        end)

        addscript(GameChecker, "TMR (✨)", function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/ahmadsgamer2/ahmadsgamer2/main/TMR-Hub-Los", true))()
        end)
    elseif game.PlaceId == 4490140733 then
        local GameChecker = Window:MakeTab({
            Name = "My Restaurant",
            Icon = "rbxassetid://7733675275",
            PremiumOnly = false
        })

        addscript(GameChecker, "My Restaurant script de rafa (✨, ✅)", function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Rafacasari/roblox-scripts/main/mr.lua"))()
        end)
    elseif game.PlaceId == 10449761463 then
        local GameChecker = Window:MakeTab({
            Name = "Saitama BG",
            Icon = "rbxassetid://7733675275",
            PremiumOnly = false
        })

        addscript(GameChecker, "No se encontro el nombre de esta interfaz", function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Scripterbacon/TSBobfuscator/main/Main.Lua"))()
        end)
    elseif game.PlaceId == 4616652839 then
        local GameChecker = Window:MakeTab({
            Name = "Shindo Life",
            Icon = "rbxassetid://7733675275",
            PremiumOnly = false
        })

        addscript(GameChecker, "Premier Hub", function()
            loadstring(game:HttpGet('https://raw.githubusercontent.com/TrustsenseDev/Utilities/main/Premier.lua', true))()
        end)

        addscript(GameChecker, "V.G Hub", function()
            loadstring(game:HttpGet('https://raw.githubusercontent.com/1201for/V.G-Hub/main/V.Ghub'))()
        end)

        addscript(GameChecker, "Spins infinitos", function()
            loadstring(game:HttpGet('https://raw.githubusercontent.com/Alrbuddy/Shindo/main/SpinHub'))()
        end)
    else
        addnotify("FindScripts", "Juego no encontrado usa los scripts Universales.", "6034227139", 5)
    end
end

checkgame()

addTexting()

loadstring(game:HttpGet("https://github.com/outrozl/project/blob/main/FindScripts/toggler.lua?raw=true"))()
OrionLib:init()
