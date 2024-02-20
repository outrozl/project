local Mercury = loadstring(game:HttpGet("https://raw.githubusercontent.com/deeeity/mercury-lib/master/src.lua"))()
local universalver = loadstring(game:HttpGet("https://github.com/outrozl/project/blob/main/nevscripthub/scripts/tools/version.lua?raw=true"))()
local NevVer = ""

local GUI = Mercury:Create{
    Name = "Nev | STG | "..NevVer,
    Size = UDim2.fromOffset(600, 400),
    Theme = Mercury.Themes.Dark,
    Link = "https://github.com/outrozl/project/blob/main/nevscripthub/scripts/stg"
}

local melhores = {
    ["Light Tux"] = { URL = "https://raw.githubusercontent.com/Scripterbacon/TSBobfuscator/main/Main.Lua", Método = 1 },
    ["GUI 2"] = { URL = "https://raw.githubusercontent.com/LOLking123456/Strongest/main/Battlegrounds77", Método = 1 },
    ["GUI 3"] = { URL = "https://raw.githubusercontent.com/Nicuse/RobloxScripts/main/SaitamaBattlegrounds.lua", Método = 1 },
}

-- Funções

local function selecionarMétodo(método, usarRaw)
    if método == 1 then
        return usarRaw e game.HttpGet or function(url) return game:HttpGet(url) end
    elseif método == 2 then
        return usarRaw e game.HttpGetAsync or function(url) return game:HttpGetAsync(url) end
    elseif método == 3 then
        return usarRaw e loadstring(game:HttpGet(url, true)) or function(url) return loadstring(game:HttpGet(url, true))() end
    end
end

local MelhorTab = GUI:Tab{
    Name = "Scripts",
    Icon = "rbxassetid://7733749837"
}

-- Função para ordenar alfabeticamente os scripts
local function ordemAlfabética(a, b)
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
local nomesScriptsOrdenados = {}
for nomeScript, _ in pairs(melhores) do
    table.insert(nomesScriptsOrdenados, nomeScript)
end
table.sort(nomesScriptsOrdenados, ordemAlfabética)

-- Adicionar botões para cada script armazenado, em ordem alfabética
for _, nomeScript in ipairs(nomesScriptsOrdenados) do
    local dadosScript = melhores[nomeScript]
    MelhorTab:Button{
        Nome = nomeScript,
        Descrição = nil,
        Callback = function() 
            local sucesso, resultado = pcall(function()
                local funçãoCarga = selecionarMétodo(dadosScript.Método)
                return loadstring(funcçãoCarga(dadosScript.URL))()
            end)
            if not sucesso then
                warn("Houve um erro ao carregar o script: ", resultado)
                game:GetService("StarterGui"):SetCore("SendNotification",{
                    Title = "Nev | Hub de Scripts",
                    Text = "Houve um erro ao carregar o script: " .. resultado .. ".",
                    Icon = "rbxassetid://7734053281"
                })
            end
        end
    }
end

GUI:Credits{
    Name = "Nev",
    Description = "Pesquisador, Código, Eu não tenho V3rm",
    V3rm = nil,
    Discord = "https://discord.gg/GXYytRX6H3"
}

GUI:Notification{
    Title = "Nev | Hub de Scripts",
    Texto = "Script carregado com sucesso, versão: " ..NevVer,
    Duration = 3,
    Callback = function() end
}

GUI:Prompt{
    Followup = false,
    Title = "Nev | Hub de Scripts",
    Text = "Quer entrar no nosso servidor do Discord?",
    Buttons = {
        ok = function()
            setclipboard("https://discord.gg/GXYytRX6H3")
            GUI:Notificação{
                Title = "Nev | Hub de Scripts",
                Text = "O link do servidor do Discord foi copiado para a sua área de transferência.",
                Duration = 3,
                Callback = function() end
            }
            return true
        end,
        não = function()
            return false
        end
    }
}
