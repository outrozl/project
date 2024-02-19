local Mercury = loadstring(game:HttpGet("https://raw.githubusercontent.com/deeeity/mercury-lib/master/src.lua"))()
local NevVer = "1.0.0"

local GUI = Mercury:Create{
    Name = "Nev | BF | "..NevVer,
    Size = UDim2.fromOffset(600, 400),
    Theme = Mercury.Themes.Dark,
    Link = "https://github.com/outrozl/project/blob/main/nevscripthub/scripts/bf"
}

local best = {
    ["Hoho Hub V3"] = { URL = "https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI", Method = 1 },
    ["Hoho Hub V2"] = { URL = "https://raw.githubusercontent.com/acsu123/HohoV2/main/OldScriptLoad", Method = 1 },
    ["Uranium X Hub"] = { URL = "https://raw.githubusercontent.com/Augustzyzx/UraniumMobile/main/UraniumKak.lua", Method = 1 },
    ["CFrame Hub"] = { URL = "https://raw.githubusercontent.com/CFrame3310/CFrameHub/main/BloxFruitV2.lua", Method = 1 },
    ["Neva Hub"] = { URL = "https://raw.githubusercontent.com/VEZ2/NEVAHUB/main/2'", Method = 1 },
    ["Makima Hub"] = { URL = "https://raw.githubusercontent.com/Piwwy0909/MakimaRemake/main/Cumback.Makima", Method = 1 },
    ["Sonic Hub"] = { URL = "https://raw.githubusercontent.com/NickelHUBB/SonicTuru/main/Protected-25.lua", Method = 1 },
    ["Zee Hub"] = { URL = "https://zKuzy.link/ZeeHub.lua", Method = 1 },
    ["Madox Hub"] = { URL = "https://raw.githubusercontent.com/Fiend1sh/FiendMain/main/MadoxHubKey", Method = 1 },
    ["2x Hub"] = { URL = "https://raw.githubusercontent.com/armch063/BF-1XLIIHUB-V3/main/README.md", Method = 1 },
    ["Unique Hub"] = { URL = "https://raw.githubusercontent.com/AkiraNus/UniquehubKak/main/FreeCr.Xenonhub", Method = 1 },
    ["Chiba Hub"] = { URL = "https://raw.githubusercontent.com/KindIhave/ChibaHubcomeback/main/Chibacomebackbeta.txt", Method = 1 },
    ["Zaque Hub"] = { URL = "https://raw.githubusercontent.com/Mei2232/ZaqueHub/main/Zaque%20Hub", Method = 1 },
    ["Glord Hub"] = { URL = "https://raw.githubusercontent.com/GGhostVN/GhostLord/main/BF", Method = 1 },
    ["Blck Hub"] = { URL = "https://raw.githubusercontent.com/1f0yt/community/main/BLCK", Method = 1 },
    ["Loli Hub"] = { URL = "https://raw.githubusercontent.com/1f0yt/community/main/neon", Method = 1 },
    ["Alucard Hub"] = { URL = "https://raw.githubusercontent.com/JJTChannel/Alucard_hub/main/main.lua", Method = 1 },
    ["Mukuru Hub"] = { URL = "https://raw.githubusercontent.com/xQuartyx/DonateMe/main/ScriptLoader", Method = 1 },
    ["Zen Hub"] = { URL = "https://raw.githubusercontent.com/Kaizenofficiall/ZenHub/main/Loader", Method = 1 },
    ["Ripper Hub"] = { URL = "https://raw.githubusercontent.com/xDestinyx/RipperHub/main/Loader.lua", Method = 1 },
    ["Ren Hub"] = { URL = "https://raw.githubusercontent.com/UltraStuff/scripts2/main/ren", Method = 1 },
    ["Void Hub"] = { URL = "https://raw.githubusercontent.com/Efe0626/VoidHub/main/Script", Method = 1 },
    ["BlackTrap Gui"] = { URL = "https://gitlab.com/Sky2836/test/-/raw/main/Script_All_In-One", Method = 1 },
    ["More Scripts Soon!!"] = { URL = "", Method = 1 },
}

local mobile = {
    ["Destiny Hub"] = { URL = "https://raw.githubusercontent.com/KudoCon/DestinyHub/main/DestinyKey", Method = 1 },
    ["Atomic Hub"] = { URL = "https://raw.githubusercontent.com/ArceusXHub/atomic-hub/main/atomic-hub.lua", Method = 1 },
    ["Zamex Hub"] = { URL = "https://raw.githubusercontent.com/Sixnumz/ZamexMobile/main/Zamex_Mobile.lua", Method = 1 },
    ["Saki Hub"] = { URL = "https://sharetext.me/raw/u3if6m3hgr", Method = 1 },
    ["Speed Hub X"] = { URL = "https://raw.githubusercontent.com/ahmadsgamer2/Script--Game/main/Script%20Game", Method = 1 },
    ["Uranium X Hub"] = { URL = "https://raw.githubusercontent.com/Augustzyzx/UraniumMobile/main/UraniumKak.lua", Method = 1 },
    ["CFrame Hub"] = { URL = "https://raw.githubusercontent.com/CFrame3310/CFrameHub/main/BloxFruit_Mobile.lua", Method = 1 },
    ["More Scripts Soon!!"] = { URL = "", Method = 1 },
}

