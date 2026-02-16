local ui = Instance.new("ScreenGui")
ui.Parent = game.Players.LocalPlayer.PlayerGui
ui.ResetOnSpawn = false
ui.DisplayOrder = 999999
ui.ZIndexBehavior = Enum.ZIndexBehavior.Global
ui.IgnoreGuiInset = true

local background = Instance.new("Frame")
background.Parent = ui
background.ZIndex = 1
background.BackgroundColor3 = Color3.new(0.0705882, 0.0705882, 0.0705882)
background.BackgroundTransparency = 0
background.Size = UDim2.new(0.5, 0, 0.5, 0)
background.Position = UDim2.new(0.3, 0, 0.15, 0)

local backgroundStroke = Instance.new("UIStroke")
backgroundStroke.Parent = background
backgroundStroke.Thickness = 10
backgroundStroke.Color = Color3.new(0.317647, 0.227451, 0.423529)
backgroundStroke.Transparency = 0.3

local drag = Instance.new("UIDragDetector")
drag.Parent = background

local minimizeButton = Instance.new("TextButton")
minimizeButton.Parent = background
minimizeButton.Size = UDim2.new(0.1, 0, 0.08, 0)
minimizeButton.Position = UDim2.new(0.8, 0, 0, 0)
minimizeButton.Text = "-"
minimizeButton.TextColor3 = Color3.new(1, 1, 1)
minimizeButton.BackgroundColor3 = Color3.new(0.117647, 0.192157, 0.258824)
minimizeButton.TextScaled = true
minimizeButton.Font = Enum.Font.GothamBold
minimizeButton.ZIndex = 2

local minimizeStroke = Instance.new("UIStroke")
minimizeStroke.Parent = minimizeButton
minimizeStroke.Thickness = 2
minimizeStroke.Color = Color3.new(0, 0, 0)
minimizeStroke.Transparency = 0
minimizeStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

local closebutton = Instance.new("TextButton")
closebutton.Parent = background
closebutton.Size = UDim2.new(0.1, 0, 0.08, 0)
closebutton.Position = UDim2.new(0.9, 0, 0, 0)
closebutton.Text = "X"
closebutton.TextColor3 = Color3.new(1, 1, 1)
closebutton.BackgroundColor3 = Color3.new(0.156863, 0.0784314, 0.0941176)
closebutton.TextScaled = true
closebutton.Font = Enum.Font.GothamBold
closebutton.ZIndex = 2

local closeStroke = Instance.new("UIStroke")
closeStroke.Parent = closebutton
closeStroke.Thickness = 2
closeStroke.Color = Color3.new(0, 0, 0)
closeStroke.Transparency = 0
closeStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

local openbutton = Instance.new("TextButton")
openbutton.Parent = ui
openbutton.Size = UDim2.new(0.05, 0, 0.05, 0)
openbutton.Position = UDim2.new(0.95, 0, 0.95, 0)
openbutton.Text = "Self"
openbutton.TextColor3 = Color3.new(1, 1, 1)
openbutton.BackgroundColor3 = Color3.new(0.156863, 0.0784314, 0.0941176)
openbutton.TextScaled = true
openbutton.Font = Enum.Font.GothamBold
openbutton.Visible = false
openbutton.ZIndex = 10

local EspButton = Instance.new("TextButton")
EspButton.Parent = background
EspButton.Size = UDim2.new(0.3, 0, 0.08, 0)
EspButton.Position = UDim2.new(0.05, 0, 0.1, 0)
EspButton.Text = "ESP"
EspButton.TextColor3 = Color3.new(1, 1, 1)
EspButton.BackgroundColor3 = Color3.new(0.156863, 0.0784314, 0.0941176)
EspButton.TextScaled = true
EspButton.Font = Enum.Font.GothamBold
EspButton.ZIndex = 2

local EspStroke = Instance.new("UIStroke")
EspStroke.Parent = EspButton
EspStroke.Thickness = 2
EspStroke.Color = Color3.new(0, 0, 0)
EspStroke.Transparency = 0
EspStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

local fillselector = Instance.new("TextBox")
fillselector.Parent = background
fillselector.Size = UDim2.new(0.3, 0, 0.08, 0)
fillselector.Position = UDim2.new(0.05, 0, 0.18, 0)
fillselector.Text = "Fill Color"
fillselector.TextColor3 = Color3.new(1, 1, 1)
fillselector.BackgroundColor3 = Color3.fromHex("#d4d4d4")
fillselector.TextStrokeTransparency = 0
fillselector.ZIndex = 2

local fillstroke = Instance.new("UIStroke")
fillstroke.Parent = fillselector
fillstroke.Thickness = 2
fillstroke.Color = Color3.new(0, 0, 0)
fillstroke.Transparency = 0
fillstroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

