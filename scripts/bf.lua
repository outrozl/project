-- Gui to Lua
-- Version: 3.2

-- Instances:

local Nev_Project_Aurora = Instance.new("Folder")
local V3UI = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local Topbar = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local line = Instance.new("Frame")
local ImageLabel = Instance.new("ImageLabel")
local Exit = Instance.new("ImageButton")
local Minimize = Instance.new("ImageButton")
local UICorner = Instance.new("UICorner")
local Content = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local ScrollingFrame = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local SectionTemplade = Instance.new("Frame")
local TextLabel_2 = Instance.new("TextLabel")
local DiscordButtonTemplade = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local ImageLabel_2 = Instance.new("ImageLabel")
local TextLabel_3 = Instance.new("TextLabel")
local ImageLabel_3 = Instance.new("ImageLabel")
local TextLabel_4 = Instance.new("TextLabel")
local CopyDC = Instance.new("TextButton")
local PromotionTemplade = Instance.new("Frame")
local UICorner_4 = Instance.new("UICorner")
local ImageLabel_4 = Instance.new("ImageLabel")
local TextLabel_5 = Instance.new("TextLabel")
local TextLabel_6 = Instance.new("TextLabel")
local ImageLabel_5 = Instance.new("ImageLabel")
local CopyDCPromo = Instance.new("TextButton")
local ButtonTemplade = Instance.new("Frame")
local UICorner_5 = Instance.new("UICorner")
local ImageLabel_6 = Instance.new("ImageLabel")
local TextLabel_7 = Instance.new("TextLabel")
local TextLabel_8 = Instance.new("TextLabel")
local ImageLabel_7 = Instance.new("ImageLabel")
local Load = Instance.new("TextButton")
local ButtonTemplade_2 = Instance.new("Frame")
local UICorner_6 = Instance.new("UICorner")
local ImageLabel_8 = Instance.new("ImageLabel")
local TextLabel_9 = Instance.new("TextLabel")
local TextLabel_10 = Instance.new("TextLabel")
local ImageLabel_9 = Instance.new("ImageLabel")
local Load_2 = Instance.new("TextButton")
local ButtonTemplade_3 = Instance.new("Frame")
local UICorner_7 = Instance.new("UICorner")
local ImageLabel_10 = Instance.new("ImageLabel")
local TextLabel_11 = Instance.new("TextLabel")
local TextLabel_12 = Instance.new("TextLabel")
local ImageLabel_11 = Instance.new("ImageLabel")
local Load_3 = Instance.new("TextButton")
local ButtonTemplade_4 = Instance.new("Frame")
local UICorner_8 = Instance.new("UICorner")
local ImageLabel_12 = Instance.new("ImageLabel")
local TextLabel_13 = Instance.new("TextLabel")
local TextLabel_14 = Instance.new("TextLabel")
local ImageLabel_13 = Instance.new("ImageLabel")
local Load_4 = Instance.new("TextButton")
local ButtonTemplade_5 = Instance.new("Frame")
local UICorner_9 = Instance.new("UICorner")
local ImageLabel_14 = Instance.new("ImageLabel")
local TextLabel_15 = Instance.new("TextLabel")
local TextLabel_16 = Instance.new("TextLabel")
local ImageLabel_15 = Instance.new("ImageLabel")
local Load_5 = Instance.new("TextButton")
local UICorner_10 = Instance.new("UICorner")
local Minimized = Instance.new("Frame")
local UICorner_11 = Instance.new("UICorner")
local ImageLabel_16 = Instance.new("ImageLabel")
local TextButton = Instance.new("TextButton")

--Properties:

Nev_Project_Aurora.Name = "Nev_Project_Aurora"
Nev_Project_Aurora.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

V3UI.Name = "V3UI"
V3UI.Parent = Nev_Project_Aurora
V3UI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
V3UI.ResetOnSpawn = false

Main.Name = "Main"
Main.Parent = V3UI
Main.AnchorPoint = Vector2.new(0.5, 0.5)
Main.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.5, 0, 0.5, 0)
Main.Size = UDim2.new(0, 500, 0, 310)

