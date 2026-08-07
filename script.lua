local success, err = pcall(function()
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

    local playerGui = LocalPlayer:WaitForChild("PlayerGui", 15)
    if not playerGui then
        error("PlayerGui bulunamadi!")
    end

    local oldGui = playerGui:FindFirstChild("HelicityProHubV41") or CoreGui:FindFirstChild("HelicityProHubV41")
    if oldGui then oldGui:Destroy() end

    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = "HelicityProHubV41"
    ScreenGui.ResetOnSpawn = false

    local targetParent = playerGui
    if gethui then
        pcall(function() targetParent = gethui() end)
    elseif CoreGui then
        pcall(function() targetParent = CoreGui end)
    end
    ScreenGui.Parent = targetParent

    local MainFrame = Instance.new("Frame")
    MainFrame.Size = UDim2.new(0, 260, 0, 370)
    MainFrame.Position = UDim2.new(0.5, -130, 0.15, 0)
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

    local isPedAnchored, isVehProtection, isInvForced = false, false, false
    local isEspActive, isRadarActive, isSpeedBoosted, isFpsBoosted = false, false, false, false
    local pedLoop, vehLoop, invLoop, speedLoop, radarTask = nil, nil, nil, nil, nil
    local espElements = {}

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
                                    part.AssemblyLinearVelocity = Vector3.new(vel.X, math.min(vel.Y, -25), vel.Z)
                                    part.AssemblyAngularVelocity = Vector3.new(0, part.AssemblyAngularVelocity.Y, 0)
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
                    pcall(function() StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, true) end)
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

    MinimizeBtn.MouseButton1Click:Connect(function()
        MainFrame.Visible = false
        OpenBtn.Visible = true
    end)

    OpenBtn.MouseButton1Click:Connect(function()
        OpenBtn.Visible = false
        MainFrame.Visible = true
    end)
end)

if not success then
    local errGui = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"))
    local errText = Instance.new("TextLabel", errGui)
    errText.Size = UDim2.new(0.8, 0, 0.2, 0)
    errText.Position = UDim2.new(0.1, 0, 0.4, 0)
    errText.BackgroundColor3 = Color3.fromRGB(150, 0, 0)
    errText.TextColor3 = Color3.fromRGB(255, 255, 255)
    errText.TextScaled = true
    errText.Text = "HATA OLUSTU:\n" .. tostring(err)
end
