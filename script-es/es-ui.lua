local Nevlib = {}

function Nevlib.MakeNotify(Titulo, Texto, Icono, Tiempo)
    game:GetService("StarterGui"):SetCore("SendNotification",{
        Title = Titulo, -- Required
        Text = Texto, -- Required
        Icon = Icono, -- Optional
        Duration = Tiempo
    })
end


return Nevlib
