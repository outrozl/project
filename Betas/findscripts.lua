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
    Name = "Scripts",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local Section = Tab:AddSection({
    Name = "Loader (Use the real name of the script to load)"
})

Tab:AddTextbox({
    Name = "Loader: (Only Names)",
    Default = "",
    TextDisappear = false,
    Callback = function(Value)
        for name, callback in pairs(scripts) do
            if name == Value then
                callback() -- Execute the script
                addnotify("Script Loaded", name .. " script executed successfully", "7733710700", 5)
                return     -- Exit the loop after a match is found
            end
        end
        addnotify("Script Not Found", "The script you entered does not exist", "6031071053", 5)
    end
})

local Section2 = Tab:AddSection({
    Name = "Loadstring Loader (Use a raw to load the script)"
})

Tab:AddTextbox({
    Name = "Loader: (Only RAWS)",
    Default = "",
    TextDisappear = false,
    Callback = function(Value)
        loadstring(game:HttpGet('' .. Value .. ''))()
    end
})

local Section3 = Tab2:AddSection({
    Name = "Universals scripts"
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

addscript(Tab2, "Infinite yield", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/NevStudios/NevStudios/main/NevStudios.lua"))()
end)
