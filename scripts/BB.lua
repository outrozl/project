---------------------- [Blade Ball] ---------------------- 

----------- [FUNCTIONS] -----------

function Callback(answer)
	if answer == "Cargar" then
		loadstring(game:HttpGet("https://github.com/SadlekAski/Scripts/raw/main/Blade%20Ball/Equip%20any%20ability.lua"))()
	elseif answer == "No cargar" then
		print("no")
	end
end

function Callback2(answer)
	if answer == "Cargar" then
		loadstring(game:HttpGet("https://raw.githubusercontent.com/1f0yt/community/main/RedCircleBlock"))()
	elseif answer == "No Cargar" then
		print("no")
	end
end

function Callback3(answer)
	if answer == "Cargar" then
		loadstring(game:HttpGet("https://raw.githubusercontent.com/3345-c-a-t-s-u-s/SourceLua/main/Blade_Ball.lua"))()
	elseif answer == "No cargar" then
		print("no")
	end
end

----------- [CODE] -----------

local Bindable = Instance.new("BindableFunction")
Bindable.OnInvoke = Callback

game.StarterGui:SetCore("SendNotification", {
	Title = "Inferno Hub";
	Text = "Podras cargar el script inferno hub";
	Duration = "120000";
	Button1 = "Cargar";
    Button2 = "No cargar";
	Icon = "rbxassetid://6034848748";
	Callback = Bindable
})

wait(1)

game.StarterGui:SetCore("SendNotification", {
	Title = "Auto bloquear circulo rojo";
	Text = "Podras cargar el script auto bloquear circulo rojo";
	Duration = "120000";
	Button1 = "Cargar";
	Button2 = "No cargar";
	Icon = "rbxassetid://6034848748";
	Callback2 = Bindable
})

wait(1)

game.StarterGui:SetCore("SendNotification", {
	Title = "Bedul Hub";
	Text = "Podras cargar el script bedul hub";
	Duration = "120000";
	Button1 = "Cargar";
	Button2 = "No cargar";
	Icon = "rbxassetid://6034848748";
	Callback3 = Bindable
})