Topbar.Name = "Topbar"
Topbar.Parent = Main
Topbar.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Topbar.BorderColor3 = Color3.fromRGB(0, 0, 0)
Topbar.BorderSizePixel = 0
Topbar.Size = UDim2.new(0, 500, 0, 50)

TextLabel.Parent = Topbar
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Size = UDim2.new(0, 155, 0, 50)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Aurora | BF"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

line.Name = "line"
line.Parent = Topbar
line.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
line.BorderColor3 = Color3.fromRGB(0, 0, 0)
line.BorderSizePixel = 0
line.Position = UDim2.new(0, 0, 1, 0)
line.Size = UDim2.new(0, 500, 0, 1)

ImageLabel.Parent = Topbar
ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
ImageLabel.Size = UDim2.new(0, 50, 0, 50)
ImageLabel.Image = "http://www.roblox.com/asset/?id=6031079158"

Exit.Name = "Exit"
Exit.Parent = Topbar
Exit.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Exit.BackgroundTransparency = 1.000
Exit.BorderColor3 = Color3.fromRGB(0, 0, 0)
Exit.BorderSizePixel = 0
Exit.Position = UDim2.new(0.920000017, 0, 0.100000001, 0)
Exit.Size = UDim2.new(0, 40, 0, 40)
Exit.Image = "http://www.roblox.com/asset/?id=6035047409"

Minimize.Name = "Minimize"
Minimize.Parent = Topbar
Minimize.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Minimize.BackgroundTransparency = 1.000
Minimize.BorderColor3 = Color3.fromRGB(0, 0, 0)
Minimize.BorderSizePixel = 0
Minimize.Position = UDim2.new(0.839999974, 0, 0.100000001, 0)
Minimize.Size = UDim2.new(0, 40, 0, 40)
Minimize.Image = "http://www.roblox.com/asset/?id=6026568240"

UICorner.Parent = Topbar

Content.Name = "Content"
Content.Parent = Main
Content.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Content.BorderColor3 = Color3.fromRGB(0, 0, 0)
Content.BorderSizePixel = 0
Content.Position = UDim2.new(0, 0, 0.164516136, 0)
Content.Size = UDim2.new(0, 500, 0, 259)

UICorner_2.Parent = Content

ScrollingFrame.Parent = Content
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame.BackgroundTransparency = 1.000
ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Size = UDim2.new(0, 500, 0, 247)
ScrollingFrame.ScrollBarThickness = 8

UIListLayout.Parent = ScrollingFrame
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 8)

SectionTemplade.Name = "SectionTemplade"
SectionTemplade.Parent = ScrollingFrame
SectionTemplade.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SectionTemplade.BackgroundTransparency = 1.000
SectionTemplade.BorderColor3 = Color3.fromRGB(0, 0, 0)
SectionTemplade.BorderSizePixel = 0
SectionTemplade.Size = UDim2.new(0, 490, 0, 50)

TextLabel_2.Parent = SectionTemplade
TextLabel_2.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0.5, 0, 0.5, 0)
TextLabel_2.Size = UDim2.new(0, 270, 0, 45)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "Scripts"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextWrapped = true

DiscordButtonTemplade.Name = "DiscordButtonTemplade"
DiscordButtonTemplade.Parent = ScrollingFrame
DiscordButtonTemplade.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
DiscordButtonTemplade.BorderColor3 = Color3.fromRGB(0, 0, 0)
DiscordButtonTemplade.BorderSizePixel = 0
DiscordButtonTemplade.Position = UDim2.new(0, 0, 0.22267206, 0)
DiscordButtonTemplade.Size = UDim2.new(0, 489, 0, 65)

UICorner_3.Parent = DiscordButtonTemplade

ImageLabel_2.Parent = DiscordButtonTemplade
ImageLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_2.BackgroundTransparency = 1.000
ImageLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel_2.BorderSizePixel = 0
ImageLabel_2.Position = UDim2.new(0, 0, -0.115384616, 0)
ImageLabel_2.Size = UDim2.new(0, 72, 0, 72)
ImageLabel_2.Image = "http://www.roblox.com/asset/?id=6035056475"

