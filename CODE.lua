local Player = game.Players.LocalPlayer
local Mouse = Player:GetMouse()
local GUI = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local AutoFarmCategory = Instance.new("Frame")
local PVPCategory = Instance.new("Frame")
local TweenCategory = Instance.new("Frame")
local TrialsCategory = Instance.new("Frame")
local AutoClickToggle = Instance.new("TextButton")
local AutoFruitToggle = Instance.new("TextButton")
local AutoFarmToggle = Instance.new("TextButton")
local AutoBountyToggle = Instance.new("TextButton")
local AutoTrialToggle = Instance.new("TextButton")
local ClickSpeedSlider = Instance.new("Slider")
local UIListLayout = Instance.new("UIListLayout")
local UIListLayout_2 = Instance.new("UIListLayout")
local UIListLayout_3 = Instance.new("UIListLayout")
local UIListLayout_4 = Instance.new("UIListLayout")
local AutoFarmCategoryLabel = Instance.new("TextLabel")
local PVPCategoryLabel = Instance.new("TextLabel")
local TweenCategoryLabel = Instance.new("TextLabel")
local TrialsCategoryLabel = Instance.new("TextLabel")

GUI.Name = "GUI"
GUI.Parent = game.CoreGui

MainFrame.Name = "MainFrame"
MainFrame.Parent = GUI
MainFrame.BackgroundColor3 = Color3.new(1, 1, 0)
MainFrame.BackgroundTransparency = 0.5
MainFrame.Position = UDim2.new(0.5, -250, 0.5, -150)
MainFrame.Size = UDim2.new(0, 500, 0, 300)
MainFrame.Active = true
MainFrame.Draggable = true

AutoFarmCategory.Name = "AutoFarmCategory"
AutoFarmCategory.Parent = MainFrame
AutoFarmCategory.BackgroundColor3 = Color3.new(0, 1, 0)
AutoFarmCategory.BackgroundTransparency = 0.5
AutoFarmCategory.Size = UDim2.new(1, 0, 0, 75)
AutoFarmCategory.ZIndex = 5

PVPCategory.Name = "PVPCategory"
PVPCategory.Parent = MainFrame
PVPCategory.BackgroundColor3 = Color3.new(0, 1, 0)
PVPCategory.BackgroundTransparency = 0.5
PVPCategory.Size = UDim2.new(1, 0, 0, 75)
PVPCategory.ZIndex = 4

TweenCategory.Name = "TweenCategory"
TweenCategory.Parent = MainFrame
TweenCategory.BackgroundColor3 = Color3.new(0, 1, 0)
TweenCategory.BackgroundTransparency = 0.5
TweenCategory.Size = UDim2.new(1, 0, 0, 75)
TweenCategory.ZIndex = 3

TrialsCategory.Name = "TrialsCategory"
TrialsCategory.Parent = MainFrame
TrialsCategory.BackgroundColor3 = Color3.new(0, 1, 0)
TrialsCategory.BackgroundTransparency = 0.5
TrialsCategory.Size = UDim2.new(1, 0, 0, 75)
TrialsCategory.ZIndex = 2

AutoClickToggle.Name = "AutoClickToggle"
AutoClickToggle.Parent = AutoFarmCategory
AutoClickToggle.BackgroundColor3 = Color3.new(0.298039, 0.619608, 0.176471)
AutoClickToggle.Size = UDim2.new(1, 0, 0, 25)
AutoClickToggle.Font = Enum.Font.SourceSans
AutoClickToggle.Text = "Auto Click"
AutoClickToggle.TextColor3 = Color3.new(1, 1, 1)
AutoClickToggle.TextSize = 14
AutoClickToggle.AutoButtonColor = false

AutoFruitToggle.Name = "AutoFruitToggle"
AutoFruitToggle.Parent = AutoFarmCategory
AutoFruitToggle.BackgroundColor3 = Color3.new(0.298039, 0.619608, 0.176471)
AutoFruitToggle.Size = UDim2.new(1, 0, 0, 25)
AutoFruitToggle.Font = Enum.Font.SourceSans
AutoFruitToggle.Text = "Auto Fruit"
AutoFruitToggle.TextColor3 = Color3.new(1, 1, 1)
AutoFruitToggle.TextSize = 14
AutoFruitToggle.AutoButtonColor = false

