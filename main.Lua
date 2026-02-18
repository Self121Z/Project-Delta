-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Background = Instance.new("Frame")
local CloseButton = Instance.new("TextButton")
local MinimizeButton = Instance.new("TextButton")
local EspName = Instance.new("TextLabel")
local ESP = Instance.new("TextButton")
local LootEspName = Instance.new("TextLabel")
local LootESP = Instance.new("TextButton")
local UiDrag = Instance.new("UIDragDetector")
local BackgroundStroke = Instance.new("UIStroke")
local ESPStroke = Instance.new("UIStroke")
local LootESPStroke = Instance.new("UIStroke")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false
ScreenGui.DisplayOrder = 999999
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global
ScreenGui.IgnoreGuiInset = true

Background.Name = "Background"
Background.Parent = ScreenGui
Background.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
Background.BorderColor3 = Color3.fromRGB(0, 0, 0)
Background.BorderSizePixel = 0
Background.Position = UDim2.new(0.305503935, 7, 0.245810062, -18)
Background.Size = UDim2.new(0, 300, 0, 400)

UiDrag.Parent = Background

BackgroundStroke.Parent = Background
BackgroundStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
BackgroundStroke.Color = Color3.fromRGB(255, 255, 255)

CloseButton.Name = "CloseButton"
CloseButton.Parent = Background
CloseButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.BackgroundTransparency = 1.000
CloseButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
CloseButton.BorderSizePixel = 0
CloseButton.Position = UDim2.new(0.893333316, 0, 0.0175000001, 0)
CloseButton.Size = UDim2.new(0, 25, 0, 25)
CloseButton.Font = Enum.Font.Unknown
CloseButton.Text = "X"
CloseButton.TextColor3 = Color3.fromRGB(255, 0, 4)
CloseButton.TextScaled = true
CloseButton.TextSize = 17.000
CloseButton.TextWrapped = true

MinimizeButton.Name = "MinimizeButton"
MinimizeButton.Parent = Background
MinimizeButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MinimizeButton.BackgroundTransparency = 1.000
MinimizeButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
MinimizeButton.BorderSizePixel = 0
MinimizeButton.Position = UDim2.new(0.786666691, 0, 0.0175000001, 0)
MinimizeButton.Size = UDim2.new(0, 25, 0, 25)
MinimizeButton.Font = Enum.Font.Unknown
MinimizeButton.Text = "-"
MinimizeButton.TextColor3 = Color3.fromRGB(22, 168, 247)
MinimizeButton.TextScaled = true
MinimizeButton.TextSize = 14.000
MinimizeButton.TextWrapped = true

EspName.Name = "EspName"
EspName.Parent = Background
EspName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
EspName.BackgroundTransparency = 1.000
EspName.BorderColor3 = Color3.fromRGB(0, 0, 0)
EspName.Position = UDim2.new(0.0299999993, 0, 0.102499999, 0)
EspName.Size = UDim2.new(0, 75, 0, 25)
EspName.Font = Enum.Font.JosefinSans
EspName.Text = "ESP:"
EspName.TextColor3 = Color3.fromRGB(255, 255, 255)
EspName.TextSize = 15.000
EspName.TextXAlignment = Enum.TextXAlignment.Left

ESP.Name = "ESP"
ESP.Parent = Background
ESP.BackgroundColor3 = Color3.fromRGB(129, 19, 15)
ESP.BorderColor3 = Color3.fromRGB(0, 0, 0)
ESP.BorderSizePixel = 0
ESP.Position = UDim2.new(0.169622809, 0, 0.1008799, 0)
ESP.Size = UDim2.new(0, 25, 0, 25)
ESP.Font = Enum.Font.SourceSans
ESP.Text = ""
ESP.TextColor3 = Color3.fromRGB(0, 0, 0)
ESP.TextSize = 14.000

ESPStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
ESPStroke.Parent = ESP

LootEspName.Name = "LootEspName"
LootEspName.Parent = Background
LootEspName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LootEspName.BackgroundTransparency = 1.000
LootEspName.BorderColor3 = Color3.fromRGB(0, 0, 0)
LootEspName.Position = UDim2.new(0.0299999993, 0, 0.197500005, 0)
LootEspName.Size = UDim2.new(0, 75, 0, 25)
LootEspName.Font = Enum.Font.JosefinSans
LootEspName.Text = "Loot ESP:"
LootEspName.TextColor3 = Color3.fromRGB(255, 255, 255)
LootEspName.TextSize = 15.000
LootEspName.TextXAlignment = Enum.TextXAlignment.Left

LootESP.Name = "LootESP"
LootESP.Parent = Background
LootESP.BackgroundColor3 = Color3.fromRGB(129, 19, 15)
LootESP.BorderColor3 = Color3.fromRGB(0, 0, 0)
LootESP.BorderSizePixel = 0
LootESP.Position = UDim2.new(0.279622793, 0, 0.195879892, 0)
LootESP.Size = UDim2.new(0, 25, 0, 25)
LootESP.Font = Enum.Font.SourceSans
LootESP.Text = ""
LootESP.TextColor3 = Color3.fromRGB(0, 0, 0)
LootESP.TextSize = 14.000

LootESPStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
LootESPStroke.Parent = LootESP

