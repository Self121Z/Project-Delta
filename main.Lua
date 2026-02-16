local ui = Instance.new("ScreenGui")
ui.Parent = game.Players.LocalPlayer.PlayerGui

ui.ResetOnSpawn = false

local background = Instance.new("Frame")
local backgroundStroke = Instance.new("UIStroke")
local drag = Instance.new("UIDragDetector")

local minimizeButton = Instance.new("TextButton")
local minimizeStroke = Instance.new("UIStroke")

local closebutton = Instance.new("TextButton")
local closeStroke = Instance.new("UIStroke")

local openbutton = Instance.new("TextButton")
local openStroke = Instance.new("UIStroke")

openbutton.Parent = ui
openbutton.Size = UDim2.new(0.05, 0, 0.05, 0)
openbutton.Position = UDim2.new(0.95, 0, 0.95, 0)
openbutton.Text = "Self"
openbutton.TextColor3 = Color3.new(1, 1, 1)
openbutton.BackgroundColor3 = Color3.new(0.156863, 0.0784314, 0.0941176)
openbutton.TextScaled = true
openbutton.Font = Enum.Font.GothamBold
openbutton.Visible = false
openbutton.ZIndex = 1

closebutton.Parent = background
closebutton.Size = UDim2.new(0.1, 0, 0.08, 0)
closebutton.Position = UDim2.new(0.9, 0, 0, 0)
closebutton.Text = "X"
closebutton.TextColor3 = Color3.new(1, 1, 1)
closebutton.BackgroundColor3 = Color3.new(0.156863, 0.0784314, 0.0941176)
closebutton.TextScaled = true
closebutton.Font = Enum.Font.GothamBold

closeStroke.Parent = closebutton
closeStroke.Thickness = 2
closeStroke.Color = Color3.new(0, 0, 0)
closeStroke.Transparency = 0
closebutton.ZIndex = 2
closeStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

minimizeButton.Parent = background
minimizeButton.Size = UDim2.new(0.1, 0, 0.08, 0)
minimizeButton.Position = UDim2.new(0.8, 0, 0, 0)
minimizeButton.Text = "-"
minimizeButton.TextColor3 = Color3.new(1, 1, 1)
minimizeButton.BackgroundColor3 = Color3.new(0.117647, 0.192157, 0.258824)
minimizeButton.TextScaled = true
minimizeButton.Font = Enum.Font.GothamBold

minimizeStroke.Parent =	minimizeButton
minimizeStroke.Thickness = 2
minimizeStroke.Color = Color3.new(0, 0, 0)
minimizeStroke.Transparency = 0
minimizeButton.ZIndex = 2
minimizeStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

drag.Parent = background

backgroundStroke.Parent = background
backgroundStroke.Thickness = 10
backgroundStroke.Color = Color3.new(0.317647, 0.227451, 0.423529)
backgroundStroke.Transparency = 0.3
background.Parent = ui

background.ZIndex = 1

background.BackgroundColor3 = Color3.new(0.0705882, 0.0705882, 0.0705882)
background.BackgroundTransparency = 0
background.Size = UDim2.new(0.5, 0, 0.5, 0)
background.Position = UDim2.new(0.3, 0, 0.15, 0)
background.Parent = ui


local EspButton = Instance.new("TextButton")
local EspStroke = Instance.new("UIStroke")

EspButton.Parent = background
EspButton.Size = UDim2.new(0.3, 0, 0.08, 0)
EspButton.Position = UDim2.new(0.05, 0, 0.1, 0)
EspButton.Text = "ESP"
EspButton.TextColor3 = Color3.new(1, 1, 1)
EspButton.BackgroundColor3 = Color3.new(0.156863, 0.0784314, 0.0941176)
EspButton.TextScaled = true
EspButton.Font = Enum.Font.GothamBold
EspButton.ZIndex = 2

EspStroke.Parent = EspButton
EspStroke.Thickness = 2
EspStroke.Color = Color3.new(0, 0, 0)
EspStroke.Transparency = 0
EspButton.ZIndex = 2
EspStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

local fillselector = Instance.new("TextBox")
local fillstroke = Instance.new("UIStroke")

fillstroke.Parent = fillselector
fillstroke.Thickness = 2
fillstroke.Color = Color3.new(0, 0, 0)
fillstroke.Transparency = 0
fillselector.ZIndex = 2
fillstroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