AutoFarmToggle.Name = "AutoFarmToggle"
AutoFarmToggle.Parent = AutoFarmCategory
AutoFarmToggle.BackgroundColor3 = Color3.new(0.298039, 0.619608, 0.176471)
AutoFarmToggle.Size = UDim2.new(1, 0, 0, 25)
AutoFarmToggle.Font = Enum.Font.SourceSans
AutoFarmToggle.Text = "Auto Farm"
AutoFarmToggle.TextColor3 = Color3.new(1, 1, 1)
AutoFarmToggle.TextSize = 14
AutoFarmToggle.AutoButtonColor = false

AutoBountyToggle.Name = "AutoBountyToggle"
AutoBountyToggle.Parent = AutoFarmCategory
AutoBountyToggle.BackgroundColor3 = Color3.new(0.298039, 0.619608, 0.176471)
AutoBountyToggle.Size = UDim2.new(1, 0, 0, 25)
AutoBountyToggle.Font = Enum.Font.SourceSans
AutoBountyToggle.Text = "Auto Bounty"
AutoBountyToggle.TextColor3 = Color3.new(1, 1, 1)
AutoBountyToggle.TextSize = 14
AutoBountyToggle.AutoButtonColor = false

AutoTrialToggle.Name = "AutoTrialToggle"
AutoTrialToggle.Parent = AutoFarmCategory
AutoTrialToggle.BackgroundColor3 = Color3.new(0.298039, 0.619608, 0.176471)
AutoTrialToggle.Size = UDim2.new(1, 0, 0, 25)
AutoTrialToggle.Font = Enum.Font.SourceSans
AutoTrialToggle.Text = "Auto Trial"
AutoTrialToggle.TextColor3 = Color3.new(1, 1, 1)
AutoTrialToggle.TextSize = 14
AutoTrialToggle.AutoButtonColor = false

ClickSpeedSlider.Name = "ClickSpeedSlider"
ClickSpeedSlider.Parent = AutoFarmCategory
ClickSpeedSlider.BackgroundColor3 = Color3.new(0.298039, 0.619608, 0.176471)
ClickSpeedSlider.Size = UDim2.new(1, 0, 0, 25)
ClickSpeedSlider.Font = Enum.Font.SourceSans
ClickSpeedSlider.Text = "Click Speed"
ClickSpeedSlider.TextColor3 = Color3.new(1, 1, 1)
ClickSpeedSlider.TextSize = 14
ClickSpeedSlider.Value = 0.1

UIListLayout.Parent = AutoFarmCategory
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

UIListLayout_2.Parent = PVPCategory
UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder

UIListLayout_3.Parent = TweenCategory
UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder

UIListLayout_4.Parent = TrialsCategory
UIListLayout_4.SortOrder = Enum.SortOrder.LayoutOrder

AutoFarmCategoryLabel.Name = "AutoFarmCategoryLabel"
AutoFarmCategoryLabel.Parent = AutoFarmCategory
AutoFarmCategoryLabel.BackgroundColor3 = Color3.new(0.298039, 0.619608, 0.176471)
AutoFarmCategoryLabel.Size = UDim2.new(1, 0, 0, 25)
AutoFarmCategoryLabel.Font = Enum.Font.SourceSans
AutoFarmCategoryLabel.Text = "Auto Farm"
AutoFarmCategoryLabel.TextColor3 = Color3.new(1, 1, 1)
AutoFarmCategoryLabel.TextSize = 18
AutoFarmCategoryLabel.TextXAlignment = Enum.TextXAlignment.Center

PVPCategoryLabel.Name = "PVPCategoryLabel"
PVPCategoryLabel.Parent = PVPCategory
PVPCategoryLabel.BackgroundColor3 = Color3.new(0.298039, 0.619608, 0.176471)
PVPCategoryLabel.Size = UDim2.new(1, 0, 0, 25)
PVPCategoryLabel.Font = Enum.Font.SourceSans
PVPCategoryLabel.Text = "PvP"
PVPCategoryLabel.TextColor3 = Color3.new(1, 1, 1)
PVPCategoryLabel.TextSize = 18
PVPCategoryLabel.TextXAlignment = Enum.TextXAlignment.Center

