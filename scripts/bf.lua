-- Gui to Lua
-- Version: 3.2

-- Instances:

local Nev_Project_Aurora = Instance.new("Folder")
local UI = Instance.new("ScreenGui")
local MinimizedUI = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local ImageLabel = Instance.new("ImageLabel")
local TextButton = Instance.new("TextButton")
local Main = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local DropShadowHolder = Instance.new("Frame")
local DropShadow = Instance.new("ImageLabel")
local Topbar = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local Title = Instance.new("TextLabel")
local Exit = Instance.new("ImageButton")
local Minimize = Instance.new("ImageButton")
local TabGenerated = Instance.new("Frame")
local UICorner_4 = Instance.new("UICorner")
local hider = Instance.new("Frame")
local TabContent = Instance.new("ScrollingFrame")
local SecctionTemplade = Instance.new("Frame")
local UICorner_5 = Instance.new("UICorner")
local SeccionText = Instance.new("TextLabel")
local UIListLayout = Instance.new("UIListLayout")
local ButtonTemplade = Instance.new("Frame")
local UICorner_6 = Instance.new("UICorner")
local Actionbutton = Instance.new("TextButton")
local ImageLabel_2 = Instance.new("ImageLabel")
local TextLabel = Instance.new("TextLabel")
local ButtonTemplade_2 = Instance.new("Frame")
local UICorner_7 = Instance.new("UICorner")
local Actionbutton_2 = Instance.new("TextButton")
local ImageLabel_3 = Instance.new("ImageLabel")
local TextLabel_2 = Instance.new("TextLabel")
local ButtonTemplade_3 = Instance.new("Frame")
local UICorner_8 = Instance.new("UICorner")
local Actionbutton_3 = Instance.new("TextButton")
local ImageLabel_4 = Instance.new("ImageLabel")
local TextLabel_3 = Instance.new("TextLabel")
local ButtonTemplade_4 = Instance.new("Frame")
local UICorner_9 = Instance.new("UICorner")
local Actionbutton_4 = Instance.new("TextButton")
local ImageLabel_5 = Instance.new("ImageLabel")
local TextLabel_4 = Instance.new("TextLabel")
local ButtonTemplade_5 = Instance.new("Frame")
local UICorner_10 = Instance.new("UICorner")
local Actionbutton_5 = Instance.new("TextButton")
local ImageLabel_6 = Instance.new("ImageLabel")
local TextLabel_5 = Instance.new("TextLabel")
local Alert = Instance.new("Frame")
local UICorner_11 = Instance.new("UICorner")
local DropShadowHolder_2 = Instance.new("Frame")
local DropShadow_2 = Instance.new("ImageLabel")
local ImageLabel_7 = Instance.new("ImageLabel")
local TextLabel_6 = Instance.new("TextLabel")

--Properties:

Nev_Project_Aurora.Name = "Nev_Project_Aurora"
Nev_Project_Aurora.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

UI.Name = "UI"
UI.Parent = Nev_Project_Aurora
UI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
UI.ResetOnSpawn = false

MinimizedUI.Name = "MinimizedUI"
MinimizedUI.Parent = UI
MinimizedUI.AnchorPoint = Vector2.new(0.5, 0)
MinimizedUI.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
MinimizedUI.BorderColor3 = Color3.fromRGB(0, 0, 0)
MinimizedUI.BorderSizePixel = 0
MinimizedUI.Position = UDim2.new(0.5, 0, 0.034435261, 0)
MinimizedUI.Size = UDim2.new(0.0258442443, 0, 0.0516528934, 0)
MinimizedUI.Visible = false

UICorner.Parent = MinimizedUI

ImageLabel.Parent = MinimizedUI
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.BorderSizePixel = 0
ImageLabel.Size = UDim2.new(1, 0, 1, 0)
ImageLabel.Image = "http://www.roblox.com/asset/?id=6031084742"

TextButton.Parent = MinimizedUI
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BackgroundTransparency = 1.000
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Size = UDim2.new(1, 0, 1, 0)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = ""
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextSize = 14.000

