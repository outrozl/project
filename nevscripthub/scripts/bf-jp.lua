local function GetVer()
    -- Enlace que contiene solo el número de versión
    local versionURL = "https://raw.githubusercontent.com/outrozl/project/main/nevscripthub/scripts/tools/version.txt"
    
    -- Realizar una solicitud HTTP para obtener el contenido del enlace
    local response = game.HttpGet(versionURL)
    
    -- Verificar si la respuesta es válida
    if response then
        -- Extraer el número de versión del texto obtenido
        local NevVer = response:match("(%d+%.%d+%.%d+)")
        return NevVer
    else
        -- Manejar el caso en que la respuesta no sea válida
        return nil
    end
end

-- Obtener la versión
local NevVer = GetVer()

local Mercury = loadstring(game:HttpGet("https://raw.githubusercontent.com/deeeity/mercury-lib/master/src.lua"))()

local GUI = Mercury:Create{
    Name = "ネブ | BF | "..NevVer,
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
}

local mobile = {
    ["Destiny Hub"] = { URL = "https://raw.githubusercontent.com/KudoCon/DestinyHub/main/DestinyKey", Method = 1 },
    ["Atomic Hub"] = { URL = "https://raw.githubusercontent.com/ArceusXHub/atomic-hub/main/atomic-hub.lua", Method = 1 },
    ["Zamex Hub"] = { URL = "https://raw.githubusercontent.com/Sixnumz/ZamexMobile/main/Zamex_Mobile.lua", Method = 1 },
    ["Saki Hub"] = { URL = "https://sharetext.me/raw/u3if6m3hgr", Method = 1 },
    ["Speed Hub X"] = { URL = "https://raw.githubusercontent.com/ahmadsgamer2/Script--Game/main/Script%20Game", Method = 1 },
    ["Uranium X Hub"] = { URL = "https://raw.githubusercontent.com/Augustzyzx/UraniumMobile/main/UraniumKak.lua", Method = 1 },
    ["CFrame Hub"] = { URL = "https://raw.githubusercontent.com/CFrame3310/CFrameHub/main/BloxFruit_Mobile.lua", Method = 1 },
}

local utilitys = {
    ["Fruit Finder and hopper"] = { URL = "https://raw.githubusercontent.com/NickelHUBB/SonicTuru/main/BetaFruitFinder", Method = 1 },
    ["Chest Farm and hopper"] = { URL = "https://raw.githubusercontent.com/NickelHUBB/SonicTuru/main/ChestFarmOp", Method = 1 },
}

local other = {
    ["Shadow Hub"] = { URL = "https://raw.githubusercontent.com/xPeachy/ShadowHub/main/BF", Method = 1 },
    ["Playback X Hub"] = { URL = "https://raw.githubusercontent.com/NeaPchX2/Playback-X-HUB/main/Protected.lua.txt", Method = 1 },
    ["Flare Hub"] = { URL = "https://raw.githubusercontent.com/1f0yt/community/master/flares", Method = 1 },
}

local BestTab = GUI:Tab{
    Name = "ベストスクリプト",
    Icon = "rbxassetid://7733749837"
}

local MobileTab = GUI:Tab{
    Name = "モバイルスクリプト",
    Icon = "rbxassetid://6034989549"
}

local UtilitysTab = GUI:Tab{
    Name = "ユーティリティスクリプト",
    Icon = "rbxassetid://7733752575"
}

local OtherTab = GUI:Tab{
    Name = "その他",
    Icon = "rbxassetid://7733924046"
}

-- アルファベット順にスクリプトをソートするための関数
local function alphabeticalOrder(a, b)
    -- 'a'の最初の文字が数字であり、'b'の最初の文字が数字でない場合、'a'の2番目の文字を選択
    if tonumber(string.sub(a, 1, 1)) and not tonumber(string.sub(b, 1, 1)) then
        return string.sub(a, 2, 2):lower() < string.sub(b, 1, 1):lower()
    -- 'b'の最初の文字が数字であり、'a'の最初の文字が数字でない場合、'a'の最初の文字を選択
    elseif tonumber(string.sub(b, 1, 1)) and not tonumber(string.sub(a, 1, 1)) then
        return string.sub(a, 1, 1):lower() < string.sub(b, 2, 2):lower()
    -- それ以外の場合、各名前の最初の文字を比較します
    else
        return string.sub(a, 1, 1):lower() < string.sub(b, 1, 1):lower()
    end
end

-- スクリプト名のソートされたリスト
local sortedScriptNames = {}
for scriptName, _ in pairs(best) do
    table.insert(sortedScriptNames, scriptName)
end
table.sort(sortedScriptNames, alphabeticalOrder)

-- 各格納されたスクリプトのボタンをアルファベット順に追加する
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
                warn("スクリプトの読み込み中にエラーが発生しました: ", result)
                game:GetService("StarterGui"):SetCore("SendNotification",{
                    Title = "ネブ | スクリプト ハブ",
                    Text = "スクリプトの読み込み中にエラーが発生しました: " .. result .. ".",
                    Icon = "rbxassetid://7734053281"
                })
            end
        end
    }
end

-- スクリプト名のソートされたリスト
local sortedScriptNames = {}
for scriptName, _ in pairs(mobile) do
    table.insert(sortedScriptNames, scriptName)
end
table.sort(sortedScriptNames, alphabeticalOrder)

-- 各格納されたスクリプトのボタンをアルファベット順に追加する
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
                warn("スクリプトの読み込み中にエラーが発生しました: ", result)
                game:GetService("StarterGui"):SetCore("SendNotification",{
                    Title = "ネブ | スクリプト ハブ",
                    Text = "スクリプトの読み込み中にエラーが発生しました: " .. result .. ".",
                    Icon = "rbxassetid://7734053281"
                })
            end
        end
    }
end

-- クレジット
GUI:Credit{
    Name = "ネブ",
    Description = "検索者、コード、V3rmなし",
    V3rm = nil,
    Discord = "https://discord.gg/GXYytRX6H3"
}

-- スクリプトの読み込みが成功した通知
GUI:Notification{
    Title = "ネブ | スクリプト ハブ",
    Text = "スクリプトが正常にロードされました、バージョン: " ..NevVer,
    Duration = 3,
    Callback = function() end
}

-- Discordサーバーへの参加のためのプロンプト
GUI:Prompt{
    Followup = false,
    Title = "ネブ | スクリプト ハブ",
    Text = "Discordサーバーに参加しますか？",
    Buttons = {
        ok = function()
            setclipboard("https://discord.gg/GXYytRX6H3")
            GUI:Notification{
                Title = "ネブ | スクリプト ハブ",
                Text = "Discordサーバーのリンクがクリップボードにコピーされました。",
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