fillselector.Parent = background
fillselector.Size = UDim2.new(0.3, 0, 0.08, 0)
fillselector.Position = UDim2.new(0.05, 0, 0.18, 0)
fillselector.Text = "Fill Color"
fillselector.TextColor3 = Color3.new(1, 1, 1)
fillselector.BackgroundColor3 = Color3.fromHex("#d4d4d4")
fillselector.TextStrokeTransparency = 0

local outlineselec = Instance.new("TextBox")
local outlineStroke = Instance.new("UIStroke")

outlineStroke.Parent = outlineselec
outlineStroke.Thickness = 2
outlineStroke.Color = Color3.new(0, 0, 0)
outlineStroke.Transparency = 0
outlineselec.ZIndex = 2
outlineStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

outlineselec.Parent = background
outlineselec.Size = UDim2.new(0.3, 0, 0.08, 0)
outlineselec.Position = UDim2.new(0.05, 0, 0.25, 0)
outlineselec.Text = "Outline Color"
outlineselec.TextColor3 = Color3.new(1, 1, 1)
outlineselec.BackgroundColor3 = Color3.fromHex("#6b34eb")
outlineselec.TextStrokeTransparency = 0

local filltransselector = Instance.new("TextBox")
local filltransstroke = Instance.new("UIStroke")

filltransstroke.Parent = filltransselector
filltransstroke.Thickness = 2
filltransstroke.Color = Color3.new(0, 0, 0)
filltransstroke.Transparency = 0
filltransselector.ZIndex = 2
filltransstroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

filltransselector.Parent = background
filltransselector.Size = UDim2.new(0.3, 0, 0.08, 0)
filltransselector.Position = UDim2.new(0.05, 0, 0.32, 0)
filltransselector.Text = "Fill Transparency"
filltransselector.TextColor3 = Color3.new(1, 1, 1)
filltransselector.BackgroundColor3 = Color3.new(0.780392, 0.780392, 1)
filltransselector.TextStrokeTransparency = 0

local outlinetransselector = Instance.new("TextBox")
local outlineTransStroke = Instance.new("UIStroke")

outlineTransStroke.Parent = outlinetransselector
outlineTransStroke.Thickness = 2
outlineTransStroke.Color = Color3.new(0, 0, 0)	
outlineTransStroke.Transparency = 0
outlinetransselector.ZIndex = 2
outlineTransStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

outlinetransselector.Parent = background
outlinetransselector.Size = UDim2.new(0.3, 0, 0.08, 0)
outlinetransselector.Position = UDim2.new(0.05, 0, 0.39, 0)
outlinetransselector.Text = "Outline Transparency"
outlinetransselector.TextColor3 = Color3.new(1, 1, 1)
outlinetransselector.BackgroundColor3 = Color3.new(0.780392, 0.780392, 1)
outlinetransselector.TextStrokeTransparency = 0

local lootEspButton = Instance.new("TextButton")
local lootStroke = Instance.new("UIStroke")

lootEspButton.Parent = background
lootEspButton.Size = UDim2.new(0.3, 0, 0.08, 0)
lootEspButton.Position = UDim2.new(0.05, 0, 0.50, 0)
lootEspButton.Text = "Loot ESP"
lootEspButton.TextColor3 = Color3.new(1, 1, 1)
lootEspButton.BackgroundColor3 = Color3.new(0.321569, 1, 0.831373)
lootEspButton.TextScaled = true
lootEspButton.Font = Enum.Font.GothamBold

lootStroke.Parent = lootEspButton
lootStroke.Thickness = 2
lootStroke.Color = Color3.new(0, 0, 0)
lootStroke.Transparency = 0
lootStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

-- functions
local FILL_COLOR = Color3.fromHex("#d4d4d4")
local OUTLINE_COLOR = Color3.fromHex("#6b34eb")

local FILL_TRANSPARENCY = 0.50
local OUTLINE_TRANSPARENCY = 0.95

local buttonCounts = 0

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

	wait(1)
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

	wait(1)
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

	wait(1)
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

	wait(1)
	outlinetransselector.Text = "Outline Transparency"
	outlinetransselector.BackgroundColor3 = Color3.new(0.780392, 0.780392, 1)
end)

openbutton.MouseButton1Click:Connect(open)

minimizeButton.MouseButton1Up:Connect(function()
	background.Visible = false
	openbutton.Visible = true
end)



local espopen = false
local Lootespopen = false

