local yieldLibrary = {}
local Utility = {}

function yieldLibrary:CreateLib(LibraryConfig)
	LibraryConfig = LibraryConfig or {}
	LibraryConfig.Name = LibraryConfig.Name or "Custom Admin Library"
	LibraryConfig.Version = LibraryConfig.Version or "v1.0.0"

	COREGUI = cloneref(game:GetService("CoreGui"))
	Players = cloneref(game:GetService("Players"))


	Holder = Instance.new("Frame")
	Title = Instance.new("TextLabel")
	Dark = Instance.new("Frame")
	Cmdbar = Instance.new("TextBox")
	CMDsF = Instance.new("ScrollingFrame")
	cmdListLayout = Instance.new("UIListLayout")
	SettingsButton = Instance.new("ImageButton")
	ColorsButton = Instance.new("ImageButton")
	Settings = Instance.new("Frame")
	Prefix = Instance.new("TextLabel")
	PrefixBox = Instance.new("TextBox")
	Keybinds = Instance.new("TextLabel")
	StayOpen = Instance.new("TextLabel")
	Button = Instance.new("Frame")
	On = Instance.new("TextButton")



	Example = Instance.new("TextButton")
	Notification = Instance.new("Frame")
	Title_2 = Instance.new("TextLabel")
	Text_2 = Instance.new("TextLabel")
	CloseButton = Instance.new("TextButton")
	CloseImage = Instance.new("ImageLabel")
	PinButton = Instance.new("TextButton")
	PinImage = Instance.new("ImageLabel")
	Tooltip = Instance.new("Frame")
	Title_3 = Instance.new("TextLabel")
	Description = Instance.new("TextLabel")
	IntroBackground = Instance.new("Frame")
	Logo = Instance.new("ImageLabel")

	KeybindsFrame = Instance.new("Frame")
	Close = Instance.new("TextButton")
	Add = Instance.new("TextButton")
	Delete = Instance.new("TextButton")
	Holder_2 = Instance.new("ScrollingFrame")
	Example_2 = Instance.new("Frame")

	Text_3 = Instance.new("TextLabel")
	Delete_2 = Instance.new("TextButton")
	KeybindEditor = Instance.new("Frame")
	background_2 = Instance.new("Frame")
	Dark_3 = Instance.new("Frame")
	Directions = Instance.new("TextLabel")
	BindTo = Instance.new("TextButton")
	TriggerLabel = Instance.new("TextLabel")
	BindTriggerSelect = Instance.new("TextButton")
	Add_2 = Instance.new("TextButton")
	Cmdbar_2 = Instance.new("TextBox")
	Cmdbar_3 = Instance.new("TextBox")
	CreateToggle = Instance.new("TextLabel")
	Button_2 = Instance.new("Frame")
	On_2 = Instance.new("TextButton")
	shadow_2 = Instance.new("Frame")
	PopupText_2 = Instance.new("TextLabel")
	Exit_2 = Instance.new("TextButton")
	ExitImage_2 = Instance.new("ImageLabel")





	-- aka
	function randomString()
		local length = math.random(10,20)
		local array = {}
		for i = 1, length do
			array[i] = string.char(math.random(32, 126))
		end
		return table.concat(array)
	end

	PARENT = nil
	if get_hidden_gui or gethui then
		local hiddenUI = get_hidden_gui or gethui
		local Main = Instance.new("ScreenGui")
		Main.Name = randomString()
		Main.Parent = hiddenUI()
		PARENT = Main
	elseif (not is_sirhurt_closure) and (syn and syn.protect_gui) then
		local Main = Instance.new("ScreenGui")
		Main.Name = randomString()
		syn.protect_gui(Main)
		Main.Parent = COREGUI
		PARENT = Main
	elseif COREGUI:FindFirstChild('RobloxGui') then
		PARENT = COREGUI.RobloxGui
	else
		local Main = Instance.new("ScreenGui")
		Main.Name = randomString()
		Main.Parent = COREGUI
		PARENT = Main
	end

	shade1 = {}
	shade2 = {}
	shade3 = {}
	text1 = {}
	text2 = {}
	scroll = {}

	Holder.Name = randomString()
	Holder.Parent = PARENT
	Holder.Active = true
	Holder.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
	Holder.BorderSizePixel = 0
	Holder.Position = UDim2.new(1, -250, 1, -220)
	Holder.Size = UDim2.new(0, 250, 0, 220)
	Holder.ZIndex = 10
	table.insert(shade2,Holder)

	Title.Name = "Title"
	Title.Parent = Holder
	Title.Active = true
	Title.BackgroundColor3 = Color3.fromRGB(36,36,37)
	Title.BorderSizePixel = 0
	Title.Size = UDim2.new(0, 250, 0, 20)
	Title.Font = Enum.Font.SourceSans
	Title.TextSize = 18
	Title.Text = LibraryConfig.Name .. " " .. LibraryConfig.Version

	do
		local emoji = ({
			["01 01"] = "🎆",
			[(function(Year)
				local A = math.floor(Year/100)
				local B = math.floor((13+8*A)/25)
				local C = (15-B+A-math.floor(A/4))%30
				local D = (4+A-math.floor(A/4))%7
				local E = (19*(Year%19)+C)%30
				local F = (2*(Year%4)+4*(Year%7)+6*E+D)%7
				local G = (22+E+F)
				if E == 29 and F == 6 then
					return "04 19"
				elseif E == 28 and F == 6 then
					return "04 18"
				elseif 31 < G then
					return ("04 %02d"):format(G-31)
				end
				return ("03 %02d"):format(G)
			end)(tonumber(os.date"%Y"))] = "🥚",
			["10 31"] = "🎃",
			["12 25"] = "🎄"
		})[os.date("%m %d")]
		if emoji then
			Title.Text = ("%s %s %s"):format(emoji, Title.Text, emoji)
		end
	end

	Title.TextColor3 = Color3.new(1, 1, 1)
	Title.ZIndex = 10
	table.insert(shade1,Title)
	table.insert(text1,Title)

	Dark.Name = "Dark"
	Dark.Parent = Holder
	Dark.Active = true
	Dark.BackgroundColor3 = Color3.fromRGB(36, 36, 37)
	Dark.BorderSizePixel = 0
	Dark.Position = UDim2.new(0, 0, 0, 45)
	Dark.Size = UDim2.new(0, 250, 0, 175)
	Dark.ZIndex = 10
	table.insert(shade1,Dark)

	Cmdbar.Name = "Cmdbar"
	Cmdbar.Parent = Holder
	Cmdbar.BackgroundTransparency = 1
	Cmdbar.BorderSizePixel = 0
	Cmdbar.Position = UDim2.new(0, 5, 0, 20)
	Cmdbar.Size = UDim2.new(0, 240, 0, 25)
	Cmdbar.Font = Enum.Font.SourceSans
	Cmdbar.TextSize = 18
	Cmdbar.TextXAlignment = Enum.TextXAlignment.Left
	Cmdbar.TextColor3 = Color3.new(1, 1, 1)
	Cmdbar.Text = ""
	Cmdbar.ZIndex = 10
	Cmdbar.PlaceholderText = "Command Bar"

	CMDsF.Name = "CMDs"
	CMDsF.Parent = Holder
	CMDsF.BackgroundTransparency = 1
	CMDsF.BorderSizePixel = 0
	CMDsF.Position = UDim2.new(0, 5, 0, 45)
	CMDsF.Size = UDim2.new(0, 245, 0, 175)
	CMDsF.ScrollBarImageColor3 = Color3.fromRGB(78,78,79)
	CMDsF.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
	CMDsF.CanvasSize = UDim2.new(0, 0, 0, 0)
	CMDsF.MidImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
	CMDsF.ScrollBarThickness = 8
	CMDsF.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
	CMDsF.VerticalScrollBarInset = 'Always'
	CMDsF.ZIndex = 10
	table.insert(scroll,CMDsF)

	cmdListLayout.Parent = CMDsF

	SettingsButton.Name = "SettingsButton"
	SettingsButton.Parent = Holder
	SettingsButton.BackgroundTransparency = 1
	SettingsButton.Position = UDim2.new(0, 230, 0, 0)
	SettingsButton.Size = UDim2.new(0, 20, 0, 20)
	SettingsButton.Image = "rbxassetid://1204397029"
	SettingsButton.ZIndex = 10

	ReferenceButton = Instance.new("ImageButton")
	ReferenceButton.Name = "ReferenceButton"
	ReferenceButton.Parent = Holder
	ReferenceButton.BackgroundTransparency = 1
	ReferenceButton.Position = UDim2.new(0, 212, 0, 2)
	ReferenceButton.Size = UDim2.new(0, 16, 0, 16)
	ReferenceButton.Image = "rbxassetid://3523243755"
	ReferenceButton.ZIndex = 10

	Settings.Name = "Settings"
	Settings.Parent = Holder
	Settings.Active = true
	Settings.BackgroundColor3 = Color3.fromRGB(36, 36, 37)
	Settings.BorderSizePixel = 0
	Settings.Position = UDim2.new(0, 0, 0, 220)
	Settings.Size = UDim2.new(0, 250, 0, 175)
	Settings.ZIndex = 10
	table.insert(shade1,Settings)

	SettingsHolder = Instance.new("ScrollingFrame")
	SettingsHolder.Name = "Holder"
	SettingsHolder.Parent = Settings
	SettingsHolder.BackgroundTransparency = 1
	SettingsHolder.BorderSizePixel = 0
	SettingsHolder.Size = UDim2.new(1,0,1,0)
	SettingsHolder.ScrollBarImageColor3 = Color3.fromRGB(78,78,79)
	SettingsHolder.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
	SettingsHolder.CanvasSize = UDim2.new(0, 0, 0, 235)
	SettingsHolder.MidImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
	SettingsHolder.ScrollBarThickness = 8
	SettingsHolder.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
	SettingsHolder.VerticalScrollBarInset = 'Always'
	SettingsHolder.ZIndex = 10
	table.insert(scroll,SettingsHolder)

	Prefix.Name = "Prefix"
	Prefix.Parent = SettingsHolder
	Prefix.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
	Prefix.BorderSizePixel = 0
	Prefix.BackgroundTransparency = 1
	Prefix.Position = UDim2.new(0, 5, 0, 5)
	Prefix.Size = UDim2.new(1, -10, 0, 20)
	Prefix.Font = Enum.Font.SourceSans
	Prefix.TextSize = 14
	Prefix.Text = "Prefix"
	Prefix.TextColor3 = Color3.new(1, 1, 1)
	Prefix.TextXAlignment = Enum.TextXAlignment.Left
	Prefix.ZIndex = 10
	table.insert(shade2,Prefix)
	table.insert(text1,Prefix)

	PrefixBox.Name = "PrefixBox" -- donde va la telca de prefix
	PrefixBox.Parent = Prefix
	PrefixBox.BackgroundColor3 = Color3.fromRGB(78, 78, 79)
	PrefixBox.BorderSizePixel = 0
	PrefixBox.Position = UDim2.new(1, -20, 0, 0)
	PrefixBox.Size = UDim2.new(0, 20, 0, 20)
	PrefixBox.Font = Enum.Font.SourceSansBold
	PrefixBox.TextSize = 14
	PrefixBox.Text = ''
	PrefixBox.TextColor3 = Color3.new(0, 0, 0)
	PrefixBox.ZIndex = 10
	table.insert(shade3,PrefixBox)
	table.insert(text2,PrefixBox)

	function makeSettingsButton(name,iconID,off)
		local button = Instance.new("TextButton")
		button.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
		button.BorderSizePixel = 0
		button.Position = UDim2.new(0,0,0,0)
		button.Size = UDim2.new(1,0,0,25)
		button.Text = ""
		button.ZIndex = 10
		local icon = Instance.new("ImageLabel")
		icon.Name = "Icon"
		icon.Parent = button
		icon.Position = UDim2.new(0,5,0,5)
		icon.Size = UDim2.new(0,16,0,16)
		icon.BackgroundTransparency = 1
		icon.Image = iconID
		icon.ZIndex = 10
		if off then
			icon.ScaleType = Enum.ScaleType.Crop
			icon.ImageRectSize = Vector2.new(16,16)
			icon.ImageRectOffset = Vector2.new(off,0)
		end
		local label = Instance.new("TextLabel")
		label.Name = "ButtonLabel"
		label.Parent = button
		label.BackgroundTransparency = 1
		label.Text = name
		label.Position = UDim2.new(0,28,0,0)
		label.Size = UDim2.new(1,-28,1,0)
		label.Font = Enum.Font.SourceSans
		label.TextColor3 = Color3.new(1, 1, 1)
		label.TextSize = 14
		label.ZIndex = 10
		label.TextXAlignment = Enum.TextXAlignment.Left
		table.insert(shade2,button)
		table.insert(text1,label)
		return button
	end

	ColorsButton = makeSettingsButton("Edit Theme","rbxassetid://4911962991")
	ColorsButton.Position = UDim2.new(0,5,0,55)
	ColorsButton.Size = UDim2.new(1,-10,0,25)
	ColorsButton.Name = "Colors"
	ColorsButton.Parent = SettingsHolder

	Keybinds = makeSettingsButton("Edit Keybinds","rbxassetid://129697930")
	Keybinds.Position = UDim2.new(0, 5, 0, 85)
	Keybinds.Size = UDim2.new(1, -10, 0, 25)
	Keybinds.Name = "Keybinds"
	Keybinds.Parent = SettingsHolder



	StayOpen.Name = "StayOpen"
	StayOpen.Parent = SettingsHolder
	StayOpen.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
	StayOpen.BorderSizePixel = 0
	StayOpen.BackgroundTransparency = 1
	StayOpen.Position = UDim2.new(0, 5, 0, 30)
	StayOpen.Size = UDim2.new(1, -10, 0, 20)
	StayOpen.Font = Enum.Font.SourceSans
	StayOpen.TextSize = 14
	StayOpen.Text = "Keep Menu Open"
	StayOpen.TextColor3 = Color3.new(1, 1, 1)
	StayOpen.TextXAlignment = Enum.TextXAlignment.Left
	StayOpen.ZIndex = 10
	table.insert(shade2,StayOpen)
	table.insert(text1,StayOpen)

	Button.Name = "Button"
	Button.Parent = StayOpen
	Button.BackgroundColor3 = Color3.fromRGB(78, 78, 79)
	Button.BorderSizePixel = 0
	Button.Position = UDim2.new(1, -20, 0, 0)
	Button.Size = UDim2.new(0, 20, 0, 20)
	Button.ZIndex = 10
	table.insert(shade3,Button)

	On.Name = "On"
	On.Parent = Button
	On.BackgroundColor3 = Color3.fromRGB(150, 150, 151)
	On.BackgroundTransparency = 1
	On.BorderSizePixel = 0
	On.Position = UDim2.new(0, 2, 0, 2)
	On.Size = UDim2.new(0, 16, 0, 16)
	On.Font = Enum.Font.SourceSans
	On.FontSize = Enum.FontSize.Size14
	On.Text = ""
	On.TextColor3 = Color3.new(0, 0, 0)
	On.ZIndex = 10





	Example.Name = "Example"
	Example.Parent = Holder
	Example.BackgroundTransparency = 1
	Example.BorderSizePixel = 0
	Example.Size = UDim2.new(0, 190, 0, 20)
	Example.Visible = false
	Example.Font = Enum.Font.SourceSans
	Example.TextSize = 18
	Example.Text = "Example"
	Example.TextColor3 = Color3.new(1, 1, 1)
	Example.TextXAlignment = Enum.TextXAlignment.Left
	Example.ZIndex = 10
	table.insert(text1,Example)

	Notification.Name = randomString()
	Notification.Parent = PARENT
	Notification.BackgroundColor3 = Color3.fromRGB(36, 36, 37)
	Notification.BorderSizePixel = 0
	Notification.Position = UDim2.new(1, -500, 1, 20)
	Notification.Size = UDim2.new(0, 250, 0, 100)
	Notification.ZIndex = 10
	table.insert(shade1,Notification)

	Title_2.Name = "Title"
	Title_2.Parent = Notification
	Title_2.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
	Title_2.BorderSizePixel = 0
	Title_2.Size = UDim2.new(0, 250, 0, 20)
	Title_2.Font = Enum.Font.SourceSans
	Title_2.TextSize = 14
	Title_2.Text = "Notification Title"
	Title_2.TextColor3 = Color3.new(1, 1, 1)
	Title_2.ZIndex = 10
	table.insert(shade2,Title_2)
	table.insert(text1,Title_2)

	Text_2.Name = "Text"
	Text_2.Parent = Notification
	Text_2.BackgroundTransparency = 1
	Text_2.BorderSizePixel = 0
	Text_2.Position = UDim2.new(0, 5, 0, 25)
	Text_2.Size = UDim2.new(0, 240, 0, 75)
	Text_2.Font = Enum.Font.SourceSans
	Text_2.TextSize = 16
	Text_2.Text = "Notification Text"
	Text_2.TextColor3 = Color3.new(1, 1, 1)
	Text_2.TextWrapped = true
	Text_2.ZIndex = 10
	table.insert(text1,Text_2)

	CloseButton.Name = "CloseButton"
	CloseButton.Parent = Notification
	CloseButton.BackgroundTransparency = 1
	CloseButton.Position = UDim2.new(1, -20, 0, 0)
	CloseButton.Size = UDim2.new(0, 20, 0, 20)
	CloseButton.Text = ""
	CloseButton.ZIndex = 10

	CloseImage.Parent = CloseButton
	CloseImage.BackgroundColor3 = Color3.new(1, 1, 1)
	CloseImage.BackgroundTransparency = 1
	CloseImage.Position = UDim2.new(0, 5, 0, 5)
	CloseImage.Size = UDim2.new(0, 10, 0, 10)
	CloseImage.Image = "rbxassetid://5054663650"
	CloseImage.ZIndex = 10

	PinButton.Name = "PinButton"
	PinButton.Parent = Notification
	PinButton.BackgroundTransparency = 1
	PinButton.Size = UDim2.new(0, 20, 0, 20)
	PinButton.ZIndex = 10
	PinButton.Text = ""

	PinImage.Parent = PinButton
	PinImage.BackgroundColor3 = Color3.new(1, 1, 1)
	PinImage.BackgroundTransparency = 1
	PinImage.Position = UDim2.new(0, 3, 0, 3)
	PinImage.Size = UDim2.new(0, 14, 0, 14)
	PinImage.ZIndex = 10
	PinImage.Image = "rbxassetid://6234691350"

	Tooltip.Name = randomString()
	Tooltip.Parent = PARENT
	Tooltip.Active = true
	Tooltip.BackgroundColor3 = Color3.fromRGB(36, 36, 37)
	Tooltip.BackgroundTransparency = 0.1
	Tooltip.BorderSizePixel = 0
	Tooltip.Size = UDim2.new(0, 200, 0, 96)
	Tooltip.Visible = false
	Tooltip.ZIndex = 10
	table.insert(shade1,Tooltip)

	Title_3.Name = "Title"
	Title_3.Parent = Tooltip
	Title_3.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
	Title_3.BackgroundTransparency = 0.1
	Title_3.BorderSizePixel = 0
	Title_3.Size = UDim2.new(0, 200, 0, 20)
	Title_3.Font = Enum.Font.SourceSans
	Title_3.TextSize = 14
	Title_3.Text = ""
	Title_3.TextColor3 = Color3.new(1, 1, 1)
	Title_3.TextTransparency = 0.1
	Title_3.ZIndex = 10
	table.insert(shade2,Title_3)
	table.insert(text1,Title_3)

	Description.Name = "Description"
	Description.Parent = Tooltip
	Description.BackgroundTransparency = 1
	Description.BorderSizePixel = 0
	Description.Size = UDim2.new(0,180,0,72)
	Description.Position = UDim2.new(0,10,0,18)
	Description.Font = Enum.Font.SourceSans
	Description.TextSize = 16
	Description.Text = ""
	Description.TextColor3 = Color3.new(1, 1, 1)
	Description.TextTransparency = 0.1
	Description.TextWrapped = true
	Description.ZIndex = 10
	table.insert(text1,Description)

	IntroBackground.Name = "IntroBackground"
	IntroBackground.Parent = Holder
	IntroBackground.Active = true
	IntroBackground.BackgroundColor3 = Color3.fromRGB(36, 36, 37)
	IntroBackground.BorderSizePixel = 0
	IntroBackground.Position = UDim2.new(0, 0, 0, 45)
	IntroBackground.Size = UDim2.new(0, 250, 0, 175)
	IntroBackground.ZIndex = 10

	Logo.Name = "Logo"
	Logo.Parent = Holder
	Logo.BackgroundTransparency = 1
	Logo.BorderSizePixel = 0
	Logo.Position = UDim2.new(0, 125, 0, 127)
	Logo.Size = UDim2.new(0, 10, 0, 10)
	Logo.Image = "rbxassetid://1352543873"
	Logo.ImageTransparency = 0
	Logo.ZIndex = 10



	KeybindsFrame.Name = "KeybindsFrame" -- creacion de KeybindsFrame
	KeybindsFrame.Parent = Settings
	KeybindsFrame.Active = true
	KeybindsFrame.BackgroundColor3 = Color3.fromRGB(36, 36, 37)
	KeybindsFrame.BorderSizePixel = 0
	KeybindsFrame.Position = UDim2.new(0, 0, 0, 175)
	KeybindsFrame.Size = UDim2.new(0, 250, 0, 175)
	KeybindsFrame.ZIndex = 10
	table.insert(shade1,KeybindsFrame)

	Close.Name = "Close"
	Close.Parent = KeybindsFrame
	Close.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
	Close.BorderSizePixel = 0
	Close.Position = UDim2.new(0, 205, 0, 150)
	Close.Size = UDim2.new(0, 40, 0, 20)
	Close.Font = Enum.Font.SourceSans
	Close.TextSize = 14
	Close.Text = "Close"
	Close.TextColor3 = Color3.new(1, 1, 1)
	Close.ZIndex = 10
	table.insert(shade2,Close)
	table.insert(text1,Close)

	Add.Name = "Add"
	Add.Parent = KeybindsFrame
	Add.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
	Add.BorderSizePixel = 0
	Add.Position = UDim2.new(0, 5, 0, 150)
	Add.Size = UDim2.new(0, 40, 0, 20)
	Add.Font = Enum.Font.SourceSans
	Add.TextSize = 14
	Add.Text = "Add"
	Add.TextColor3 = Color3.new(1, 1, 1)
	Add.ZIndex = 10
	table.insert(shade2,Add)
	table.insert(text1,Add)

	Delete.Name = "Delete"
	Delete.Parent = KeybindsFrame
	Delete.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
	Delete.BorderSizePixel = 0
	Delete.Position = UDim2.new(0, 50, 0, 150)
	Delete.Size = UDim2.new(0, 40, 0, 20)
	Delete.Font = Enum.Font.SourceSans
	Delete.TextSize = 14
	Delete.Text = "Clear" -- de keybind
	Delete.TextColor3 = Color3.new(1, 1, 1)
	Delete.ZIndex = 10
	table.insert(shade2,Delete)
	table.insert(text1,Delete)

	Holder_2.Name = "Holder"
	Holder_2.Parent = KeybindsFrame
	Holder_2.BackgroundTransparency = 1
	Holder_2.BorderSizePixel = 0
	Holder_2.Position = UDim2.new(0, 0, 0, 0)
	Holder_2.Size = UDim2.new(0, 250, 0, 145)
	Holder_2.ScrollBarImageColor3 = Color3.fromRGB(78,78,79)
	Holder_2.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
	Holder_2.CanvasSize = UDim2.new(0, 0, 0, 0)
	Holder_2.MidImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
	Holder_2.ScrollBarThickness = 0
	Holder_2.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
	Holder_2.VerticalScrollBarInset = 'Always'
	Holder_2.ZIndex = 10

	Example_2.Name = "Example"
	Example_2.Parent = KeybindsFrame
	Example_2.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
	Example_2.BorderSizePixel = 0
	Example_2.Size = UDim2.new(0, 10, 0, 20)
	Example_2.Visible = false
	Example_2.ZIndex = 10
	table.insert(shade2,Example_2)

	Text_3.Name = "Text"
	Text_3.Parent = Example_2
	Text_3.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
	Text_3.BorderSizePixel = 0
	Text_3.Position = UDim2.new(0, 10, 0, 0)
	Text_3.Size = UDim2.new(0, 240, 0, 20)
	Text_3.Font = Enum.Font.SourceSans
	Text_3.TextSize = 14
	Text_3.Text = "nom"
	Text_3.TextColor3 = Color3.new(1, 1, 1)
	Text_3.TextXAlignment = Enum.TextXAlignment.Left
	Text_3.ZIndex = 10
	table.insert(shade2,Text_3)
	table.insert(text1,Text_3)

	Delete_2.Name = "Delete"
	Delete_2.Parent = Text_3
	Delete_2.BackgroundColor3 = Color3.fromRGB(78, 78, 79)
	Delete_2.BorderSizePixel = 0
	Delete_2.Position = UDim2.new(0, 200, 0, 0)
	Delete_2.Size = UDim2.new(0, 40, 0, 20)
	Delete_2.Font = Enum.Font.SourceSans
	Delete_2.TextSize = 14
	Delete_2.Text = "Delete" -- de keybind
	Delete_2.TextColor3 = Color3.new(0, 0, 0)
	Delete_2.ZIndex = 10
	table.insert(shade3,Delete_2)
	table.insert(text2,Delete_2)

	KeybindEditor.Name = randomString()
	KeybindEditor.Parent = PARENT
	KeybindEditor.Active = true
	KeybindEditor.BackgroundTransparency = 1
	KeybindEditor.Position = UDim2.new(0.5, -180, 0, -500)
	KeybindEditor.Size = UDim2.new(0, 360, 0, 20)
	KeybindEditor.ZIndex = 10

	background_2.Name = "background"
	background_2.Parent = KeybindEditor
	background_2.Active = true
	background_2.BackgroundColor3 = Color3.fromRGB(36, 36, 37)
	background_2.BorderSizePixel = 0
	background_2.Position = UDim2.new(0, 0, 0, 20)
	background_2.Size = UDim2.new(0, 360, 0, 185)
	background_2.ZIndex = 10
	table.insert(shade1,background_2)

	Dark_3.Name = "Dark" -- linea de keybind
	Dark_3.Parent = background_2
	Dark_3.Active = true
	Dark_3.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
	Dark_3.BorderSizePixel = 0
	Dark_3.Position = UDim2.new(0, 135, 0, 0)
	Dark_3.Size = UDim2.new(0, 2, 0, 185)
	Dark_3.ZIndex = 10
	table.insert(shade2,Dark_3)

	Directions.Name = "Directions"
	Directions.Parent = background_2
	Directions.BackgroundTransparency = 1
	Directions.BorderSizePixel = 0
	Directions.Position = UDim2.new(0, 10, 0, 15)
	Directions.Size = UDim2.new(0, 115, 0, 90)
	Directions.ZIndex = 10
	Directions.Font = Enum.Font.SourceSans
	Directions.Text = "Click the button below and press a key/mouse button. Then select what you want to bind it to."
	Directions.TextColor3 = Color3.fromRGB(255, 255, 255)
	Directions.TextSize = 14.000
	Directions.TextWrapped = true
	Directions.TextYAlignment = Enum.TextYAlignment.Top
	table.insert(text1,Directions)

	BindTo.Name = "BindTo"
	BindTo.Parent = background_2
	BindTo.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
	BindTo.BorderSizePixel = 0
	BindTo.Position = UDim2.new(0, 10, 0, 95)
	BindTo.Size = UDim2.new(0, 115, 0, 50)
	BindTo.ZIndex = 10
	BindTo.Font = Enum.Font.SourceSans
	BindTo.Text = "Click to bind"
	BindTo.TextColor3 = Color3.fromRGB(255, 255, 255)
	BindTo.TextSize = 16.000
	table.insert(shade2,BindTo)
	table.insert(text1,BindTo)

	TriggerLabel.Name = "TriggerLabel"
	TriggerLabel.Parent = background_2
	TriggerLabel.BackgroundTransparency = 1
	TriggerLabel.Position = UDim2.new(0, 10, 0, 155)
	TriggerLabel.Size = UDim2.new(0, 45, 0, 20)
	TriggerLabel.ZIndex = 10
	TriggerLabel.Font = Enum.Font.SourceSans
	TriggerLabel.Text = "Trigger:"
	TriggerLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	TriggerLabel.TextSize = 14.000
	TriggerLabel.TextXAlignment = Enum.TextXAlignment.Left
	table.insert(text1,TriggerLabel)

	BindTriggerSelect.Name = "BindTo"
	BindTriggerSelect.Parent = background_2
	BindTriggerSelect.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
	BindTriggerSelect.BorderSizePixel = 0
	BindTriggerSelect.Position = UDim2.new(0, 60, 0, 155)
	BindTriggerSelect.Size = UDim2.new(0, 65, 0, 20)
	BindTriggerSelect.ZIndex = 10
	BindTriggerSelect.Font = Enum.Font.SourceSans
	BindTriggerSelect.Text = "KeyDown"
	BindTriggerSelect.TextColor3 = Color3.fromRGB(255, 255, 255)
	BindTriggerSelect.TextSize = 16.000
	table.insert(shade2,BindTriggerSelect)
	table.insert(text1,BindTriggerSelect)

	Add_2.Name = "Add" -- de las teclas
	Add_2.Parent = background_2
	Add_2.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
	Add_2.BorderSizePixel = 0
	Add_2.Position = UDim2.new(0, 310, 0, 35)
	Add_2.Size = UDim2.new(0, 40, 0, 20)
	Add_2.ZIndex = 10
	Add_2.Font = Enum.Font.SourceSans
	Add_2.Text = "Add"
	Add_2.TextColor3 = Color3.fromRGB(255, 255, 255)
	Add_2.TextSize = 14.000
	table.insert(shade2,Add_2)
	table.insert(text1,Add_2)




	Cmdbar_2.Name = "Cmdbar_2"
	Cmdbar_2.Parent = background_2
	Cmdbar_2.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
	Cmdbar_2.BorderSizePixel = 0
	Cmdbar_2.Position = UDim2.new(0, 150, 0, 35)
	Cmdbar_2.Size = UDim2.new(0, 150, 0, 20)
	Cmdbar_2.ZIndex = 10
	Cmdbar_2.Font = Enum.Font.SourceSans
	Cmdbar_2.PlaceholderText = "Command"
	Cmdbar_2.Text = ""
	Cmdbar_2.TextColor3 = Color3.fromRGB(255, 255, 255)
	Cmdbar_2.TextSize = 14.000
	Cmdbar_2.TextXAlignment = Enum.TextXAlignment.Left

	Cmdbar_3.Name = "Cmdbar_3"
	Cmdbar_3.Parent = background_2
	Cmdbar_3.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
	Cmdbar_3.BorderSizePixel = 0
	Cmdbar_3.Position = UDim2.new(0, 150, 0, 60)
	Cmdbar_3.Size = UDim2.new(0, 150, 0, 20)
	Cmdbar_3.ZIndex = 10
	Cmdbar_3.Font = Enum.Font.SourceSans
	Cmdbar_3.PlaceholderText = "Command 2"
	Cmdbar_3.Text = ""
	Cmdbar_3.TextColor3 = Color3.fromRGB(255, 255, 255)
	Cmdbar_3.TextSize = 14.000
	Cmdbar_3.TextXAlignment = Enum.TextXAlignment.Left

	CreateToggle.Name = "CreateToggle"
	CreateToggle.Parent = background_2
	CreateToggle.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
	CreateToggle.BackgroundTransparency = 1
	CreateToggle.BorderSizePixel = 0
	CreateToggle.Position = UDim2.new(0, 152, 0, 10)
	CreateToggle.Size = UDim2.new(0, 198, 0, 20)
	CreateToggle.ZIndex = 10
	CreateToggle.Font = Enum.Font.SourceSans
	CreateToggle.Text = "Create Toggle"
	CreateToggle.TextColor3 = Color3.fromRGB(255, 255, 255)
	CreateToggle.TextSize = 14.000
	CreateToggle.TextXAlignment = Enum.TextXAlignment.Left
	table.insert(text1,CreateToggle)

	Button_2.Name = "Button"
	Button_2.Parent = CreateToggle
	Button_2.BackgroundColor3 = Color3.fromRGB(78, 78, 79)
	Button_2.BorderSizePixel = 0
	Button_2.Position = UDim2.new(1, -20, 0, 0)
	Button_2.Size = UDim2.new(0, 20, 0, 20)
	Button_2.ZIndex = 10
	table.insert(shade3,Button_2)

	On_2.Name = "On"
	On_2.Parent = Button_2
	On_2.BackgroundColor3 = Color3.fromRGB(150, 150, 151)
	On_2.BackgroundTransparency = 1
	On_2.BorderSizePixel = 0
	On_2.Position = UDim2.new(0, 2, 0, 2)
	On_2.Size = UDim2.new(0, 16, 0, 16)
	On_2.ZIndex = 10
	On_2.Font = Enum.Font.SourceSans
	On_2.Text = "" -- parte de keybind
	On_2.TextColor3 = Color3.fromRGB(0, 0, 0)
	On_2.TextSize = 14.000

	shadow_2.Name = "shadow"
	shadow_2.Parent = KeybindEditor
	shadow_2.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
	shadow_2.BorderSizePixel = 0
	shadow_2.Size = UDim2.new(0, 360, 0, 20)
	shadow_2.ZIndex = 10
	table.insert(shade2,shadow_2)

	PopupText_2.Name = "PopupText_2"
	PopupText_2.Parent = shadow_2
	PopupText_2.BackgroundTransparency = 1
	PopupText_2.Size = UDim2.new(1, 0, 0.949999988, 0)
	PopupText_2.ZIndex = 10
	PopupText_2.Font = Enum.Font.SourceSans
	PopupText_2.Text = "Set Keybinds"
	PopupText_2.TextColor3 = Color3.fromRGB(255, 255, 255)
	PopupText_2.TextSize = 14.000
	PopupText_2.TextWrapped = true
	table.insert(text1,PopupText_2)

	Exit_2.Name = "Exit_2"
	Exit_2.Parent = shadow_2
	Exit_2.BackgroundTransparency = 1
	Exit_2.Position = UDim2.new(1, -20, 0, 0)
	Exit_2.Size = UDim2.new(0, 20, 0, 20)
	Exit_2.ZIndex = 10
	Exit_2.Text = ""

	ExitImage_2.Parent = Exit_2
	ExitImage_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ExitImage_2.BackgroundTransparency = 1
	ExitImage_2.Position = UDim2.new(0, 5, 0, 5)
	ExitImage_2.Size = UDim2.new(0, 10, 0, 10)
	ExitImage_2.ZIndex = 10
	ExitImage_2.Image = "rbxassetid://5054663650"



	function create(data)
		local insts = {}
		for i,v in pairs(data) do insts[v[1]] = Instance.new(v[2]) end

		for _,v in pairs(data) do
			for prop,val in pairs(v[3]) do
				if type(val) == "table" then
					insts[v[1]][prop] = insts[val[1]]
				else
					insts[v[1]][prop] = val
				end
			end
		end

		return insts[1]
	end

	TextService = cloneref(game:GetService("TextService"))
	ViewportTextBox = (function()

		local funcs = {}
		funcs.Update = function(self)
			local cursorPos = self.TextBox.CursorPosition
			local text = self.TextBox.Text
			if text == "" then self.TextBox.Position = UDim2.new(0,2,0,0) return end
			if cursorPos == -1 then return end

			local cursorText = text:sub(1,cursorPos-1)
			local pos = nil
			local leftEnd = -self.TextBox.Position.X.Offset
			local rightEnd = leftEnd + self.View.AbsoluteSize.X

			local totalTextSize = TextService:GetTextSize(text,self.TextBox.TextSize,self.TextBox.Font,Vector2.new(999999999,100)).X
			local cursorTextSize = TextService:GetTextSize(cursorText,self.TextBox.TextSize,self.TextBox.Font,Vector2.new(999999999,100)).X

			if cursorTextSize > rightEnd then
				pos = math.max(-2,cursorTextSize - self.View.AbsoluteSize.X + 2)
			elseif cursorTextSize < leftEnd then
				pos = math.max(-2,cursorTextSize-2)
			elseif totalTextSize < rightEnd then
				pos = math.max(-2,totalTextSize - self.View.AbsoluteSize.X + 2)
			end

			if pos then
				self.TextBox.Position = UDim2.new(0,-pos,0,0)
				self.TextBox.Size = UDim2.new(1,pos,1,0)
			end
		end

		local mt = {}
		mt.__index = funcs

		local function convert(textbox)
			local obj = setmetatable({OffsetX = 0, TextBox = textbox},mt)

			local view = Instance.new("Frame")
			view.BackgroundTransparency = textbox.BackgroundTransparency
			view.BackgroundColor3 = textbox.BackgroundColor3
			view.BorderSizePixel = textbox.BorderSizePixel
			view.BorderColor3 = textbox.BorderColor3
			view.Position = textbox.Position
			view.Size = textbox.Size
			view.ClipsDescendants = true
			view.Name = textbox.Name
			view.ZIndex = 10
			textbox.BackgroundTransparency = 1
			textbox.Position = UDim2.new(0,4,0,0)
			textbox.Size = UDim2.new(1,-8,1,0)
			textbox.TextXAlignment = Enum.TextXAlignment.Left
			textbox.Name = "Input"
			table.insert(text1,textbox)
			table.insert(shade2,view)

			obj.View = view

			textbox.Changed:Connect(function(prop)
				if prop == "Text" or prop == "CursorPosition" or prop == "AbsoluteSize" then
					obj:Update()
				end
			end)

			obj:Update()

			view.Parent = textbox.Parent
			textbox.Parent = view

			return obj
		end

		return {convert = convert}
	end)()

	ViewportTextBox.convert(Cmdbar).View.ZIndex = 10
	ViewportTextBox.convert(Cmdbar_2).View.ZIndex = 10
	ViewportTextBox.convert(Cmdbar_3).View.ZIndex = 10

	IYMouse = Players.LocalPlayer:GetMouse()
	PlayerGui = Players.LocalPlayer:FindFirstChildWhichIsA("PlayerGui")
	UserInputService = cloneref(game:GetService("UserInputService"))
	TweenService = cloneref(game:GetService("TweenService"))
	HttpService = cloneref(game:GetService("HttpService"))
	TextChatService = cloneref(game:GetService("TextChatService"))

	local IsOnMobile = table.find({Enum.Platform.IOS, Enum.Platform.Android}, UserInputService:GetPlatform())
	everyClipboard = setclipboard or toclipboard or set_clipboard or (Clipboard and Clipboard.set)

	function writefileExploit()
		if writefile then
			return true
		end
	end

	function isNumber(str)
		if tonumber(str) ~= nil or str == 'inf' then
			return true
		end
	end

	function getRoot(char)
		local rootPart = char:FindFirstChild('HumanoidRootPart') or char:FindFirstChild('Torso') or char:FindFirstChild('UpperTorso')
		return rootPart
	end





	function toClipboard(txt)
		if everyClipboard then
			everyClipboard(tostring(txt))
			notify("Clipboard", "Copied to clipboard")
		else
			notify("Clipboard", "Your exploit doesn't have the ability to use the clipboard")
		end
	end


	local cooldown = false
	function writefileCooldown(name,data)
		task.spawn(function()
			if not cooldown then
				cooldown = true
				writefile(name, data)
			else
				repeat wait() until cooldown == false
				writefileCooldown(name,data)
			end
			wait(3)
			cooldown = false
		end)
	end

	function dragGUI(gui)
		task.spawn(function()
			local dragging
			local dragInput
			local dragStart = Vector3.new(0,0,0)
			local startPos
			local function update(input)
				local delta = input.Position - dragStart
				local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
				TweenService:Create(gui, TweenInfo.new(.20), {Position = Position}):Play()
			end
			gui.InputBegan:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
					dragging = true
					dragStart = input.Position
					startPos = gui.Position

					input.Changed:Connect(function()
						if input.UserInputState == Enum.UserInputState.End then
							dragging = false
						end
					end)
				end
			end)
			gui.InputChanged:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
					dragInput = input
				end
			end)
			UserInputService.InputChanged:Connect(function(input)
				if input == dragInput and dragging then
					update(input)
				end
			end)
		end)
	end


	dragGUI(KeybindEditor)

	-- antes

	reference = (function()
		local main = create({
			{1,"Frame",{BackgroundColor3=Color3.new(0.14117647707462,0.14117647707462,0.14509804546833),BackgroundTransparency=1,BorderColor3=Color3.new(0.15686275064945,0.15686275064945,0.15686275064945),BorderSizePixel=0,Name="Main",Position=UDim2.new(0.5,-250,0,-500),Size=UDim2.new(0,500,0,20),ZIndex=10,}},
			{2,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BorderSizePixel=0,Name="TopBar",Parent={1},Size=UDim2.new(1,0,0,20),ZIndex=10,}},
			{3,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="Title",Parent={2},Size=UDim2.new(1,0,0.94999998807907,0),Text="Reference Help",TextColor3=Color3.new(1,1,1),TextSize=14,ZIndex=10,}},
			{4,"TextButton",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="Close",Parent={2},Position=UDim2.new(1,-20,0,0),Size=UDim2.new(0,20,0,20),Text="",TextColor3=Color3.new(1,1,1),TextSize=14,ZIndex=10,}},
			{5,"ImageLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Image="rbxassetid://5054663650",Parent={4},Position=UDim2.new(0,5,0,5),Size=UDim2.new(0,10,0,10),ZIndex=10,}},
			{6,"Frame",{BackgroundColor3=Color3.new(0.14117647707462,0.14117647707462,0.14509804546833),BorderSizePixel=0,Name="Content",Parent={1},Position=UDim2.new(0,0,0,20),Size=UDim2.new(1,0,0,300),ZIndex=10,}},
			{7,"ScrollingFrame",{BackgroundColor3=Color3.new(0.14117647707462,0.14117647707462,0.14509804546833),BackgroundTransparency=1,BorderColor3=Color3.new(0.15686275064945,0.15686275064945,0.15686275064945),BorderSizePixel=0,BottomImage="rbxasset://textures/ui/Scroll/scroll-middle.png",CanvasSize=UDim2.new(0,0,0,560),Name="List",Parent={6},ScrollBarImageColor3=Color3.new(0.30588236451149,0.30588236451149,0.3098039329052),ScrollBarThickness=8,Size=UDim2.new(1,0,1,0),TopImage="rbxasset://textures/ui/Scroll/scroll-middle.png",VerticalScrollBarInset=2,ZIndex=10,}},
			{8,"UIListLayout",{Parent={7},SortOrder=2,}},
			{9,"Frame",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Name="Section",Parent={7},Size=UDim2.new(1,0,0,429),ZIndex=10,}},
			{10,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="Header",Parent={9},Position=UDim2.new(0,8,0,5),Size=UDim2.new(1,-8,0,20),Text="Special Player Cases",TextColor3=Color3.new(1,1,1),TextSize=20,TextXAlignment=0,ZIndex=10,}},
			{11,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="Text",Parent={9},Position=UDim2.new(0,8,0,25),Size=UDim2.new(1,-8,0,20),Text="These keywords can be used to quickly select groups of players in commands:",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
			{12,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BorderSizePixel=0,Name="Line",Parent={9},Position=UDim2.new(0,10,1,-1),Size=UDim2.new(1,-20,0,1),ZIndex=10,}},
			{13,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,Name="Cases",Parent={9},Position=UDim2.new(0,8,0,55),Size=UDim2.new(1,-16,0,342),ZIndex=10,}},
			{14,"UIListLayout",{Parent={13},SortOrder=2,}},
			{15,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,LayoutOrder=-4,Name="Case",Parent={13},Position=UDim2.new(0,8,0,60),Size=UDim2.new(1,0,0,18),ZIndex=10,}},
			{16,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="CaseName",Parent={15},Size=UDim2.new(1,0,1,0),Text="all",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
			{17,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="CaseDesc",Parent={15},Position=UDim2.new(0,15,0,0),Size=UDim2.new(1,0,1,0),Text="- includes everyone",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
			{18,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,LayoutOrder=-3,Name="Case",Parent={13},Position=UDim2.new(0,8,0,60),Size=UDim2.new(1,0,0,18),ZIndex=10,}},
			{19,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="CaseName",Parent={18},Size=UDim2.new(1,0,1,0),Text="others",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
			{20,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="CaseDesc",Parent={18},Position=UDim2.new(0,37,0,0),Size=UDim2.new(1,0,1,0),Text="- includes everyone except you",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
			{21,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,LayoutOrder=-2,Name="Case",Parent={13},Position=UDim2.new(0,8,0,60),Size=UDim2.new(1,0,0,18),ZIndex=10,}},
			{22,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="CaseName",Parent={21},Size=UDim2.new(1,0,1,0),Text="me",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
			{23,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="CaseDesc",Parent={21},Position=UDim2.new(0,19,0,0),Size=UDim2.new(1,0,1,0),Text="- includes your player only",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
			{24,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,Name="Case",Parent={13},Position=UDim2.new(0,8,0,60),Size=UDim2.new(1,0,0,18),ZIndex=10,}},
			{25,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="CaseName",Parent={24},Size=UDim2.new(1,0,1,0),Text="#[number]",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
			{26,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="CaseDesc",Parent={24},Position=UDim2.new(0,59,0,0),Size=UDim2.new(1,0,1,0),Text="- gets a specified amount of random players",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
			{27,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,Name="Case",Parent={13},Position=UDim2.new(0,8,0,60),Size=UDim2.new(1,0,0,18),ZIndex=10,}},
			{28,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="CaseName",Parent={27},Size=UDim2.new(1,0,1,0),Text="random",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
			{29,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="CaseDesc",Parent={27},Position=UDim2.new(0,44,0,0),Size=UDim2.new(1,0,1,0),Text="- affects a random player",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
			{30,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,Name="Case",Parent={13},Position=UDim2.new(0,8,0,60),Size=UDim2.new(1,0,0,18),ZIndex=10,}},
			{31,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="CaseName",Parent={30},Size=UDim2.new(1,0,1,0),Text="%[team name]",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
			{32,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="CaseDesc",Parent={30},Position=UDim2.new(0,78,0,0),Size=UDim2.new(1,0,1,0),Text="- includes everyone on a given team",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
			{33,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,Name="Case",Parent={13},Position=UDim2.new(0,8,0,60),Size=UDim2.new(1,0,0,18),ZIndex=10,}},
			{34,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="CaseName",Parent={33},Size=UDim2.new(1,0,1,0),Text="allies / team",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
			{35,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="CaseDesc",Parent={33},Position=UDim2.new(0,63,0,0),Size=UDim2.new(1,0,1,0),Text="- players who are on your team",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
			{36,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,Name="Case",Parent={13},Position=UDim2.new(0,8,0,60),Size=UDim2.new(1,0,0,18),ZIndex=10,}},
			{37,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="CaseName",Parent={36},Size=UDim2.new(1,0,1,0),Text="enemies / nonteam",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
			{38,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="CaseDesc",Parent={36},Position=UDim2.new(0,101,0,0),Size=UDim2.new(1,0,1,0),Text="- players who are not on your team",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
			{39,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,Name="Case",Parent={13},Position=UDim2.new(0,8,0,60),Size=UDim2.new(1,0,0,18),ZIndex=10,}},
			{40,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="CaseName",Parent={39},Size=UDim2.new(1,0,1,0),Text="friends",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
			{41,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="CaseDesc",Parent={39},Position=UDim2.new(0,40,0,0),Size=UDim2.new(1,0,1,0),Text="- anyone who is friends with you",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
			{42,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,Name="Case",Parent={13},Position=UDim2.new(0,8,0,60),Size=UDim2.new(1,0,0,18),ZIndex=10,}},
			{43,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="CaseName",Parent={42},Size=UDim2.new(1,0,1,0),Text="nonfriends",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
			{44,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="CaseDesc",Parent={42},Position=UDim2.new(0,61,0,0),Size=UDim2.new(1,0,1,0),Text="- anyone who is not friends with you",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
			{45,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,Name="Case",Parent={13},Position=UDim2.new(0,8,0,60),Size=UDim2.new(1,0,0,18),ZIndex=10,}},
			{46,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="CaseName",Parent={45},Size=UDim2.new(1,0,1,0),Text="guests",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
			{47,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="CaseDesc",Parent={45},Position=UDim2.new(0,36,0,0),Size=UDim2.new(1,0,1,0),Text="- guest players (obsolete)",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
			{48,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,Name="Case",Parent={13},Position=UDim2.new(0,8,0,60),Size=UDim2.new(1,0,0,18),ZIndex=10,}},
			{49,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="CaseName",Parent={48},Size=UDim2.new(1,0,1,0),Text="bacons",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
			{50,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="CaseDesc",Parent={48},Position=UDim2.new(0,40,0,0),Size=UDim2.new(1,0,1,0),Text="- anyone with the \"bacon\" or pal hair",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
			{51,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,Name="Case",Parent={13},Position=UDim2.new(0,8,0,60),Size=UDim2.new(1,0,0,18),ZIndex=10,}},
			{52,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="CaseName",Parent={51},Size=UDim2.new(1,0,1,0),Text="age[number]",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
			{53,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="CaseDesc",Parent={51},Position=UDim2.new(0,71,0,0),Size=UDim2.new(1,0,1,0),Text="- includes anyone below or at the given age",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
			{54,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,Name="Case",Parent={13},Position=UDim2.new(0,8,0,60),Size=UDim2.new(1,0,0,18),ZIndex=10,}},
			{55,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="CaseName",Parent={54},Size=UDim2.new(1,0,1,0),Text="rad[number]",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
			{56,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="CaseDesc",Parent={54},Position=UDim2.new(0,70,0,0),Size=UDim2.new(1,0,1,0),Text="- includes anyone within the given radius",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
			{57,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,Name="Case",Parent={13},Position=UDim2.new(0,8,0,60),Size=UDim2.new(1,0,0,18),ZIndex=10,}},
			{58,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="CaseName",Parent={57},Size=UDim2.new(1,0,1,0),Text="nearest",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
			{59,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="CaseDesc",Parent={57},Position=UDim2.new(0,43,0,0),Size=UDim2.new(1,0,1,0),Text="- gets the closest player to you",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
			{60,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,Name="Case",Parent={13},Position=UDim2.new(0,8,0,60),Size=UDim2.new(1,0,0,18),ZIndex=10,}},
			{61,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="CaseName",Parent={60},Size=UDim2.new(1,0,1,0),Text="farthest",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
			{62,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="CaseDesc",Parent={60},Position=UDim2.new(0,46,0,0),Size=UDim2.new(1,0,1,0),Text="- gets the farthest player from you",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
			{63,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,Name="Case",Parent={13},Position=UDim2.new(0,8,0,60),Size=UDim2.new(1,0,0,18),ZIndex=10,}},
			{64,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="CaseName",Parent={63},Size=UDim2.new(1,0,1,0),Text="group[ID]",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
			{65,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="CaseDesc",Parent={63},Position=UDim2.new(0,55,0,0),Size=UDim2.new(1,0,1,0),Text="- gets players who are in a certain group",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
			{66,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,Name="Case",Parent={13},Position=UDim2.new(0,8,0,60),Size=UDim2.new(1,0,0,18),ZIndex=10,}},
			{67,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="CaseName",Parent={66},Size=UDim2.new(1,0,1,0),Text="alive",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
			{68,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="CaseDesc",Parent={66},Position=UDim2.new(0,27,0,0),Size=UDim2.new(1,0,1,0),Text="- gets players who are alive",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
			{69,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,Name="Case",Parent={13},Position=UDim2.new(0,8,0,60),Size=UDim2.new(1,0,0,18),ZIndex=10,}},
			{70,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="CaseName",Parent={69},Size=UDim2.new(1,0,1,0),Text="dead",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
			{71,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="CaseDesc",Parent={69},Position=UDim2.new(0,29,0,0),Size=UDim2.new(1,0,1,0),Text="- gets players who are dead",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
			{72,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,LayoutOrder=-1,Name="Case",Parent={13},Position=UDim2.new(0,8,0,60),Size=UDim2.new(1,0,0,18),ZIndex=10,}},
			{73,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="CaseName",Parent={72},Size=UDim2.new(1,0,1,0),Text="@username",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
			{74,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="CaseDesc",Parent={72},Position=UDim2.new(0,66,0,0),Size=UDim2.new(1,0,1,0),Text="- searches for players by username only (ignores displaynames)",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
			{101,"Frame",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Name="Section",Parent={7},Size=UDim2.new(1,0,0,75),ZIndex=10,}},
			{102,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="Header",Parent={101},Position=UDim2.new(0,8,0,5),Size=UDim2.new(1,-8,0,20),Text="Autocomplete in the Command Bar",TextColor3=Color3.new(1,1,1),TextSize=20,TextXAlignment=0,ZIndex=10,}},
			{103,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="Text",Parent={101},Position=UDim2.new(0,8,0,30),Size=UDim2.new(1,-8,0,32),Text="While focused on the command bar, you can use the tab key to insert the top suggested command into the command bar.",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
			{104,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BorderSizePixel=0,Name="Line",Parent={101},Position=UDim2.new(0,10,1,-1),Size=UDim2.new(1,-20,0,1),ZIndex=10,}},
		})
		for i,v in pairs(main.Content.List:GetDescendants()) do
			if v:IsA("TextLabel") then
				table.insert(text1,v)
			end
		end
		table.insert(scroll,main.Content.List)
		table.insert(shade1,main.Content)
		table.insert(shade2,main.TopBar)
		main.Name = randomString()
		main.TopBar.Close.MouseButton1Click:Connect(function()
			main:TweenPosition(UDim2.new(0.5,-250,0,-500), "InOut", "Quart", 0.5, true, nil)
		end)
		
		dragGUI(main)
		main.Parent = PARENT

		ReferenceButton.MouseButton1Click:Connect(function()
			main:TweenPosition(UDim2.new(0.5,-250,0.5,-150), "InOut", "Quart", 0.5, true, nil)
		end)
	end)()

	currentShade1 = Color3.fromRGB(36, 36, 37)
	currentShade2 = Color3.fromRGB(46, 46, 47)
	currentShade3 = Color3.fromRGB(78, 78, 79)
	currentText1 = Color3.new(1, 1, 1)
	currentText2 = Color3.new(0, 0, 0)
	currentScroll = Color3.fromRGB(78,78,79)

	defaultsettings = {
		prefix = ';';
		StayOpen = false;
		binds = {};
		currentShade1 = {currentShade1.R,currentShade1.G,currentShade1.B};
		currentShade2 = {currentShade2.R,currentShade2.G,currentShade2.B};
		currentShade3 = {currentShade3.R,currentShade3.G,currentShade3.B};
		currentText1 = {currentText1.R,currentText1.G,currentText1.B};
		currentText2 = {currentText2.R,currentText2.G,currentText2.B};
		currentScroll = {currentScroll.R,currentScroll.G,currentScroll.B};
	}

	defaults = HttpService:JSONEncode(defaultsettings)
	nosaves = false
	useFactorySettings = function()
		prefix = ';'
		StayOpen = false
		KeepInfYield = true
		binds = {}
	end

	local loadedEventData = nil
	local jsonAttempts = 0
	function saves()
		if writefileExploit() and jsonAttempts < 50 then
			if pcall(function() readfile("IY_FE.iy") end) then
				if readfile("IY_FE.iy") ~= nil then
					local success, response = pcall(function()
						local json = HttpService:JSONDecode(readfile("IY_FE.iy"))
						if json.prefix ~= nil then prefix = json.prefix else prefix = ';' end
						if json.StayOpen ~= nil then StayOpen = json.StayOpen else StayOpen = false end

						
						if json.binds ~= nil then binds = (json.binds or {}) else binds = {} end
						if json.currentShade1 ~= nil then currentShade1 = Color3.new(json.currentShade1[1],json.currentShade1[2],json.currentShade1[3]) end
						if json.currentShade2 ~= nil then currentShade2 = Color3.new(json.currentShade2[1],json.currentShade2[2],json.currentShade2[3]) end
						if json.currentShade3 ~= nil then currentShade3 = Color3.new(json.currentShade3[1],json.currentShade3[2],json.currentShade3[3]) end
						if json.currentText1 ~= nil then currentText1 = Color3.new(json.currentText1[1],json.currentText1[2],json.currentText1[3]) end
						if json.currentText2 ~= nil then currentText2 = Color3.new(json.currentText2[1],json.currentText2[2],json.currentText2[3]) end
						if json.currentScroll ~= nil then currentScroll = Color3.new(json.currentScroll[1],json.currentScroll[2],json.currentScroll[3]) end
					end)
					if not success then
						jsonAttempts = jsonAttempts + 1
						warn("Save Json Error:", response)
						warn("Overwriting Save File")
						writefileCooldown("IY_FE.iy", defaults)
						wait()
						saves()
					end
				else
					writefileCooldown("IY_FE.iy", defaults)
					wait()
					saves()
				end
			else
				writefileCooldown("IY_FE.iy", defaults)
				wait()
				if pcall(function() readfile("IY_FE.iy") end) then
					saves()
				else
					nosaves = true
					useFactorySettings()

					local FileError = Instance.new("Frame")
					local background = Instance.new("Frame")
					local Directions = Instance.new("TextLabel")
					local shadow = Instance.new("Frame")
					local PopupText = Instance.new("TextLabel")
					local Exit = Instance.new("TextButton")
					local ExitImage = Instance.new("ImageLabel")

					FileError.Name = randomString()
					FileError.Parent = PARENT
					FileError.Active = true
					FileError.BackgroundTransparency = 1
					FileError.Position = UDim2.new(0.5, -180, 0, 290)
					FileError.Size = UDim2.new(0, 360, 0, 20)
					FileError.ZIndex = 10

					background.Name = "background"
					background.Parent = FileError
					background.Active = true
					background.BackgroundColor3 = Color3.fromRGB(36, 36, 37)
					background.BorderSizePixel = 0
					background.Position = UDim2.new(0, 0, 0, 20)
					background.Size = UDim2.new(0, 360, 0, 205)
					background.ZIndex = 10

					Directions.Name = "Directions"
					Directions.Parent = background
					Directions.BackgroundTransparency = 1
					Directions.BorderSizePixel = 0
					Directions.Position = UDim2.new(0, 10, 0, 10)
					Directions.Size = UDim2.new(0, 340, 0, 185)
					Directions.Font = Enum.Font.SourceSans
					Directions.TextSize = 14
					Directions.Text = "There was a problem writing a save file to your PC.\n\nPlease contact the developer/support team for your exploit and tell them writefile is not working.\n\nYour settings, keybinds, , and  will not save if you continue.\n\nThings to try:\n> Make sure a 'workspace' folder is located in the same folder as your exploit\n> If your exploit is inside of a zip/rar file, extract it.\n> Rejoin the game and try again or restart your PC and try again."
					Directions.TextColor3 = Color3.new(1, 1, 1)
					Directions.TextWrapped = true
					Directions.TextXAlignment = Enum.TextXAlignment.Left
					Directions.TextYAlignment = Enum.TextYAlignment.Top
					Directions.ZIndex = 10

					shadow.Name = "shadow"
					shadow.Parent = FileError
					shadow.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
					shadow.BorderSizePixel = 0
					shadow.Size = UDim2.new(0, 360, 0, 20)
					shadow.ZIndex = 10

					PopupText.Name = "PopupText"
					PopupText.Parent = shadow
					PopupText.BackgroundTransparency = 1
					PopupText.Size = UDim2.new(1, 0, 0.95, 0)
					PopupText.ZIndex = 10
					PopupText.Font = Enum.Font.SourceSans
					PopupText.TextSize = 14
					PopupText.Text = "File Error"
					PopupText.TextColor3 = Color3.new(1, 1, 1)
					PopupText.TextWrapped = true

					Exit.Name = "Exit"
					Exit.Parent = shadow
					Exit.BackgroundTransparency = 1
					Exit.Position = UDim2.new(1, -20, 0, 0)
					Exit.Size = UDim2.new(0, 20, 0, 20)
					Exit.Text = ""
					Exit.ZIndex = 10

					ExitImage.Parent = Exit
					ExitImage.BackgroundColor3 = Color3.new(1, 1, 1)
					ExitImage.BackgroundTransparency = 1
					ExitImage.Position = UDim2.new(0, 5, 0, 5)
					ExitImage.Size = UDim2.new(0, 10, 0, 10)
					ExitImage.Image = "rbxassetid://5054663650"
					ExitImage.ZIndex = 10

					Exit.MouseButton1Click:Connect(function()
						FileError:Destroy()
					end)
				end
			end
		else
			if jsonAttempts >= 50 then
				nosaves = true
				useFactorySettings()

				local FileError = Instance.new("Frame")
				local background = Instance.new("Frame")
				local Directions = Instance.new("TextLabel")
				local shadow = Instance.new("Frame")
				local PopupText = Instance.new("TextLabel")
				local Exit = Instance.new("TextButton")
				local ExitImage = Instance.new("ImageLabel")

				FileError.Name = randomString()
				FileError.Parent = PARENT
				FileError.Active = true
				FileError.BackgroundTransparency = 1
				FileError.Position = UDim2.new(0.5, -180, 0, 290)
				FileError.Size = UDim2.new(0, 360, 0, 20)
				FileError.ZIndex = 10

				background.Name = "background"
				background.Parent = FileError
				background.Active = true
				background.BackgroundColor3 = Color3.fromRGB(36, 36, 37)
				background.BorderSizePixel = 0
				background.Position = UDim2.new(0, 0, 0, 20)
				background.Size = UDim2.new(0, 360, 0, 205)
				background.ZIndex = 10

				Directions.Name = "Directions"
				Directions.Parent = background
				Directions.BackgroundTransparency = 1
				Directions.BorderSizePixel = 0
				Directions.Position = UDim2.new(0, 10, 0, 10)
				Directions.Size = UDim2.new(0, 340, 0, 185)
				Directions.Font = Enum.Font.SourceSans
				Directions.TextSize = 14
				Directions.Text = "Sorry, but we have attempted to parse your data, but it is unreadable!\n\nScript is now using factory settings until your executor fixes its file system.\n\nYour data has not been deleted."
				Directions.TextColor3 = Color3.new(1, 1, 1)
				Directions.TextWrapped = true
				Directions.TextXAlignment = Enum.TextXAlignment.Left
				Directions.TextYAlignment = Enum.TextYAlignment.Top
				Directions.ZIndex = 10

				shadow.Name = "shadow"
				shadow.Parent = FileError
				shadow.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
				shadow.BorderSizePixel = 0
				shadow.Size = UDim2.new(0, 360, 0, 20)
				shadow.ZIndex = 10

				PopupText.Name = "PopupText"
				PopupText.Parent = shadow
				PopupText.BackgroundTransparency = 1
				PopupText.Size = UDim2.new(1, 0, 0.95, 0)
				PopupText.ZIndex = 10
				PopupText.Font = Enum.Font.SourceSans
				PopupText.TextSize = 14
				PopupText.Text = "File Error"
				PopupText.TextColor3 = Color3.new(1, 1, 1)
				PopupText.TextWrapped = true

				Exit.Name = "Exit"
				Exit.Parent = shadow
				Exit.BackgroundTransparency = 1
				Exit.Position = UDim2.new(1, -20, 0, 0)
				Exit.Size = UDim2.new(0, 20, 0, 20)
				Exit.Text = ""
				Exit.ZIndex = 10

				ExitImage.Parent = Exit
				ExitImage.BackgroundColor3 = Color3.new(1, 1, 1)
				ExitImage.BackgroundTransparency = 1
				ExitImage.Position = UDim2.new(0, 5, 0, 5)
				ExitImage.Size = UDim2.new(0, 10, 0, 10)
				ExitImage.Image = "rbxassetid://5054663650"
				ExitImage.ZIndex = 10

				Exit.MouseButton1Click:Connect(function()
					FileError:Destroy()
				end)
			else
				useFactorySettings()
			end
		end
	end

	saves()

	function updatesaves()
		if nosaves == false and writefileExploit() then
			local update = {
				prefix = prefix;
				StayOpen = StayOpen;
				binds = binds or {};
				currentShade1 = {currentShade1.R,currentShade1.G,currentShade1.B};
				currentShade2 = {currentShade2.R,currentShade2.G,currentShade2.B};
				currentShade3 = {currentShade3.R,currentShade3.G,currentShade3.B};
				currentText1 = {currentText1.R,currentText1.G,currentText1.B};
				currentText2 = {currentText2.R,currentText2.G,currentText2.B};
				currentScroll = {currentScroll.R,currentScroll.G,currentScroll.B};
			}
			writefileCooldown("IY_FE.iy", HttpService:JSONEncode(update))
		end
	end





	if type(binds) ~= "table" then binds = {} end

	function Time()
		local HOUR = math.floor((tick() % 86400) / 3600)
		local MINUTE = math.floor((tick() % 3600) / 60)
		local SECOND = math.floor(tick() % 60)
		local AP = HOUR > 11 and 'PM' or 'AM'
		HOUR = (HOUR % 12 == 0 and 12 or HOUR % 12)
		HOUR = HOUR < 10 and '0' .. HOUR or HOUR
		MINUTE = MINUTE < 10 and '0' .. MINUTE or MINUTE
		SECOND = SECOND < 10 and '0' .. SECOND or SECOND
		return HOUR .. ':' .. MINUTE .. ':' .. SECOND .. ' ' .. AP
	end

	PrefixBox.Text = prefix
	local SettingsOpen = false
	local isHidden = false

	if StayOpen == false then
		On.BackgroundTransparency = 1
	else
		On.BackgroundTransparency = 0
	end



	function maximizeHolder()
		if StayOpen == false then
			Holder:TweenPosition(UDim2.new(1, Holder.Position.X.Offset, 1, -220), "InOut", "Quart", 0.2, true, nil)
		end
	end

	local minimizeNum = -20
	function minimizeHolder()
		if StayOpen == false then
			Holder:TweenPosition(UDim2.new(1, Holder.Position.X.Offset, 1, minimizeNum), "InOut", "Quart", 0.5, true, nil)
		end
	end

	function cmdbarHolder()
		if StayOpen == false then
			Holder:TweenPosition(UDim2.new(1, Holder.Position.X.Offset, 1, -45), "InOut", "Quart", 0.5, true, nil)
		end
	end

	pinNotification = nil
	local notifyCount = 0
	function notify(text,text2,length)
		task.spawn(function()
			local LnotifyCount = notifyCount+1
			local notificationPinned = false
			notifyCount = notifyCount+1
			if pinNotification then pinNotification:Disconnect() end
			pinNotification = PinButton.MouseButton1Click:Connect(function()
				task.spawn(function()
					pinNotification:Disconnect()
					notificationPinned = true
					Title_2.BackgroundTransparency = 1
					wait(0.5)
					Title_2.BackgroundTransparency = 0
				end)
			end)
			Notification:TweenPosition(UDim2.new(1, Notification.Position.X.Offset, 1, 0), "InOut", "Quart", 0.5, true, nil)
			wait(0.6)
			local closepressed = false
			if text2 then
				Title_2.Text = text
				Text_2.Text = text2
			else
				Title_2.Text = 'Notification'
				Text_2.Text = text
			end
			Notification:TweenPosition(UDim2.new(1, Notification.Position.X.Offset, 1, -100), "InOut", "Quart", 0.5, true, nil)
			CloseButton.MouseButton1Click:Connect(function()
				Notification:TweenPosition(UDim2.new(1, Notification.Position.X.Offset, 1, 0), "InOut", "Quart", 0.5, true, nil)
				closepressed = true
				pinNotification:Disconnect()
			end)
			if length and isNumber(length) then
				wait(length)
			else
				wait(10)
			end
			if LnotifyCount == notifyCount then
				if closepressed == false and notificationPinned == false then
					pinNotification:Disconnect()
					Notification:TweenPosition(UDim2.new(1, Notification.Position.X.Offset, 1, 0), "InOut", "Quart", 0.5, true, nil)
				end
				notifyCount = 0
			end
		end)
	end




	IYMouse.KeyDown:Connect(function(Key)
		if (Key==prefix) then
			Cmdbar:CaptureFocus()
			spawn(function()
				repeat Cmdbar.Text = '' until Cmdbar.Text == ''
			end)
			maximizeHolder()
		end
	end)

	local lastMinimizeReq = 0
	Holder.MouseEnter:Connect(function()
		lastMinimizeReq = 0
		maximizeHolder()
	end)

	Holder.MouseLeave:Connect(function()
		if not Cmdbar:IsFocused() then
			local reqTime = tick()
			lastMinimizeReq = reqTime
			wait(1)
			if lastMinimizeReq ~= reqTime then return end
			if not Cmdbar:IsFocused() then
				minimizeHolder()
			end
		end
	end)

	function updateColors(color,ctype)
		if ctype == shade1 then
			for i,v in pairs(shade1) do
				v.BackgroundColor3 = color
			end
			currentShade1 = color
		elseif ctype == shade2 then
			for i,v in pairs(shade2) do
				v.BackgroundColor3 = color
			end
			currentShade2 = color
		elseif ctype == shade3 then
			for i,v in pairs(shade3) do
				v.BackgroundColor3 = color
			end
			currentShade3 = color
		elseif ctype == text1 then
			for i,v in pairs(text1) do
				v.TextColor3 = color
				if v:IsA("TextBox") then
					v.PlaceholderColor3 = color	
				end
			end
			currentText1 = color
		elseif ctype == text2 then
			for i,v in pairs(text2) do
				v.TextColor3 = color
			end
			currentText2 = color
		elseif ctype == scroll then
			for i,v in pairs(scroll) do
				v.ScrollBarImageColor3 = color
			end
			currentScroll = color
		end
	end

	local colorpickerOpen = false
	ColorsButton.MouseButton1Click:Connect(function()
		cache_currentShade1 = currentShade1
		cache_currentShade2 = currentShade2
		cache_currentShade3 = currentShade3
		cache_currentText1 = currentText1
		cache_currentText2 = currentText2
		cache_currentScroll = currentScroll
		if not colorpickerOpen then
			colorpickerOpen = true
			picker = game:GetObjects("rbxassetid://4908465318")[1]
			picker.Name = randomString()
			picker.Parent = PARENT

			local ColorPicker do
				ColorPicker = {}

				ColorPicker.new = function()
					local newMt = setmetatable({},{})

					local pickerGui = picker.ColorPicker
					local pickerTopBar = pickerGui.TopBar
					local pickerExit = pickerTopBar.Exit
					local pickerFrame = pickerGui.Content
					local colorSpace = pickerFrame.ColorSpaceFrame.ColorSpace
					local colorStrip = pickerFrame.ColorStrip
					local previewFrame = pickerFrame.Preview
					local basicColorsFrame = pickerFrame.BasicColors
					local customColorsFrame = pickerFrame.CustomColors
					local defaultButton = pickerFrame.Default
					local cancelButton = pickerFrame.Cancel
					local shade1Button = pickerFrame.Shade1
					local shade2Button = pickerFrame.Shade2
					local shade3Button = pickerFrame.Shade3
					local text1Button = pickerFrame.Text1
					local text2Button = pickerFrame.Text2
					local scrollButton = pickerFrame.Scroll

					local colorScope = colorSpace.Scope
					local colorArrow = pickerFrame.ArrowFrame.Arrow

					local hueInput = pickerFrame.Hue.Input
					local satInput = pickerFrame.Sat.Input
					local valInput = pickerFrame.Val.Input

					local redInput = pickerFrame.Red.Input
					local greenInput = pickerFrame.Green.Input
					local blueInput = pickerFrame.Blue.Input

					local mouse = IYMouse

					local hue,sat,val = 0,0,1
					local red,green,blue = 1,1,1
					local chosenColor = Color3.new(0,0,0)

					local basicColors = {Color3.new(0,0,0),Color3.new(0.66666668653488,0,0),Color3.new(0,0.33333334326744,0),Color3.new(0.66666668653488,0.33333334326744,0),Color3.new(0,0.66666668653488,0),Color3.new(0.66666668653488,0.66666668653488,0),Color3.new(0,1,0),Color3.new(0.66666668653488,1,0),Color3.new(0,0,0.49803924560547),Color3.new(0.66666668653488,0,0.49803924560547),Color3.new(0,0.33333334326744,0.49803924560547),Color3.new(0.66666668653488,0.33333334326744,0.49803924560547),Color3.new(0,0.66666668653488,0.49803924560547),Color3.new(0.66666668653488,0.66666668653488,0.49803924560547),Color3.new(0,1,0.49803924560547),Color3.new(0.66666668653488,1,0.49803924560547),Color3.new(0,0,1),Color3.new(0.66666668653488,0,1),Color3.new(0,0.33333334326744,1),Color3.new(0.66666668653488,0.33333334326744,1),Color3.new(0,0.66666668653488,1),Color3.new(0.66666668653488,0.66666668653488,1),Color3.new(0,1,1),Color3.new(0.66666668653488,1,1),Color3.new(0.33333334326744,0,0),Color3.new(1,0,0),Color3.new(0.33333334326744,0.33333334326744,0),Color3.new(1,0.33333334326744,0),Color3.new(0.33333334326744,0.66666668653488,0),Color3.new(1,0.66666668653488,0),Color3.new(0.33333334326744,1,0),Color3.new(1,1,0),Color3.new(0.33333334326744,0,0.49803924560547),Color3.new(1,0,0.49803924560547),Color3.new(0.33333334326744,0.33333334326744,0.49803924560547),Color3.new(1,0.33333334326744,0.49803924560547),Color3.new(0.33333334326744,0.66666668653488,0.49803924560547),Color3.new(1,0.66666668653488,0.49803924560547),Color3.new(0.33333334326744,1,0.49803924560547),Color3.new(1,1,0.49803924560547),Color3.new(0.33333334326744,0,1),Color3.new(1,0,1),Color3.new(0.33333334326744,0.33333334326744,1),Color3.new(1,0.33333334326744,1),Color3.new(0.33333334326744,0.66666668653488,1),Color3.new(1,0.66666668653488,1),Color3.new(0.33333334326744,1,1),Color3.new(1,1,1)}
					local customColors = {}

					dragGUI(picker)

					local function updateColor(noupdate)
						local relativeX,relativeY,relativeStripY = 219 - hue*219, 199 - sat*199, 199 - val*199
						local hsvColor = Color3.fromHSV(hue,sat,val)

						if noupdate == 2 or not noupdate then
							hueInput.Text = tostring(math.ceil(359*hue))
							satInput.Text = tostring(math.ceil(255*sat))
							valInput.Text = tostring(math.floor(255*val))
						end
						if noupdate == 1 or not noupdate then
							redInput.Text = tostring(math.floor(255*red))
							greenInput.Text = tostring(math.floor(255*green))
							blueInput.Text = tostring(math.floor(255*blue))
						end

						chosenColor = Color3.new(red,green,blue)

						colorScope.Position = UDim2.new(0,relativeX-9,0,relativeY-9)
						colorStrip.ImageColor3 = Color3.fromHSV(hue,sat,1)
						colorArrow.Position = UDim2.new(0,-2,0,relativeStripY-4)
						previewFrame.BackgroundColor3 = chosenColor

						newMt.Color = chosenColor
						if newMt.Changed then newMt:Changed(chosenColor) end
					end

					local function colorSpaceInput()
						local relativeX = mouse.X - colorSpace.AbsolutePosition.X
						local relativeY = mouse.Y - colorSpace.AbsolutePosition.Y

						if relativeX < 0 then relativeX = 0 elseif relativeX > 219 then relativeX = 219 end
						if relativeY < 0 then relativeY = 0 elseif relativeY > 199 then relativeY = 199 end

						hue = (219 - relativeX)/219
						sat = (199 - relativeY)/199

						local hsvColor = Color3.fromHSV(hue,sat,val)
						red,green,blue = hsvColor.r,hsvColor.g,hsvColor.b

						updateColor()
					end

					local function colorStripInput()
						local relativeY = mouse.Y - colorStrip.AbsolutePosition.Y

						if relativeY < 0 then relativeY = 0 elseif relativeY > 199 then relativeY = 199 end	

						val = (199 - relativeY)/199

						local hsvColor = Color3.fromHSV(hue,sat,val)
						red,green,blue = hsvColor.r,hsvColor.g,hsvColor.b

						updateColor()
					end

					local function hookButtons(frame,func)
						frame.ArrowFrame.Up.InputBegan:Connect(function(input)
							if input.UserInputType == Enum.UserInputType.MouseMovement then
								frame.ArrowFrame.Up.BackgroundTransparency = 0.5
							elseif input.UserInputType == Enum.UserInputType.MouseButton1 then
								local releaseEvent,runEvent

								local startTime = tick()
								local pressing = true
								local startNum = tonumber(frame.Text)

								if not startNum then return end

								releaseEvent = UserInputService.InputEnded:Connect(function(input)
									if input.UserInputType ~= Enum.UserInputType.MouseButton1 then return end
									releaseEvent:Disconnect()
									pressing = false
								end)

								startNum = startNum + 1
								func(startNum)
								while pressing do
									if tick()-startTime > 0.3 then
										startNum = startNum + 1
										func(startNum)
									end
									wait(0.1)
								end
							end
						end)

						frame.ArrowFrame.Up.InputEnded:Connect(function(input)
							if input.UserInputType == Enum.UserInputType.MouseMovement then
								frame.ArrowFrame.Up.BackgroundTransparency = 1
							end
						end)

						frame.ArrowFrame.Down.InputBegan:Connect(function(input)
							if input.UserInputType == Enum.UserInputType.MouseMovement then
								frame.ArrowFrame.Down.BackgroundTransparency = 0.5
							elseif input.UserInputType == Enum.UserInputType.MouseButton1 then
								local releaseEvent,runEvent

								local startTime = tick()
								local pressing = true
								local startNum = tonumber(frame.Text)

								if not startNum then return end

								releaseEvent = UserInputService.InputEnded:Connect(function(input)
									if input.UserInputType ~= Enum.UserInputType.MouseButton1 then return end
									releaseEvent:Disconnect()
									pressing = false
								end)

								startNum = startNum - 1
								func(startNum)
								while pressing do
									if tick()-startTime > 0.3 then
										startNum = startNum - 1
										func(startNum)
									end
									wait(0.1)
								end
							end
						end)

						frame.ArrowFrame.Down.InputEnded:Connect(function(input)
							if input.UserInputType == Enum.UserInputType.MouseMovement then
								frame.ArrowFrame.Down.BackgroundTransparency = 1
							end
						end)
					end

					colorSpace.InputBegan:Connect(function(input)
						if input.UserInputType == Enum.UserInputType.MouseButton1 then
							local releaseEvent,mouseEvent

							releaseEvent = UserInputService.InputEnded:Connect(function(input)
								if input.UserInputType ~= Enum.UserInputType.MouseButton1 then return end
								releaseEvent:Disconnect()
								mouseEvent:Disconnect()
							end)

							mouseEvent = UserInputService.InputChanged:Connect(function(input)
								if input.UserInputType == Enum.UserInputType.MouseMovement then
									colorSpaceInput()
								end
							end)

							colorSpaceInput()
						end
					end)

					colorStrip.InputBegan:Connect(function(input)
						if input.UserInputType == Enum.UserInputType.MouseButton1 then
							local releaseEvent,mouseEvent

							releaseEvent = UserInputService.InputEnded:Connect(function(input)
								if input.UserInputType ~= Enum.UserInputType.MouseButton1 then return end
								releaseEvent:Disconnect()
								mouseEvent:Disconnect()
							end)

							mouseEvent = UserInputService.InputChanged:Connect(function(input)
								if input.UserInputType == Enum.UserInputType.MouseMovement then
									colorStripInput()
								end
							end)

							colorStripInput()
						end
					end)

					local function updateHue(str)
						local num = tonumber(str)
						if num then
							hue = math.clamp(math.floor(num),0,359)/359
							local hsvColor = Color3.fromHSV(hue,sat,val)
							red,green,blue = hsvColor.r,hsvColor.g,hsvColor.b
							hueInput.Text = tostring(hue*359)
							updateColor(1)
						end
					end
					hueInput.FocusLost:Connect(function() updateHue(hueInput.Text) end) hookButtons(hueInput,updateHue)

					local function updateSat(str)
						local num = tonumber(str)
						if num then
							sat = math.clamp(math.floor(num),0,255)/255
							local hsvColor = Color3.fromHSV(hue,sat,val)
							red,green,blue = hsvColor.r,hsvColor.g,hsvColor.b
							satInput.Text = tostring(sat*255)
							updateColor(1)
						end
					end
					satInput.FocusLost:Connect(function() updateSat(satInput.Text) end) hookButtons(satInput,updateSat)

					local function updateVal(str)
						local num = tonumber(str)
						if num then
							val = math.clamp(math.floor(num),0,255)/255
							local hsvColor = Color3.fromHSV(hue,sat,val)
							red,green,blue = hsvColor.r,hsvColor.g,hsvColor.b
							valInput.Text = tostring(val*255)
							updateColor(1)
						end
					end
					valInput.FocusLost:Connect(function() updateVal(valInput.Text) end) hookButtons(valInput,updateVal)

					local function updateRed(str)
						local num = tonumber(str)
						if num then
							red = math.clamp(math.floor(num),0,255)/255
							local newColor = Color3.new(red,green,blue)
							hue,sat,val = Color3.toHSV(newColor)
							redInput.Text = tostring(red*255)
							updateColor(2)
						end
					end
					redInput.FocusLost:Connect(function() updateRed(redInput.Text) end) hookButtons(redInput,updateRed)

					local function updateGreen(str)
						local num = tonumber(str)
						if num then
							green = math.clamp(math.floor(num),0,255)/255
							local newColor = Color3.new(red,green,blue)
							hue,sat,val = Color3.toHSV(newColor)
							greenInput.Text = tostring(green*255)
							updateColor(2)
						end
					end
					greenInput.FocusLost:Connect(function() updateGreen(greenInput.Text) end) hookButtons(greenInput,updateGreen)

					local function updateBlue(str)
						local num = tonumber(str)
						if num then
							blue = math.clamp(math.floor(num),0,255)/255
							local newColor = Color3.new(red,green,blue)
							hue,sat,val = Color3.toHSV(newColor)
							blueInput.Text = tostring(blue*255)
							updateColor(2)
						end
					end
					blueInput.FocusLost:Connect(function() updateBlue(blueInput.Text) end) hookButtons(blueInput,updateBlue)

					local colorChoice = Instance.new("TextButton")
					colorChoice.Name = "Choice"
					colorChoice.Size = UDim2.new(0,25,0,18)
					colorChoice.BorderColor3 = Color3.new(96/255,96/255,96/255)
					colorChoice.Text = ""
					colorChoice.AutoButtonColor = false
					colorChoice.ZIndex = 10

					local row = 0
					local column = 0
					for i,v in pairs(basicColors) do
						local newColor = colorChoice:Clone()
						newColor.BackgroundColor3 = v
						newColor.Position = UDim2.new(0,1 + 30*column,0,21 + 23*row)

						newColor.MouseButton1Click:Connect(function()
							red,green,blue = v.r,v.g,v.b
							local newColor = Color3.new(red,green,blue)
							hue,sat,val = Color3.toHSV(newColor)
							updateColor()
						end)	

						newColor.Parent = basicColorsFrame
						column = column + 1
						if column == 6 then row = row + 1 column = 0 end
					end

					row = 0
					column = 0
					for i = 1,12 do
						local color = customColors[i] or Color3.new(0,0,0)
						local newColor = colorChoice:Clone()
						newColor.BackgroundColor3 = color
						newColor.Position = UDim2.new(0,1 + 30*column,0,20 + 23*row)

						newColor.MouseButton1Click:Connect(function()
							local curColor = customColors[i] or Color3.new(0,0,0)
							red,green,blue = curColor.r,curColor.g,curColor.b
							hue,sat,val = Color3.toHSV(curColor)
							updateColor()
						end)

						newColor.MouseButton2Click:Connect(function()
							customColors[i] = chosenColor
							newColor.BackgroundColor3 = chosenColor
						end)

						newColor.Parent = customColorsFrame
						column = column + 1
						if column == 6 then row = row + 1 column = 0 end
					end

					shade1Button.MouseButton1Click:Connect(function() if newMt.Confirm then newMt:Confirm(chosenColor,shade1) end end)
					shade1Button.InputBegan:Connect(function(input) if input.UserInputType == Enum.UserInputType.MouseMovement then shade1Button.BackgroundTransparency = 0.4 end end)
					shade1Button.InputEnded:Connect(function(input) if input.UserInputType == Enum.UserInputType.MouseMovement then shade1Button.BackgroundTransparency = 0 end end)

					shade2Button.MouseButton1Click:Connect(function() if newMt.Confirm then newMt:Confirm(chosenColor,shade2) end end)
					shade2Button.InputBegan:Connect(function(input) if input.UserInputType == Enum.UserInputType.MouseMovement then shade2Button.BackgroundTransparency = 0.4 end end)
					shade2Button.InputEnded:Connect(function(input) if input.UserInputType == Enum.UserInputType.MouseMovement then shade2Button.BackgroundTransparency = 0 end end)

					shade3Button.MouseButton1Click:Connect(function() if newMt.Confirm then newMt:Confirm(chosenColor,shade3) end end)
					shade3Button.InputBegan:Connect(function(input) if input.UserInputType == Enum.UserInputType.MouseMovement then shade3Button.BackgroundTransparency = 0.4 end end)
					shade3Button.InputEnded:Connect(function(input) if input.UserInputType == Enum.UserInputType.MouseMovement then shade3Button.BackgroundTransparency = 0 end end)

					text1Button.MouseButton1Click:Connect(function() if newMt.Confirm then newMt:Confirm(chosenColor,text1) end end)
					text1Button.InputBegan:Connect(function(input) if input.UserInputType == Enum.UserInputType.MouseMovement then text1Button.BackgroundTransparency = 0.4 end end)
					text1Button.InputEnded:Connect(function(input) if input.UserInputType == Enum.UserInputType.MouseMovement then text1Button.BackgroundTransparency = 0 end end)

					text2Button.MouseButton1Click:Connect(function() if newMt.Confirm then newMt:Confirm(chosenColor,text2) end end)
					text2Button.InputBegan:Connect(function(input) if input.UserInputType == Enum.UserInputType.MouseMovement then text2Button.BackgroundTransparency = 0.4 end end)
					text2Button.InputEnded:Connect(function(input) if input.UserInputType == Enum.UserInputType.MouseMovement then text2Button.BackgroundTransparency = 0 end end)

					scrollButton.MouseButton1Click:Connect(function() if newMt.Confirm then newMt:Confirm(chosenColor,scroll) end end)
					scrollButton.InputBegan:Connect(function(input) if input.UserInputType == Enum.UserInputType.MouseMovement then scrollButton.BackgroundTransparency = 0.4 end end)
					scrollButton.InputEnded:Connect(function(input) if input.UserInputType == Enum.UserInputType.MouseMovement then scrollButton.BackgroundTransparency = 0 end end)

					cancelButton.MouseButton1Click:Connect(function() if newMt.Cancel then newMt:Cancel() end end)
					cancelButton.InputBegan:Connect(function(input) if input.UserInputType == Enum.UserInputType.MouseMovement then cancelButton.BackgroundTransparency = 0.4 end end)
					cancelButton.InputEnded:Connect(function(input) if input.UserInputType == Enum.UserInputType.MouseMovement then cancelButton.BackgroundTransparency = 0 end end)

					defaultButton.MouseButton1Click:Connect(function() if newMt.Default then newMt:Default() end end)
					defaultButton.InputBegan:Connect(function(input) if input.UserInputType == Enum.UserInputType.MouseMovement then defaultButton.BackgroundTransparency = 0.4 end end)
					defaultButton.InputEnded:Connect(function(input) if input.UserInputType == Enum.UserInputType.MouseMovement then defaultButton.BackgroundTransparency = 0 end end)

					pickerExit.MouseButton1Click:Connect(function()
						picker:TweenPosition(UDim2.new(0.5, -219, 0, -500), "InOut", "Quart", 0.5, true, nil)
					end)

					updateColor()

					newMt.SetColor = function(self,color)
						red,green,blue = color.r,color.g,color.b
						hue,sat,val = Color3.toHSV(color)
						updateColor()
					end

					return newMt
				end
			end

			picker:TweenPosition(UDim2.new(0.5, -219, 0, 100), "InOut", "Quart", 0.5, true, nil)

			local Npicker = ColorPicker.new()
			Npicker.Confirm = function(self,color,ctype) updateColors(color,ctype) wait() updatesaves() end
			Npicker.Cancel = function(self)
				updateColors(cache_currentShade1,shade1)
				updateColors(cache_currentShade2,shade2)
				updateColors(cache_currentShade3,shade3)
				updateColors(cache_currentText1,text1)
				updateColors(cache_currentText2,text2)
				updateColors(cache_currentScroll,scroll)
				wait()
				updatesaves()
			end
			Npicker.Default = function(self)
				updateColors(Color3.fromRGB(36, 36, 37),shade1)
				updateColors(Color3.fromRGB(46, 46, 47),shade2)
				updateColors(Color3.fromRGB(78, 78, 79),shade3)
				updateColors(Color3.new(1, 1, 1),text1)
				updateColors(Color3.new(0, 0, 0),text2)
				updateColors(Color3.fromRGB(78,78,79),scroll)
				wait()
				updatesaves()
			end
		else
			picker:TweenPosition(UDim2.new(0.5, -219, 0, 100), "InOut", "Quart", 0.5, true, nil)
		end
	end)

	-- el menu de la tuerca (si lo quitas rompes todo)
	SettingsButton.MouseButton1Click:Connect(function()
		if SettingsOpen == false then SettingsOpen = true
			Settings:TweenPosition(UDim2.new(0, 0, 0, 45), "InOut", "Quart", 0.5, true, nil)
			CMDsF.Visible = false
		else SettingsOpen = false
			CMDsF.Visible = true
			Settings:TweenPosition(UDim2.new(0, 0, 0, 220), "InOut", "Quart", 0.5, true, nil)
		end
	end)

	-- el coso de keep menu open (es importante)
	On.MouseButton1Click:Connect(function()
		if isHidden == false then
			if StayOpen == false then
				StayOpen = true
				On.BackgroundTransparency = 0
			else
				StayOpen = false
				On.BackgroundTransparency = 1
			end
			updatesaves()
		end
	end)









	Keybinds.MouseButton1Click:Connect(function()
		KeybindsFrame:TweenPosition(UDim2.new(0, 0, 0, 0), "InOut", "Quart", 0.5, true, nil)
		wait(0.5)
		SettingsHolder.Visible = false
	end)

	Close.MouseButton1Click:Connect(function()
		SettingsHolder.Visible = true
		KeybindsFrame:TweenPosition(UDim2.new(0, 0, 0, 175), "InOut", "Quart", 0.5, true, nil)
	end)

	Keybinds.MouseButton1Click:Connect(function()
		KeybindsFrame:TweenPosition(UDim2.new(0, 0, 0, 0), "InOut", "Quart", 0.5, true, nil)
		wait(0.5)
		SettingsHolder.Visible = false
	end)

	-- es el add de keybinds
	Add.MouseButton1Click:Connect(function()
		KeybindEditor:TweenPosition(UDim2.new(0.5, -180, 0, 260), "InOut", "Quart", 0.5, true, nil)
	end)

	Delete.MouseButton1Click:Connect(function()
		binds = {}
		refreshbinds()
		updatesaves()
		notify('Keybinds Updated','Removed all keybinds')
	end)







	cmds={}
	customAlias = {}


	PrefixBox:GetPropertyChangedSignal("Text"):Connect(function()
		prefix = PrefixBox.Text
		Cmdbar.PlaceholderText = "Command Bar ("..prefix..")"
		updatesaves()
	end)

	function CamViewport()
		if workspace.CurrentCamera then
			return workspace.CurrentCamera.ViewportSize.X
		end
	end

	function UpdateToViewport()
		if Holder.Position.X.Offset < -CamViewport() then
			Holder:TweenPosition(UDim2.new(1, -CamViewport(), Holder.Position.Y.Scale, Holder.Position.Y.Offset), "InOut", "Quart", 0.04, true, nil)
			Notification:TweenPosition(UDim2.new(1, -CamViewport() + 250, Notification.Position.Y.Scale, Notification.Position.Y.Offset), "InOut", "Quart", 0.04, true, nil)
		end
	end
	CameraChanged = workspace.CurrentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(UpdateToViewport)

	function updateCamera(child, parent)
		if parent ~= workspace then
			CamMoved:Disconnect()
			CameraChanged:Disconnect()
			repeat wait() until workspace.CurrentCamera
			CameraChanged = workspace.CurrentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(UpdateToViewport)
			CamMoved = workspace.CurrentCamera.AncestryChanged:Connect(updateCamera)
		end
	end
	CamMoved = workspace.CurrentCamera.AncestryChanged:Connect(updateCamera)

	function dragMain(dragpoint,gui)
		task.spawn(function()
			local dragging
			local dragInput
			local dragStart = Vector3.new(0,0,0)
			local startPos
			local function update(input)
				local pos = -250
				local delta = input.Position - dragStart
				if startPos.X.Offset + delta.X <= -500 then
					local Position = UDim2.new(1, -250, Notification.Position.Y.Scale, Notification.Position.Y.Offset)
					TweenService:Create(Notification, TweenInfo.new(.20), {Position = Position}):Play()
					pos = 250
				else
					local Position = UDim2.new(1, -500, Notification.Position.Y.Scale, Notification.Position.Y.Offset)
					TweenService:Create(Notification, TweenInfo.new(.20), {Position = Position}):Play()
					pos = -250
				end
				if startPos.X.Offset + delta.X <= -250 and -CamViewport() <= startPos.X.Offset + delta.X then
					local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, gui.Position.Y.Scale, gui.Position.Y.Offset)
					TweenService:Create(gui, TweenInfo.new(.20), {Position = Position}):Play()
					local Position2 = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X + pos, Notification.Position.Y.Scale, Notification.Position.Y.Offset)
					TweenService:Create(Notification, TweenInfo.new(.20), {Position = Position2}):Play()
				elseif startPos.X.Offset + delta.X > -500 then
					local Position = UDim2.new(1, -250, gui.Position.Y.Scale, gui.Position.Y.Offset)
					TweenService:Create(gui, TweenInfo.new(.20), {Position = Position}):Play()
				elseif -CamViewport() > startPos.X.Offset + delta.X then
					gui:TweenPosition(UDim2.new(1, -CamViewport(), gui.Position.Y.Scale, gui.Position.Y.Offset), "InOut", "Quart", 0.04, true, nil)
					local Position = UDim2.new(1, -CamViewport(), gui.Position.Y.Scale, gui.Position.Y.Offset)
					TweenService:Create(gui, TweenInfo.new(.20), {Position = Position}):Play()
					local Position2 = UDim2.new(1, -CamViewport() + 250, Notification.Position.Y.Scale, Notification.Position.Y.Offset)
					TweenService:Create(Notification, TweenInfo.new(.20), {Position = Position2}):Play()
				end
			end
			dragpoint.InputBegan:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
					dragging = true
					dragStart = input.Position
					startPos = gui.Position

					input.Changed:Connect(function()
						if input.UserInputState == Enum.UserInputState.End then
							dragging = false
						end
					end)
				end
			end)
			dragpoint.InputChanged:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
					dragInput = input
				end
			end)
			UserInputService.InputChanged:Connect(function(input)
				if input == dragInput and dragging then
					update(input)
				end
			end)
		end)
	end

	dragMain(Title,Holder)

	Match = function(name,str)
		str = str:gsub("%W", "%%%1")
		return name:lower():find(str:lower()) and true
	end

	local canvasPos = Vector2.new(0,0)
	local topCommand = nil
	IndexContents = function(str,bool,cmdbar,Ianim)
		CMDsF.CanvasPosition = Vector2.new(0,0)
		local SizeY = 0
		local indexnum = 0
		local frame = CMDsF
		topCommand = nil
		local chunks = {}
		if str:sub(#str,#str) == "\\" then str = "" end
		for w in string.gmatch(str,"[^\\]+") do
			table.insert(chunks,w)
		end
		if #chunks > 0 then str = chunks[#chunks] end
		if str:sub(1,1) == "!" then str = str:sub(2) end
		for i,v in next, frame:GetChildren() do
			if v:IsA("TextButton") then
				if bool then
					if Match(v.Text,str) then
						indexnum = indexnum + 1
						v.Visible = true
						if topCommand == nil then
							topCommand = v.Text
						end
					else
						v.Visible = false
					end
				else
					v.Visible = true
					if topCommand == nil then
						topCommand = v.Text
					end
				end
			end
		end
		frame.CanvasSize = UDim2.new(0,0,0,cmdListLayout.AbsoluteContentSize.Y)
		if not Ianim then
			if indexnum == 0 or string.find(str, " ") then
				if not cmdbar then
					minimizeHolder()
				elseif cmdbar then
					cmdbarHolder()
				end
			else
				maximizeHolder()
			end
		else
			minimizeHolder()
		end
	end

	task.spawn(function()
		if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then return end
		local chatbox
		local success, result = pcall(function() chatbox = game.WaitForChild(PlayerGui, "Chat").Frame.ChatBarParentFrame.Frame.BoxFrame.Frame.ChatBar end)
		if success then
			local function chatboxFocused()
				canvasPos = CMDsF.CanvasPosition
			end
			local chatboxFocusedC = chatbox.Focused:Connect(chatboxFocused)

			local function Index()
				if chatbox.Text:lower():sub(1,1) == prefix then
					if SettingsOpen == true then
						wait(0.2)
						CMDsF.Visible = true
						Settings:TweenPosition(UDim2.new(0, 0, 0, 220), "InOut", "Quart", 0.2, true, nil)
					end
					IndexContents(PlayerGui.Chat.Frame.ChatBarParentFrame.Frame.BoxFrame.Frame.ChatBar.Text:lower():sub(2),true)
				else
					minimizeHolder()
					if SettingsOpen == true then
						wait(0.2)
						Settings:TweenPosition(UDim2.new(0, 0, 0, 45), "InOut", "Quart", 0.2, true, nil)
						CMDsF.Visible = false
					end
				end
			end
			local chatboxFunc = chatbox:GetPropertyChangedSignal("Text"):Connect(Index)

			local function chatboxFocusLost(enterpressed)
				if not enterpressed or chatbox.Text:lower():sub(1,1) ~= prefix then
					IndexContents('',true)
				end
				CMDsF.CanvasPosition = canvasPos
				minimizeHolder()
			end
			local chatboxFocusLostC = chatbox.FocusLost:Connect(chatboxFocusLost)

			PlayerGui:WaitForChild("Chat").Frame.ChatBarParentFrame.ChildAdded:Connect(function(newbar)
				wait()
				if newbar:FindFirstChild('BoxFrame') then
					chatbox = PlayerGui:WaitForChild("Chat").Frame.ChatBarParentFrame.Frame.BoxFrame.Frame.ChatBar
					if chatboxFocusedC then chatboxFocusedC:Disconnect() end
					chatboxFocusedC = chatbox.Focused:Connect(chatboxFocused)
					if chatboxFunc then chatboxFunc:Disconnect() end
					chatboxFunc = chatbox:GetPropertyChangedSignal("Text"):Connect(Index)
					if chatboxFocusLostC then chatboxFocusLostC:Disconnect() end
					chatboxFocusLostC = chatbox.FocusLost:Connect(chatboxFocusLost)
				end
			end)
			--else
			--print('Custom chat detected. Will not provide suggestions for commands typed in the chat.')
		end
	end)

	function autoComplete(str,curText)
		local endingChar = {"[", "/", "(", " "}
		local stop = 0
		for i=1,#str do
			local c = str:sub(i,i)
			if table.find(endingChar, c) then
				stop = i
				break
			end
		end
		curText = curText or Cmdbar.Text
		local subPos = 0
		local pos = 1
		local findRes = string.find(curText,"\\",pos)
		while findRes do
			subPos = findRes
			pos = findRes+1
			findRes = string.find(curText,"\\",pos)
		end
		if curText:sub(subPos+1,subPos+1) == "!" then subPos = subPos + 1 end
		Cmdbar.Text = curText:sub(1,subPos) .. str:sub(1, stop - 1)..' '
		wait()
		Cmdbar.Text = Cmdbar.Text:gsub( '\t', '' )
		Cmdbar.CursorPosition = #Cmdbar.Text+1 --1020
	end

	CMDs = {}

	CMDs[#CMDs + 1] = {NAME = 'rejoin / rj', DESC = 'Makes you rejoin the game'}

	CMDs[#CMDs + 1] = {NAME = '', DESC = ''}

	wait()

	for i = 1, #CMDs do
		local newcmd = Example:Clone()
		newcmd.Parent = CMDsF
		newcmd.Visible = false
		newcmd.Text = CMDs[i].NAME
		newcmd.Name = "CMD"
		table.insert(text1, newcmd)
		if CMDs[i].DESC ~= "" then
			newcmd:SetAttribute("Title", CMDs[i].NAME)
			newcmd:SetAttribute("Desc", CMDs[i].DESC)
			newcmd.MouseButton1Down:Connect(function()
				if not IsOnMobile and newcmd.Visible and newcmd.TextTransparency == 0 then
					local currentText = Cmdbar.Text
					Cmdbar:CaptureFocus()
					autoComplete(newcmd.Text, currentText)
					maximizeHolder()
				end
			end)
		end
	end

	IndexContents("", true)

	function checkTT()
		local t
		local guisAtPosition = COREGUI:GetGuiObjectsAtPosition(IYMouse.X, IYMouse.Y)

		for _, gui in pairs(guisAtPosition) do
			if gui.Parent == CMDsF then
				t = gui
			end
		end

		if t ~= nil and t:GetAttribute("Title") ~= nil then
			local x = IYMouse.X
			local y = IYMouse.Y
			local xP
			local yP
			if IYMouse.X > 200 then
				xP = x - 201
			else
				xP = x + 21
			end
			if IYMouse.Y > (IYMouse.ViewSizeY-96) then
				yP = y - 97
			else
				yP = y
			end
			Tooltip.Position = UDim2.new(0, xP, 0, yP)
			Description.Text = t:GetAttribute("Desc")
			if t:GetAttribute("Title") ~= nil then
				Title_3.Text = t:GetAttribute("Title")
			else
				Title_3.Text = ''
			end
			Tooltip.Visible = true
		else
			Tooltip.Visible = false
		end
	end

	function FindInTable(tbl,val)
		if tbl == nil then return false end
		for _,v in pairs(tbl) do
			if v == val then return true end
		end 
		return false
	end



	findCmd=function(cmd_name)
		for i,v in pairs(cmds)do
			if v.NAME:lower()==cmd_name:lower() or FindInTable(v.ALIAS,cmd_name:lower()) then
				return v
			end
		end
		return customAlias[cmd_name:lower()]
	end

	function splitString(str,delim)
		local broken = {}
		if delim == nil then delim = "," end
		for w in string.gmatch(str,"[^"..delim.."]+") do
			table.insert(broken,w)
		end
		return broken
	end

	local split=" "
	local lastBreakTime = 0

	function execCmd(cmdStr, speaker, store)
		cmdStr = cmdStr:gsub("%s+$","")
		task.spawn(function()
			local rawCmdStr = cmdStr
			cmdStr = string.gsub(cmdStr,"\\\\","%%BackSlash%%")
			local commandsToRun = splitString(cmdStr,"\\")
			for i,v in pairs(commandsToRun) do
				v = string.gsub(v,"%%BackSlash%%","\\")
				local x,y,num = v:find("^(%d+)%^")
				local cmdDelay = 0
				local infTimes = false
				if num then
					v = v:sub(y+1)
					local x,y,del = v:find("^([%d%.]+)%^")
					if del then
						v = v:sub(y+1)
						cmdDelay = tonumber(del) or 0
					end
				else
					local x,y = v:find("^inf%^")
					if x then
						infTimes = true
						v = v:sub(y+1)
						local x,y,del = v:find("^([%d%.]+)%^")
						if del then
							v = v:sub(y+1)
							del = tonumber(del) or 1
							cmdDelay = (del > 0 and del or 1)
						else
							cmdDelay = 1
						end
					end
				end
				num = tonumber(num or 1)

				if v:sub(1,1) == "!" then
					local chunks = splitString(v:sub(2),split)
					if chunks[1] and lastCmds[chunks[1]] then v = lastCmds[chunks[1]] end
				end

				local args = splitString(v,split)
				local cmdName = args[1]
				local cmd = findCmd(cmdName)
				if cmd then
					table.remove(args,1)
					cargs = args
					if not speaker then speaker = Players.LocalPlayer end
					if store then
						-- nil
					end
					local cmdStartTime = tick()
					if infTimes then
						while lastBreakTime < cmdStartTime do
							local success,err = pcall(cmd.FUNC,args, speaker)
							if not success and _G.IY_DEBUG then
								warn("Command Error:", cmdName, err)
							end
							wait(cmdDelay)
						end
					else
						for rep = 1,num do
							if lastBreakTime > cmdStartTime then break end
							local success,err = pcall(function()
								cmd.FUNC(args, speaker)
							end)
							if not success and _G.IY_DEBUG then
								warn("Command Error:", cmdName, err)
							end
							if cmdDelay ~= 0 then wait(cmdDelay) end
						end
					end
				end
			end
		end)
	end






	function addbind(cmd,key,iskeyup,toggle)
		if toggle then
			binds[#binds+1]=
				{
					COMMAND=cmd;
					KEY=key;
					ISKEYUP=iskeyup;
					TOGGLE = toggle;
				}
		else
			binds[#binds+1]=
				{
					COMMAND=cmd;
					KEY=key;
					ISKEYUP=iskeyup;
				}
		end
	end

	local WorldToScreen = function(Object)
		local ObjectVector = workspace.CurrentCamera:WorldToScreenPoint(Object.Position)
		return Vector2.new(ObjectVector.X, ObjectVector.Y)
	end

	local MousePositionToVector2 = function()
		return Vector2.new(IYMouse.X, IYMouse.Y)
	end

	local GetClosestPlayerFromCursor = function()
		local found = nil
		local ClosestDistance = math.huge
		for i, v in pairs(Players:GetPlayers()) do
			if v ~= Players.LocalPlayer and v.Character and v.Character:FindFirstChildOfClass("Humanoid") then
				for k, x in pairs(v.Character:GetChildren()) do
					if string.find(x.Name, "Torso") then
						local Distance = (WorldToScreen(x) - MousePositionToVector2()).Magnitude
						if Distance < ClosestDistance then
							ClosestDistance = Distance
							found = v
						end
					end
				end
			end
		end
		return found
	end

	SpecialPlayerCases = {
		["all"] = function(speaker) return Players:GetPlayers() end,
		["others"] = function(speaker)
			local plrs = {}
			for i,v in pairs(Players:GetPlayers()) do
				if v ~= speaker then
					table.insert(plrs,v)
				end
			end
			return plrs
		end,
		["me"] = function(speaker)return {speaker} end,
		["#(%d+)"] = function(speaker,args,currentList)
			local returns = {}
			local randAmount = tonumber(args[1])
			local players = {unpack(currentList)}
			for i = 1,randAmount do
				if #players == 0 then break end
				local randIndex = math.random(1,#players)
				table.insert(returns,players[randIndex])
				table.remove(players,randIndex)
			end
			return returns
		end,
		["random"] = function(speaker,args,currentList)
			local players = Players:GetPlayers()
			local localplayer = Players.LocalPlayer
			table.remove(players, table.find(players, localplayer))
			return {players[math.random(1,#players)]}
		end,
		["%%(.+)"] = function(speaker,args)
			local returns = {}
			local team = args[1]
			for _,plr in pairs(Players:GetPlayers()) do
				if plr.Team and string.sub(string.lower(plr.Team.Name),1,#team) == string.lower(team) then
					table.insert(returns,plr)
				end
			end
			return returns
		end,
		["allies"] = function(speaker)
			local returns = {}
			local team = speaker.Team
			for _,plr in pairs(Players:GetPlayers()) do
				if plr.Team == team then
					table.insert(returns,plr)
				end
			end
			return returns
		end,
		["enemies"] = function(speaker)
			local returns = {}
			local team = speaker.Team
			for _,plr in pairs(Players:GetPlayers()) do
				if plr.Team ~= team then
					table.insert(returns,plr)
				end
			end
			return returns
		end,
		["team"] = function(speaker)
			local returns = {}
			local team = speaker.Team
			for _,plr in pairs(Players:GetPlayers()) do
				if plr.Team == team then
					table.insert(returns,plr)
				end
			end
			return returns
		end,
		["nonteam"] = function(speaker)
			local returns = {}
			local team = speaker.Team
			for _,plr in pairs(Players:GetPlayers()) do
				if plr.Team ~= team then
					table.insert(returns,plr)
				end
			end
			return returns
		end,
		["friends"] = function(speaker,args)
			local returns = {}
			for _,plr in pairs(Players:GetPlayers()) do
				if plr:IsFriendsWith(speaker.UserId) and plr ~= speaker then
					table.insert(returns,plr)
				end
			end
			return returns
		end,
		["nonfriends"] = function(speaker,args)
			local returns = {}
			for _,plr in pairs(Players:GetPlayers()) do
				if not plr:IsFriendsWith(speaker.UserId) and plr ~= speaker then
					table.insert(returns,plr)
				end
			end
			return returns
		end,
		["guests"] = function(speaker,args)
			local returns = {}
			for _,plr in pairs(Players:GetPlayers()) do
				if plr.Guest then
					table.insert(returns,plr)
				end
			end
			return returns
		end,
		["bacons"] = function(speaker,args)
			local returns = {}
			for _,plr in pairs(Players:GetPlayers()) do
				if plr.Character:FindFirstChild('Pal Hair') or plr.Character:FindFirstChild('Kate Hair') then
					table.insert(returns,plr)
				end
			end
			return returns
		end,
		["age(%d+)"] = function(speaker,args)
			local returns = {}
			local age = tonumber(args[1])
			if not age == nil then return end
			for _,plr in pairs(Players:GetPlayers()) do
				if plr.AccountAge <= age then
					table.insert(returns,plr)
				end
			end
			return returns
		end,
		["nearest"] = function(speaker,args,currentList)
			local speakerChar = speaker.Character
			if not speakerChar or not getRoot(speakerChar) then return end
			local lowest = math.huge
			local NearestPlayer = nil
			for _,plr in pairs(currentList) do
				if plr ~= speaker and plr.Character then
					local distance = plr:DistanceFromCharacter(getRoot(speakerChar).Position)
					if distance < lowest then
						lowest = distance
						NearestPlayer = {plr}
					end
				end
			end
			return NearestPlayer
		end,
		["farthest"] = function(speaker,args,currentList)
			local speakerChar = speaker.Character
			if not speakerChar or not getRoot(speakerChar) then return end
			local highest = 0
			local Farthest = nil
			for _,plr in pairs(currentList) do
				if plr ~= speaker and plr.Character then
					local distance = plr:DistanceFromCharacter(getRoot(speakerChar).Position)
					if distance > highest then
						highest = distance
						Farthest = {plr}
					end
				end
			end
			return Farthest
		end,
		["group(%d+)"] = function(speaker,args)
			local returns = {}
			local groupID = tonumber(args[1])
			for _,plr in pairs(Players:GetPlayers()) do
				if plr:IsInGroup(groupID) then  
					table.insert(returns,plr)
				end
			end
			return returns
		end,
		["alive"] = function(speaker,args)
			local returns = {}
			for _,plr in pairs(Players:GetPlayers()) do
				if plr.Character and plr.Character:FindFirstChildOfClass("Humanoid") and plr.Character:FindFirstChildOfClass("Humanoid").Health > 0 then
					table.insert(returns,plr)
				end
			end
			return returns
		end,
		["dead"] = function(speaker,args)
			local returns = {}
			for _,plr in pairs(Players:GetPlayers()) do
				if (not plr.Character or not plr.Character:FindFirstChildOfClass("Humanoid")) or plr.Character:FindFirstChildOfClass("Humanoid").Health <= 0 then
					table.insert(returns,plr)
				end
			end
			return returns
		end,
		["rad(%d+)"] = function(speaker,args)
			local returns = {}
			local radius = tonumber(args[1])
			local speakerChar = speaker.Character
			if not speakerChar or not getRoot(speakerChar) then return end
			for _,plr in pairs(Players:GetPlayers()) do
				if plr.Character and getRoot(plr.Character) then
					local magnitude = (getRoot(plr.Character).Position-getRoot(speakerChar).Position).magnitude
					if magnitude <= radius then table.insert(returns,plr) end
				end
			end
			return returns
		end,
		["cursor"] = function(speaker)
			local plrs = {}
			local v = GetClosestPlayerFromCursor()
			if v ~= nil then table.insert(plrs, v) end
			return plrs
		end,
		["npcs"] = function(speaker,args)
			local returns = {}
			for _, v in pairs(workspace:GetDescendants()) do
				if v:IsA("Model") and getRoot(v) and v:FindFirstChildWhichIsA("Humanoid") and Players:GetPlayerFromCharacter(v) == nil then
					local clone = Instance.new("Player")
					clone.Name = v.Name .. " - " .. v:FindFirstChildWhichIsA("Humanoid").DisplayName
					clone.Character = v
					table.insert(returns, clone)
				end
			end
			return returns
		end,
	}

	function toTokens(str)
		local tokens = {}
		for op,name in string.gmatch(str,"([+-])([^+-]+)") do
			table.insert(tokens,{Operator = op,Name = name})
		end
		return tokens
	end

	function onlyIncludeInTable(tab,matches)
		local matchTable = {}
		local resultTable = {}
		for i,v in pairs(matches) do matchTable[v.Name] = true end
		for i,v in pairs(tab) do if matchTable[v.Name] then table.insert(resultTable,v) end end
		return resultTable
	end

	function removeTableMatches(tab,matches)
		local matchTable = {}
		local resultTable = {}
		for i,v in pairs(matches) do matchTable[v.Name] = true end
		for i,v in pairs(tab) do if not matchTable[v.Name] then table.insert(resultTable,v) end end
		return resultTable
	end

	function getPlayersByName(Name)
		local Name,Len,Found = string.lower(Name),#Name,{}
		for _,v in pairs(Players:GetPlayers()) do
			if Name:sub(0,1) == '@' then
				if string.sub(string.lower(v.Name),1,Len-1) == Name:sub(2) then
					table.insert(Found,v)
				end
			else
				if string.sub(string.lower(v.Name),1,Len) == Name or string.sub(string.lower(v.DisplayName),1,Len) == Name then
					table.insert(Found,v)
				end
			end
		end
		return Found
	end


	function getPlayer(list,speaker)
		if list == nil then return {speaker.Name} end
		local nameList = splitString(list,",")

		local foundList = {}

		for _,name in pairs(nameList) do
			if string.sub(name,1,1) ~= "+" and string.sub(name,1,1) ~= "-" then name = "+"..name end
			local tokens = toTokens(name)
			local initialPlayers = Players:GetPlayers()

			for i,v in pairs(tokens) do
				if v.Operator == "+" then
					local tokenContent = v.Name
					local foundCase = false
					for regex,case in pairs(SpecialPlayerCases) do
						local matches = {string.match(tokenContent,"^"..regex.."$")}
						if #matches > 0 then
							foundCase = true
							initialPlayers = onlyIncludeInTable(initialPlayers,case(speaker,matches,initialPlayers))
						end
					end
					if not foundCase then
						initialPlayers = onlyIncludeInTable(initialPlayers,getPlayersByName(tokenContent))
					end
				else
					local tokenContent = v.Name
					local foundCase = false
					for regex,case in pairs(SpecialPlayerCases) do
						local matches = {string.match(tokenContent,"^"..regex.."$")}
						if #matches > 0 then
							foundCase = true
							initialPlayers = removeTableMatches(initialPlayers,case(speaker,matches,initialPlayers))
						end
					end
					if not foundCase then
						initialPlayers = removeTableMatches(initialPlayers,getPlayersByName(tokenContent))
					end
				end
			end

			for i,v in pairs(initialPlayers) do table.insert(foundList,v) end
		end

		local foundNames = {}
		for i,v in pairs(foundList) do table.insert(foundNames,v.Name) end

		return foundNames
	end


	getprfx=function(strn)
		if strn:sub(1,string.len(prefix))==prefix then return{'cmd',string.len(prefix)+1}
		end return
	end

	function do_exec(str, plr)
		str = str:gsub('/e ', '')
		local t = getprfx(str)
		if not t then return end
		str = str:sub(t[2])
		if t[1]=='cmd' then
			execCmd(str, plr, true)
			IndexContents('',true,false,true)
			CMDsF.CanvasPosition = canvasPos
		end
	end

	lastTextBoxString,lastTextBoxCon,lastEnteredString = nil,nil,nil

	UserInputService.TextBoxFocused:Connect(function(obj)
		if lastTextBoxCon then lastTextBoxCon:Disconnect() end
		if obj == Cmdbar then lastTextBoxString = nil return end
		lastTextBoxString = obj.Text
		lastTextBoxCon = obj:GetPropertyChangedSignal("Text"):Connect(function()
			if not (UserInputService:IsKeyDown(Enum.KeyCode.Return) or UserInputService:IsKeyDown(Enum.KeyCode.KeypadEnter)) then
				lastTextBoxString = obj.Text
			end
		end)
	end)

	UserInputService.InputBegan:Connect(function(input, gameProcessed)
		if gameProcessed then
			if Cmdbar and Cmdbar:IsFocused() then
				-- nil
			elseif input.KeyCode == Enum.KeyCode.Return or input.KeyCode == Enum.KeyCode.KeypadEnter then
				lastEnteredString = lastTextBoxString
			end
		end
	end)


	Players.LocalPlayer.Chatted:Connect(function()
		wait()
		if lastEnteredString then
			local message = lastEnteredString
			lastEnteredString = nil
			do_exec(message, Players.LocalPlayer)
		end
	end)



	Cmdbar.PlaceholderText = "Command Bar ("..prefix..")"
	Cmdbar:GetPropertyChangedSignal("Text"):Connect(function()
		if Cmdbar:IsFocused() then
			IndexContents(Cmdbar.Text,true,true)
		end
	end)

	local tabComplete = nil
	tabAllowed = true
	Cmdbar.FocusLost:Connect(function(enterpressed)
		if enterpressed then
			local cmdbarText = Cmdbar.Text:gsub("^"..prefix,"")
			execCmd(cmdbarText,Players.LocalPlayer,true)
		end
		if tabComplete then tabComplete:Disconnect() end
		wait()
		if not Cmdbar:IsFocused() then
			Cmdbar.Text = ""
			IndexContents('',true,false,true)
			if SettingsOpen == true then
				wait(0.2)
				Settings:TweenPosition(UDim2.new(0, 0, 0, 45), "InOut", "Quart", 0.2, true, nil)
				CMDsF.Visible = false
			end
		end
		CMDsF.CanvasPosition = canvasPos
	end)

	Cmdbar.Focused:Connect(function()
		historyCount = 0
		canvasPos = CMDsF.CanvasPosition
		if SettingsOpen == true then
			wait(0.2)
			CMDsF.Visible = true
			Settings:TweenPosition(UDim2.new(0, 0, 0, 220), "InOut", "Quart", 0.2, true, nil)
		end
		tabComplete = UserInputService.InputBegan:Connect(function(input,gameProcessed)
			if Cmdbar:IsFocused() then
				if tabAllowed == true and input.KeyCode == Enum.KeyCode.Tab and topCommand ~= nil then
					autoComplete(topCommand)
				end
			else
				tabComplete:Disconnect()
			end
		end)
	end)





	local bindsGUI = KeybindEditor
	local awaitingInput = false
	local keySelected = false

	function refreshbinds()
		if Holder_2 then
			Holder_2:ClearAllChildren()
			Holder_2.CanvasSize = UDim2.new(0, 0, 0, 10)
			for i = 1, #binds do
				local YSize = 25
				local Position = ((i * YSize) - YSize)
				local newbind = Example_2:Clone()
				newbind.Parent = Holder_2
				newbind.Visible = true
				newbind.Position = UDim2.new(0,0,0, Position + 5)
				table.insert(shade2,newbind)
				table.insert(shade2,newbind.Text)
				table.insert(text1,newbind.Text)
				table.insert(shade3,newbind.Text.Delete)
				table.insert(text2,newbind.Text.Delete)
				local input = tostring(binds[i].KEY)
				local key
				if input == 'RightClick' or input == 'LeftClick' then
					key = input
				else
					key = input:sub(14)
				end
				if binds[i].TOGGLE then
					newbind.Text.Text = key.." > "..binds[i].COMMAND.." / "..binds[i].TOGGLE
				else
					newbind.Text.Text = key.." > "..binds[i].COMMAND.."  "..(binds[i].ISKEYUP and "(keyup)" or "(keydown)")
				end
				Holder_2.CanvasSize = UDim2.new(0,0,0, Position + 30)
				newbind.Text.Delete.MouseButton1Click:Connect(function()
					unkeybind(binds[i].COMMAND,binds[i].KEY)
				end)
			end
		end
	end

	refreshbinds()

	toggleOn = {}

	function unkeybind(cmd,key)
		for i = #binds,1,-1 do
			if binds[i].COMMAND == cmd and binds[i].KEY == key then
				toggleOn[binds[i]] = nil
				table.remove(binds, i)
			end
		end
		refreshbinds()
		updatesaves()
		if key == 'RightClick' or key == 'LeftClick' then
			notify('Keybinds Updated','Unbinded '..key..' from '..cmd)
		else
			notify('Keybinds Updated','Unbinded '..key:sub(14)..' from '..cmd)
		end
	end




	local bindChosenKeyUp = false

	BindTo.MouseButton1Click:Connect(function()
		awaitingInput = true
		BindTo.Text = 'Press something'
	end)

	BindTriggerSelect.MouseButton1Click:Connect(function()
		bindChosenKeyUp = not bindChosenKeyUp
		BindTriggerSelect.Text = bindChosenKeyUp and "KeyUp" or "KeyDown"
	end)

	newToggle = false
	Cmdbar_3.Parent.Visible = false
	On_2.MouseButton1Click:Connect(function() -- parte de keybind
		if newToggle == false then newToggle = true
			On_2.BackgroundTransparency = 0
			Cmdbar_3.Parent.Visible = true
			BindTriggerSelect.Visible = false
		else newToggle = false
			On_2.BackgroundTransparency = 1
			Cmdbar_3.Parent.Visible = false
			BindTriggerSelect.Visible = true
		end
	end)

	Add_2.MouseButton1Click:Connect(function()
		if keySelected then
			if string.find(Cmdbar_2.Text, "\\\\") or string.find(Cmdbar_3.Text, "\\\\") then
				notify('Keybind Error','Only use one backslash to keybind multiple commands into one keybind or command')
			else
				if newToggle and Cmdbar_3.Text ~= '' and Cmdbar_2.text ~= '' then
					addbind(Cmdbar_2.Text,keyPressed,false,Cmdbar_3.Text)
				elseif not newToggle and Cmdbar_2.text ~= '' then
					addbind(Cmdbar_2.Text,keyPressed,bindChosenKeyUp)
				else
					return
				end
				refreshbinds()
				updatesaves()
				if keyPressed == 'RightClick' or keyPressed == 'LeftClick' then
					notify('Keybinds Updated','Binded '..keyPressed..' to '..Cmdbar_2.Text..(newToggle and " / "..Cmdbar_3.Text or ""))
				else
					notify('Keybinds Updated','Binded '..keyPressed:sub(14)..' to '..Cmdbar_2.Text..(newToggle and " / "..Cmdbar_3.Text or ""))
				end
			end
		end
	end)

	Exit_2.MouseButton1Click:Connect(function()
		Cmdbar_2.Text = 'Command'
		Cmdbar_3.Text = 'Command 2'
		BindTo.Text = 'Click to bind'
		bindChosenKeyUp = false
		BindTriggerSelect.Text = "KeyDown"
		keySelected = false
		KeybindEditor:TweenPosition(UDim2.new(0.5, -180, 0, -500), "InOut", "Quart", 0.5, true, nil)
	end)


	-- e
	function onInputBegan(input,gameProcessed)
		if awaitingInput then
			if input.UserInputType == Enum.UserInputType.Keyboard then
				keyPressed = tostring(input.KeyCode)
				BindTo.Text = keyPressed:sub(14)
			elseif input.UserInputType == Enum.UserInputType.MouseButton1 then
				keyPressed = 'LeftClick'
				BindTo.Text = 'LeftClick'
			elseif input.UserInputType == Enum.UserInputType.MouseButton2 then
				keyPressed = 'RightClick'
				BindTo.Text = 'RightClick'
			end
			awaitingInput = false
			keySelected = true
		end
		if not gameProcessed and #binds > 0 then
			for i,v in pairs(binds) do
				if not v.ISKEYUP then
					if (input.UserInputType == Enum.UserInputType.Keyboard and v.KEY:lower()==tostring(input.KeyCode):lower()) or (input.UserInputType == Enum.UserInputType.MouseButton1 and v.KEY:lower()=='leftclick') or (input.UserInputType == Enum.UserInputType.MouseButton2 and v.KEY:lower()=='rightclick') then
						if v.TOGGLE then
							local isOn = toggleOn[v] == true
							toggleOn[v] = not isOn
							if isOn then
								execCmd(v.TOGGLE,Players.LocalPlayer)
							else
								execCmd(v.COMMAND,Players.LocalPlayer)
							end
						else
							execCmd(v.COMMAND,Players.LocalPlayer)
						end
					end
				end
			end
		end
	end

	function onInputEnded(input,gameProcessed)
		if not gameProcessed and #binds > 0 then
			for i,v in pairs(binds) do
				if v.ISKEYUP then
					if (input.UserInputType == Enum.UserInputType.Keyboard and v.KEY:lower()==tostring(input.KeyCode):lower()) or (input.UserInputType == Enum.UserInputType.MouseButton1 and v.KEY:lower()=='leftclick') or (input.UserInputType == Enum.UserInputType.MouseButton2 and v.KEY:lower()=='rightclick') then
						execCmd(v.COMMAND,Players.LocalPlayer)
					end
				end
			end
		end
	end

	UserInputService.InputBegan:Connect(onInputBegan)
	UserInputService.InputEnded:Connect(onInputEnded)









	if IsOnMobile then
		local QuickCapture = Instance.new("TextButton")
		local UICorner = Instance.new("UICorner")
		QuickCapture.Name = randomString()
		QuickCapture.Parent = PARENT
		QuickCapture.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
		QuickCapture.BackgroundTransparency = 0.14
		QuickCapture.Position = UDim2.new(0.489, 0, 0, 0)
		QuickCapture.Size = UDim2.new(0, 32, 0, 33)
		QuickCapture.Font = Enum.Font.SourceSansBold
		QuickCapture.Text = "IY"
		QuickCapture.TextColor3 = Color3.fromRGB(255, 255, 255)
		QuickCapture.TextSize = 20.000
		QuickCapture.TextWrapped = true
		QuickCapture.Draggable = true
		UICorner.Name = randomString()
		UICorner.CornerRadius = UDim.new(0.5, 0)
		UICorner.Parent = QuickCapture
		QuickCapture.MouseButton1Click:Connect(function()
			Cmdbar:CaptureFocus()
			maximizeHolder()
		end)
		table.insert(shade1, QuickCapture)
		table.insert(text1, QuickCapture)
	end

	updateColors(currentShade1,shade1)
	updateColors(currentShade2,shade2)
	updateColors(currentShade3,shade3)
	updateColors(currentText1,text1)
	updateColors(currentText2,text2)
	updateColors(currentScroll,scroll)



	IYMouse.Move:Connect(checkTT)



	task.spawn(function()
		wait()
		Logo:TweenSizeAndPosition(UDim2.new(0, 175, 0, 175), UDim2.new(0, 37, 0, 45), "Out", "Quart", 0.3)
		wait(1)
		local OutInfo = TweenInfo.new(1.6809, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0)
		TweenService:Create(Logo, OutInfo, {ImageTransparency = 1}):Play()
		TweenService:Create(IntroBackground, OutInfo, {BackgroundTransparency = 1}):Play()
		wait(0.2)
		Logo:Destroy()
		IntroBackground:Destroy()
		minimizeHolder()
	end)
end

