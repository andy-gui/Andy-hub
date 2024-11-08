local Color3_new, Instance_new, UDim2_new, print = Color3.new, Instance.new, UDim2.new, print

local logo = Instance_new("ImageLabel")
logo.Name = "Logo"
logo.Size = UDim2_new(0, 50, 0, 50)
logo.Image = "rbxassetid://YOUR_LOGO_ASSET_ID" -- Replace with the ID of your logo asset
logo.BackgroundTransparency = 1
logo.ImageTransparency = 0
logo.Parent = game.Players.LocalPlayer.PlayerGui

local uiFrame = Instance_new("Frame")
uiFrame.Name = "UIFrame"
uiFrame.Size = UDim2_new(0, 200, 0, 200)
uiFrame.Position = UDim2_new(0.5, -uiFrame.Size.X.Scale / 2, 0.5, -uiFrame.Size.Y.Scale / 2)
uiFrame.BackgroundColor3 = Color3_new(1, 1, 1)
uiFrame.BackgroundTransparency = 0.8
uiFrame.Draggable = true
uiFrame.Active = true
uiFrame.Visible = false
uiFrame.Parent = game.Players.LocalPlayer.PlayerGui

logo.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        uiFrame.Visible = true
    end
end)

uiFrame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        uiFrame.Visible = false
    end
end)

local function function1()
    print("Function 1 executed")
end

local function function2()
    print("Function 2 executed")
end

local button1 = Instance_new("TextButton")
button1.Name = "Button1"
button1.Size = UDim2_new(1, 0, 0, 50)
button1.Text = "Function 1"
button1.TextColor3 = Color3_new(0, 0, 0)
button1.BackgroundColor3 = Color3_new(1, 1, 1)
button1.TextSize = 24
button1.Font = Enum.Font.SourceSansBold
button1.Parent = uiFrame
button1.MouseButton1Click:Connect(function1)

local button2 = Instance_new("TextButton")
button2.Name = "Button2"
button2.Size = UDim2_new(1, 0, 0, 50)
button2.Text = "Function 2"
button2.TextColor3 = Color3_new(0, 0, 0)
button2.BackgroundColor3 = Color3_new(1, 1, 1)
button2.TextSize = 24
button2.Font = Enum.Font.SourceSansBold
button2.Parent = uiFrame
button2.MouseButton1Click:Connect(function2)

local dragging = false
local dragStartPosition = UDim2_new(0, 0, 0, 0)

local function onMouseDown(input)
    local mouse = game.Players.LocalPlayer:GetMouse()
    dragging = true
    dragStartPosition = UDim2_new(input.Position.X.Scale, input.Position.X.Offset, input.Position.Y.Scale, input.Position.Y.Offset)
end

local function onMouseMove(input)
    if dragging then
        local mouse = game.Players.LocalPlayer:GetMouse()
        local deltaX = input.Position.X.Scale - dragStartPosition.X.Scale
        local deltaY = input.Position.Y.Scale - dragStartPosition.Y.Scale
        uiFrame.Position = UDim2_new(uiFrame.Position.X.Scale + deltaX, uiFrame.Position.X.Offset + deltaX * uiFrame.Size.X.Offset,
                                    uiFrame.Position.Y.Scale + deltaY, uiFrame.Position.Y.Offset + deltaY * uiFrame.Size.Y.Offset)
    end
end

local function onMouseUp(input)
    dragging = false
end

uiFrame.InputBegan:Connect(onMouseDown)
game:GetService("UserInputService").InputChanged:Connect(onMouseMove)
game:GetService("UserInputService").InputEnded:Connect(onMouseUp)
