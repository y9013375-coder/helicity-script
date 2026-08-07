local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local CoreGui = game:GetService("CoreGui")
local StarterGui = game:GetService("StarterGui")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")

local LocalPlayer = Players.LocalPlayer
while not LocalPlayer do
    task.wait(0.1)
    LocalPlayer = Players.LocalPlayer
end

local function getSafeGuiParent()
    local target = nil
    if gethui then
        pcall(function() target = gethui() end)
    end
    if not target then
        pcall(function() target = CoreGui end)
    end
    if not target then
        target = LocalPlayer:WaitForChild("PlayerGui", 10)
    end
    return target
end

local parentGui = getSafeGuiParent()
if not parentGui then return end

pcall(function()
    local old1 = parentGui:FindFirstChild("HelicityMasterpieceV5")
    if old1 then old1:Destroy() end
    local old2 = LocalPlayer.PlayerGui:FindFirstChild("HelicityMasterpieceV5")
    if old2 then old2:Destroy() end
end)

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "HelicityMasterpieceV5"
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = parentGui

task.spawn(function()
    local toast = Instance.new("Frame")
    toast.Size = UDim2.new(0, 240, 0, 38)
    toast.Position = UDim2.new(0.5, -120, 0.04, 0)
    toast.BackgroundColor3 = Color3.fromRGB(0, 180, 90)
    toast.BorderSizePixel = 0
    toast.Parent = ScreenGui

    local tCorner = Instance.new("UICorner")
    tCorner.CornerRadius = UDim.new(0, 8)
    tCorner.Parent = toast

    local tStroke = Instance.new("UIStroke")
    tStroke.Color = Color3.fromRGB(255, 255, 255)
    tStroke.Thickness = 1
    tStroke.Transparency = 0.5
    tStroke.Parent = toast

    local tText = Instance.new("TextLabel")
    tText.Size = UDim2.new(1, 0, 1, 0)
    tText.Text = "⚡ HELICITY PRO v5.0 MASTERPIECE LOADED!"
    tText.TextColor3 = Color3.fromRGB(255, 255, 255)
    tText.Font = Enum.Font.GothamBold
    tText.TextSize = 10.5
    tText.BackgroundTransparency = 1
    tText.Parent = toast

    task.wait(2.5)
    toast:Destroy()
end)

local MainFrame = Instance.new("Frame")
MainFrame.Size = UDim2.new(0, 260, 0, 380)
MainFrame.Position = UDim2.new(0.5, -130, 0.1, 0)
MainFrame.BackgroundColor3 = Color3.fromRGB(14, 14, 18)
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
MainStroke.Transparency = 0.2
MainStroke.Parent = MainFrame

local TitleBar = Instance.new("Frame")
TitleBar.Size = UDim2.new(1, 0, 0, 38)
TitleBar.BackgroundColor3 = Color3.fromRGB(20, 20, 28)
TitleBar.BorderSizePixel = 0
TitleBar.Parent = MainFrame

local TitleCorner = Instance.new("UICorner")
TitleCorner.CornerRadius = UDim.new(0, 14)
TitleCorner.Parent = TitleBar

local TitleFix = Instance.new("Frame")
TitleFix.Size = UDim2.new(1, 0, 0, 10)
TitleFix.Position = UDim2.new(0, 0, 1, -10)
TitleFix.BackgroundColor3 = Color3.fromRGB(20, 20, 28)
TitleFix.BorderSizePixel = 0
TitleFix.Parent = TitleBar

local TitleText = Instance.new("TextLabel")
TitleText.Size = UDim2.new(1, -45, 1, 0)
TitleText.Position = UDim2.new(0, 12, 0, 0)
TitleText.Text = "⚡ HELICITY PRO v5.0 MASTER"
TitleText.TextColor3 = Color3.fromRGB(255, 255, 255)
TitleText.Font = Enum.Font.GothamBold
TitleText.TextSize = 12
TitleText.TextXAlignment = Enum.TextXAlignment.Left
TitleText.BackgroundTransparency = 1
TitleText.Parent = TitleBar

