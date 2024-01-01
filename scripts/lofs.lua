---------------------- [Legends Of Speed] ---------------------- 

----------- [FUNCTIONS] -----------

function Callback(answer)
	if answer == "Cargar" then
		loadstring(game:HttpGet(('https://raw.githubusercontent.com/ahmadsgamer2/Script--Game/main/Legends-of-speed'),true))()
	elseif answer == "No cargar" then
		print("no")
	end
end

function Callback2(answer)
	if answer == "Cargar" then
		loadstring(game:HttpGet("https://pastebin.com/raw/mqGPg69N"))()
	elseif answer == "No Cargar" then
		print("no")
	end
end

function Callback3(answer)
	if answer == "Cargar" then
		loadstring(game:HttpGet("https://raw.githubusercontent.com/ZixnineX/TXT-LEGEND-SPEED/main/text%201.txt"))()
	elseif answer == "No cargar" then
		print("no")
	end
end

----------- [CODE] -----------

local Bindable = Instance.new("BindableFunction")
Bindable.OnInvoke = Callback

game.StarterGui:SetCore("SendNotification", {
	Title = "Legends of speed 1";
	Text = "Podras cargar el script legends of speed 1";
	Duration = "120000";
	Button1 = "Cargar";
    Button2 = "No cargar";
	Icon = "rbxassetid://6034848748";
	Callback = Bindable
})

wait(1)

game.StarterGui:SetCore("SendNotification", {
	Title = "Legends of speed 2";
	Text = "Podras cargar el script legends of speed 2";
	Duration = "120000";
	Button1 = "Cargar";
	Button2 = "No cargar";
	Icon = "rbxassetid://6034848748";
	Callback2 = Bindable
})

wait(1)

game.StarterGui:SetCore("SendNotification", {
	Title = "Legends of speed 3";
	Text = "Podras cargar el script legends of speed 3";
	Duration = "120000";
	Button1 = "Cargar";
	Button2 = "No cargar";
	Icon = "rbxassetid://6034848748";
	Callback3 = Bindable
})
