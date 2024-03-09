local OrionLib = loadstring(game:HttpGet(('https://github.com/outrozl/UI/blob/main/OrionEdited.lua?raw=true')))()
local Window = OrionLib:MakeWindow({
    Name = "FindScripts",
    HidePremium = false,
    SaveConfig = true,
    IntroEnabled = true,
    IntroText = "By just_nev_dev",
    IntroIcon = "rbxassetid://15269178344",
    ConfigFolder = "NevStudiosConfig"
})

local JVer = "1.0.6🅱️"

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
    Image = "rbxassetid://15269178344",
    Time = 5
})

local Tab = Window:MakeTab({
    Name = "Loader",
    Icon = "rbxassetid://15269179995",
    PremiumOnly = false
})

local HelpTab = Window:MakeTab({
    Name = "Ayuda",
    Icon = "rbxassetid://15269254897",
    PremiumOnly = false
})

local Tab2 = Window:MakeTab({
    Name = "Universales",
    Icon = "rbxassetid://15269258980",
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
    "Cambios \n Cambios en referencias \n Cambios en los iconos de las tabs \n Cambios en el logo de Nev Scripts \n Version actual: " ..
    JVer)
