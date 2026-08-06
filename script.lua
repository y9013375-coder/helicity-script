local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local CoreGui = game:GetService("CoreGui")
local StarterGui = game:GetService("StarterGui")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local LocalPlayer = Players.LocalPlayer

local playerGui = LocalPlayer:WaitForChild("PlayerGui", 10)
if not playerGui then return end

local oldGui = playerGui:FindFirstChild("HelicityProHubV41") or CoreGui:FindFirstChild("HelicityProHubV41")
if oldGui then oldGui:Destroy() end

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "HelicityProHubV41"
ScreenGui.ResetOnSpawn = false

if gethui then
    pcall(function() ScreenGui.Parent = gethui() end)
end
if not ScreenGui.Parent then
    pcall(function() ScreenGui.Parent = CoreGui end)
end
if not ScreenGui.Parent then
    ScreenGui.Parent = playerGui
end

local MainFrame = Instance.new("Frame")
MainFrame.Size = UDim2.new(0, 260, 0, 370)
MainFrame.Position = UDim2.new(0.5, -130, 0.12, 0)
MainFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 20)
MainFrame.BorderSizePixel = 0
MainFrame.Active = true
MainFrame.Draggable = true
MainFrame.Parent = ScreenGui

local MainCorner = Instance.new("UICorner")
MainCorner.CornerRadius = UDim.new(0, 14)
MainCorner.Parent = MainFrame

local MainStroke = Instance.new("UIStroke")
MainStroke.Color = Color3.fromRGB(0, 170, 255)
MainStroke.Thickness = 1.5
MainStroke.Transparency = 0.3
MainStroke.Parent = MainFrame

local TitleBar = Instance.new("Frame")
TitleBar.Size = UDim2.new(1, 0, 0, 36)
TitleBar.BackgroundColor3 = Color3.fromRGB(22, 22, 30)
TitleBar.BorderSizePixel = 0
TitleBar.Parent = MainFrame

local TitleCorner = Instance.new("UICorner")
TitleCorner.CornerRadius = UDim.new(0, 14)
TitleCorner.Parent = TitleBar

local TitleFix = Instance.new("Frame")
TitleFix.Size = UDim2.new(1, 0, 0, 10)
TitleFix.Position = UDim2.new(0, 0, 1, -10)
TitleFix.BackgroundColor3 = Color3.fromRGB(22, 22, 30)
TitleFix.BorderSizePixel = 0
TitleFix.Parent = TitleBar

local TitleText = Instance.new("TextLabel")
TitleText.Size = UDim2.new(1, -45, 1, 0)
TitleText.Position = UDim2.new(0, 12, 0, 0)
TitleText.Text = "⚡ HELICITY PRO v4.1 ULTRA"
TitleText.TextColor3 = Color3.fromRGB(255, 255, 255)
TitleText.Font = Enum.Font.GothamBold
TitleText.TextSize = 12.5
TitleText.TextXAlignment = Enum.TextXAlignment.Left
TitleText.BackgroundTransparency = 1
TitleText.Parent = TitleBar

local MinimizeBtn = Instance.new("TextButton")
MinimizeBtn.Size = UDim2.new(0, 26, 0, 26)
MinimizeBtn.Position = UDim2.new(1, -31, 0, 5)
MinimizeBtn.BackgroundColor3 = Color3.fromRGB(35, 35, 45)
MinimizeBtn.Text = "—"
MinimizeBtn.TextColor3 = Color3.fromRGB(200, 200, 220)
MinimizeBtn.Font = Enum.Font.GothamBold
MinimizeBtn.TextSize = 12
MinimizeBtn.Parent = TitleBar

local MinBtnCorner = Instance.new("UICorner")
MinBtnCorner.CornerRadius = UDim.new(0, 8)
MinBtnCorner.Parent = MinimizeBtn

local OpenBtn = Instance.new("TextButton")
OpenBtn.Size = UDim2.new(0, 52, 0, 52)
OpenBtn.Position = UDim2.new(0, 15, 0.35, 0)
OpenBtn.BackgroundColor3 = Color3.fromRGB(15, 15, 22)
OpenBtn.Text = "⚡"
OpenBtn.TextColor3 = Color3.fromRGB(0, 170, 255)
OpenBtn.TextSize = 22
OpenBtn.Visible = false
OpenBtn.Active = true
OpenBtn.Draggable = true
OpenBtn.Parent = ScreenGui

