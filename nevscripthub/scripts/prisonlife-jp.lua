local Mercury = loadstring(game:HttpGet("https://raw.githubusercontent.com/deeeity/mercury-lib/master/src.lua"))()
local NevVer = "1.0.0"

local GUI = Mercury:Create{
    Name = "Nev | PL | "..NevVer,
    Size = UDim2.fromOffset(600, 400),
    Theme = Mercury.Themes.Dark,
    Link = "https://github.com/outrozl/project/blob/main/nevscripthub/scripts/stb"
}

local best = {
    ["Tiger Admin（キーなし）"] = { URL = "https://raw.githubusercontent.com/Scripterbacon/TSBobfuscator/main/Main.Lua", Method = 1 },
    ["Prison Breaker（IDK）"] = { URL = "https://github.com/outrozl/project/blob/main/nevscripthub/scripts/tools/prisonbreaker1.5.lua?raw=true", Method = 1 },
    ["Septex Admin（キーあり）"] = { URL = "https://github.com/H17S32/Tiger_Admin/blob/main/TigeradminREVAMP.txt?raw=true", Method = 3 },
}

-- 関数

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
    Name = "スクリプト",
    Icon = "rbxassetid://7733749837"
}

-- アルファベット順にスクリプトを並べ替える関数
local function alphabeticalOrder(a, b)
    -- 'a' の最初の文字が数字であり、 'b' の最初の文字が数字でない場合、'a' の2番目の文字を選択
    if tonumber(string.sub(a, 1, 1)) and not tonumber(string.sub(b, 1, 1)) then
        return string.sub(a, 2, 2):lower() < string.sub(b, 1, 1):lower()
    -- 'b' の最初の文字が数字であり、 'a' の最初の文字が数字でない場合、 'a' の最初の文字を選択
    elseif tonumber(string.sub(b, 1, 1)) and not tonumber(string.sub(a, 1, 1)) then
        return string.sub(a, 1, 1):lower() < string.sub(b, 2, 2):lower()
    -- それ以外の場合、各名前の最初の文字を通常比較する
    else
        return string.sub(a, 1, 1):lower() < string.sub(b, 1, 1):lower()
    end
end

-- スクリプト名のソート済みリスト
local sortedScriptNames = {}
for scriptName, _ in pairs(best) do
    table.insert(sortedScriptNames, scriptName)
end
table.sort(sortedScriptNames, alphabeticalOrder)

-- アルファベット順に、各保存されたスクリプトのボタンを追加する
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
                warn("スクリプトを読み込む際にエラーが発生しました: ", result)
                game:GetService("StarterGui"):SetCore("SendNotification",{
                    Title = "Nev | スクリプト ハブ",
                    Text = "スクリプトを読み込む際にエラーが発生しました: " .. result .. "。",
                    Icon = "rbxassetid://7734053281"
                })
            end
        end
    }
end

GUI:Credit{
    Name = "Nev",
    Description = "サーチャー、コード、V3rmは持っていません",
    V3rm = nil,
    Discord = "https://discord.gg/GXYytRX6H3"
}

GUI:Notification{
    Title = "Nev | スクリプト ハブ",
    Text = "スクリプトが正常に読み込まれました。バージョン：" ..NevVer,
    Duration = 3,
    Callback = function() end
}

GUI:Prompt{
    Followup = false,
    Title = "Nev | スクリプト ハブ",
    Text = "弊社のディスコード サーバーに参加しますか？",
    Buttons = {
        ok = function()
            setclipboard("https://discord.gg/GXYytRX6H3")
            GUI:Notification{
                Title = "Nev | スクリプト ハブ",
                Text = "ディスコード サーバーのリンクをクリップボードにコピーしました。",
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
