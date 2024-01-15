-- Gui to Lua
-- Version: 3.2

-- Instances:

local Nev_Project_Aurora = Instance.new("Folder")
local UIV4 = Instance.new("ScreenGui")
local Loading = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Content = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local ImageLabel = Instance.new("ImageLabel")
local UIGradient = Instance.new("UIGradient")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local Base = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local MainButton = Instance.new("ImageButton")
local ShutdownButton = Instance.new("ImageButton")
local UIGradient_2 = Instance.new("UIGradient")
local ImageLabel_2 = Instance.new("ImageLabel")
local ScriptsHolder = Instance.new("Frame")
local UICorner_4 = Instance.new("UICorner")
local ScrollingFrame = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local TextLabel_3 = Instance.new("TextLabel")
local Load = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local Load_2 = Instance.new("TextButton")
local UICorner_6 = Instance.new("UICorner")
local Load_3 = Instance.new("TextButton")
local UICorner_7 = Instance.new("UICorner")
local Load_4 = Instance.new("TextButton")
local UICorner_8 = Instance.new("UICorner")
local Load_5 = Instance.new("TextButton")
local UICorner_9 = Instance.new("UICorner")
local Load_6 = Instance.new("TextButton")
local UICorner_10 = Instance.new("UICorner")

--Properties:

Nev_Project_Aurora.Name = "Nev_Project_Aurora"
Nev_Project_Aurora.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

UIV4.Name = "UIV4"
UIV4.Parent = Nev_Project_Aurora
UIV4.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
UIV4.ResetOnSpawn = false

Loading.Name = "Loading"
Loading.Parent = UIV4
Loading.AnchorPoint = Vector2.new(0.5, 0.5)
Loading.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Loading.BackgroundTransparency = 0.350
Loading.BorderColor3 = Color3.fromRGB(0, 0, 0)
Loading.BorderSizePixel = 0
Loading.Position = UDim2.new(0.5, 0, 0.5, 0)
Loading.Size = UDim2.new(0, 380, 0, 270)

UICorner.Parent = Loading

Content.Name = "Content"
Content.Parent = Loading
Content.AnchorPoint = Vector2.new(0.5, 0.5)
Content.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Content.BorderColor3 = Color3.fromRGB(0, 0, 0)
Content.BorderSizePixel = 0
Content.Position = UDim2.new(0.5, 0, 0.5, 0)
Content.Size = UDim2.new(0, 250, 0, 190)

UICorner_2.Parent = Content

ImageLabel.Parent = Content
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(0.300000012, 0, 0, 0)
ImageLabel.Size = UDim2.new(0, 100, 0, 100)
ImageLabel.Image = "http://www.roblox.com/asset/?id=6034227139"
ImageLabel.ImageColor3 = Color3.fromRGB(0, 0, 0)

UIGradient.Rotation = 390.80145263671875
UIGradient.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 0.00), NumberSequenceKeypoint.new(1.00, 1.00)}
UIGradient.Parent = ImageLabel

TextLabel.Parent = Content
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.100000001, 0, 0.526315808, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 40)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Aurora"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

TextLabel_2.Parent = Content
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0, 0, 0.736842096, 0)
TextLabel_2.Size = UDim2.new(0, 250, 0, 40)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "by knev.dev.gg (https://discord.gg/dg2M4JVEz4)"
TextLabel_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextWrapped = true

Base.Name = "Base"
Base.Parent = UIV4
Base.AnchorPoint = Vector2.new(1, 0.5)
Base.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Base.BackgroundTransparency = 0.350
Base.BorderColor3 = Color3.fromRGB(0, 0, 0)
Base.BorderSizePixel = 0
Base.Position = UDim2.new(1, 0, 0.5, 0)
Base.Size = UDim2.new(0, 50, 0, 130)
Base.Visible = false

UICorner_3.Parent = Base

MainButton.Name = "MainButton"
MainButton.Parent = Base
MainButton.AnchorPoint = Vector2.new(0.5, 0.5)
MainButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MainButton.BackgroundTransparency = 1.000
MainButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
MainButton.BorderSizePixel = 0
MainButton.Position = UDim2.new(0.5, 0, 0.5, 0)
MainButton.Size = UDim2.new(0, 30, 0, 30)
MainButton.Image = "http://www.roblox.com/asset/?id=6022668883"

