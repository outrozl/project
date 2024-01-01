---------------------- [Blox Fruits] ---------------------- 

----------- [LOCALS] -----------

local pl = game.Players.LocalPlayer.Name

----------- [FUNCTIONS] -----------

function Callback(answer)
	if answer == "Cargar" then
		loadstring(game:HttpGet("https://raw.githubusercontent.com/PNguyen0199/Script/main/Fai-Fao-Ver2.lua"))()
	elseif answer == "No cargar" then
		print("no")
	end
end

function Callback2(answer)
	if answer == "Cargar" then
		loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI'))()
	elseif answer == "No Cargar" then
		print("no")
	end
end

function Callback3(answer)
	if answer == "Cargar" then
		loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/BloxFruits/main/redz9999"))()
	elseif answer == "No cargar" then
		print("no")
	end
end

----------- [CODE] -----------

local Bindable = Instance.new("BindableFunction")
Bindable.OnInvoke = Callback

game.StarterGui:SetCore("SendNotification", {
	Title = "Fai Fao V2";
	Text = "Podras cargar el script Fai Fao V2";
	Duration = "120000";
	Button1 = "Cargar";
    Button2 = "No cargar";
	Icon = "rbxassetid://6034848748";
	Callback = Bindable
})

wait(1)

game.StarterGui:SetCore("SendNotification", {
	Title = "HoHo Hub";
	Text = "Podras cargar el script HoHo Hub";
	Duration = "120000";
	Button1 = "Cargar";
	Button2 = "No cargar";
	Icon = "rbxassetid://6034848748";
	Callback2 = Bindable
})

wait(1)

game.StarterGui:SetCore("SendNotification", {
	Title = "RedZHub";
	Text = "Podras cargar el script Redzhub";
	Duration = "120000";
	Button1 = "Cargar";
	Button2 = "No cargar";
	Icon = "rbxassetid://6034848748";
	Callback3 = Bindable
})