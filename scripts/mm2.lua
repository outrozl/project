---------------------- [MM2] ---------------------- 

----------- [FUNCTIONS] -----------

function Callback(answer)
	if answer == "Cargar" then
		loadstring(game:HttpGet('https://raw.githubusercontent.com/raw-scriptpastebin/raw/main/B_Genesis'))()
	elseif answer == "No cargar" then
		print("no")
	end
end

function Callback2(answer)
	if answer == "Cargar" then
		getgenv().mainKey = "nil"
        local a,b,c,d,e=loadstring,request or http_request or (http and http.request) or (syn and syn.request),assert,tostring,"https\58//api.eclipsehub.xyz/auth";c(a and b,"Executor not Supported")a(b({Url=e.."\?\107e\121\61"..d(mainKey),Headers={["User-Agent"]="Eclipse"}}).Body)()
	elseif answer == "No Cargar" then
		print("no")
	end
end

function Callback3(answer)
	if answer == "Cargar" then
		loadstring(game:GetObjects("rbxassetid://4001118261")[1].Source)()
	elseif answer == "No cargar" then
		print("no")
	end
end

----------- [CODE] -----------

local Bindable = Instance.new("BindableFunction")
Bindable.OnInvoke = Callback

game.StarterGui:SetCore("SendNotification", {
	Title = "B Genesis (Funciona)";
	Text = "Podras cargar el script B Genesis";
	Duration = "120000";
	Button1 = "Cargar";
    Button2 = "No cargar";
	Icon = "rbxassetid://6034848748";
	Callback = Bindable
})

wait(1)

game.StarterGui:SetCore("SendNotification", {
	Title = "Eclipse Hub (Unstable)";
	Text = "Podras cargar el script Eclipse Hub";
	Duration = "120000";
	Button1 = "Cargar";
	Button2 = "No cargar";
	Icon = "rbxassetid://6034848748";
	Callback2 = Bindable
})

wait(1)

game.StarterGui:SetCore("SendNotification", {
	Title = "Vynixus Hub (Loading Error)";
	Text = "Podras cargar el script Vynixus Hub";
	Duration = "120000";
	Button1 = "Cargar";
	Button2 = "No cargar";
	Icon = "rbxassetid://6034848748";
	Callback3 = Bindable
})