local outlineselec = Instance.new("TextBox")
outlineselec.Parent = background
outlineselec.Size = UDim2.new(0.3, 0, 0.08, 0)
outlineselec.Position = UDim2.new(0.05, 0, 0.25, 0)
outlineselec.Text = "Outline Color"
outlineselec.TextColor3 = Color3.new(1, 1, 1)
outlineselec.BackgroundColor3 = Color3.fromHex("#6b34eb")
outlineselec.TextStrokeTransparency = 0
outlineselec.ZIndex = 2

local outlineStroke = Instance.new("UIStroke")
outlineStroke.Parent = outlineselec
outlineStroke.Thickness = 2
outlineStroke.Color = Color3.new(0, 0, 0)
outlineStroke.Transparency = 0
outlineStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

local filltransselector = Instance.new("TextBox")
filltransselector.Parent = background
filltransselector.Size = UDim2.new(0.3, 0, 0.08, 0)
filltransselector.Position = UDim2.new(0.05, 0, 0.32, 0)
filltransselector.Text = "Fill Transparency"
filltransselector.TextColor3 = Color3.new(1, 1, 1)
filltransselector.BackgroundColor3 = Color3.new(0.780392, 0.780392, 1)
filltransselector.TextStrokeTransparency = 0
filltransselector.ZIndex = 2

local filltransstroke = Instance.new("UIStroke")
filltransstroke.Parent = filltransselector
filltransstroke.Thickness = 2
filltransstroke.Color = Color3.new(0, 0, 0)
filltransstroke.Transparency = 0
filltransstroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

local outlinetransselector = Instance.new("TextBox")
outlinetransselector.Parent = background
outlinetransselector.Size = UDim2.new(0.3, 0, 0.08, 0)
outlinetransselector.Position = UDim2.new(0.05, 0, 0.39, 0)
outlinetransselector.Text = "Outline Transparency"
outlinetransselector.TextColor3 = Color3.new(1, 1, 1)
outlinetransselector.BackgroundColor3 = Color3.new(0.780392, 0.780392, 1)
outlinetransselector.TextStrokeTransparency = 0
outlinetransselector.ZIndex = 2

local outlineTransStroke = Instance.new("UIStroke")
outlineTransStroke.Parent = outlinetransselector
outlineTransStroke.Thickness = 2
outlineTransStroke.Color = Color3.new(0, 0, 0)
outlineTransStroke.Transparency = 0
outlineTransStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

local lootEspButton = Instance.new("TextButton")
lootEspButton.Parent = background
lootEspButton.Size = UDim2.new(0.3, 0, 0.08, 0)
lootEspButton.Position = UDim2.new(0.05, 0, 0.50, 0)
lootEspButton.Text = "Loot ESP"
lootEspButton.TextColor3 = Color3.new(1, 1, 1)
lootEspButton.BackgroundColor3 = Color3.new(0.321569, 1, 0.831373)
lootEspButton.TextScaled = true
lootEspButton.Font = Enum.Font.GothamBold
lootEspButton.ZIndex = 2

local lootStroke = Instance.new("UIStroke")
lootStroke.Parent = lootEspButton
lootStroke.Thickness = 2
lootStroke.Color = Color3.new(0, 0, 0)
lootStroke.Transparency = 0
lootStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

-- FUNCTIONS
local FILL_COLOR = Color3.fromHex("#d4d4d4")
local OUTLINE_COLOR = Color3.fromHex("#6b34eb")
local FILL_TRANSPARENCY = 0.50
local OUTLINE_TRANSPARENCY = 0.95

local espopen = false
local Lootespopen = false
local instances = {}
local Lootinstances = {}

local function getPlayerCharacter()
	return game.Players.LocalPlayer.Character
end

local function getColor(text)
	text = text:gsub("%s+", "")
	local hex = text:gsub("#", "")
	if hex:match("^[0-9A-Fa-f]{6}$") then
		return Color3.fromHex(hex)
	end
	local r,g,b = text:match("^(%d+),(%d+),(%d+)$")
	if r and g and b then
		return Color3.fromRGB(
			math.clamp(tonumber(r),0,255),
			math.clamp(tonumber(g),0,255),
			math.clamp(tonumber(b),0,255)
		)
	end
	return nil
end

local function open()
	background.Visible = true
	openbutton.Visible = false
end

fillselector.FocusLost:Connect(function(enter)
	if not enter then return end
	local color = getColor(fillselector.Text)
	if color then
		FILL_COLOR = color
		fillselector.BackgroundColor3 = color
	else
		fillselector.Text = "Invalid Color"
	end
	task.wait(1)
	fillselector.Text = "Fill Color"
end)

