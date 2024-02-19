local Mercury = loadstring(game:HttpGet("https://raw.githubusercontent.com/deeeity/mercury-lib/master/src.lua"))()

local GUI = Mercury:Create{
    Name = "Nev | BF | Select Lang",
    Size = UDim2.fromOffset(600, 400),
    Theme = Mercury.Themes.Dark,
    Link = "https://github.com/outrozl/project/blob/main/nevscripthub/selectlang"
}

local es = GUI:Tab{
	Name = "Selecionar Idioma",
	Icon = "rbxassetid://6031225812"
}

local en = GUI:Tab{
	Name = "Select Language",
	Icon = "rbxassetid://6031225812"
}

local pr = GUI:Tab{
	Name = "Seleziona Lingua",
	Icon = "rbxassetid://6031225812"
}

local jp = GUI:Tab{
    Name = "言語を選択",
    Icon = "rbxassetid://6031225812"
}

es:Button{
	Name = "Español",
	Description = nil,
	Callback = function() 
        loadstring(game:HttpGet("https://raw.githubusercontent.com/outrozl/project/main/nevscripthub/scripts/bf-es.lua"))()
    end
}

en:Button{
	Name = "English",
	Description = nil,
	Callback = function() 
        loadstring(game:HttpGet("https://raw.githubusercontent.com/outrozl/project/main/nevscripthub/scripts/bf-en.lua"))()
    end
}

pr:Button{
	Name = "Seleziona",
	Description = nil,
	Callback = function() 
        loadstring(game:HttpGet("https://raw.githubusercontent.com/outrozl/project/main/nevscripthub/scripts/bf-pr.lua"))()
    end
}

jp:Button{
    Name = "言語を選択",
    Description = nil,
    Callback = function() 
        loadstring(game:HttpGet("https://raw.githubusercontent.com/outrozl/project/main/nevscripthub/scripts/bf-jp.lua"))()
    end
}