TextLabel_3.Parent = DiscordButtonTemplade
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_3.BorderSizePixel = 0
TextLabel_3.Position = UDim2.new(0.15337424, 0, 0, 0)
TextLabel_3.Size = UDim2.new(0, 176, 0, 33)
TextLabel_3.Font = Enum.Font.SourceSans
TextLabel_3.Text = "Discord [     ]"
TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.TextScaled = true
TextLabel_3.TextSize = 14.000
TextLabel_3.TextWrapped = true
TextLabel_3.TextXAlignment = Enum.TextXAlignment.Left

ImageLabel_3.Parent = TextLabel_3
ImageLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_3.BackgroundTransparency = 1.000
ImageLabel_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel_3.BorderSizePixel = 0
ImageLabel_3.Position = UDim2.new(0.556818187, 0, 0.121212125, 0)
ImageLabel_3.Size = UDim2.new(0, 25, 0, 25)
ImageLabel_3.Image = "rbxassetid://7734010488"

TextLabel_4.Parent = DiscordButtonTemplade
TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.BackgroundTransparency = 1.000
TextLabel_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_4.BorderSizePixel = 0
TextLabel_4.Position = UDim2.new(0.15337424, 0, 0.461538464, 0)
TextLabel_4.Size = UDim2.new(0, 417, 0, 39)
TextLabel_4.Font = Enum.Font.SourceSans
TextLabel_4.Text = "Quieres ayudar con el desarrollo de Aurora, unete a nuestro discord principal para darnos ideas y mejorar Aurora"
TextLabel_4.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.TextScaled = true
TextLabel_4.TextSize = 14.000
TextLabel_4.TextWrapped = true
TextLabel_4.TextXAlignment = Enum.TextXAlignment.Left

CopyDC.Name = "CopyDC"
CopyDC.Parent = DiscordButtonTemplade
CopyDC.AnchorPoint = Vector2.new(0.5, 0.5)
CopyDC.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CopyDC.BackgroundTransparency = 1.000
CopyDC.BorderColor3 = Color3.fromRGB(0, 0, 0)
CopyDC.BorderSizePixel = 0
CopyDC.Position = UDim2.new(0.5, 0, 0.5, 0)
CopyDC.Size = UDim2.new(1, 0, 1, 0)
CopyDC.Font = Enum.Font.SourceSans
CopyDC.Text = ""
CopyDC.TextColor3 = Color3.fromRGB(0, 0, 0)
CopyDC.TextSize = 14.000
CopyDC.MouseButton1Up:Connect(function()
	setclipboard("https://discord.gg/dg2M4JVEz4")
end)

PromotionTemplade.Name = "PromotionTemplade"
PromotionTemplade.Parent = ScrollingFrame
PromotionTemplade.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
PromotionTemplade.BorderColor3 = Color3.fromRGB(0, 0, 0)
PromotionTemplade.BorderSizePixel = 0
PromotionTemplade.Position = UDim2.new(0, 0, 0.530364394, 0)
PromotionTemplade.Size = UDim2.new(0, 489, 0, 102)

UICorner_4.Parent = PromotionTemplade

ImageLabel_4.Parent = PromotionTemplade
ImageLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_4.BackgroundTransparency = 1.000
ImageLabel_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel_4.BorderSizePixel = 0
ImageLabel_4.Position = UDim2.new(0.0143149281, 0, 0.0500000007, 0)
ImageLabel_4.Size = UDim2.new(0, 90, 0, 90)
ImageLabel_4.Image = "http://www.roblox.com/asset/?id=6022852108"

TextLabel_5.Parent = PromotionTemplade
TextLabel_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_5.BackgroundTransparency = 1.000
TextLabel_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_5.BorderSizePixel = 0
TextLabel_5.Position = UDim2.new(0.198364004, 0, 0, 0)
TextLabel_5.Size = UDim2.new(0, 112, 0, 46)
TextLabel_5.Font = Enum.Font.SourceSans
TextLabel_5.Text = "Familia Albina"
TextLabel_5.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_5.TextScaled = true
TextLabel_5.TextSize = 14.000
TextLabel_5.TextWrapped = true

