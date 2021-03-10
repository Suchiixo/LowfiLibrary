--\\ Lowfi Hub Ui Library

local UICorner = Instance.new('UICorner')
local __frame__ = Instance.new('Frame')
__frame__.Active = true
__frame__.BorderSizePixel = 0
__frame__.ClipsDescendants = true
__frame__.ZIndex = 1

local info = TweenInfo.new
local TweenService = game:GetService("TweenService")

local function tween(data)
	local t = TweenService:Create(
		data.i,
		info(data.s),
		data.g
	)

	t:Play()

	if data.wait then
		t.Completed:wait()
	end

	return t
end

local function ripple(btn)
	local Mouse = game:GetService('Players').LocalPlayer:GetMouse()
	local x,y = Mouse.X, Mouse.Y
	spawn(function()
		local circle = __frame__:clone()
		circle.AnchorPoint = Vector2.new(.5,.5)
		circle.Size = UDim2.new(0,0,0,0)
		circle.Parent = btn
		circle.BackgroundColor3 = Color3.fromRGB(80,80,80);
		circle.Position = UDim2.new(0,x-btn.AbsolutePosition.X,0,y-btn.AbsolutePosition.Y)
		circle.Visible = true
		local corner = UICorner:clone()
		corner.Parent = circle
		corner.CornerRadius = UDim.new(4, 4)
		local x1,y1=0,0
		local rnd = math.random(50,200)
		tween({
			i = circle;
			s = .5;
			wait = true;
			g = {
				BackgroundTransparency = 1;
				Size = UDim2.new(0,200,0,200);
			}
		})
		circle:Destroy()
	end)
end

--\\ Ripple effect

local Library = {}

--\\ new Instances

function Library:Create(Title, Bootstrapper)
    if (workspace:FindFirstChild(Title)) then
        --\\ Delete existing Hub, then load
    
        workspace:FindFirstChild(Title):Destroy()
    end

    if (Bootstrapper) then
        --\\ if Bootstrapper enabled then load bootstrapper then Hub
        
    end

--\\ Actual Hub
local Screen = Instance.new("ScreenGui")
    Screen.Name = Title
    Screen.Parent = game:GetService("CoreGui")
    Screen.ResetOnSpawn = false
    Screen.DisplayOrder = 5
local Mainframe = Instance.new("ImageButton")
    Mainframe.Parent = Screen
    Mainframe.Name = ('Mainframe')
    Mainframe.BackgroundTransparency = 1
    Mainframe.Draggable = true
    Mainframe.ClipsDescendants = true
    Mainframe.Position = UDim2.new(0.44489795, 0, 0.492320389, 0)
    Mainframe.Size = UDim2.new(0, 500, 0, 300)
    Mainframe.Image = ('rbxassetid://2790382281')
    Mainframe.ImageColor3 = Color3.fromRGB(35, 35, 35)
    Mainframe.ScaleType = Enum.ScaleType.Slice
    Mainframe.SliceCenter = Rect.new(4, 4, 252, 252)
local FadeFrame = Instance.new("Frame")
    FadeFrame.Name = "FadeFrame"
    FadeFrame.Parent = Mainframe
    FadeFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    FadeFrame.BorderSizePixel = 0
    FadeFrame.Position = UDim2.new(0.260, 0, 0.000120035809, 0)
    FadeFrame.Size = UDim2.new(0, 31, 0, 300)
local UiGradient = Instance.new("UIGradient")
    UiGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(30, 30, 30)), ColorSequenceKeypoint.new(0.51, Color3.fromRGB(35, 35, 35)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(35, 35, 35))}
    UiGradient.Parent = FadeFrame
local TitleBar = Instance.new("ImageButton")
    TitleBar.Name = ('TitleBar')
    TitleBar.Parent = Mainframe
    TitleBar.BackgroundTransparency = 1
    TitleBar.ClipsDescendants = true
    TitleBar.Position = UDim2.new(0.000598632789, 0, -0.000120086668, 0)
    TitleBar.Size = UDim2.new(0, 130, 0, 300)
    TitleBar.Image = ('rbxassetid://2790382281')
    TitleBar.ImageColor3 = Color3.fromRGB(30, 30, 30)
    TitleBar.ScaleType = Enum.ScaleType.Slice
    TitleBar.SliceCenter = Rect.new(4, 4, 252, 252)
local Decoration = Instance.new("Frame")
    Decoration.Parent = TitleBar
    Decoration.Name = ('DecoFrame')
    Decoration.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Decoration.BorderSizePixel = 0
    Decoration.Position = UDim2.new(-0.0869178176, 0, 0.11259827, 0)
    Decoration.Size = UDim2.new(0, 141, 0, 2)
    Decoration.ZIndex = 2
