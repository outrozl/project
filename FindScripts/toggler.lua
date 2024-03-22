local G2L = {};

-- StarterGui.Unnamed_toggle_nev
G2L["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
G2L["1"]["Name"] = [[Unnamed_toggle_nev]];
G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;

-- StarterGui.Unnamed_toggle_nev.Main
G2L["2"] = Instance.new("Frame", G2L["1"]);
G2L["2"]["BorderSizePixel"] = 0;
G2L["2"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["2"]["Size"] = UDim2.new(0, 35, 0, 35);
G2L["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2"]["Position"] = UDim2.new(0.9686478972434998, 0, 0.5, 0);
G2L["2"]["Name"] = [[Main]];

-- StarterGui.Unnamed_toggle_nev.Main.UICorner
G2L["3"] = Instance.new("UICorner", G2L["2"]);


-- StarterGui.Unnamed_toggle_nev.Main.ImageButton
G2L["4"] = Instance.new("ImageButton", G2L["2"]);
G2L["4"]["BorderSizePixel"] = 0;
G2L["4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["4"]["Image"] = [[rbxassetid://6034227139]];
G2L["4"]["Size"] = UDim2.new(0, 35, 0, 35);
G2L["4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["4"]["BackgroundTransparency"] = 1;
G2L["4"]["MouseButton1Up"]:Connect(function()
	game:GetService("VirtualInputManager"):SendKeyEvent(true, "RightShift" , false , game)
end)


return G2L["1"], require;