TextLabel_6.Parent = PromotionTemplade
TextLabel_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_6.BackgroundTransparency = 1.000
TextLabel_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_6.BorderSizePixel = 0
TextLabel_6.Position = UDim2.new(0.198364004, 0, 0.246062338, 0)
TextLabel_6.Size = UDim2.new(0, 392, 0, 64)
TextLabel_6.Font = Enum.Font.SourceSans
TextLabel_6.Text = "Servidor dedicado a los scripts con una comunidad muy buena y personas que ayudan con sus claves"
TextLabel_6.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_6.TextScaled = true
TextLabel_6.TextSize = 14.000
TextLabel_6.TextWrapped = true

ImageLabel_5.Parent = PromotionTemplade
ImageLabel_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_5.BackgroundTransparency = 1.000
ImageLabel_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel_5.BorderSizePixel = 0
ImageLabel_5.Position = UDim2.new(0.939231217, 0, 0.748663187, 0)
ImageLabel_5.Size = UDim2.new(0, 25, 0, 25)
ImageLabel_5.Image = "rbxassetid://7734010488"

CopyDCPromo.Name = "CopyDCPromo"
CopyDCPromo.Parent = PromotionTemplade
CopyDCPromo.AnchorPoint = Vector2.new(0.5, 0.5)
CopyDCPromo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CopyDCPromo.BackgroundTransparency = 1.000
CopyDCPromo.BorderColor3 = Color3.fromRGB(0, 0, 0)
CopyDCPromo.BorderSizePixel = 0
CopyDCPromo.Position = UDim2.new(0.5, 0, 0.5, 0)
CopyDCPromo.Size = UDim2.new(1, 0, 1, 0)
CopyDCPromo.Font = Enum.Font.SourceSans
CopyDCPromo.Text = ""
CopyDCPromo.TextColor3 = Color3.fromRGB(0, 0, 0)
CopyDCPromo.TextSize = 14.000
CopyDCPromo.MouseButton1Up:Connect(function()
	setclipboard("https://discord.gg/aVVfVb5enX")
end)

ButtonTemplade.Name = "ButtonTemplade"
ButtonTemplade.Parent = ScrollingFrame
ButtonTemplade.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
ButtonTemplade.BorderColor3 = Color3.fromRGB(0, 0, 0)
ButtonTemplade.BorderSizePixel = 0
ButtonTemplade.Position = UDim2.new(0, 0, 0.493927121, 0)
ButtonTemplade.Size = UDim2.new(0, 489, 0, 75)

UICorner_5.Parent = ButtonTemplade

ImageLabel_6.Parent = ButtonTemplade
ImageLabel_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_6.BackgroundTransparency = 1.000
ImageLabel_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel_6.BorderSizePixel = 0
ImageLabel_6.Size = UDim2.new(0, 75, 0, 75)
ImageLabel_6.Image = "http://www.roblox.com/asset/?id=6034848748"

TextLabel_7.Parent = ButtonTemplade
TextLabel_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_7.BackgroundTransparency = 1.000
TextLabel_7.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_7.BorderSizePixel = 0
TextLabel_7.Position = UDim2.new(0.179959103, 0, 0, 0)
TextLabel_7.Size = UDim2.new(0, 110, 0, 34)
TextLabel_7.Font = Enum.Font.SourceSans
TextLabel_7.Text = "HoHo Hub"
TextLabel_7.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_7.TextScaled = true
TextLabel_7.TextSize = 14.000
TextLabel_7.TextWrapped = true
TextLabel_7.TextXAlignment = Enum.TextXAlignment.Left

TextLabel_8.Parent = ButtonTemplade
TextLabel_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_8.BackgroundTransparency = 1.000
TextLabel_8.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_8.BorderSizePixel = 0
TextLabel_8.Position = UDim2.new(0.198364004, 0, 0.453333348, 0)
TextLabel_8.Size = UDim2.new(0, 183, 0, 23)
TextLabel_8.Font = Enum.Font.SourceSans
TextLabel_8.Text = "Sistema de key: Si"
TextLabel_8.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_8.TextScaled = true
TextLabel_8.TextSize = 14.000
TextLabel_8.TextWrapped = true
TextLabel_8.TextXAlignment = Enum.TextXAlignment.Left

