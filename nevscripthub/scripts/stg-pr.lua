local Mercury = loadstring(game:HttpGet("https://raw.githubusercontent.com/deeeity/mercury-lib/master/src.lua"))()
local NevVer = loadstring(game:HttpGet(""))()

local GUI = Mercury:Create{
    Nome = "Nev | STG | "..NevVer,
    Tamanho = UDim2.fromOffset(600, 400),
    Tema = Mercury.Temas.Escuro,
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
    Nome = "Scripts",
    Icone = "rbxassetid://7733749837"
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
                    Título = "Nev | Hub de Scripts",
                    Texto = "Houve um erro ao carregar o script: " .. resultado .. ".",
                    Icone = "rbxassetid://7734053281"
                })
            end
        end
    }
end

GUI:Crédito{
    Nome = "Nev",
    Descrição = "Pesquisador, Código, Eu não tenho V3rm",
    V3rm = nil,
    Discord = "https://discord.gg/GXYytRX6H3"
}

GUI:Notificação{
    Título = "Nev | Hub de Scripts",
    Texto = "Script carregado com sucesso, versão: " ..NevVer,
    Duração = 3,
    Callback = function() end
}

GUI:Prompt{
    Seguimento = false,
    Título = "Nev | Hub de Scripts",
    Texto = "Quer entrar no nosso servidor do Discord?",
    Botões = {
        ok = function()
            setclipboard("https://discord.gg/GXYytRX6H3")
            GUI:Notificação{
                Título = "Nev | Hub de Scripts",
                Texto = "O link do servidor do Discord foi copiado para a sua área de transferência.",
                Duração = 3,
                Callback = function() end
            }
            return true
        end,
        não = function()
            return false
        end
    }
}
