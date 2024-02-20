local Mercury = loadstring(game:HttpGet("https://raw.githubusercontent.com/deeeity/mercury-lib/master/src.lua"))()
local NevVer = "1.0.0"

local GUI = Mercury:Create{
    Name = "Nev | PL | "..NevVer,
    Size = UDim2.fromOffset(600, 400),
    Theme = Mercury.Themes.Dark,
    Link = "https://github.com/outrozl/project/blob/main/nevscripthub/scripts/pl"
}

local best = {
    ["Tiger Admin (Sem chave)"] = { URL = "https://raw.githubusercontent.com/Scripterbacon/TSBobfuscator/main/Main.Lua", Method = 1 },
    ["Prison Breaker (IDK)"] = { URL = "https://github.com/outrozl/project/blob/main/nevscripthub/scripts/tools/prisonbreaker1.5.lua?raw=true", Method = 1 },
    ["Septex Admin (Com chave)"] = { URL = "https://github.com/H17S32/Tiger_Admin/blob/main/TigeradminREVAMP.txt?raw=true", Method = 3 },
}

-- Funções

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
    Name = "Scripts",
    Icon = "rbxassetid://7733749837"
}

-- Função para ordenar os scripts em ordem alfabética
local function alphabeticalOrder(a, b)
    -- Se a primeira letra de 'a' for um número e a primeira letra de 'b' não for, escolhe a segunda letra de 'a'
    if tonumber(string.sub(a, 1, 1)) and not tonumber(string.sub(b, 1, 1)) then
        return string.sub(a, 2, 2):lower() < string.sub(b, 1, 1):lower()
    -- Se a primeira letra de 'b' for um número e a primeira letra de 'a' não for, escolhe a primeira letra de 'a'
    elseif tonumber(string.sub(b, 1, 1)) and not tonumber(string.sub(a, 1, 1)) then
        return string.sub(a, 1, 1):lower() < string.sub(b, 2, 2):lower()
    -- Em outros casos, compara normalmente a primeira letra de cada nome
    else
        return string.sub(a, 1, 1):lower() < string.sub(b, 1, 1):lower()
    end
end

-- Lista ordenada de nomes de scripts
local sortedScriptNames = {}
for scriptName, _ in pairs(best) do
    table.insert(sortedScriptNames, scriptName)
end
table.sort(sortedScriptNames, alphabeticalOrder)

-- Adiciona botões para cada script armazenado, em ordem alfabética
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
                warn("Houve um erro ao carregar o script: ", result)
                game:GetService("StarterGui"):SetCore("SendNotification",{
                    Title = "Nev | Hub de Scripts",
                    Text = "Houve um erro ao carregar o script: " .. result .. ".",
                    Icon = "rbxassetid://7734053281"
                })
            end
        end
    }
end

GUI:Credit{
    Name = "Nev",
    Description = "Buscador, Código, Não tenho V3rm",
    V3rm = nil,
    Discord = "https://discord.gg/GXYytRX6H3"
}

GUI:Notification{
    Title = "Nev | Hub de Scripts",
    Text = "Script carregado com sucesso, versão: " ..NevVer,
    Duration = 3,
    Callback = function() end
}

GUI:Prompt{
    Followup = false,
    Title = "Nev | Hub de Scripts",
    Text = "Quer participar do nosso servidor do Discord?",
    Buttons = {
        ok = function()
            setclipboard("https://discord.gg/GXYytRX6H3")
            GUI:Notification{
                Title = "Nev | Hub de Scripts",
                Text = "O link do servidor do Discord foi copiado para a área de transferência.",
                Duration = 3,
                Callback = function() end
            }
            return true
        end,
        no = function()
            return false
        end
    }
}