ImageLabel_7.Parent = ButtonTemplade
ImageLabel_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_7.BackgroundTransparency = 1.000
ImageLabel_7.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel_7.BorderSizePixel = 0
ImageLabel_7.Position = UDim2.new(0.94741118, 0, 0.655330002, 0)
ImageLabel_7.Size = UDim2.new(0, 25, 0, 25)
ImageLabel_7.Image = "rbxassetid://7734010488"

Load.Name = "Load"
Load.Parent = ButtonTemplade
Load.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Load.BackgroundTransparency = 1.000
Load.BorderColor3 = Color3.fromRGB(0, 0, 0)
Load.BorderSizePixel = 0
Load.Size = UDim2.new(1, 0, 1, 0)
Load.Font = Enum.Font.SourceSans
Load.Text = ""
Load.TextColor3 = Color3.fromRGB(0, 0, 0)
Load.TextSize = 14.000
Load.MouseButton1Up:Connect(function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI'))()
end)

ButtonTemplade_2.Name = "ButtonTemplade"
ButtonTemplade_2.Parent = ScrollingFrame
ButtonTemplade_2.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
ButtonTemplade_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
ButtonTemplade_2.BorderSizePixel = 0
ButtonTemplade_2.Position = UDim2.new(0, 0, 0.493927121, 0)
ButtonTemplade_2.Size = UDim2.new(0, 489, 0, 75)

UICorner_6.Parent = ButtonTemplade_2

ImageLabel_8.Parent = ButtonTemplade_2
ImageLabel_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_8.BackgroundTransparency = 1.000
ImageLabel_8.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel_8.BorderSizePixel = 0
ImageLabel_8.Size = UDim2.new(0, 75, 0, 75)
ImageLabel_8.Image = "http://www.roblox.com/asset/?id=6034848748"

TextLabel_9.Parent = ButtonTemplade_2
TextLabel_9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_9.BackgroundTransparency = 1.000
TextLabel_9.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_9.BorderSizePixel = 0
TextLabel_9.Position = UDim2.new(0.179959103, 0, 0, 0)
TextLabel_9.Size = UDim2.new(0, 110, 0, 34)
TextLabel_9.Font = Enum.Font.SourceSans
TextLabel_9.Text = "M-Triet Hub"
TextLabel_9.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_9.TextScaled = true
TextLabel_9.TextSize = 14.000
TextLabel_9.TextWrapped = true
TextLabel_9.TextXAlignment = Enum.TextXAlignment.Left

TextLabel_10.Parent = ButtonTemplade_2
TextLabel_10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_10.BackgroundTransparency = 1.000
TextLabel_10.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_10.BorderSizePixel = 0
TextLabel_10.Position = UDim2.new(0.198364004, 0, 0.453333348, 0)
TextLabel_10.Size = UDim2.new(0, 183, 0, 23)
TextLabel_10.Font = Enum.Font.SourceSans
TextLabel_10.Text = "Sistema de key: Desconocido"
TextLabel_10.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_10.TextScaled = true
TextLabel_10.TextSize = 14.000
TextLabel_10.TextWrapped = true
TextLabel_10.TextXAlignment = Enum.TextXAlignment.Left

ImageLabel_9.Parent = ButtonTemplade_2
ImageLabel_9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_9.BackgroundTransparency = 1.000
ImageLabel_9.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel_9.BorderSizePixel = 0
ImageLabel_9.Position = UDim2.new(0.94741118, 0, 0.655330002, 0)
ImageLabel_9.Size = UDim2.new(0, 25, 0, 25)
ImageLabel_9.Image = "rbxassetid://7734010488"

Load_2.Name = "Load"
Load_2.Parent = ButtonTemplade_2
Load_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Load_2.BackgroundTransparency = 1.000
Load_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Load_2.BorderSizePixel = 0
Load_2.Size = UDim2.new(1, 0, 1, 0)
Load_2.Font = Enum.Font.SourceSans
Load_2.Text = ""
Load_2.TextColor3 = Color3.fromRGB(0, 0, 0)
Load_2.TextSize = 14.000
Load_2.MouseButton1Up:Connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Minhtriettt/Free-Script/main/MTriet-Hub.lua"))()
end)