outlineselec.FocusLost:Connect(function(enter)
	if not enter then return end
	local color = getColor(outlineselec.Text)
	if color then
		OUTLINE_COLOR = color
		outlineselec.BackgroundColor3 = color
	else
		outlineselec.Text = "Invalid Color"
	end
	task.wait(1)
	outlineselec.Text = "Outline Color"
end)

filltransselector.FocusLost:Connect(function(enter)
	if not enter then return end
	local transparency = tonumber(filltransselector.Text)
	if transparency and transparency >= 0 and transparency <= 1 then
		FILL_TRANSPARENCY = transparency
	else
		filltransselector.Text = "Invalid Transparency"
		filltransselector.BackgroundColor3 = Color3.new(1, 0, 0)
	end
	task.wait(1)
	filltransselector.Text = "Fill Transparency"
	filltransselector.BackgroundColor3 = Color3.new(0.780392, 0.780392, 1)
end)

outlinetransselector.FocusLost:Connect(function(enter)
	if not enter then return end
	local transparency = tonumber(outlinetransselector.Text)
	if transparency and transparency >= 0 and transparency <= 1 then
		OUTLINE_TRANSPARENCY = transparency
	else
		outlinetransselector.Text = "Invalid Transparency"
		outlinetransselector.BackgroundColor3 = Color3.new(1, 0, 0)
	end
	task.wait(1)
	outlinetransselector.Text = "Outline Transparency"
	outlinetransselector.BackgroundColor3 = Color3.new(0.780392, 0.780392, 1)
end)

openbutton.MouseButton1Click:Connect(open)

minimizeButton.MouseButton1Click:Connect(function()
	background.Visible = false
	openbutton.Visible = true
end)



local function ToggleLootESP(toggle)
	if not toggle then
		for _, data in pairs(Lootinstances) do
			if data and data.highlight then
				data.highlight:Destroy()
			end
		end
		Lootinstances = {}
		return
	end

	local function AddLootHighlight(obj)
		if not obj:IsA("Model") then return end
		if obj:FindFirstChildOfClass("Highlight") then return end
		if not obj:FindFirstChild("Inventory") then return end

		local char = getPlayerCharacter()
		if not char or not char:FindFirstChild("HumanoidRootPart") then return end

		local playerPos = char.HumanoidRootPart.Position
		local lootPos = obj:GetPivot().Position
		local distance = (playerPos - lootPos).Magnitude

		local inv = obj.Inventory
		local hasSPSh = inv:FindFirstChild("SPSh-44")

		if not hasSPSh and distance > 600 then return end

		local HighlightColor
		if #inv:GetChildren() == 0 then
			HighlightColor = Color3.new(0.372549, 0.254902, 0.219608)
		elseif hasSPSh then
			HighlightColor = Color3.new(1, 0, 0.0156863)
		else
			for _, item in ipairs(inv:GetDescendants()) do
				if item.Name == "LoadedAmmo" then
					HighlightColor = Color3.new(0.92549, 0.831373, 0.109804)
					break
				end
			end
		end

		local highlight = Instance.new("Highlight")
		highlight.Name = "LootESP"
		highlight.Adornee = obj
		highlight.Parent = obj
		highlight.FillColor = HighlightColor or Color3.new(0.458824, 0.588235, 0.109804)
		highlight.OutlineColor = Color3.new(0, 0, 0)
		highlight.FillTransparency = 0.50
		highlight.OutlineTransparency = 0.6

		table.insert(Lootinstances, {highlight = highlight, obj = obj})
	end

	for _, obj in ipairs(workspace:GetDescendants()) do
		if obj:IsA("Model") then
			AddLootHighlight(obj)
		end
	end

	workspace.DescendantAdded:Connect(function(obj)
		if obj:IsA("Model") then
			AddLootHighlight(obj)
		end
	end)

	spawn(function()
		while Lootespopen do
			local char = getPlayerCharacter()
			if char and char:FindFirstChild("HumanoidRootPart") then
				local playerPos = char.HumanoidRootPart.Position
				for i = #Lootinstances, 1, -1 do
					local data = Lootinstances[i]
					local hl = data.highlight
					local obj = data.obj
					if hl and hl.Parent and obj and obj.Parent then
						local lootPos = obj:GetPivot().Position
						local dist = (playerPos - lootPos).Magnitude
						local hasSPSh = obj.Inventory and obj.Inventory:FindFirstChild("SPSh-44")
						if not hasSPSh and dist > 600 then
							hl:Destroy()
							table.remove(Lootinstances, i)
						end
					else
						table.remove(Lootinstances, i)
					end
				end
			end
			task.wait(1)
		end
	end)