local OpenCorner = Instance.new("UICorner")
OpenCorner.CornerRadius = UDim.new(0, 26)
OpenCorner.Parent = OpenBtn

local OpenStroke = Instance.new("UIStroke")
OpenStroke.Color = Color3.fromRGB(0, 170, 255)
OpenStroke.Thickness = 2
OpenStroke.Parent = OpenBtn

local ScrollContainer = Instance.new("ScrollingFrame")
ScrollContainer.Size = UDim2.new(1, -16, 1, -46)
ScrollContainer.Position = UDim2.new(0, 8, 0, 40)
ScrollContainer.BackgroundTransparency = 1
ScrollContainer.ScrollBarThickness = 2
ScrollContainer.ScrollBarImageColor3 = Color3.fromRGB(0, 170, 255)
ScrollContainer.CanvasSize = UDim2.new(0, 0, 0, 350)
ScrollContainer.Parent = MainFrame

local UIList = Instance.new("UIListLayout")
UIList.Padding = UDim.new(0, 7)
UIList.SortOrder = Enum.SortOrder.LayoutOrder
UIList.Parent = ScrollContainer

local RadarFrame = Instance.new("Frame")
RadarFrame.Size = UDim2.new(0, 220, 0, 165)
RadarFrame.Position = UDim2.new(0, 15, 0.52, 0)
RadarFrame.BackgroundColor3 = Color3.fromRGB(16, 16, 22)
RadarFrame.BorderSizePixel = 0
RadarFrame.Active = true
RadarFrame.Draggable = true
RadarFrame.Visible = false
RadarFrame.Parent = ScreenGui

local RadarCorner = Instance.new("UICorner")
RadarCorner.CornerRadius = UDim.new(0, 12)
RadarCorner.Parent = RadarFrame

local RadarStroke = Instance.new("UIStroke")
RadarStroke.Color = Color3.fromRGB(255, 140, 0)
RadarStroke.Thickness = 1.5
RadarStroke.Parent = RadarFrame

local RadarTitle = Instance.new("TextLabel")
RadarTitle.Size = UDim2.new(1, 0, 0, 26)
RadarTitle.Position = UDim2.new(0, 0, 0, 2)
RadarTitle.Text = "📡 TORNADO CANLI RADAR"
RadarTitle.TextColor3 = Color3.fromRGB(255, 165, 0)
RadarTitle.Font = Enum.Font.GothamBold
RadarTitle.TextSize = 11
RadarTitle.BackgroundTransparency = 1
RadarTitle.Parent = RadarFrame

local RadarContainer = Instance.new("Frame")
RadarContainer.Size = UDim2.new(1, -16, 1, -30)
RadarContainer.Position = UDim2.new(0, 8, 0, 26)
RadarContainer.BackgroundTransparency = 1
RadarContainer.Parent = RadarFrame

local RadarList = Instance.new("UIListLayout")
RadarList.Padding = UDim.new(0, 3)
RadarList.SortOrder = Enum.SortOrder.LayoutOrder
RadarList.Parent = RadarContainer

local function createRadarRow(labelTitle)
    local rowText = Instance.new("TextLabel")
    rowText.Size = UDim2.new(1, 0, 0, 17)
    rowText.Text = labelTitle .. ": ---"
    rowText.TextColor3 = Color3.fromRGB(220, 220, 230)
    rowText.Font = Enum.Font.GothamMedium
    rowText.TextSize = 10
    rowText.TextXAlignment = Enum.TextXAlignment.Left
    rowText.BackgroundTransparency = 1
    rowText.Parent = RadarContainer
    return rowText
end

local DistanceRow = createRadarRow("🎯 Mesafeniz")
local SpeedRow = createRadarRow("🚀 İlerleme Hızı")
local HeadingRow = createRadarRow("🧭 İlerleme Yönü")
local WindRow = createRadarRow("💨 Rüzgar Hızı")
local WidthRow = createRadarRow("📐 Genişlik (Çap)")
local EfRow = createRadarRow("⚠️ EF Seviyesi")

