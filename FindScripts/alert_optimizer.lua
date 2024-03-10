--[=[
 d888b  db    db d888888b      .d888b.      db      db    db  .d8b.  
88' Y8b 88    88   `88'        VP  `8D      88      88    88 d8' `8b 
88      88    88    88            odD'      88      88    88 88ooo88 
88  ooo 88    88    88          .88'        88      88    88 88~~~88 
88. ~8~ 88b  d88   .88.        j88.         88booo. 88b  d88 88   88 
 Y888P  ~Y8888P' Y888888P      888888D      Y88888P ~Y8888P' YP   YP  CONVERTER
]=]

-- Instances: 7 | Scripts: 0 | Modules: 0
local G2L = {};

-- StarterGui.Unnamed_Nev
G2L["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
G2L["1"]["Name"] = [[Unnamed_Nev]];
G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;

-- StarterGui.Unnamed_Nev.Frame
G2L["2"] = Instance.new("Frame", G2L["1"]);
G2L["2"]["BorderSizePixel"] = 0;
G2L["2"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["2"]["Size"] = UDim2.new(0, 340, 0, 265);
G2L["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

-- StarterGui.Unnamed_Nev.Frame.file-warning
G2L["3"] = Instance.new("ImageLabel", G2L["2"]);
G2L["3"]["BorderSizePixel"] = 0;
G2L["3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3"]["ImageColor3"] = Color3.fromRGB(255, 0, 0);
G2L["3"]["ImageTransparency"] = 0.4300000071525574;
G2L["3"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["3"]["Image"] = [[rbxassetid://15269252717]];
G2L["3"]["ImageRectSize"] = Vector2.new(256, 256);
G2L["3"]["Size"] = UDim2.new(0, 45, 0, 45);
G2L["3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3"]["Name"] = [[file-warning]];
G2L["3"]["ImageRectOffset"] = Vector2.new(514, 0);
G2L["3"]["BackgroundTransparency"] = 1;
G2L["3"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

-- StarterGui.Unnamed_Nev.Frame.TextLabel
G2L["4"] = Instance.new("TextLabel", G2L["2"]);
G2L["4"]["TextWrapped"] = true;
G2L["4"]["BorderSizePixel"] = 0;
G2L["4"]["TextScaled"] = true;
G2L["4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["4"]["TextSize"] = 14;
G2L["4"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4"]["Size"] = UDim2.new(0, 200, 0, 110);
G2L["4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4"]["Text"] = [[Este script no se puede quitar a menos que salgas del juego y vuelvas a entrar]];
G2L["4"]["BackgroundTransparency"] = 1;
G2L["4"]["Position"] = UDim2.new(0.20588235557079315, 0, 0.22641509771347046, 0);

-- StarterGui.Unnamed_Nev.Frame.Run
G2L["5"] = Instance.new("TextButton", G2L["2"]);
G2L["5"]["TextWrapped"] = true;
G2L["5"]["BorderSizePixel"] = 0;
G2L["5"]["TextScaled"] = true;
G2L["5"]["BackgroundColor3"] = Color3.fromRGB(255, 0, 0);
G2L["5"]["TextSize"] = 14;
G2L["5"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["5"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5"]["Size"] = UDim2.new(0, 200, 0, 30);
G2L["5"]["Name"] = [[Run]];
G2L["5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5"]["Text"] = [[Ejecutar]];
G2L["5"]["Position"] = UDim2.new(0.20588235557079315, 0, 0.6867924332618713, 0);
G2L["5"]["MouseButton1Up"]:Connect(function()
	_G.Settings = {
		Players = {
			["Ignore Me"] = true, -- Ignore your Character
			["Ignore Others"] = true-- Ignore other Characters
		},
		Meshes = {
			Destroy = false, -- Destroy Meshes
			LowDetail = true -- Low detail meshes (NOT SURE IT DOES ANYTHING)
		},
		Images = {
			Invisible = true, -- Invisible Images
			LowDetail = false, -- Low detail images (NOT SURE IT DOES ANYTHING)
			Destroy = false, -- Destroy Images
		},
		["No Particles"] = true, -- Disables all ParticleEmitter, Trail, Smoke, Fire and Sparkles
		["No Camera Effects"] = true, -- Disables all PostEffect's (Camera/Lighting Effects)
		["No Explosions"] = true, -- Makes Explosion's invisible
		["No Clothes"] = true, -- Removes Clothing from the game
		["Low Water Graphics"] = true, -- Removes Water Quality
		["No Shadows"] = true, -- Remove Shadows
		["Low Rendering"] = true, -- Lower Rendering
		["Low Quality Parts"] = true -- Lower quality parts
	}
	loadstring(game:HttpGet("https://raw.githubusercontent.com/CasperFlyModz/discord.gg-rips/main/FPSBooster.lua"))()
	GL2["1"]:Destroy()
end)

-- StarterGui.Unnamed_Nev.Frame.Norun
G2L["6"] = Instance.new("TextButton", G2L["2"]);
G2L["6"]["TextWrapped"] = true;
G2L["6"]["BorderSizePixel"] = 0;
G2L["6"]["TextScaled"] = true;
G2L["6"]["BackgroundColor3"] = Color3.fromRGB(26, 26, 26);
G2L["6"]["TextSize"] = 14;
G2L["6"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["6"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6"]["Size"] = UDim2.new(0, 200, 0, 30);
G2L["6"]["Name"] = [[Norun]];
G2L["6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6"]["Text"] = [[No ejecutar]];
G2L["6"]["Position"] = UDim2.new(0.20588235557079315, 0, 0.8264151215553284, 0);
G2L["6"]["MouseButton1Up"]:Connect(function()
	G2L["1"]:Destroy()
end)

-- StarterGui.Unnamed_Nev.Frame.UIStroke
G2L["7"] = Instance.new("UIStroke", G2L["2"]);
G2L["7"]["Color"] = Color3.fromRGB(148, 148, 148);
G2L["7"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


return G2L["1"], require;
