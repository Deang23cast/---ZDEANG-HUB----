local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("ZDEANG HUB | STEAL A BRAINROT", "Midnight")

-- COMBATE
local Combat = Window:NewTab("Combate")
local CombatSec = Combat:NewSection("PVP & Aimbot")
CombatSec:NewSlider("KillAura Range", "Rango 1-15m", 15, 1, function(v) _G.Range = v end)
CombatSec:NewToggle("Anti-Knockback", "No retroceder", function(s) _G.AKB = s end)
CombatSec:NewButton("Anti-Hit (GodMode)", "No sueltas el botín", function() 
    game.Players.LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Dead, false) 
end)

-- MOVIMIENTO
local Move = Window:NewTab("Movimiento")
local MoveSec = Move:NewSection("Velocidad & Robo")
MoveSec:NewSlider("Speed", "Velocidad 1-999", 999, 1, function(v) game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v end)
MoveSec:NewSlider("Jump", "Salto 1-99", 99, 1, function(v) game.Players.LocalPlayer.Character.Humanoid.JumpPower = v end)
MoveSec:NewToggle("No-Clip", "Atravesar paredes", function(s) _G.NC = s end)

-- TELEPORT
local TP = Window:NewTab("Teleport")
local TPSec = TP:NewSection("Atajos")
TPSec:NewButton("TP Base", "Ir a tu base", function() --[[ Lógica TP ]] end)
TPSec:NewButton("TP Brainrot", "Ir al botín", function() --[[ Lógica TP ]] end)