local function createToggle(titleText, order)
    local buttonFrame = Instance.new("Frame")
    buttonFrame.Size = UDim2.new(1, 0, 0, 42)
    buttonFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 33)
    buttonFrame.BorderSizePixel = 0
    buttonFrame.LayoutOrder = order
    buttonFrame.Parent = ScrollContainer

    local bCorner = Instance.new("UICorner")
    bCorner.CornerRadius = UDim.new(0, 8)
    bCorner.Parent = buttonFrame

    local bStroke = Instance.new("UIStroke")
    bStroke.Color = Color3.fromRGB(40, 40, 55)
    bStroke.Thickness = 1
    bStroke.Parent = buttonFrame

    local label = Instance.new("TextLabel")
    label.Size = UDim2.new(1, -75, 1, 0)
    label.Position = UDim2.new(0, 10, 0, 0)
    label.Text = titleText
    label.TextColor3 = Color3.fromRGB(220, 220, 230)
    label.Font = Enum.Font.GothamMedium
    label.TextSize = 11
    label.TextXAlignment = Enum.TextXAlignment.Left
    label.BackgroundTransparency = 1
    label.Parent = buttonFrame

    local statusBadge = Instance.new("Frame")
    statusBadge.Size = UDim2.new(0, 54, 0, 24)
    statusBadge.Position = UDim2.new(1, -60, 0.5, -12)
    statusBadge.BackgroundColor3 = Color3.fromRGB(180, 45, 45)
    statusBadge.BorderSizePixel = 0
    statusBadge.Parent = buttonFrame

    local badgeCorner = Instance.new("UICorner")
    badgeCorner.CornerRadius = UDim.new(0, 6)
    badgeCorner.Parent = statusBadge

    local statusText = Instance.new("TextLabel")
    statusText.Size = UDim2.new(1, 0, 1, 0)
    statusText.Text = "KAPALI"
    statusText.TextColor3 = Color3.fromRGB(255, 255, 255)
    statusText.Font = Enum.Font.GothamBold
    statusText.TextSize = 9.5
    statusText.BackgroundTransparency = 1
    statusText.Parent = statusBadge

    local triggerBtn = Instance.new("TextButton")
    triggerBtn.Size = UDim2.new(1, 0, 1, 0)
    triggerBtn.BackgroundTransparency = 1
    triggerBtn.Text = ""
    triggerBtn.Parent = buttonFrame

    return triggerBtn, statusBadge, statusText, bStroke
end

local PedBtn, PedBadge, PedStatus, PedStroke = createToggle("YERDE SABİTLE", 1)
local VehBtn, VehBadge, VehStatus, VehStroke = createToggle("ARABA KORUMASI", 2)
local InvBtn, InvBadge, InvStatus, InvStroke = createToggle("ARABA İÇİ PROBE TOPLAMA", 3)
local EspBtn, EspBadge, EspStatus, EspStroke = createToggle("TORNADO ESP & YÖN OKU", 4)
local RadarBtn, RadarBadge, RadarStatus, RadarStroke = createToggle("CANLI TORNADO RADARI", 5)
local SpeedBtn, SpeedBadge, SpeedStatus, SpeedStroke = createToggle("ARABA HIZLANDIRICI", 6)
local FpsBtn, FpsBadge, FpsStatus, FpsStroke = createToggle("SOFT FPS BOOSTER", 7)

local isPedAnchored = false
local isVehProtection = false
local isInvForced = false
local isEspActive = false
local isRadarActive = false
local isSpeedBoosted = false
local isFpsBoosted = false

local pedLoop, vehLoop, invLoop, speedLoop, radarTask = nil, nil, nil, nil, nil
local espElements = {}
local originalLightingState = {}

local function updateStateUI(badge, textLabel, stroke, state)
    if state then
        badge.BackgroundColor3 = Color3.fromRGB(40, 175, 80)
        textLabel.Text = "AÇIK"
        stroke.Color = Color3.fromRGB(0, 170, 255)
    else
        badge.BackgroundColor3 = Color3.fromRGB(180, 45, 45)
        textLabel.Text = "KAPALI"
        stroke.Color = Color3.fromRGB(40, 40, 55)
    end
end

