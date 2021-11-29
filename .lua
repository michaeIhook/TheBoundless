local Config = {
    WindowName = "jarware",
	Color = Color3.fromRGB(255,170,0),
	Keybind = Enum.KeyCode.RightBracket
}

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/AlexR32/Roblox/main/BracketV3.lua"))()
local Window = Library:CreateWindow(Config, game:GetService("CoreGui"))


local Tab1 = Window:CreateTab("Local Player")
local Tab2 = Window:CreateTab("Hub Options")


local Section1 = Tab1:CreateSection("")
local Section2 = Tab1:CreateSection("")
local Section3 = Tab2:CreateSection("")
local Section4 = Tab2:CreateSection("")
local Section5 = Tab1:CreateSection("")
local Section6 = Tab1:CreateSection("")

local ESP = loadstring(game:HttpGet('https://raw.githubusercontent.com/michaeIhook/kiriot/main/esp'))()

ESP:Toggle(true)
ESP.Boxes = false 
ESP.Names = false
ESP.Tracers = false 
ESP.TeamColor = false
ESP.FaceCamera = false

Section6:CreateToggle("Show Boxes",false,function(t)
	if firsttime == false then 
		ESP.Boxes = t 
	end
end)

Section6:CreateToggle("Show Names",false,function(t)
	if firsttime == false then 
		ESP.Names = t 
	end
end)
Section6:CreateToggle("Show Teamates",false,function(t)
	if firsttime == false then 
		ESP.TeamMates = t 
	end
end)

Section6:CreateToggle("Show Tracers",false,function(t)
	if firsttime == false then 
		ESP.Tracers = t 
	end
end)

Section6:CreateToggle("Team Colors",false,function(t)
	if firsttime == false then 
		ESP.TeamColor = t 
	end
end)

Section6:CreateToggle("Face Camera",false,function(t)
	if firsttime == false then 
		ESP.FaceCamera = t 
	end
end)

firsttime = false 

local Button1 = Section3:CreateButton("Copy Invite", function()
   setclipboard("https://discord.gg/AEtFfCV9") 
end)
local Toggle1 = Section5:CreateButton("Reset", function()
 game.Players.LocalPlayer.Character.Humanoid.Health = 0   
end)
local Toggle1 = Section5:CreateButton("Auto Fallion", function(v)
   getgenv().fallion = v 
    while true do
        wait(3)
        if not getgenv().fallion then return end
 fireclickdetector(Workspace.NPCs.Fallion.ClickDetector)  
 end
end)
local Toggle1 = Section5:CreateButton("Auto Tomeless", function()
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1326.15, 14.6725, 2342.44)   
end)
local Toggle1 = Section5:CreateButton("Castle Rock", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5789.4, 410.393, 640.247)    
end)
local Toggle1 = Section5:CreateToggle("Autopick Up", nil, function(v)
   getgenv().faan = v 
    while true do
        wait(1.5)
        if not getgenv().faan then return end
for i,v in pairs (workspace.Trinkets:GetChildren()) do
if v:FindFirstChild("ClickPart") or ("Part") then
fireclickdetector(v.ClickPart.Part.ClickDetector)
    end
end
end
end)
local Toggle1 = Section5:CreateToggle("Auto Charge", nil, function(v)
getgenv().mana = v 
    while true do
        wait(1.2)
        if not getgenv().mana then return end
local ohString1 = "Charge"

game:GetService("ReplicatedStorage").ChargeEvent:FireServer(ohString1) 
end
end) 
local Toggle1 = Section5:CreateToggle("No Fall Damage", nil, function()
    while true do 
        wait(2)
    local char = game.Players.LocalPlayer.Character
char.FallDamage.Disabled = true
end 
end) 
local Toggle1 = Section5:CreateToggle("Remove Kill Bricks", nil, function()
     for i,v in next, game.Workspace.Map:GetChildren() do
if v:FindFirstChild("TouchInterest") then
            v.TouchInterest:Destroy()
end 
        end   
end)
local Toggle1 = Section5:CreateToggle("No Fog", nil, function(v)
   getgenv().nofog = v 
    while true do
        wait(1)
        if not getgenv().nofog then return end
game:GetService("Lighting").FogEnd = 100000   
end     
end) 
local Toggle1 = Section5:CreateToggle("Full Bright", nil, function()
 local Light = game:GetService("Lighting")

function dofullbright()
Light.Ambient = Color3.new(1, 1, 1)
Light.ColorShift_Bottom = Color3.new(1, 1, 1)
Light.ColorShift_Top = Color3.new(1, 1, 1)
end

dofullbright()

Light.LightingChanged:Connect(dofullbright)          
end)