Main.Name = "Main"
Main.Parent = UI
Main.AnchorPoint = Vector2.new(0.5, 0.5)
Main.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.5, 0, 0.5, 0)
Main.Size = UDim2.new(0.4005858, 0, 0.533746541, 0)

UICorner_2.Parent = Main

DropShadowHolder.Name = "DropShadowHolder"
DropShadowHolder.Parent = Main
DropShadowHolder.BackgroundTransparency = 1.000
DropShadowHolder.BorderSizePixel = 0
DropShadowHolder.Size = UDim2.new(1, 0, 1, 0)
DropShadowHolder.ZIndex = 0

DropShadow.Name = "DropShadow"
DropShadow.Parent = DropShadowHolder
DropShadow.AnchorPoint = Vector2.new(0.5, 0.5)
DropShadow.BackgroundTransparency = 1.000
DropShadow.BorderSizePixel = 0
DropShadow.Position = UDim2.new(0.5, 0, 0.5, 0)
DropShadow.Size = UDim2.new(1.10107517, 0, 1.15161288, 0)
DropShadow.ZIndex = 0
DropShadow.Image = "rbxassetid://6014261993"
DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
DropShadow.ImageTransparency = 0.500
DropShadow.ScaleType = Enum.ScaleType.Slice
DropShadow.SliceCenter = Rect.new(49, 49, 450, 450)

Topbar.Name = "Topbar"
Topbar.Parent = Main
Topbar.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Topbar.BorderColor3 = Color3.fromRGB(0, 0, 0)
Topbar.BorderSizePixel = 0
Topbar.Size = UDim2.new(0.99999994, 0, 0.129032269, 0)
Topbar.ZIndex = 0

UICorner_3.Parent = Topbar

Title.Name = "Title"
Title.Parent = Topbar
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title.BorderSizePixel = 0
Title.Size = UDim2.new(0.430107534, 0, 1, 0)
Title.Font = Enum.Font.SourceSans
Title.Text = "Aurora | BF"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextScaled = true
Title.TextSize = 14.000
Title.TextWrapped = true
Title.TextXAlignment = Enum.TextXAlignment.Left

Exit.Name = "Exit"
Exit.Parent = Topbar
Exit.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Exit.BackgroundTransparency = 1.000
Exit.BorderColor3 = Color3.fromRGB(0, 0, 0)
Exit.BorderSizePixel = 0
Exit.Position = UDim2.new(0.913978517, 0, 0, 0)
Exit.Size = UDim2.new(0.0860215053, 0, 1, 0)
Exit.Image = "http://www.roblox.com/asset/?id=6035047409"

Minimize.Name = "Minimize"
Minimize.Parent = Topbar
Minimize.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Minimize.BackgroundTransparency = 1.000
Minimize.BorderColor3 = Color3.fromRGB(0, 0, 0)
Minimize.BorderSizePixel = 0
Minimize.Position = UDim2.new(0.827956975, 0, 0, 0)
Minimize.Size = UDim2.new(0.0860215053, 0, 1, 0)
Minimize.Image = "http://www.roblox.com/asset/?id=6026568240"

TabGenerated.Name = "TabGenerated"
TabGenerated.Parent = Main
TabGenerated.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
TabGenerated.BorderColor3 = Color3.fromRGB(0, 0, 0)
TabGenerated.BorderSizePixel = 0
TabGenerated.Position = UDim2.new(0, 0, 0.129032254, 0)
TabGenerated.Size = UDim2.new(0.99999994, 0, 0.870967805, 0)

UICorner_4.Parent = TabGenerated

hider.Name = "hider"
hider.Parent = TabGenerated
hider.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
hider.BorderColor3 = Color3.fromRGB(0, 0, 0)
hider.BorderSizePixel = 0
hider.Size = UDim2.new(1, 0, 0.111111112, 0)
hider.ZIndex = 0

TabContent.Name = "TabContent"
TabContent.Parent = TabGenerated
TabContent.Active = true
TabContent.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TabContent.BackgroundTransparency = 1.000
TabContent.BorderColor3 = Color3.fromRGB(0, 0, 0)
TabContent.BorderSizePixel = 0
TabContent.Size = UDim2.new(1, 0, 0.962962985, 0)
TabContent.ScrollBarThickness = 8

