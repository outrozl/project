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

local function addnotify(title, content, icon, time)
    OrionLib:MakeNotification({
        Name = title,
        Content = content,
        Image = "rbxassetid://" .. icon .. "",
        Time = time
    })
end

local scripts = {}

OrionLib:MakeNotification({
    Name = "Nev Studios",
    Content = "FindScripts Loaded",
    Image = "rbxassetid://6034227139",
    Time = 5
})

local Tab = Window:MakeTab({
    Name = "Loader",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local Tab2 = Window:MakeTab({
    Name = "Scripts Universales",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local Section = Tab:AddSection({
    Name = "Loader (Usa el nombre real para cargar el script)"
})

Tab:AddTextbox({
    Name = "Loader: (Solo nombres)",
    Default = "",
    TextDisappear = false,
    Callback = function(Value)
        for name, callback in pairs(scripts) do
            if name == Value then
                addnotify("Script cargado", name .. " script ejecutado con exito (gracias por usar FindScripts)",
                    "7733710700", 5)
                callback() -- Execute the script
                return     -- Exit the loop after a match is found
            end
        end
        addnotify("Script no encontrado (404)", "El script que buscas no existe", "6031071053", 5)
    end
})

local Section2 = Tab:AddSection({
    Name = "Loadstring Loader (Usa un link raw para cargar el script)"
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
    scripts[name] = callbacktoscript
    TabToUse:AddButton({
        Name = name,
        Callback = function()
            callbacktoscript()
        end
    })
end

addscript(Tab2, "Infinite Yield", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
end)

addscript(Tab2, "Hydroxide", function()
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

addscript(Tab2, "Fates Admin", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/fatesc/fates-admin/main/main.lua"))()
end)

addscript(Tab2, "Orca", function()
    loadstring(
        game:HttpGetAsync("https://raw.githubusercontent.com/richie0866/orca/master/public/latest.lua")
    )()
end)

addscript(Tab2, "Orca Ultima Snapshot (Esta version puede ser inestable)", function()
    loadstring(
        game:HttpGetAsync("https://raw.githubusercontent.com/richie0866/orca/master/public/snapshot.lua")
    )()
end)