ShutdownButton.Name = "ShutdownButton"
ShutdownButton.Parent = Base
ShutdownButton.AnchorPoint = Vector2.new(0.5, 0.5)
ShutdownButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ShutdownButton.BackgroundTransparency = 1.000
ShutdownButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ShutdownButton.BorderSizePixel = 0
ShutdownButton.Position = UDim2.new(0.5, 0, 0.823076904, 0)
ShutdownButton.Size = UDim2.new(0, 30, 0, 30)
ShutdownButton.Image = "http://www.roblox.com/asset/?id=6031260781"
ShutdownButton.ImageColor3 = Color3.fromRGB(255, 0, 0)

UIGradient_2.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 0.59), NumberSequenceKeypoint.new(1.00, 0.00)}
UIGradient_2.Parent = ShutdownButton

ImageLabel_2.Parent = Base
ImageLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_2.BackgroundTransparency = 1.000
ImageLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel_2.BorderSizePixel = 0
ImageLabel_2.Position = UDim2.new(0.200000003, 0, 0.0384615399, 0)
ImageLabel_2.Size = UDim2.new(0, 30, 0, 30)
ImageLabel_2.Image = "http://www.roblox.com/asset/?id=6034227139"

ScriptsHolder.Name = "ScriptsHolder"
ScriptsHolder.Parent = UIV4
ScriptsHolder.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
ScriptsHolder.BackgroundTransparency = 0.250
ScriptsHolder.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScriptsHolder.BorderSizePixel = 0
ScriptsHolder.Position = UDim2.new(0.762405276, 0, 0.284090906, 0)
ScriptsHolder.Size = UDim2.new(0, 175, 0, 250)
ScriptsHolder.Visible = false

UICorner_4.Parent = ScriptsHolder

ScrollingFrame.Parent = ScriptsHolder
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame.BackgroundTransparency = 1.000
ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Position = UDim2.new(0.0285710804, 0, 0.0439999998, 0)
ScrollingFrame.Size = UDim2.new(0, 164, 0, 228)
ScrollingFrame.ScrollBarThickness = 7

UIListLayout.Parent = ScrollingFrame
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 5)

TextLabel_3.Parent = ScrollingFrame
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_3.BorderSizePixel = 0
TextLabel_3.Size = UDim2.new(0, 156, 0, 40)
TextLabel_3.Font = Enum.Font.SourceSans
TextLabel_3.Text = "Scripts"
TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.TextScaled = true
TextLabel_3.TextSize = 14.000
TextLabel_3.TextWrapped = true

Load.Name = "Load"
Load.Parent = ScrollingFrame
Load.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Load.BorderColor3 = Color3.fromRGB(0, 0, 0)
Load.BorderSizePixel = 0
Load.Position = UDim2.new(0, 0, 0.197368428, 0)
Load.Size = UDim2.new(0, 156, 0, 35)
Load.Font = Enum.Font.SourceSans
Load.Text = "HoHo Hub"
Load.TextColor3 = Color3.fromRGB(255, 255, 255)
Load.TextScaled = true
Load.TextSize = 14.000
Load.TextWrapped = true
Load.MouseButton1Up:Connect(function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI'))()
end)

UICorner_5.Parent = Load

Load_2.Name = "Load"
Load_2.Parent = ScrollingFrame
Load_2.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Load_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Load_2.BorderSizePixel = 0
Load_2.Position = UDim2.new(0, 0, 0.197368428, 0)
Load_2.Size = UDim2.new(0, 156, 0, 35)
Load_2.Font = Enum.Font.SourceSans
Load_2.Text = "Speed Hub"
Load_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Load_2.TextScaled = true
Load_2.TextSize = 14.000
Load_2.TextWrapped = true
Load_2.MouseButton1Up:Connect(function()
	loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ahmadsgamer2/Script--Game/main/Script%20Game"))() 
end)

UICorner_6.Parent = Load_2