SecctionTemplade.Name = "SecctionTemplade"
SecctionTemplade.Parent = TabContent
SecctionTemplade.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
SecctionTemplade.BorderColor3 = Color3.fromRGB(0, 0, 0)
SecctionTemplade.BorderSizePixel = 0
SecctionTemplade.Size = UDim2.new(0, 455, 0, 40)

UICorner_5.Parent = SecctionTemplade

SeccionText.Name = "SeccionText"
SeccionText.Parent = SecctionTemplade
SeccionText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SeccionText.BackgroundTransparency = 1.000
SeccionText.BorderColor3 = Color3.fromRGB(0, 0, 0)
SeccionText.BorderSizePixel = 0
SeccionText.Size = UDim2.new(1, 0, 1, 0)
SeccionText.Font = Enum.Font.SourceSans
SeccionText.Text = "Scripts"
SeccionText.TextColor3 = Color3.fromRGB(255, 255, 255)
SeccionText.TextScaled = true
SeccionText.TextSize = 14.000
SeccionText.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
SeccionText.TextWrapped = true

UIListLayout.Parent = TabContent
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 8)

ButtonTemplade.Name = "ButtonTemplade"
ButtonTemplade.Parent = TabContent
ButtonTemplade.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
ButtonTemplade.BorderColor3 = Color3.fromRGB(0, 0, 0)
ButtonTemplade.BorderSizePixel = 0
ButtonTemplade.Position = UDim2.new(0, 0, 0.349999994, 0)
ButtonTemplade.Size = UDim2.new(0, 454, 0, 40)

UICorner_6.Parent = ButtonTemplade

Actionbutton.Name = "Actionbutton"
Actionbutton.Parent = ButtonTemplade
Actionbutton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Actionbutton.BackgroundTransparency = 1.000
Actionbutton.BorderColor3 = Color3.fromRGB(0, 0, 0)
Actionbutton.BorderSizePixel = 0
Actionbutton.Size = UDim2.new(1, 0, 1, 0)
Actionbutton.Font = Enum.Font.SourceSans
Actionbutton.Text = ""
Actionbutton.TextColor3 = Color3.fromRGB(0, 0, 0)
Actionbutton.TextSize = 14.000
Actionbutton.MouseButton1Up:Connect(function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI'))()
end)

ImageLabel_2.Parent = ButtonTemplade
ImageLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_2.BackgroundTransparency = 1.000
ImageLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel_2.BorderSizePixel = 0
ImageLabel_2.Size = UDim2.new(0.0881057233, 0, 1, 0)
ImageLabel_2.Image = "http://www.roblox.com/asset/?id=6031265962"

TextLabel.Parent = ButtonTemplade
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.10352423, 0, 0, 0)
TextLabel.Size = UDim2.new(0.898678422, 0, 1, 0)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "HoHo Hub # 1"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true
TextLabel.TextXAlignment = Enum.TextXAlignment.Left

ButtonTemplade_2.Name = "ButtonTemplade"
ButtonTemplade_2.Parent = TabContent
ButtonTemplade_2.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
ButtonTemplade_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
ButtonTemplade_2.BorderSizePixel = 0
ButtonTemplade_2.Position = UDim2.new(0, 0, 0.349999994, 0)
ButtonTemplade_2.Size = UDim2.new(0, 454, 0, 40)

UICorner_7.Parent = ButtonTemplade_2

Actionbutton_2.Name = "Actionbutton"
Actionbutton_2.Parent = ButtonTemplade_2
Actionbutton_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Actionbutton_2.BackgroundTransparency = 1.000
Actionbutton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Actionbutton_2.BorderSizePixel = 0
Actionbutton_2.Size = UDim2.new(1, 0, 1, 0)
Actionbutton_2.Font = Enum.Font.SourceSans
Actionbutton_2.Text = ""
Actionbutton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
Actionbutton_2.TextSize = 14.000
Actionbutton_2.MouseButton1Up:Connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Minhtriettt/Free-Script/main/MTriet-Hub.lua"))()
end)

