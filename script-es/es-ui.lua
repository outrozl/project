local NevLib = {}

-- Función para crear una ventana
function NevLib.CreateWindow(title, mobile, deleteprevius, icon)

    --- IN DEV BUDDYS
    -- Verificar si se debe eliminar la ventana anterior
    if deleteprevius then
        local existingGui = game.Players.LocalPlayer:FindFirstChild("PlayerGui"):FindFirstChild("WindowGui")
        if existingGui then
            existingGui:Destroy()
        end
    end

    -- Función para hacer que el Frame principal sea arrastrable
    local dragging
    local dragInput
    local dragStart
    local startPos

    local function update(input)
        local delta = input.Position - dragStart
        mainFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end

    mainFrame.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = true
            dragStart = input.Position
            startPos = mainFrame.Position

            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)

    mainFrame.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement then
            dragInput = input
        end
    end)

    game:GetService("UserInputService").InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            update(input)
        end
    end)

    return mainFrame
end

return NevLib