local TitleTxt = Instance.new("TextLabel")
    TitleTxt.Name = ('Title')
    TitleTxt.Parent = TitleBar
    TitleTxt.BackgroundTransparency = 1
    TitleTxt.Size = UDim2.new(0, 130, 0, 35)
    TitleTxt.Font = Enum.Font.SourceSansSemibold
    TitleTxt.Text = Title
    TitleTxt.TextColor3 = Color3.fromRGB(255, 255, 255)
    TitleTxt.TextSize = 18.000
local Listing = Instance.new("Frame")
    Listing.Parent = TitleBar
    Listing.Name = ('Listing')
    Listing.BackgroundTransparency = 1
    Listing.Position = UDim2.new(0.000598614046, 0, 0.1427183, 0)
    Listing.Size = UDim2.new(0, 129, 0, 250)
    Listing.ZIndex = 2
local UiList = Instance.new("UIListLayout")
    UiList.Parent = Listing
    UiList.SortOrder = Enum.SortOrder.LayoutOrder
local FadingFrame = Instance.new("Frame")
    FadingFrame.Name = ("Fading")
    FadingFrame.Parent = Mainframe
    FadingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    FadingFrame.BorderSizePixel = 0
    FadingFrame.Position = UDim2.new(0.260, 0, 0.113, 0)
    FadingFrame.Size = UDim2.new(0, 31, 0, 2)
    FadingFrame.ZIndex = 2
local UiGrad = Instance.new("UIGradient")
    UiGrad.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(0.36, Color3.fromRGB(35, 35, 35)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(35, 35, 35))}
    UiGrad.Parent = FadingFrame
local CategoryList = Instance.new("Frame")
    CategoryList.Name = ('Categories')
    CategoryList.Parent = Mainframe
    CategoryList.BackgroundTransparency = 1
    CategoryList.Position = UDim2.new(0.282000005, 0, 0.140000001, 0)
    CategoryList.Size = UDim2.new(0, 358, 0, 257)

local Hub = {}