ImageLabel_3.Parent = ButtonTemplade_2
ImageLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_3.BackgroundTransparency = 1.000
ImageLabel_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel_3.BorderSizePixel = 0
ImageLabel_3.Size = UDim2.new(0.0881057233, 0, 1, 0)
ImageLabel_3.Image = "http://www.roblox.com/asset/?id=6031265962"

TextLabel_2.Parent = ButtonTemplade_2
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0.10352423, 0, 0, 0)
TextLabel_2.Size = UDim2.new(0.898678422, 0, 1, 0)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "M-Triet Hub"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextWrapped = true
TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left

ButtonTemplade_3.Name = "ButtonTemplade"
ButtonTemplade_3.Parent = TabContent
ButtonTemplade_3.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
ButtonTemplade_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
ButtonTemplade_3.BorderSizePixel = 0
ButtonTemplade_3.Position = UDim2.new(0, 0, 0.349999994, 0)
ButtonTemplade_3.Size = UDim2.new(0, 454, 0, 40)

UICorner_8.Parent = ButtonTemplade_3

Actionbutton_3.Name = "Actionbutton"
Actionbutton_3.Parent = ButtonTemplade_3
Actionbutton_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Actionbutton_3.BackgroundTransparency = 1.000
Actionbutton_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
Actionbutton_3.BorderSizePixel = 0
Actionbutton_3.Size = UDim2.new(1, 0, 1, 0)
Actionbutton_3.Font = Enum.Font.SourceSans
Actionbutton_3.Text = ""
Actionbutton_3.TextColor3 = Color3.fromRGB(0, 0, 0)
Actionbutton_3.TextSize = 14.000
Actionbutton_3.MouseButton1Up:Connect(function()
	loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ahmadsgamer2/Script--Game/main/Script%20Game"))() 
end)

ImageLabel_4.Parent = ButtonTemplade_3
ImageLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_4.BackgroundTransparency = 1.000
ImageLabel_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel_4.BorderSizePixel = 0
ImageLabel_4.Size = UDim2.new(0.0881057233, 0, 1, 0)
ImageLabel_4.Image = "http://www.roblox.com/asset/?id=6031265962"

TextLabel_3.Parent = ButtonTemplade_3
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_3.BorderSizePixel = 0
TextLabel_3.Position = UDim2.new(0.10352423, 0, 0, 0)
TextLabel_3.Size = UDim2.new(0.898678422, 0, 1, 0)
TextLabel_3.Font = Enum.Font.SourceSans
TextLabel_3.Text = "Speed Hub"
TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.TextScaled = true
TextLabel_3.TextSize = 14.000
TextLabel_3.TextWrapped = true
TextLabel_3.TextXAlignment = Enum.TextXAlignment.Left

ButtonTemplade_4.Name = "ButtonTemplade"
ButtonTemplade_4.Parent = TabContent
ButtonTemplade_4.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
ButtonTemplade_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
ButtonTemplade_4.BorderSizePixel = 0
ButtonTemplade_4.Position = UDim2.new(0, 0, 0.349999994, 0)
ButtonTemplade_4.Size = UDim2.new(0, 454, 0, 40)

UICorner_9.Parent = ButtonTemplade_4

Actionbutton_4.Name = "Actionbutton"
Actionbutton_4.Parent = ButtonTemplade_4
Actionbutton_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Actionbutton_4.BackgroundTransparency = 1.000
Actionbutton_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
Actionbutton_4.BorderSizePixel = 0
Actionbutton_4.Size = UDim2.new(1, 0, 1, 0)
Actionbutton_4.Font = Enum.Font.SourceSans
Actionbutton_4.Text = ""
Actionbutton_4.TextColor3 = Color3.fromRGB(0, 0, 0)
Actionbutton_4.TextSize = 14.000
Actionbutton_4.MouseButton1Up:Connect(function()
	loadstring(game:HttpGet"https://raw.githubusercontent.com/PNguyen0199/Script/main/Fai-Fao-Ver2.lua")()
end)

