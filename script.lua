local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local CoreGui = game:GetService("CoreGui")
local StarterGui = game:GetService("StarterGui")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local LocalPlayer = Players.LocalPlayer

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "HelicityProHub"
ScreenGui.ResetOnSpawn = false

if gethui then
    ScreenGui.Parent = gethui()
elseif syn and syn.protect_gui then
    syn.protect_gui(ScreenGui)
    ScreenGui.Parent = CoreGui
else
    ScreenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")
end

local MainFrame = Instance.new("Frame")
MainFrame.Size = UDim2.new(0, 260, 0, 310)
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

local TitleFix = Instance.new("Frame")
TitleFix.Size = UDim2.new(1, 0, 0, 10)
TitleFix.Position = UDim2.new(0, 0, 1, -10)
TitleFix.BackgroundColor3 = Color3.fromRGB(22, 22, 30)
TitleFix.BorderSizePixel = 0
TitleFix.Parent = TitleBar

local TitleText = Instance.new("TextLabel")
TitleText.Size = UDim2.new(1, -45, 1, 0)
TitleText.Position = UDim2.new(0, 12, 0, 0)
TitleText.Text = "⚡ HELICITY PRO HUB"
TitleText.TextColor3 = Color3.fromRGB(255, 255, 255)
TitleText.Font = Enum.Font.GothamBold
TitleText.TextSize = 13
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
ScrollContainer.CanvasSize = UDim2.new(0, 0, 0, 250)
ScrollContainer.Parent = MainFrame

local UIList = Instance.new("UIListLayout")
UIList.Padding = UDim.new(0, 7)
UIList.SortOrder = Enum.SortOrder.LayoutOrder
UIList.Parent = ScrollContainer

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
    label.TextSize = 11.5
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
local InvBtn, InvBadge, InvStatus, InvStroke = createToggle("ARABA İÇİ ENVANTER", 3)
local EspBtn, EspBadge, EspStatus, EspStroke = createToggle("TORNADO ESP (CHAMS)", 4)
local FpsBtn, FpsBadge, FpsStatus, FpsStroke = createToggle("SOFT FPS BOOSTER", 5)

local isPedAnchored = false
local isVehProtection = false
local isInvForced = false
local isEspActive = false
local isFpsBoosted = false

local pedLoop, vehLoop, invLoop = nil, nil, nil
local espHighlights = {}
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
            end
        end)
    else
        if invLoop then invLoop:Disconnect() invLoop = nil end
    end
end)

local function clearEsp()
    for _, hl in pairs(espHighlights) do
        if hl and hl.Parent then hl:Destroy() end
    end
    espHighlights = {}
end

local function applyEsp(obj)
    if not isEspActive then return end
    local name = obj.Name:lower()
    if name:find("tornado") or name:find("funnel") or name:find("vortex") or name:find("meso") then
        if not espHighlights[obj] then
            local hl = Instance.new("Highlight")
            hl.Name = "TornadoESP_Chams"
            hl.FillColor = Color3.fromRGB(255, 30, 30)
            hl.FillTransparency = 0.35
            hl.OutlineColor = Color3.fromRGB(255, 255, 255)
            hl.OutlineTransparency = 0.1
            hl.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            hl.Adornee = obj
            hl.Parent = obj
            espHighlights[obj] = hl
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
    else
        clearEsp()
    end
end)

Workspace.DescendantAdded:Connect(function(obj)
    if isEspActive then
        task.wait(0.2)
        if obj:IsA("Model") or obj:IsA("BasePart") then
            applyEsp(obj)
        end
    end
end)

FpsBtn.MouseButton1Click:Connect(function()
    isFpsBoosted = not isFpsBoosted
    updateStateUI(FpsBadge, FpsStatus, FpsStroke, isFpsBoosted)
    
    if isFpsBoosted then
        originalLightingState.GlobalShadows = Lighting.GlobalShadows
        Lighting.GlobalShadows = false
        
        for _, v in ipairs(Lighting:GetChildren()) do
            if v:IsA("PostEffect") or v:IsA("BlurEffect") or v:IsA("SunRaysEffect") or v:IsA("BloomEffect") or v:IsA("DepthOfFieldEffect") then
                v.Enabled = false
            end
        end
        
        local terrain = Workspace:FindFirstChildOfClass("Terrain")
        if terrain then
            terrain.Decoration = false
        end
        
        for _, v in ipairs(Workspace:GetDescendants()) do
            if v:IsA("ParticleEmitter") or v:IsA("Smoke") or v:IsA("Fire") or v:IsA("Sparkles") then
                v.Enabled = false
            end
        end
        
        if setfpscap then setfpscap(120) end
    else
        if originalLightingState.GlobalShadows ~= nil then
            Lighting.GlobalShadows = originalLightingState.GlobalShadows
        end
        
        for _, v in ipairs(Lighting:GetChildren()) do
            if v:IsA("PostEffect") or v:IsA("BlurEffect") or v:IsA("SunRaysEffect") or v:IsA("BloomEffect") or v:IsA("DepthOfFieldEffect") then
                v.Enabled = true
            end
        end
        
        local terrain = Workspace:FindFirstChildOfClass("Terrain")
        if terrain then
            terrain.Decoration = true
        end
        
        for _, v in ipairs(Workspace:GetDescendants()) do
            if v:IsA("ParticleEmitter") or v:IsA("Smoke") or v:IsA("Fire") or v:IsA("Sparkles") then
                v.Enabled = true
            end
        end
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
