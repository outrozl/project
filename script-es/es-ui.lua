local Nevlibrary = {}

function Nevlibrary.MakeWindow(title, DeletePreviusly)
    -- Eliminar la ventana anterior si es necesario
    if DeletePreviusly then
        local existingGui = game.Players.LocalPlayer:FindFirstChild("PlayerGui"):FindFirstChild("NevWindow")
        if existingGui then
            existingGui:Destroy()
        end
    end

    -- Crear un ScreenGui
    local NevWindow = Instance.new("ScreenGui")
    NevWindow.Name = "NevWindow"
    NevWindow.Parent = game.Players.LocalPlayer:FindFirstChild("PlayerGui")
    NevWindow.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    NevWindow.ResetOnSpawn = false

    -- Crear un Frame principal
    local Main = Instance.new("Frame")
    Main.Name = "Main"
    Main.Parent = NevWindow
    Main.AnchorPoint = Vector2.new(0.5, 0.5)
    Main.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Main.BorderSizePixel = 0
    Main.Position = UDim2.new(0.5, 0, 0.5, 0)
    Main.Size = UDim2.new(0, 435, 0, 250)

    -- Agregar un UICorner al Frame principal para suavizar las esquinas
    local UICorner = Instance.new("UICorner")
    UICorner.Parent = Main

    -- Función para hacer que el Frame principal sea arrastrable
    local dragging
    local dragInput
    local dragStart
    local startPos

    local function update(input)
        local delta = input.Position - dragStart
        Main.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end

    Main.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = true
            dragStart = input.Position
            startPos = Main.Position

            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)

    Main.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement then
            dragInput = input
        end
    end)

    game:GetService("UserInputService").InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            update(input)
        end
    end)

    return Main
end

return Nevlibrary