local utilitys = {
    ["Fruit Finder and hopper"] = { URL = "https://raw.githubusercontent.com/NickelHUBB/SonicTuru/main/BetaFruitFinder", Method = 1 },
    ["Chest Farm and hopper"] = { URL = "https://raw.githubusercontent.com/NickelHUBB/SonicTuru/main/ChestFarmOp", Method = 1 },
}

local other = {
    ["Shadow Hub"] = { URL = "https://raw.githubusercontent.com/xPeachy/ShadowHub/main/BF", Method = 1 },
    ["Playback X Hub"] = { URL = "https://raw.githubusercontent.com/NeaPchX2/Playback-X-HUB/main/Protected.lua.txt", Method = 1 },
    ["Flare Hub"] = { URL = "https://raw.githubusercontent.com/1f0yt/community/master/flares", Method = 1 },
    ["More Scripts Soon!!"] = { URL = "", Method = 1 },
}

local BestTab = GUI:Tab{
    Name = "Melhores Scripts",
    Icon = "rbxassetid://7733749837"
}

local MobileTab = GUI:Tab{
    Name = "Scripts para Dispositivos Móveis",
    Icon = "rbxassetid://6034989549"
}

local UtilitysTab = GUI:Tab{
    Name = "Scripts de Utilidade",
    Icon = "rbxassetid://7733752575"
}

local OtherTab = GUI:Tab{
    Name = "Outros",
    Icon = "rbxassetid://7733924046"
}

-- Função para ordenar alfabeticamente os scripts
local function alphabeticalOrder(a, b)
    -- Se a primeira letra de 'a' for um número e a primeira letra de 'b' não for, escolha a segunda letra de 'a'
    if tonumber(string.sub(a, 1, 1)) and not tonumber(string.sub(b, 1, 1)) then
        return string.sub(a, 2, 2):lower() < string.sub(b, 1, 1):lower()
    -- Se a primeira letra de 'b' for um número e a primeira letra de 'a' não for, escolha a primeira letra de 'a'
    elseif tonumber(string.sub(b, 1, 1)) and not tonumber(string.sub(a, 1, 1)) then
        return string.sub(a, 1, 1):lower() < string.sub(b, 2, 2):lower()
    -- Em outros casos, compare normalmente a primeira letra de cada nome
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

-- Adicionar botões para cada script armazenado, em ordem alfabética
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
                    Title = "Nev | Script Hub",
                    Text = "Houve um erro ao carregar o script: " .. result .. ".",
                    Icon = "rbxassetid://7734053281"
                })
            end
        end
    }
end

-- Lista ordenada de nomes de scripts
local sortedScriptNames = {}
for scriptName, _ in pairs(mobile) do
    table.insert(sortedScriptNames, scriptName)
end
table.sort(sortedScriptNames, alphabeticalOrder)

-- Adicionar botões para cada script armazenado, em ordem alfabética
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
                warn("Houve um erro ao carregar o script: ", result)
                game:GetService("StarterGui"):SetCore("SendNotification",{
                    Title = "Nev | Script Hub",
                    Text = "Houve um erro ao carregar o script: " .. result .. ".",
                    Icon = "rbxassetid://7734053281"
                })
            end
        end
    }
end

-- Créditos
GUI:Credit{
    Name = "Nev",
    Description = "Pesquisador, Código, Não tenho V3rm",
    V3rm = nil,
    Discord = "https://discord.gg/GXYytRX6H3"
}

-- Notificação de carga bem-sucedida do script
GUI:Notification{
    Title = "Nev | Script Hub",
    Text = "Script carregado com sucesso, versão: " ..NevVer,
    Duration = 3,
    Callback = function() end
}

-- Prompt para entrar no servidor do Discord
GUI:Prompt{
    Followup = false,
    Title = "Nev | Script Hub",
    Text = "Quer entrar no nosso servidor do Discord?",
    Buttons = {
        ok = function()
            setclipboard("https://discord.gg/GXYytRX6H3")
            GUI:Notification{
                Title = "Nev | Script Hub",
                Text = "O link do servidor do Discord foi copiado para a sua área de transferência.",
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