local MinimizeBtn = Instance.new("TextButton")
MinimizeBtn.Size = UDim2.new(0, 28, 0, 28)
MinimizeBtn.Position = UDim2.new(1, -33, 0, 5)
MinimizeBtn.BackgroundColor3 = Color3.fromRGB(35, 35, 48)
MinimizeBtn.Text = "—"
MinimizeBtn.TextColor3 = Color3.fromRGB(220, 220, 240)
MinimizeBtn.Font = Enum.Font.GothamBold
MinimizeBtn.TextSize = 13
MinimizeBtn.Parent = TitleBar

local MinBtnCorner = Instance.new("UICorner")
MinBtnCorner.CornerRadius = UDim.new(0, 7)
MinBtnCorner.Parent = MinimizeBtn

local OpenBtn = Instance.new("TextButton")
OpenBtn.Size = UDim2.new(0, 50, 0, 50)
OpenBtn.Position = UDim2.new(0, 12, 0.35, 0)
OpenBtn.BackgroundColor3 = Color3.fromRGB(14, 14, 20)
OpenBtn.Text = "⚡"
OpenBtn.TextColor3 = Color3.fromRGB(0, 170, 255)
OpenBtn.TextSize = 22
OpenBtn.Visible = false
OpenBtn.Active = true
OpenBtn.Draggable = true
OpenBtn.Parent = ScreenGui

local OpenCorner = Instance.new("UICorner")
OpenCorner.CornerRadius = UDim.new(0, 25)
OpenCorner.Parent = OpenBtn

local OpenStroke = Instance.new("UIStroke")
OpenStroke.Color = Color3.fromRGB(0, 170, 255)
OpenStroke.Thickness = 2
OpenStroke.Parent = OpenBtn

local ScrollContainer = Instance.new("ScrollingFrame")
ScrollContainer.Size = UDim2.new(1, -14, 1, -46)
ScrollContainer.Position = UDim2.new(0, 7, 0, 42)
ScrollContainer.BackgroundTransparency = 1
ScrollContainer.ScrollBarThickness = 3
ScrollContainer.ScrollBarImageColor3 = Color3.fromRGB(0, 170, 255)
ScrollContainer.CanvasSize = UDim2.new(0, 0, 0, 510)
ScrollContainer.Parent = MainFrame

local UIList = Instance.new("UIListLayout")
UIList.Padding = UDim.new(0, 6)
UIList.SortOrder = Enum.SortOrder.LayoutOrder
UIList.Parent = ScrollContainer

local RadarFrame = Instance.new("Frame")
RadarFrame.Size = UDim2.new(0, 215, 0, 160)
RadarFrame.Position = UDim2.new(0, 12, 0.55, 0)
RadarFrame.BackgroundColor3 = Color3.fromRGB(14, 14, 20)
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
RadarTitle.Text = "📡 CANLI TORNADO RADARI"
RadarTitle.TextColor3 = Color3.fromRGB(255, 165, 0)
RadarTitle.Font = Enum.Font.GothamBold
RadarTitle.TextSize = 10.5
RadarTitle.BackgroundTransparency = 1
RadarTitle.Parent = RadarFrame

local RadarContainer = Instance.new("Frame")
RadarContainer.Size = UDim2.new(1, -14, 1, -30)
RadarContainer.Position = UDim2.new(0, 7, 0, 26)
RadarContainer.BackgroundTransparency = 1
RadarContainer.Parent = RadarFrame

local RadarList = Instance.new("UIListLayout")
RadarList.Padding = UDim.new(0, 2)
RadarList.Parent = RadarContainer

local function createRadarRow(labelTitle)
    local rowText = Instance.new("TextLabel")
    rowText.Size = UDim2.new(1, 0, 0, 17)
    rowText.Text = labelTitle .. ": ---"
    rowText.TextColor3 = Color3.fromRGB(220, 220, 230)
    rowText.Font = Enum.Font.GothamMedium
    rowText.TextSize = 9.5
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

