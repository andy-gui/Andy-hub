-- local variables for API functions. any changes to the line below will be lost on re-generation
local Color3_new, coroutine_wrap, Instance_new, task_cancel, UDim2_new, tonumber, wait = Color3.new, coroutine.wrap, Instance.new, task.cancel, UDim2.new, tonumber, wait

local Window = Instance_new("ScreenGui")
local Frame = Instance_new("Frame")
local TextLabel = Instance_new("TextLabel")
local AutoClick = Instance_new("TextButton")
local ClickSpeed = Instance_new("TextBox")
local AutoFarm = Instance_new("TextButton")
local FruitDetection = Instance_new("TextButton")
local AutoBounty = Instance_new("TextButton")
local PvP = Instance_new("TextButton")
local Tweening = Instance_new("TextButton")
local Trials = Instance_new("TextButton")

-- Properties

Window.Name = "Window"
Window.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Window.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = Window
Frame.BackgroundColor3 = Color3_new(0.137255, 0.137255, 0.137255)
Frame.BackgroundTransparency = 0.5
Frame.Position = UDim2_new(0.3484375, 0, 0.3490566, 0)
Frame.Size = UDim2_new(0, 200, 0, 300)

TextLabel.Parent = Frame
TextLabel.BackgroundTransparency = 1.000
TextLabel.Size = UDim2_new(1, 0, 0, 50)
TextLabel.Text = "Blox Fruits Cheat"
TextLabel.TextColor3 = Color3_new(1, 1, 1)
TextLabel.TextSize = 24.000
TextLabel.TextXAlignment = Enum.TextXAlignment.Center

AutoClick.Name = "AutoClick"
AutoClick.Parent = Frame
AutoClick.BackgroundColor3 = Color3_new(0.258824, 0.258824, 0.258824)
AutoClick.Position = UDim2_new(0, 0, 0.1666667, 0)
AutoClick.Size = UDim2_new(1, 0, 0, 50)
AutoClick.Text = "Auto Click"
AutoClick.TextColor3 = Color3_new(1, 1, 1)
AutoClick.TextSize = 14.000

ClickSpeed.Name = "ClickSpeed"
ClickSpeed.Parent = Frame
ClickSpeed.BackgroundColor3 = Color3_new(0.258824, 0.258824, 0.258824)
ClickSpeed.Position = UDim2_new(0, 0, 0.25, 0)
ClickSpeed.Size = UDim2_new(1, 0, 0, 50)
ClickSpeed.Text = "Click Speed"
ClickSpeed.TextColor3 = Color3_new(1, 1, 1)
ClickSpeed.TextSize = 14.000

AutoFarm.Name = "AutoFarm"
AutoFarm.Parent = Frame
AutoFarm.BackgroundColor3 = Color3_new(0.258824, 0.258824, 0.258824)
AutoFarm.Position = UDim2_new(0, 0, 0.3333333, 0)
AutoFarm.Size = UDim2_new(1, 0, 0, 50)
AutoFarm.Text = "Auto Farm"
AutoFarm.TextColor3 = Color3_new(1, 1, 1)
AutoFarm.TextSize = 14.000

FruitDetection.Name = "FruitDetection"
FruitDetection.Parent = Frame
FruitDetection.BackgroundColor3 = Color3_new(0.258824, 0.258824, 0.258824)
FruitDetection.Position = UDim2_new(0, 0, 0.4166667, 0)
FruitDetection.Size = UDim2_new(1, 0, 0, 50)
FruitDetection.Text = "Fruit Detection"
FruitDetection.TextColor3 = Color3_new(1, 1, 1)
FruitDetection.TextSize = 14.000

AutoBounty.Name = "AutoBounty"
AutoBounty.Parent = Frame
AutoBounty.BackgroundColor3 = Color3_new(0.258824, 0.258824, 0.258824)
AutoBounty.Position = UDim2_new(0, 0, 0.5, 0)
AutoBounty.Size = UDim2_new(1, 0, 0, 50)
AutoBounty.Text = "Auto Bounty"
AutoBounty.TextColor3 = Color3_new(1, 1, 1)
AutoBounty.TextSize = 14.000

PvP.Name = "PvP"
PvP.Parent = Frame
PvP.BackgroundColor3 = Color3_new(0.258824, 0.258824, 0.258824)
PvP.Position = UDim2_new(0, 0, 0.5833333, 0)
PvP.Size = UDim2_new(1, 0, 0, 50)
PvP.Text = "PvP"
PvP.TextColor3 = Color3_new(1, 1, 1)
PvP.TextSize = 14.000

Tweening.Name = "Tweening"
Tweening.Parent = Frame
Tweening.BackgroundColor3 = Color3_new(0.258824, 0.258824, 0.258824)
Tweening.Position = UDim2_new(0, 0, 0.6666667, 0)
Tweening.Size = UDim2_new(1, 0, 0, 50)
Tweening.Text = "Tweening"
Tweening.TextColor3 = Color3_new(1, 1, 1)
Tweening.TextSize = 14.000

Trials.Name = "Trials"
Trials.Parent = Frame
Trials.BackgroundColor3 = Color3_new(0.258824, 0.258824, 0.258824)
Trials.Position = UDim2_new(0, 0, 0.75, 0)
Trials.Size = UDim2_new(1, 0, 0, 50)
Trials.Text = "Trials"
Trials.TextColor3 = Color3_new(1, 1, 1)
Trials.TextSize = 14.000

-- Scripts

local function XJVZ_fake_script() -- AutoClick.LocalScript
    local script = Instance_new('LocalScript', AutoClick)

    local mouse = game.Players.LocalPlayer:GetMouse()
    local clickSpeed = tonumber(ClickSpeed.Text) or 16

    local function autoClick()
        while true do
            wait(1 / clickSpeed)
            mouse.Button1Down:FireServer()
        end
    end

    script.Parent.Activated:Connect(function()
        if script.Parent.BackgroundColor3 == Color3_new(1, 1, 1) then
            script.Parent.BackgroundColor3 = Color3_new(0.258824, 0.258824, 0.258824)
            autoClick()
        else
            script.Parent.BackgroundColor3 = Color3_new(1, 1, 1)
            task_cancel(autoClick)
        end
    end)
end
coroutine_wrap(XJVZ_fake_script)()