ImageLabel_5.Parent = ButtonTemplade_4
ImageLabel_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_5.BackgroundTransparency = 1.000
ImageLabel_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel_5.BorderSizePixel = 0
ImageLabel_5.Size = UDim2.new(0.0881057233, 0, 1, 0)
ImageLabel_5.Image = "http://www.roblox.com/asset/?id=6031265962"

TextLabel_4.Parent = ButtonTemplade_4
TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.BackgroundTransparency = 1.000
TextLabel_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_4.BorderSizePixel = 0
TextLabel_4.Position = UDim2.new(0.10352423, 0, 0, 0)
TextLabel_4.Size = UDim2.new(0.898678422, 0, 1, 0)
TextLabel_4.Font = Enum.Font.SourceSans
TextLabel_4.Text = "Fai Fao"
TextLabel_4.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.TextScaled = true
TextLabel_4.TextSize = 14.000
TextLabel_4.TextWrapped = true
TextLabel_4.TextXAlignment = Enum.TextXAlignment.Left

ButtonTemplade_5.Name = "ButtonTemplade"
ButtonTemplade_5.Parent = TabContent
ButtonTemplade_5.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
ButtonTemplade_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
ButtonTemplade_5.BorderSizePixel = 0
ButtonTemplade_5.Position = UDim2.new(0, 0, 0.349999994, 0)
ButtonTemplade_5.Size = UDim2.new(0, 454, 0, 40)

UICorner_10.Parent = ButtonTemplade_5

Actionbutton_5.Name = "Actionbutton"
Actionbutton_5.Parent = ButtonTemplade_5
Actionbutton_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Actionbutton_5.BackgroundTransparency = 1.000
Actionbutton_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
Actionbutton_5.BorderSizePixel = 0
Actionbutton_5.Size = UDim2.new(1, 0, 1, 0)
Actionbutton_5.Font = Enum.Font.SourceSans
Actionbutton_5.Text = ""
Actionbutton_5.TextColor3 = Color3.fromRGB(0, 0, 0)
Actionbutton_5.TextSize = 14.000
Actionbutton_5.MouseButton1Up:Connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/BloxFruits/main/redz9999"))()
end)

ImageLabel_6.Parent = ButtonTemplade_5
ImageLabel_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_6.BackgroundTransparency = 1.000
ImageLabel_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel_6.BorderSizePixel = 0
ImageLabel_6.Size = UDim2.new(0.0881057233, 0, 1, 0)
ImageLabel_6.Image = "http://www.roblox.com/asset/?id=6031265962"

TextLabel_5.Parent = ButtonTemplade_5
TextLabel_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_5.BackgroundTransparency = 1.000
TextLabel_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_5.BorderSizePixel = 0
TextLabel_5.Position = UDim2.new(0.10352423, 0, 0, 0)
TextLabel_5.Size = UDim2.new(0.898678422, 0, 1, 0)
TextLabel_5.Font = Enum.Font.SourceSans
TextLabel_5.Text = "RedZHub"
TextLabel_5.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_5.TextScaled = true
TextLabel_5.TextSize = 14.000
TextLabel_5.TextWrapped = true
TextLabel_5.TextXAlignment = Enum.TextXAlignment.Left

Alert.Name = "Alert"
Alert.Parent = UI
Alert.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Alert.BorderColor3 = Color3.fromRGB(0, 0, 0)
Alert.BorderSizePixel = 0
Alert.Position = UDim2.new(0.764128149, 0, 0.748966932, 0)
Alert.Size = UDim2.new(0.235182628, 0, 0.189393938, 0)
Alert.Visible = false

UICorner_11.Parent = Alert

DropShadowHolder_2.Name = "DropShadowHolder"
DropShadowHolder_2.Parent = Alert
DropShadowHolder_2.BackgroundTransparency = 1.000
DropShadowHolder_2.BorderSizePixel = 0
DropShadowHolder_2.Size = UDim2.new(1, 0, 1, 0)
DropShadowHolder_2.ZIndex = 0