local Toggle1 = Section1:CreateToggle("Flight", nil, function()
 repeat wait() until game.Players.LocalPlayer.Character

local fanim = Instance.new('Animation', workspace)
fanim.AnimationId = 'rbxassetid://7737928788'

local player = game.Players.LocalPlayer
local character = player.character
local humanoid = character:WaitForChild("Humanoid")
local torso = character:WaitForChild("Torso")
local mouse = player:GetMouse()

local track1 = humanoid:LoadAnimation(fanim)

local enabled = false

mouse.KeyDown:Connect(function(key)
    if key == "x" then
        if enabled == false then
            enabled = true
            if track1.IsPlaying then track1:Stop() end
            local bodyvelocity = Instance.new("BodyVelocity",torso)
            bodyvelocity.MaxForce = Vector3.new(math.huge,math.huge,math.huge)

            while enabled == true do
                if torso.Velocity.magnitude>0 then
                    if not track1.IsPlaying then track1:Play() end
                end
                bodyvelocity.Velocity = mouse.Hit.lookVector * 195
                wait()
            end

        end

        if enabled == true then
            track1:Stop()            
            enabled = false
            torso:FindFirstChildOfClass("BodyVelocity"):Destroy()
        end
    end
end)   
end)
local Toggle1 = Section1:CreateToggle("Walkspeed", nil, function()

end) 
local Toggle1 = Section1:CreateToggle("Jump Power", nil, function()

end) 
local Slider1 = Section2:CreateSlider("Walkspeed Amount", 16, 110, nil, true, function(v)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
end)
Slider1:SetValue(16)
local Slider2 = Section2:CreateSlider("Jump power Amount", 50, 200, nil, true, function(jp)
game.Players.LocalPlayer.Character.Humanoid.JumpPower = jp
end)
Slider2:SetValue(50)





local Button = Section4:CreateButton("Instant Log", function()
    game.Players.LocalPlayer:Kick("  ")
end)
local Toggle1 = Section4:CreateToggle("Moderator Detector", nil, function()
  local Mods = {
         ["yourladnoobie"] = true,
         ["Foxatan"] = true,
         ["thiari"] = true,
         ["JamKohai"] = true,
         ["Taahmi"] = true,
         ["Acuranagi"] = true,
         ["BeefMe_ToYou2"] = true,
         ["trashkuna"] = true,
         ["J4mm3D"] = true,
}
 
local function newSound()
    local Sound = Instance.new("Sound", game.Players.LocalPlayer.PlayerGui)
    Sound.SoundId = "rbxassetid://405321226"
    Sound.Volume = 5
    Sound:Play()
    Sound.Ended:connect(function()
        Sound:Destroy()
    end)
end
 
for k,v in pairs(game.Players:GetChildren()) do
    if Mods[v.Name] then
        newSound()
        game:GetService("StarterGui"):SetCore("SendNotification", {
           Title = "A moderator has joined your server:",
           Text = v.Name,
           Duration = 10,
           Button1 = "Ignore"
        })
    end
end
 
game.Players.PlayerAdded:connect(function(Player)
    if Mods[Player.Name] then
        newSound()
        game:GetService("StarterGui"):SetCore("SendNotification", {
           Title = "A moderator has joined your server:",
           Text = Player.Name,
           Duration = 10,
           Button1 = "Ignore"
        })
    end
end)
 
game.Players.PlayerRemoving:connect(function(Player)
    if Mods[Player.Name] then
        game:GetService("StarterGui"):SetCore("SendNotification", {
           Title = "A moderator has left your server:",
           Text = Player.Name,
           Duration = 10,
        })
    end
end)  
end)
local Toggle1 = Section4:CreateToggle("Spectate Players", nil, function()
local PlayerGui = game:GetService('Players').LocalPlayer:WaitForChild('PlayerGui')
local Leaderboard = PlayerGui:WaitForChild("LeaderboardGui")
local MainFrame = Leaderboard:WaitForChild("MainFrame")
local ScrollingFrame = MainFrame:WaitForChild("ScrollingFrame")

function createButtons()
    for i,v in pairs(ScrollingFrame:GetChildren()) do
        local Player
        local TextButton = Instance.new("TextButton",ScrollingFrame)
        TextButton.Name = "SpectateButton"
        TextButton.Size = v.Size
        TextButton.Text = ""
        TextButton.Transparency = 1
        TextButton.Position = v.Position
        TextButton.MouseButton1Click:Connect(function()
            for _,otherPlayer in pairs(game.Players:GetPlayers()) do
                if otherPlayer.Name == v.Text:gsub(" ","") then
                    Player = otherPlayer
                end
            end
            local Character = Player.Character or Player.CharacterAdded:Wait()
            workspace.CurrentCamera.CameraSubject = Character.Humanoid
        end)
    end
end

while wait(1) do
    for i,v in pairs(ScrollingFrame:GetChildren()) do
        if v.Name == "SpectateButton" then
            v:Destroy()
        end
    end
    createButtons()
end
end)

local Toggle3 = Section3:CreateToggle("UI Toggle", nil, function(State)
	Window:Toggle(State)
end)
Toggle3:CreateKeybind(tostring(Config.Keybind):gsub("Enum.KeyCode.", ""), function(Key)
	Config.Keybind = Enum.KeyCode[Key]
end)
Toggle3:SetState(true)