-- FUNCTIONS
local espopen = false
local Lootespopen = false
local instances = {}
local Lootinstances = {}

local function getPlayerCharacter()
	return game.Players.LocalPlayer.Character
end

local function open()
	Background.Visible = true
end

MinimizeButton.MouseButton1Click:Connect(function()
	ScreenGui.Enabled = false
end)

local Weapons = {
	"ADAR15",
	"AKM",
	"AKMN",
	"AsVal",
	"B8V20",
	"FAL",
	"GoldenMakarov",
	"IZh12",
	"IZh81",
	"KPVT",
	"M4",
	"MK23",
	"MP443",
	"MP5SD",
	"Makarov",
	"Mosin",
	"PKM",
	"PPSH41",
	"R700",
	"RPG7",
	"SKS",
	"SVD",
	"Saiga12",
	"TFZ0",
	"TFZ98S",
	"TT33",
	"VZ61",
	"YakB",
}

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
		
		if obj:FindFirstChild("LootESP") then
			obj.LootESP:Destroy()
		end

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
				if table.find(Weapons, item.Name) then
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
			obj.ChildAdded:Connect(AddLootHighlight(obj))
			obj.ChildRemoved:Connect(AddLootHighlight(obj))
		end
	end

	workspace.DescendantAdded:Connect(function(obj)
		if obj:IsA("Model") then
			AddLootHighlight(obj)
			obj.ChildAdded:Connect(AddLootHighlight(obj))
			obj.ChildRemoved:Connect(AddLootHighlight(obj))
		end
	end)

	spawn(function()
		RunService.RenderStepped:Connect(function()
			local hrp = getHRP()
			if not hrp then return end

			for _, obj in ipairs(Lootinstances) do
				if obj:IsA("Highlight") then
					local hl = obj

					local dist = (hrp.Position - obj.Parent:GetPivot().Position).Magnitude

					hl.Enabled = (dist <= RANGE)
				end
			end
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
		gui.MaxDistance = 9999999
		gui.Parent = head

		local Namegui = Instance.new("BillboardGui")
		Namegui.Name = "ESP_Name"
		Namegui.Adornee = head
		Namegui.Size = UDim2.fromOffset(100,50)
		Namegui.StudsOffset = Vector3.new(0, 5.5, 0)
		Namegui.AlwaysOnTop = true
		Namegui.ClipsDescendants = false
		Namegui.LightInfluence = 0
		Namegui.MaxDistance = 9999999
		Namegui.Parent = head

		local nameLabel = Instance.new("TextLabel")
		nameLabel.Name = "ESP_Name"
		nameLabel.Size = UDim2.fromScale(0.8, 0.55)
		nameLabel.Position = UDim2.fromScale(0, 0.1)
		nameLabel.BackgroundTransparency = 1
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
		
		local localPlayer = game.Players.LocalPlayer
		local localChar = localPlayer.Character

		if localChar and localChar:FindFirstChild("HumanoidRootPart") 
			and character:FindFirstChild("HumanoidRootPart") then

			local dist = (localChar.HumanoidRootPart.Position - character.HumanoidRootPart.Position).Magnitude

			nameLabel.Text = character.Name .. "  " .. math.floor(dist)
		end

		
		task.spawn(function()
			local RunService = game:GetService("RunService")

			RunService.RenderStepped:Connect(function()
				if not localChar or not localChar.Parent then return end

				local myHRP = localChar:FindFirstChild("HumanoidRootPart")
				local targetHRP = character:FindFirstChild("HumanoidRootPart")
				if not myHRP or not targetHRP then return end

				local dist = (myHRP.Position - targetHRP.Position).Magnitude

				nameLabel.Text = character.Name .. "  [" .. math.floor(dist) .. "m]"
			end)
		end)

		local function updateHealth()

			if humanoid.Health <= 0 then
				gui:Destroy()
				Namegui:Destroy()
				return
			end

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
		if character == game.Players.LocalPlayer.Character then return end

		local highlight = Instance.new("Highlight")
		highlight.Name = "ESP"
		highlight.Adornee = character
		highlight.Parent = character
		highlight.FillColor = Color3.new(0.74902, 0.74902, 0.74902)
		highlight.OutlineColor = Color3.new(0.419608, 0.419608, 0.419608)
		highlight.FillTransparency = 0.6
		highlight.OutlineTransparency = 0.2

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

LootESP.MouseButton1Click:Connect(function()
	Lootespopen = not Lootespopen
	if Lootespopen then
		LootESP.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
	else
		LootESP.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
	end
	ToggleLootESP(Lootespopen)
end)

ESP.MouseButton1Click:Connect(function()
	espopen = not espopen
	if espopen then
		ESP.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
	else
		ESP.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
	end
	ToggleESP(espopen)
end)

CloseButton.MouseButton1Click:Connect(function()
	ScreenGui:Destroy()
	ToggleESP(false)
	ToggleLootESP(false)
	script:Destroy()
end)

local inputService = game:GetService("UserInputService")
local player = game.Players.LocalPlayer

inputService.InputBegan:Connect(function(input)
	if input.KeyCode == Enum.KeyCode.RightShift then
		ScreenGui.Enabled = not ScreenGui.Enabled
	end
end)
