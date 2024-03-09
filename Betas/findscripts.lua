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
        print(Value)
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

local githubLink = "https://github.com/outrozl/project/blob/main/master/universalsscripts.json?raw=true"
local function fetchScriptsUniversals()
    local success, response = pcall(game.HttpGet, game, githubLink)
    if success then
        local scriptsData = HttpService:JSONDecode(response)
        for _, scriptData in pairs(scriptsData) do
            Tab2:AddButton({
                Name = scriptData.name,
                Callback = function()
                    loadstring(game:HttpGet(scriptData.raw))()
                end
            })
        end
    else
        OrionLib:MakeNotification({
            Name = "Error",
            Content = "Failed to fetch scripts from GitHub",
            Time = 5
        })
    end
end

fetchScriptsUniversals()
