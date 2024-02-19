local Mercury = loadstring(game:HttpGet("https://raw.githubusercontent.com/deeeity/mercury-lib/master/src.lua"))()
local NevVer = "Beta 1.0.0"

local GUI = Mercury:Create{
    Name = "Nev | BF | "..NevVer,
    Size = UDim2.fromOffset(600, 400),
    Theme = Mercury.Themes.Dark,
    Link = "https://github.com/outrozl/project/blob/main/nevscripthub/scripts/bf"
}

local best = {
    [""] = { URL = "", Method = 1 },
    [""] = { URL = "", Method = 1 },
    [""] = { URL = "", Method = 1 },
    [""] = { URL = "", Method = 1 },
    [""] = { URL = "", Method = 1 },
    [""] = { URL = "", Method = 1 },
    [""] = { URL = "", Method = 1 },
    [""] = { URL = "", Method = 1 },
    [""] = { URL = "", Method = 1 },
    [""] = { URL = "", Method = 1 },
    [""] = { URL = "", Method = 1 },
    [""] = { URL = "", Method = 1 },
    [""] = { URL = "", Method = 1 },
    [""] = { URL = "", Method = 1 },
    [""] = { URL = "", Method = 1 },
    [""] = { URL = "", Method = 1 },
    [""] = { URL = "", Method = 1 },
    [""] = { URL = "", Method = 1 },
    [""] = { URL = "", Method = 1 },
    [""] = { URL = "", Method = 1 },
    [""] = { URL = "", Method = 1 },
    [""] = { URL = "", Method = 1 },
    [""] = { URL = "", Method = 1 },
    [""] = { URL = "", Method = 1 },
    [""] = { URL = "", Method = 1 },
    [""] = { URL = "", Method = 1 },
    [""] = { URL = "", Method = 1 },
    [""] = { URL = "", Method = 1 },
    [""] = { URL = "", Method = 1 },
    [""] = { URL = "", Method = 1 },
    [""] = { URL = "", Method = 1 },
    [""] = { URL = "", Method = 1 },
    [""] = { URL = "", Method = 1 },
    [""] = { URL = "", Method = 1 },
    [""] = { URL = "", Method = 1 },
    [""] = { URL = "", Method = 1 },
    [""] = { URL = "", Method = 1 },
    [""] = { URL = "", Method = 1 },
    [""] = { URL = "", Method = 1 },
    [""] = { URL = "", Method = 1 },
    [""] = { URL = "", Method = 1 },
    [""] = { URL = "", Method = 1 },
    [""] = { URL = "", Method = 1 },
}

local mobile = {
    [""] = { URL = "", Method = 1 },
    [""] = { URL = "", Method = 1 },
    [""] = { URL = "", Method = 1 },
    [""] = { URL = "", Method = 1 },
    [""] = { URL = "", Method = 1 },
    [""] = { URL = "", Method = 1 },
    [""] = { URL = "", Method = 1 },
    [""] = { URL = "", Method = 1 },
    [""] = { URL = "", Method = 1 },
    [""] = { URL = "", Method = 1 },
    [""] = { URL = "", Method = 1 },
    [""] = { URL = "", Method = 1 },
}

local utilitys = {
    [""] = { URL = "", Method = 1 },
    [""] = { URL = "", Method = 1 },
}

