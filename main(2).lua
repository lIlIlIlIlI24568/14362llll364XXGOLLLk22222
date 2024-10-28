local Fluent = loadstring(game:HttpGet("https://raw.githubusercontent.com/Iamkhnah/LinoriaUiLibrary/refs/heads/main/source.lua")
Fluent:Notify({
	Title = "Script loading.",
	Content = "This might take a bit...",
	Duration = 5
})

local currentVersion = "v2.7.0"
local function trim(s)
	return s:match("^%s*(.-)%s*$")
end
print("xxxxgo")
local function getAvailableVersion(url)
	local success, result = pcall(function()
		return game:HttpGet(url)
	end)

	if success then
		local availableVersion = trim(result)
		print("Current version:", currentVersion)
		print("Available version:", availableVersion)

		if currentVersion ~= availableVersion then
			print("A new version is available!")
			Fluent:Notify({
				Title = "New version!",
				Content = "A new version is available on scriptblox!",
				Duration = 5
			})
		else
			print("You are using the latest version.")
			Fluent:Notify({
				Title = "Latest version.",
				Content = "You are using the latest script version.",
				Duration = 5
			})
		end
	else
		print("Parsing error of the available version:", result)
	end
end
print(" ")
getAvailableVersion("https://raw.githubusercontent.com/EntonioDMI/Universal-Scripts/refs/heads/main/version")


local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")
local lp = Players.LocalPlayer

local HighlightEnabled = false
local AutoTeamColor = false
local HighlightTeamCheck = false
local CustomHighlightColor = Color3.fromRGB(255, 255, 255)
local CustomOutlineColor = Color3.fromRGB(255, 255, 255) -- Новый цвет для контура
local FillTransparency = 0.5
local OutlineTransparency = 0
local FriendList = {}
local Enemies = {}
local Debugger = false

local Storage = Instance.new("Folder")
Storage.Parent = CoreGui
Storage.Name = "Highlight_Storage"

local highlightCache = {}
local pulseTime = 0
local colorIndex = 1
local colorChangeInterval = 1
local colorChangeTime = 0

local enemyColors = {
	Color3.fromRGB(255, 0, 0),
	Color3.fromRGB(0, 0, 0),
	Color3.fromRGB(75, 0, 130),
	Color3.fromRGB(0, 0, 139)
}

local function debugPrint(...)
	if Debugger then
		print("[HIGHLIGHT DEBUG]", ...)
	end
end

local function getEnemyColor(t)
	local nextIndex = (colorIndex % #enemyColors) + 1
	local currentColor = enemyColors[colorIndex]
	local nextColor = enemyColors[nextIndex]

	local blendFactor = (t % colorChangeInterval) / colorChangeInterval
	local r = currentColor.R + (nextColor.R - currentColor.R) * blendFactor
	local g = currentColor.G + (nextColor.G - currentColor.G) * blendFactor
	local b = currentColor.B + (nextColor.B - currentColor.B) * blendFactor

	return Color3.new(r, g, b)
end

local function updateHighlight(highlight, plr)
	local function isInSpecialLocation(character)
		local npcs = workspace:FindFirstChild("NPCs")
		local boss = npcs and npcs:FindFirstChild("Boss")
		return (npcs and character:IsDescendantOf(npcs)) or (boss and character:IsDescendantOf(boss))
	end

	local function hasSpecialItemsInInventory(player)
		local specialItems = {
			"smile", "twilight", "pixel rifle", "suppressed mac-10",
			"micro smg", "mad noob's shotgun", "awp", "airpod aa12", "table",
			"ssg-08"
		}

		local backpack = player:FindFirstChild("Backpack")
		local character = player.Character

		local function checkItems(container)
			if container then
				for _, item in ipairs(container:GetChildren()) do
					if table.find(specialItems, item.Name:lower()) then
						return true
					end
				end
			end
			return false
		end

		return checkItems(backpack) or checkItems(character)
	end

	if table.find(Enemies, plr.Name) then
		local enemyColor = getEnemyColor(colorChangeTime)
		highlight.FillColor = enemyColor
		highlight.OutlineColor = enemyColor
		highlight.FillTransparency = 0.2 + 0.3 * (0.5 + 0.5 * math.sin(pulseTime))
	elseif table.find(FriendList, plr.Name) then
		highlight.FillColor = Color3.fromRGB(144, 238, 144)
		highlight.OutlineColor = Color3.fromRGB(144, 238, 144)
		highlight.FillTransparency = 0.2 + 0.3 * (0.5 + 0.5 * math.sin(pulseTime))
	elseif isInSpecialLocation(plr.Character) then
		highlight.FillColor = Color3.fromRGB(255, 69, 0)
		highlight.OutlineColor = Color3.fromRGB(255, 69, 0)
		highlight.FillTransparency = 0.2 + 0.3 * (0.5 + 0.5 * math.sin(pulseTime))
	elseif hasSpecialItemsInInventory(plr) then
		highlight.FillColor = Color3.fromRGB(255, 165, 0)
		highlight.OutlineColor = Color3.fromRGB(255, 165, 0)
		highlight.FillTransparency = 0.2 + 0.3 * (0.5 + 0.5 * math.sin(pulseTime))
	else
		local highlightColor = AutoTeamColor and (plr.Team and plr.Team.TeamColor.Color or Color3.fromRGB(255, 255, 255)) or CustomHighlightColor
		highlight.FillColor = highlightColor
		highlight.FillTransparency = FillTransparency
		highlight.OutlineTransparency = OutlineTransparency
		highlight.OutlineColor = CustomOutlineColor -- Используем новый цвет контура
	end
end

local function getOrCreateHighlight(plr)
	if not highlightCache[plr.Name] then
		local highlight = Instance.new("Highlight")
		highlight.Name = plr.Name
		highlight.DepthMode = "AlwaysOnTop"
		highlight.OutlineColor = CustomOutlineColor -- Используем новый цвет контура
		highlight.Parent = Storage

		highlightCache[plr.Name] = highlight
	end
	return highlightCache[plr.Name]
end

local function removeHighlight(plrName)
	if highlightCache[plrName] then
		highlightCache[plrName]:Destroy()
		highlightCache[plrName] = nil
	end
end

local function fadeOutHighlight(plrName)
	if highlightCache[plrName] then
		local highlight = highlightCache[plrName]
		local tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out)
		local tween = TweenService:Create(highlight, tweenInfo, {FillTransparency = 1, OutlineTransparency = 1})

		tween:Play()
		tween.Completed:Connect(function()
			removeHighlight(plrName)
		end)
	end
end

local function removeConflictingHighlights(character)
	for _, child in ipairs(character:GetChildren()) do
		if child:IsA("Highlight") and (child.Name == "TeamOutline" or not highlightCache[character.Name]) then
			child:Destroy()
			debugPrint("Удален конфликтующий Highlight у " .. character.Name)
		end
	end
end

local function onCharacterAdded(plr, char)
	local function updatePlayerHighlight()
		if HighlightEnabled and char and not (plr == lp or (HighlightTeamCheck and plr.Team == lp.Team)) then
			local highlight = getOrCreateHighlight(plr)
			updateHighlight(highlight, plr)
			highlight.Adornee = char
			removeConflictingHighlights(char)
		else
			removeHighlight(plr.Name)
		end
	end

	updatePlayerHighlight()

	char:GetPropertyChangedSignal("Parent"):Connect(updatePlayerHighlight)
	local humanoid = char:FindFirstChildOfClass("Humanoid")
	if humanoid then
		humanoid.Died:Connect(function()
			fadeOutHighlight(plr.Name)
		end)
	end
end

local function manageHighlight(plr)
	plr.CharacterAdded:Connect(function(char)
		onCharacterAdded(plr, char)
	end)

	if plr.Character then
		onCharacterAdded(plr, plr.Character)
	end

	plr:GetPropertyChangedSignal("Team"):Connect(function()
		if plr.Character then
			onCharacterAdded(plr, plr.Character)
		end
	end)

	plr.Backpack.ChildAdded:Connect(function()
		if plr.Character then
			onCharacterAdded(plr, plr.Character)
		end
	end)

	plr.Backpack.ChildRemoved:Connect(function()
		if plr.Character then
			onCharacterAdded(plr, plr.Character)
		end
	end)
end

Players.PlayerAdded:Connect(manageHighlight)
Players.PlayerRemoving:Connect(function(plr)
	removeHighlight(plr.Name)
end)

RunService.Heartbeat:Connect(function(deltaTime)
	pulseTime = pulseTime + deltaTime * 2
	colorChangeTime = colorChangeTime + deltaTime

	if colorChangeTime >= colorChangeInterval then
		colorIndex = (colorIndex % #enemyColors) + 1
		colorChangeTime = 0
	end

	for _, plr in ipairs(Players:GetPlayers()) do
		if highlightCache[plr.Name] then
			updateHighlight(highlightCache[plr.Name], plr)
		end
	end
end)

local lastHighlightEnabled = HighlightEnabled
local lastTeamCheck = HighlightTeamCheck
local lastFillTransparency = FillTransparency
local lastOutlineTransparency = OutlineTransparency
local lastCustomHighlightColor = CustomHighlightColor
local lastCustomOutlineColor = CustomOutlineColor -- Новый цвет контура

RunService.RenderStepped:Connect(function()
	if HighlightEnabled ~= lastHighlightEnabled or
		HighlightTeamCheck ~= lastTeamCheck or
		FillTransparency ~= lastFillTransparency or
		OutlineTransparency ~= lastOutlineTransparency or
		CustomHighlightColor ~= lastCustomHighlightColor or
		CustomOutlineColor ~= lastCustomOutlineColor then -- Проверяем изменения цвета контура

		lastHighlightEnabled = HighlightEnabled
		lastTeamCheck = HighlightTeamCheck
		lastFillTransparency = FillTransparency
		lastOutlineTransparency = OutlineTransparency
		lastCustomHighlightColor = CustomHighlightColor
		lastCustomOutlineColor = CustomOutlineColor -- Обновляем последний цвет контура

		debugPrint("[HIGHLIGHT DEBUG] Изменены глобальные параметры, обновляем подсветки.")
		for _, v in ipairs(Players:GetPlayers()) do
			manageHighlight(v)
		end
	end
end)

for _, plr in ipairs(Players:GetPlayers()) do
	manageHighlight(plr)
end


local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Camera = workspace.CurrentCamera
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")

local ESPObjects = {}

local ESPEnabled = false
local BoxESPEnabled = false
local LineESPEnabled = false
local NameESPEnabled = false
local TeamCheckEnabled = false
local BoxColor = Color3.fromRGB(255, 255, 255)
local LineColor = Color3.fromRGB(255, 255, 255)
local NameColor = Color3.fromRGB(255, 255, 255)
local BoxTransparency = 0
local LineTransparency = 0
local NameTransparency = 0
local NameUseDisplay = false
local NameDisplayHealth = false
local LineFromPosition = "Bottom"

local lastESPEnabled = ESPEnabled
local lastBoxESPEnabled = BoxESPEnabled
local lastLineESPEnabled = LineESPEnabled
local lastNameESPEnabled = NameESPEnabled
local lastTeamCheckEnabled = TeamCheckEnabled
local lastBoxColor = BoxColor
local lastLineColor = LineColor
local lastNameColor = NameColor
local lastBoxTransparency = BoxTransparency
local lastLineTransparency = LineTransparency
local lastNameTransparency = NameTransparency
local lastNameUseDisplay = NameUseDisplay
local lastNameDisplayHealth = NameDisplayHealth
local lastLineFromPosition = LineFromPosition

local function IsEnemy_ESP(player)
	if not TeamCheckEnabled then
		return true
	end
	local localTeam = LocalPlayer.Team
	local playerTeam = player.Team
	if localTeam ~= playerTeam then
		return true
	end
	return false
end

local function UpdateESP()
	for _, data in pairs(ESPObjects) do
		if BoxESPEnabled then
			data.Box.Color = BoxColor
			data.Box.Transparency = 1 - BoxTransparency 
		end
		if LineESPEnabled then
			data.Line.Color = LineColor
			data.Line.Transparency = 1 - LineTransparency 
		end
		if NameESPEnabled then
			data.Name.Color = NameColor
			data.Name.Transparency = 1 - NameTransparency 
		end
	end
	print("ESP Updated")
end

local function CreateESP(player)
	print("Creating ESP for", player.Name)
	local Box = Drawing.new("Square")
	Box.Visible = false
	Box.Color = BoxColor
	Box.Transparency = 1 - BoxTransparency 

	local Line = Drawing.new("Line")
	Line.Visible = false
	Line.Color = LineColor
	Line.Transparency = 1 - LineTransparency 

	local Name = Drawing.new("Text")
	Name.Visible = false
	Name.Color = NameColor
	Name.Size = 20
	Name.Center = true
	Name.Outline = true
	Name.Transparency = 1 - NameTransparency 
	Name.Text = "Player"

	ESPObjects[player] = {Box = Box, Line = Line, Name = Name, Player = player}

	RunService.RenderStepped:Connect(function()
		local MouseLocation
		if LineFromPosition == "Mouse" then
			MouseLocation = UserInputService:GetMouseLocation()
		end
		if ESPEnabled and player.Character and player.Character:FindFirstChild("HumanoidRootPart") and player ~= LocalPlayer and IsEnemy_ESP(player) and player.Character.Humanoid.Health > 0 then
			local humanoidRootPart = player.Character.HumanoidRootPart
			local rootPosition, onScreen = Camera:WorldToViewportPoint(humanoidRootPart.Position)

			if onScreen then
				if BoxESPEnabled then
					Box.Size = Vector2.new(2000 / rootPosition.Z, 4000 / rootPosition.Z)
					Box.Position = Vector2.new(rootPosition.X - Box.Size.X / 2, rootPosition.Y - Box.Size.Y / 2)
					Box.Visible = true
				else
					Box.Visible = false
				end

				if LineESPEnabled then
					local FromPosition
					if LineFromPosition == "Bottom" then
						FromPosition = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y)
					elseif LineFromPosition == "Top" then
						FromPosition = Vector2.new(Camera.ViewportSize.X / 2, 0)
					elseif LineFromPosition == "Mouse" then
						FromPosition = Vector2.new(MouseLocation.X, MouseLocation.Y)
					end
					Line.From = FromPosition
					Line.To = Vector2.new(rootPosition.X, rootPosition.Y)
					Line.Visible = true
				else
					Line.Visible = false
				end

				if NameESPEnabled then
					local HealthString = ""
					if NameDisplayHealth then
						HealthString = string.format(" (%d)", player.Character.Humanoid.Health)
					end
					Name.Position = Vector2.new(rootPosition.X, rootPosition.Y - Box.Size.Y / 2 - 20)
					Name.Visible = true
					if NameUseDisplay then
						Name.Text = (player.DisplayName or "") .. HealthString
					else
						Name.Text = (player.Name or "") .. HealthString
					end
				else
					Name.Visible = false
				end
			else
				Box.Visible = false
				Line.Visible = false
				Name.Visible = false
			end
		else
			Box.Visible = false
			Line.Visible = false
			Name.Visible = false
		end
	end)
end

local function connect()
	for _, player in pairs(Players:GetPlayers()) do
		if player ~= LocalPlayer then
			CreateESP(player)
		end
	end

	Players.PlayerAdded:Connect(function(player)
		if player ~= LocalPlayer then
			CreateESP(player)
		end
	end)
end

RunService.Heartbeat:Connect(function()
	if ESPEnabled ~= lastESPEnabled or
		BoxESPEnabled ~= lastBoxESPEnabled or
		LineESPEnabled ~= lastLineESPEnabled or
		NameESPEnabled ~= lastNameESPEnabled or
		TeamCheckEnabled ~= lastTeamCheckEnabled or
		BoxColor ~= lastBoxColor or
		LineColor ~= lastLineColor or
		NameColor ~= lastNameColor or
		BoxTransparency ~= lastBoxTransparency or
		LineTransparency ~= lastLineTransparency or
		NameTransparency ~= lastNameTransparency or
		NameUseDisplay ~= lastNameUseDisplay or
		NameDisplayHealth ~= lastNameDisplayHealth or
		LineFromPosition ~= lastLineFromPosition then

		lastESPEnabled = ESPEnabled
		lastBoxESPEnabled = BoxESPEnabled
		lastLineESPEnabled = LineESPEnabled
		lastNameESPEnabled = NameESPEnabled
		lastTeamCheckEnabled = TeamCheckEnabled
		lastBoxColor = BoxColor
		lastLineColor = LineColor
		lastNameColor = NameColor
		lastBoxTransparency = BoxTransparency
		lastLineTransparency = LineTransparency
		lastNameTransparency = NameTransparency
		lastNameUseDisplay = NameUseDisplay
		lastNameDisplayHealth = NameDisplayHealth
		lastLineFromPosition = LineFromPosition

		print("Detected change in settings, updating ESP.")
		UpdateESP()
	end
end)

--// main

connect()

--[[
    _   ___ __  __ ___  ___ _____ 
   /_\ |_ _|  \/  | _ )/ _ \_   _|
  / _ \ | || |\/| | _ \ (_) || |  
 /_/ \_\___|_|  |_|___/\___/ |_|  
                                  
--]]

