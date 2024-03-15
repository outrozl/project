local userInputService = game:GetService("UserInputService")
local activated = false
local keys = {"q", "w", "e", "r", "t", "y", "u", "i", "o", "p", "a", "s", "d", "f", "g", "h", "j", "k", "l", "ñ", "z", "x", "c", "v", "b", "n", "m"}
local pressedKeys = {}

local function pressKey(key)
    userInputService:SendKeyEvent(true, Enum.KeyCode[key], false, userInputService.CurrentInputType)
    pressedKeys[key] = true
end

local function releaseKey(key)
    userInputService:SendKeyEvent(false, Enum.KeyCode[key], false, userInputService.CurrentInputType)
    pressedKeys[key] = nil
end

local function pressRandomKey()
    local randomIndex = math.random(1, #keys)
    local key = keys[randomIndex]
    if not pressedKeys[key] then
        pressKey(key)
    end
end

local function onKeyPress(input)
    if input.KeyCode == Enum.KeyCode.RightShift then
        activated = not activated
        print("Modo de teclas aleatorias", activated and "activado" or "desactivado")
    end
end

userInputService.InputBegan:Connect(onKeyPress)

while true do
    if activated then
        pressRandomKey()
    end
    wait(0.1)
end


print("NevScript", "Press Keys")
