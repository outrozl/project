local NevLib = {}

-- Función para crear una ventana
function NevLib.CreateWindow(title, mobile, deleteprevius, icon)
    -- Verificar si se debe eliminar la ventana anterior
    if deleteprevius then
        local existingGui = game.Players.LocalPlayer:FindFirstChild("PlayerGui"):FindFirstChild("WindowGui")
        if existingGui then
            existingGui:Destroy()
        end
    end

    -- Crear una ScreenGui
    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = "WindowGui"
    screenGui.IgnoreGuiInset = true
    screenGui.Parent = game.Players.LocalPlayer:FindFirstChild("PlayerGui")

    -- Crear un Frame principal
    local mainFrame = Instance.new("Frame")
    mainFrame.Name = "MainFrame"
    mainFrame.Size = UDim2.new(0.5, 0, 0.5, -10) -- Restamos 10 para dejar espacio para la TopBar
    mainFrame.Position = UDim2.new(0.25, 0, 0.25, 0)
    mainFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    mainFrame.BorderSizePixel = 0  -- Eliminar el borde del frame
    mainFrame.Parent = screenGui

    -- Aplicar UI Corner a mainFrame
    local mainFrameCorner = Instance.new("UICorner")
    mainFrameCorner.CornerRadius = UDim.new(0, 5)
    mainFrameCorner.Parent = mainFrame

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

    -- Crear un Frame para la barra superior
    local topBar = Instance.new("Frame")
    topBar.Name = "TopBar"
    topBar.Size = UDim2.new(1, 0, 0.1, 0)
    topBar.Position = UDim2.new(0, 0, 0, 0)  -- Asegúrate de que esté en la parte superior
    topBar.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    topBar.BorderSizePixel = 0  -- Eliminar el borde del frame
    topBar.Parent = mainFrame

    -- Crear un Frame adicional debajo de topBar para ocultar el UICorner
    local topBarBottomFrame = Instance.new("Frame")
    topBarBottomFrame.Size = UDim2.new(1, 0, 0.02, 0)
    topBarBottomFrame.Position = UDim2.new(0, 0, 1, 0)
    topBarBottomFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    topBarBottomFrame.BorderSizePixel = 0  -- Eliminar el borde del frame
    topBarBottomFrame.Parent = topBar

    -- Crear un Label para el título en la barra superior
    local titleLabel = Instance.new("TextLabel")
    titleLabel.Name = "TitleLabel"
    titleLabel.Size = UDim2.new(1, -10, 1, 0)
    titleLabel.Position = UDim2.new(0, 5, 0, 0)
    titleLabel.BackgroundTransparency = 1
    titleLabel.Text = title
    titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    titleLabel.TextSize = 14
    titleLabel.Font = Enum.Font.SourceSansBold
    titleLabel.TextXAlignment = Enum.TextXAlignment.Left
    titleLabel.Parent = topBar

    -- Si es mobile, agregar un Frame con un ImageButton para abrir el Frame principal
    if mobile then
        local openFrame = Instance.new("Frame")
        openFrame.Name = "OpenFrame"
        openFrame.Size = UDim2.new(0, 30, 0, 30)
        openFrame.Position = UDim2.new(0.5, -15, 0, 10)
        openFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
        openFrame.BorderSizePixel = 0  -- Eliminar el borde del frame
        openFrame.Parent = screenGui

        -- Aplicar UI Corner a openFrame
        local openFrameCorner = Instance.new("UICorner")
        openFrameCorner.CornerRadius = UDim.new(0, 5)
        openFrameCorner.Parent = openFrame

        local openButton = Instance.new("ImageButton")
        openButton.Name = "OpenButton"
        openButton.Size = UDim2.new(1, 0, 1, 0)
        openButton.BackgroundTransparency = 1
        openButton.Image = icon
        openButton.Parent = openFrame

        openButton.MouseButton1Click:Connect(function()
            mainFrame.Visible = not mainFrame.Visible
        end)
    end

    -- Crear un Frame para los tabs y el scrolling frame
    local tabsHolder = Instance.new("Frame")
    tabsHolder.Name = "TabsHolder"
    tabsHolder.Size = UDim2.new(0.25, 0, 1, 0)  -- Ajustar el tamaño para cubrir toda la altura del mainFrame
    tabsHolder.Position = UDim2.new(0, 0, 0, topBar.Size.Y.Offset)  -- Ajustar la posición para estar debajo de TopBar
    tabsHolder.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
    tabsHolder.Parent = mainFrame

    local scrollingFrame = Instance.new("ScrollingFrame")
    scrollingFrame.Name = "ScrollingFrame"
    scrollingFrame.Size = UDim2.new(1, 0, 1, -topBar.Size.Y.Offset)  -- Restar el tamaño de TopBar para evitar colisión
    scrollingFrame.Position = UDim2.new(0, 0, 0, topBar.Size.Y.Offset)  -- Ajustar la posición para empezar desde debajo de TopBar
    scrollingFrame.ScrollBarThickness = 10
    scrollingFrame.Parent = tabsHolder

    local uiListLayout = Instance.new("UIListLayout")
    uiListLayout.Padding = UDim.new(0, 2)
    uiListLayout.Parent = scrollingFrame

    return mainFrame
end

return NevLib