local Camera = workspace.CurrentCamera
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local LocalPlayer = Players.LocalPlayer
local Holding = false

-- Локальные переменные для настройки
local aimbotEnabled = false
local teamCheck = false -- Если true, то aimbot будет наводиться только на врагов.
local aimPart = "Head" -- Часть тела, на которую будет наводиться aimbot.
local sensitivity = 0.2 -- Время, за которое aimbot будет наводиться на цель.

local circleSides = 64 -- Количество сторон круга FOV.
local circleColor = Color3.fromRGB(255, 255, 255) -- Цвет круга FOV.
local circleTransparency = 0.7 -- Прозрачность круга.
local circleRadius = 80 -- Радиус круга / FOV.
local circleFilled = false -- Заполненность круга.
local circleVisible = false -- Видимость круга.
local circleThickness = 1 -- Толщина круга.

local FOVCircle = Drawing.new("Circle")
FOVCircle.Position = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)
FOVCircle.Radius = circleRadius
FOVCircle.Filled = circleFilled
FOVCircle.Color = circleColor
FOVCircle.Visible = circleVisible
FOVCircle.Transparency = circleTransparency
FOVCircle.NumSides = circleSides
FOVCircle.Thickness = circleThickness

local function GetClosestPlayer()
	local MaximumDistance = circleRadius
	local Target = nil

	for _, v in ipairs(Players:GetPlayers()) do
		if v ~= LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("Humanoid") then
			if v.Character.Humanoid.Health > 0 then
				if not teamCheck or v.Team ~= LocalPlayer.Team then
					local ScreenPoint = Camera:WorldToScreenPoint(v.Character.HumanoidRootPart.Position)
					local VectorDistance = (Vector2.new(UserInputService:GetMouseLocation().X, UserInputService:GetMouseLocation().Y) - Vector2.new(ScreenPoint.X, ScreenPoint.Y)).Magnitude

					if VectorDistance < MaximumDistance then
						MaximumDistance = VectorDistance
						Target = v
					end
				end
			end
		end
	end

	return Target