local function createActionButton(titleText, order, color)
    local buttonFrame = Instance.new("Frame")
    buttonFrame.Size = UDim2.new(1, 0, 0, 42)
    buttonFrame.BackgroundColor3 = Color3.fromRGB(22, 22, 30)
    buttonFrame.BorderSizePixel = 0
    buttonFrame.LayoutOrder = order
    buttonFrame.Parent = ScrollContainer

    local bCorner = Instance.new("UICorner")
    bCorner.CornerRadius = UDim.new(0, 8)
    bCorner.Parent = buttonFrame

    local bStroke = Instance.new("UIStroke")
    bStroke.Color = color or Color3.fromRGB(0, 170, 255)
    bStroke.Thickness = 1.2
    bStroke.Parent = buttonFrame

    local triggerBtn = Instance.new("TextButton")
    triggerBtn.Size = UDim2.new(1, 0, 1, 0)
    triggerBtn.BackgroundTransparency = 1
    triggerBtn.Text = titleText
    triggerBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
    triggerBtn.Font = Enum.Font.GothamBold
    triggerBtn.TextSize = 10.5
    triggerBtn.Parent = buttonFrame

    return triggerBtn
end

local function createToggle(titleText, order)
    local buttonFrame = Instance.new("Frame")
    buttonFrame.Size = UDim2.new(1, 0, 0, 42)
    buttonFrame.BackgroundColor3 = Color3.fromRGB(22, 22, 30)
    buttonFrame.BorderSizePixel = 0
    buttonFrame.LayoutOrder = order
    buttonFrame.Parent = ScrollContainer

    local bCorner = Instance.new("UICorner")
    bCorner.CornerRadius = UDim.new(0, 8)
    bCorner.Parent = buttonFrame

    local bStroke = Instance.new("UIStroke")
    bStroke.Color = Color3.fromRGB(35, 35, 48)
    bStroke.Thickness = 1
    bStroke.Parent = buttonFrame

    local label = Instance.new("TextLabel")
    label.Size = UDim2.new(1, -72, 1, 0)
    label.Position = UDim2.new(0, 8, 0, 0)
    label.Text = titleText
    label.TextColor3 = Color3.fromRGB(220, 220, 230)
    label.Font = Enum.Font.GothamMedium
    label.TextSize = 10.5
    label.TextXAlignment = Enum.TextXAlignment.Left
    label.BackgroundTransparency = 1
    label.Parent = buttonFrame

    local statusBadge = Instance.new("Frame")
    statusBadge.Size = UDim2.new(0, 52, 0, 22)
    statusBadge.Position = UDim2.new(1, -58, 0.5, -11)
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
    statusText.TextSize = 9
    statusText.BackgroundTransparency = 1
    statusText.Parent = statusBadge

    local triggerBtn = Instance.new("TextButton")
    triggerBtn.Size = UDim2.new(1, 0, 1, 0)
    triggerBtn.BackgroundTransparency = 1
    triggerBtn.Text = ""
    triggerBtn.Parent = buttonFrame

    return triggerBtn, statusBadge, statusText, bStroke
end

local TpPedBtn = createActionButton("🌀 HORTUMA ISINLAN (YAYAN)", 1, Color3.fromRGB(147, 51, 234))
local TpVehBtn = createActionButton("🚗 HORTUMA ISINLAN (ARABA)", 2, Color3.fromRGB(249, 115, 22))

local PedBtn, PedBadge, PedStatus, PedStroke = createToggle("YERDE SABİTLE", 3)
local VehBtn, VehBadge, VehStatus, VehStroke = createToggle("ARABA KORUMASI", 4)
local InvBtn, InvBadge, InvStatus, InvStroke = createToggle("ARABA İÇİ PROBE TOPLAMA", 5)
local EspBtn, EspBadge, EspStatus, EspStroke = createToggle("TORNADO ESP & YÖN OKU", 6)
local RadarBtn, RadarBadge, RadarStatus, RadarStroke = createToggle("CANLI TORNADO RADARI", 7)
local SpeedBtn, SpeedBadge, SpeedStatus, SpeedStroke = createToggle("200 MPH ARABA HIZI", 8)
local FpsBtn, FpsBadge, FpsStatus, FpsStroke = createToggle("SOFT FPS BOOSTER", 9)

