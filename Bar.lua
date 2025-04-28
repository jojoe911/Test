local Service = {
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

do
	
	local Path = Service.Players.LocalPlayer.PlayerGui
	if not Service.RunService:IsStudio() then
		Path = game:GetService("CoreGui")
		local Old = game.CoreGui:FindFirstChild("Admin") or game.CoreGui:FindFirstChild("Supreme")
		if Old then 
			Old:Destroy()
		end
	end

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

	Converted["_Bar"].GroupTransparency = 0.44999998807907104
	Converted["_Bar"].AnchorPoint = Vector2.new(0.5, 0.875)
	Converted["_Bar"].BackgroundColor3 = Color3.fromRGB(25, 25, 25)
	Converted["_Bar"].BorderColor3 = Color3.fromRGB(0, 0, 0)
	Converted["_Bar"].BorderSizePixel = 0
	Converted["_Bar"].Position = UDim2.new(0.5, 0, 0.875, 0)
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

end

local User = Service.Players.LocalPlayer

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
	if str == "" then
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

local function newLog(Command: string, Description: string, Status: boolean)

	local Previous = Log.History[1]
	if Previous and Previous ~= Command and Status then
		table.insert(Log.History, 1, Command)

		if #Log.History > 30 then
			table.remove(Log.History, 31)
		end
	elseif not Previous then
		table.insert(Log.History, 1, Command)
	end

	local Start = tick()
	local Tweens = {}
	local Disappearing = false
	local Debounce = false
	local New = Template:Clone()
	
	New.Name = Command
	New.Command.Text = Command
	New.Description.Text = Description
	New.Completed.Visible = Status
	New.Errored.Visible = not Status
	New.Unpin.Visible = true
	New.Visible = true
	New.Parent = History
	
	New.Activator.MouseButton1Click:Connect(function()
		if Disappearing or Debounce then return end
		Debounce = true
		local Result = Executor.run(Command)
		if Result == nil then Debounce = false return end
		newLog(Command, Result.Description, Result.Status, Result.Pinnable)
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

	Tweens[#Tweens + 1] = Service.TweenService:Create(New, TweenInfo.new(0.25), {GroupTransparency = 0.1}):Play()
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
		if Log.Tabbed then return end
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
		['HeavenRanked'] = 3618359401
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

function Dbzfs.getChat()
	local HUD = User.PlayerGui:FindFirstChild('HUD')
	return HUD:FindFirstChild("ChatGui", true) 
end

function Dbzfs.findWaypoint(str)
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
			if Root then return v.Character end
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

function Executor.new(inputs: {Name: string, Description: string, Parameters: {}, Callback: () -> ()})
	local Command = {
		['Name'] = inputs.Name,
		['Description'] = inputs.Description,
		['Parameters'] = inputs.Parameters or {},
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

Executor.new({
	Name = "Waypoint",
	Description = "Edit or teleport to waypoints.",
	Parameters = {`<action: add | remove | name>`, `<name?>`},
	Callback = function(self, context, args)
		local action = args[1]

		local inputType
		for _, input in {"add", "remove"} do
			input = input:lower()
			if input:sub(1, #action) == action:lower() then
				inputType = input
				if not args[2] and context == "hint" then
					return {inputType}
				end
			end				
		end
		
		local PlaceId = tostring(game.PlaceId)
		local Character = User.Character
		local Root = Character and Character:FindFirstChild("HumanoidRootPart")
		if not inputType then inputType = "teleport" end
		
		if inputType == "add" then
			local name = args[2]
			local exists, coords = Dbzfs.findWaypoint(name, Settings)
			if not name then return end
			if context == "hint" then
				if exists and exists == name then
					return {inputType}, {`waypoint already exists`}, {[2] = true}
				end
				return {inputType, name}
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
		elseif inputType == "remove" then
			local name = args[2]
			local waypoint, coords, index = Dbzfs.findWaypoint(name)
			if not name then return end
			if context == "hint" then
				if waypoint then
					return {inputType, waypoint}
				end
				return {inputType}, {`no waypoint found`}
			else
				if waypoint then
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
		elseif inputType == "teleport" then
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

Executor.new({
	Name = "Follow",
	Description = "Follow a player. Optional beans.",
	Parameters = {`<action: on | off>`, `<player: name>`, `<bean: true?>`},
	Callback = function(self, context, args)
		local action = args[1]
		local rawName = args[2]
		local doBean = args[3]

		local path = Service.Players
		local searchName = rawName and rawName:gsub("_", " "):lower()
		local target = searchName and Helper.findPlayer(searchName)

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
			else 
				return `Invalid input.`, false
			end
		end
	end,
})

Executor.new({
	Name = "World",
	Description = "Teleport to another world.",
	Parameters = {`<world: name>`},
	Callback = function(self, context, args)
		local name = args[1]
		local worlds = Dbzfs.getWorlds()
		
		for world, placeId in worlds do
			local world = world:lower()
			if world:sub(1, #name) == name:lower() then
				if context == "hint" then
					return {world}
				else
					Service.TeleportService:Teleport(placeId, User)
					return `Teleporting to {world}!`, true
				end
			end
		end
	end,
})

Executor.new({
	Name = "Teleport",
	Description = "Teleports to an enitity.",
	Parameters = {"<player: name | mob: @name or @full_name>", "<index: number?>"},
	Callback = function(self, context, args)
		local rawName = args[1]
		if not rawName and context == "run" then return "Please specify a target", false end

		local isMob = rawName:sub(1, 1) == "@"
		local searchName = isMob and rawName:sub(2):gsub("_", " "):lower() or rawName:gsub("_", " "):lower()
		local index = tonumber(args[2] or 1)
		
		local target
		local amount = 0
		
		if isMob then
			target, amount = Helper.findMob(searchName, index)
		else
			target = Helper.findPlayer(searchName)
			if target then amount = 1 end
		end

		if context == "hint" then
			if not target then return {}, {`no target found`} end
			local displayName = target.Name:gsub(" ", "_")
			
			if isMob then
				local txt = (amount > 1 and `{amount}` or 1)
				return {`@{displayName}`, `{txt}`}, {}
			else
				return {`{displayName}`}, {}, {[2] = true}
			end
		elseif context == "run" then
			local myRoot = Helper.getRoot(User.Character)
			local targetRoot = target and Helper.getRoot(target)
			if not myRoot or not targetRoot then return "Unable to teleport.", false end
			Helper.tween(myRoot, User:DistanceFromCharacter(targetRoot.Position) / 4000, {CFrame = targetRoot.CFrame * CFrame.new(0, 0, 3)})
			return `Teleporting to {target.Name}`, true
		end
	end
})

Executor.new({
	Name = "Slot",
	Description = "Prompt slot changer.",
	Parameters = {`<slot: 1-3>`},
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

Executor.new({
	Name = "Autofarm",
	Description = "Autofarm mobs.",
	Parameters = {`<state: on | off>`, `<mob: name or full_name> continue ...`},
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

Executor.new({
	Name = "NoSlow",
	Description = "Disables movement hinderance.",
	Parameters = {},
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

Executor.new({
	Name = "Rejoin",
	Description = "Rejoin the current server.",
	Parameters = {`<delay: number?>`},
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

Executor.new({
	Name = "Reset",
	Description = "Resets your character.",
	Parameters = {`<savepos: true?>`},
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

Executor.new({
	Name = "Help",
	Description = "Shows a list of commands.",
	Parameters = {},
	Callback = function(self, context, args)
		if context == "hint" then return {}, {} end
		for _, Command in Library do
			if not Command.Name then continue end
			print(`{Command.Name} / {Command.Description} / {table.concat(Command.Parameters, " ")}`)
		end
		return `View console with "/console" or F9.`, true
	end,
})

if Service.RunService:IsStudio() then return end

game.StarterGui:SetCore("SendNotification", {
	Title = "Test 6";
	Text = "Test loaded";
	Duration = 5;
})

loadSave()