end

UserInputService.InputBegan:Connect(function(Input)
	if Input.UserInputType == Enum.UserInputType.MouseButton2 then
		Holding = true
	end
end)

UserInputService.InputEnded:Connect(function(Input)
	if Input.UserInputType == Enum.UserInputType.MouseButton2 then
		Holding = false
	end
end)

RunService.RenderStepped:Connect(function()
	FOVCircle.Position = UserInputService:GetMouseLocation()
	FOVCircle.Radius = circleRadius
	FOVCircle.Filled = circleFilled
	FOVCircle.Color = circleColor
	FOVCircle.Visible = circleVisible
	FOVCircle.Transparency = circleTransparency
	FOVCircle.NumSides = circleSides
	FOVCircle.Thickness = circleThickness

	if Holding and aimbotEnabled then
		local target = GetClosestPlayer()
		if target then
			local aimPosition = target.Character[aimPart].Position
			TweenService:Create(Camera, TweenInfo.new(sensitivity, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {CFrame = CFrame.new(Camera.CFrame.Position, aimPosition)}):Play()
		end
	end
end)


local Players = game:GetService('Players')
local RunService = game:GetService('RunService')

local disabled = false
local headSize = 5
local hitboxTransparency = 0.8
local hitboxColor = Color3.fromRGB(255, 255, 255)
local hVaTeamCheck = false
local friendList = {}

local function debugPrint(...)
	if debugger then
		print("[HITBOX DEBUG]", ...)
	end
end

local function resetHitbox(v)
	if v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
		local rootPart = v.Character.HumanoidRootPart
		rootPart.Size = Vector3.new(2, 2, 1)
		rootPart.Transparency = 1
		rootPart.Material = "Plastic"
		debugPrint("Reset hitbox for", v.Name)
	end
end

local function updateHitbox(v)
	if not disabled and v ~= Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Humanoid") and v.Character:FindFirstChild("HumanoidRootPart") then
		local humanoid = v.Character.Humanoid
		local rootPart = v.Character.HumanoidRootPart

		if humanoid.Health > 0 then
			rootPart.Size = Vector3.new(headSize, headSize, headSize)
			rootPart.Transparency = hitboxTransparency
			rootPart.Color = hitboxColor
			rootPart.Material = "Neon"
			rootPart.CanCollide = false
		else
			resetHitbox(v)
		end
	end
end

RunService.RenderStepped:Connect(function()
	if not disabled then
		local localPlayer = Players.LocalPlayer
		local localTeam = localPlayer.Team

		for _, v in ipairs(Players:GetPlayers()) do
			if v.Name ~= localPlayer.Name then
				local isSameTeam = hVaTeamCheck and v.Team == localTeam
				local isFriend = table.find(friendList, v.Name) ~= nil
				if not isSameTeam and not isFriend then
					pcall(function()
						updateHitbox(v)
					end)
				else
					resetHitbox(v)
				end
			end
		end
	end
end)

Players.PlayerAdded:Connect(function(player)
	debugPrint("Player added:", player.Name)
	player.CharacterAdded:Connect(function(character)
		wait(0.1)
		local isFriend = table.find(friendList, player.Name) ~= nil
		if not disabled and not isFriend then
			pcall(function()
				updateHitbox(player)
			end)
		else
			resetHitbox(player)
		end

		local humanoid = character:FindFirstChild("Humanoid")
		if humanoid then
			humanoid.Died:Connect(function()
				debugPrint("Character", player.Name, "died, resetting hitbox")
				resetHitbox(player)
			end)
		end
	end)
end)

local lastFriendList = {}

RunService.RenderStepped:Connect(function()
	if not disabled then
		local friendListChanged = false

		if #lastFriendList ~= #friendList then
			friendListChanged = true
		else
			for _, friendName in ipairs(friendList) do
				if not table.find(lastFriendList, friendName) then
					friendListChanged = true
					break
				end
			end
		end

		if friendListChanged then
			debugPrint("Friend list changed")
			lastFriendList = {unpack(friendList)}

			for _, v in ipairs(Players:GetPlayers()) do
				local isFriend = table.find(friendList, v.Name) ~= nil
				if isFriend then
					resetHitbox(v)
				else
					updateHitbox(v)
				end
			end
		end
	end
end)


local MinionSize = 3
local BossSize = 5
local MinionTransparency = 0.5
local BossTransparency = 0.5
local EnableMinionHitboxes = false
local EnableBossHitboxes = false

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

-- Функция для вывода отладочной информации
local function debugPrint(...)
	if Debugger then
		print("[HITBOX DEBUG]", ...)
	end
end

-- Функция для увеличения хитбоксов
local function enlargeHitbox(npc, size, transparency)
	if npc:IsA("Model") and npc:FindFirstChild("HumanoidRootPart") and npc.Name ~= "SILLY STATUE" and not Players:GetPlayerFromCharacter(npc) then
		local rootPart = npc.HumanoidRootPart
		if rootPart.Size ~= Vector3.new(size, size, size) then
			rootPart.Size = Vector3.new(size, size, size)
			rootPart.Transparency = transparency
			rootPart.Material = "Neon"
			rootPart.CanCollide = false
			debugPrint("Enlarged hitbox for NPC:", npc.Name)
		end
	end
end

-- Функция для сброса хитбоксов
local function resetHitbox(npc)
	if npc:IsA("Model") and npc:FindFirstChild("HumanoidRootPart") then
		local rootPart = npc.HumanoidRootPart
		rootPart.Size = Vector3.new(2, 2, 1) -- Восстанавливаем оригинальный размер
		rootPart.Transparency = 1
		rootPart.Material = "Plastic"
		rootPart.CanCollide = true
		debugPrint("Reset hitbox for NPC:", npc.Name)
	end
end

-- Функция для обработки NPC
local function handleNPC(npc, size, transparency, enable)
	local humanoid = npc:FindFirstChildOfClass("Humanoid")
	if humanoid then
		humanoid.HealthChanged:Connect(function(health)
			if health > 0 and enable then
				enlargeHitbox(npc, size, transparency)
			else
				resetHitbox(npc)
			end
		end)

		if humanoid.Health > 0 and enable then
			enlargeHitbox(npc, size, transparency)
		else
			resetHitbox(npc)
		end
	end
end

-- Функция для проверки всех NPC в папках
local function checkNPCs()
	local npcsFolder = workspace:FindFirstChild("NPCs")
	if npcsFolder then
		for _, npc in ipairs(npcsFolder:GetChildren()) do
			handleNPC(npc, MinionSize, MinionTransparency, EnableMinionHitboxes)
		end
	end

	local bossFolder = npcsFolder and npcsFolder:FindFirstChild("Boss")
	if bossFolder then
		for _, npc in ipairs(bossFolder:GetChildren()) do
			handleNPC(npc, BossSize, BossTransparency, EnableBossHitboxes)
		end
	end
end

-- Цикл для проверки NPC
RunService.Heartbeat:Connect(function()
	checkNPCs()
end)

-- Обновление конфигурационных переменных
local lastMinionSize = MinionSize
local lastBossSize = BossSize
local lastMinionTransparency = MinionTransparency
local lastBossTransparency = BossTransparency
local lastEnableMinionHitboxes = EnableMinionHitboxes
local lastEnableBossHitboxes = EnableBossHitboxes

RunService.RenderStepped:Connect(function()
	if lastMinionSize ~= MinionSize or lastMinionTransparency ~= MinionTransparency or lastEnableMinionHitboxes ~= EnableMinionHitboxes or
		lastBossSize ~= BossSize or lastBossTransparency ~= BossTransparency or lastEnableBossHitboxes ~= EnableBossHitboxes then
		lastMinionSize = MinionSize
		lastMinionTransparency = MinionTransparency
		lastEnableMinionHitboxes = EnableMinionHitboxes
		lastBossSize = BossSize
		lastBossTransparency = BossTransparency
		lastEnableBossHitboxes = EnableBossHitboxes
	end
end)


-- Локальные переменные для настройки
local sizeMultiplier = 1  -- Множитель размера элементов
local studsOffsetY = 3
local studsOffset = Vector3.new(0, studsOffsetY, 0)  -- Смещение по высоте
local textSize = 35  -- Размер текста
local enabledIAIt = false  -- Включение/выключение интерфейса инвентаря

local PlayersService = game:GetService("Players")
local LocalPlayerInstance = PlayersService.LocalPlayer

local function updateBillboardGui(billboardGui, inventoryFrame, character)
	billboardGui.Enabled = enabledIAIt
	billboardGui.StudsOffset = studsOffset

	inventoryFrame:ClearAllChildren()

	local items = {}

	for _, item in pairs(LocalPlayerInstance.Backpack:GetChildren()) do
		table.insert(items, item.Name)
	end

	for _, item in pairs(character:GetChildren()) do
		if item:IsA("Tool") then
			table.insert(items, item.Name)
		end
	end

	if #items == 0 then
		local emptyLabel = Instance.new("TextLabel", inventoryFrame)
		emptyLabel.Text = "No Items"
		emptyLabel.Size = UDim2.new(0, 100 * sizeMultiplier, 0, 35 * sizeMultiplier)
		emptyLabel.Position = UDim2.new(0.5, -50 * sizeMultiplier, 0, 0)
		emptyLabel.TextColor3 = Color3.new(1, 1, 1)
		emptyLabel.BackgroundTransparency = 0.5
		emptyLabel.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
		emptyLabel.TextScaled = true
		emptyLabel.Font = Enum.Font.SourceSans
	else
		local totalWidth = #items * textSize * sizeMultiplier + (#items - 1) * 5
		local xOffset = -totalWidth / 2

		for _, itemName in ipairs(items) do
			local itemLabel = Instance.new("TextLabel", inventoryFrame)
			itemLabel.Text = itemName
			itemLabel.Size = UDim2.new(0, textSize * sizeMultiplier, 0, textSize * sizeMultiplier)
			itemLabel.Position = UDim2.new(0, xOffset + 150, 0, 0)
			itemLabel.TextColor3 = Color3.new(1, 1, 1)
			itemLabel.BackgroundTransparency = 0.5
			itemLabel.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
			itemLabel.TextScaled = true
			itemLabel.Font = Enum.Font.SourceSans

			xOffset = xOffset + textSize * sizeMultiplier + 5
		end
	end
end

local function createOrActivateInventoryUI(player)
	local function onCharacterAdded(character)
		character:WaitForChild("Head", 10)

		local head = character:FindFirstChild("Head")
		if not head then return end

		local existingGui = head:FindFirstChildOfClass("BillboardGui")
		if existingGui then
			updateBillboardGui(existingGui, existingGui:FindFirstChildOfClass("Frame"), character)
			return
		end

		local billboardGui = Instance.new("BillboardGui")
		billboardGui.Size = UDim2.new(0, 300, 0, 50)
		billboardGui.AlwaysOnTop = true
		billboardGui.Parent = head

		local inventoryFrame = Instance.new("Frame", billboardGui)
		inventoryFrame.Size = UDim2.new(1, 0, 1, 0)
		inventoryFrame.BackgroundTransparency = 1

		updateBillboardGui(billboardGui, inventoryFrame, character)

		player.Backpack.ChildAdded:Connect(function()
			updateBillboardGui(billboardGui, inventoryFrame, character)
		end)
		player.Backpack.ChildRemoved:Connect(function()
			updateBillboardGui(billboardGui, inventoryFrame, character)
		end)
		character.ChildAdded:Connect(function()
			updateBillboardGui(billboardGui, inventoryFrame, character)
		end)
		character.ChildRemoved:Connect(function()
			updateBillboardGui(billboardGui, inventoryFrame, character)
		end)
	end

	player.CharacterAdded:Connect(onCharacterAdded)

	if player.Character then
		onCharacterAdded(player.Character)
	end
end

for _, playerInstance in pairs(PlayersService:GetPlayers()) do
	createOrActivateInventoryUI(playerInstance)
end

PlayersService.PlayerAdded:Connect(createOrActivateInventoryUI)

local function monitorGlobalVariable()
	while true do
		for _, playerInstance in pairs(PlayersService:GetPlayers()) do
			if playerInstance.Character then
				local head = playerInstance.Character:FindFirstChild("Head")
				if head then
					local billboardGui = head:FindFirstChildOfClass("BillboardGui")
					if billboardGui then
						updateBillboardGui(billboardGui, billboardGui:FindFirstChildOfClass("Frame"), playerInstance.Character)
					end
				end
			end
		end
		wait(0.5)
	end
end

spawn(monitorGlobalVariable)



local player = game.Players.LocalPlayer

-- Локальные переменные для настройки
local playerChangeModificatorEnabled = false
local playerSpeed = 16
local playerJumpHeight = 50

local function debugPrint(...)
	if _G.Debugger then
		print("[MODIFICATORS DEBUG]", ...)
	end
end

local function simulatePlayerModifications(character)
	local humanoid = character:WaitForChild("Humanoid")
	local rootPart = character:WaitForChild("HumanoidRootPart")

	local connection
	connection = game:GetService("RunService").RenderStepped:Connect(function()
		if playerChangeModificatorEnabled and humanoid and rootPart then
			local moveDirection = humanoid.MoveDirection * (playerSpeed - humanoid.WalkSpeed) * game:GetService("RunService").RenderStepped:Wait()
			rootPart.CFrame = rootPart.CFrame + moveDirection

			if humanoid:GetState() == Enum.HumanoidStateType.Jumping then
				rootPart.Velocity = Vector3.new(rootPart.Velocity.X, playerJumpHeight, rootPart.Velocity.Z)
			end
		end
	end)

	humanoid.Died:Connect(function()
		connection:Disconnect()
		debugPrint("Гуманоид умер, отключение модификаций.")
	end)

	debugPrint("Симуляция увеличения скорости до: " .. playerSpeed)
	debugPrint("Симуляция увеличения высоты прыжка до: " .. playerJumpHeight)
end

player.CharacterAdded:Connect(simulatePlayerModifications)

if player.Character then
	simulatePlayerModifications(player.Character)
end



local Window = Fluent:CreateWindow({
	Title = "IA Hub " .. currentVersion,
	SubTitle = "by EntonioDMI",
	TabWidth = 160,
	Size = UDim2.fromOffset(580, 460),
	Acrylic = true,
	Theme = "Darker",
	MinimizeKey = Enum.KeyCode.LeftControl
})

local Tabs = {
	Highlight = Window:AddTab({ Title = "Highlights", Icon = "contact" }),
	ESP = Window:AddTab({ Title = "ESP", Icon = "book" }),
	Aimbot = Window:AddTab({ Title = "Aimbot", Icon = "circle-dot" }),
	PlayerHitboxes = Window:AddTab({ Title = "Player Hitboxes", Icon = "box" }),
	NPCsHitboxes = Window:AddTab({ Title = "NPCs & Bosses Hitboxes", Icon = "box" }),
	ItemViewer = Window:AddTab({ Title = "Item View", Icon = "align-center" }),
	Modificators = Window:AddTab({ Title = "Modificators", Icon = "person-standing" }),
	Other = Window:AddTab({ Title = "Other", Icon = "align-left" }),
}

local HighlightToggle = Tabs.Highlight:AddSection("Highlight On/Off")
local HighlightSettings = Tabs.Highlight:AddSection("Highlight Settings")
local ESPToggle = Tabs.ESP:AddSection("ESP On/Off")
local ESPSettings = Tabs.ESP:AddSection("ESP Settings")
local AimbotToggle = Tabs.Aimbot:AddSection("Aimbot On/Off")
local AimbotSettings = Tabs.Aimbot:AddSection("Aimbot Settings")
local HitboxToggle = Tabs.PlayerHitboxes:AddSection("Hitbox On/Off")
local HitboxSettings = Tabs.PlayerHitboxes:AddSection("Hitbox Settings")
local HitboxNPCsToggle = Tabs.NPCsHitboxes:AddSection("Hitbox On/Off")
local HitboxNPCsSettings = Tabs.NPCsHitboxes:AddSection("Hitbox Settings")
local ItemViewerToggle = Tabs.ItemViewer:AddSection("Item Viewer On/Off")
local ItemViewerSettings = Tabs.ItemViewer:AddSection("Item Viewer Settings")
local ModificatorsToggle = Tabs.Modificators:AddSection("Modificators On/Off")
local ModificatorsSettings = Tabs.Modificators:AddSection("Modificators Settings")
local Other = Tabs.Other:AddSection("Other stuff")



HighlightToggle:AddToggle("HighlightToggle", {
	Title = "Enable Highlights",
	Default = HighlightEnabled,
	Description = "Enable/disable highlights function",
	Callback = function(state)
		HighlightEnabled = state
	end
})

HighlightSettings:AddToggle("HighlightTeamCheck", {
	Title = "Enable Team Check",
	Default = HighlightTeamCheck,
	Description = "Enable/disable team check",
	Callback = function(state)
		HighlightTeamCheck = state
	end
})

HighlightSettings:AddToggle("HighlightTeamColor", {
	Title = "Enable Team Color",
	Default = AutoTeamColor,
	Description = "Enable/disable command color detection",
	Callback = function(state)
		AutoTeamColor = state
	end
})

local HighlightColorTransparencyPicker1 = HighlightSettings:AddColorpicker("TransparencyColorpicker1", {
	Title = "Highlight Color with Transparency",
	Description = "Select a color and adjust transparency",
	Transparency = FillTransparency,
	Default = CustomHighlightColor
})

HighlightColorTransparencyPicker1:OnChanged(function()
	CustomHighlightColor = HighlightColorTransparencyPicker1.Value
	FillTransparency = HighlightColorTransparencyPicker1.Transparency
end)

local OutlineColorTransparencyPicker2 = HighlightSettings:AddColorpicker("TransparencyColorpicker2", {
	Title = "Outline Color with Transparency",
	Description = "Select a color and adjust transparency",
	Transparency = FillTransparency,
	Default = CustomHighlightColor
})

OutlineColorTransparencyPicker2:OnChanged(function()
	CustomOutlineColor = OutlineColorTransparencyPicker2.Value
	OutlineTransparency = OutlineColorTransparencyPicker2.Transparency
end)

-- Добавление переключателей для ESP
ESPToggle:AddToggle("ESPToggle", {
	Title = "Enable ESP",
	Default = ESPEnabled,
	Description = "Enable/disable ESP functions",
	Callback = function(state)
		ESPEnabled = state
		UpdateESP()
	end
})

ESPSettings:AddToggle("ESPBoxToggle", {
	Title = "Enable Box",
	Default = BoxESPEnabled,
	Description = "Enable/disable box visualizer",
	Callback = function(state)
		BoxESPEnabled = state
		UpdateESP()
	end
})

ESPSettings:AddToggle("ESPLineToggle", {
	Title = "Enable Line",
	Default = LineESPEnabled,
	Description = "Enable/disable line visualizer",
	Callback = function(state)
		LineESPEnabled = state
		UpdateESP()
	end
})

ESPSettings:AddToggle("NameESPEnabled", {
	Title = "Enable Name",
	Default = NameESPEnabled,
	Description = "Enable/disable name visualizer",
	Callback = function(state)
		NameESPEnabled = state
		UpdateESP()
	end
})

ESPSettings:AddToggle("TeamCheckEnabledESP", {
	Title = "Enable Team Check",
	Default = TeamCheckEnabled,
	Description = "Enable/disable ESP Team Check",
	Callback = function(state)
		TeamCheckEnabled = state
		UpdateESP()
	end
})

-- Добавление цветовых палитр с прозрачностью
local BoxColorTransparencyPicker = ESPSettings:AddColorpicker("TransparencyColorpicker3", {
	Title = "Box Color with Transparency",
	Description = "Select a color and adjust transparency",
	Transparency = BoxTransparency,
	Default = BoxColor
})

BoxColorTransparencyPicker:OnChanged(function()
	BoxColor = BoxColorTransparencyPicker.Value
	BoxTransparency = BoxColorTransparencyPicker.Transparency
	UpdateESP()
end)

local LineColorTransparencyPicker4 = ESPSettings:AddColorpicker("TransparencyColorpicker4", {
	Title = "Line Color with Transparency",
	Description = "Select a color and adjust transparency",
	Transparency = LineTransparency,
	Default = LineColor
})

LineColorTransparencyPicker4:OnChanged(function()
	LineColor = LineColorTransparencyPicker4.Value
	LineTransparency = LineColorTransparencyPicker4.Transparency
	UpdateESP()
end)

local NameColorTransparencyPicker5 = ESPSettings:AddColorpicker("TransparencyColorpicker5", {
	Title = "Name Color with Transparency",
	Description = "Select a color and adjust transparency",
	Transparency = NameTransparency,
	Default = NameColor
})

NameColorTransparencyPicker5:OnChanged(function()
	NameColor = NameColorTransparencyPicker5.Value
	NameTransparency = NameColorTransparencyPicker5.Transparency
	UpdateESP()
end)

ESPSettings:AddToggle("NameUseDisplay", {
	Title = "Use Display Name",
	Default = NameUseDisplay,
	Description = "Use display name instead of username",
	Callback = function(state)
		NameUseDisplay = state
		UpdateESP()
	end
})

ESPSettings:AddToggle("NameDisplayHealth", {
	Title = "Display Health",
	Default = NameDisplayHealth,
	Description = "Display player health next to name",
	Callback = function(state)
		NameDisplayHealth = state
		UpdateESP()
	end
})

ESPSettings:AddDropdown("LineFromPosition", {
	Title = "Line From Position",
	Description = "Select the starting position for lines",
	Values = {"Bottom", "Top", "Mouse"},
	Multi = false,
	Default = LineFromPosition,
	Callback = function(value)
		LineFromPosition = value
		UpdateESP()
	end
})

AimbotToggle:AddToggle("AimbotEnabled", {
	Title = "Enable Aimbot",
	Description = "Toggle aimbot functionality",
	Default = aimbotEnabled,
	Callback = function(state)
		aimbotEnabled = state
	end
})

AimbotSettings:AddToggle("TeamCheck", {
	Title = "Team Check",
	Description = "Enable team checking",
	Default = teamCheck,
	Callback = function(state)
		teamCheck = state
	end
})

AimbotSettings:AddDropdown("AimPart", {
	Title = "Aim Part",
	Description = "Select which part to aim at",
	Values = {"Head", "Torso", "Leg"},
	Default = aimPart,
	Callback = function(value)
		aimPart = value
	end
})

AimbotSettings:AddSlider("Sensitivity", {
	Title = "Sensitivity",
	Description = "Adjust the aiming sensitivity",
	Default = sensitivity,
	Min = 0,
	Max = 1,
	Rounding = 2,
	Callback = function(value)
		sensitivity = value
	end
})

AimbotSettings:AddSlider("CircleSides", {
	Title = "Circle Sides",
	Description = "Number of sides for the FOV circle",
	Default = circleSides,
	Min = 3,
	Max = 64,
	Rounding = 0,
	Callback = function(value)
		circleSides = value
	end
})

AimbotSettings:AddColorpicker("CircleColor", {
	Title = "Circle Color",
	Description = "Choose the color for the FOV circle",
	Default = circleColor,
	Callback = function(color)
		circleColor = color
	end
})

AimbotSettings:AddSlider("CircleTransparency", {
	Title = "Circle Transparency",
	Description = "Set the transparency of the FOV circle",
	Default = circleTransparency,
	Min = 0,
	Max = 1,
	Rounding = 2,
	Callback = function(value)
		circleTransparency = value
	end
})

AimbotSettings:AddSlider("CircleRadius", {
	Title = "Circle Radius",
	Description = "Set the radius of the FOV circle",
	Default = circleRadius,
	Min = 10,
	Max = 300,
	Rounding = 0,
	Callback = function(value)
		circleRadius = value
	end
})

AimbotSettings:AddToggle("CircleFilled", {
	Title = "Circle Filled",
	Description = "Toggle if the FOV circle is filled",
	Default = circleFilled,
	Callback = function(state)
		circleFilled = state
	end
})

AimbotSettings:AddToggle("CircleVisible", {
	Title = "Circle Visible",
	Description = "Toggle the visibility of the FOV circle",
	Default = circleVisible,
	Callback = function(state)
		circleVisible = state
	end
})

AimbotSettings:AddSlider("CircleThickness", {
	Title = "Circle Thickness",
	Description = "Set the thickness of the FOV circle",
	Default = circleThickness,
	Min = 1,
	Max = 10,
	Rounding = 0,
	Callback = function(value)
		circleThickness = value
	end
})


HitboxToggle:AddToggle("disabled", {
	Title = "Hitbox Disabled",
	Default = disabled,
	Description = "Disable hitbox for players",
	Callback = function(state)
		disabled = not state
		if disabled then
			for _, v in ipairs(game:GetService('Players'):GetPlayers()) do
				if v ~= game:GetService('Players').LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
					local rootPart = v.Character.HumanoidRootPart
					rootPart.Size = Vector3.new(2, 2, 1)
					rootPart.Transparency = 1
					rootPart.Material = "Plastic"
				end
			end
		end
	end
})

HitboxSettings:AddSlider("headSize", {
	Title = "headSize",
	Description = "Change head size of players",
	Default = headSize,
	Min = 1,
	Max = 50,
	Rounding = 1,
	Callback = function(Value)
		headSize = Value
	end
})

local NameColorTransparencyPicker6 = HitboxSettings:AddColorpicker("TransparencyColorpicker5", {
	Title = "Hitbox Color with Transparency",
	Description = "Select a color and adjust transparency",
	Transparency = hitboxTransparency,
	Default = hitboxColor
})

NameColorTransparencyPicker6:OnChanged(function()
	hitboxColor = NameColorTransparencyPicker6.Value
	hitboxTransparency = NameColorTransparencyPicker6.Transparency
end)

HitboxSettings:AddToggle("hVaTeamCheck", {
	Title = "Team Check",
	Default = hVaTeamCheck,
	Description = "Enable team check",
	Callback = function(state)
		hVaTeamCheck = state
	end
})


HitboxNPCsToggle:AddToggle("EnableMinionHitboxes", {
	Title = "Enable NPCs",
	Default = EnableMinionHitboxes,
	Description = "Enable hitboxes for NPCs",
	Callback = function(state)
		EnableMinionHitboxes = state
	end
})

HitboxNPCsToggle:AddToggle("EnableBossHitboxes", {
	Title = "Enable Boss",
	Default = EnableBossHitboxes,
	Description = "Enable hitboxes for Bosses",
	Callback = function(state)
		EnableBossHitboxes = state
	end
})

HitboxNPCsSettings:AddSlider("MinionSize", {
	Title = "NPCs Size",
	Description = "Change head size of NPCs",
	Default = MinionSize,
	Min = 1,
	Max = 50,
	Rounding = 1,
	Callback = function(Value)
		MinionSize = Value
	end
})


HitboxNPCsSettings:AddSlider("BossSize", {
	Title = "Boss Size",
	Description = "Change head size of Boss",
	Default = BossSize,
	Min = 1,
	Max = 50,
	Rounding = 1,
	Callback = function(Value)
		BossSize = Value
	end
})

HitboxNPCsSettings:AddSlider("MinionTransparency", {
	Title = "NPCs Transparency",
	Description = "Change transparency of NPCs",
	Default = MinionTransparency,
	Min = 0,
	Max = 1,
	Rounding = 1,
	Callback = function(Value)
		MinionTransparency = Value
	end
})

HitboxNPCsSettings:AddSlider("BossTransparency", {
	Title = "Boss Transparency",
	Description = "Change transparency of Boss",
	Default = BossTransparency,
	Min = 0,
	Max = 1,
	Rounding = 1,
	Callback = function(Value)
		BossTransparency = Value
	end
})


ItemViewerToggle:AddToggle("enabledIAIt", {
	Title = "Enable ImVr",
	Default = enabledIAIt,
	Description = "Enable Item Viewer",
	Callback = function(state)
		enabledIAIt = state
	end
})

ItemViewerSettings:AddSlider("sizeMultiplier", {
	Title = "size Multiplier",
	Description = "Change size multiplayer of Icons",
	Default = sizeMultiplier,
	Min = 0.1,
	Max = 4,
	Rounding = 1,
	Callback = function(Value)
		sizeMultiplier = Value
	end
})

-- Инициализация переменной для компонента Y в studsOffset
local studsOffsetY = 3

-- Добавление слайдера для изменения компонента Y в studsOffset
ItemViewerSettings:AddSlider("studsOffsetY", {
	Title = "studs Offset",
	Description = "Change studs offset of Icons",
	Default = studsOffsetY,
	Min = 1,
	Max = 25,
	Rounding = 1,
	Callback = function(Value)
		studsOffsetY = Value
		studsOffset = Vector3.new(0, studsOffsetY, 0)
		-- Обновление всех GUI после изменения значения
		for _, playerInstance in pairs(PlayersService:GetPlayers()) do
			if playerInstance.Character then
				local head = playerInstance.Character:FindFirstChild("Head")
				if head then
					local billboardGui = head:FindFirstChildOfClass("BillboardGui")
					if billboardGui then
						updateBillboardGui(billboardGui, billboardGui:FindFirstChildOfClass("Frame"), playerInstance.Character)
					end
				end
			end
		end
	end
})


ItemViewerSettings:AddSlider("textSize", {
	Title = "text Size",
	Description = "Change text size of Icons",
	Default = textSize,
	Min = 10,
	Max = 70,
	Rounding = 1,
	Callback = function(Value)
		textSize = Value
		-- Обновление всех GUI после изменения значения
		for _, playerInstance in pairs(PlayersService:GetPlayers()) do
			if playerInstance.Character then
				local head = playerInstance.Character:FindFirstChild("Head")
				if head then
					local billboardGui = head:FindFirstChildOfClass("BillboardGui")
					if billboardGui then
						updateBillboardGui(billboardGui, billboardGui:FindFirstChildOfClass("Frame"), playerInstance.Character)
					end
				end
			end
		end
	end
})


ModificatorsToggle:AddToggle("playerChangeModificatorEnabled", {
	Title = "Modificator Enabled",
	Default = playerChangeModificatorEnabled,
	Description = "Enable Player Jump and Speed changer",
	Callback = function(state)
		playerChangeModificatorEnabled = state
	end
})

ModificatorsSettings:AddSlider("playerSpeed", {
	Title = "player Speed",
	Description = "Change player speed with bypassing",
	Default = playerSpeed,
	Min = 0,
	Max = 60,
	Rounding = 1,
	Callback = function(Value)
		playerSpeed = Value
	end
})

ModificatorsSettings:AddSlider("playerJumpHeight", {
	Title = "player Jump Height",
	Description = "Change player jump height with bypassing",
	Default = playerJumpHeight,
	Min = 0,
	Max = 150,
	Rounding = 1,
	Callback = function(Value)
		playerJumpHeight = Value
	end
})



-- Переменные для хранения списков друзей и врагов
_G.FriendList = {}
_G.Enemies = {}

-- Функция для получения списка всех игроков
local function GetAllPlayers()
	local players = {}
	for _, player in ipairs(game.Players:GetPlayers()) do
		table.insert(players, player.Name)
	end
	return players
end

-- Создание мульти-дропдаунов
local FriendDropdown = Other:AddDropdown("FriendDropdown", {
	Title = "Select Friends",
	Description = "Select players to add to Friends list",
	Values = GetAllPlayers(),
	Multi = true,
	Default = {}
})

local EnemyDropdown = Other:AddDropdown("EnemyDropdown", {
	Title = "Select Enemies",
	Description = "Select players to add to Enemies list",
	Values = GetAllPlayers(),
	Multi = true,
	Default = {}
})

-- Обработка изменений в мульти-дропдаунах
FriendDropdown:OnChanged(function(selectedValues)
	_G.FriendList = {}
	for playerName, isSelected in pairs(selectedValues) do
		if isSelected then
			table.insert(_G.FriendList, playerName)
		end
	end
	print("Friend list updated:", table.concat(_G.FriendList, ", "))
end)

EnemyDropdown:OnChanged(function(selectedValues)
	_G.Enemies = {}
	for playerName, isSelected in pairs(selectedValues) do
		if isSelected then
			table.insert(_G.Enemies, playerName)
		end
	end
	print("Enemies list updated:", table.concat(_G.Enemies, ", "))
end)

-- Кнопка для обновления списка игроков
Other:AddButton({
	Title = "Refresh Player List",
	Description = "Refresh the list of players",
	Callback = function()
		local players = GetAllPlayers()
		FriendDropdown:SetValues(players)
		EnemyDropdown:SetValues(players)
		print("Player list refreshed")
	end
})

Other:AddButton({
	Title = "Enable/Disable fastscope intervention effects.",
	Description = "Completely removes the effects when using the intervention. To re-enable the effects, just press the button again.",
	Callback = function()
		local player = game.Players.LocalPlayer
		local playerGui = player:WaitForChild("PlayerGui")
		local function findObject(parent, name)
			return parent:FindFirstChild(name)
		end

		local function moveObjectTo(parent, objectName, target)
			local object = findObject(parent, objectName)
			if object then
				object.Parent = target
				return true
			end
			return false
		end

		local function toggleMainLocation()
			local mlGui = findObject(playerGui, "MLGUI")
			if mlGui then
				if moveObjectTo(mlGui, "Main", game.Workspace) then
					showNotification("Success!", "You've completely turned off the intervention effects.")
				elseif moveObjectTo(game.Workspace, "Main", mlGui) then
					showNotification("Success!", "You've successfully restored the intervention effects.")
				else
					showNotification("Error!", "Main not found in the player's character, please equip the intervention or respawn.")
				end
			else
				showNotification("Error!", "MLGUI not found in the player's character, please equip the intervention.")
			end
		end

		toggleMainLocation()
	end

}) 

Other:AddButton({
	Title = "Toggle PlayingEmote",
	Description = "With this, when your weapon is locked, you can regain access to it. (Even if it's not an emotion blocking it)",
	Callback = function()
		-- Получаем сервис Players
		local players = game:GetService("Players")

		-- Получаем локального игрока
		local player = players.LocalPlayer

		-- Проверяем, найден ли игрок
		if player then
			-- Получаем переменную PlayingEmote
			local playingEmote = game.Workspace:FindFirstChild(player.Name):FindFirstChild("PlayingEmote")

			-- Проверяем, найдена ли переменная
			if playingEmote then
				-- Переключаем значение переменной
				playingEmote.Value = not playingEmote.Value
				print("PlayingEmote теперь:", playingEmote.Value)
			else
				print("Переменная PlayingEmote не найдена.")
			end
		else
			print("Локальный игрок не найден.")
		end
	end
})

-- Создаем кнопку в указанном табе
Other:AddButton({
	Title = "Toggle Debugger",
	Description = "Enable and disable debug mode. It lets you track some actions in the console (mainly made for me and you don't really need it).",
	Callback = function()
		-- Проверяем текущее состояние _G.Debugger и переключаем его
		if _G.Debugger then
			_G.Debugger = false
			print("Debugger выключен")
			-- Уведомление о выключении Debugger
			Fluent:Notify({
				Title = "Debugger Status",
				Content = "Debugger выключен",
				Duration = 3 -- Уведомление исчезнет через 3 секунды
			})
		else
			_G.Debugger = true
			print("Debugger включен")
			-- Уведомление о включении Debugger
			Fluent:Notify({
				Title = "Debugger Status",
				Content = "Debugger включен",
				Duration = 3 -- Уведомление исчезнет через 3 секунды
			})
		end
	end
})