local other = {
    [""] = { URL = "", Method = 1 },
    [""] = { URL = "", Method = 1 },
    [""] = { URL = "", Method = 1 },
    [""] = { URL = "", Method = 1 },
    [""] = { URL = "", Method = 1 },
    [""] = { URL = "", Method = 1 },
    [""] = { URL = "", Method = 1 },
    [""] = { URL = "", Method = 1 },
    [""] = { URL = "", Method = 1 },
    [""] = { URL = "", Method = 1 },
    [""] = { URL = "", Method = 1 },
    [""] = { URL = "", Method = 1 },
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

local BestTab = GUI:Tab{
	Name = "Best Scripts",
	Icon = "rbxassetid://7733749837"
}

local MobileTab = GUI:Tab{
	Name = "Mobile Scripts",
	Icon = "rbxassetid://6034989549"
}

local UtilitysTab = GUI:Tab{
    Name = "Utility Scripts",
    Icon = "rbxassetid://7733752575"
}

local OtherTab = GUI:Tab{
    Name = "Other",
    Icon = "rbxassetid://7733924046"
}

-- Función para ordenar alfabéticamente los scripts
local function alphabeticalOrder(a, b)
    -- Si la primera letra de 'a' es un número y la primera letra de 'b' no lo es, se elige la segunda letra de 'a'
    if tonumber(string.sub(a, 1, 1)) and not tonumber(string.sub(b, 1, 1)) then
        return string.sub(a, 2, 2):lower() < string.sub(b, 1, 1):lower()
    -- Si la primera letra de 'b' es un número y la primera letra de 'a' no lo es, se elige la primera letra de 'a'
    elseif tonumber(string.sub(b, 1, 1)) and not tonumber(string.sub(a, 1, 1)) then
        return string.sub(a, 1, 1):lower() < string.sub(b, 2, 2):lower()
    -- En otros casos, se compara normalmente la primera letra de cada nombre
    else
        return string.sub(a, 1, 1):lower() < string.sub(b, 1, 1):lower()
    end
end

for _, scriptName in ipairs(sortedScriptNames) do
    local scriptData = best[scriptName]
    BestTab:Button{
        Name = scriptName,
        Description = nil,
        Callback = function()
            local success, result = pcall(function()
                local loadFunction = selectMethod(scriptData.Method)
                return loadstring(loadFunction(scriptData.URL))()
            end)
            if not success then
                warn("There was an error loading the script:", result)
                game:GetService("StarterGui"):SetCore("SendNotification", {
                    Title = "Nev | Script Hub",
                    Text = "There was an error loading the script: " .. result .. ".",
                    Icon = "rbxassetid://7734053281"
                })
            end
        }
    }
end

-- Sorted list of script names
local sortedScriptNames = {}
for scriptName, _ in pairs(mobile) do
    table.insert(sortedScriptNames, scriptName)
end
table.sort(sortedScriptNames, alphabeticalOrder)

-- Add buttons for each stored script, in alphabetical order
for _, scriptName in ipairs(sortedScriptNames) do
    local scriptData = mobile[scriptName]
    MobileTab:Button{
        Name = scriptName,
        Description = nil,
        Callback = function()
            local success, result = pcall(function()
                local loadFunction = selectMethod(scriptData.Method)
                return loadstring(loadFunction(scriptData.URL))()
            end)
            if not success then
                warn("There was an error loading the script:", result)
                game:GetService("StarterGui"):SetCore("SendNotification", {
                    Title = "Nev | Script Hub",
                    Text = "There was an error loading the script: " .. result .. ".",
                    Icon = "rbxassetid://7734053281"
                })
            end
        }
    }
end

local sortedScriptNames = {}
for scriptName, _ in pairs(utilitys) do
    table.insert(sortedScriptNames, scriptName)
end
table.sort(sortedScriptNames, alphabeticalOrder)

for _, scriptName in ipairs(sortedScriptNames) do
    local scriptData = utilitys[scriptName]
    UtilitysTab:Button{
        Name = scriptName,
        Description = nil,
        Callback = function()
            local success, result = pcall(function()
                local loadFunction = selectMethod(scriptData.Method)
                return loadstring(loadFunction(scriptData.URL))()
            end)
            if not success then
                warn("There was an error loading the script:", result)
                game:GetService("StarterGui"):SetCore("SendNotification", {
                    Title = "Nev | Script Hub",
                    Text = "There was an error loading the script: " .. result .. ".",
                    Icon = "rbxassetid://7734053281"
                })
            end
        }
    }
end

-- Lista ordenada de nombres de scripts
local sortedScriptNames = {}
for scriptName, _ in pairs(other) do
    table.insert(sortedScriptNames, scriptName)
end
table.sort(sortedScriptNames, alphabeticalOrder)

-- Agregar botones para cada script almacenado, en orden alfabético
for _, scriptName in ipairs(sortedScriptNames) do
    local scriptData = other[scriptName]
    OtherTab:Button{
        Name = scriptName,
        Description = nil,
        Callback = function() 
            local success, result = pcall(function()
                local loadFunction = selectMethod(scriptData.Method)
                return loadstring(loadFunction(scriptData.URL))()
            end)
            if not success then
                warn("There was an error loading the script:", result)
                game:GetService("StarterGui"):SetCore("SendNotification", {
                    Title = "Nev | Script Hub",
                    Text = "There was an error loading the script: " .. result .. ".",
                    Icon = "rbxassetid://7734053281"
                })
            end
        end
    }
end

GUI:Credit{
    Name = "Nev",
    Description = "Searcher, Code, I don't have V3rm",
    V3rm = nil,
    Discord = "https://discord.gg/GXYytRX6H3"
}


GUI:Notification{
	Title = "Nev | Script Hub",
	Text = "Script Loaded Successfully",
	Duration = 3,
	Callback = function() end
}