local function getCompassDirection(dirVector)
    local angle = math.atan2(dirVector.X, -dirVector.Z)
    local degNormalized = (math.deg(angle)) % 360

    if degNormalized >= 337.5 or degNormalized < 22.5 then
        return "K (Kuzey)", math.floor(degNormalized)
    elseif degNormalized >= 22.5 and degNormalized < 67.5 then
        return "KD (Kuzeydoğu)", math.floor(degNormalized)
    elseif degNormalized >= 67.5 and degNormalized < 112.5 then
        return "D (Doğu)", math.floor(degNormalized)
    elseif degNormalized >= 112.5 and degNormalized < 157.5 then
        return "GD (Güneydoğu)", math.floor(degNormalized)
    elseif degNormalized >= 157.5 and degNormalized < 202.5 then
        return "G (Güney)", math.floor(degNormalized)
    elseif degNormalized >= 202.5 and degNormalized < 247.5 then
        return "GB (Güneybatı)", math.floor(degNormalized)
    elseif degNormalized >= 247.5 and degNormalized < 292.5 then
        return "B (Batı)", math.floor(degNormalized)
    elseif degNormalized >= 292.5 and degNormalized < 337.5 then
        return "KB (Kuzeybatı)", math.floor(degNormalized)
    end
    return "Bilinmiyor", 0
end

PedBtn.MouseButton1Click:Connect(function()
    isPedAnchored = not isPedAnchored
    updateStateUI(PedBadge, PedStatus, PedStroke, isPedAnchored)
    
    if isPedAnchored then
        if pedLoop then pedLoop:Disconnect() end
        pedLoop = RunService.Heartbeat:Connect(function()
            if isPedAnchored and LocalPlayer.Character then
                local root = LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                if root then root.Anchored = true end
            end
        end)
    else
        if pedLoop then pedLoop:Disconnect() pedLoop = nil end
        if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
            LocalPlayer.Character.HumanoidRootPart.Anchored = false
        end
    end
end)

VehBtn.MouseButton1Click:Connect(function()
    isVehProtection = not isVehProtection
    updateStateUI(VehBadge, VehStatus, VehStroke, isVehProtection)
    
    if isVehProtection then
        if vehLoop then vehLoop:Disconnect() end
        vehLoop = RunService.Heartbeat:Connect(function()
            if isVehProtection and LocalPlayer.Character then
                local hum = LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
                if hum and hum.SeatPart then
                    local seat = hum.SeatPart
                    local vehicle = seat:FindFirstAncestorOfClass("Model") or seat.Parent
                    if vehicle then
                        for _, part in ipairs(vehicle:GetDescendants()) do
                            if part:IsA("BasePart") then
                                local vel = part.AssemblyLinearVelocity
                                local ang = part.AssemblyAngularVelocity
                                part.AssemblyLinearVelocity = Vector3.new(vel.X, math.min(vel.Y, -25), vel.Z)
                                part.AssemblyAngularVelocity = Vector3.new(0, ang.Y, 0)
                            end
                        end
                    end
                end
            end
        end)
    else
        if vehLoop then vehLoop:Disconnect() vehLoop = nil end
    end
end)

InvBtn.MouseButton1Click:Connect(function()
    isInvForced = not isInvForced
    updateStateUI(InvBadge, InvStatus, InvStroke, isInvForced)
    
    if isInvForced then
        if invLoop then invLoop:Disconnect() end
        invLoop = RunService.RenderStepped:Connect(function()
            if isInvForced then
                pcall(function()
                    StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, true)
                end)
                for _, prompt in ipairs(Workspace:GetDescendants()) do
                    if prompt:IsA("ProximityPrompt") then
                        prompt.MaxActivationDistance = 60
                        prompt.RequiresLineOfSight = false
                        prompt.HoldDuration = 0
                    end
                end
            end
        end)
    else
        if invLoop then invLoop:Disconnect() invLoop = nil end
    end
end)

local function clearEsp()
    for obj, items in pairs(espElements) do
        pcall(function()
            if items.Highlight and items.Highlight.Parent then items.Highlight:Destroy() end
            if items.Beam and items.Beam.Parent then items.Beam:Destroy() end
            if items.Att0 and items.Att0.Parent then items.Att0:Destroy() end
            if items.Att1 and items.Att1.Parent then items.Att1:Destroy() end
        end)
    end
    espElements = {}
end