TweenCategoryLabel.Name = "TweenCategoryLabel"
TweenCategoryLabel.Parent = TweenCategory
TweenCategoryLabel.BackgroundColor3 = Color3.new(0.298039, 0.619608, 0.176471)
TweenCategoryLabel.Size = UDim2.new(1, 0, 0, 25)
TweenCategoryLabel.Font = Enum.Font.SourceSans
TweenCategoryLabel.Text = "Tween"
TweenCategoryLabel.TextColor3 = Color3.new(1, 1, 1)
TweenCategoryLabel.TextSize = 18
TweenCategoryLabel.TextXAlignment = Enum.TextXAlignment.Center

TrialsCategoryLabel.Name = "TrialsCategoryLabel"
TrialsCategoryLabel.Parent = TrialsCategory
TrialsCategoryLabel.BackgroundColor3 = Color3.new(0.298039, 0.619608, 0.176471)
TrialsCategoryLabel.Size = UDim2.new(1, 0, 0, 25)
TrialsCategoryLabel.Font = Enum.Font.SourceSans
TrialsCategoryLabel.Text = "Trials"
TrialsCategoryLabel.TextColor3 = Color3.new(1, 1, 1)
TrialsCategoryLabel.TextSize = 18
TrialsCategoryLabel.TextXAlignment = Enum.TextXAlignment.Center

-- Script functionality

local autoClickEnabled = false
local autoFruitEnabled = false
local autoFarmEnabled = false
local autoBountyEnabled = false
local autoTrialEnabled = false

local function toggleAutoClick()
    autoClickEnabled = not autoClickEnabled
    AutoClickToggle.BackgroundColor3 = autoClickEnabled and Color3.new(0.298039, 0.619608, 0.176471) or Color3.new(0.5, 0.5, 0.5)
end

local function toggleAutoFruit()
    autoFruitEnabled = not autoFruitEnabled
    AutoFruitToggle.BackgroundColor3 = autoFruitEnabled and Color3.new(0.298039, 0.619608, 0.176471) or Color3.new(0.5, 0.5, 0.5)
end

local function toggleAutoFarm()
    autoFarmEnabled = not autoFarmEnabled
    AutoFarmToggle.BackgroundColor3 = autoFarmEnabled and Color3.new(0.298039, 0.619608, 0.176471) or Color3.new(0.5, 0.5, 0.5)
end

local function toggleAutoBounty()
    autoBountyEnabled = not autoBountyEnabled
    AutoBountyToggle.BackgroundColor3 = autoBountyEnabled and Color3.new(0.298039, 0.619608, 0.176471) or Color3.new(0.5, 0.5, 0.5)
end

local function toggleAutoTrial()
    autoTrialEnabled = not autoTrialEnabled
    AutoTrialToggle.BackgroundColor3 = autoTrialEnabled and Color3.new(0.298039, 0.619608, 0.176471) or Color3.new(0.5, 0.5, 0.5)
end

local function onClickSpeedChanged(value)
    -- Update click speed value here
end

-- Connect button click events
AutoClickToggle.MouseButton1Click:Connect(toggleAutoClick)
AutoFruitToggle.MouseButton1Click:Connect(toggleAutoFruit)
AutoFarmToggle.MouseButton1Click:Connect(toggleAutoFarm)
AutoBountyToggle.MouseButton1Click:Connect(toggleAutoBounty)
AutoTrialToggle.MouseButton1Click:Connect(toggleAutoTrial)

ClickSpeedSlider.ValueChanged:Connect(onClickSpeedChanged)

-- Auto click script (change click speed using the slider)
local clickSpeed = ClickSpeedSlider.Value -- Default click speed in seconds (100 ms)
local mouse = game.Players.LocalPlayer:GetMouse()

local function autoClick()
    while autoClickEnabled do
        task.wait(clickSpeed)
        mouse.Button1Down:FireServer()
    end
end

-- Fruit detection and auto pick up (same as before)

-- Auto farming (tween between islands) (same as before)

-- PvP, tweening, and trials features are placeholders and need to be expanded upon

-- Start the auto click script
autoClick()