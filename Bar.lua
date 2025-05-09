local BAR_VERSION = "1.1.6"
local BAR_TIME = "5/9/2025 11:33 HST"

local Service = {
	VirtualUser = game:GetService("VirtualUser"),
	Players = game:GetService('Players'),
	TweenService = game:GetService('TweenService'),
	RunService = game:GetService('RunService'),
	Debris = game:GetService('Debris'),
	HttpService = game:GetService("HttpService"),
	TeleportService = game:GetService('TeleportService'),
	UserInputService = game:GetService('UserInputService'),
	ReplicatedStorage = game:GetService('ReplicatedStorage'),
	ContextActionService = game:GetService('ContextActionService'),
}

local Converted = {
	["_Admin"] = Instance.new("ScreenGui");
	["_Template"] = Instance.new("Folder");
	["_Log"] = Instance.new("CanvasGroup");
	["_Command"] = Instance.new("TextLabel");
	["_UICorner"] = Instance.new("UICorner");
	["_Description"] = Instance.new("TextLabel");
	["_Completed"] = Instance.new("ImageLabel");
	["_UIAspectRatioConstraint"] = Instance.new("UIAspectRatioConstraint");
	["_Errored"] = Instance.new("ImageLabel");
	["_UIAspectRatioConstraint1"] = Instance.new("UIAspectRatioConstraint");
	["_Activator"] = Instance.new("ImageButton");
	["_Pinner"] = Instance.new("ImageButton");
	["_Pin"] = Instance.new("ImageLabel");
	["_UIAspectRatioConstraint2"] = Instance.new("UIAspectRatioConstraint");
	["_Unpin"] = Instance.new("ImageLabel");
	["_UIAspectRatioConstraint3"] = Instance.new("UIAspectRatioConstraint");
	["_Timer"] = Instance.new("Frame");
	["_UIAspectRatioConstraint4"] = Instance.new("UIAspectRatioConstraint");
	["_Holder"] = Instance.new("Frame");
	["_History"] = Instance.new("CanvasGroup");
	["_UIListLayout"] = Instance.new("UIListLayout");
	["_UIGradient"] = Instance.new("UIGradient");
	["_UIAspectRatioConstraint5"] = Instance.new("UIAspectRatioConstraint");
	["_Bar"] = Instance.new("CanvasGroup");
	["_Input"] = Instance.new("TextBox");
	["_UITextSizeConstraint"] = Instance.new("UITextSizeConstraint");
	["_UICorner1"] = Instance.new("UICorner");
	["_Guide"] = Instance.new("CanvasGroup");
	["_UICorner2"] = Instance.new("UICorner");
	["_Shadow"] = Instance.new("TextLabel");
	["_UITextSizeConstraint1"] = Instance.new("UITextSizeConstraint");
}

local Converted_2 = {
	["_Custom"] = Instance.new("Frame");
	["_Title"] = Instance.new("TextLabel");
	["_UICorner"] = Instance.new("UICorner");
	["_List"] = Instance.new("Frame");
	["_UIListLayout"] = Instance.new("UIListLayout");
	["_Stat"] = Instance.new("Frame");
	["_UICorner1"] = Instance.new("UICorner");
	["_Title1"] = Instance.new("TextLabel");
	["_Confirm"] = Instance.new("TextButton");
	["_UIAspectRatioConstraint"] = Instance.new("UIAspectRatioConstraint");
	["_Val"] = Instance.new("TextLabel");
	["_Stat1"] = Instance.new("Frame");
	["_UICorner2"] = Instance.new("UICorner");
	["_Title2"] = Instance.new("TextLabel");
	["_Confirm1"] = Instance.new("TextButton");
	["_UIAspectRatioConstraint1"] = Instance.new("UIAspectRatioConstraint");
	["_Val1"] = Instance.new("TextLabel");
	["_Stat2"] = Instance.new("Frame");
	["_UICorner3"] = Instance.new("UICorner");
	["_Title3"] = Instance.new("TextLabel");
	["_Confirm2"] = Instance.new("TextButton");
	["_UIAspectRatioConstraint2"] = Instance.new("UIAspectRatioConstraint");
	["_Val2"] = Instance.new("TextLabel");
	["_Stat3"] = Instance.new("Frame");
	["_UICorner4"] = Instance.new("UICorner");
	["_Title4"] = Instance.new("TextLabel");
	["_Confirm3"] = Instance.new("TextButton");
	["_UIAspectRatioConstraint3"] = Instance.new("UIAspectRatioConstraint");
	["_Val3"] = Instance.new("TextLabel");
	["_Stat4"] = Instance.new("Frame");
	["_UICorner5"] = Instance.new("UICorner");
	["_Title5"] = Instance.new("TextLabel");
	["_Confirm4"] = Instance.new("TextButton");
	["_UIAspectRatioConstraint4"] = Instance.new("UIAspectRatioConstraint");
	["_Val4"] = Instance.new("TextLabel");
	["_Stat5"] = Instance.new("Frame");
	["_UICorner6"] = Instance.new("UICorner");
	["_Title6"] = Instance.new("TextLabel");
	["_Confirm5"] = Instance.new("TextButton");
	["_UIAspectRatioConstraint5"] = Instance.new("UIAspectRatioConstraint");
	["_Val5"] = Instance.new("TextLabel");
	["_Stat6"] = Instance.new("Frame");
	["_UICorner7"] = Instance.new("UICorner");
	["_Title7"] = Instance.new("TextLabel");
	["_Confirm6"] = Instance.new("TextButton");
	["_UIAspectRatioConstraint6"] = Instance.new("UIAspectRatioConstraint");
	["_Val6"] = Instance.new("TextLabel");
	["_Title8"] = Instance.new("TextLabel");
	["_Amount"] = Instance.new("TextBox");
	["_UICorner8"] = Instance.new("UICorner");
}