local instances = {}
local Lootinstances = {}

local function ToggleLootESP(toggle)
	local Players = game:GetService("Players")
	
	if not toggle then
		for _, gui in pairs(Lootinstances) do
			if gui then gui:Destroy() end
		end
		return
	end
	
	local function AddLootHighlight(obj)
		if not obj:IsA("Model") then return end
		if obj:FindFirstChildOfClass("Highlight") then return end
		if obj == Players.LocalPlayer.Character then return end
		
		if not obj:FindFirstChild("Inventory") then return end
		
		local HighlightColor
		
		if #obj.Inventory:GetChildren() == 0 then
			HighlightColor = Color3.new(0.372549, 0.254902, 0.219608)
		end
		
		if obj.Inventory:FindFirstChild("SPSh-44") then
			HighlightColor = Color3.new(1, 0, 0.0156863)
		else 
			for _,item in ipairs(obj.Inventory:GetDescendants()) do
				if item.Name == "LoadedAmmo" then
					HighlightColor = Color3.new(0.92549, 0.831373, 0.109804)
					break
				end
			end
		end
		
		local highlight = Instance.new("Highlight")
		highlight.Name = "ESP"
		highlight.Adornee = obj
		highlight.Parent = obj
		
		highlight.FillColor = Color3.new(0.709804, 0.513725, 1)
		highlight.OutlineColor = Color3.new(0, 0, 0)
		highlight.FillTransparency = -0.50
		highlight.OutlineTransparency = 0.6
		
		table.insert(Lootinstances,highlight)
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
end

local function ToggleESP(toggle)

	if not toggle then
		for _, gui in pairs(instances) do
			if gui then gui:Destroy() end
		end
		return
	end
	
	local Players = game:GetService("Players")

	local function addHealthBar(character)
		local humanoid = character:FindFirstChildOfClass("Humanoid")
		local head = character:FindFirstChild("Head")
		if not humanoid or not head then return end
		if head:FindFirstChild("ESP_Health") then return end

		local gui = Instance.new("BillboardGui")
		gui.Name = "ESP_Health"
		gui.Adornee = head
		gui.Size = UDim2.fromScale(2, 0.3)
		gui.StudsOffset = Vector3.new(0, 2, 0)
		gui.AlwaysOnTop = true
		gui.Parent = head

		local bg = Instance.new("Frame")
		bg.Size = UDim2.fromScale(1, 1)
		bg.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
		bg.BorderSizePixel = 0
		bg.Parent = gui

		local bgCorner = Instance.new("UICorner")
		bgCorner.CornerRadius = UDim.new(0, 6)
		bgCorner.Parent = bg

		local bar = Instance.new("Frame")
		bar.Size = UDim2.fromScale(1, 1)
		bar.BackgroundColor3 = Color3.fromRGB(100, 255, 100)
		bar.BorderSizePixel = 0
		bar.Parent = bg

		local barCorner = Instance.new("UICorner")
		barCorner.CornerRadius = UDim.new(0, 6)
		barCorner.Parent = bar

		local function update()
			bar.Size = UDim2.fromScale(
				math.clamp(humanoid.Health / humanoid.MaxHealth, 0, 1),
				1
			)
		end

		update()
		humanoid.HealthChanged:Connect(update)
	end

	local function addHighlight(character)
		if not character:IsA("Model") then return end
		if not character:FindFirstChildOfClass("Humanoid") then return end
		if character:FindFirstChildOfClass("Highlight") then return end
		if character == Players.LocalPlayer.Character then return end

		local highlight = Instance.new("Highlight")
		highlight.Name = "ESP"
		highlight.Adornee = character
		highlight.Parent = character

		highlight.FillColor = FILL_COLOR
		highlight.OutlineColor = OUTLINE_COLOR
		highlight.FillTransparency = FILL_TRANSPARENCY
		highlight.OutlineTransparency = OUTLINE_TRANSPARENCY

		table.insert(instances,highlight)
		
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

EspButton.MouseButton1Click:Connect(function()
	espopen = not espopen
	ToggleESP(espopen)
end)

lootEspButton.MouseButton1Click:Connect(function()
	Lootespopen = not Lootespopen
	ToggleLootESP(Lootespopen)
end)

closebutton.MouseButton1Up:Connect(function()
	ui:Destroy()
	ToggleESP(false)
	ToggleLootESP(false)
	script:Destroy()
end)