function Hub:Category(CategoryName)
    local ScrollFrame = Instance.new("ScrollingFrame")
        ScrollFrame.Parent = CategoryList
        ScrollFrame.Name = CategoryName
        ScrollFrame.Active = true
        ScrollFrame.BackgroundTransparency = 1.000
        ScrollFrame.BorderSizePixel = 0
        ScrollFrame.Position = UDim2.new(0, 0, -0.132155597, 0)
        ScrollFrame.Size = UDim2.new(0, 359, 0, 283)
        ScrollFrame.BottomImage = ""
        ScrollFrame.MidImage = ""
        ScrollFrame.TopImage = ""
        ScrollFrame.Visible = false
    local ScrollUi = Instance.new("UIListLayout")
        ScrollUi.Parent = ScrollFrame
        ScrollUi.HorizontalAlignment = Enum.HorizontalAlignment.Center
        ScrollUi.SortOrder = Enum.SortOrder.LayoutOrder
        ScrollUi.Padding = UDim.new(0, 5)
    local Category = Instance.new("TextButton")
        Category.Parent = Listing
        Category.BackgroundTransparency = 1
        Category.Size = UDim2.new(0, 130, 0, 35)
        Category.Font = Enum.Font.SourceSansSemibold
        Category.Text = CategoryName
        Category.TextColor3 = Color3.fromRGB(255, 255, 255)
        Category.TextSize = 18.00
        Category.Name = CategoryName
    local Script = Instance.new("LocalScript")
        Script.Parent = Category
        Category.MouseButton1Click:Connect(function()
            for i,v in pairs(CategoryList:GetChildren()) do
                v.Visible = false
            end
            for i,v in pairs(CategoryList:GetChildren()) do
                if (ScrollFrame.Visible == false and ScrollFrame.Name == Category.Name) then
                    ScrollFrame.Visible = true
                end
            end
        end)

    local CreatedCategory = {}

        function CreatedCategory:Button(Text, Callback)
                Callback = Callback or function() end
            local Button = Instance.new('ImageButton')
                    Button.Name = ('Button')
                    Button.Parent = ScrollFrame
                    Button.BackgroundTransparency = 1.000
                    Button.Position = UDim2.new(0.0111420611, 0, 0, 0)
                    Button.Size = UDim2.new(0, 305, 0, 40)
                    Button.Image = "rbxassetid://2790382281"
                    Button.ImageColor3 = Color3.fromRGB(30, 30, 30)
                    Button.ScaleType = Enum.ScaleType.Slice
                    Button.SliceCenter = Rect.new(4, 4, 252, 252)
                    Button.ClipsDescendants = true
            local TextFor = Instance.new("TextLabel")
                    TextFor.Parent = Button
                    TextFor.AnchorPoint = Vector2.new(0.5, 0.5)
                    TextFor.BackgroundTransparency = 1.000
                    TextFor.BorderSizePixel = 0
                    TextFor.Position = UDim2.new(0.5, 0, 0.5, 0)
                    TextFor.Size = UDim2.new(1.01930487, -5, 1.125, -5)
                    TextFor.Font = Enum.Font.GothamSemibold
                    TextFor.Text = Text
                    TextFor.TextColor3 = Color3.fromRGB(255, 255, 255)
                    TextFor.TextSize = 14.000
                Button.MouseButton1Click:Connect(function()
                    ripple(Button)
                    pcall(Callback)
                end)
        end

        function CreatedCategory:Toggle(Text, Callback)
            local ToggleMain = Instance.new("ImageButton")
                ToggleMain.Name = ('ToggleMain')
                ToggleMain.Parent = ScrollFrame
                ToggleMain.BackgroundTransparency = 1.000
                ToggleMain.Position = UDim2.new(0.0111420611, 0, 0, 0)
                ToggleMain.Size = UDim2.new(0, 305, 0, 40)
                ToggleMain.Image = "rbxassetid://2790382281"
                ToggleMain.ImageColor3 = Color3.fromRGB(30, 30, 30)
                ToggleMain.ScaleType = Enum.ScaleType.Slice
                ToggleMain.SliceCenter = Rect.new(4, 4, 252, 252)
            local TextLabel = Instance.new("TextLabel")
                TextLabel.Parent = ToggleMain
                TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
                TextLabel.BackgroundTransparency = 1
                TextLabel.BorderSizePixel = 0
                TextLabel.Position = UDim2.new(0.524590135, 0, 0.5, 0)
                TextLabel.Size = UDim2.new(0.970124602, -5, 1.125, -5)
                TextLabel.Font = Enum.Font.GothamSemibold
                TextLabel.Text = Text
                TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
                TextLabel.TextSize = 14.000
                TextLabel.TextXAlignment = Enum.TextXAlignment.Left
            local Switch = Instance.new("ImageButton")
                Switch.Name = ("Switch")
                Switch.Parent = ToggleMain
                Switch.BackgroundTransparency = 1.000
                Switch.Position = UDim2.new(0.696387947, 0, 0.200000003, 0)
                Switch.Size = UDim2.new(0, 85, 0, 24)
                Switch.Image = "rbxassetid://2790382281"
                Switch.ImageColor3 = Color3.fromRGB(35, 35, 35)
                Switch.ScaleType = Enum.ScaleType.Slice
                Switch.SliceCenter = Rect.new(4, 4, 252, 252)
                Switch.SliceScale = 2.000
            local Toggle = Instance.new("ImageButton")
                Toggle.Name = ("Toggle")
                Toggle.Parent = Switch
                Toggle.BackgroundTransparency = 1.000
                Toggle.Position = UDim2.new(0.521345079, 0, -0.0285708103, 0)
                Toggle.Size = UDim2.new(0, 40, 0, 24)
                Toggle.Image = "rbxassetid://2790382281"
                Toggle.ImageColor3 = Color3.fromRGB(255, 82, 85)
                Toggle.ScaleType = Enum.ScaleType.Slice
                Toggle.SliceCenter = Rect.new(4, 4, 252, 252)
                Toggle.SliceScale = 2.000
                Toggle.MouseButton1Click:Connect(function()
                    local Script_ = Instance.new('LocalScript', Toggle)
                    local oneSwitch = Toggle
                    local Switched = false
                    
                    if Switched == false then
                           
                        Switched = true
                        oneSwitch:TweenPosition(
                            UDim2.new(0.521, 0, -0.029, 0),
                            "Out",
                            "Quad",
                            .5,
                            false
                        )
                        wait()
                        oneSwitch.ImageColor3 = Color3.fromRGB(133, 255, 119)
                    elseif Switched == true then
                        
                        Switched = false
                        oneSwitch:TweenPosition(
                            UDim2.new(-0.008, 0, -0.029, 0),
                            "Out",
                            "Quad",
                            .5,
                            false
                        )
                        wait()
                        oneSwitch.ImageColor3 = Color3.fromRGB(255, 82, 85)
                    end
                end)
            end

        return CreatedCategory
    end

    return Hub
end

local Hub = Library:Create('Lowfi Hub', false)
    local Player = Hub:Category('Player')
        Player:Button('Infinite Ammo')