end

local function ToggleESP(toggle)
	if not toggle then
		for _, hl in pairs(instances) do
			if hl then hl:Destroy() end
		end
		instances = {}
		return
	end

	local function addHealthBar(character)
		local humanoid = character:FindFirstChildOfClass("Humanoid")
		local head = character:FindFirstChild("Head")
		if not humanoid or not head or head:FindFirstChild("ESP_Health") then return end

		local gui = Instance.new("BillboardGui")
		gui.Name = "ESP_Health"
		gui.Adornee = head
		gui.Size = UDim2.fromScale(6, 2.2)
		gui.StudsOffset = Vector3.new(0, 5.5, 0)
		gui.AlwaysOnTop = true
		gui.ClipsDescendants = false
		gui.LightInfluence = 0
		gui.MaxDistance = 2500
		gui.Parent = head
		
		local Namegui = Instance.new("BillboardGui")
		Namegui.Name = "ESP_Name"
		Namegui.Adornee = head
		Namegui.Size = UDim2.fromOffset(100,50)
		Namegui.StudsOffset = Vector3.new(0, 5.5, 0)
		Namegui.AlwaysOnTop = true
		Namegui.ClipsDescendants = false
		Namegui.LightInfluence = 0
		Namegui.MaxDistance = 2500
		Namegui.Parent = head

		local nameLabel = Instance.new("TextLabel")
		nameLabel.Name = "ESP_Name"
		nameLabel.Size = UDim2.fromScale(1, 0.55)
		nameLabel.Position = UDim2.fromScale(0, 0.1)
		nameLabel.BackgroundTransparency = 1
		nameLabel.Text = character.Name
		nameLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
		nameLabel.TextStrokeTransparency = 0
		nameLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
		nameLabel.TextScaled = true
		nameLabel.Font = Enum.Font.SourceSansBold
		nameLabel.TextSize = 28
		nameLabel.Parent = Namegui

		local healthBG = Instance.new("Frame")
		healthBG.Size = UDim2.fromScale(0.9, 0.3)
		healthBG.Position = UDim2.fromScale(0.05, 0.6)
		healthBG.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
		healthBG.BorderSizePixel = 0
		healthBG.Parent = gui

		local healthCorner = Instance.new("UICorner")
		healthCorner.CornerRadius = UDim.new(0, 8)
		healthCorner.Parent = healthBG

		local healthBar = Instance.new("Frame")
		healthBar.Size = UDim2.fromScale(1, 1)
		healthBar.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
		healthBar.BorderSizePixel = 0
		healthBar.Parent = healthBG

		local healthBarCorner = Instance.new("UICorner")
		healthBarCorner.CornerRadius = UDim.new(0, 8)
		healthBarCorner.Parent = healthBar

		local function updateHealth()
			local healthPct = math.clamp(humanoid.Health / humanoid.MaxHealth, 0, 1)
			healthBar.Size = UDim2.fromScale(healthPct, 1)
			healthBar.BackgroundColor3 = Color3.fromRGB(
				255 * (1 - healthPct),
				255 * healthPct,
				0
			)
		end

		updateHealth()
		humanoid.HealthChanged:Connect(updateHealth)
		table.insert(instances,gui)
		table.isfrozen(instances,Namegui)
	end

	local function addHighlight(character)
		if not character:IsA("Model") then return end
		if not character:FindFirstChildOfClass("Humanoid") then return end
		if character:FindFirstChildOfClass("Highlight") then return end
		if character == getPlayerCharacter() then return end

		local highlight = Instance.new("Highlight")
		highlight.Name = "ESP"
		highlight.Adornee = character
		highlight.Parent = character
		highlight.FillColor = FILL_COLOR
		highlight.OutlineColor = OUTLINE_COLOR
		highlight.FillTransparency = FILL_TRANSPARENCY
		highlight.OutlineTransparency = OUTLINE_TRANSPARENCY

		table.insert(instances, highlight)
		addHealthBar(character)
	end

	for _, obj in ipairs(workspace:GetDescendants()) do
		if obj:IsA("Model") then
			addHighlight(obj)
		end
	end

	workspace.DescendantAdded:Connect(function(obj)
		if obj:IsA("Model") then
			addHighlight(obj)
		end
	end)
end

lootEspButton.MouseButton1Click:Connect(function()
	Lootespopen = not Lootespopen
	ToggleLootESP(Lootespopen)
end)

EspButton.MouseButton1Click:Connect(function()
	espopen = not espopen
	ToggleESP(espopen)
end)

closebutton.MouseButton1Click:Connect(function()
	ui:Destroy()
	ToggleESP(false)
	ToggleLootESP(false)
	script:Destroy()
end)