Load_3.Name = "Load"
Load_3.Parent = ScrollingFrame
Load_3.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Load_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
Load_3.BorderSizePixel = 0
Load_3.Position = UDim2.new(0, 0, 0.197368428, 0)
Load_3.Size = UDim2.new(0, 156, 0, 35)
Load_3.Font = Enum.Font.SourceSans
Load_3.Text = "Fai Fao"
Load_3.TextColor3 = Color3.fromRGB(255, 255, 255)
Load_3.TextScaled = true
Load_3.TextSize = 14.000
Load_3.TextWrapped = true
Load_3.MouseButton1Up:Connect(function()
	loadstring(game:HttpGet"https://raw.githubusercontent.com/PNguyen0199/Script/main/Fai-Fao-Ver2.lua")()
end)

UICorner_7.Parent = Load_3

Load_4.Name = "Load"
Load_4.Parent = ScrollingFrame
Load_4.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Load_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
Load_4.BorderSizePixel = 0
Load_4.Position = UDim2.new(0, 0, 0.197368428, 0)
Load_4.Size = UDim2.new(0, 156, 0, 35)
Load_4.Font = Enum.Font.SourceSans
Load_4.Text = "M-Triet"
Load_4.TextColor3 = Color3.fromRGB(255, 255, 255)
Load_4.TextScaled = true
Load_4.TextSize = 14.000
Load_4.TextWrapped = true
Load_4.MouseButton1Up:Connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Minhtriettt/Free-Script/main/MTriet-Hub.lua"))()
end)

UICorner_8.Parent = Load_4

Load_5.Name = "Load"
Load_5.Parent = ScrollingFrame
Load_5.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Load_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
Load_5.BorderSizePixel = 0
Load_5.Position = UDim2.new(0, 0, 0.197368428, 0)
Load_5.Size = UDim2.new(0, 156, 0, 35)
Load_5.Font = Enum.Font.SourceSans
Load_5.Text = "ZenHub"
Load_5.TextColor3 = Color3.fromRGB(255, 255, 255)
Load_5.TextScaled = true
Load_5.TextSize = 14.000
Load_5.TextWrapped = true
Load_5.MouseButton1Up:Connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Kaizenofficiall/ZenHub/main/Loader", true))()
end)

UICorner_9.Parent = Load_5

Load_6.Name = "Load"
Load_6.Parent = ScrollingFrame
Load_6.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Load_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
Load_6.BorderSizePixel = 0
Load_6.Position = UDim2.new(0, 0, 0.197368428, 0)
Load_6.Size = UDim2.new(0, 156, 0, 35)
Load_6.Font = Enum.Font.SourceSans
Load_6.Text = "RedZHub"
Load_6.TextColor3 = Color3.fromRGB(255, 255, 255)
Load_6.TextScaled = true
Load_6.TextSize = 14.000
Load_6.TextWrapped = true
Load_6.MouseButton1Up:Connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/BloxFruits/main/redz9999"))() 
end)

UICorner_10.Parent = Load_6

-- Scripts:

local function MIJP_fake_script() -- Loading.LocalScript 
	local script = Instance.new('LocalScript', Loading)

	script.Parent.Visible = true
	wait(5)
	script.Parent.Visible = false
	script.Parent.Parent.Base.Visible = true
	
end
coroutine.wrap(MIJP_fake_script)()
local function MAOV_fake_script() -- MainButton.LocalScript 
	local script = Instance.new('LocalScript', MainButton)

	local scripts = script.Parent.Parent.Parent.ScriptsHolder
	
	script.Parent.MouseButton1Up:Connect(function()
		if scripts.Visible == true then
			scripts.Visible = false
		else
			scripts.Visible =  true
		end
	end)
end
coroutine.wrap(MAOV_fake_script)()
local function RWWO_fake_script() -- ShutdownButton.LocalScript 
	local script = Instance.new('LocalScript', ShutdownButton)

	script.Parent.MouseButton1Up:Connect(function()
		script.Parent.Parent.Parent.Enabled = false
	end)
end
coroutine.wrap(RWWO_fake_script)()