local isPedAnchored, isVehProtection, isInvForced = false, false, false
local isEspActive, isRadarActive, isSpeedBoosted, isFpsBoosted = false, false, false, false
local pedLoop, vehLoop, invLoop, speedLoop, radarTask = nil, nil, nil, nil, nil
local espElements = {}
local originalLightingState = {}

local function updateStateUI(badge, textLabel, stroke, state)
    if state then
        badge.BackgroundColor3 = Color3.fromRGB(34, 197, 94)
        textLabel.Text = "AÇIK"
        stroke.Color = Color3.fromRGB(0, 170, 255)
    else
        badge.BackgroundColor3 = Color3.fromRGB(239, 68, 68)
        textLabel.Text = "KAPALI"
        stroke.Color = Color3.fromRGB(35, 35, 48)
    end
end

local function getActiveTornadoPart()
    local bestPart = nil
    local highestScore = -1
    local playerPos = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and LocalPlayer.Character.HumanoidRootPart.Position

    for _, obj in ipairs(Workspace:GetDescendants()) do
        local name = obj.Name:lower()
        if not name:find("zone") and not name:find("track") and not name:find("station") and not name:find("radar") and not name:find("boundary") and not name:find("area") and not name:find("gui") then
            if name:find("tornado") or name:find("funnel") or name:find("vortex") or name:find("twister") or name:find("meso") or name:find("touchdown") then
                local part = nil
                if obj:IsA("BasePart") then
                    part = obj
                elseif obj:IsA("Model") then
                    part = obj.PrimaryPart or obj:FindFirstChildWhichIsA("BasePart", true)
                end

                if part then
                    local score = 0
                    
                    if obj:FindFirstChildWhichIsA("ParticleEmitter", true) or obj:FindFirstChildWhichIsA("Beam", true) or obj:FindFirstChildWhichIsA("Smoke", true) then
                        score = score + 60
                    end
                    
                    local sizeVector = obj:IsA("Model") and obj:GetExtentsSize() or part.Size
                    if sizeVector.Y > 12 or sizeVector.X > 12 then
                        score = score + 30
                    end

                    if playerPos then
                        local dist = (part.Position - playerPos).Magnitude
                        score = score + math.max(0, 5000 - dist) / 50
                    end

                    if score > highestScore then
                        highestScore = score
                        bestPart = part
                    end
                end
            end
        end
    end
    return bestPart
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

TpPedBtn.MouseButton1Click:Connect(function()
    local tornadoPart = getActiveTornadoPart()
    if not tornadoPart then return end
    
    local char = LocalPlayer.Character
    if char and char:FindFirstChild("HumanoidRootPart") then
        local lookDir = tornadoPart.CFrame.LookVector
        if lookDir.Magnitude < 0.1 then lookDir = Vector3.new(0, 0, -1) end
        
        local spawnPos = tornadoPart.Position + (lookDir * -220) + Vector3.new(0, 6, 0)
        char.HumanoidRootPart.CFrame = CFrame.lookAt(spawnPos, tornadoPart.Position)
    end
end)