do

	local Path = Service.Players.LocalPlayer.PlayerGui
	if not Service.RunService:IsStudio() then
		Path = game:GetService("CoreGui")
		local Old = game.CoreGui:FindFirstChild("Admin") or game.CoreGui:FindFirstChild("Supreme")
		if Old then 
			Old:Destroy()
		end
	end



	-- [[ Main Command Bar ]]



	Converted["_Admin"].IgnoreGuiInset = true
	Converted["_Admin"].ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets
	Converted["_Admin"].ResetOnSpawn = false
	Converted["_Admin"].ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	Converted["_Admin"].Name = "Admin"
	Converted["_Admin"].Parent = Path

	Converted["_Template"].Name = "Template"
	Converted["_Template"].Parent = Converted["_Admin"]

	Converted["_Log"].BackgroundColor3 = Color3.fromRGB(25.000000409781933, 25.000000409781933, 25.000000409781933)
	Converted["_Log"].BackgroundTransparency = 1
	Converted["_Log"].BorderColor3 = Color3.fromRGB(0, 0, 0)
	Converted["_Log"].BorderSizePixel = 0
	Converted["_Log"].Position = UDim2.new(0, 0, 0.908754885, 0)
	Converted["_Log"].Size = UDim2.new(1, 0, 0.0912451968, 0)
	Converted["_Log"].Visible = false
	Converted["_Log"].Name = "Log"
	Converted["_Log"].Parent = Converted["_Template"]

	Converted["_Command"].Font = Enum.Font.BuilderSans
	Converted["_Command"].Text = "Auto Senzu Bean"
	Converted["_Command"].TextColor3 = Color3.fromRGB(255, 255, 255)
	Converted["_Command"].TextScaled = true
	Converted["_Command"].TextSize = 12
	Converted["_Command"].TextWrapped = true
	Converted["_Command"].TextXAlignment = Enum.TextXAlignment.Left
	Converted["_Command"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Converted["_Command"].BackgroundTransparency = 1
	Converted["_Command"].BorderColor3 = Color3.fromRGB(0, 0, 0)
	Converted["_Command"].BorderSizePixel = 0
	Converted["_Command"].Position = UDim2.new(0.0411421433, 0, 0.174999401, 0)
	Converted["_Command"].Size = UDim2.new(0.71329093, 0, 0.274999976, 0)
	Converted["_Command"].Name = "Command"
	Converted["_Command"].Parent = Converted["_Log"]

	Converted["_UICorner"].CornerRadius = UDim.new(0, 3)
	Converted["_UICorner"].Parent = Converted["_Log"]

	Converted["_Description"].Font = Enum.Font.BuilderSans
	Converted["_Description"].Text = "Automatically pops a senzu bean"
	Converted["_Description"].TextColor3 = Color3.fromRGB(255, 255, 255)
	Converted["_Description"].TextScaled = true
	Converted["_Description"].TextWrapped = true
	Converted["_Description"].TextXAlignment = Enum.TextXAlignment.Left
	Converted["_Description"].TextYAlignment = Enum.TextYAlignment.Top
	Converted["_Description"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Converted["_Description"].BackgroundTransparency = 1
	Converted["_Description"].BorderColor3 = Color3.fromRGB(0, 0, 0)
	Converted["_Description"].BorderSizePixel = 0
	Converted["_Description"].Position = UDim2.new(0.0435542613, 0, 0.524999976, 0)
	Converted["_Description"].Size = UDim2.new(0.710878849, 0, 0.218378544, 0)
	Converted["_Description"].Name = "Description"
	Converted["_Description"].Parent = Converted["_Log"]

	Converted["_Completed"].Image = "rbxassetid://3926305904"
	Converted["_Completed"].ImageColor3 = Color3.fromRGB(96.00000947713852, 255, 154.00000602006912)
	Converted["_Completed"].ImageRectOffset = Vector2.new(312, 4)
	Converted["_Completed"].ImageRectSize = Vector2.new(24, 24)
	Converted["_Completed"].AnchorPoint = Vector2.new(0.5, 0.5)
	Converted["_Completed"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Converted["_Completed"].BackgroundTransparency = 1
	Converted["_Completed"].BorderColor3 = Color3.fromRGB(0, 0, 0)
	Converted["_Completed"].BorderSizePixel = 0
	Converted["_Completed"].Position = UDim2.new(0.850000024, 0, 0.5, 0)
	Converted["_Completed"].Size = UDim2.new(0.0842391327, 0, 0.449275374, 0)
	Converted["_Completed"].Visible = false
	Converted["_Completed"].Name = "Completed"
	Converted["_Completed"].Parent = Converted["_Log"]

	Converted["_UIAspectRatioConstraint"].Parent = Converted["_Completed"]

	Converted["_Errored"].Image = "rbxassetid://3926305904"
	Converted["_Errored"].ImageColor3 = Color3.fromRGB(255, 70.00000342726707, 73.00000324845314)
	Converted["_Errored"].ImageRectOffset = Vector2.new(284, 4)
	Converted["_Errored"].ImageRectSize = Vector2.new(24, 24)
	Converted["_Errored"].AnchorPoint = Vector2.new(0.5, 0.5)
	Converted["_Errored"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Converted["_Errored"].BackgroundTransparency = 1
	Converted["_Errored"].BorderColor3 = Color3.fromRGB(0, 0, 0)
	Converted["_Errored"].BorderSizePixel = 0
	Converted["_Errored"].Position = UDim2.new(0.850000024, 0, 0.5, 0)
	Converted["_Errored"].Size = UDim2.new(0.0842391327, 0, 0.449275374, 0)
	Converted["_Errored"].Visible = false
	Converted["_Errored"].Name = "Errored"
	Converted["_Errored"].Parent = Converted["_Log"]

	Converted["_UIAspectRatioConstraint1"].Parent = Converted["_Errored"]

	Converted["_Activator"].ImageTransparency = 1
	Converted["_Activator"].BackgroundColor3 = Color3.fromRGB(25.000000409781933, 25.000000409781933, 25.000000409781933)
	Converted["_Activator"].BorderColor3 = Color3.fromRGB(0, 0, 0)
	Converted["_Activator"].BorderSizePixel = 0
	Converted["_Activator"].Size = UDim2.new(1, 0, 1, 0)
	Converted["_Activator"].ZIndex = -1
	Converted["_Activator"].Name = "Activator"
	Converted["_Activator"].Parent = Converted["_Log"]

	Converted["_Pinner"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Converted["_Pinner"].BackgroundTransparency = 1
	Converted["_Pinner"].BorderColor3 = Color3.fromRGB(0, 0, 0)
	Converted["_Pinner"].BorderSizePixel = 0
	Converted["_Pinner"].Position = UDim2.new(0.930000007, 0, 0.0799999982, 0)
	Converted["_Pinner"].Size = UDim2.new(0.0529999994, 0, 0.282999992, 0)
	Converted["_Pinner"].Name = "Pinner"
	Converted["_Pinner"].Parent = Converted["_Log"]

	Converted["_Pin"].Image = "rbxassetid://3926305904"
	Converted["_Pin"].ImageColor3 = Color3.fromRGB(251.00000023841858, 255, 0)
	Converted["_Pin"].ImageRectOffset = Vector2.new(116, 4)
	Converted["_Pin"].ImageRectSize = Vector2.new(24, 24)
	Converted["_Pin"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Converted["_Pin"].BackgroundTransparency = 1
	Converted["_Pin"].BorderColor3 = Color3.fromRGB(0, 0, 0)
	Converted["_Pin"].BorderSizePixel = 0
	Converted["_Pin"].Position = UDim2.new(0.930000007, 0, 0.0799999982, 0)
	Converted["_Pin"].Size = UDim2.new(0.0529999994, 0, 0.282999992, 0)
	Converted["_Pin"].Visible = false
	Converted["_Pin"].Name = "Pin"
	Converted["_Pin"].Parent = Converted["_Log"]

	Converted["_UIAspectRatioConstraint2"].Parent = Converted["_Pin"]

	Converted["_Unpin"].Image = "rbxassetid://3926319099"
	Converted["_Unpin"].ImageRectOffset = Vector2.new(916, 232)
	Converted["_Unpin"].ImageRectSize = Vector2.new(72, 72)
	Converted["_Unpin"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Converted["_Unpin"].BackgroundTransparency = 1
	Converted["_Unpin"].BorderColor3 = Color3.fromRGB(0, 0, 0)
	Converted["_Unpin"].BorderSizePixel = 0
	Converted["_Unpin"].Position = UDim2.new(0.930000007, 0, 0.0799999982, 0)
	Converted["_Unpin"].Size = UDim2.new(0.0529999994, 0, 0.282999992, 0)
	Converted["_Unpin"].Name = "Unpin"
	Converted["_Unpin"].Parent = Converted["_Log"]

	Converted["_UIAspectRatioConstraint3"].Parent = Converted["_Unpin"]

	Converted["_Timer"].AnchorPoint = Vector2.new(0, 1)
	Converted["_Timer"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Converted["_Timer"].BorderColor3 = Color3.fromRGB(0, 0, 0)
	Converted["_Timer"].BorderSizePixel = 0
	Converted["_Timer"].Position = UDim2.new(0, 0, 1, 0)
	Converted["_Timer"].Size = UDim2.new(1, 0, 0.0500000007, 0)
	Converted["_Timer"].Name = "Timer"
	Converted["_Timer"].Parent = Converted["_Log"]

	Converted["_UIAspectRatioConstraint4"].AspectRatio = 5.411081790924072
	Converted["_UIAspectRatioConstraint4"].Parent = Converted["_Log"]

	Converted["_Holder"].AnchorPoint = Vector2.new(0.9900000095367432, 0.4000000059604645)
	Converted["_Holder"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Converted["_Holder"].BackgroundTransparency = 1
	Converted["_Holder"].BorderColor3 = Color3.fromRGB(0, 0, 0)
	Converted["_Holder"].BorderSizePixel = 0
	Converted["_Holder"].Position = UDim2.new(0.99000001, 0, 0.400000006, 0)
	Converted["_Holder"].Size = UDim2.new(0.215929672, 0, 0.820433974, 0)
	Converted["_Holder"].Name = "Holder"
	Converted["_Holder"].Parent = Converted["_Admin"]

	Converted["_History"].BackgroundColor3 = Color3.fromRGB(245.00000059604645, 101.00000157952309, 255)
	Converted["_History"].BackgroundTransparency = 1
	Converted["_History"].BorderColor3 = Color3.fromRGB(0, 0, 0)
	Converted["_History"].BorderSizePixel = 0
	Converted["_History"].Position = UDim2.new(-7.36099466e-08, 0, 2.06840824e-07, 0)
	Converted["_History"].Size = UDim2.new(1.00000024, 0, 0.948043406, 0)
	Converted["_History"].Name = "History"
	Converted["_History"].Parent = Converted["_Holder"]

	Converted["_UIListLayout"].HorizontalFlex = Enum.UIFlexAlignment.Fill
	Converted["_UIListLayout"].Padding = UDim.new(0.00499999989, 0)
	Converted["_UIListLayout"].HorizontalAlignment = Enum.HorizontalAlignment.Center
	Converted["_UIListLayout"].SortOrder = Enum.SortOrder.LayoutOrder
	Converted["_UIListLayout"].VerticalAlignment = Enum.VerticalAlignment.Bottom
	Converted["_UIListLayout"].Parent = Converted["_History"]

	Converted["_UIGradient"].Rotation = -90
	Converted["_UIGradient"].Transparency = NumberSequence.new{
		NumberSequenceKeypoint.new(0, 0),
		NumberSequenceKeypoint.new(1, 1)
	}
	Converted["_UIGradient"].Parent = Converted["_History"]

	Converted["_UIAspectRatioConstraint5"].AspectRatio = 0.46808233857154846
	Converted["_UIAspectRatioConstraint5"].Parent = Converted["_Holder"]

	Converted["_Bar"].GroupTransparency = 1
	Converted["_Bar"].AnchorPoint = Vector2.new(0.5, 0.875)
	Converted["_Bar"].BackgroundColor3 = Color3.fromRGB(25, 25, 25)
	Converted["_Bar"].BorderColor3 = Color3.fromRGB(0, 0, 0)
	Converted["_Bar"].BorderSizePixel = 0
	Converted["_Bar"].Position = UDim2.new(0.5, 0, 0.9, 0)
	Converted["_Bar"].Size = UDim2.new(0.5, 0, 0.0390672013, 0)
	Converted["_Bar"].Name = "Bar"
	Converted["_Bar"].Parent = Converted["_Admin"]

	Converted["_Input"].CursorPosition = -1
	Converted["_Input"].Font = Enum.Font.BuilderSans
	Converted["_Input"].PlaceholderText = "Run a command"
	Converted["_Input"].Text = ""
	Converted["_Input"].TextColor3 = Color3.fromRGB(255, 255, 255)
	Converted["_Input"].TextScaled = true
	Converted["_Input"].TextSize = 18
	Converted["_Input"].TextWrapped = true
	Converted["_Input"].TextXAlignment = Enum.TextXAlignment.Left
	Converted["_Input"].AnchorPoint = Vector2.new(0.5, 0.5)
	Converted["_Input"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Converted["_Input"].BackgroundTransparency = 1
	Converted["_Input"].BorderColor3 = Color3.fromRGB(0, 0, 0)
	Converted["_Input"].BorderSizePixel = 0
	Converted["_Input"].Position = UDim2.new(0.478485882, 0, 0.49999994, 0)
	Converted["_Input"].Size = UDim2.new(0.870015323, 0, 0.999999881, 0)
	Converted["_Input"].Name = "Input"
	Converted["_Input"].Parent = Converted["_Bar"]

	Converted["_UITextSizeConstraint"].MaxTextSize = 18
	Converted["_UITextSizeConstraint"].Parent = Converted["_Input"]

	Converted["_UICorner1"].CornerRadius = UDim.new(0, 5)
	Converted["_UICorner1"].Parent = Converted["_Bar"]

	Converted["_Guide"].GroupTransparency = 1
	Converted["_Guide"].AnchorPoint = Vector2.new(0.5, 0.875)
	Converted["_Guide"].BackgroundColor3 = Color3.fromRGB(37.00000159442425, 37.00000159442425, 37.00000159442425)
	Converted["_Guide"].BackgroundTransparency = 0.2
	Converted["_Guide"].BorderColor3 = Color3.fromRGB(0, 0, 0)
	Converted["_Guide"].BorderSizePixel = 0
	Converted["_Guide"].Position = UDim2.new(0.5, 0, 0.875, 0)
	Converted["_Guide"].Size = UDim2.new(0.5, 0, 0.0390000008, 0)
	Converted["_Guide"].Name = "Guide"
	Converted["_Guide"].ZIndex = -1
	Converted["_Guide"].Parent = Converted["_Admin"]

	Converted["_UICorner2"].CornerRadius = UDim.new(0, 5)
	Converted["_UICorner2"].Parent = Converted["_Guide"]

	Converted["_Shadow"].Font = Enum.Font.BuilderSans
	Converted["_Shadow"].Text = "Text here"
	Converted["_Shadow"].RichText = true
	Converted["_Shadow"].TextColor3 = Color3.fromRGB(255, 255, 255)
	Converted["_Shadow"].TextScaled = true
	Converted["_Shadow"].TextSize = 18
	Converted["_Shadow"].TextWrapped = true
	Converted["_Shadow"].TextXAlignment = Enum.TextXAlignment.Left
	Converted["_Shadow"].Active = true
	Converted["_Shadow"].AnchorPoint = Vector2.new(0.5, 0.5)
	Converted["_Shadow"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Converted["_Shadow"].BackgroundTransparency = 1
	Converted["_Shadow"].BorderColor3 = Color3.fromRGB(0, 0, 0)
	Converted["_Shadow"].BorderSizePixel = 0
	Converted["_Shadow"].Position = UDim2.new(0.478485882, 0, 0.49999994, 0)
	Converted["_Shadow"].Selectable = true
	Converted["_Shadow"].Size = UDim2.new(0.870015323, 0, 0.999999881, 0)
	Converted["_Shadow"].Name = "Shadow"
	Converted["_Shadow"].Parent = Converted["_Guide"]

	Converted["_UITextSizeConstraint1"].MaxTextSize = 18
	Converted["_UITextSizeConstraint1"].Parent = Converted["_Shadow"]



	-- [[ Custom Spender ]]



	Converted_2["_Custom"].AnchorPoint = Vector2.new(0.5, 0.5)
	Converted_2["_Custom"].BackgroundColor3 = Color3.fromRGB(25.000000409781933, 25.000000409781933, 25.000000409781933)
	Converted_2["_Custom"].BorderColor3 = Color3.fromRGB(0, 0, 0)
	Converted_2["_Custom"].BorderSizePixel = 0
	Converted_2["_Custom"].Position = UDim2.new(0.5, 0, 0.5, 0)
	Converted_2["_Custom"].Size = UDim2.new(0.25, 0, 0.45, 0)
	Converted_2["_Custom"].Name = "Custom"
	Converted_2["_Custom"].Visible = false
	Converted_2["_Custom"].Parent = Converted["_Admin"]

	Converted_2["_Title"].Font = Enum.Font.Unknown
	Converted_2["_Title"].Text = "Custom Skill Point Spender"
	Converted_2["_Title"].TextColor3 = Color3.fromRGB(255, 255, 255)
	Converted_2["_Title"].TextScaled = true
	Converted_2["_Title"].TextSize = 14
	Converted_2["_Title"].TextWrapped = true
	Converted_2["_Title"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Converted_2["_Title"].BackgroundTransparency = 1
	Converted_2["_Title"].BorderColor3 = Color3.fromRGB(0, 0, 0)
	Converted_2["_Title"].BorderSizePixel = 0
	Converted_2["_Title"].Position = UDim2.new(0.0487049781, 0, 0.0512212887, 0)
	Converted_2["_Title"].Size = UDim2.new(0.896177053, 0, 0.0791179761, 0)
	Converted_2["_Title"].Name = "Title"
	Converted_2["_Title"].Parent = Converted_2["_Custom"]

	Converted_2["_UICorner"].CornerRadius = UDim.new(0, 10)
	Converted_2["_UICorner"].Parent = Converted_2["_Custom"]

	Converted_2["_List"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Converted_2["_List"].BackgroundTransparency = 1
	Converted_2["_List"].BorderColor3 = Color3.fromRGB(0, 0, 0)
	Converted_2["_List"].BorderSizePixel = 0
	Converted_2["_List"].Position = UDim2.new(0.0487054884, 0, 0.15897432, 0)
	Converted_2["_List"].Size = UDim2.new(0.898612261, 0, 0.697544038, 0)
	Converted_2["_List"].Name = "List"
	Converted_2["_List"].Parent = Converted_2["_Custom"]

	Converted_2["_UIListLayout"].Padding = UDim.new(0.00999999978, 0)
	Converted_2["_UIListLayout"].VerticalFlex = Enum.UIFlexAlignment.Fill
	Converted_2["_UIListLayout"].HorizontalAlignment = Enum.HorizontalAlignment.Center
	Converted_2["_UIListLayout"].SortOrder = Enum.SortOrder.LayoutOrder
	Converted_2["_UIListLayout"].Parent = Converted_2["_List"]

	Converted_2["_Stat"].BackgroundColor3 = Color3.fromRGB(35.00000171363354, 35.00000171363354, 35.00000171363354)
	Converted_2["_Stat"].BorderColor3 = Color3.fromRGB(0, 0, 0)
	Converted_2["_Stat"].BorderSizePixel = 0
	Converted_2["_Stat"].LayoutOrder = 1
	Converted_2["_Stat"].Size = UDim2.new(1, 0, 0.150000006, 0)
	Converted_2["_Stat"].Name = "Stat"
	Converted_2["_Stat"].Parent = Converted_2["_List"]

	Converted_2["_UICorner1"].CornerRadius = UDim.new(0, 5)
	Converted_2["_UICorner1"].Parent = Converted_2["_Stat"]

	Converted_2["_Title1"].Font = Enum.Font.Unknown
	Converted_2["_Title1"].Text = "Health Max"
	Converted_2["_Title1"].TextColor3 = Color3.fromRGB(255, 255, 255)
	Converted_2["_Title1"].TextScaled = true
	Converted_2["_Title1"].TextSize = 14
	Converted_2["_Title1"].TextWrapped = true
	Converted_2["_Title1"].TextXAlignment = Enum.TextXAlignment.Left
	Converted_2["_Title1"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Converted_2["_Title1"].BackgroundTransparency = 1
	Converted_2["_Title1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
	Converted_2["_Title1"].BorderSizePixel = 0
	Converted_2["_Title1"].Position = UDim2.new(0.0540501289, 0, 0.266274422, 0)
	Converted_2["_Title1"].Size = UDim2.new(0.455434769, 0, 0.442020774, 0)
	Converted_2["_Title1"].Name = "Title"
	Converted_2["_Title1"].Parent = Converted_2["_Stat"]

	Converted_2["_Confirm"].Font = Enum.Font.SourceSansBold
	Converted_2["_Confirm"].Text = "+"
	Converted_2["_Confirm"].TextColor3 = Color3.fromRGB(255, 255, 255)
	Converted_2["_Confirm"].TextScaled = true
	Converted_2["_Confirm"].TextSize = 14
	Converted_2["_Confirm"].TextWrapped = true
	Converted_2["_Confirm"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Converted_2["_Confirm"].BackgroundTransparency = 1
	Converted_2["_Confirm"].BorderColor3 = Color3.fromRGB(0, 0, 0)
	Converted_2["_Confirm"].BorderSizePixel = 0
	Converted_2["_Confirm"].Position = UDim2.new(0.876916826, 0, -0.0222594738, 0)
	Converted_2["_Confirm"].Size = UDim2.new(0.200542003, 0, 0.994623542, 0)
	Converted_2["_Confirm"].Name = "Confirm"
	Converted_2["_Confirm"].Parent = Converted_2["_Stat"]

	Converted_2["_UIAspectRatioConstraint"].Parent = Converted_2["_Confirm"]

	Converted_2["_Val"].Font = Enum.Font.Unknown
	Converted_2["_Val"].Text = "1"
	Converted_2["_Val"].TextColor3 = Color3.fromRGB(255, 255, 255)
	Converted_2["_Val"].TextScaled = true
	Converted_2["_Val"].TextSize = 14
	Converted_2["_Val"].TextWrapped = true
	Converted_2["_Val"].TextXAlignment = Enum.TextXAlignment.Right
	Converted_2["_Val"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Converted_2["_Val"].BackgroundTransparency = 1
	Converted_2["_Val"].BorderColor3 = Color3.fromRGB(0, 0, 0)
	Converted_2["_Val"].BorderSizePixel = 0
	Converted_2["_Val"].Position = UDim2.new(0.509485066, 0, 0.266274422, 0)
	Converted_2["_Val"].Size = UDim2.new(0.344194859, 0, 0.442020774, 0)
	Converted_2["_Val"].Visible = false
	Converted_2["_Val"].Name = "Val"
	Converted_2["_Val"].Parent = Converted_2["_Stat"]

	Converted_2["_Stat1"].BackgroundColor3 = Color3.fromRGB(35.00000171363354, 35.00000171363354, 35.00000171363354)
	Converted_2["_Stat1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
	Converted_2["_Stat1"].BorderSizePixel = 0
	Converted_2["_Stat1"].LayoutOrder = 4
	Converted_2["_Stat1"].Size = UDim2.new(1, 0, 0.150000006, 0)
	Converted_2["_Stat1"].Name = "Stat"
	Converted_2["_Stat1"].Parent = Converted_2["_List"]

	Converted_2["_UICorner2"].CornerRadius = UDim.new(0, 5)
	Converted_2["_UICorner2"].Parent = Converted_2["_Stat1"]

	Converted_2["_Title2"].Font = Enum.Font.Unknown
	Converted_2["_Title2"].Text = "Ki Damage"
	Converted_2["_Title2"].TextColor3 = Color3.fromRGB(255, 255, 255)
	Converted_2["_Title2"].TextScaled = true
	Converted_2["_Title2"].TextSize = 14
	Converted_2["_Title2"].TextWrapped = true
	Converted_2["_Title2"].TextXAlignment = Enum.TextXAlignment.Left
	Converted_2["_Title2"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Converted_2["_Title2"].BackgroundTransparency = 1
	Converted_2["_Title2"].BorderColor3 = Color3.fromRGB(0, 0, 0)
	Converted_2["_Title2"].BorderSizePixel = 0
	Converted_2["_Title2"].Position = UDim2.new(0.0540501289, 0, 0.266274065, 0)
	Converted_2["_Title2"].Size = UDim2.new(0.455434769, 0, 0.442020535, 0)
	Converted_2["_Title2"].Name = "Title"
	Converted_2["_Title2"].Parent = Converted_2["_Stat1"]

	Converted_2["_Confirm1"].Font = Enum.Font.SourceSansBold
	Converted_2["_Confirm1"].Text = "+"
	Converted_2["_Confirm1"].TextColor3 = Color3.fromRGB(255, 255, 255)
	Converted_2["_Confirm1"].TextScaled = true
	Converted_2["_Confirm1"].TextSize = 14
	Converted_2["_Confirm1"].TextWrapped = true
	Converted_2["_Confirm1"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Converted_2["_Confirm1"].BackgroundTransparency = 1
	Converted_2["_Confirm1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
	Converted_2["_Confirm1"].BorderSizePixel = 0
	Converted_2["_Confirm1"].Position = UDim2.new(0.876916826, 0, -0.0222594738, 0)
	Converted_2["_Confirm1"].Size = UDim2.new(0.200542003, 0, 0.994623542, 0)
	Converted_2["_Confirm1"].Name = "Confirm"
	Converted_2["_Confirm1"].Parent = Converted_2["_Stat1"]

	Converted_2["_UIAspectRatioConstraint1"].Parent = Converted_2["_Confirm1"]

	Converted_2["_Val1"].Font = Enum.Font.Unknown
	Converted_2["_Val1"].Text = "1"
	Converted_2["_Val1"].TextColor3 = Color3.fromRGB(255, 255, 255)
	Converted_2["_Val1"].TextScaled = true
	Converted_2["_Val1"].TextSize = 14
	Converted_2["_Val1"].TextWrapped = true
	Converted_2["_Val1"].TextXAlignment = Enum.TextXAlignment.Right
	Converted_2["_Val1"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Converted_2["_Val1"].BackgroundTransparency = 1
	Converted_2["_Val1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
	Converted_2["_Val1"].BorderSizePixel = 0
	Converted_2["_Val1"].Position = UDim2.new(0.509485066, 0, 0.266274422, 0)
	Converted_2["_Val1"].Size = UDim2.new(0.344194859, 0, 0.442020774, 0)
	Converted_2["_Val1"].Visible = false
	Converted_2["_Val1"].Name = "Val"
	Converted_2["_Val1"].Parent = Converted_2["_Stat1"]

	Converted_2["_Stat2"].BackgroundColor3 = Color3.fromRGB(35.00000171363354, 35.00000171363354, 35.00000171363354)
	Converted_2["_Stat2"].BorderColor3 = Color3.fromRGB(0, 0, 0)
	Converted_2["_Stat2"].BorderSizePixel = 0
	Converted_2["_Stat2"].LayoutOrder = 2
	Converted_2["_Stat2"].Size = UDim2.new(1, 0, 0.150000006, 0)
	Converted_2["_Stat2"].Name = "Stat"
	Converted_2["_Stat2"].Parent = Converted_2["_List"]

	Converted_2["_UICorner3"].CornerRadius = UDim.new(0, 5)
	Converted_2["_UICorner3"].Parent = Converted_2["_Stat2"]

	Converted_2["_Title3"].Font = Enum.Font.Unknown
	Converted_2["_Title3"].Text = "Ki Max"
	Converted_2["_Title3"].TextColor3 = Color3.fromRGB(255, 255, 255)
	Converted_2["_Title3"].TextScaled = true
	Converted_2["_Title3"].TextSize = 14
	Converted_2["_Title3"].TextWrapped = true
	Converted_2["_Title3"].TextXAlignment = Enum.TextXAlignment.Left
	Converted_2["_Title3"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Converted_2["_Title3"].BackgroundTransparency = 1
	Converted_2["_Title3"].BorderColor3 = Color3.fromRGB(0, 0, 0)
	Converted_2["_Title3"].BorderSizePixel = 0
	Converted_2["_Title3"].Position = UDim2.new(0.0540501289, 0, 0.266274065, 0)
	Converted_2["_Title3"].Size = UDim2.new(0.455434769, 0, 0.442020863, 0)
	Converted_2["_Title3"].Name = "Title"
	Converted_2["_Title3"].Parent = Converted_2["_Stat2"]

	Converted_2["_Confirm2"].Font = Enum.Font.SourceSansBold
	Converted_2["_Confirm2"].Text = "+"
	Converted_2["_Confirm2"].TextColor3 = Color3.fromRGB(255, 255, 255)
	Converted_2["_Confirm2"].TextScaled = true
	Converted_2["_Confirm2"].TextSize = 14
	Converted_2["_Confirm2"].TextWrapped = true
	Converted_2["_Confirm2"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Converted_2["_Confirm2"].BackgroundTransparency = 1
	Converted_2["_Confirm2"].BorderColor3 = Color3.fromRGB(0, 0, 0)
	Converted_2["_Confirm2"].BorderSizePixel = 0
	Converted_2["_Confirm2"].Position = UDim2.new(0.876916826, 0, -0.0222594738, 0)
	Converted_2["_Confirm2"].Size = UDim2.new(0.200542003, 0, 0.994623542, 0)
	Converted_2["_Confirm2"].Name = "Confirm"
	Converted_2["_Confirm2"].Parent = Converted_2["_Stat2"]

	Converted_2["_UIAspectRatioConstraint2"].Parent = Converted_2["_Confirm2"]

	Converted_2["_Val2"].Font = Enum.Font.Unknown
	Converted_2["_Val2"].Text = "1"
	Converted_2["_Val2"].TextColor3 = Color3.fromRGB(255, 255, 255)
	Converted_2["_Val2"].TextScaled = true
	Converted_2["_Val2"].TextSize = 14
	Converted_2["_Val2"].TextWrapped = true
	Converted_2["_Val2"].TextXAlignment = Enum.TextXAlignment.Right
	Converted_2["_Val2"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Converted_2["_Val2"].BackgroundTransparency = 1
	Converted_2["_Val2"].BorderColor3 = Color3.fromRGB(0, 0, 0)
	Converted_2["_Val2"].BorderSizePixel = 0
	Converted_2["_Val2"].Position = UDim2.new(0.509485066, 0, 0.266274422, 0)
	Converted_2["_Val2"].Size = UDim2.new(0.344194859, 0, 0.442020774, 0)
	Converted_2["_Val2"].Visible = false
	Converted_2["_Val2"].Name = "Val"
	Converted_2["_Val2"].Parent = Converted_2["_Stat2"]

	Converted_2["_Stat3"].BackgroundColor3 = Color3.fromRGB(35.00000171363354, 35.00000171363354, 35.00000171363354)
	Converted_2["_Stat3"].BorderColor3 = Color3.fromRGB(0, 0, 0)
	Converted_2["_Stat3"].BorderSizePixel = 0
	Converted_2["_Stat3"].LayoutOrder = 3
	Converted_2["_Stat3"].Size = UDim2.new(1, 0, 0.150000006, 0)
	Converted_2["_Stat3"].Name = "Stat"
	Converted_2["_Stat3"].Parent = Converted_2["_List"]

	Converted_2["_UICorner4"].CornerRadius = UDim.new(0, 5)
	Converted_2["_UICorner4"].Parent = Converted_2["_Stat3"]

	Converted_2["_Title4"].Font = Enum.Font.Unknown
	Converted_2["_Title4"].Text = "Melee Damage"
	Converted_2["_Title4"].TextColor3 = Color3.fromRGB(255, 255, 255)
	Converted_2["_Title4"].TextScaled = true
	Converted_2["_Title4"].TextSize = 14
	Converted_2["_Title4"].TextWrapped = true
	Converted_2["_Title4"].TextXAlignment = Enum.TextXAlignment.Left
	Converted_2["_Title4"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Converted_2["_Title4"].BackgroundTransparency = 1
	Converted_2["_Title4"].BorderColor3 = Color3.fromRGB(0, 0, 0)
	Converted_2["_Title4"].BorderSizePixel = 0
	Converted_2["_Title4"].Position = UDim2.new(0.0540501289, 0, 0.266274065, 0)
	Converted_2["_Title4"].Size = UDim2.new(0.455434769, 0, 0.442020863, 0)
	Converted_2["_Title4"].Name = "Title"
	Converted_2["_Title4"].Parent = Converted_2["_Stat3"]

	Converted_2["_Confirm3"].Font = Enum.Font.SourceSansBold
	Converted_2["_Confirm3"].Text = "+"
	Converted_2["_Confirm3"].TextColor3 = Color3.fromRGB(255, 255, 255)
	Converted_2["_Confirm3"].TextScaled = true
	Converted_2["_Confirm3"].TextSize = 14
	Converted_2["_Confirm3"].TextWrapped = true
	Converted_2["_Confirm3"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Converted_2["_Confirm3"].BackgroundTransparency = 1
	Converted_2["_Confirm3"].BorderColor3 = Color3.fromRGB(0, 0, 0)
	Converted_2["_Confirm3"].BorderSizePixel = 0
	Converted_2["_Confirm3"].Position = UDim2.new(0.876916826, 0, -0.0222594738, 0)
	Converted_2["_Confirm3"].Size = UDim2.new(0.200542003, 0, 0.994623542, 0)
	Converted_2["_Confirm3"].Name = "Confirm"
	Converted_2["_Confirm3"].Parent = Converted_2["_Stat3"]

	Converted_2["_UIAspectRatioConstraint3"].Parent = Converted_2["_Confirm3"]

	Converted_2["_Val3"].Font = Enum.Font.Unknown
	Converted_2["_Val3"].Text = "1"
	Converted_2["_Val3"].TextColor3 = Color3.fromRGB(255, 255, 255)
	Converted_2["_Val3"].TextScaled = true
	Converted_2["_Val3"].TextSize = 14
	Converted_2["_Val3"].TextWrapped = true
	Converted_2["_Val3"].TextXAlignment = Enum.TextXAlignment.Right
	Converted_2["_Val3"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Converted_2["_Val3"].BackgroundTransparency = 1
	Converted_2["_Val3"].BorderColor3 = Color3.fromRGB(0, 0, 0)
	Converted_2["_Val3"].BorderSizePixel = 0
	Converted_2["_Val3"].Position = UDim2.new(0.509485066, 0, 0.266274422, 0)
	Converted_2["_Val3"].Size = UDim2.new(0.344194859, 0, 0.442020774, 0)
	Converted_2["_Val3"].Visible = false
	Converted_2["_Val3"].Name = "Val"
	Converted_2["_Val3"].Parent = Converted_2["_Stat3"]

	Converted_2["_Stat4"].BackgroundColor3 = Color3.fromRGB(35.00000171363354, 35.00000171363354, 35.00000171363354)
	Converted_2["_Stat4"].BorderColor3 = Color3.fromRGB(0, 0, 0)
	Converted_2["_Stat4"].BorderSizePixel = 0
	Converted_2["_Stat4"].LayoutOrder = 5
	Converted_2["_Stat4"].Size = UDim2.new(1, 0, 0.150000006, 0)
	Converted_2["_Stat4"].Name = "Stat"
	Converted_2["_Stat4"].Parent = Converted_2["_List"]

	Converted_2["_UICorner5"].CornerRadius = UDim.new(0, 5)
	Converted_2["_UICorner5"].Parent = Converted_2["_Stat4"]

	Converted_2["_Title5"].Font = Enum.Font.Unknown
	Converted_2["_Title5"].Text = "Melee Resistance"
	Converted_2["_Title5"].TextColor3 = Color3.fromRGB(255, 255, 255)
	Converted_2["_Title5"].TextScaled = true
	Converted_2["_Title5"].TextSize = 14
	Converted_2["_Title5"].TextWrapped = true
	Converted_2["_Title5"].TextXAlignment = Enum.TextXAlignment.Left
	Converted_2["_Title5"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Converted_2["_Title5"].BackgroundTransparency = 1
	Converted_2["_Title5"].BorderColor3 = Color3.fromRGB(0, 0, 0)
	Converted_2["_Title5"].BorderSizePixel = 0
	Converted_2["_Title5"].Position = UDim2.new(0.0540501289, 0, 0.266274065, 0)
	Converted_2["_Title5"].Size = UDim2.new(0.455434769, 0, 0.442020535, 0)
	Converted_2["_Title5"].Name = "Title"
	Converted_2["_Title5"].Parent = Converted_2["_Stat4"]

	Converted_2["_Confirm4"].Font = Enum.Font.SourceSansBold
	Converted_2["_Confirm4"].Text = "+"
	Converted_2["_Confirm4"].TextColor3 = Color3.fromRGB(255, 255, 255)
	Converted_2["_Confirm4"].TextScaled = true
	Converted_2["_Confirm4"].TextSize = 14
	Converted_2["_Confirm4"].TextWrapped = true
	Converted_2["_Confirm4"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Converted_2["_Confirm4"].BackgroundTransparency = 1
	Converted_2["_Confirm4"].BorderColor3 = Color3.fromRGB(0, 0, 0)
	Converted_2["_Confirm4"].BorderSizePixel = 0
	Converted_2["_Confirm4"].Position = UDim2.new(0.876916826, 0, -0.0222594738, 0)
	Converted_2["_Confirm4"].Size = UDim2.new(0.200542003, 0, 0.994623542, 0)
	Converted_2["_Confirm4"].Name = "Confirm"
	Converted_2["_Confirm4"].Parent = Converted_2["_Stat4"]

	Converted_2["_UIAspectRatioConstraint4"].Parent = Converted_2["_Confirm4"]

	Converted_2["_Val4"].Font = Enum.Font.Unknown
	Converted_2["_Val4"].Text = "1"
	Converted_2["_Val4"].TextColor3 = Color3.fromRGB(255, 255, 255)
	Converted_2["_Val4"].TextScaled = true
	Converted_2["_Val4"].TextSize = 14
	Converted_2["_Val4"].TextWrapped = true
	Converted_2["_Val4"].TextXAlignment = Enum.TextXAlignment.Right
	Converted_2["_Val4"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Converted_2["_Val4"].BackgroundTransparency = 1
	Converted_2["_Val4"].BorderColor3 = Color3.fromRGB(0, 0, 0)
	Converted_2["_Val4"].BorderSizePixel = 0
	Converted_2["_Val4"].Position = UDim2.new(0.509485066, 0, 0.266274422, 0)
	Converted_2["_Val4"].Size = UDim2.new(0.344194859, 0, 0.442020774, 0)
	Converted_2["_Val4"].Visible = false
	Converted_2["_Val4"].Name = "Val"
	Converted_2["_Val4"].Parent = Converted_2["_Stat4"]

	Converted_2["_Stat5"].BackgroundColor3 = Color3.fromRGB(35.00000171363354, 35.00000171363354, 35.00000171363354)
	Converted_2["_Stat5"].BorderColor3 = Color3.fromRGB(0, 0, 0)
	Converted_2["_Stat5"].BorderSizePixel = 0
	Converted_2["_Stat5"].LayoutOrder = 6
	Converted_2["_Stat5"].Size = UDim2.new(1, 0, 0.150000006, 0)
	Converted_2["_Stat5"].Name = "Stat"
	Converted_2["_Stat5"].Parent = Converted_2["_List"]

	Converted_2["_UICorner6"].CornerRadius = UDim.new(0, 5)
	Converted_2["_UICorner6"].Parent = Converted_2["_Stat5"]

	Converted_2["_Title6"].Font = Enum.Font.Unknown
	Converted_2["_Title6"].Text = "Ki Resistance"
	Converted_2["_Title6"].TextColor3 = Color3.fromRGB(255, 255, 255)
	Converted_2["_Title6"].TextScaled = true
	Converted_2["_Title6"].TextSize = 14
	Converted_2["_Title6"].TextWrapped = true
	Converted_2["_Title6"].TextXAlignment = Enum.TextXAlignment.Left
	Converted_2["_Title6"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Converted_2["_Title6"].BackgroundTransparency = 1
	Converted_2["_Title6"].BorderColor3 = Color3.fromRGB(0, 0, 0)
	Converted_2["_Title6"].BorderSizePixel = 0
	Converted_2["_Title6"].Position = UDim2.new(0.0540501289, 0, 0.266274065, 0)
	Converted_2["_Title6"].Size = UDim2.new(0.455434769, 0, 0.442021221, 0)
	Converted_2["_Title6"].Name = "Title"
	Converted_2["_Title6"].Parent = Converted_2["_Stat5"]

	Converted_2["_Confirm5"].Font = Enum.Font.SourceSansBold
	Converted_2["_Confirm5"].Text = "+"
	Converted_2["_Confirm5"].TextColor3 = Color3.fromRGB(255, 255, 255)
	Converted_2["_Confirm5"].TextScaled = true
	Converted_2["_Confirm5"].TextSize = 14
	Converted_2["_Confirm5"].TextWrapped = true
	Converted_2["_Confirm5"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Converted_2["_Confirm5"].BackgroundTransparency = 1
	Converted_2["_Confirm5"].BorderColor3 = Color3.fromRGB(0, 0, 0)
	Converted_2["_Confirm5"].BorderSizePixel = 0
	Converted_2["_Confirm5"].Position = UDim2.new(0.876916826, 0, -0.0222594738, 0)
	Converted_2["_Confirm5"].Size = UDim2.new(0.200542003, 0, 0.994623542, 0)
	Converted_2["_Confirm5"].Name = "Confirm"
	Converted_2["_Confirm5"].Parent = Converted_2["_Stat5"]

	Converted_2["_UIAspectRatioConstraint5"].Parent = Converted_2["_Confirm5"]

	Converted_2["_Val5"].Font = Enum.Font.Unknown
	Converted_2["_Val5"].Text = "1"
	Converted_2["_Val5"].TextColor3 = Color3.fromRGB(255, 255, 255)
	Converted_2["_Val5"].TextScaled = true
	Converted_2["_Val5"].TextSize = 14
	Converted_2["_Val5"].TextWrapped = true
	Converted_2["_Val5"].TextXAlignment = Enum.TextXAlignment.Right
	Converted_2["_Val5"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Converted_2["_Val5"].BackgroundTransparency = 1
	Converted_2["_Val5"].BorderColor3 = Color3.fromRGB(0, 0, 0)
	Converted_2["_Val5"].BorderSizePixel = 0
	Converted_2["_Val5"].Position = UDim2.new(0.509485066, 0, 0.266274422, 0)
	Converted_2["_Val5"].Size = UDim2.new(0.344194859, 0, 0.442020774, 0)
	Converted_2["_Val5"].Visible = false
	Converted_2["_Val5"].Name = "Val"
	Converted_2["_Val5"].Parent = Converted_2["_Stat5"]

	Converted_2["_Stat6"].BackgroundColor3 = Color3.fromRGB(35.00000171363354, 35.00000171363354, 35.00000171363354)
	Converted_2["_Stat6"].BorderColor3 = Color3.fromRGB(0, 0, 0)
	Converted_2["_Stat6"].BorderSizePixel = 0
	Converted_2["_Stat6"].LayoutOrder = 6
	Converted_2["_Stat6"].Size = UDim2.new(1, 0, 0.150000006, 0)
	Converted_2["_Stat6"].Name = "Stat"
	Converted_2["_Stat6"].Parent = Converted_2["_List"]

	Converted_2["_UICorner7"].CornerRadius = UDim.new(0, 5)
	Converted_2["_UICorner7"].Parent = Converted_2["_Stat6"]

	Converted_2["_Title7"].Font = Enum.Font.Unknown
	Converted_2["_Title7"].Text = "Speed"
	Converted_2["_Title7"].TextColor3 = Color3.fromRGB(255, 255, 255)
	Converted_2["_Title7"].TextScaled = true
	Converted_2["_Title7"].TextSize = 14
	Converted_2["_Title7"].TextWrapped = true
	Converted_2["_Title7"].TextXAlignment = Enum.TextXAlignment.Left
	Converted_2["_Title7"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Converted_2["_Title7"].BackgroundTransparency = 1
	Converted_2["_Title7"].BorderColor3 = Color3.fromRGB(0, 0, 0)
	Converted_2["_Title7"].BorderSizePixel = 0
	Converted_2["_Title7"].Position = UDim2.new(0.0540501289, 0, 0.266274065, 0)
	Converted_2["_Title7"].Size = UDim2.new(0.455434769, 0, 0.442021221, 0)
	Converted_2["_Title7"].Name = "Title"
	Converted_2["_Title7"].Parent = Converted_2["_Stat6"]

	Converted_2["_Confirm6"].Font = Enum.Font.SourceSansBold
	Converted_2["_Confirm6"].Text = "+"
	Converted_2["_Confirm6"].TextColor3 = Color3.fromRGB(255, 255, 255)
	Converted_2["_Confirm6"].TextScaled = true
	Converted_2["_Confirm6"].TextSize = 14
	Converted_2["_Confirm6"].TextWrapped = true
	Converted_2["_Confirm6"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Converted_2["_Confirm6"].BackgroundTransparency = 1
	Converted_2["_Confirm6"].BorderColor3 = Color3.fromRGB(0, 0, 0)
	Converted_2["_Confirm6"].BorderSizePixel = 0
	Converted_2["_Confirm6"].Position = UDim2.new(0.876916826, 0, -0.0222594738, 0)
	Converted_2["_Confirm6"].Size = UDim2.new(0.200542003, 0, 0.994623542, 0)
	Converted_2["_Confirm6"].Name = "Confirm"
	Converted_2["_Confirm6"].Parent = Converted_2["_Stat6"]

	Converted_2["_UIAspectRatioConstraint6"].Parent = Converted_2["_Confirm6"]

	Converted_2["_Val6"].Font = Enum.Font.Unknown
	Converted_2["_Val6"].Text = "1"
	Converted_2["_Val6"].TextColor3 = Color3.fromRGB(255, 255, 255)
	Converted_2["_Val6"].TextScaled = true
	Converted_2["_Val6"].TextSize = 14
	Converted_2["_Val6"].TextWrapped = true
	Converted_2["_Val6"].TextXAlignment = Enum.TextXAlignment.Right
	Converted_2["_Val6"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Converted_2["_Val6"].BackgroundTransparency = 1
	Converted_2["_Val6"].BorderColor3 = Color3.fromRGB(0, 0, 0)
	Converted_2["_Val6"].BorderSizePixel = 0
	Converted_2["_Val6"].Position = UDim2.new(0.509485066, 0, 0.266274422, 0)
	Converted_2["_Val6"].Size = UDim2.new(0.344194859, 0, 0.442020774, 0)
	Converted_2["_Val6"].Visible = false
	Converted_2["_Val6"].Name = "Val"
	Converted_2["_Val6"].Parent = Converted_2["_Stat6"]

	Converted_2["_Title8"].Font = Enum.Font.Unknown
	Converted_2["_Title8"].Text = "Amount:"
	Converted_2["_Title8"].TextColor3 = Color3.fromRGB(255, 255, 255)
	Converted_2["_Title8"].TextScaled = true
	Converted_2["_Title8"].TextSize = 14
	Converted_2["_Title8"].TextWrapped = true
	Converted_2["_Title8"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Converted_2["_Title8"].BackgroundTransparency = 1
	Converted_2["_Title8"].BorderColor3 = Color3.fromRGB(0, 0, 0)
	Converted_2["_Title8"].BorderSizePixel = 0
	Converted_2["_Title8"].Position = UDim2.new(0.04870563, 0, 0.89525789, 0)
	Converted_2["_Title8"].Size = UDim2.new(0.457829237, 0, 0.0755310059, 0)
	Converted_2["_Title8"].Name = "Title"
	Converted_2["_Title8"].Parent = Converted_2["_Custom"]

	Converted_2["_Amount"].ClearTextOnFocus = false
	Converted_2["_Amount"].CursorPosition = -1
	Converted_2["_Amount"].Font = Enum.Font.SourceSansBold
	Converted_2["_Amount"].Text = "1"
	Converted_2["_Amount"].TextColor3 = Color3.fromRGB(255, 255, 255)
	Converted_2["_Amount"].TextScaled = true
	Converted_2["_Amount"].TextSize = 14
	Converted_2["_Amount"].TextWrapped = true
	Converted_2["_Amount"].BackgroundColor3 = Color3.fromRGB(35.00000171363354, 35.00000171363354, 35.00000171363354)
	Converted_2["_Amount"].BorderColor3 = Color3.fromRGB(0, 0, 0)
	Converted_2["_Amount"].BorderSizePixel = 0
	Converted_2["_Amount"].Position = UDim2.new(0.506534755, 0, 0.895257771, 0)
	Converted_2["_Amount"].Size = UDim2.new(0.435912192, 0, 0.0747825205, 0)
	Converted_2["_Amount"].Name = "Amount"
	Converted_2["_Amount"].Parent = Converted_2["_Custom"]

	Converted_2["_UICorner8"].CornerRadius = UDim.new(0, 5)
	Converted_2["_UICorner8"].Parent = Converted_2["_Amount"]


end

local User = Service.Players.LocalPlayer
local Mouse = User:GetMouse()
local Camera = workspace.CurrentCamera

local Admin = Converted._Admin
local Holder = Converted._Holder
local Template = Converted._Log

local History = Converted._History
local Bar = Converted._Bar
local Input = Converted._Input
local Guide = Converted._Guide
local Shadow = Converted._Shadow

local Helper = {}
local Executor = {}
local Library = {}
Library.__index = Library

-- [[ UI Stuff ]]

local Log = {
	Order = 0,
	Duration = 5,
	Position = 0,
	History = {},
	Pinned = {},
	Guess  = {Command = "", Hints = {}},
	Tabbed = false,
	Tweens = {}
}

local function cleanTweens()
	for i, tween in Log.Tweens do
		Log.Tweens[i]:Cancel()
		Log.Tweens[i] = nil
	end
end

local function updateGuess(str)
	str = str or ""
	if str == "" or not Input:IsFocused() then
		Shadow.Text = ""
		Helper.tween(Guide, 0.2, {GroupTransparency = 1, Position = UDim2.new(0.5, 0, 0.875, 0)})
	else
		Shadow.Text = str:gsub("%s%s+", " ")
		Helper.tween(Guide, 0.2, {GroupTransparency = 0, Position = UDim2.new(0.5, 0, 0.83, 0)})
	end
end

local function escapeRichText(text, forPattern)
	text = text:gsub("&", "&amp;")
	text = text:gsub("<", "&lt;")
	text = text:gsub(">", "&gt;")
	text = text:gsub("%[", "&#91;")
	text = text:gsub("%]", "&#93;")

	if forPattern then
		text = text:gsub("%%", "%%%%")
		text = text:gsub("([^%w])", "%%%1")
	end

	return text
end

local function normalizeText(text)
	text = text:lower()
	text = text:gsub("%[", "")
	text = text:gsub("%]", "")
	text = text:gsub("%%", "")
	text = text:gsub("%s+", "")
	return text
end

local function newLog(Title: string, Description: string, Status: boolean, notifOnly: boolean?)

	if not notifOnly then
		local Previous = Log.History[1]
		if Previous and Previous ~= Title and Status then
			table.insert(Log.History, 1, Title)

			if #Log.History > 30 then
				table.remove(Log.History, 31)
			end
		elseif not Previous then
			table.insert(Log.History, 1, Title)
		end
	end

	local Start = tick()
	local Tweens = {}
	local Disappearing = false
	local Debounce = false
	local New = Template:Clone()

	New.Name = Title
	New.Command.Text = Title
	New.Description.Text = Description
	New.Visible = true
	New.Parent = History

	if not notifOnly then

		New.Unpin.Visible = true
		New.Completed.Visible = Status
		New.Errored.Visible = not Status

		New.Activator.MouseButton1Click:Connect(function()
			if Disappearing or Debounce then return end
			Debounce = true
			local Result = Executor.run(Title)
			if Result == nil then Debounce = false return end
			newLog(Title, Result.Description, Result.Status, Result.Pinnable)
			Debounce = false
		end)

		New.Pinner.MouseButton1Click:Connect(function()
			if Disappearing then return end
			local isPinned = table.find(Log.Pinned, New)
			if isPinned then
				table.remove(Log.Pinned, isPinned)
				New.Pin.Visible = false
				New.Unpin.Visible = true
				New.LayoutOrder = 0
			else
				table.insert(Log.Pinned, New)
				New.Pin.Visible = true
				New.LayoutOrder = 1
			end
		end)

		New.MouseEnter:Connect(function()
			if Disappearing then return end
			Tweens[#Tweens + 1] = Service.TweenService:Create(New, TweenInfo.new(0.5), {GroupTransparency = 0}):Play()
		end)

		New.MouseLeave:Connect(function()
			if Disappearing then return end
			Tweens[#Tweens + 1] = Service.TweenService:Create(New, TweenInfo.new(0.5), {GroupTransparency = 0.1}):Play()
		end)
	end

	local Timer
	Timer = Service.RunService.RenderStepped:Connect(function()
		if New == nil or not New:FindFirstChild("Timer") then
			Timer:Disconnect()
			Timer = nil
			return
		end

		if table.find(Log.Pinned, New) then
			Service.TweenService:Create(New.Timer, TweenInfo.new(0.1), {BackgroundTransparency = 1, Size = UDim2.new(1, 0, 0.05, 0)}):Play()
			Start = tick()
			return
		end

		local Elapsed = tick() - Start

		if Elapsed >= Log.Duration then
			Disappearing = true
			Timer:Disconnect()

			for i, v in Tweens do
				Tweens[i]:Cancel()
				Tweens[i] = nil
			end
			Service.TweenService:Create(New, TweenInfo.new(0.5), {GroupTransparency = 1}):Play()
			game.Debris:AddItem(New, 0.5)
		end

		local Remaining = math.max(0, Log.Duration - Elapsed)
		Service.TweenService:Create(New.Timer, TweenInfo.new(0.5), {BackgroundTransparency = 0, Size = UDim2.new(Remaining/Log.Duration, 0, 0.05, 0)}):Play()
	end)
end

Service.UserInputService.InputBegan:Connect(function(object, proc)
	if proc and not Input:IsFocused() then return end
	if object.KeyCode == Enum.KeyCode.Semicolon then
		cleanTweens()
		local Index = #Log.Tweens + 1
		local Tween = Service.TweenService:Create(Bar, TweenInfo.new(0.25, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
			GroupTransparency = 0,
			Position = UDim2.new(0.5, 0, 0.875, 0)	
		})
		Log.Tweens[Index] = Tween
		Tween:Play()
		task.wait()
		Input:CaptureFocus()
		repeat task.wait() Input.Text = "" until Input.Text == ""
	elseif object.KeyCode == Enum.KeyCode.Up then
		Log.Order += 1
		if Log.Order > #Log.History then
			Log.Order = #Log.History
		end
		Input.Text = Log.History[Log.Order] or ""
		Input.CursorPosition = 1020
	elseif object.KeyCode == Enum.KeyCode.Down then
		Log.Order -= 1
		if Log.Order <= 0 then
			Log.Order = 0
		end
		Input.Text = Log.History[Log.Order] or ""
		Input.CursorPosition = 1020
	elseif object.KeyCode == Enum.KeyCode.Tab then
		if Log.Tabbed or not Input:IsFocused() then return end
		Log.Tabbed = true
		task.wait(0.01)
		if Log.Position == 0 then
			local Guess = Log.Guess.Command or ""
			Input.Text = Guess
		else
			local TextArgs = Input.Text:split(" ")
			local Command = table.remove(TextArgs, 1)

			local Hints = Log.Guess.Hints

			for i, v in Hints do
				if i > Log.Position then
					continue
				elseif i == Log.Position then
					TextArgs[i] = v
				end
			end

			local Recreate = `{Command} {table.concat(TextArgs, " ")}`
			Input.Text = Recreate
		end
		Input.CursorPosition = Input.Text:len() + 1
		Log.Tabbed = false
	end
end)

Input.FocusLost:Connect(function(enterPressed: boolean, inputThatCausedFocusLoss: InputObject) 
	Log.Guess = {Command = "", Hints = {}}
	cleanTweens()
	updateGuess("")
	local Index = #Log.Tweens + 1
	local Tween = Service.TweenService:Create(Bar, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
		GroupTransparency = 1,
		Position = UDim2.new(0.5, 0, 0.9, 0)	
	})
	Log.Tweens[Index] = Tween
	Tween:Play()
	Log.Order = 0

	if not enterPressed or table.find({' ', ''}, Input.Text) then
		Input:ReleaseFocus()
		Input.Text = ""
		Log.Guess = {Command = "", Hints = {}}
		return
	end

	local Result = Executor.run(Input.Text)
	if Result == nil then return end
	newLog(Input.Text, Result.Description, Result.Status, Result.Pinnable)
	Input.Text = ''
end)

Input:GetPropertyChangedSignal("Text"):Connect(function()
	Input.Text = Input.Text:lower()
	local rawInput = Input.Text:gsub("^%s*(.-)%s*$", "%1")
	if #rawInput == 0 then return updateGuess("") end

	Log.Guess = {
		Command = "",
		Hints = {}
	}

	local inputParts = rawInput:split(" ")
	local commandName = inputParts[1]
	local args = { unpack(inputParts, 2) }
	Log.Position = 0

	local command
	local fullMatch = false

	for _, data in ipairs(Library) do
		local name = data.Name:lower()

		if name == commandName or (#inputParts == 1 and name:sub(1, #commandName) == commandName) then
			command = data
			fullMatch = (name == commandName)
			break
		else
			updateGuess("Command not found.")
		end
	end

	if not command then updateGuess("Command not found.") return end

	local commandName = command.Name:lower()
	local commandPars = command.Parameters
	local output

	local Hints = {}

	if fullMatch then
		local fullArgs = table.concat(args, " ")

		local Hints, Errors, Disable

		if fullArgs ~= "" then
			Hints, Errors, Disable = command:Callback("hint", Helper.parseArgs(fullArgs))
		end

		Hints = Hints or {}
		Errors = Errors or {}
		Disable = Disable or {}

		local expectedParams = commandPars or {}
		local hintedCount = #Hints
		local remainingParams = {}

		for i = hintedCount + 1, #expectedParams do
			if Disable[i] then continue end
			table.insert(remainingParams, escapeRichText(expectedParams[i]))
		end

		local outputHints = ""
		local outputErrors = ""

		for i, hint in ipairs(Hints) do			
			if i == #args then
				outputHints = outputHints ..`<b>{hint}</b>` .. " "
			else
				outputHints = outputHints ..`{escapeRichText(hint)}` .. " "
			end
		end

		for i, err in ipairs(Errors) do
			outputErrors = outputErrors .. `<b><font color="rgb(255,67,67)">{err}</font></b>` .. " "
		end

		-- Now, decide what to display
		if #Errors > 0 then
			Log.Guess  = {Command = "", Hints = {}}
			output = `{commandName} {outputHints} {outputErrors}`
		elseif #Hints > 0 or #remainingParams > 0 then
			Log.Guess = {
				Command = commandName,
				Hints = Hints
			}
			output = `{commandName} {outputHints} {table.concat(remainingParams, " ")}`
		else
			Log.Guess = {Command = "", Hints = {}}
			output = `{Input.Text}`
		end

		Log.Position = #args
	else
		Log.Guess = {
			Command = commandName,
			Hints = {}
		}
		output = `{commandName} {table.concat(commandPars, " ")} | TAB to auto-complete`
	end

	updateGuess(output)
end)

Admin.Destroying:Connect(function()
	Executor.cleanUp()
end)

-- [[ Final Stand Stuff ]]

local Settings = {}

local Dbzfs = {}

function Dbzfs.getWaypoints()
	return {
		['536102540'] = { -- Earth
			{Name = 'goku', Coords = "-5947, 22, -4230"},
			{Name = 'satan', Coords = "-5788, 140, -2759"},
			{Name = 'central', Coords = "-3445, 23, -1696"},
			{Name = 'west', Coords = "-571, 23, -2885"},
			{Name = 'south', Coords = "-456, 28, -6411"},
			{Name = 'top', Coords = "2508, 3945, -2033"},
			{Name = 'hardtop', Coords = "2509, 3945, -2520"},
			{Name = 'broly', Coords = "2756, 3945, -2273"},
			{Name = 'korin', Coords = "-3901, 24, -2044"},
			{Name = 'namekship', Coords = "1412, 94, 3219"},
			{Name = 'spaceship', Coords = "-1178, 23, -2928"},
			{Name = 'timeship', Coords = "787, 23, -1801"},
			{Name = 'kai', Coords = "-3015, 24, -1895"},
			{Name = 'wormhole', Coords = "2656, 3945, -2517"}
		},
		['882399924'] = { -- Namek
			{Name = "guru", Coords = "2469, 529, -2328"},
			{Name = "cave", Coords = "-1943, 64, -3043"}
		},
		['478132461'] = { -- Space
			{Name = 'frieza', Coords = "10817, 1335, 3681"}
		},
		['569994010'] = {},
	}
end

function Dbzfs.getWorlds()
	return {
		['Earth'] = 536102540,
		['Namek'] = 882399924,
		['Space'] = 478132461,
		['Future'] = 569994010,
		['Hell'] = 2046990924,
		['Zaros'] = 2651456105,
		['Heaven'] = 3552157537,
		['Top'] = 535527772,
		['HardTop'] = 3552158750,
		['Queue'] = 3565304751,
		['HTC'] = 882375367,
		['Broly'] = 2050207304,
		['OtherTournament'] = 3618359401
	}
end

function Dbzfs.getRemotes()
	return {
		EatSenzu = User.Backpack:WaitForChild("ServerTraits").EatSenzu,
		Start = User.Backpack:WaitForChild("ServerTraits").ChatStart,
		Advance = User.Backpack:WaitForChild("ServerTraits").ChatAdvance,
		Input = User.Backpack:WaitForChild("ServerTraits").Input
	}
end

function Dbzfs.getHUD()
	return User.PlayerGui:WaitForChild('HUD')
end

function Dbzfs.getChat()
	local HUD = Dbzfs.getHUD()
	return HUD:FindFirstChild("ChatGui", true) 
end

function Dbzfs.getSkillPoints()
	local HUD = Dbzfs.getHUD()
	return HUD:FindFirstChild("Val", true)
end

function Dbzfs.findWaypoint(str)
	if not str then return end
	local placeId = tostring(game.PlaceId)
	local waypoints = Settings.Waypoints

	local list = waypoints[placeId]
	if not list then return nil end

	for Index, Waypoint in list do
		local Name = Waypoint.Name:lower()
		local str = str:lower()

		if Name:sub(1, #str) == str:lower() then
			local Coords = Waypoint.Coords:split(",")
			local Vector = Vector3.new(tonumber(Coords[1]), tonumber(Coords[2]), tonumber(Coords[3]))

			return Name, Vector, Index
		end
	end
end

-- [[ Save Data File ]]

function copy<T>(t: T, deep: boolean?): T
	if not deep then
		return (table.clone(t :: any) :: any) :: T
	end
	local function DeepCopy(tbl: { any })
		local tCopy = table.clone(tbl)
		for k, v in tCopy do
			if type(v) == "table" then
				tCopy[k] = DeepCopy(v)
			end
		end
		return tCopy
	end
	return DeepCopy(t :: any) :: T
end

function reconcile(source, template)
	local tbl = table.clone(source)

	for k, v in template do
		local sv = source[k]
		if sv == nil then
			if type(v) == "table" then
				tbl[k] = copy(v, true)
			else
				tbl[k] = v
			end
		elseif type(sv) == "table" then
			if type(v) == "table" then
				tbl[k] = reconcile(sv, v)
			else
				tbl[k] = copy(sv, true)
			end
		end
	end

	return (tbl :: any) :: S & T
end

local function loadSave()

	local Template = {
		Waypoints = Dbzfs.getWaypoints()
	}

	local Config

	local Success, Failed = pcall(function()
		local File = readfile("Supreme.txt")
		Config = Service.HttpService:JSONDecode(File)
	end)

	if Success then
		Settings = reconcile(Config, Template)
	end

	writefile("Supreme.txt", Service.HttpService:JSONEncode(Settings))
end

local function writeSave()
	local Success, Failed = pcall(function()
		writefile("Supreme.txt", Service.HttpService:JSONEncode(Settings))
	end)

	if Success then
		return Success
	else
		return Failed
	end
end

-- [[ Helper ]]

function Helper.find(parent: Instance, path: string, nonstrict: boolean): Instance
	local pathParts = string.split(path, "/")

	local found
	local instance = parent
	for _, pathPart in pathParts do
		local child = instance:FindFirstChild(pathPart)
		if child ~= nil then
			instance = child
			found = child
		else
			warn(`failed to find {pathPart} in {instance:GetFullName()}, (full path: {path})`)
		end
	end

	if nonstrict then
		return instance
	else
		return ((found ~= nil and found.Name == pathParts[#pathParts]) and found)
	end
end

function Helper.findPlayer(name: string)
	local List = Service.Players:GetChildren()

	table.sort(List, function(a, b)
		return a.Name:lower() < b.Name:lower()
	end)

	for i, v in List do
		if not v.Character then continue end
		if string.match(v.Name:lower(), name:lower()) or string.match(v.DisplayName:lower(), name:lower()) then
			if v.Name == User.Name then continue end
			local Root = Helper.getRoot(v.Character)
			if Root then return v, v.Character end
		end
	end

	return
end

function Helper.findMob(name: string, index: number)
	local name = normalizeText(name)
	local mobs = {}

	for _, mob in ipairs(workspace.Live:GetChildren()) do
		local mobName = normalizeText(mob.Name)
		if string.match(mobName:lower(), name:lower()) then
			if mob.Name == "Big Snake" then continue end
			local isPlayer = Service.Players:GetPlayerFromCharacter(mob)
			local Root = Helper.getRoot(mob)
			local Humanoid = Helper.getHum(mob)
			if isPlayer or not (Root or Humanoid) or Humanoid and Humanoid.Health <= 0 then continue end
			table.insert(mobs, mob)
		end
	end

	table.sort(mobs, function(a, b)
		return a.Name:lower() < b.Name:lower()
	end)

	index = math.clamp(index, 0, #mobs)
	for i, mob in ipairs(mobs) do
		if index == i then
			return mob, #mobs
		end
	end
end

function Helper.getRoot(parent: Model | Player)
	if parent:IsA('Player') and parent.Character ~= nil then
		local Root = Helper.find(parent.Character, 'HumanoidRootPart')
		return Root
	elseif parent:IsA('Model') then
		local Root = Helper.find(parent, 'HumanoidRootPart')
		return Root
	end
end

function Helper.getHum(parent: Model | Player)
	if parent:IsA('Player') and parent.Character ~= nil then
		local Humanoid = Helper.find(parent.Character, 'Humanoid')
		return Humanoid
	elseif parent:IsA('Model') then
		local Humanoid = Helper.find(parent, 'Humanoid')
		return Humanoid
	end
end

function Helper.tween(obj, time, ...)
	local tween = Service.TweenService:Create(obj, TweenInfo.new(time), ...);
	tween:Play();
	tween.Completed:Connect(function() tween:Destroy() end);
end

function Helper.parseArgs(argStr)
	if not argStr then return {} end
	local args = {}
	for word in (argStr:gmatch("%S+")) do
		table.insert(args, word)
	end
	return args
end

-- [[ Executor ]]

function Executor.new(inputs: {Name: string, Description: string, Parameters: {}, Requirements: {}, Callback: () -> ()})
	local Command = {
		['Name'] = inputs.Name,
		['Description'] = inputs.Description,
		['Parameters'] = inputs.Parameters or {},
		['Requirements'] = inputs.Requirements or {},
		['Callback'] = inputs.Callback,
		['Connections'] = {},
		['Active'] = false,
	}
	Command.__index = Command

	function Command.Clean()

		if Command.Active then
			Command.Active = false
		end

		if not Command.Connections then return false end

		local success, fail = pcall(function()
			for i, v in Command.Connections do
				Command.Connections[i]:Disconnect()
				Command.Connections[i] = nil
			end
		end)

		if success then return true else return false end
	end

	function Command.Connect(event)
		local Index = #Command.Connections + 1
		Command.Connections[Index] = event
		return Index, Command.Connections[Index]
	end

	local PlaceId = Command.Requirements and Command.Requirements.PlaceId
	if PlaceId and PlaceId ~= game.PlaceId then return end

	Library[#Library + 1] = Command
	table.sort(Library, function(a, b)
		return a.Name:lower() < b.Name:lower()
	end)
end

function Executor.get(name: string)
	for _, Command in Library do
		if Command.Name == name then
			return Command
		end
	end
end

function Executor.run(str: string)
	local name, args = str:match("^(%S+)%s*(.*)")
	args = Helper.parseArgs((args ~= "" and args) or nil)

	local Command = (function()
		for _, data in Library do
			if data.Name == nil then continue end
			if data.Name:lower() == name:lower() then
				return data
			end
		end
	end)()

	if not Command then return {Description = 'Unknown command.', Status = false, Pinnable = false} end
	local Message, Result = Command:Callback("run", args)
	newLog(str, Message, Result)
end

function Executor.cleanUp()
	for _, Command in Library do
		if not Command['Clean'] then continue end
		Command.Clean()
	end
end

Executor.new({ -- Server Hop
	Name = "Shop",
	Description = "Server hop to the lowest server.",
	Parameters = {},
	Requirements = {},
	Callback = function(self, context)
		if context == "hint" then return end
		local i = {}

		local Success, Failed = pcall(function()
			for l, v in next, game.HttpService:JSONDecode(game:HttpGet(("https://games.roblox.com/v1/games/%s/servers/Public?sortOrder=Asc&limit=%d"):format(game.PlaceId, 100))).data, nil do
				if (type(v) == "table" and v.maxPlayers > v.playing and v.id ~= game.JobId) then
					i[#i + 1] = {
						amount = tonumber(v.playing), 
						id = v.id
					}
				end
			end
		end)
		
		if not Success then return `Unable to server hop at the moment.` end
		
		table.sort(i, function(a, b)
			return a.amount < b.amount
		end)

		if (i[1]) then
			game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, i[1].id)
		end
		return `Attempting to server hop. Please wait.`, true
	end,
})

Executor.new({ -- IF_YE
	Name = "IFYE",
	Description = "Opens infinite yield.",
	Parameters = {},
	Requirements = {},
	Callback = function(self, context)
		if context == "hint" then return end
		loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
		return `Opening Infinite Yield.`, true
	end,
})

Executor.new({ -- Sense
	Name = "Sense",
	Description = "Better Ki sense.",
	Parameters = {},
	Requirements = {},
	Callback = function(self, context)
		if context == "hint" then return end
		if self.Active then return `Sense is already enabled.`, false end
		self.Active = true
		self.Show = false
		
		local All = {}
		
		local Colors = {
			Saiyan = Color3.fromRGB(252, 255, 87),
			Namekian = Color3.fromRGB(100, 255, 89),
			Jiren = Color3.fromRGB(255, 35, 35),
			Human = Color3.fromRGB(255, 255, 255),
			Frieza = Color3.fromRGB(190, 79, 255),
			Android = Color3.fromRGB(48, 245, 255),
			Majin = Color3.fromRGB(255, 181, 182)
		}
		
		local function lerp(a, b, t)
			return a + (b - a) * t
		end

		local function getTweenedColor(number)
			local clamped = math.clamp(number, 0, 1_000_000)
			local t = (clamped - 1) / (1_000_000 - 1)
			local r = 255
			local g = lerp(255, 0, t)
			local b = lerp(255, 0, t)

			return Color3.fromRGB(r, math.floor(g), math.floor(b))
		end
		
		local function formatName(name)
			local modified = string.gsub(name, "Prestige:%s*(%d+)", "Pre. %1")
			modified = string.gsub(modified, "[\r\n]", " ")
			modified = string.gsub(modified, "%s+", " ")
			modified = string.gsub(modified, "(Pre%. %d+)%s+(Lvl%. %d+)", "%1 | %2")

			return modified
		end
		
		local function getStats(target, og, boosts)
			local T = {
				Overall = 0
			}
			
			if og and boosts then
				for i, v in og:GetChildren() do
					if not T[v.Name] then
						T[v.Name] = 0
					end
					
					T[v.Name] = T[v.Name] + v.Value
					T.Overall += v.Value
				end
			end
				
			return T
		end
		
		local function newSense(target: Model)
			
			local tName = target and target.Name
			if not tName then return end
			
			local Humanoid: Humanoid = target:WaitForChild("Humanoid")
			local Head = target:WaitForChild("Head")
			if not Head or not Humanoid then return end
			if Head:FindFirstChild("Sense") then Head.Sense:Destroy() end
			
			local Race
			local Level
			local Namae
			local isPlayer = Service.Players:GetPlayerFromCharacter(target)
			
			if isPlayer then
				if isPlayer.UserId == User.UserId then return end
				Race = target:WaitForChild("Race")
				repeat
					local T = target:FindFirstChildWhichIsA("Model")
					if T and T:FindFirstChild("ZZXX") then
						Level = T
					end
					task.wait()
				until Level ~= nil
				Namae = Level.Name
			end
			
			local SenseUI = {
				["_Sense"] = Instance.new("BillboardGui");
				["_Main"] = Instance.new("CanvasGroup");
				["_Title"] = Instance.new("TextLabel");
				["_Stats"] = Instance.new("Frame");
				["_UIGridLayout"] = Instance.new("UIGridLayout");
				["_Health-Max"] = Instance.new("Frame");
				["_Title1"] = Instance.new("TextLabel");
				["_Val"] = Instance.new("TextLabel");
				["_Ki-Max"] = Instance.new("Frame");
				["_Title2"] = Instance.new("TextLabel");
				["_Val1"] = Instance.new("TextLabel");
				["_Phys-Damage"] = Instance.new("Frame");
				["_Title3"] = Instance.new("TextLabel");
				["_Val2"] = Instance.new("TextLabel");
				["_Ki-Damage"] = Instance.new("Frame");
				["_Title4"] = Instance.new("TextLabel");
				["_Val3"] = Instance.new("TextLabel");
				["_Phys-Resist"] = Instance.new("Frame");
				["_Title5"] = Instance.new("TextLabel");
				["_Val4"] = Instance.new("TextLabel");
				["_Ki-Resist"] = Instance.new("Frame");
				["_Title6"] = Instance.new("TextLabel");
				["_Val5"] = Instance.new("TextLabel");
				["_Speed"] = Instance.new("Frame");
				["_Title7"] = Instance.new("TextLabel");
				["_Val6"] = Instance.new("TextLabel");
				["_Overall"] = Instance.new("Frame");
				["_Title8"] = Instance.new("TextLabel");
				["_Val7"] = Instance.new("TextLabel");
				["_Rebirth"] = Instance.new("Frame");
				["_UIGradient"] = Instance.new("UIGradient");
				["_UICorner"] = Instance.new("UICorner");
				["_Health"] = Instance.new("Frame");
				["_Overlap"] = Instance.new("Frame");
			}

			do
				SenseUI["_Sense"].Enabled = self.Show
				SenseUI["_Sense"].MaxDistance = (isPlayer and math.huge) or 50
				SenseUI["_Sense"].Active = true
				SenseUI["_Sense"].Adornee = Head
				SenseUI["_Sense"].AlwaysOnTop = true
				SenseUI["_Sense"].ClipsDescendants = true
				SenseUI["_Sense"].LightInfluence = 1
				SenseUI["_Sense"].Size = UDim2.new(3, 300, 1, 100)
				SenseUI["_Sense"].StudsOffset = Vector3.new(0, 3.5, 0)
				SenseUI["_Sense"].SizeOffset = Vector2.new(0, 0.5)
				SenseUI["_Sense"].ZIndexBehavior = Enum.ZIndexBehavior.Sibling
				SenseUI["_Sense"].Name = "Sense"
				SenseUI["_Sense"].Parent = Head

				SenseUI["_Main"].BackgroundColor3 = Color3.fromRGB(20.000000707805157, 20.000000707805157, 20.000000707805157)
				SenseUI["_Main"].BackgroundTransparency = 0.5
				SenseUI["_Main"].BorderColor3 = Color3.fromRGB(0, 0, 0)
				SenseUI["_Main"].BorderSizePixel = 0
				SenseUI["_Main"].Size = UDim2.new(1, 0, 1, 0)
				SenseUI["_Main"].Name = "Main"
				SenseUI["_Main"].Parent = SenseUI["_Sense"]

				SenseUI["_Title"].Font = Enum.Font.SourceSansBold
				SenseUI["_Title"].Text = "[Lvl. 2000] Sucuretto"
				SenseUI["_Title"].TextColor3 = Color3.fromRGB(255, 255, 0)
				SenseUI["_Title"].TextScaled = true
				SenseUI["_Title"].TextSize = 14
				SenseUI["_Title"].TextStrokeTransparency = 0
				SenseUI["_Title"].TextWrapped = true
				SenseUI["_Title"].TextXAlignment = Enum.TextXAlignment.Left
				SenseUI["_Title"].AnchorPoint = Vector2.new(0.5, 0.5)
				SenseUI["_Title"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				SenseUI["_Title"].BackgroundTransparency = 1
				SenseUI["_Title"].BorderColor3 = Color3.fromRGB(0, 0, 0)
				SenseUI["_Title"].BorderSizePixel = 0
				SenseUI["_Title"].Position = UDim2.new(0.499999911, 0, 0.165000007, 0)
				SenseUI["_Title"].Size = UDim2.new(0.951949596, 0, 0.230165675, 0)
				SenseUI["_Title"].ZIndex = 2
				SenseUI["_Title"].Name = "Title"
				SenseUI["_Title"].Parent = SenseUI["_Main"]

				SenseUI["_Stats"].AnchorPoint = Vector2.new(0.5, 0.5)
				SenseUI["_Stats"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
				SenseUI["_Stats"].BackgroundTransparency = 1
				SenseUI["_Stats"].BorderColor3 = Color3.fromRGB(0, 0, 0)
				SenseUI["_Stats"].BorderSizePixel = 0
				SenseUI["_Stats"].Position = UDim2.new(0.500724852, 0, 0.664633155, 0)
				SenseUI["_Stats"].Size = UDim2.new(0.950499713, 0, 0.524948657, 0)
				SenseUI["_Stats"].Name = "Stats"
				SenseUI["_Stats"].Parent = SenseUI["_Main"]

				SenseUI["_UIGridLayout"].CellPadding = UDim2.new(0, 0, 0.100000001, 0)
				SenseUI["_UIGridLayout"].CellSize = UDim2.new(0.25, 0, 0.485000014, 0)
				SenseUI["_UIGridLayout"].FillDirectionMaxCells = 4
				SenseUI["_UIGridLayout"].HorizontalAlignment = Enum.HorizontalAlignment.Center
				SenseUI["_UIGridLayout"].SortOrder = Enum.SortOrder.LayoutOrder
				SenseUI["_UIGridLayout"].VerticalAlignment = Enum.VerticalAlignment.Center
				SenseUI["_UIGridLayout"].Parent = SenseUI["_Stats"]

				SenseUI["_Health-Max"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				SenseUI["_Health-Max"].BackgroundTransparency = 1
				SenseUI["_Health-Max"].BorderColor3 = Color3.fromRGB(0, 0, 0)
				SenseUI["_Health-Max"].BorderSizePixel = 0
				SenseUI["_Health-Max"].LayoutOrder = 1
				SenseUI["_Health-Max"].Size = UDim2.new(0, 100, 0, 100)
				SenseUI["_Health-Max"].Name = "Health-Max"
				SenseUI["_Health-Max"].Parent = SenseUI["_Stats"]

				SenseUI["_Title1"].Font = Enum.Font.SourceSansBold
				SenseUI["_Title1"].Text = "Health Max:"
				SenseUI["_Title1"].TextColor3 = Color3.fromRGB(255, 255, 255)
				SenseUI["_Title1"].TextScaled = true
				SenseUI["_Title1"].TextSize = 23
				SenseUI["_Title1"].TextWrapped = true
				SenseUI["_Title1"].TextXAlignment = Enum.TextXAlignment.Left
				SenseUI["_Title1"].BackgroundColor3 = Color3.fromRGB(255, 230.00001668930054, 166.00000530481339)
				SenseUI["_Title1"].BackgroundTransparency = 1
				SenseUI["_Title1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
				SenseUI["_Title1"].BorderSizePixel = 0
				SenseUI["_Title1"].LayoutOrder = 1
				SenseUI["_Title1"].Size = UDim2.new(1, 0, 0.5, 0)
				SenseUI["_Title1"].Name = "Title"
				SenseUI["_Title1"].Parent = SenseUI["_Health-Max"]

				SenseUI["_Val"].Font = Enum.Font.SourceSansBold
				SenseUI["_Val"].Text = "999,999,999"
				SenseUI["_Val"].TextColor3 = Color3.fromRGB(255, 255, 255)
				SenseUI["_Val"].TextScaled = true
				SenseUI["_Val"].TextSize = 23
				SenseUI["_Val"].TextWrapped = true
				SenseUI["_Val"].TextXAlignment = Enum.TextXAlignment.Left
				SenseUI["_Val"].BackgroundColor3 = Color3.fromRGB(255, 230.00001668930054, 166.00000530481339)
				SenseUI["_Val"].BackgroundTransparency = 1
				SenseUI["_Val"].BorderColor3 = Color3.fromRGB(0, 0, 0)
				SenseUI["_Val"].BorderSizePixel = 0
				SenseUI["_Val"].LayoutOrder = 1
				SenseUI["_Val"].Position = UDim2.new(0, 0, 0.5, 0)
				SenseUI["_Val"].Size = UDim2.new(1, 0, 0.5, 0)
				SenseUI["_Val"].Name = "Val"
				SenseUI["_Val"].Parent = SenseUI["_Health-Max"]

				SenseUI["_Ki-Max"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				SenseUI["_Ki-Max"].BackgroundTransparency = 1
				SenseUI["_Ki-Max"].BorderColor3 = Color3.fromRGB(0, 0, 0)
				SenseUI["_Ki-Max"].BorderSizePixel = 0
				SenseUI["_Ki-Max"].LayoutOrder = 2
				SenseUI["_Ki-Max"].Size = UDim2.new(0, 100, 0, 100)
				SenseUI["_Ki-Max"].Name = "Ki-Max"
				SenseUI["_Ki-Max"].Parent = SenseUI["_Stats"]

				SenseUI["_Title2"].Font = Enum.Font.SourceSansBold
				SenseUI["_Title2"].Text = "Ki Max:"
				SenseUI["_Title2"].TextColor3 = Color3.fromRGB(255, 255, 255)
				SenseUI["_Title2"].TextScaled = true
				SenseUI["_Title2"].TextSize = 23
				SenseUI["_Title2"].TextWrapped = true
				SenseUI["_Title2"].TextXAlignment = Enum.TextXAlignment.Left
				SenseUI["_Title2"].BackgroundColor3 = Color3.fromRGB(255, 230.00001668930054, 166.00000530481339)
				SenseUI["_Title2"].BackgroundTransparency = 1
				SenseUI["_Title2"].BorderColor3 = Color3.fromRGB(0, 0, 0)
				SenseUI["_Title2"].BorderSizePixel = 0
				SenseUI["_Title2"].LayoutOrder = 1
				SenseUI["_Title2"].Size = UDim2.new(1, 0, 0.5, 0)
				SenseUI["_Title2"].Name = "Title"
				SenseUI["_Title2"].Parent = SenseUI["_Ki-Max"]

				SenseUI["_Val1"].Font = Enum.Font.SourceSansBold
				SenseUI["_Val1"].Text = "999,999,999"
				SenseUI["_Val1"].TextColor3 = Color3.fromRGB(255, 255, 255)
				SenseUI["_Val1"].TextScaled = true
				SenseUI["_Val1"].TextSize = 23
				SenseUI["_Val1"].TextWrapped = true
				SenseUI["_Val1"].TextXAlignment = Enum.TextXAlignment.Left
				SenseUI["_Val1"].BackgroundColor3 = Color3.fromRGB(255, 230.00001668930054, 166.00000530481339)
				SenseUI["_Val1"].BackgroundTransparency = 1
				SenseUI["_Val1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
				SenseUI["_Val1"].BorderSizePixel = 0
				SenseUI["_Val1"].LayoutOrder = 1
				SenseUI["_Val1"].Position = UDim2.new(0, 0, 0.5, 0)
				SenseUI["_Val1"].Size = UDim2.new(1, 0, 0.5, 0)
				SenseUI["_Val1"].Name = "Val"
				SenseUI["_Val1"].Parent = SenseUI["_Ki-Max"]

				SenseUI["_Phys-Damage"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				SenseUI["_Phys-Damage"].BackgroundTransparency = 1
				SenseUI["_Phys-Damage"].BorderColor3 = Color3.fromRGB(0, 0, 0)
				SenseUI["_Phys-Damage"].BorderSizePixel = 0
				SenseUI["_Phys-Damage"].LayoutOrder = 3
				SenseUI["_Phys-Damage"].Size = UDim2.new(0, 100, 0, 100)
				SenseUI["_Phys-Damage"].Name = "Phys-Damage"
				SenseUI["_Phys-Damage"].Parent = SenseUI["_Stats"]

				SenseUI["_Title3"].Font = Enum.Font.SourceSansBold
				SenseUI["_Title3"].Text = "Melee Dmg:"
				SenseUI["_Title3"].TextColor3 = Color3.fromRGB(255, 255, 255)
				SenseUI["_Title3"].TextScaled = true
				SenseUI["_Title3"].TextSize = 23
				SenseUI["_Title3"].TextWrapped = true
				SenseUI["_Title3"].TextXAlignment = Enum.TextXAlignment.Left
				SenseUI["_Title3"].BackgroundColor3 = Color3.fromRGB(255, 230.00001668930054, 166.00000530481339)
				SenseUI["_Title3"].BackgroundTransparency = 1
				SenseUI["_Title3"].BorderColor3 = Color3.fromRGB(0, 0, 0)
				SenseUI["_Title3"].BorderSizePixel = 0
				SenseUI["_Title3"].LayoutOrder = 1
				SenseUI["_Title3"].Size = UDim2.new(1, 0, 0.5, 0)
				SenseUI["_Title3"].Name = "Title"
				SenseUI["_Title3"].Parent = SenseUI["_Phys-Damage"]

				SenseUI["_Val2"].Font = Enum.Font.SourceSansBold
				SenseUI["_Val2"].Text = "999,999,999"
				SenseUI["_Val2"].TextColor3 = Color3.fromRGB(255, 255, 255)
				SenseUI["_Val2"].TextScaled = true
				SenseUI["_Val2"].TextSize = 23
				SenseUI["_Val2"].TextWrapped = true
				SenseUI["_Val2"].TextXAlignment = Enum.TextXAlignment.Left
				SenseUI["_Val2"].BackgroundColor3 = Color3.fromRGB(255, 230.00001668930054, 166.00000530481339)
				SenseUI["_Val2"].BackgroundTransparency = 1
				SenseUI["_Val2"].BorderColor3 = Color3.fromRGB(0, 0, 0)
				SenseUI["_Val2"].BorderSizePixel = 0
				SenseUI["_Val2"].LayoutOrder = 1
				SenseUI["_Val2"].Position = UDim2.new(0, 0, 0.5, 0)
				SenseUI["_Val2"].Size = UDim2.new(1, 0, 0.5, 0)
				SenseUI["_Val2"].Name = "Val"
				SenseUI["_Val2"].Parent = SenseUI["_Phys-Damage"]

				SenseUI["_Ki-Damage"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				SenseUI["_Ki-Damage"].BackgroundTransparency = 1
				SenseUI["_Ki-Damage"].BorderColor3 = Color3.fromRGB(0, 0, 0)
				SenseUI["_Ki-Damage"].BorderSizePixel = 0
				SenseUI["_Ki-Damage"].LayoutOrder = 4
				SenseUI["_Ki-Damage"].Size = UDim2.new(0, 100, 0, 100)
				SenseUI["_Ki-Damage"].Name = "Ki-Damage"
				SenseUI["_Ki-Damage"].Parent = SenseUI["_Stats"]

				SenseUI["_Title4"].Font = Enum.Font.SourceSansBold
				SenseUI["_Title4"].Text = "Ki Dmg:"
				SenseUI["_Title4"].TextColor3 = Color3.fromRGB(255, 255, 255)
				SenseUI["_Title4"].TextScaled = true
				SenseUI["_Title4"].TextSize = 23
				SenseUI["_Title4"].TextWrapped = true
				SenseUI["_Title4"].TextXAlignment = Enum.TextXAlignment.Left
				SenseUI["_Title4"].BackgroundColor3 = Color3.fromRGB(255, 230.00001668930054, 166.00000530481339)
				SenseUI["_Title4"].BackgroundTransparency = 1
				SenseUI["_Title4"].BorderColor3 = Color3.fromRGB(0, 0, 0)
				SenseUI["_Title4"].BorderSizePixel = 0
				SenseUI["_Title4"].LayoutOrder = 1
				SenseUI["_Title4"].Size = UDim2.new(1, 0, 0.5, 0)
				SenseUI["_Title4"].Name = "Title"
				SenseUI["_Title4"].Parent = SenseUI["_Ki-Damage"]

				SenseUI["_Val3"].Font = Enum.Font.SourceSansBold
				SenseUI["_Val3"].Text = "999,999,999"
				SenseUI["_Val3"].TextColor3 = Color3.fromRGB(255, 255, 255)
				SenseUI["_Val3"].TextScaled = true
				SenseUI["_Val3"].TextSize = 23
				SenseUI["_Val3"].TextWrapped = true
				SenseUI["_Val3"].TextXAlignment = Enum.TextXAlignment.Left
				SenseUI["_Val3"].BackgroundColor3 = Color3.fromRGB(255, 230.00001668930054, 166.00000530481339)
				SenseUI["_Val3"].BackgroundTransparency = 1
				SenseUI["_Val3"].BorderColor3 = Color3.fromRGB(0, 0, 0)
				SenseUI["_Val3"].BorderSizePixel = 0
				SenseUI["_Val3"].LayoutOrder = 1
				SenseUI["_Val3"].Position = UDim2.new(0, 0, 0.5, 0)
				SenseUI["_Val3"].Size = UDim2.new(1, 0, 0.5, 0)
				SenseUI["_Val3"].Name = "Val"
				SenseUI["_Val3"].Parent = SenseUI["_Ki-Damage"]

				SenseUI["_Phys-Resist"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				SenseUI["_Phys-Resist"].BackgroundTransparency = 1
				SenseUI["_Phys-Resist"].BorderColor3 = Color3.fromRGB(0, 0, 0)
				SenseUI["_Phys-Resist"].BorderSizePixel = 0
				SenseUI["_Phys-Resist"].LayoutOrder = 5
				SenseUI["_Phys-Resist"].Size = UDim2.new(0, 100, 0, 100)
				SenseUI["_Phys-Resist"].Name = "Phys-Resist"
				SenseUI["_Phys-Resist"].Parent = SenseUI["_Stats"]

				SenseUI["_Title5"].Font = Enum.Font.SourceSansBold
				SenseUI["_Title5"].Text = "Melee Res:"
				SenseUI["_Title5"].TextColor3 = Color3.fromRGB(255, 255, 255)
				SenseUI["_Title5"].TextScaled = true
				SenseUI["_Title5"].TextSize = 23
				SenseUI["_Title5"].TextWrapped = true
				SenseUI["_Title5"].TextXAlignment = Enum.TextXAlignment.Left
				SenseUI["_Title5"].BackgroundColor3 = Color3.fromRGB(255, 230.00001668930054, 166.00000530481339)
				SenseUI["_Title5"].BackgroundTransparency = 1
				SenseUI["_Title5"].BorderColor3 = Color3.fromRGB(0, 0, 0)
				SenseUI["_Title5"].BorderSizePixel = 0
				SenseUI["_Title5"].LayoutOrder = 1
				SenseUI["_Title5"].Size = UDim2.new(1, 0, 0.5, 0)
				SenseUI["_Title5"].Name = "Title"
				SenseUI["_Title5"].Parent = SenseUI["_Phys-Resist"]

				SenseUI["_Val4"].Font = Enum.Font.SourceSansBold
				SenseUI["_Val4"].Text = "999,999,999"
				SenseUI["_Val4"].TextColor3 = Color3.fromRGB(255, 255, 255)
				SenseUI["_Val4"].TextScaled = true
				SenseUI["_Val4"].TextSize = 23
				SenseUI["_Val4"].TextWrapped = true
				SenseUI["_Val4"].TextXAlignment = Enum.TextXAlignment.Left
				SenseUI["_Val4"].BackgroundColor3 = Color3.fromRGB(255, 230.00001668930054, 166.00000530481339)
				SenseUI["_Val4"].BackgroundTransparency = 1
				SenseUI["_Val4"].BorderColor3 = Color3.fromRGB(0, 0, 0)
				SenseUI["_Val4"].BorderSizePixel = 0
				SenseUI["_Val4"].LayoutOrder = 1
				SenseUI["_Val4"].Position = UDim2.new(0, 0, 0.5, 0)
				SenseUI["_Val4"].Size = UDim2.new(1, 0, 0.5, 0)
				SenseUI["_Val4"].Name = "Val"
				SenseUI["_Val4"].Parent = SenseUI["_Phys-Resist"]

				SenseUI["_Ki-Resist"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				SenseUI["_Ki-Resist"].BackgroundTransparency = 1
				SenseUI["_Ki-Resist"].BorderColor3 = Color3.fromRGB(0, 0, 0)
				SenseUI["_Ki-Resist"].BorderSizePixel = 0
				SenseUI["_Ki-Resist"].LayoutOrder = 6
				SenseUI["_Ki-Resist"].Size = UDim2.new(0, 100, 0, 100)
				SenseUI["_Ki-Resist"].Name = "Ki-Resist"
				SenseUI["_Ki-Resist"].Parent = SenseUI["_Stats"]

				SenseUI["_Title6"].Font = Enum.Font.SourceSansBold
				SenseUI["_Title6"].Text = "Ki Res:"
				SenseUI["_Title6"].TextColor3 = Color3.fromRGB(255, 255, 255)
				SenseUI["_Title6"].TextScaled = true
				SenseUI["_Title6"].TextSize = 23
				SenseUI["_Title6"].TextWrapped = true
				SenseUI["_Title6"].TextXAlignment = Enum.TextXAlignment.Left
				SenseUI["_Title6"].BackgroundColor3 = Color3.fromRGB(255, 230.00001668930054, 166.00000530481339)
				SenseUI["_Title6"].BackgroundTransparency = 1
				SenseUI["_Title6"].BorderColor3 = Color3.fromRGB(0, 0, 0)
				SenseUI["_Title6"].BorderSizePixel = 0
				SenseUI["_Title6"].LayoutOrder = 1
				SenseUI["_Title6"].Size = UDim2.new(1, 0, 0.5, 0)
				SenseUI["_Title6"].Name = "Title"
				SenseUI["_Title6"].Parent = SenseUI["_Ki-Resist"]

				SenseUI["_Val5"].Font = Enum.Font.SourceSansBold
				SenseUI["_Val5"].Text = "999,999,999"
				SenseUI["_Val5"].TextColor3 = Color3.fromRGB(255, 255, 255)
				SenseUI["_Val5"].TextScaled = true
				SenseUI["_Val5"].TextSize = 23
				SenseUI["_Val5"].TextWrapped = true
				SenseUI["_Val5"].TextXAlignment = Enum.TextXAlignment.Left
				SenseUI["_Val5"].BackgroundColor3 = Color3.fromRGB(255, 230.00001668930054, 166.00000530481339)
				SenseUI["_Val5"].BackgroundTransparency = 1
				SenseUI["_Val5"].BorderColor3 = Color3.fromRGB(0, 0, 0)
				SenseUI["_Val5"].BorderSizePixel = 0
				SenseUI["_Val5"].LayoutOrder = 1
				SenseUI["_Val5"].Position = UDim2.new(0, 0, 0.5, 0)
				SenseUI["_Val5"].Size = UDim2.new(1, 0, 0.5, 0)
				SenseUI["_Val5"].Name = "Val"
				SenseUI["_Val5"].Parent = SenseUI["_Ki-Resist"]

				SenseUI["_Speed"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				SenseUI["_Speed"].BackgroundTransparency = 1
				SenseUI["_Speed"].BorderColor3 = Color3.fromRGB(0, 0, 0)
				SenseUI["_Speed"].BorderSizePixel = 0
				SenseUI["_Speed"].LayoutOrder = 7
				SenseUI["_Speed"].Size = UDim2.new(0, 100, 0, 100)
				SenseUI["_Speed"].Name = "Speed"
				SenseUI["_Speed"].Parent = SenseUI["_Stats"]

				SenseUI["_Title7"].Font = Enum.Font.SourceSansBold
				SenseUI["_Title7"].Text = "Speed:"
				SenseUI["_Title7"].TextColor3 = Color3.fromRGB(255, 255, 255)
				SenseUI["_Title7"].TextScaled = true
				SenseUI["_Title7"].TextSize = 23
				SenseUI["_Title7"].TextWrapped = true
				SenseUI["_Title7"].TextXAlignment = Enum.TextXAlignment.Left
				SenseUI["_Title7"].BackgroundColor3 = Color3.fromRGB(255, 230.00001668930054, 166.00000530481339)
				SenseUI["_Title7"].BackgroundTransparency = 1
				SenseUI["_Title7"].BorderColor3 = Color3.fromRGB(0, 0, 0)
				SenseUI["_Title7"].BorderSizePixel = 0
				SenseUI["_Title7"].LayoutOrder = 1
				SenseUI["_Title7"].Size = UDim2.new(1, 0, 0.5, 0)
				SenseUI["_Title7"].Name = "Title"
				SenseUI["_Title7"].Parent = SenseUI["_Speed"]

				SenseUI["_Val6"].Font = Enum.Font.SourceSansBold
				SenseUI["_Val6"].Text = "999,999,999"
				SenseUI["_Val6"].TextColor3 = Color3.fromRGB(255, 255, 255)
				SenseUI["_Val6"].TextScaled = true
				SenseUI["_Val6"].TextSize = 23
				SenseUI["_Val6"].TextWrapped = true
				SenseUI["_Val6"].TextXAlignment = Enum.TextXAlignment.Left
				SenseUI["_Val6"].BackgroundColor3 = Color3.fromRGB(255, 230.00001668930054, 166.00000530481339)
				SenseUI["_Val6"].BackgroundTransparency = 1
				SenseUI["_Val6"].BorderColor3 = Color3.fromRGB(0, 0, 0)
				SenseUI["_Val6"].BorderSizePixel = 0
				SenseUI["_Val6"].LayoutOrder = 1
				SenseUI["_Val6"].Position = UDim2.new(0, 0, 0.5, 0)
				SenseUI["_Val6"].Size = UDim2.new(1, 0, 0.5, 0)
				SenseUI["_Val6"].Name = "Val"
				SenseUI["_Val6"].Parent = SenseUI["_Speed"]

				SenseUI["_Overall"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				SenseUI["_Overall"].BackgroundTransparency = 1
				SenseUI["_Overall"].BorderColor3 = Color3.fromRGB(0, 0, 0)
				SenseUI["_Overall"].BorderSizePixel = 0
				SenseUI["_Overall"].LayoutOrder = 7
				SenseUI["_Overall"].Size = UDim2.new(0, 100, 0, 100)
				SenseUI["_Overall"].Name = "Overall"
				SenseUI["_Overall"].Parent = SenseUI["_Stats"]

				SenseUI["_Title8"].Font = Enum.Font.SourceSansBold
				SenseUI["_Title8"].Text = "Overall:"
				SenseUI["_Title8"].TextColor3 = Color3.fromRGB(255, 255, 255)
				SenseUI["_Title8"].TextScaled = true
				SenseUI["_Title8"].TextSize = 23
				SenseUI["_Title8"].TextWrapped = true
				SenseUI["_Title8"].TextXAlignment = Enum.TextXAlignment.Left
				SenseUI["_Title8"].BackgroundColor3 = Color3.fromRGB(255, 230.00001668930054, 166.00000530481339)
				SenseUI["_Title8"].BackgroundTransparency = 1
				SenseUI["_Title8"].BorderColor3 = Color3.fromRGB(0, 0, 0)
				SenseUI["_Title8"].BorderSizePixel = 0
				SenseUI["_Title8"].LayoutOrder = 1
				SenseUI["_Title8"].Size = UDim2.new(1, 0, 0.5, 0)
				SenseUI["_Title8"].Name = "Title"
				SenseUI["_Title8"].Parent = SenseUI["_Overall"]

				SenseUI["_Val7"].Font = Enum.Font.SourceSansBold
				SenseUI["_Val7"].Text = "999,999,999"
				SenseUI["_Val7"].TextColor3 = Color3.fromRGB(255, 255, 255)
				SenseUI["_Val7"].TextScaled = true
				SenseUI["_Val7"].TextSize = 23
				SenseUI["_Val7"].TextWrapped = true
				SenseUI["_Val7"].TextXAlignment = Enum.TextXAlignment.Left
				SenseUI["_Val7"].BackgroundColor3 = Color3.fromRGB(255, 230.00001668930054, 166.00000530481339)
				SenseUI["_Val7"].BackgroundTransparency = 1
				SenseUI["_Val7"].BorderColor3 = Color3.fromRGB(0, 0, 0)
				SenseUI["_Val7"].BorderSizePixel = 0
				SenseUI["_Val7"].LayoutOrder = 1
				SenseUI["_Val7"].Position = UDim2.new(0, 0, 0.5, 0)
				SenseUI["_Val7"].Size = UDim2.new(1, 0, 0.5, 0)
				SenseUI["_Val7"].Name = "Val"
				SenseUI["_Val7"].Parent = SenseUI["_Overall"]

				SenseUI["_Rebirth"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				SenseUI["_Rebirth"].BackgroundTransparency = 0.5
				SenseUI["_Rebirth"].BorderColor3 = Color3.fromRGB(0, 0, 0)
				SenseUI["_Rebirth"].BorderSizePixel = 0
				SenseUI["_Rebirth"].Position = UDim2.new(0, 0, 0.325218081, 0)
				SenseUI["_Rebirth"].Size = UDim2.new(1, 0, 0.699999988, 0)
				SenseUI["_Rebirth"].Visible = false
				SenseUI["_Rebirth"].ZIndex = 0
				SenseUI["_Rebirth"].Name = "Rebirth"
				SenseUI["_Rebirth"].Parent = SenseUI["_Main"]

				SenseUI["_UIGradient"].Color = ColorSequence.new{
					ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 0, 0)),
					ColorSequenceKeypoint.new(1, Color3.fromRGB(90, 90, 90))
				}
				SenseUI["_UIGradient"].Rotation = 90
				SenseUI["_UIGradient"].Parent = SenseUI["_Rebirth"]

				SenseUI["_UICorner"].CornerRadius = UDim.new(0.0250000004, 0)
				SenseUI["_UICorner"].Parent = SenseUI["_Main"]

				SenseUI["_Health"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				SenseUI["_Health"].BackgroundTransparency = 0.8
				SenseUI["_Health"].BorderColor3 = Color3.fromRGB(0, 0, 0)
				SenseUI["_Health"].BorderSizePixel = 0
				SenseUI["_Health"].Size = UDim2.new(0.999514759, 0, 0.319344938, 0)
				SenseUI["_Health"].Name = "Health"
				SenseUI["_Health"].Parent = SenseUI["_Main"]

				SenseUI["_Overlap"].BackgroundColor3 = Color3.fromRGB(26.00000225007534, 26.00000225007534, 26.00000225007534)
				SenseUI["_Overlap"].BackgroundTransparency = 0.5
				SenseUI["_Overlap"].BorderColor3 = Color3.fromRGB(0, 0, 0)
				SenseUI["_Overlap"].BorderSizePixel = 0
				SenseUI["_Overlap"].Interactable = false
				SenseUI["_Overlap"].Position = UDim2.new(0, 0, 0.325218081, 0)
				SenseUI["_Overlap"].Size = UDim2.new(1, 0, 0.699999988, 0)
				SenseUI["_Overlap"].ZIndex = 0
				SenseUI["_Overlap"].Name = "Overlap"
				SenseUI["_Overlap"].Parent = SenseUI["_Main"]

			end
			
			local OG = target:FindFirstChild("Stats")
			local Boosts = target:FindFirstChild("Boosts")
			
			local Abbreviations = {
				["Health-Max"] = "HP-MAX",
				["Ki-Max"] = "KI-MAX",
				["Phys-Damage"] = "PHYS-DMG",
				["Ki-Damage"] = "KI-DMG",
				["Phys-Resist"] = "PHYS-RES",
				["Ki-Resist"] = "KI-RES",
				["Speed"] = "SPD"
			}
			
			local function formatNumberWithCommas(number)
				local formatted = tostring(number)
				local k
				while true do
					formatted, k = formatted:gsub("^(-?%d+)(%d%d%d)", "%1,%2")
					if k == 0 then break end
				end
				return formatted
			end
			
			local function updateSense()
				local OG = target:FindFirstChild("Stats")
				local Boosts = target:FindFirstChild("Boosts")
				local AllStats = getStats(target, OG, Boosts)
				local Total = 0
			
				for i, v in AllStats do
					local stat = SenseUI[`_{i}`]
					if not stat then continue end
					local val = stat:WaitForChild("Val", 3)
					if not val then continue end
					stat.Val.Text = formatNumberWithCommas(v)
					stat.Val.TextColor3 = getTweenedColor(v)
					Total += v
				end
				
				local fullText
				if isPlayer then
					if target:FindFirstChild("RebirthWings") then
						SenseUI._Overlap.Visible = false
						SenseUI._Rebirth.Visible = true
					end
					SenseUI._Title.Text = `[{formatName(Namae)}] {tName}`
					SenseUI._Title.TextColor3 = Colors[Race.Value]
				else
					SenseUI._Title.Text = tName
				end
			end
			
			local function valuesChanged(v)
				v.Changed:Connect(updateSense)
			end
			
			local function folderAdded(folder: Folder)
				if not folder then return end
				for _, s in folder:GetChildren() do
					valuesChanged(s)
				end
				folder.ChildAdded:Connect(updateSense)
				folder.ChildRemoved:Connect(updateSense)
			end
			
			Humanoid.HealthChanged:Connect(function()
				local MAX = Humanoid.MaxHealth
				local HP = Humanoid.Health
				SenseUI._Health.Size = UDim2.new(HP/MAX, 0, 0.319344938, 0)
			end)
			
			folderAdded(OG)
			folderAdded(Boosts)
			updateSense()
			
			table.insert(All, SenseUI._Sense)
		end
		
		for _, v in workspace.Live:GetChildren() do
			task.spawn(function()
				newSense(v)
			end)
		end
		
		for _, v in workspace.Effects:GetChildren() do
			if v.Name == "Senser" then v:Destroy() end
		end
		
		workspace.Live.ChildAdded:Connect(function(child)
			task.spawn(function()
				newSense(child)
			end)
		end)
		
		local Loops
		Loops = Service.RunService.RenderStepped:Connect(function()
			for _, child in workspace.Effects:GetChildren() do
				if child.Name == "Senser" then child:Destroy() end
			end
		end)
		
		
		Service.ContextActionService:BindAction("Sense", function(action, state, object)
			if action == "Sense" and state == Enum.UserInputState.End then
				self.Show = not self.Show
				for _, v in All do
					v.Enabled = self.Show
				end
			end
		end, false, Enum.KeyCode.Z)
		
		return `Enabled sense. Press Z to use.`, true
	end
})

Executor.new({ -- Reload
	Name = "Reload",
	Description = "Reloads the command bar.",
	Parameters = {},
	Requirements = {},
	Callback = function(self, context, args)
		if context == "hint" then return end
		loadstring(game:HttpGet("https://raw.githubusercontent.com/jojoe911/Test/refs/heads/main/Bar.lua"))()
		return `Reloading.`, true
	end,
})

Executor.new({ -- Nearby
	Name = "Autoquest",
	Description = "Automatically accepts nearby quests.",
	Parameters = {`<state: on | off`},
	Requirements = {},
	Callback = function(self, context, args)
		local action = args[1]

		if context == "hint" then
			for _, input in {"on", "off"} do
				input = input:lower()
				if input:sub(1, #action) == action:lower() then
					return {input}
				end
			end

			return {}, {`invalid input`}
		else
			if action == "on" then
				if self.Active then return `Autoquest already enabled.`, false end
				self.Active = true

				local Chat = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest

				local Character = User.Character
				local Root = Character:FindFirstChild("HumanoidRootPart")

				local Remotes = Dbzfs.getRemotes()
				local Start = Remotes.Start
				local Advance = Remotes.Advance

				local ChatGui = Dbzfs.getChat()
				local Label = ChatGui and ChatGui:FindFirstChild("Label", true)
				local QuestGui = User.PlayerGui:FindFirstChild("Quests", true)

				if not (ChatGui or Label or QuestGui) then return `Unable to run command.` end

				local Current
				local Step = 1
				local Ticking = tick()

				local Colors = {
					Color3.fromRGB(0, 255, 0),
					Color3.fromRGB(0, 255, 255)
				}

				local function findMarker(origin: Vector3): MeshPart
					local Params = OverlapParams.new()
					Params.FilterType = Enum.RaycastFilterType.Exclude
					Params.FilterDescendantsInstances = {workspace.FriendlyNPCs, workspace.Live, workspace.Effects}

					local Hits = workspace:GetPartBoundsInBox(CFrame.new(origin), Vector3.new(5, 20, 5), Params)
					if #Hits == 0 then return end
					for _, Part in Hits do
						if Part:IsA("MeshPart") and table.find(Colors, Part.Color) then
							return Part
						end
					end
				end

				local function getQuests(target)
					local T = {}
					local HasQuest = false

					local Exclude = {"Rewards:", "Zenni", "EXP"}
					for _, v in QuestGui:GetChildren() do
						if v.Name ~= "Copy" or table.find(Exclude, v.Text) then continue end
						local Num = v.Num
						Chat:FireServer(`{v.Text} {Num.Text}`, "All")
						Current = target or nil
						T[v.Text] = Num.Text
						HasQuest = true
					end

					return T, HasQuest
				end

				local Debounce = false
				local QuestThing
				QuestThing = QuestGui.ChildRemoved:Connect(function(Child)
					if Debounce then return end
					Debounce = true
					task.wait(1)
					if not QuestGui:FindFirstChild("Copy") then
						Chat:FireServer(`No quest.`, "All") 
					end
					Debounce = false
				end)

				local Loop
				Loop = Service.RunService.RenderStepped:Connect(function()
					if not self.Active then return end

					if tick() - Ticking >= 0.1 then
						Ticking = tick()
					else
						return
					end

					local Params = OverlapParams.new()
					Params.FilterType = Enum.RaycastFilterType.Include
					Params.FilterDescendantsInstances = {workspace.FriendlyNPCs}

					local Hits = workspace:GetPartBoundsInBox(Root.CFrame, Vector3.new(10, 10, 10), Params)

					if #Hits > 0 then

						local Closest, Marker
						local Description
						local Distance = 15

						for _, v in Hits do
							local Model = v:FindFirstAncestorWhichIsA("Model")
							if not Model then continue end

							local Root = Model and Model:FindFirstChild("HumanoidRootPart")
							local Dialogues = Model and Model:FindFirstChild("Chat")
							local MarkerName = Dialogues and Dialogues:FindFirstChild("NotQuest", true)

							if not Root or not Dialogues or not MarkerName then continue end

							local Magnitude = User:DistanceFromCharacter(Root.Position)
							if Magnitude < Distance then
								Closest = Model
								Marker = workspace:FindFirstChild(MarkerName.Value) or findMarker(Root.Position)
								Distance = Magnitude
							end
						end

						if Closest and Marker and Current ~= Closest then
							if Step == 1 then
								if not ChatGui.Visible then
									Start:FireServer(Closest)
								else
									Step = 2 
								end
							elseif Step == 2 then
								if ChatGui.Visible then
									local Chance = math.random(1, 2)
									if Chance == 1 then
										Advance:FireServer({"k"})
									else
										Advance:FireServer({"Yes"})
									end
								else
									Step = 3
								end
							elseif Step == 3 then
								getQuests(Closest)
								Step = 1
							end
						end
					end
				end)

				self.Connect(Loop)
				self.Connect(QuestThing)
				return `Autobean enabled.`, true
			elseif action == "off" then
				if not self.Active then return `Autobean already disabled.`, false end
				self.Active = false
				self.Clean()
				return `Autoquest disabled.`, true
			else
				return `Invalid input.`, false
			end
		end
	end,
})

Executor.new({ -- Autobean
	Name = "Autobean",
	Description = "Auto senzu beans",
	Parameters = {`<state: on | off>`},
	Requirements = {},
	Callback = function(self, context, args)
		local action = args[1]

		if context == "hint" then
			for _, input in {"on", "off"} do
				input = input:lower()
				if input:sub(1, #action) == action:lower() then
					return {input}
				end
			end

			return {}, {`invalid input`}
		else
			if action == "on" then
				if self.Active then return `Autobean already enabled.`, false end
				self.Active = true

				local Remotes = Dbzfs.getRemotes()
				local lastBean = tick()

				local Loop
				Loop = Service.RunService.Heartbeat:Connect(function()
					if not self.Active then return end
					if tick() - lastBean >= 5 then
						lastBean = tick()
						Remotes.EatSenzu:FireServer(' ');
					end
				end)

				self.Connect(Loop)
				return `Autobean enabled.`, true
			elseif action == "off" then
				if not self.Active then return `Autobean already disabled.`, false end
				self.Active = false
				self.Clean()
				return `Autobean disabled.`, true
			else
				return `Invalid input.`, false
			end
		end
	end,
})

Executor.new({ -- Marker
	Name = "Marker",
	Description = "Teleports to the quest marker.",
	Parameters = {},
	Requirements = {},
	Callback = function(self, context, args)
		if context == "hint" then return end
		local QuestGui = User.PlayerGui:FindFirstChild("Quests", true)
		local QuestMarker = User.PlayerGui:FindFirstChild("QuestMarker", true)
		local Root = User.Character and User.Character:FindFirstChild("HumanoidRootPart")

		if not QuestMarker or not Root then return `Unable to teleport to marker.`, false end

		local Target = (QuestMarker.Enabled and QuestMarker.Adornee)
		if not Target then return `Unable to teleport to marker.`, false end
		local Speed = User:DistanceFromCharacter(Target.Position) / 4000
		Helper.tween(Root, Speed, {CFrame = Target.CFrame})
		return `Teleporting to marker.`, true
	end,
})

Executor.new({ -- Clip
	Name = "Clip",
	Description = "Enables collisions in your character.",
	Parameters = {},
	Requirements = {},
	Callback = function(self, context)
		if context == "hint" then return end
		local Command = Executor.get("Noclip")
		if not Command then return `Unable to run command.`, false end
		Command.Clean()
		return `Noclip has been disabled.`, true
	end,
})

Executor.new({ -- Noclip
	Name = "Noclip",
	Description = "Disables collisions in your character.",
	Parameters = {},
	Requirements = {},
	Callback = function(self, context)
		if context == "hint" then return end
		if self.Active then return `Noclip already enabled.`, false end
		self.Active = true

		self.Origin = {}

		local Loop
		Loop = Service.RunService.RenderStepped:Connect(function()
			if not self.Active then return end
			local Character = User.Character
			if not Character then return end
			for _, v in Character:GetDescendants() do
				pcall(function()
					v.CanCollide = false
				end)
			end
		end)

		self.Connect(Loop)
		return `Noclip enabled.`, true
	end,
})

Executor.new({ -- Stat
	Name = "Stat",
	Description = "Infinity.",
	Parameters = {`<state: on | off>`, `<target: number>`, `<namekian: slot>`},
	Requirements = {},
	Callback = function(self, context, args)
		local state = args[1]
		local targetSlot = (args[2] and tonumber(args[2]))
		local namekSlot = (args[3] and tonumber(args[3]))

		if context == "hint" then
			for _, input in {"on", "off"} do
				input = input:lower()
				if input:sub(1, #state) == state:lower() then
					if input == "off" then
						return {input}, {}, {[2] = true, [3] = true}
					else
						if args[3] then
							if not namekSlot or typeof(namekSlot) ~= "number" then
								return {input, targetSlot}, {`invalid arg`}
							end
							return {input, tostring(targetSlot), tostring(namekSlot)}
						end
						if args[2] then
							if not targetSlot or typeof(targetSlot) ~= "number" then
								return {input}, {`invalid arg`}, {[3] = true}
							end
							return {input, tostring(targetSlot)}
						end
						return {input}, {}
					end
				end
			end
			return {}, {'invalid input'}
		end

		if state == "on" then
			if self.Active then return `Stat is already enabled.`, false end

			local Slots = {
				["Target"] = `Slot{targetSlot}`,
				["Namekian"] = `Slot{namekSlot}`
			}

			local Baba = workspace.FriendlyNPCs["Character Slot Changer"]
			local Kami = workspace.FriendlyNPCs.KAMI

			local Loops = {}
			local lastTick = tick()
			local lastPoints = 0
			local lastRace

			local countDownTick = tick()

			local totalMisses = 0
			
			--local URL = "https://discord.com/api/webhooks/1368907318493970552/rTYGlWYMLVjb8Dep2pe3pZuIGFlrzQmoTPK7k2zlsRRt1LJyZ4oa1-7FnE6s_ZxZ4psb"
			--local Response = request({
			--	Url = URL,
			--	Method = "POST",
			--	Headers = {
			--		['Content-Type'] = 'application/json'
			--	},
			--	Body = Service.HttpService:JSONEncode({
			--		["content"] = "",
			--		["embeds"] = {{
			--			["title"] = `{User.Name} | Infinite Stats`,
			--			["description"] = `Started Infinite Stats.`,
			--			["type"] = "rich",
			--			["color"] = tonumber(0xffffff),
			--		}}
			--	})
			--})

			local Added
			Added = User.CharacterAdded:Connect(function(Character)
				if not self.Active then return end
				lastTick = tick()

				if #Loops > 0 then
					for i, v in Loops do
						Loops[i]:Disconnect()
						Loops[i] = nil
					end
				end

				local Race = Character:WaitForChild("Race")

				local Remotes = Dbzfs.getRemotes()
				local Start = Remotes.Start
				local Advance = Remotes.Advance

				local Chat = Dbzfs.getChat()
				local Label = Chat:FindFirstChild("TextLabel")
				
				if Race.Value ~= "Namekian" and lastRace ~= Race.Value then
					local coolOff = tick()
					local Points = Dbzfs.getSkillPoints()
					repeat task.wait() until Points.Text ~= "0" or tick() - coolOff >= 3
					Points = (Points and tonumber(Points.Text))
					if lastPoints == Points then
						totalMisses += 1
						local String = `{totalMisses} total misses.`
						newLog("Infinite Stats", String, false, true)

						--local Response = request({
						--	Url = URL,
						--	Method = "POST",
						--	Headers = {
						--		['Content-Type'] = 'application/json'
						--	},
						--	Body = Service.HttpService:JSONEncode({
						--		["content"] = "",
						--		["embeds"] = {{
						--			["title"] = `{User.Name} | Infinite Stats`,
						--			["description"] = `{totalMisses} missed.`,
						--			["type"] = "rich",
						--			["color"] = tonumber(0xffffff),
						--		}}
						--	})
						--})
					else
						newLog("Infinite Stats", `{lastPoints} -> {Points}`, false, true)
						lastPoints = Points

						if tick() - countDownTick >= 600 then
							countDownTick = tick()
							--local Response = request({
							--	Url = URL,
							--	Method = "POST",
							--	Headers = {
							--		['Content-Type'] = 'application/json'
							--	},
							--	Body = Service.HttpService:JSONEncode({
							--		["content"] = "",
							--		["embeds"] = {{
							--			["title"] = `{User.Name} | Infinite Stats`,
							--			["description"] = `{Points} skill points.`,
							--			["type"] = "rich",
							--			["color"] = tonumber(0xffffff),
							--		}}
							--	})
							--})
						end
					end
				end

				local Completed = false
				local Ready = false
				local Switch = (Race.Value == "Namekian" and Slots.Target) or Slots.Namekian
				lastRace = Race.Value

				repeat
					Start:FireServer(Baba)
					task.wait()
				until Chat.Visible

				local S
				S = Service.RunService.RenderStepped:Connect(function()
					if not Ready then
						if Label.Text == "Change Character Slots?" then
							Advance:FireServer({"Yes"})
						elseif Label.Text == "Alright" then
							Advance:FireServer({"k"})
						elseif Label.Text == "Which slot would you like to play in?" then
							Advance:FireServer({Switch})
						elseif Label.Text == "Loading!" and Race.Value == "Namekian" then
							Ready = true
							Start:FireServer(Kami)
						end
					else
						if Race.Value ~= "Namekian" then return end
						if Label.Text == "Hello" and not Completed then
							Advance:FireServer({"k"})
						elseif Label.Text == "Alright let's do it" then
							Completed = true
						else
							Start:FireServer(Kami)
						end
					end
				end)

				table.insert(Loops, S)
			end)

			local Checker
			Checker = Service.RunService.RenderStepped:Connect(function()
				if self.Active and tick() - lastTick >= 30 then
					if User.Character then User.Character:BreakJoints() end
				end
			end)

			if User.Character then
				User.Character:BreakJoints()
			end

			self.Connect(Added)
			self.Connect(Checker)
			self.Active = true
			return `Stat is now enabled.`, true
		elseif state == "off" then
			if not self.Active then return `Stat is already disabled.`, false end
			self.Active = false
			self.Clean()
			return `Stat is now disabled`, true
		else
			return `Invalid input.`, false
		end
	end,
})

Executor.new({ -- Unprotect
	Name = "Unprotect",
	Description = "Stops protecting a player.",
	Parameters = {},
	Requirements = {},
	Callback = function(self, context, args)
		if context == "hint" then return end
		local command = Executor.get("Protect")
		if not command then return `Something went wrong.`, false end
		if not command.Active then return `Protect was already off bozo`, false end
		command.Active = false
		self.Clean()
		return `Protect disabled.`, true
	end,
})

Executor.new({ -- Protect
	Name = "Protect",
	Description = "Protect a player from mobs.",
	Parameters = {`<player: name>`, `<range: number?>`},
	Requirements = {},
	Callback = function(self, context, args)
		if not args[1] and context == "run" then return `No target found.`, false end

		local Protecting = args[1]
		local Range = args[2] and tonumber(args[2])
		if not Range or typeof(Range) ~= "number" then
			Range = 100
		end

		local pPlayer, pCharacter = Helper.findPlayer(Protecting)

		if context == "hint" then
			if pPlayer then 
				return {`{pPlayer}`}
			else
				return {}, {`invalid player`}, {[2] = true}
			end
		else

			if self.Active then return `Protect already enabled. Unprotect to disable.`, false end

			if not pCharacter or not pPlayer then return `No target found.`, false end
			local pRoot = pCharacter and pCharacter:FindFirstChild("HumanoidRootPart")

			local Character = User and User.Character
			local Root = Character and Character.HumanoidRootPart
			local Remote = Dbzfs.getRemotes().Input

			if not pRoot or not Root then return `Unable to run command`, false end
			self.Active = true

			local Parameters = OverlapParams.new()
			Parameters.FilterType = Enum.RaycastFilterType.Include
			Parameters.FilterDescendantsInstances = {workspace.Live}

			local function tweenTo(Target)
				local Speed = User:DistanceFromCharacter(Target.Position) / 4000
				game:GetService("TweenService"):Create(Root, TweenInfo.new(Speed), {
					CFrame = Target.CFrame * CFrame.new(0, 0, 3)
				}):Play()
			end

			local lastTick = tick()
			local Loop
			Loop = Service.RunService.RenderStepped:Connect(function()
				if not self.Active then self.Clean() return end

				local Enemies = {}
				local Entities = workspace:GetPartBoundsInRadius(Root.Position, Range, Parameters)

				if #Entities > 0 then
					for _, Hit in Entities do

						local tModel = Hit:FindFirstAncestorWhichIsA("Model")
						local tRoot = tModel and tModel:FindFirstChild("HumanoidRootPart")
						local tHumanoid = tModel and tModel:FindFirstChild("Humanoid")
						local Damagers = tModel:FindFirstChild("Damagers")

						if not tModel or not tRoot or not tHumanoid or not Damagers or (tHumanoid and tHumanoid.Health <= 0) then continue end
						if game.Players:GetPlayerFromCharacter(tModel) then continue end
						if pPlayer:DistanceFromCharacter(tRoot.Position) > Range then continue end 

						if Damagers:FindFirstChild(pPlayer.Name) and not table.find(Enemies, tModel) then
							table.insert(Enemies, tModel)
						end

					end
				end

				if #Enemies > 0 then
					local Victim = Enemies[1]
					local vRoot = Victim and Victim:FindFirstChild("HumanoidRootPart")
					local vHum = Victim and Victim:FindFirstChild("Humanoid")

					if not (Victim or vRoot or vHum) then
						table.remove(Enemies, 1)
						tweenTo(pRoot)
						return
					end

					local Distance = pPlayer:DistanceFromCharacter(vRoot.Position)
					if Distance > Range then
						table.remove(Enemies, 1)
						tweenTo(pRoot)
						return
					end

					tweenTo(vRoot)

					if tick() - lastTick >= 0.5 then
						lastTick = tick()
						Remote:FireServer({[1] = "m2"}, CFrame.new())
					end
				else
					tweenTo(pRoot)
				end
			end)

			self.Connect(Loop)
			return `Protect has been enabled.`, true
		end

	end,
})

Executor.new({ -- Spend
	Name = "Spend",
	Description = "Opens up the custom gui for spending points.",
	Parameters = {},
	Requirements = {},
	Callback = function(self, context)
		if context == "hint" then return end
		local CustomGUI = Converted_2._Custom
		CustomGUI.Visible = not CustomGUI.Visible

		if not self.Initialized then
			self.Initialized = true

			local Amount = 1
			local AmountGUI = CustomGUI.Amount

			local Naming = {
				["Health Max"] = "Health-Max",
				["Ki Max"] = "Ki-Max",
				["Melee Damage"] = "Phys-Damage",
				["Ki Damage"] = "Ki-Damage",
				["Melee Resistance"] = "Phys-Resist",
				["Ki Resistance"] = "Ki-Resist",
				["Speed"] = "Speed"
			}

			AmountGUI.FocusLost:Connect(function(entered)
				if not entered then return end
				local Number = tonumber(AmountGUI.Text)
				if not Number or typeof(Number) ~= "number" then AmountGUI.Text = "1" end
				Amount = Number
			end)

			local List = CustomGUI.List
			for i, Statt in List:GetChildren() do
				if not Statt:IsA("Frame") then continue end
				local StatName = Naming[Statt.Title.Text]
				local Confirm = Statt.Confirm
				Confirm.Activated:Connect(function()
					local Stat = User.Character.Stats:FindFirstChild(StatName, true)
					local AttemptUpgrade = User:FindFirstChild("AttemptUpgrade", true)

					for i = 1, Amount do
						local args = {
							[1] = Stat
						}

						AttemptUpgrade:FireServer(unpack(args))
					end
				end)
			end
		end

		if CustomGUI.Visible then
			return `Opening Custom Skill Spender`, true
		else
			return `Closing Custom Skill Spender`, true
		end
		--if context == "run" and not args[1] then return `Specify a number.`, false end

		--local upgradeAmount = tonumber(table.remove(args, 1))
		--local allStats = args

		--local Statts = {
		--	["Health-Max"] = "Health-Max",
		--	["Ki-Max"] = "Ki-Max",
		--	["Melee-Damage"] = "Phys-Damage",
		--	["Ki-Damage"] = "Ki-Damage",
		--	["Melee-Resistance"] = "Phys-Resist",
		--	["Ki-Resistance"] = "Ki-Resist",
		--	["Speed"] = "Speed"
		--}

		--if context == "hint" then

		--	if not upgradeAmount or typeof(upgradeAmount) ~= "number" then
		--		return {}, {`invalid input`}, {[3] = true}
		--	end

		--	local hintType
		--	for _, input in Statts do
		--		input = input:lower()
		--		if input:sub(1, #statName) == statName:lower() then
		--			hintType = input
		--			if not upgradeAmount then
		--				return {hintType}
		--			else
		--				if not upgradeAmount or typeof(upgradeAmount) ~= "number" then
		--					return {hintType}, {`invalid ipnut`}
		--				end
		--				return {hintType}
		--			end
		--		end				
		--	end
		--	return {}, {`invalid stat`}, {[2] = true}
		--else

		--	if not upgradeAmount or typeof(upgradeAmount) ~= "number" then
		--		return `Amount must be a number.`, false
		--	end

		--	local trueName

		--	for _, name in Statts do
		--		if name:lower() == statName then
		--			trueName = name
		--			break
		--		end
		--	end

		--	if not trueName then return `Invalid stat.`, false end

		--	local Stat = User.Character.Stats:FindFirstChild(trueName, true)
		--	local AttemptUpgrade = User:FindFirstChild("AttemptUpgrade", true)
		--	if not Stat or not AttemptUpgrade then return `Unable to spend skill points.`, false end

		--	for i = 1, upgradeAmount do
		--		local args = {
		--			[1] = Stat
		--		}

		--		AttemptUpgrade:FireServer(unpack(args))
		--	end
		--end
	end,
})

Executor.new({ -- AntiAFK
	Name = "AntiAFK",
	Description = "Prevents you from getting kicked when AFK for too long.",
	Parameters = {},
	Requirements = {},
	Callback = function(self, context)
		if context == "hint" then return end
		if self.Active then return `Anti-AFK is already on.`, false end

		User.Idled:Connect(function()
			Service.VirtualUser:CaptureController()
			Service.VirtualUser:ClickButton2(Vector2.new())
			Service.VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
			task.wait(1)
			Service.VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
		end)

		self.Active = true
		return `Anti-AFK is now enabled.`, true
	end
})

Executor.new({ -- Autotop
	Name = "Autotop",
	Description = "Does auto-top.",
	Parameters = {`<bean: true?>`},
	Requirements = {PlaceId = 535527772},
	Callback = function(self, context, args)
		if context == "hint" then
			local input = "true"
			if input:sub(1, #args[1]) == args[1]:lower() then
				return {"true"}, {}
			else
				return {}, {"invalid input"}
			end
		else
			if self.Active then return `Auto TOP is already running.`, false end
			self.Active = true

			local List = {}

			for _, Mob in workspace.Live:GetChildren() do
				if Service.Players:GetPlayerFromCharacter(Mob) then continue end
				local Humanoid = Mob:FindFirstChild("Humanoid")
				local Root = Mob:FindFirstChild("HumanoidRootPart")
				if not Root or not Humanoid or Humanoid.Health <= 0.01 then continue end
				table.insert(List, Mob)
			end

			table.sort(List, function(a, b)
				return a.Name:lower() < b.Name:lower()
			end)

			local Loop
			Loop = Service.RunService.RenderStepped:Connect(function()
				local Character = User.Character
				local Root = Character and Character:FindFirstChild("HumanoidRootPart")
				if not Character or not Root or #List == 0 then 
					self.Active = false
					self.Clean()
					return
				end

				local Target = List[1]
				local tRoot = Target and Target:FindFirstChild("HumanoidRootPart")
				local tHum = Target and Target:FindFirstChild("Humanoid")
				if not tRoot or not tHum or tHum.Health <= 0.1 then
					table.remove(List, 1)
					return
				end

				Helper.tween(Root, User:DistanceFromCharacter(tRoot.Position) / 4000, {CFrame = tRoot.CFrame * CFrame.new(0, 0, 3.5)})
			end)

			self.Connect(Loop)

			return `Running auto-top.`, true
		end
	end,
})

Executor.new({ -- Lockon
	Name = "Lockon",
	Description = "Bind a key for lockon.",
	Parameters = {`<keybind: key>`},
	Requirements = {},
	Callback = function(self, context, args)
		if context == "hint" then return end
		if self.Active then return `Lockon already enabled. Key: {self.Keybind}`, false end

		local Key = args[1] and Enum.KeyCode[args[1]:upper()]
		if args[1]:len() > 1 or not Key then return `Invalid key`, false end

		self.Keybind = Key
		self.Target = nil

		local Toggle
		Toggle = Service.UserInputService.InputBegan:Connect(function(input, proc)
			if proc then return end
			if input.KeyCode == Key then

				local Character = User.Character
				local Root = Character and Character:FindFirstChild("HumanoidRootPart")
				if not Root then return end

				self.Lock = not self.Lock
				if self.Lock then
					for i, v in workspace.Live:GetChildren() do
						if v.Name == User.Name then continue end

						local Target = v
						local tHum = Target:FindFirstChild("Humanoid")
						local tRoot = Target:FindFirstChild("HumanoidRootPart")

						if not tRoot or not tHum or tHum.Health <= 0.1 then continue end
						local Magnitude = (Camera.CFrame.lookVector - CFrame.new(Camera.CFrame.p, tRoot.Position).lookVector).Magnitude

						if Magnitude > 0.1 or (Root.Position - tRoot.Position).magnitude > 300 then continue end
						self.Target = v
					end
					if not self.Target then self.Lock = false end
				else
					self.Target = nil
				end
			end
		end)

		local Loop
		Loop = Service.RunService.RenderStepped:Connect(function()
			if not User.Character then return end
			local Humanoid = User.Character:FindFirstChild("Humanoid")
			if not Humanoid then return end

			if self.Lock then
				if self.Target and self.Target.Humanoid and self.Target.Humanoid.Health > 1 then
					Humanoid.CameraOffset = Vector3.new(1.5, 1.5, 0)
					Camera.CFrame = CFrame.new(Camera.CFrame.p, self.Target.HumanoidRootPart.Position)
				else
					self.Lock = false
					self.Target = nil
				end
			end
		end)

		self.Connect(Loop)
		self.Connect(Toggle)

		return `Lockon enabled`, true
	end,
})

Executor.new({ -- Kai
	Name = "Kai",
	Description = "Buy from elder kai.",
	Parameters = {`<amount: number?>`},
	Requirements = {},
	Callback = function(self, context, args)
		local Amount = (args[1] and tonumber(args[1])) or 1

		if context == "hint" then
			if not Amount then
				return {}, {`invalid argument`}
			end
			return
		else
			if not Amount or typeof(Amount) ~= "number" then return `Invalid input. Must be number.`, false end
		end

		local Character = User.Character
		local Root = Character and Character:FindFirstChild("HumanoidRootPart")
		local CF = Root and Root.CFrame
		if not Root then return `Unable to run command.`, false end

		local ChatGui = Dbzfs.getChat()
		local Remotes = Dbzfs.getRemotes()

		local Label = ChatGui.TextLabel
		local Start = Remotes.Start
		local Advance = Remotes.Advance

		local Kai = workspace.FriendlyNPCs["Elder Kai"]

		local Restart = true

		task.spawn(function()

			while Amount > 0 do

				task.wait()

				if Restart then
					Start:FireServer(Kai)
				end

				if Label.Text == "Hey I can unlock your potential a bit for 10,000 Zenni" then
					Restart = false
					Advance:FireServer({"k"})
				elseif Label.Text == "Sound like a deal kid?" then
					Advance:FireServer({"Yes"})
				elseif Label.Text == "Good good... here we go" and not Restart then
					Restart = true
					Amount -= 1
				else
					Advance:FireServer({"k"})
				end
			end
		end)

		return `Prompting Elder Kai.`, true
	end,
})

Executor.new({ -- Waypoint
	Name = "Waypoint",
	Description = "Edit or teleport to waypoints.",
	Parameters = {`<action: add | remove | list | name>`, `<name?>`},
	Requirements = {},
	Callback = function(self, context, args)
		local action = args[1]

		local hintType
		for _, input in {"add", "remove", "list"} do
			input = input:lower()
			if input:sub(1, #action) == action:lower() then
				hintType = input
				if not args[2] and context == "hint" then
					return {hintType}
				end
			end				
		end

		local PlaceId = tostring(game.PlaceId)
		local Character = User.Character
		local Root = Character and Character:FindFirstChild("HumanoidRootPart")

		if action == "add" then
			local name = args[2]
			local exists, coords = Dbzfs.findWaypoint(name, Settings)
			if not name then return end
			if context == "hint" then
				if exists and exists == name then
					return {action}, {`waypoint already exists`}, {[2] = true}
				end
				return {action, name}
			end

			if exists then return `Waypoint already exists.`, false end
			if not Root then return `Unable to save waypoint.`, false end
			local Coords = tostring(Root.Position)
			local Create = {Name = name, Coords = Coords}

			table.insert(Settings.Waypoints[PlaceId], Create)

			local Status = writeSave()
			if Status then
				return `Created waypoint: {name}`, true
			else
				return `Unable to create waypoint.`, true
			end
		elseif action == "remove" then
			local name = args[2]
			local waypoint, coords, index = Dbzfs.findWaypoint(name)
			if not name then return end
			if context == "hint" then
				if waypoint then
					return {action, waypoint}
				end
				return {action}, {`no waypoint found`}
			else
				if waypoint and name == waypoint then
					table.remove(Settings.Waypoints[PlaceId], index)
					if Dbzfs.findWaypoint(name) then
						writeSave()
						return `Failed to remove waypoint.`, false
					else
						return `Successfully removed waypoint.`, true
					end
				else
					return `Waypoint does not exist.`, false
				end
			end
		elseif action == "list" then
			if context == "hint" then
				return {action}, {}, {[2] = true}
			end
			local list = Settings.Waypoints[PlaceId]
			for _, v in list do
				print("Waypoint:", v.Name)
			end
			return `View console with "/console" or F9.`, true
		else
			local name = action
			local waypoint, coords = Dbzfs.findWaypoint(name)
			if not waypoint then
				if context == "hint" then
					return {}, {`unable to find waypoint`}, {[2] = true}
				end
				return `Unable to find waypoint.`, false
			else
				if context == "hint" then
					return {waypoint}, {}, {[2] = true}
				end
				if not Root then return `Unable to teleport.`, false end
				Helper.tween(Root, User:DistanceFromCharacter(coords) / 4000, {CFrame = CFrame.new(coords)})
				return `Teleporting to waypoint.`, true
			end
		end
	end,
})

Executor.new({ -- Follow
	Name = "Follow",
	Description = "Follow a player. Optional beans.",
	Parameters = {`<state: on | off>`, `<player: name>`, `<bean: true?>`},
	Requirements = {},
	Callback = function(self, context, args)
		local action = args[1]
		local rawName = args[2]
		local doBean = args[3]

		local path = Service.Players
		local searchName = (rawName and rawName:gsub("_", " "):lower() or "")
		local _, target = Helper.findPlayer(searchName)

		if context == "hint" then
			local inputType
			for _, input in {"on", "off"} do
				input = input:lower()
				if input:sub(1, #action) == action:lower() then
					inputType = input
				end				
			end

			if not inputType then
				return {}, {`invalid input`}, {[2] = true, [3] = true}
			end

			if inputType == "on" then
				local t = "true"
				if not rawName then return {inputType} end
				if not target then return {inputType}, {`no player found`}, {[3] = true} end
				if doBean and t:sub(1, #doBean) == string.lower(doBean) then
					return {inputType, target.Name, "true"}
				elseif doBean and t:sub(1, #doBean) ~= string.lower(doBean) then
					return {inputType, target.Name}, {`invalid input`}
				end

				return {inputType, target.Name}
			else
				return {inputType}, {}, {[2] = true, [3] = true}
			end

		elseif context == "run" then

			if action == "on" then
				if not target then return `No target found`, false end
				if self.Active then return `Follow is already on.`, true end

				if doBean then
					if doBean ~= "true" then return `Invalid input.`, false end
					doBean = true
				else
					doBean = false
				end

				local myRoot = Helper.getRoot(User.Character)
				local targetRoot = target and Helper.getRoot(target)
				if not myRoot or not targetRoot then return "Unable to teleport.", false end

				self.Active = true

				local Remotes = Dbzfs.getRemotes()
				local Start = tick()
				local Loop = Service.RunService.RenderStepped:Connect(function()
					if not self.Active then return end
					Helper.tween(myRoot, User:DistanceFromCharacter(targetRoot.Position) / 4000, {CFrame = targetRoot.CFrame * CFrame.new(0, 0, 7.5)})
					if doBean and tick() - Start >= 1 then
						Start = tick()
						Remotes.EatSenzu:FireServer(' ');
					end
				end)

				local _ = self.Connect(Loop)

				return `Following target: {target.Name}`, true
			elseif action == "off" then
				if not self.Active then return `Follow is already off.`, true end
				self.Active = false
				self.Clean()
				return `Stopped following.`, true
			else 
				return `Invalid input.`, false
			end
		end
	end,
})

Executor.new({ -- World
	Name = "World",
	Description = "Teleport to another world.",
	Parameters = {`<world: name>`},
	Requirements = {},
	Callback = function(self, context, args)
		local name = args[1]
		local worlds = Dbzfs.getWorlds()

		local world
		local id
		for placeName, placeId in worlds do
			if placeName:lower():sub(1, #name) == name:lower() then
				world = placeName
				id = placeId
			end
		end

		if context == "hint" then
			if world then return {world} end
			return {}, {`no world found.`}
		else
			if world then
				Service.TeleportService:Teleport(id, User)
				return `Teleporting to {world}!`, true
			else
				for placeName, _ in worlds do
					print("World:", placeName)
				end
				return `No world found. View console for list of worlds.`, false
			end
		end
	end,
})

Executor.new({ -- Teleport
	Name = "Teleport",
	Description = "Teleports to an enitity.",
	Parameters = {"<player: name | mob: @name or @full_name>", "<index: number?>"},
	Requirements = {},
	Callback = function(self, context, args)
		local rawName = args[1]
		if not rawName and context == "run" then return "Please specify a target", false end

		local isMob = rawName:sub(1, 1) == "@"
		local searchName = isMob and rawName:sub(2):gsub("_", " "):lower() or rawName:gsub("_", " "):lower()
		local index = tonumber(args[2] or 1)

		local _
		local target
		local amount = 0

		if isMob then
			target, amount = Helper.findMob(searchName, index)
		else
			_, target = Helper.findPlayer(searchName)
			if target then amount = 1 end
		end

		if context == "hint" then
			if not target then return {}, {} end
			local displayName = target.Name:gsub(" ", "_")

			if isMob then
				local txt = (amount > 1 and `{amount}` or 1)
				return {`@{displayName}`, `{txt}`}, {}
			else
				return {`{displayName}`}, {}, {[2] = true}
			end
		elseif context == "run" then

			if not target then
				local Instant = User.Backpack:FindFirstChild("Instant Transmission")
				if not Instant then return `You do not own Instant Transmission.`, false end
				Instant.Parent = User.Character
				Instant:Activate()
				Instant:Deactivate()
				User.Backpack.ServerTraits.FakeChat:FireServer(rawName)
				task.wait(0.2)
				Instant.Parent = User.Backpack
				return `Attempting to use Instant Transmission...`, true
			end

			local myRoot = Helper.getRoot(User.Character)
			local targetRoot = target and Helper.getRoot(target)
			if not myRoot or not targetRoot then return "Unable to teleport.", false end
			Helper.tween(myRoot, User:DistanceFromCharacter(targetRoot.Position) / 4000, {CFrame = targetRoot.CFrame * CFrame.new(0, 0, 3)})
			return `Teleporting to {target.Name}`, true
		end
	end
})

Executor.new({ -- Slot
	Name = "Slot",
	Description = "Prompt slot changer.",
	Parameters = {`<slot: 1-3>`},
	Requirements = {},
	Callback = function(self, context, args)
		local Slot = args[1] and tonumber(args[1])

		if context == "hint" then
			if not Slot or Slot < 1 or Slot > 3 then
				return {}, {`invalid input`}
			end
			return {Slot}
		end

		if not Slot then
			return `Provide slot number to change.`, false
		elseif Slot and Slot > 3 then
			return `Unable to switch to slot: {Slot}.`, false
		end

		local Position = 1
		local Baba = workspace.FriendlyNPCs["Character Slot Changer"]

		local Character = User.Character
		local Root = Character and Character:FindFirstChild("HumanoidRootPart")
		local CF = Root and Root.CFrame
		if not Root then return `Unable to change slots.`, false end

		local ChatGui = Dbzfs.getChat()
		local Remotes = Dbzfs.getRemotes()

		local Label = ChatGui.TextLabel
		local Start = Remotes.Start
		local Advance = Remotes.Advance

		local Lines = {
			[1] = "Change Character Slots?",
			[2] = "Alright",
			[3] = "Which slot would you like to play in?",
		}

		local Options = {
			[1] = {
				[1] = "Yes"
			},
			[2] = {
				[1] = "k"
			},
			[3] = {
				[1] = "Slot1",
				[2] = "Slot2",
				[3] = "Slot3"
			}
		}

		repeat
			Start:FireServer(Baba)
			task.wait()
		until ChatGui.Visible

		while true do
			if not ChatGui then break end

			local Text = Label.Text

			if Position == 3 then
				if Text == "Loading!" then
					break
				end
				Advance:FireServer({Options[3][Slot]})
			else
				if Text == Lines[Position] then
					Advance:FireServer({Options[Position][1]})
				else
					Position += 1
				end
			end

			task.wait()
		end

		User.CharacterRemoving:Once(function()
			local Character = User.CharacterAdded:Wait()
			local Root = Character:WaitForChild("HumanoidRootPart", 3)
			if not Root then return end
			repeat Root.CFrame = CF task.wait() until Character:FindFirstChild("True")
		end)

		return `Prompting slot changer.`, true
	end,
})

Executor.new({ -- Autofarm
	Name = "Autofarm",
	Description = "Autofarm mobs.",
	Parameters = {`<state: on | off>`, `<mob: name or full_name> continue ...`},
	Requirements = {},
	Callback = function(self, context, args): Output
		if context == "hint" then
			for _, input in {"on", "off"} do
				input = input:lower()
				if input:sub(1, #args[1]) == string.lower(args[1]) then
					if input == "off" then
						return {input}, {}, {[2] = true}
					else
						return {input}, {}
					end
				end
			end
			return {}, {'invalid input'}
		elseif context == "run" then
			if not args[1] then return `{args[1]} is not a state.`, false end
			local toggle = table.remove(args, 1)
			local mobs = args

			local Remotes = Dbzfs.getRemotes()
			local Names = {}
			local List = {}

			local function refreshList(Mob, Skip)
				task.spawn(function()
					if Service.Players:GetPlayerFromCharacter(Mob) then return end
					local Root = (Skip and Mob:FindFirstChild("HumanoidRootPart")) or Mob:WaitForChild("HumanoidRootPart", 3)
					local Humanoid = (Skip and Mob:FindFirstChild("Humanoid")) or Mob:WaitForChild("Humanoid", 3)
					if not Root or not Humanoid then return end
					if Humanoid.Health <= 0 then return end

					for _, Name in Names do
						local lowerName = Name:lower()
						local MobName = Mob.Name:lower()

						if string.match(MobName, lowerName) then
							table.insert(List, Mob)
						end
					end
				end)
			end

			if toggle == "on" then
				if self.Active then
					return `Autofarm is already on.`, true
				end

				self.Active = true
				self.Block = Instance.new("Part")
				self.Block.Name = "Floater"
				self.Block.Size = Vector3.new(4, 1, 2)
				self.Block.CanCollide = true
				self.Block.Anchored = true
				self.Block.Parent = workspace

				for _, name in mobs do
					local n = name:gsub("_", " ")
					table.insert(Names, n)
				end

				if #Names == 0 then
					self.Active = false
					return `Please specify mob names.`, false
				end

				for _, mob in workspace.Live:GetChildren() do
					refreshList(mob, true)
				end

				table.sort(List, function(a, b)
					return a.Name:lower() < b.Name:lower()
				end)

				local lastHit = tick()
				local ChildAdded = workspace.Live.ChildAdded:Connect(refreshList)
				local Loop = Service.RunService.RenderStepped:Connect(function()
					if not self.Active then return end

					local Character = User.Character
					local MyRoot = User.Character and Helper.getRoot(User.Character)
					if not (Character or MyRoot) then return end

					self.Block.CFrame = MyRoot.CFrame * CFrame.new(0, -3.5, 0)

					local Victim = List[1]
					if Victim == nil then return end

					local Humanoid = Victim:FindFirstChild("Humanoid")
					local Root = Victim:FindFirstChild("HumanoidRootPart")

					if not (Root or Humanoid) or Humanoid.Health <= 0.01 then
						table.remove(List, 1)
						return
					end

					Helper.tween(MyRoot, User:DistanceFromCharacter(Root.Position) / 4000, {CFrame = Root.CFrame * CFrame.new(0, 0, 3)})

					if tick() - lastHit >= 1 then
						lastHit = tick()
						Remotes.Input:FireServer({[1] = "m2"}, CFrame.new())
					end
				end)

				local _, Child = self.Connect(ChildAdded)
				local Index, Loop = self.Connect(Loop)

				local NoSlow = Executor.get("NoSlow")
				if NoSlow and not NoSlow.Active then
					Executor.run("NoSlow")
				end

				return `Autofarm has been enabled`, true
			elseif toggle == "off" then
				if not self.Active then
					return `Autofarm is already off.`, true
				end
				if self.Block then self.Block:Destroy() end
				self.Active = false
				self.Clean()
				return `Autofarm has been disabled.`, true
			else
				return `Invalid action: "{toggle}". Inputs are: On | Off.`, false
			end
		end
	end
})

Executor.new({ -- NoSlow
	Name = "NoSlow",
	Description = "Disables movement hinderance.",
	Parameters = {},
	Requirements = {},
	Callback = function(self, context)
		if context == "hint" then return {}, {} end
		self.Active = not self.Active

		local Destroyable = {
			"KnockBacked", "NotHardBack",
			"Override", "BStun",
			"MoveStart", "Attacking",
			"Look", "Action",
			"Killed", "hyper",
			"Hyper", "heavy", 
			"KiBlasted", "Slow", 
			"Tele", "tele", 
			"MoveStart", "SuperAction", 
			"Dodging", "KiBlasting", 
			"FShake", "Activity", 
			"BodyVelocity", "creator", 
			"Died"
		}

		if self.Active then
			self.Connections[#self.Connections + 1] = Service.RunService.RenderStepped:Connect(function()
				local Character = User.Character
				if not Character then return end
				for _, Value in Destroyable do
					local Stun = Character:FindFirstChild(Value, true)
					if Stun then Stun:Destroy() end
				end
			end)

			local Output = "NoSlow is now enabled."
			return Output, true
		else
			local Result = self.Clean()
			local Output = Result and "NoSlow is now disabled" or "Something went wrong."
			return Output, Result
		end
	end
})

Executor.new({ -- Rejoin
	Name = "Rejoin",
	Description = "Rejoin the current server.",
	Parameters = {`<delay: number?>`},
	Requirements = {},
	Callback = function(self, context, args)
		if context == "hint" then return {}, {} end
		local Time = (args[1] and tonumber(args[1]))
		if Time and type(Time) == "number" then
			task.delay(Time, function()
				Service.TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, User)
			end)
			return `Rejoining in: {Time} seconds.`, true
		end
		Service.TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, User)
		return "Rejoining.", true
	end,
})

Executor.new({ -- Reset
	Name = "Reset",
	Description = "Resets your character.",
	Parameters = {`<savepos: true?>`},
	Requirements = {},
	Callback = function(self, context, args)
		if context == "hint" then
			local input = "true"
			if input:sub(1, #args[1]) == args[1]:lower() then
				return {"true"}, {}
			else
				return {}, {"invalid input"}
			end
		else
			local Character = User.Character
			local Root = Character and Character:FindFirstChild("HumanoidRootPart")
			local CF = Root and Root.CFrame
			if not Character or not Root then 
				return `Unable to reset at the moment.`, false
			end

			local input = args[1]
			if input and input == "true" then
				task.spawn(function()
					local Character = User.CharacterAdded:Wait()
					local Root = Character:WaitForChild("HumanoidRootPart", 5)
					repeat Root.CFrame = CF; task.wait() until Character:FindFirstChild("True")
				end)
			end

			Character:BreakJoints()
			return `Resetting character.`, true
		end
	end,
})

Executor.new({ -- Version
	Name = "Version",
	Description = "Shows version.",
	Parameters = {},
	Requirements = {},
	Callback = function(self, context)
		if context == "hint" then return end
		print(`Version: {BAR_VERSION} | Update: {BAR_TIME}.`)
		return `View console by "/console" or F9.`, true
	end,
})

Executor.new({ -- Help
	Name = "Help",
	Description = "Shows a list of commands.",
	Parameters = {},
	Requirements = {},
	Callback = function(self, context, args)
		if context == "hint" then return {}, {} end
		for _, Command in Library do
			if not Command.Name then continue end
			local Parameters = (#Command.Parameters > 0 and "/ " .. table.concat(Command.Parameters, " ")) or ""
			print(`{Command.Name} / {Command.Description} {Parameters}`)
		end
		return `View console with "/console" or F9.`, true
	end,
})

if Service.RunService:IsStudio() then return end

loadSave()

game.StarterGui:SetCore("SendNotification", {
	Title = `v{BAR_VERSION}`;
	Text = BAR_TIME;
	Duration = 5;
})
