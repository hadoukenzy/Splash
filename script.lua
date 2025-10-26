-- Splash screen loader by hadoukenzy
local CoreGui = game:GetService("CoreGui")
local TweenService = game:GetService("TweenService")

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "SplashScreen"
ScreenGui.IgnoreGuiInset = true
ScreenGui.ResetOnSpawn = false
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Parent = CoreGui

local Frame = Instance.new("Frame")
Frame.Size = UDim2.new(0, 420, 0, 260)
Frame.AnchorPoint = Vector2.new(0.5, 0.5)
Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
Frame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Frame.BackgroundTransparency = 0.15
Frame.BorderSizePixel = 0
Frame.Parent = ScreenGui

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 20)
UICorner.Parent = Frame

local ImageLabel = Instance.new("ImageLabel")
ImageLabel.Parent = Frame
ImageLabel.Size = UDim2.new(0, 150, 0, 150)
ImageLabel.Position = UDim2.new(0.5, -75, 0, 15)
ImageLabel.BackgroundTransparency = 1
ImageLabel.Image = "https://raw.githubusercontent.com/hadoukenzy/Splash/main/Logo.png" -- логотип
ImageLabel.ImageTransparency = 1

local TextLabel = Instance.new("TextLabel")
TextLabel.Parent = Frame
TextLabel.Size = UDim2.new(1, -20, 0, 50)
TextLabel.Position = UDim2.new(0, 10, 0, 180)
TextLabel.BackgroundTransparency = 1
TextLabel.Text = "🔥 Thanks for using our script!" -- текст
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 22
TextLabel.Font = Enum.Font.GothamBold
TextLabel.TextWrapped = true
TextLabel.TextTransparency = 1

-- плавное появление
local tweenIn = TweenInfo.new(0.6, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
TweenService:Create(ImageLabel, tweenIn, {ImageTransparency = 0}):Play()
TweenService:Create(TextLabel, tweenIn, {TextTransparency = 0}):Play()

-- показываем 3 секунды
task.wait(3)

-- плавное исчезание
local tweenOut = TweenInfo.new(0.6, Enum.EasingStyle.Quad, Enum.EasingDirection.In)
TweenService:Create(ImageLabel, tweenOut, {ImageTransparency = 1}):Play()
TweenService:Create(TextLabel, tweenOut, {TextTransparency = 1}):Play()
task.wait(0.7)

ScreenGui:Destroy()