TpVehBtn.MouseButton1Click:Connect(function()
    local tornadoPart = getActiveTornadoPart()
    if not tornadoPart then return end
    
    local char = LocalPlayer.Character
    if char then
        local hum = char:FindFirstChildOfClass("Humanoid")
        local lookDir = tornadoPart.CFrame.LookVector
        if lookDir.Magnitude < 0.1 then lookDir = Vector3.new(0, 0, -1) end
        
        local spawnPos = tornadoPart.Position + (lookDir * -260) + Vector3.new(0, 8, 0)
        local targetCFrame = CFrame.lookAt(spawnPos, tornadoPart.Position)

        if hum and hum.SeatPart then
            local seat = hum.SeatPart
            local vehicle = seat:FindFirstAncestorOfClass("Model") or seat.Parent
            if vehicle then
                for _, part in ipairs(vehicle:GetDescendants()) do
                    if part:IsA("BasePart") then
                        part.AssemblyLinearVelocity = Vector3.zero
                        part.AssemblyAngularVelocity = Vector3.zero
                    end
                end
                vehicle:PivotTo(targetCFrame)
            end
        else
            if char:FindFirstChild("HumanoidRootPart") then
                char.HumanoidRootPart.CFrame = targetCFrame
            end
        end
    end
end)

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
                                part.AssemblyLinearVelocity = Vector3.new(vel.X, math.min(vel.Y, -30), vel.Z)
                                part.AssemblyAngularVelocity = Vector3.new(0, part.AssemblyAngularVelocity.Y * 0.2, 0)
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
        invLoop = RunService.Heartbeat:Connect(function()
            if isInvForced then
                pcall(function() StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, true) end)
                for _, prompt in ipairs(Workspace:GetDescendants()) do
                    if prompt:IsA("ProximityPrompt") then
                        prompt.MaxActivationDistance = 80
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
    if (name:find("tornado") or name:find("funnel") or name:find("vortex") or name:find("twister")) and not name:find("zone") and not name:find("track") then
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
            if obj:IsA("Model") or obj:IsA("BasePart") then applyEsp(obj) end
        end
        task.spawn(function()
            while isEspActive do
                task.wait(0.15)
                for obj, data in pairs(espElements) do
                    if data.Part and data.Part.Parent then
                        local currentPos = data.Part.Position
                        local velocity = (currentPos - data.LastPos)
                        data.LastPos = currentPos
                        if velocity.Magnitude > 0.08 then
                            local dir = velocity.Unit
                            data.Att1.WorldPosition = currentPos + (dir * 220)
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
                task.wait(0.4)
                local closestTornadoPart = getActiveTornadoPart()
                local playerPos = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and LocalPlayer.Character.HumanoidRootPart.Position

                if closestTornadoPart and playerPos then
                    local minDistance = (closestTornadoPart.Position - playerPos).Magnitude
                    local now = os.clock()
                    local dt = math.max(now - lastTime, 0.1)
                    lastTime = now

                    local currentPos = closestTornadoPart.Position
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

                    local sizeX = 45
                    local parentModel = closestTornadoPart:FindFirstAncestorOfClass("Model")
                    if parentModel then
                        local size = parentModel:GetExtentsSize()
                        sizeX = math.floor(math.max(size.X, size.Z))
                    end

                    local windSpeedMph = math.floor((sizeX * 2.2) + (moveSpeedMph * 2.8) + 40)
                    local efScale = "EF0"
                    local efColor = Color3.fromRGB(120, 220, 120)

                    if windSpeedMph >= 200 or sizeX > 250 then
                        efScale = "EF5 😈"
                        efColor = Color3.fromRGB(255, 0, 0)
                    elseif windSpeedMph >= 165 or sizeX > 190 then
                        efScale = "EF4 🩸"
                        efColor = Color3.fromRGB(255, 70, 0)
                    elseif windSpeedMph >= 135 or sizeX > 140 then
                        efScale = "EF3 ⚡"
                        efColor = Color3.fromRGB(255, 140, 0)
                    elseif windSpeedMph >= 110 or sizeX > 90 then
                        efScale = "EF2 🔥"
                        efColor = Color3.fromRGB(255, 215, 0)
                    elseif windSpeedMph >= 85 or sizeX > 50 then
                        efScale = "EF1 🥀"
                        efColor = Color3.fromRGB(180, 220, 60)
                    end

                    DistanceRow.Text = "🎯 Mesafeniz: " .. math.floor(minDistance) .. " Studs"
                    SpeedRow.Text = "🚀 İlerleme Hızı: " .. moveSpeedMph .. " MPH"
                    HeadingRow.Text = "🧭 İlerleme Yönü: " .. headingStr
                    WindRow.Text = "💨 Rüzgar Hızı: ~" .. windSpeedMph .. " MPH"
                    WidthRow.Text = "📐 Genişlik: " .. sizeX .. " Metre"
                    EfRow.Text = "⚠️ EF Seviyesi: " .. efScale
                    EfRow.TextColor3 = efColor
                else
                    DistanceRow.Text = "🎯 Mesafeniz: Kasırga Bulunamadı"
                    SpeedRow.Text = "🚀 İlerleme Hızı: ---"
                    HeadingRow.Text = "🧭 İlerleme Yönü: ---"
                    WindRow.Text = "💨 Rüzgar Hızı: ---"
                    WidthRow.Text = "📐 Genişlik: ---"
                    EfRow.Text = "⚠️ EF Seviyesi: ---"
                    EfRow.TextColor3 = Color3.fromRGB(220, 220, 230)
                end
            end
        end)
    else
        if radarTask then task.cancel(radarTask) radarTask = nil end
    end