ButtonTemplade_3.Name = "ButtonTemplade"
ButtonTemplade_3.Parent = ScrollingFrame
ButtonTemplade_3.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
ButtonTemplade_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
ButtonTemplade_3.BorderSizePixel = 0
ButtonTemplade_3.Position = UDim2.new(0, 0, 0.493927121, 0)
ButtonTemplade_3.Size = UDim2.new(0, 489, 0, 75)

UICorner_7.Parent = ButtonTemplade_3

ImageLabel_10.Parent = ButtonTemplade_3
ImageLabel_10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_10.BackgroundTransparency = 1.000
ImageLabel_10.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel_10.BorderSizePixel = 0
ImageLabel_10.Size = UDim2.new(0, 75, 0, 75)
ImageLabel_10.Image = "http://www.roblox.com/asset/?id=6034848748"

TextLabel_11.Parent = ButtonTemplade_3
TextLabel_11.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_11.BackgroundTransparency = 1.000
TextLabel_11.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_11.BorderSizePixel = 0
TextLabel_11.Position = UDim2.new(0.179959103, 0, 0, 0)
TextLabel_11.Size = UDim2.new(0, 110, 0, 34)
TextLabel_11.Font = Enum.Font.SourceSans
TextLabel_11.Text = "Speed Hub"
TextLabel_11.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_11.TextScaled = true
TextLabel_11.TextSize = 14.000
TextLabel_11.TextWrapped = true
TextLabel_11.TextXAlignment = Enum.TextXAlignment.Left

TextLabel_12.Parent = ButtonTemplade_3
TextLabel_12.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_12.BackgroundTransparency = 1.000
TextLabel_12.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_12.BorderSizePixel = 0
TextLabel_12.Position = UDim2.new(0.198364004, 0, 0.453333348, 0)
TextLabel_12.Size = UDim2.new(0, 183, 0, 23)
TextLabel_12.Font = Enum.Font.SourceSans
TextLabel_12.Text = "Sistema de key: Si"
TextLabel_12.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_12.TextScaled = true
TextLabel_12.TextSize = 14.000
TextLabel_12.TextWrapped = true
TextLabel_12.TextXAlignment = Enum.TextXAlignment.Left

ImageLabel_11.Parent = ButtonTemplade_3
ImageLabel_11.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_11.BackgroundTransparency = 1.000
ImageLabel_11.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel_11.BorderSizePixel = 0
ImageLabel_11.Position = UDim2.new(0.94741118, 0, 0.655330002, 0)
ImageLabel_11.Size = UDim2.new(0, 25, 0, 25)
ImageLabel_11.Image = "rbxassetid://7734010488"

Load_3.Name = "Load"
Load_3.Parent = ButtonTemplade_3
Load_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Load_3.BackgroundTransparency = 1.000
Load_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
Load_3.BorderSizePixel = 0
Load_3.Size = UDim2.new(1, 0, 1, 0)
Load_3.Font = Enum.Font.SourceSans
Load_3.Text = ""
Load_3.TextColor3 = Color3.fromRGB(0, 0, 0)
Load_3.TextSize = 14.000
Load_3.MouseButton1Up:Connect(function()
	loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ahmadsgamer2/Script--Game/main/Script%20Game"))() 
end)

ButtonTemplade_4.Name = "ButtonTemplade"
ButtonTemplade_4.Parent = ScrollingFrame
ButtonTemplade_4.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
ButtonTemplade_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
ButtonTemplade_4.BorderSizePixel = 0
ButtonTemplade_4.Position = UDim2.new(0, 0, 0.493927121, 0)
ButtonTemplade_4.Size = UDim2.new(0, 489, 0, 75)

UICorner_8.Parent = ButtonTemplade_4