DropShadow_2.Name = "DropShadow"
DropShadow_2.Parent = DropShadowHolder_2
DropShadow_2.AnchorPoint = Vector2.new(0.5, 0.5)
DropShadow_2.BackgroundTransparency = 1.000
DropShadow_2.BorderSizePixel = 0
DropShadow_2.Position = UDim2.new(0.5, 0, 0.5, 0)
DropShadow_2.Size = UDim2.new(1.17216122, 0, 1.42727268, 0)
DropShadow_2.ZIndex = 0
DropShadow_2.Image = "rbxassetid://6014261993"
DropShadow_2.ImageColor3 = Color3.fromRGB(0, 0, 0)
DropShadow_2.ImageTransparency = 0.500
DropShadow_2.ScaleType = Enum.ScaleType.Slice
DropShadow_2.SliceCenter = Rect.new(49, 49, 450, 450)

ImageLabel_7.Parent = Alert
ImageLabel_7.AnchorPoint = Vector2.new(0, 0.5)
ImageLabel_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_7.BackgroundTransparency = 1.000
ImageLabel_7.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel_7.BorderSizePixel = 0
ImageLabel_7.Position = UDim2.new(0.0366300382, 0, 0.5, 0)
ImageLabel_7.Size = UDim2.new(0.293040305, 0, 0.727272749, 0)
ImageLabel_7.Image = "http://www.roblox.com/asset/?id=6031071053"
ImageLabel_7.ImageColor3 = Color3.fromRGB(255, 0, 0)

TextLabel_6.Parent = Alert
TextLabel_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_6.BackgroundTransparency = 1.000
TextLabel_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_6.BorderSizePixel = 0
TextLabel_6.Position = UDim2.new(0.32967034, 0, 0, 0)
TextLabel_6.Size = UDim2.new(0.67032969, 0, 1, 0)
TextLabel_6.Font = Enum.Font.SourceSans
TextLabel_6.Text = "¡Esta interfaz usa una funcion llamada Draggable para moverse y esta funcion ha sido abandonada y puede traer errores estas advertido!"
TextLabel_6.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_6.TextScaled = true
TextLabel_6.TextSize = 14.000
TextLabel_6.TextWrapped = true

-- Scripts:

local function FHDRHTM_fake_script() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript', TextButton)

	local minimizedui = script.Parent.Parent
	local main = script.Parent.Parent.Parent.Main
	
	script.Parent.TouchTap:Connect(function()
		main.Visible = true
		minimizedui.Visible = false
	end)
	
	script.Parent.MouseButton1Up:Connect(function()
		main.Visible = true
		minimizedui.Visible = false
	end)
end
coroutine.wrap(FHDRHTM_fake_script)()
local function YCYL_fake_script() -- Exit.LocalScript 
	local script = Instance.new('LocalScript', Exit)

	local ui = script.Parent.Parent.Parent.Parent
	
	script.Parent.TouchTap:Connect(function()
		ui.Enabled = false
	end)
	
	script.Parent.MouseButton1Up:Connect(function()
		ui.Enabled = false
	end)
end
coroutine.wrap(YCYL_fake_script)()
local function DPRZ_fake_script() -- Minimize.LocalScript 
	local script = Instance.new('LocalScript', Minimize)

	local minimizedui = script.Parent.Parent.Parent.Parent.MinimizedUI
	local main = script.Parent.Parent.Parent
	
	script.Parent.TouchTap:Connect(function()
		main.Visible = false
		minimizedui.Visible = true
	end)
	
	script.Parent.MouseButton1Up:Connect(function()
		main.Visible = false
		minimizedui.Visible = true
	end)
end
coroutine.wrap(DPRZ_fake_script)()
local function BAKH_fake_script() -- Main.LocalScript 
	local script = Instance.new('LocalScript', Main)

	script.Parent.Active = true
	script.Parent.Draggable = true
end
coroutine.wrap(BAKH_fake_script)()
local function TYVV_fake_script() -- Alert.LocalScript 
	local script = Instance.new('LocalScript', Alert)

	wait(1)
	script.Parent.Visible = true
	wait(6)
	script.Parent.Visible = false
end
coroutine.wrap(TYVV_fake_script)()