end)

SpeedBtn.MouseButton1Click:Connect(function()
    isSpeedBoosted = not isSpeedBoosted
    updateStateUI(SpeedBadge, SpeedStatus, SpeedStroke, isSpeedBoosted)
    if isSpeedBoosted then
        if speedLoop then speedLoop:Disconnect() end
        speedLoop = RunService.Heartbeat:Connect(function()
            if isSpeedBoosted and LocalPlayer.Character then
                local hum = LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
                if hum and hum.SeatPart and hum.SeatPart:IsA("VehicleSeat") then
                    local seat = hum.SeatPart
                    pcall(function() seat.MaxSpeed = 250 end)
                    if seat.ThrottleFloat ~= 0 then
                        local currentVel = seat.AssemblyLinearVelocity
                        local forwardSpeed = seat.CFrame.LookVector:Dot(currentVel)
                        if forwardSpeed < 200 then
                            seat.AssemblyLinearVelocity = seat.AssemblyLinearVelocity + (seat.CFrame.LookVector * (seat.ThrottleFloat * 3.8))
                        end
                    end
                end
            end
        end)
    else
        if speedLoop then speedLoop:Disconnect() speedLoop = nil end
    end
end)

FpsBtn.MouseButton1Click:Connect(function()
    isFpsBoosted = not isFpsBoosted
    updateStateUI(FpsBadge, FpsStatus, FpsStroke, isFpsBoosted)
    if isFpsBoosted then
        pcall(function()
            originalLightingState.GlobalShadows = Lighting.GlobalShadows
            Lighting.GlobalShadows = false
            for _, v in ipairs(Lighting:GetChildren()) do
                if v:IsA("PostEffect") or v:IsA("BlurEffect") or v:IsA("SunRaysEffect") or v:IsA("BloomEffect") or v:IsA("DepthOfFieldEffect") then
                    v.Enabled = false
                end
            end
            local terrain = Workspace:FindFirstChildOfClass("Terrain")
            if terrain then terrain.Decoration = false end
            for _, v in ipairs(Workspace:GetDescendants()) do
                if v:IsA("ParticleEmitter") or v:IsA("Smoke") or v:IsA("Fire") or v:IsA("Sparkles") then
                    v.Enabled = false
                end
            end
            if setfpscap then setfpscap(120) end
        end)
    else
        pcall(function()
            if originalLightingState.GlobalShadows ~= nil then
                Lighting.GlobalShadows = originalLightingState.GlobalShadows
            end
            for _, v in ipairs(Lighting:GetChildren()) do
                if v:IsA("PostEffect") or v:IsA("BlurEffect") or v:IsA("SunRaysEffect") or v:IsA("BloomEffect") or v:IsA("DepthOfFieldEffect") then
                    v.Enabled = true
                end
            end
            local terrain = Workspace:FindFirstChildOfClass("Terrain")
            if terrain then terrain.Decoration = true end
            for _, v in ipairs(Workspace:GetDescendants()) do
                if v:IsA("ParticleEmitter") or v:IsA("Smoke") or v:IsA("Fire") or v:IsA("Sparkles") then
                    v.Enabled = true
                end
            end
        end)
    end
end)

MinimizeBtn.MouseButton1Click:Connect(function()
    MainFrame.Visible = false
    OpenBtn.Visible = true
end)

OpenBtn.MouseButton1Click:Connect(function()
    OpenBtn.Visible = false
    MainFrame.Visible = true
end)