ImageLabel_12.Parent = ButtonTemplade_4
ImageLabel_12.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_12.BackgroundTransparency = 1.000
ImageLabel_12.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel_12.BorderSizePixel = 0
ImageLabel_12.Size = UDim2.new(0, 75, 0, 75)
ImageLabel_12.Image = "http://www.roblox.com/asset/?id=6034848748"

TextLabel_13.Parent = ButtonTemplade_4
TextLabel_13.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_13.BackgroundTransparency = 1.000
TextLabel_13.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_13.BorderSizePixel = 0
TextLabel_13.Position = UDim2.new(0.179959103, 0, 0, 0)
TextLabel_13.Size = UDim2.new(0, 110, 0, 34)
TextLabel_13.Font = Enum.Font.SourceSans
TextLabel_13.Text = "Fai Fao"
TextLabel_13.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_13.TextScaled = true
TextLabel_13.TextSize = 14.000
TextLabel_13.TextWrapped = true
TextLabel_13.TextXAlignment = Enum.TextXAlignment.Left

TextLabel_14.Parent = ButtonTemplade_4
TextLabel_14.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_14.BackgroundTransparency = 1.000
TextLabel_14.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_14.BorderSizePixel = 0
TextLabel_14.Position = UDim2.new(0.198364004, 0, 0.453333348, 0)
TextLabel_14.Size = UDim2.new(0, 183, 0, 23)
TextLabel_14.Font = Enum.Font.SourceSans
TextLabel_14.Text = "Sistema de key: Desconocido"
TextLabel_14.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_14.TextScaled = true
TextLabel_14.TextSize = 14.000
TextLabel_14.TextWrapped = true
TextLabel_14.TextXAlignment = Enum.TextXAlignment.Left

ImageLabel_13.Parent = ButtonTemplade_4
ImageLabel_13.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_13.BackgroundTransparency = 1.000
ImageLabel_13.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel_13.BorderSizePixel = 0
ImageLabel_13.Position = UDim2.new(0.94741118, 0, 0.655330002, 0)
ImageLabel_13.Size = UDim2.new(0, 25, 0, 25)
ImageLabel_13.Image = "rbxassetid://7734010488"

Load_4.Name = "Load"
Load_4.Parent = ButtonTemplade_4
Load_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Load_4.BackgroundTransparency = 1.000
Load_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
Load_4.BorderSizePixel = 0
Load_4.Size = UDim2.new(1, 0, 1, 0)
Load_4.Font = Enum.Font.SourceSans
Load_4.Text = ""
Load_4.TextColor3 = Color3.fromRGB(0, 0, 0)
Load_4.TextSize = 14.000
Load_4.MouseButton1Up:Connect(function()
	loadstring(game:HttpGet"https://raw.githubusercontent.com/PNguyen0199/Script/main/Fai-Fao-Ver2.lua")()
end)

ButtonTemplade_5.Name = "ButtonTemplade"
ButtonTemplade_5.Parent = ScrollingFrame
ButtonTemplade_5.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
ButtonTemplade_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
ButtonTemplade_5.BorderSizePixel = 0
ButtonTemplade_5.Position = UDim2.new(0, 0, 0.493927121, 0)
ButtonTemplade_5.Size = UDim2.new(0, 489, 0, 75)

UICorner_9.Parent = ButtonTemplade_5

ImageLabel_14.Parent = ButtonTemplade_5
ImageLabel_14.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_14.BackgroundTransparency = 1.000
ImageLabel_14.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel_14.BorderSizePixel = 0
ImageLabel_14.Size = UDim2.new(0, 75, 0, 75)
ImageLabel_14.Image = "http://www.roblox.com/asset/?id=6034848748"

TextLabel_15.Parent = ButtonTemplade_5
TextLabel_15.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_15.BackgroundTransparency = 1.000
TextLabel_15.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_15.BorderSizePixel = 0
TextLabel_15.Position = UDim2.new(0.179959103, 0, 0, 0)
TextLabel_15.Size = UDim2.new(0, 110, 0, 34)
TextLabel_15.Font = Enum.Font.SourceSans
TextLabel_15.Text = "RedZhub"
TextLabel_15.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_15.TextScaled = true
TextLabel_15.TextSize = 14.000
TextLabel_15.TextWrapped = true
TextLabel_15.TextXAlignment = Enum.TextXAlignment.Left

