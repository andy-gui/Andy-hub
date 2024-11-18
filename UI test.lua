local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")

-- Function to create a category with sliders
local function createCategory(name)
    local CategoryFrame = Instance.new("Frame")
    CategoryFrame.Size = UDim2.new(1, 0, 0, 100)
    CategoryFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    CategoryFrame.BorderSizePixel = 0
    CategoryFrame.LayoutOrder = 1

    local Title = Instance.new("TextLabel")
    Title.Size = UDim2.new(1, 0, 0, 30)
    Title.BackgroundTransparency = 1
    Title.Text = name
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.TextScaled = true
    Title.Parent = CategoryFrame

    for i = 1, 3 do
        local SliderFrame = Instance.new("Frame")
        SliderFrame.Size = UDim2.new(1, 0, 0, 30)
        SliderFrame.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
        SliderFrame.BorderSizePixel = 0
        SliderFrame.Position = UDim2.new(0, 0, 0, 30 * i)

        local SliderLabel = Instance.new("TextLabel")
        SliderLabel.Size = UDim2.new(0.5, 0, 1, 0)
        SliderLabel.BackgroundTransparency = 1
        SliderLabel.Text = "Slider " .. i
        SliderLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        SliderLabel.TextScaled = true
        SliderLabel.Parent = SliderFrame

        local Slider = Instance.new("TextButton")
        Slider.Size = UDim2.new(0.5, 0, 1, 0)
        Slider.Position = UDim2.new(0.5, 0, 0, 0)
        Slider.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
        Slider.Text = ""
        Slider.Parent = SliderFrame

        SliderFrame.Parent = CategoryFrame
    end

    return CategoryFrame
end

-- Main Frame Setup
MainFrame.Size = UDim2.new(0.5, 0, 0.6, 0)
MainFrame.Position = UDim2.new(0.25, 0, 0.2, 0)
MainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
MainFrame.BorderSizePixel = 0
MainFrame.BackgroundTransparency = 0.1
MainFrame.Active = true
MainFrame.Draggable = true
MainFrame.Parent = ScreenGui

-- Create Categories
for i = 1, 8 do
    local category = createCategory("Category " .. i)
    category.Parent = MainFrame
end

UIListLayout.Parent = MainFrame
UIListLayout.FillDirection = Enum.FillDirection.Vertical
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Top
UIListLayout.Padding = UDim.new(0, 10)

-- Finalize GUI
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