local function applyEsp(obj)
    if not isEspActive then return end
    local name = obj.Name:lower()
    if name:find("tornado") or name:find("funnel") or name:find("vortex") or name:find("meso") or name:find("twister") then
        if not espElements[obj] then
            local rootPart = obj:IsA("BasePart") and obj or obj:FindFirstChildWhichIsA("BasePart", true)
            if not rootPart then return end

            local hl = Instance.new("Highlight")
            hl.Name = "TornadoESP_Chams"
            hl.FillColor = Color3.fromRGB(255, 30, 30)
            hl.FillTransparency = 0.35
            hl.OutlineColor = Color3.fromRGB(255, 255, 255)
            hl.OutlineTransparency = 0.1
            hl.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            hl.Adornee = obj
            hl.Parent = obj

            local att0 = Instance.new("Attachment", rootPart)
            local att1 = Instance.new("Attachment", Workspace.Terrain)
            
            local beam = Instance.new("Beam")
            beam.Texture = "rbxassetid://431627270"
            beam.TextureSpeed = 2
            beam.TextureLength = 10
            beam.Width0 = 14
            beam.Width1 = 22
            beam.Color = ColorSequence.new(Color3.fromRGB(255, 50, 50), Color3.fromRGB(255, 200, 0))
            beam.FaceCamera = true
            beam.Attachment0 = att0
            beam.Attachment1 = att1
            beam.Parent = rootPart

            espElements[obj] = {
                Highlight = hl,
                Beam = beam,
                Att0 = att0,
                Att1 = att1,
                LastPos = rootPart.Position,
                Part = rootPart
            }
        end
    end
end

EspBtn.MouseButton1Click:Connect(function()
    isEspActive = not isEspActive
    updateStateUI(EspBadge, EspStatus, EspStroke, isEspActive)
    
    if isEspActive then
        for _, obj in ipairs(Workspace:GetDescendants()) do
            if obj:IsA("Model") or obj:IsA("BasePart") then
                applyEsp(obj)
            end
        end

        task.spawn(function()
            while isEspActive do
                RunService.Heartbeat:Wait()
                for obj, data in pairs(espElements) do
                    if data.Part and data.Part.Parent then
                        local currentPos = data.Part.Position
                        local velocity = (currentPos - data.LastPos)
                        data.LastPos = currentPos

                        if velocity.Magnitude > 0.08 then
                            local dir = velocity.Unit
                            local targetPos = currentPos + (dir * 200)
                            data.Att1.WorldPosition = targetPos
                        else
                            data.Att1.WorldPosition = currentPos + Vector3.new(0, 5, 0)
                        end
                    end
                end
            end
        end)
    else
        clearEsp()
    end
end)

RadarBtn.MouseButton1Click:Connect(function()
    isRadarActive = not isRadarActive
    updateStateUI(RadarBadge, RadarStatus, RadarStroke, isRadarActive)
    RadarFrame.Visible = isRadarActive

    if isRadarActive then
        radarTask = task.spawn(function()
            local lastTornadoPos = nil
            local lastTime = os.clock()

            while isRadarActive do
                task.wait(0.25)
                local closestTornado = nil
                local minDistance = math.huge
                local playerPos = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and LocalPlayer.Character.HumanoidRootPart.Position

                if playerPos then
                    for _, obj in ipairs(Workspace:GetDescendants()) do
                        local name = obj.Name:lower()
                        if (name:find("tornado") or name:find("funnel") or name:find("vortex") or name:find("meso") or name:find("twister")) and (obj:IsA("Model") or obj:IsA("BasePart")) then
                            local part = obj:IsA("BasePart") and obj or obj:FindFirstChildWhichIsA("BasePart", true)
                            if part then
                                local dist = (part.Position - playerPos).Magnitude
                                if dist < minDistance then
                                    minDistance = dist
                                    closestTornado = {Model = obj, Part = part}
                                end
                            end
                        end
                    end
                end

                if closestTornado then
                    local now = os.clock()
                    local dt = math.max(now - lastTime, 0.1)
                    lastTime = now

                    local currentPos = closestTornado.Part.Position
                    local moveSpeedMph = 0
                    local headingStr = "Duruyor / Sabit"

                    if lastTornadoPos then
                        local moveVec = (currentPos - lastTornadoPos)
                        local distMoved = moveVec.Magnitude
                        moveSpeedMph = math.floor((distMoved / dt) * 1.5)

                        if distMoved > 0.15 then
                            local compassName, deg = getCompassDirection(moveVec.Unit)
                            headingStr = compassName .. " (" .. deg .. "°)"
                        end
                    end
                    lastTornadoPos = currentPos

                    local sizeX = 40
                    if closestTornado.Model:IsA("Model") then
                        local size = closestTornado.Model:GetExtentsSize()
                        sizeX = math.floor(math.max(size.X, size.Z))
                    end

                    local windSpeedMph = math.floor((sizeX * 2