TextLabel_16.Parent = ButtonTemplade_5
TextLabel_16.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_16.BackgroundTransparency = 1.000
TextLabel_16.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_16.BorderSizePixel = 0
TextLabel_16.Position = UDim2.new(0.198364004, 0, 0.453333348, 0)
TextLabel_16.Size = UDim2.new(0, 183, 0, 23)
TextLabel_16.Font = Enum.Font.SourceSans
TextLabel_16.Text = "Sistema de key: Desconocido"
TextLabel_16.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_16.TextScaled = true
TextLabel_16.TextSize = 14.000
TextLabel_16.TextWrapped = true
TextLabel_16.TextXAlignment = Enum.TextXAlignment.Left

ImageLabel_15.Parent = ButtonTemplade_5
ImageLabel_15.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_15.BackgroundTransparency = 1.000
ImageLabel_15.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel_15.BorderSizePixel = 0
ImageLabel_15.Position = UDim2.new(0.94741118, 0, 0.655330002, 0)
ImageLabel_15.Size = UDim2.new(0, 25, 0, 25)
ImageLabel_15.Image = "rbxassetid://7734010488"

Load_5.Name = "Load"
Load_5.Parent = ButtonTemplade_5
Load_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Load_5.BackgroundTransparency = 1.000
Load_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
Load_5.BorderSizePixel = 0
Load_5.Size = UDim2.new(1, 0, 1, 0)
Load_5.Font = Enum.Font.SourceSans
Load_5.Text = ""
Load_5.TextColor3 = Color3.fromRGB(0, 0, 0)
Load_5.TextSize = 14.000
Load_5.MouseButton1Up:Connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/BloxFruits/main/redz9999"))()
end)

UICorner_10.Parent = Main

Minimized.Name = "Minimized"
Minimized.Parent = V3UI
Minimized.AnchorPoint = Vector2.new(0.5, 0)
Minimized.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Minimized.BorderColor3 = Color3.fromRGB(0, 0, 0)
Minimized.BorderSizePixel = 0
Minimized.Position = UDim2.new(0.5, 0, 0.0172176305, 0)
Minimized.Size = UDim2.new(0, 30, 0, 30)
Minimized.Active = true
Minimized.Draggable = true

UICorner_11.Parent = Minimized

ImageLabel_16.Parent = Minimized
ImageLabel_16.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_16.BackgroundTransparency = 1.000
ImageLabel_16.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel_16.BorderSizePixel = 0
ImageLabel_16.Size = UDim2.new(1, 0, 1, 0)
ImageLabel_16.Image = "http://www.roblox.com/asset/?id=6031079158"

TextButton.Parent = Minimized
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BackgroundTransparency = 1.000
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Size = UDim2.new(1, 0, 1, 0)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = ""
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextSize = 14.000

-- Scripts:

local function KSNK_fake_script() -- Exit.LocalScript 
	local script = Instance.new('LocalScript', Exit)

	script.Parent.MouseButton1Up:Connect(function()
		script.Parent.Parent.Parent.Parent.Enabled = false
	end)
end
coroutine.wrap(KSNK_fake_script)()
local function KXMRBQ_fake_script() -- Minimize.LocalScript 
	local script = Instance.new('LocalScript', Minimize)

	script.Parent.MouseButton1Up:Connect(function()
		script.Parent.Parent.Parent.Visible = false
		script.Parent.Parent.Parent.Parent.Minimized.Visible = true
	end)
end
coroutine.wrap(KXMRBQ_fake_script)()
local function WYTKX_fake_script() -- Main.LocalScript 
	local script = Instance.new('LocalScript', Main)

	script.Parent.Active = true
	script.Parent.Draggable = true
end
coroutine.wrap(WYTKX_fake_script)()
local function PMCPHF_fake_script() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript', TextButton)

	script.Parent.MouseButton1Up:Connect(function()
		script.Parent.Parent.Visible = false
		script.Parent.Parent.Parent.Main.Visible = true
	end)
end
coroutine.wrap(PMCPHF_fake_script)()
