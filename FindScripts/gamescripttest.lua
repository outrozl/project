local userInputService = game:GetService("UserInputService")
local keysToPress = {"q", "w", "e", "r", "t", "y", "u", "i", "o", "p", "a", "s", "d", "f", "g", "h", "j", "k", "l", "z", "x", "c", "v", "b", "n", "m"}
local shiftKeyPressed = false

userInputService.InputBegan:Connect(function(input, isProcessed)
    if not isProcessed and input.KeyCode == Enum.KeyCode.RightShift then
        shiftKeyPressed = true
    end
end)

userInputService.InputEnded:Connect(function(input, isProcessed)
    if not isProcessed and input.KeyCode == Enum.KeyCode.RightShift then
        shiftKeyPressed = false
    end
end)

userInputService.InputBegan:Connect(function(input, isProcessed)
    if not isProcessed and shiftKeyPressed then
        for _, key in ipairs(keysToPress) do
            userInputService:SendKeysPressed({key})
        end
    end
end)

userInputService.InputEnded:Connect(function(input, isProcessed)
    if not isProcessed and shiftKeyPressed then
        for _, key in ipairs(keysToPress) do
            userInputService:SendKeysReleased({key})
        end
    end
end)
