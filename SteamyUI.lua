-- SteamyUI GUI Library - Premium Roblox UI Framework

local Icons = (function()

local Icons = {
    -- Navigation
    ["home"]            = "🏠",
    ["settings"]        = "⚙",
    ["menu"]            = "☰",
    ["search"]          = "🔍",

    -- User / Auth
    ["user"]            = "👤",
    ["lock"]            = "🔒",
    ["unlock"]          = "🔓",
    ["key"]             = "🔑",
    ["discord"]         = "💬",
    ["globe"]           = "🌐",

    -- Actions
    ["play"]            = "▶",
    ["refresh"]         = "↺",
    ["copy"]            = "📋",
    ["link"]            = "🔗",
    ["trash"]           = "🗑",
    ["plus"]            = "+",
    ["minus"]           = "−",
    ["x"]               = "✕",
    ["check"]           = "✓",
    ["check-circle"]    = "✅",

    -- Alerts
    ["info"]            = "ℹ",
    ["alert-triangle"]  = "⚠",
    ["alert-circle"]    = "⊘",
    ["bell"]            = "🔔",

    -- Chevrons / Arrows
    ["chevron-right"]   = "›",
    ["chevron-left"]    = "‹",
    ["chevron-down"]    = "⌄",
    ["chevron-up"]      = "⌃",
    ["arrow-right"]     = "→",
    ["arrow-left"]      = "←",
    ["arrow-up"]        = "↑",
    ["arrow-down"]      = "↓",

    -- Files & Data
    ["folder"]          = "📁",
    ["file"]            = "📄",
    ["database"]        = "🗄",
    ["save"]            = "💾",

    -- Visual
    ["eye"]             = "👁",
    ["eye-off"]         = "🙈",
    ["palette"]         = "🎨",
    ["image"]           = "🖼",

    -- Dev / Terminal
    ["terminal"]        = ">_",
    ["code"]            = "</>",
    ["sliders"]         = "⧉",

    -- Misc
    ["star"]            = "★",
    ["heart"]           = "♥",
    ["flag"]            = "⚑",
    ["map"]             = "🗺",
    ["target"]          = "◎",
    ["zap"]             = "⚡",
    ["shield"]          = "🛡",
    ["crown"]           = "👑",
}

return Icons

end)()

local ThemeManager = (function()
local TweenService = game:GetService("TweenService")

local ThemeManager = {
    CurrentTheme = "Darker",
    Registry = {},
    Themes = {
        ["Darker"] = {
            Background = Color3.fromRGB(15, 15, 16),
            SecondaryBackground = Color3.fromRGB(22, 22, 24),
            Card = Color3.fromRGB(30, 30, 33),
            Accent = Color3.fromRGB(0, 120, 212),
            Text = Color3.fromRGB(240, 240, 240),
            SubText = Color3.fromRGB(160, 160, 160),
            Border = Color3.fromRGB(40, 40, 45),
            Stroke = Color3.fromRGB(50, 50, 55),
            Success = Color3.fromRGB(16, 124, 65),
            Warning = Color3.fromRGB(220, 140, 0),
            Error = Color3.fromRGB(232, 17, 35),
            Notification = Color3.fromRGB(25, 25, 27)
        },
        ["Dark"] = {
            Background = Color3.fromRGB(28, 28, 30),
            SecondaryBackground = Color3.fromRGB(36, 36, 38),
            Card = Color3.fromRGB(44, 44, 46),
            Accent = Color3.fromRGB(0, 120, 212),
            Text = Color3.fromRGB(255, 255, 255),
            SubText = Color3.fromRGB(170, 170, 170),
            Border = Color3.fromRGB(55, 55, 59),
            Stroke = Color3.fromRGB(65, 65, 70),
            Success = Color3.fromRGB(16, 124, 65),
            Warning = Color3.fromRGB(220, 140, 0),
            Error = Color3.fromRGB(232, 17, 35),
            Notification = Color3.fromRGB(40, 40, 42)
        },
        ["Light"] = {
            Background = Color3.fromRGB(243, 243, 243),
            SecondaryBackground = Color3.fromRGB(255, 255, 255),
            Card = Color3.fromRGB(249, 249, 249),
            Accent = Color3.fromRGB(0, 120, 212),
            Text = Color3.fromRGB(20, 20, 20),
            SubText = Color3.fromRGB(100, 100, 100),
            Border = Color3.fromRGB(210, 210, 210),
            Stroke = Color3.fromRGB(225, 225, 225),
            Success = Color3.fromRGB(16, 124, 65),
            Warning = Color3.fromRGB(220, 140, 0),
            Error = Color3.fromRGB(232, 17, 35),
            Notification = Color3.fromRGB(255, 255, 255)
        },
        ["Aqua"] = {
            Background = Color3.fromRGB(10, 25, 30),
            SecondaryBackground = Color3.fromRGB(15, 35, 43),
            Card = Color3.fromRGB(22, 45, 55),
            Accent = Color3.fromRGB(0, 180, 216),
            Text = Color3.fromRGB(240, 248, 255),
            SubText = Color3.fromRGB(150, 180, 195),
            Border = Color3.fromRGB(30, 60, 75),
            Stroke = Color3.fromRGB(40, 80, 100),
            Success = Color3.fromRGB(0, 200, 115),
            Warning = Color3.fromRGB(244, 162, 97),
            Error = Color3.fromRGB(230, 57, 70),
            Notification = Color3.fromRGB(18, 40, 50)
        },
        ["Amethyst"] = {
            Background = Color3.fromRGB(20, 15, 30),
            SecondaryBackground = Color3.fromRGB(28, 22, 42),
            Card = Color3.fromRGB(38, 30, 58),
            Accent = Color3.fromRGB(155, 93, 229),
            Text = Color3.fromRGB(245, 240, 255),
            SubText = Color3.fromRGB(180, 160, 200),
            Border = Color3.fromRGB(50, 40, 75),
            Stroke = Color3.fromRGB(65, 50, 100),
            Success = Color3.fromRGB(46, 196, 182),
            Warning = Color3.fromRGB(255, 159, 67),
            Error = Color3.fromRGB(240, 113, 120),
            Notification = Color3.fromRGB(32, 26, 48)
        },
        ["Darker Blue Neon"] = {
            Background = Color3.fromRGB(10, 12, 22),
            SecondaryBackground = Color3.fromRGB(15, 18, 32),
            Card = Color3.fromRGB(20, 24, 42),
            Accent = Color3.fromRGB(0, 245, 255),
            Text = Color3.fromRGB(230, 240, 255),
            SubText = Color3.fromRGB(130, 150, 190),
            Border = Color3.fromRGB(28, 35, 60),
            Stroke = Color3.fromRGB(40, 50, 85),
            Success = Color3.fromRGB(0, 255, 136),
            Warning = Color3.fromRGB(255, 170, 0),
            Error = Color3.fromRGB(255, 0, 85),
            Notification = Color3.fromRGB(16, 20, 36)
        },
        ["Light Cyan Neon"] = {
            Background = Color3.fromRGB(235, 248, 250),
            SecondaryBackground = Color3.fromRGB(255, 255, 255),
            Card = Color3.fromRGB(245, 252, 253),
            Accent = Color3.fromRGB(0, 180, 200),
            Text = Color3.fromRGB(15, 30, 35),
            SubText = Color3.fromRGB(90, 120, 130),
            Border = Color3.fromRGB(190, 225, 230),
            Stroke = Color3.fromRGB(210, 240, 245),
            Success = Color3.fromRGB(0, 168, 90),
            Warning = Color3.fromRGB(224, 128, 0),
            Error = Color3.fromRGB(216, 16, 48),
            Notification = Color3.fromRGB(255, 255, 255)
        },
        ["Darker Emerald Neon"] = {
            Background = Color3.fromRGB(8, 18, 12),
            SecondaryBackground = Color3.fromRGB(12, 26, 18),
            Card = Color3.fromRGB(18, 38, 26),
            Accent = Color3.fromRGB(0, 255, 128),
            Text = Color3.fromRGB(230, 255, 240),
            SubText = Color3.fromRGB(130, 180, 150),
            Border = Color3.fromRGB(25, 55, 38),
            Stroke = Color3.fromRGB(35, 75, 52),
            Success = Color3.fromRGB(0, 255, 128),
            Warning = Color3.fromRGB(255, 215, 0),
            Error = Color3.fromRGB(255, 50, 50),
            Notification = Color3.fromRGB(14, 30, 22)
        },
        ["Darker Purple Neon"] = {
            Background = Color3.fromRGB(14, 8, 22),
            SecondaryBackground = Color3.fromRGB(20, 12, 32),
            Card = Color3.fromRGB(28, 18, 45),
            Accent = Color3.fromRGB(240, 0, 255),
            Text = Color3.fromRGB(255, 230, 255),
            SubText = Color3.fromRGB(180, 130, 200),
            Border = Color3.fromRGB(40, 25, 65),
            Stroke = Color3.fromRGB(55, 35, 90),
            Success = Color3.fromRGB(0, 255, 170),
            Warning = Color3.fromRGB(255, 185, 0),
            Error = Color3.fromRGB(255, 20, 100),
            Notification = Color3.fromRGB(22, 14, 35)
        }
    }
}

-- Registry mappings for custom components
function ThemeManager:GetColor(key)
    local palette = self.Themes[self.CurrentTheme] or self.Themes["Darker"]
    return palette[key] or Color3.new(1, 1, 1)
end

function ThemeManager:Register(element, properties)
    self.Registry[element] = properties
    
    -- Set initial colors
    for prop, themeKey in pairs(properties) do
        local targetColor = self:GetColor(themeKey)
        if typeof(targetColor) == "Color3" then
            element[prop] = targetColor
        end
    end
end

function ThemeManager:Unregister(element)
    self.Registry[element] = nil
end

function ThemeManager:SetTheme(themeName)
    if not self.Themes[themeName] then return end
    self.CurrentTheme = themeName
    
    local animSpeed = 0.3 -- speed of transition
    local info = TweenInfo.new(animSpeed, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    
    for element, properties in pairs(self.Registry) do
        -- Check if element still exists
        if element and element.Parent then
            local tweenProps = {}
            for prop, themeKey in pairs(properties) do
                local targetColor = self:GetColor(themeKey)
                if typeof(targetColor) == "Color3" then
                    tweenProps[prop] = targetColor
                end
            end
            
            pcall(function()
                TweenService:Create(element, info, tweenProps):Play()
            end)
        else
            -- Clean up registry if element was destroyed
            self.Registry[element] = nil
        end
    end
end

return ThemeManager

end)()

local AnimationManager = (function()
local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")

local AnimationManager = {}

function AnimationManager:Tween(element, info, properties)
    if not element or not element.Parent then return nil end
    local tween = TweenService:Create(element, info, properties)
    tween:Play()
    return tween
end

-- Hover animation helper
function AnimationManager:Hover(element, hoverProps, normalProps, speed)
    speed = speed or 0.25
    local info = TweenInfo.new(speed, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    
    element.MouseEnter:Connect(function()
        self:Tween(element, info, hoverProps)
    end)
    
    element.MouseLeave:Connect(function()
        self:Tween(element, info, normalProps)
    end)
end

-- Click press animation helper
function AnimationManager:Press(element, pressedProps, normalProps, speed)
    speed = speed or 0.15
    local info = TweenInfo.new(speed, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    
    element.MouseButton1Down:Connect(function()
        self:Tween(element, info, pressedProps)
    end)
    
    element.MouseButton1Up:Connect(function()
        self:Tween(element, info, normalProps)
    end)
end

-- Ripple effect inside a GuiObject (requires ClipsDescendants = true on parent)
function AnimationManager:Ripple(element, color)
    color = color or Color3.fromRGB(255, 255, 255)
    
    local mouse = Players.LocalPlayer:GetMouse()
    local x = mouse.X - element.AbsolutePosition.X
    local y = mouse.Y - element.AbsolutePosition.Y
    
    -- Ensure ClipsDescendants is active
    element.ClipsDescendants = true
    
    local ripple = Instance.new("Frame")
    ripple.Name = "Ripple"
    ripple.AnchorPoint = Vector2.new(0.5, 0.5)
    ripple.BackgroundColor3 = color
    ripple.BackgroundTransparency = 0.6
    ripple.BorderSizePixel = 0
    ripple.Position = UDim2.new(0, x, 0, y)
    ripple.Size = UDim2.new(0, 0, 0, 0)
    ripple.ZIndex = element.ZIndex + 1
    
    local uiCorner = Instance.new("UICorner")
    uiCorner.CornerRadius = UDim.new(1, 0)
    uiCorner.Parent = ripple
    
    ripple.Parent = element
    
    -- Calculate maximum dimension for the ripple size
    local maxDim = math.max(element.AbsoluteSize.X, element.AbsoluteSize.Y) * 2.5
    
    local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    local tween = TweenService:Create(ripple, tweenInfo, {
        Size = UDim2.new(0, maxDim, 0, maxDim),
        BackgroundTransparency = 1
    })
    
    tween.Completed:Connect(function()
        ripple:Destroy()
    end)
    tween:Play()
end

-- Shake animation for warning states (e.g. invalid key)
function AnimationManager:Shake(element, distance, speed)
    distance = distance or 10
    speed = speed or 0.05
    
    local originalPosition = element.Position
    local info = TweenInfo.new(speed, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    
    task.spawn(function()
        -- Perform 4 shakes left and right
        for i = 1, 4 do
            local offset = (i % 2 == 0) and -distance or distance
            local targetPos = originalPosition + UDim2.new(0, offset, 0, 0)
            local t = TweenService:Create(element, info, { Position = targetPos })
            t:Play()
            t.Completed:Wait()
        end
        -- Reset to original position
        local resetTween = TweenService:Create(element, info, { Position = originalPosition })
        resetTween:Play()
    end)
end

return AnimationManager

end)()

local Creator = (function()
local ThemeManager = ThemeManager

local Creator = {}

-- Main element instantiation helper
function Creator.New(className, properties, children)
    local obj = Instance.new(className)
    
    local themeBindings = {}
    local finalProperties = {}
    
    if properties then
        for prop, val in pairs(properties) do
            -- Detect theme bindings: property name ends with Color3 or Color and value is string
            local isThemeKey = false
            if type(val) == "string" and ThemeManager.Themes["Darker"][val] ~= nil then
                if string.find(prop, "Color3") or prop == "Color" then
                    isThemeKey = true
                end
            end
            
            if isThemeKey then
                themeBindings[prop] = val
                -- Set initial color from theme
                obj[prop] = ThemeManager:GetColor(val)
            else
                obj[prop] = val
            end
        end
    end
    
    -- Register theme bindings if any were found
    if next(themeBindings) then
        ThemeManager:Register(obj, themeBindings)
        
        -- Clean up from ThemeManager when destroyed
        obj.Destroying:Connect(function()
            ThemeManager:Unregister(obj)
        end)
    end
    
    -- Add children if provided
    if children then
        for _, child in ipairs(children) do
            if typeof(child) == "Instance" then
                child.Parent = obj
            end
        end
    end
    
    return obj
end

-- Helper to add UICorner
function Creator:Corner(parent, radius)
    radius = radius or UDim.new(0, 8)
    return self.New("UICorner", {
        Parent = parent,
        CornerRadius = radius
    })
end

-- Helper to add UIStroke
function Creator:Stroke(parent, thickness, themeKey, joinMode)
    thickness = thickness or 1
    themeKey = themeKey or "Stroke"
    joinMode = joinMode or Enum.LineJoinMode.Round
    
    return self.New("UIStroke", {
        Parent = parent,
        Thickness = thickness,
        Color = themeKey,
        ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
        LineJoinMode = joinMode,
        Transparency = 0.1
    })
end

-- Helper to add UIPadding
function Creator:Padding(parent, top, right, bottom, left)
    return self.New("UIPadding", {
        Parent = parent,
        PaddingTop = UDim.new(0, top or 0),
        PaddingRight = UDim.new(0, right or 0),
        PaddingBottom = UDim.new(0, bottom or 0),
        PaddingLeft = UDim.new(0, left or 0)
    })
end

-- Helper to add soft drop shadows to frames
function Creator:AddShadow(parent, radius, transparency)
    radius = radius or 15
    transparency = transparency or 0.5
    
    -- standard fluent-style soft shadow decal
    local shadow = self.New("ImageLabel", {
        Name = "Shadow",
        BackgroundTransparency = 1,
        Position = UDim2.new(0, -radius, 0, -radius),
        Size = UDim2.new(1, radius * 2, 1, radius * 2),
        ZIndex = parent.ZIndex - 1,
        Image = "rbxassetid://6014261993", -- Soft shadow decal
        ImageColor3 = Color3.fromRGB(0, 0, 0),
        ImageTransparency = transparency,
        ScaleType = Enum.ScaleType.Slice,
        SliceCenter = Rect.new(49, 49, 450, 450)
    })
    
    shadow.Parent = parent
    return shadow
end

-- Helper to create a text/emoji based icon as a TextLabel
function Creator:Icon(parent, char, size, colorKey)
    size = size or 14
    colorKey = colorKey or "SubText"
    
    local label = self.New("TextLabel", {
        Parent = parent,
        BackgroundTransparency = 1,
        Text = char or "•",
        TextSize = size,
        Font = Enum.Font.GothamBold,
        TextXAlignment = Enum.TextXAlignment.Center,
        TextYAlignment = Enum.TextYAlignment.Center,
        TextScaled = false,
    })
    
    -- Support both theme color key strings and direct Color3
    if type(colorKey) == "string" then
        label.TextColor3 = ThemeManager:GetColor(colorKey)
        ThemeManager:Register(label, { TextColor3 = colorKey })
        label.Destroying:Connect(function()
            ThemeManager:Unregister(label)
        end)
    else
        -- It's a Color3
        label.TextColor3 = colorKey
    end
    
    return label
end

return Creator

end)()

local ConfigManager = (function()
local HttpService = game:GetService("HttpService")

local ConfigManager = {
    MockFS = {}, -- Mock filesystem for Studio/non-exploit testing
}

-- Check if we are running in an exploit environment
local function hasExploitFS()
    return writefile ~= nil and readfile ~= nil
end

-- Helper to sanitize paths
local function sanitizePath(folder, file)
    if folder and folder ~= "" then
        return folder .. "/" .. file
    end
    return file
end

function ConfigManager:Save(folder, filename, data)
    local success, jsonStr = pcall(function()
        return HttpService:JSONEncode(data)
    end)
    if not success then
        warn("[SteamyUI ConfigManager] Failed to encode config data to JSON.")
        return false
    end
    
    if hasExploitFS() then
        pcall(function()
            if folder and folder ~= "" and not isfolder(folder) then
                makefolder(folder)
            end
            writefile(sanitizePath(folder, filename), jsonStr)
        end)
    else
        -- Fallback to MockFS (Studio)
        local path = sanitizePath(folder, filename)
        self.MockFS[path] = jsonStr
        print("[SteamyUI MockFS] Saved file:", path, "Data:", jsonStr)
    end
    return true
end

function ConfigManager:Load(folder, filename)
    local path = sanitizePath(folder, filename)
    local rawData
    
    if hasExploitFS() then
        if isfile(path) then
            pcall(function()
                rawData = readfile(path)
            end)
        end
    else
        rawData = self.MockFS[path]
        if rawData then
            print("[SteamyUI MockFS] Loaded file:", path, "Data:", rawData)
        end
    end
    
    if not rawData or rawData == "" then
        return nil
    end
    
    local success, decoded = pcall(function()
        return HttpService:JSONDecode(rawData)
    end)
    
    if not success then
        warn("[SteamyUI ConfigManager] Failed to decode config JSON: " .. tostring(path))
        return nil
    end
    
    return decoded
end

function ConfigManager:GetConfigs(folder)
    local files = {}
    
    if hasExploitFS() then
        pcall(function()
            if isfolder(folder) then
                local allFiles = listfiles(folder)
                for _, filePath in ipairs(allFiles) do
                    -- Extract file name from full path (prioritize backslashes for Windows executors)
                    local name = filePath:match("([^\\]+)$") or filePath:match("([^/]+)$") or filePath
                    if name:match("%.json$") then
                        table.insert(files, (name:gsub("%.json$", "")))
                    end
                end
            end
        end)
    else
        -- Fetch from MockFS
        for path, _ in pairs(self.MockFS) do
            local fileFolder, fileName = path:match("^([^/]+)/(.-)$")
            if not fileFolder then
                fileName = path
                fileFolder = ""
            end
            
            if fileFolder == folder and fileName:match("%.json$") then
                table.insert(files, (fileName:gsub("%.json$", "")))
            end
        end
    end
    
    return files
end

function ConfigManager:Delete(folder, filename)
    local path = sanitizePath(folder, filename)
    
    if hasExploitFS() then
        if isfile(path) then
            pcall(function()
                delfile(path)
            end)
            return true
        end
    else
        if self.MockFS[path] then
            self.MockFS[path] = nil
            print("[SteamyUI MockFS] Deleted file:", path)
            return true
        end
    end
    return false
end

return ConfigManager

end)()

local Notification = (function()
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local Creator = Creator
local Icons = Icons

local Notification = {}
local container = nil

local function getGuiParent()
    local success, coreGui = pcall(function()
        return game:GetService("CoreGui")
    end)
    if success and coreGui then
        return coreGui
    end
    return Players.LocalPlayer:WaitForChild("PlayerGui")
end

-- Initialize notifications container frame
local function getContainer()
    if container and container.Parent then
        return container
    end
    
    local parent = getGuiParent()
    local screenGui = parent:FindFirstChild("SteamyNotificationsGui")
    if not screenGui then
        screenGui = Creator.New("ScreenGui", {
            Name = "SteamyNotificationsGui",
            ResetOnSpawn = false,
            DisplayOrder = 9999
        })
        screenGui.Parent = parent
    end
    
    container = Creator.New("Frame", {
        Name = "NotificationContainer",
        BackgroundTransparency = 1,
        Position = UDim2.new(1, -300, 0, 20),
        Size = UDim2.new(0, 280, 1, -40),
        ZIndex = 1000
    })
    
    Creator.New("UIListLayout", {
        Parent = container,
        SortOrder = Enum.SortOrder.LayoutOrder,
        VerticalAlignment = Enum.VerticalAlignment.Bottom,
        Padding = UDim.new(0, 10)
    })
    
    container.Parent = screenGui
    return container
end

function Notification:New(options)
    options = options or {}
    local title = options.Title or "Notification"
    local content = options.Content or ""
    local duration = options.Duration or 5
    local iconName = options.Icon or "bell"
    local notifType = options.Type or "Info" -- Success, Warning, Error, Info
    
    local parentContainer = getContainer()
    
    -- Map notification types to colors
    local typeColors = {
        ["Success"] = "Success",
        ["Warning"] = "Warning",
        ["Error"] = "Error",
        ["Info"] = "Accent"
    }
    
    local indicatorColor = typeColors[notifType] or "Accent"
    
    local notifFrame = Creator.New("Frame", {
        Size = UDim2.new(1, 0, 0, 0), -- Starts at 0 height, tweens open
        BackgroundColor3 = "Notification",
        BackgroundTransparency = 0.05,
        ClipsDescendants = true,
        LayoutOrder = #parentContainer:GetChildren()
    })
    
    Creator:Corner(notifFrame, UDim.new(0, 8))
    Creator:Stroke(notifFrame, 1, "Border")
    
    local shadow = Creator:AddShadow(notifFrame, 10, 0.4)
    
    -- Side vertical indicator line
    local indicator = Creator.New("Frame", {
        Parent = notifFrame,
        Size = UDim2.new(0, 4, 1, 0),
        BackgroundColor3 = indicatorColor,
        BorderSizePixel = 0
    })
    Creator:Corner(indicator, UDim.new(0, 4))
    
    local contentContainer = Creator.New("Frame", {
        Parent = notifFrame,
        Size = UDim2.new(1, -12, 1, 0),
        Position = UDim2.new(0, 12, 0, 0),
        BackgroundTransparency = 1
    })
    
    Creator:Padding(contentContainer, 8, 8, 8, 8)
    
    -- Icon (text/emoji)
    local iconChar = Icons[iconName] or Icons["bell"] or "🔔"
    local iconLabel = Creator.New("TextLabel", {
        Parent = contentContainer,
        Size = UDim2.new(0, 20, 0, 20),
        Position = UDim2.new(0, 0, 0, 0),
        BackgroundTransparency = 1,
        Text = iconChar,
        TextSize = 16,
        Font = Enum.Font.GothamBold,
        TextXAlignment = Enum.TextXAlignment.Center,
        TextYAlignment = Enum.TextYAlignment.Center
    })
    -- Apply indicator color directly (Color3)
    iconLabel.TextColor3 = ThemeManager:GetColor(indicatorColor)
    
    -- Title Text
    local titleLabel = Creator.New("TextLabel", {
        Parent = contentContainer,
        Position = UDim2.new(0, 26, 0, 0),
        Size = UDim2.new(1, -50, 0, 20),
        BackgroundTransparency = 1,
        Text = title,
        TextColor3 = "Text",
        TextSize = 13,
        Font = Enum.Font.GothamBold,
        TextXAlignment = Enum.TextXAlignment.Left,
        TextYAlignment = Enum.TextYAlignment.Center
    })
    
    -- Content Text
    local contentLabel = Creator.New("TextLabel", {
        Parent = contentContainer,
        Position = UDim2.new(0, 0, 0, 24),
        Size = UDim2.new(1, -10, 1, -24),
        BackgroundTransparency = 1,
        Text = content,
        TextColor3 = "SubText",
        TextSize = 12,
        Font = Enum.Font.Gotham,
        TextWrapped = true,
        TextXAlignment = Enum.TextXAlignment.Left,
        TextYAlignment = Enum.TextYAlignment.Top
    })
    
    -- Close button (text-based)
    local closeBtn = Creator.New("TextButton", {
        Parent = contentContainer,
        Position = UDim2.new(1, -16, 0, 0),
        Size = UDim2.new(0, 16, 0, 16),
        BackgroundTransparency = 1,
        Text = "✕",
        TextColor3 = ThemeManager:GetColor("SubText"),
        TextSize = 11,
        Font = Enum.Font.GothamBold,
        AutoButtonColor = false
    })
    
    local function dismiss()
        local tweenOut = TweenService:Create(notifFrame, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
            Size = UDim2.new(1, 0, 0, 0),
            BackgroundTransparency = 1
        })
        tweenOut:Play()
        tweenOut.Completed:Connect(function()
            notifFrame:Destroy()
        end)
    end
    
    closeBtn.MouseButton1Click:Connect(dismiss)
    
    -- Measure text size to size the notification dynamically
    local textService = game:GetService("TextService")
    local size = textService:GetTextSize(content, 12, Enum.Font.Gotham, Vector2.new(246, 200))
    local finalHeight = math.clamp(size.Y + 40, 65, 120)
    
    notifFrame.Parent = parentContainer
    
    -- Animate open
    local info = TweenInfo.new(0.35, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    TweenService:Create(notifFrame, info, {
        Size = UDim2.new(1, 0, 0, finalHeight)
    }):Play()
    
    -- Slide in from right (notifFrame stays static in the list, but we offset content visually)
    contentContainer.Position = UDim2.new(1, 10, 0, 0)
    TweenService:Create(contentContainer, info, {
        Position = UDim2.new(0, 12, 0, 0)
    }):Play()
    
    -- Auto dismiss
    task.delay(duration, function()
        if notifFrame and notifFrame.Parent then
            dismiss()
        end
    end)
end

return Notification

end)()

local Dialog = (function()
local TweenService = game:GetService("TweenService")
local Creator = Creator
local Icons = Icons

local Dialog = {}

function Dialog:Create(parentGui, options)
    options = options or {}
    local title = options.Title or "Are you sure?"
    local content = options.Content or "This action cannot be undone."
    local buttons = options.Buttons or {
        {
            Text = "Confirm",
            Callback = function() end
        },
        {
            Text = "Cancel",
            Style = "Cancel",
            Callback = function() end
        }
    }
    
    -- Overlay to block interactions with background
    local overlay = Creator.New("Frame", {
        Name = "DialogOverlay",
        Size = UDim2.new(1, 0, 1, 0),
        BackgroundColor3 = Color3.fromRGB(0, 0, 0),
        BackgroundTransparency = 1, -- Start transparent for tween
        Active = true, -- Block mouse events
        ZIndex = 5000
    })
    
    local dialogFrame = Creator.New("Frame", {
        Parent = overlay,
        Name = "DialogFrame",
        Size = UDim2.new(0, 360, 0, 180),
        Position = UDim2.new(0.5, 0, 0.5, 0),
        AnchorPoint = Vector2.new(0.5, 0.5),
        BackgroundColor3 = "Background",
        BorderSizePixel = 0,
        ClipsDescendants = true
    })
    
    Creator:Corner(dialogFrame, UDim.new(0, 8))
    Creator:Stroke(dialogFrame, 1, "Border")
    local shadow = Creator:AddShadow(dialogFrame, 20, 0.55)
    
    local contentContainer = Creator.New("Frame", {
        Parent = dialogFrame,
        Size = UDim2.new(1, 0, 1, 0),
        BackgroundTransparency = 1
    })
    Creator:Padding(contentContainer, 16, 16, 16, 16)
    
    -- Title
    local titleLabel = Creator.New("TextLabel", {
        Parent = contentContainer,
        Size = UDim2.new(1, 0, 0, 24),
        BackgroundTransparency = 1,
        Text = title,
        TextColor3 = "Text",
        TextSize = 16,
        Font = Enum.Font.GothamBold,
        TextXAlignment = Enum.TextXAlignment.Left,
        TextYAlignment = Enum.TextYAlignment.Top
    })
    
    -- Content Text
    local contentLabel = Creator.New("TextLabel", {
        Parent = contentContainer,
        Position = UDim2.new(0, 0, 0, 30),
        Size = UDim2.new(1, 0, 1, -80),
        BackgroundTransparency = 1,
        Text = content,
        TextColor3 = "SubText",
        TextSize = 13,
        Font = Enum.Font.Gotham,
        TextWrapped = true,
        TextXAlignment = Enum.TextXAlignment.Left,
        TextYAlignment = Enum.TextYAlignment.Top
    })
    
    -- Button Container
    local buttonContainer = Creator.New("Frame", {
        Parent = contentContainer,
        Position = UDim2.new(0, 0, 1, -36),
        Size = UDim2.new(1, 0, 0, 36),
        BackgroundTransparency = 1
    })
    
    local layout = Creator.New("UIListLayout", {
        Parent = buttonContainer,
        FillDirection = Enum.FillDirection.Horizontal,
        HorizontalAlignment = Enum.HorizontalAlignment.Right,
        SortOrder = Enum.SortOrder.LayoutOrder,
        Padding = UDim.new(0, 10)
    })
    
    local isClosing = false
    local function close()
        if isClosing then return end
        isClosing = true
        
        local info = TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.In)
        
        -- Scale and fade out
        TweenService:Create(dialogFrame, info, {
            Size = UDim2.new(0, 320, 0, 160),
            BackgroundTransparency = 1
        }):Play()
        
        -- Fade overlay
        local overlayTween = TweenService:Create(overlay, info, {
            BackgroundTransparency = 1
        })
        overlayTween.Completed:Connect(function()
            overlay:Destroy()
        end)
        overlayTween:Play()
    end
    
    -- Add custom buttons
    for i, btnOpt in ipairs(buttons) do
        local btnStyle = btnOpt.Style or "Confirm"
        local isAccent = btnStyle == "Confirm"
        
        local btn = Creator.New("TextButton", {
            Parent = buttonContainer,
            Size = UDim2.new(0, 100, 1, 0),
            BackgroundColor3 = isAccent and "Accent" or "SecondaryBackground",
            Text = btnOpt.Text or "Button",
            TextColor3 = isAccent and "Text" or "SubText",
            Font = Enum.Font.GothamBold,
            TextSize = 13,
            LayoutOrder = i
        })
        
        Creator:Corner(btn, UDim.new(0, 6))
        Creator:Stroke(btn, 1, isAccent and "Accent" or "Border")
        
        -- Hover & Click effects
        local normalColor = isAccent and "Accent" or "SecondaryBackground"
        local hoverColor = isAccent and "Accent" or "Card" -- Visual hover cue
        
        -- Simple scale/ripple animations
        btn.MouseEnter:Connect(function()
            TweenService:Create(btn, TweenInfo.new(0.2, Enum.EasingStyle.Quad), {
                BackgroundColor3 = ThemeManager:GetColor(hoverColor)
            }):Play()
        end)
        
        btn.MouseLeave:Connect(function()
            TweenService:Create(btn, TweenInfo.new(0.2, Enum.EasingStyle.Quad), {
                BackgroundColor3 = ThemeManager:GetColor(normalColor)
            }):Play()
        end)
        
        btn.MouseButton1Click:Connect(function()
            pcall(btnOpt.Callback)
            close()
        end)
    end
    
    overlay.Parent = parentGui
    
    -- Animate open
    local info = TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    
    -- Set initial animation states
    dialogFrame.Size = UDim2.new(0, 320, 0, 160)
    dialogFrame.BackgroundTransparency = 1
    
    -- Play tweens
    TweenService:Create(overlay, info, { BackgroundTransparency = 1 }):Play()
    TweenService:Create(dialogFrame, info, {
        Size = UDim2.new(0, 360, 0, 180),
        BackgroundTransparency = 0
    }):Play()
    
    return overlay
end

return Dialog

end)()

local Elements = (function()
local TweenService = game:GetService("TweenService")
local Creator = Creator
local Icons = Icons

local Elements = {}

-- 1. Paragraph
function Elements.Paragraph(parent, options)
    options = options or {}
    local title = options.Title or "Information"
    local content = options.Content or ""
    
    local frame = Creator.New("Frame", {
        Parent = parent,
        Name = "Paragraph",
        Size = UDim2.new(1, 0, 0, 60), -- Will resize dynamically
        BackgroundColor3 = "Card",
        BackgroundTransparency = 0.5
    })
    Creator:Corner(frame, UDim.new(0, 6))
    Creator:Stroke(frame, 1, "Border")
    Creator:Padding(frame, 10, 12, 10, 12)
    
    -- Decorative Accent Indicator bar on the left
    local strip = Creator.New("Frame", {
        Parent = frame,
        Size = UDim2.new(0, 4, 1, 0),
        BackgroundColor3 = "Accent",
        BorderSizePixel = 0
    })
    Creator:Corner(strip, UDim.new(0, 4))
    
    local textFrame = Creator.New("Frame", {
        Parent = frame,
        Size = UDim2.new(1, -12, 1, 0),
        Position = UDim2.new(0, 12, 0, 0),
        BackgroundTransparency = 1
    })
    
    local titleLbl = Creator.New("TextLabel", {
        Parent = textFrame,
        Size = UDim2.new(1, 0, 0, 18),
        BackgroundTransparency = 1,
        Text = title,
        TextColor3 = "Text",
        TextSize = 12,
        Font = Enum.Font.GothamBold,
        TextXAlignment = Enum.TextXAlignment.Left,
        TextYAlignment = Enum.TextYAlignment.Top
    })
    
    local contentLbl = Creator.New("TextLabel", {
        Parent = textFrame,
        Position = UDim2.new(0, 0, 0, 18),
        Size = UDim2.new(1, 0, 1, -18),
        BackgroundTransparency = 1,
        Text = content,
        TextColor3 = "SubText",
        TextSize = 11,
        Font = Enum.Font.Gotham,
        TextWrapped = true,
        TextXAlignment = Enum.TextXAlignment.Left,
        TextYAlignment = Enum.TextYAlignment.Top
    })
    
    -- Resize layout height dynamically
    local textService = game:GetService("TextService")
    local function adjustHeight()
        local availableWidth = frame.AbsoluteSize.X - 24 - 12 -- padding and strip
        if availableWidth <= 0 then availableWidth = 200 end
        local size = textService:GetTextSize(content, 11, Enum.Font.Gotham, Vector2.new(availableWidth, 1000))
        local finalHeight = size.Y + 38
        frame.Size = UDim2.new(1, 0, 0, math.clamp(finalHeight, 52, 200))
    end
    
    frame:GetPropertyChangedSignal("AbsoluteSize"):Connect(adjustHeight)
    task.spawn(adjustHeight)
    
    return frame
end

-- 2. Label
function Elements.Label(parent, options)
    options = options or {}
    local text = options.Text or "Label"
    
    local frame = Creator.New("Frame", {
        Parent = parent,
        Name = "Label",
        Size = UDim2.new(1, 0, 0, 32),
        BackgroundColor3 = "Card",
        BackgroundTransparency = 1
    })
    Creator:Padding(frame, 0, 12, 0, 12)
    
    local lbl = Creator.New("TextLabel", {
        Parent = frame,
        Size = UDim2.new(1, 0, 1, 0),
        BackgroundTransparency = 1,
        Text = text,
        TextColor3 = "Text",
        TextSize = 12,
        Font = Enum.Font.GothamBold,
        TextXAlignment = Enum.TextXAlignment.Left,
        TextYAlignment = Enum.TextYAlignment.Center
    })
    
    return lbl
end

-- 3. Divider
function Elements.Divider(parent, options)
    options = options or {}
    
    local container = Creator.New("Frame", {
        Parent = parent,
        Name = "Divider",
        Size = UDim2.new(1, 0, 0, 8),
        BackgroundTransparency = 1
    })
    
    local line = Creator.New("Frame", {
        Parent = container,
        Size = UDim2.new(1, -24, 0, 1),
        Position = UDim2.new(0.5, 0, 0.5, 0),
        AnchorPoint = Vector2.new(0.5, 0.5),
        BackgroundColor3 = "Border",
        BorderSizePixel = 0
    })
    
    return container
end

-- 4. Image
function Elements.Image(parent, options)
    options = options or {}
    local imageId = options.Image or ""
    local size = options.Size or UDim2.new(0, 100, 0, 100)
    
    local container = Creator.New("Frame", {
        Parent = parent,
        Name = "ImageContainer",
        Size = UDim2.new(1, 0, 0, size.Y.Offset + 16),
        BackgroundTransparency = 1
    })
    
    local img = Creator.New("ImageLabel", {
        Parent = container,
        Size = size,
        Position = UDim2.new(0.5, 0, 0.5, 0),
        AnchorPoint = Vector2.new(0.5, 0.5),
        BackgroundTransparency = 1,
        Image = imageId
    })
    
    return img
end

-- 5. Avatar (Circular user icon)
function Elements.Avatar(parent, options)
    options = options or {}
    local userId = options.UserId or game:GetService("Players").LocalPlayer.UserId
    local size = options.Size or 40
    
    local container = Creator.New("Frame", {
        Parent = parent,
        Name = "AvatarContainer",
        Size = UDim2.new(1, 0, 0, size + 16),
        BackgroundTransparency = 1
    })
    
    local avatarImg = "rbxassetid://10747373861"
    pcall(function()
        avatarImg = game:GetService("Players"):GetUserThumbnailAsync(
            userId,
            Enum.ThumbnailType.HeadShot,
            Enum.ThumbnailSize.Size48x48
        )
    end)
    
    local img = Creator.New("ImageLabel", {
        Parent = container,
        Size = UDim2.new(0, size, 0, size),
        Position = UDim2.new(0.5, 0, 0.5, 0),
        AnchorPoint = Vector2.new(0.5, 0.5),
        BackgroundTransparency = 1,
        Image = avatarImg
    })
    Creator:Corner(img, UDim.new(1, 0))
    Creator:Stroke(img, 1, "Border")
    
    return img
end

-- 6. ProgressBar
local ProgressBar = {}
ProgressBar.__index = ProgressBar

function ProgressBar.new(parent, options)
    options = options or {}
    local self = setmetatable({}, ProgressBar)
    
    self.Title = options.Title or "Progress"
    self.Progress = math.clamp(options.Default or 0, 0, 100)
    
    self.Frame = Creator.New("Frame", {
        Parent = parent,
        Name = "ProgressBar",
        Size = UDim2.new(1, 0, 0, 42),
        BackgroundTransparency = 1
    })
    Creator:Padding(self.Frame, 6, 12, 6, 12)
    
    self.TitleLabel = Creator.New("TextLabel", {
        Parent = self.Frame,
        Size = UDim2.new(1, -60, 0, 16),
        BackgroundTransparency = 1,
        Text = self.Title,
        TextColor3 = "Text",
        TextSize = 12,
        Font = Enum.Font.GothamBold,
        TextXAlignment = Enum.TextXAlignment.Left
    })
    
    self.PercentLabel = Creator.New("TextLabel", {
        Parent = self.Frame,
        Size = UDim2.new(0, 50, 0, 16),
        Position = UDim2.new(1, 0, 0, 0),
        AnchorPoint = Vector2.new(1, 0),
        BackgroundTransparency = 1,
        Text = tostring(math.round(self.Progress)) .. "%",
        TextColor3 = "Accent",
        TextSize = 12,
        Font = Enum.Font.GothamBold,
        TextXAlignment = Enum.TextXAlignment.Right
    })
    
    self.Track = Creator.New("Frame", {
        Parent = self.Frame,
        Size = UDim2.new(1, 0, 0, 4),
        Position = UDim2.new(0, 0, 1, -4),
        AnchorPoint = Vector2.new(0, 1),
        BackgroundColor3 = "Border",
        BorderSizePixel = 0
    })
    Creator:Corner(self.Track, UDim.new(1, 0))
    
    self.Fill = Creator.New("Frame", {
        Parent = self.Track,
        Size = UDim2.new(self.Progress / 100, 0, 1, 0),
        BackgroundColor3 = "Accent",
        BorderSizePixel = 0
    })
    Creator:Corner(self.Fill, UDim.new(1, 0))
    
    return self
end

function ProgressBar:SetProgress(val)
    self.Progress = math.clamp(val, 0, 100)
    local info = TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    TweenService:Create(self.Fill, info, { Size = UDim2.new(self.Progress / 100, 0, 1, 0) }):Play()
    self.PercentLabel.Text = tostring(math.round(self.Progress)) .. "%"
end

function Elements.ProgressBar(parent, options)
    return ProgressBar.new(parent, options)
end

-- 7. LoadingIndicator
function Elements.LoadingIndicator(parent, options)
    options = options or {}
    local size = options.Size or 24
    
    local container = Creator.New("Frame", {
        Parent = parent,
        Name = "LoadingIndicatorContainer",
        Size = UDim2.new(1, 0, 0, size + 16),
        BackgroundTransparency = 1
    })
    
    local spinner = Creator.New("TextLabel", {
        Parent = container,
        Size = UDim2.new(0, size, 0, size),
        Position = UDim2.new(0.5, 0, 0.5, 0),
        AnchorPoint = Vector2.new(0.5, 0.5),
        BackgroundTransparency = 1,
        Text = "↺", -- Rotating arrow character
        TextColor3 = "Accent",
        TextSize = size,
        Font = Enum.Font.GothamBold,
        TextXAlignment = Enum.TextXAlignment.Center,
        TextYAlignment = Enum.TextYAlignment.Center
    })
    
    -- Infinite rotation animation (same as before, TextLabel supports Rotation)
    local rotTweenInfo = TweenInfo.new(1.2, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, -1) -- -1 = infinite looping
    local spinTween = TweenService:Create(spinner, rotTweenInfo, { Rotation = 360 })
    spinTween:Play()
    
    return container
end

return Elements

end)()

local Button = (function()
local TweenService = game:GetService("TweenService")
local Creator = Creator
local Icons = Icons
local ThemeManager = ThemeManager
local AnimationManager = AnimationManager

local Button = {}
Button.__index = Button

function Button.new(parentFrame, options)
    options = options or {}
    local self = setmetatable({}, Button)
    
    self.Title = options.Title or "Button"
    self.Description = options.Description or ""
    self.Callback = options.Callback or function() end
    self.IconName = options.Icon or "play"
    
    -- Main button row
    self.Frame = Creator.New("TextButton", {
        Parent = parentFrame,
        Name = "Button_" .. self.Title:gsub("%s+", ""),
        Size = UDim2.new(1, 0, 0, self.Description ~= "" and 48 or 38),
        BackgroundColor3 = "Card",
        BackgroundTransparency = 1, -- Start transparent to see card background
        Text = "",
        AutoButtonColor = false,
        ClipsDescendants = true
    })
    
    Creator:Corner(self.Frame, UDim.new(0, 6))
    
    -- Icon (text/emoji based)
    local iconChar = Icons[self.IconName] or Icons["play"] or "▶"
    self.IconLabel = Creator.New("TextLabel", {
        Parent = self.Frame,
        Size = UDim2.new(0, 20, 0, 20),
        Position = UDim2.new(0, 12, 0.5, 0),
        AnchorPoint = Vector2.new(0, 0.5),
        BackgroundTransparency = 1,
        Text = iconChar,
        TextColor3 = "Accent",
        TextSize = 14,
        Font = Enum.Font.GothamBold,
        TextXAlignment = Enum.TextXAlignment.Center,
        TextYAlignment = Enum.TextYAlignment.Center
    })
    
    -- Text container
    self.TextContainer = Creator.New("Frame", {
        Parent = self.Frame,
        Position = UDim2.new(0, 36, 0, 0), -- Left space aligned after IconLabel
        Size = UDim2.new(1, -72, 1, 0), -- Leaves 36px at the right for chevron
        BackgroundTransparency = 1
    })
    
    self.TitleLabel = Creator.New("TextLabel", {
        Parent = self.TextContainer,
        Size = UDim2.new(1, 0, self.Description ~= "" and 0.5 or 1, 0),
        Position = UDim2.new(0, 0, 0, 0),
        BackgroundTransparency = 1,
        Text = self.Title,
        TextColor3 = "Text",
        TextSize = 13,
        Font = Enum.Font.GothamBold,
        TextXAlignment = Enum.TextXAlignment.Left,
        TextYAlignment = self.Description ~= "" and Enum.TextYAlignment.Bottom or Enum.TextYAlignment.Center
    })
    
    if self.Description ~= "" then
        self.DescLabel = Creator.New("TextLabel", {
            Parent = self.TextContainer,
            Size = UDim2.new(1, 0, 0.5, 0),
            Position = UDim2.new(0, 0, 0.5, 0),
            BackgroundTransparency = 1,
            Text = self.Description,
            TextColor3 = "SubText",
            TextSize = 11,
            Font = Enum.Font.Gotham,
            TextXAlignment = Enum.TextXAlignment.Left,
            TextYAlignment = Enum.TextYAlignment.Top
        })
    end
    
    -- Right side action indicator (chevron >)
    self.ActionIcon = Creator.New("TextLabel", {
        Parent = self.Frame,
        Size = UDim2.new(0, 18, 0, 18),
        Position = UDim2.new(1, -12, 0.5, 0),
        AnchorPoint = Vector2.new(1, 0.5),
        BackgroundTransparency = 1,
        Text = "›",
        TextColor3 = "SubText",
        TextSize = 18,
        Font = Enum.Font.GothamBold,
        TextXAlignment = Enum.TextXAlignment.Center,
        TextYAlignment = Enum.TextYAlignment.Center
    })
    
    -- Hover / Press animations
    local hoverInfo = TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    
    self.Frame.MouseEnter:Connect(function()
        TweenService:Create(self.Frame, hoverInfo, {
            BackgroundTransparency = 0.88,
            BackgroundColor3 = ThemeManager:GetColor("Border")
        }):Play()
    end)
    
    self.Frame.MouseLeave:Connect(function()
        TweenService:Create(self.Frame, hoverInfo, {
            BackgroundTransparency = 1
        }):Play()
    end)
    
    self.Frame.MouseButton1Click:Connect(function()
        AnimationManager:Ripple(self.Frame, ThemeManager:GetColor("Accent"))
        pcall(self.Callback)
    end)
    
    return self
end

return Button

end)()

local Toggle = (function()
local TweenService = game:GetService("TweenService")
local Creator = Creator
local ThemeManager = ThemeManager
local AnimationManager = AnimationManager

local Toggle = {}
Toggle.__index = Toggle

function Toggle.new(parentFrame, id, options)
    options = options or {}
    local self = setmetatable({}, Toggle)
    
    self.Id = id
    self.Title = options.Title or "Toggle"
    self.Description = options.Description or ""
    self.Callback = options.Callback or function() end
    self.Value = options.Default or false
    
    -- Main row frame (entire row is clickable to make toggle comfortable)
    self.Frame = Creator.New("TextButton", {
        Parent = parentFrame,
        Name = "Toggle_" .. self.Title:gsub("%s+", ""),
        Size = UDim2.new(1, 0, 0, self.Description ~= "" and 48 or 38),
        BackgroundColor3 = "Card",
        BackgroundTransparency = 1,
        Text = "",
        AutoButtonColor = false,
        ClipsDescendants = true
    })
    
    Creator:Corner(self.Frame, UDim.new(0, 6))
    Creator:Padding(self.Frame, 0, 12, 0, 12)
    
    -- Text container
    self.TextContainer = Creator.New("Frame", {
        Parent = self.Frame,
        Position = UDim2.new(0, 6, 0, 0),
        Size = UDim2.new(1, -60, 1, 0),
        BackgroundTransparency = 1
    })
    
    self.TitleLabel = Creator.New("TextLabel", {
        Parent = self.TextContainer,
        Size = UDim2.new(1, 0, self.Description ~= "" and 0.5 or 1, 0),
        Position = UDim2.new(0, 0, 0, 0),
        BackgroundTransparency = 1,
        Text = self.Title,
        TextColor3 = "Text",
        TextSize = 13,
        Font = Enum.Font.GothamBold,
        TextXAlignment = Enum.TextXAlignment.Left,
        TextYAlignment = self.Description ~= "" and Enum.TextYAlignment.Bottom or Enum.TextYAlignment.Center
    })
    
    if self.Description ~= "" then
        self.DescLabel = Creator.New("TextLabel", {
            Parent = self.TextContainer,
            Size = UDim2.new(1, 0, 0.5, 0),
            Position = UDim2.new(0, 0, 0.5, 0),
            BackgroundTransparency = 1,
            Text = self.Description,
            TextColor3 = "SubText",
            TextSize = 11,
            Font = Enum.Font.Gotham,
            TextXAlignment = Enum.TextXAlignment.Left,
            TextYAlignment = Enum.TextYAlignment.Top
        })
    end
    
    -- Switch Container (Pill Frame)
    self.Switch = Creator.New("Frame", {
        Parent = self.Frame,
        Size = UDim2.new(0, 32, 0, 18),
        Position = UDim2.new(1, -10, 0.5, 0),
        AnchorPoint = Vector2.new(1, 0.5),
        BackgroundColor3 = Color3.fromRGB(0, 0, 0), -- Don't use string key to prevent auto-registering
        BorderSizePixel = 0
    })
    
    Creator:Corner(self.Switch, UDim.new(1, 0))
    
    -- Switch Stroke (Custom-built to avoid static registration under "Border")
    self.SwitchStroke = Creator.New("UIStroke", {
        Parent = self.Switch,
        Thickness = 1,
        Color = Color3.fromRGB(0, 0, 0), -- Don't use string key to prevent auto-registering
        ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
        LineJoinMode = Enum.LineJoinMode.Round,
        Transparency = 0.1
    })
    
    -- Switch Knob (Circle)
    self.Knob = Creator.New("Frame", {
        Parent = self.Switch,
        Size = UDim2.new(0, 12, 0, 12),
        Position = UDim2.new(0, 3, 0.5, 0),
        AnchorPoint = Vector2.new(0, 0.5),
        BackgroundColor3 = Color3.fromRGB(255, 255, 255), -- Don't use string key to prevent auto-registering
        BorderSizePixel = 0
    })
    
    Creator:Corner(self.Knob, UDim.new(1, 0))
    
    -- Hover effect on entire row
    local hoverInfo = TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    
    self.Connections = {}
    
    self.Frame.MouseEnter:Connect(function()
        TweenService:Create(self.Frame, hoverInfo, {
            BackgroundTransparency = 0.88,
            BackgroundColor3 = ThemeManager:GetColor("Border")
        }):Play()
    end)
    
    self.Frame.MouseLeave:Connect(function()
        TweenService:Create(self.Frame, hoverInfo, {
            BackgroundTransparency = 1
        }):Play()
    end)
    
    table.insert(self.Connections, self.Frame.MouseButton1Click:Connect(function()
        AnimationManager:Ripple(self.Frame, ThemeManager:GetColor("Accent"))
        self:SetValue(not self.Value)
    end))
    
    -- Apply initial value
    self:Update(true)
    
    return self
end

function Toggle:Destroy()
    if self.Connections then
        for _, connection in ipairs(self.Connections) do
            if connection then
                pcall(function()
                    connection:Disconnect()
                end)
            end
        end
        self.Connections = nil
    end
    -- Clean up registry
    if self.Switch then ThemeManager:Unregister(self.Switch) end
    if self.SwitchStroke then ThemeManager:Unregister(self.SwitchStroke) end
    if self.Knob then ThemeManager:Unregister(self.Knob) end
end

function Toggle:SetValue(value)
    self.Value = value
    self:Update()
end

function Toggle:GetValue()
    return self.Value
end

function Toggle:Update(instant)
    local duration = instant and 0 or 0.2
    local info = TweenInfo.new(duration, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    
    local targetPos = self.Value and UDim2.new(1, -15, 0.5, 0) or UDim2.new(0, 3, 0.5, 0)
    
    -- Dynamic theme keys based on state
    local pillThemeKey = self.Value and "Accent" or "SecondaryBackground"
    local strokeThemeKey = self.Value and "Accent" or "Border"
    local knobThemeKey = self.Value and "Background" or "Text"
    
    -- Re-register elements dynamically to correct keys in ThemeManager
    ThemeManager:Register(self.Switch, { BackgroundColor3 = pillThemeKey })
    ThemeManager:Register(self.SwitchStroke, { Color = strokeThemeKey })
    ThemeManager:Register(self.Knob, { BackgroundColor3 = knobThemeKey })
    
    local pillColor = ThemeManager:GetColor(pillThemeKey)
    local strokeColor = ThemeManager:GetColor(strokeThemeKey)
    local knobColor = ThemeManager:GetColor(knobThemeKey)
    
    TweenService:Create(self.Knob, info, { Position = targetPos, BackgroundColor3 = knobColor }):Play()
    TweenService:Create(self.Switch, info, { BackgroundColor3 = pillColor }):Play()
    TweenService:Create(self.SwitchStroke, info, { Color = strokeColor }):Play()
    
    if not instant then
        pcall(self.Callback, self.Value)
    end
end

return Toggle

end)()

local Slider = (function()
local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local Creator = Creator
local ThemeManager = ThemeManager

local Slider = {}
Slider.__index = Slider

function Slider.new(parentFrame, id, options)
    options = options or {}
    local self = setmetatable({}, Slider)
    
    self.Id = id
    self.Title = options.Title or "Slider"
    self.Description = options.Description or ""
    self.Min = options.Min or 0
    self.Max = options.Max or 100
    self.Default = options.Default or self.Min
    self.Decimal = options.Decimal or 0 -- 0 for integers, 1/2 for decimals
    self.Callback = options.Callback or function() end
    
    self.Value = math.clamp(self.Default, self.Min, self.Max)
    self.Dragging = false
    
    -- Main row frame (height is larger to fit title + track stacked with gap)
    self.Frame = Creator.New("Frame", {
        Parent = parentFrame,
        Name = "Slider_" .. self.Title:gsub("%s+", ""),
        Size = UDim2.new(1, 0, 0, self.Description ~= "" and 64 or 46),
        BackgroundColor3 = "Card",
        BackgroundTransparency = 1
    })
    
    Creator:Padding(self.Frame, 6, 12, 6, 12)
    
    -- Text/Title Row (Title + Description)
    self.TextContainer = Creator.New("Frame", {
        Parent = self.Frame,
        Size = UDim2.new(1, -60, 0, self.Description ~= "" and 30 or 20),
        Position = UDim2.new(0, 0, 0, 0),
        BackgroundTransparency = 1
    })
    
    self.TitleLabel = Creator.New("TextLabel", {
        Parent = self.TextContainer,
        Size = UDim2.new(1, 0, self.Description ~= "" and 0.5 or 1, 0),
        Position = UDim2.new(0, 0, 0, 0),
        BackgroundTransparency = 1,
        Text = self.Title,
        TextColor3 = "Text",
        TextSize = 13,
        Font = Enum.Font.GothamBold,
        TextXAlignment = Enum.TextXAlignment.Left,
        TextYAlignment = Enum.TextYAlignment.Center
    })
    
    if self.Description ~= "" then
        self.DescLabel = Creator.New("TextLabel", {
            Parent = self.TextContainer,
            Size = UDim2.new(1, 0, 0.5, 0),
            Position = UDim2.new(0, 0, 0.5, 0),
            BackgroundTransparency = 1,
            Text = self.Description,
            TextColor3 = "SubText",
            TextSize = 11,
            Font = Enum.Font.Gotham,
            TextXAlignment = Enum.TextXAlignment.Left,
            TextYAlignment = Enum.TextYAlignment.Top
        })
    end
    
    -- Value indicator on the top-right
    self.ValueLabel = Creator.New("TextLabel", {
        Parent = self.Frame,
        Size = UDim2.new(0, 50, 0, 20),
        Position = UDim2.new(1, 0, 0, 0),
        AnchorPoint = Vector2.new(1, 0),
        BackgroundTransparency = 1,
        Text = tostring(self.Value),
        TextColor3 = "Accent",
        TextSize = 13,
        Font = Enum.Font.GothamBold,
        TextXAlignment = Enum.TextXAlignment.Right,
        TextYAlignment = Enum.TextYAlignment.Center
    })
    
    -- Track click button (so users can click anywhere on the track)
    self.SliderBtn = Creator.New("TextButton", {
        Parent = self.Frame,
        Size = UDim2.new(1, 0, 0, 14),
        Position = UDim2.new(0, 0, 0, self.Description ~= "" and 36 or 22),
        AnchorPoint = Vector2.new(0, 0),
        BackgroundTransparency = 1,
        Text = ""
    })
    
    -- Back Track Frame (thin line)
    self.Track = Creator.New("Frame", {
        Parent = self.SliderBtn,
        Size = UDim2.new(1, 0, 0, 4),
        Position = UDim2.new(0, 0, 0.5, 0),
        AnchorPoint = Vector2.new(0, 0.5),
        BackgroundColor3 = "Border",
        BorderSizePixel = 0
    })
    Creator:Corner(self.Track, UDim.new(1, 0))
    
    -- Fill Track Frame (Accent color)
    self.Fill = Creator.New("Frame", {
        Parent = self.Track,
        Size = UDim2.new(0, 0, 1, 0),
        BackgroundColor3 = "Accent",
        BorderSizePixel = 0
    })
    Creator:Corner(self.Fill, UDim.new(1, 0))
    
    -- Knob Circle
    self.Knob = Creator.New("Frame", {
        Parent = self.SliderBtn,
        Size = UDim2.new(0, 12, 0, 12),
        Position = UDim2.new(0, 0, 0.5, 0),
        AnchorPoint = Vector2.new(0.5, 0.5),
        BackgroundColor3 = "Text",
        BorderSizePixel = 0
    })
    Creator:Corner(self.Knob, UDim.new(1, 0))
    Creator:Stroke(self.Knob, 1, "Border")
    
    -- Dragging functionality
    local function updateValue(input)
        local totalWidth = self.SliderBtn.AbsoluteSize.X
        local mouseX = input.Position.X
        local originX = self.SliderBtn.AbsolutePosition.X
        
        local ratio = math.clamp((mouseX - originX) / totalWidth, 0, 1)
        local rawValue = self.Min + (self.Max - self.Min) * ratio
        
        -- Round based on decimal points setting
        local multiplier = 10 ^ self.Decimal
        local roundedValue = math.round(rawValue * multiplier) / multiplier
        
        self.Value = math.clamp(roundedValue, self.Min, self.Max)
        self:Update()
    end
    
    self.Connections = {}
    
    table.insert(self.Connections, self.SliderBtn.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            self.Dragging = true
            updateValue(input)
            
            -- Pulse knob animation on drag start
            TweenService:Create(self.Knob, TweenInfo.new(0.15), {
                Size = UDim2.new(0, 14, 0, 14)
            }):Play()
        end
    end))
    
    table.insert(self.Connections, UserInputService.InputChanged:Connect(function(input)
        if self.Dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
            updateValue(input)
        end
    end))
    
    table.insert(self.Connections, UserInputService.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            if self.Dragging then
                self.Dragging = false
                -- Reset knob size animation
                TweenService:Create(self.Knob, TweenInfo.new(0.15), {
                    Size = UDim2.new(0, 12, 0, 12)
                }):Play()
            end
        end
    end))
    
    self:Update(true)
    
    return self
end

function Slider:Destroy()
    if self.Connections then
        for _, connection in ipairs(self.Connections) do
            if connection then
                pcall(function()
                    connection:Disconnect()
                end)
            end
        end
        self.Connections = nil
    end
end

function Slider:SetValue(val)
    self.Value = math.clamp(val, self.Min, self.Max)
    self:Update()
end

function Slider:GetValue()
    return self.Value
end

function Slider:Update(instant)
    local ratio = (self.Value - self.Min) / (self.Max - self.Min)
    local duration = instant and 0 or 0.15
    local info = TweenInfo.new(duration, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    
    TweenService:Create(self.Fill, info, { Size = UDim2.new(ratio, 0, 1, 0) }):Play()
    TweenService:Create(self.Knob, info, { Position = UDim2.new(ratio, 0, 0.5, 0) }):Play()
    
    self.ValueLabel.Text = tostring(self.Value)
    
    if not instant then
        pcall(self.Callback, self.Value)
    end
end

return Slider

end)()

local TextBox = (function()
local TweenService = game:GetService("TweenService")
local Creator = Creator
local ThemeManager = ThemeManager

local TextBox = {}
TextBox.__index = TextBox

function TextBox.new(parentFrame, id, options)
    options = options or {}
    local self = setmetatable({}, TextBox)
    
    self.Id = id
    self.Title = options.Title or "Input"
    self.Description = options.Description or ""
    self.Placeholder = options.Placeholder or "Type here..."
    self.Default = options.Default or ""
    self.ClearOnFocus = options.ClearTextOnFocus or false
    self.Callback = options.Callback or function() end
    
    self.Value = self.Default
    
    -- Main row frame
    self.Frame = Creator.New("Frame", {
        Parent = parentFrame,
        Name = "Input_" .. self.Title:gsub("%s+", ""),
        Size = UDim2.new(1, 0, 0, self.Description ~= "" and 48 or 38),
        BackgroundColor3 = "Card",
        BackgroundTransparency = 1
    })
    
    Creator:Padding(self.Frame, 0, 12, 0, 12)
    
    -- Text container
    self.TextContainer = Creator.New("Frame", {
        Parent = self.Frame,
        Position = UDim2.new(0, 6, 0, 0),
        Size = UDim2.new(0.5, -12, 1, 0),
        BackgroundTransparency = 1
    })
    
    self.TitleLabel = Creator.New("TextLabel", {
        Parent = self.TextContainer,
        Size = UDim2.new(1, 0, self.Description ~= "" and 0.5 or 1, 0),
        Position = UDim2.new(0, 0, 0, 0),
        BackgroundTransparency = 1,
        Text = self.Title,
        TextColor3 = "Text",
        TextSize = 13,
        Font = Enum.Font.GothamBold,
        TextXAlignment = Enum.TextXAlignment.Left,
        TextYAlignment = self.Description ~= "" and Enum.TextYAlignment.Bottom or Enum.TextYAlignment.Center
    })
    
    if self.Description ~= "" then
        self.DescLabel = Creator.New("TextLabel", {
            Parent = self.TextContainer,
            Size = UDim2.new(1, 0, 0.5, 0),
            Position = UDim2.new(0, 0, 0.5, 0),
            BackgroundTransparency = 1,
            Text = self.Description,
            TextColor3 = "SubText",
            TextSize = 11,
            Font = Enum.Font.Gotham,
            TextXAlignment = Enum.TextXAlignment.Left,
            TextYAlignment = Enum.TextYAlignment.Top
        })
    end
    
    -- Input field Card (Right side)
    self.InputCard = Creator.New("Frame", {
        Parent = self.Frame,
        Size = UDim2.new(0.5, -12, 0, 26),
        Position = UDim2.new(1, -12, 0.5, 0),
        AnchorPoint = Vector2.new(1, 0.5),
        BackgroundColor3 = "SecondaryBackground",
        BorderSizePixel = 0
    })
    Creator:Corner(self.InputCard, UDim.new(0, 5))
    self.CardStroke = Creator:Stroke(self.InputCard, 1, "Border")
    
    -- Input TextBox
    self.TextBox = Creator.New("TextBox", {
        Parent = self.InputCard,
        Size = UDim2.new(1, -16, 1, 0),
        Position = UDim2.new(0.5, 0, 0.5, 0),
        AnchorPoint = Vector2.new(0.5, 0.5),
        BackgroundTransparency = 1,
        Text = self.Default,
        PlaceholderText = self.Placeholder,
        PlaceholderColor3 = ThemeManager:GetColor("SubText"),
        TextColor3 = "Text",
        TextSize = 12,
        Font = Enum.Font.Gotham,
        ClearTextOnFocus = self.ClearOnFocus,
        TextXAlignment = Enum.TextXAlignment.Left,
        TextYAlignment = Enum.TextYAlignment.Center
    })
    
    self.Connections = {}
    
    -- Focus indicators
    table.insert(self.Connections, self.TextBox.Focused:Connect(function()
        TweenService:Create(self.CardStroke, TweenInfo.new(0.2), { Color = ThemeManager:GetColor("Accent") }):Play()
    end))
    
    table.insert(self.Connections, self.TextBox.FocusLost:Connect(function(enterPressed)
        TweenService:Create(self.CardStroke, TweenInfo.new(0.2), { Color = ThemeManager:GetColor("Border") }):Play()
        self.Value = self.TextBox.Text
        pcall(self.Callback, self.Value, enterPressed)
    end))
    
    return self
end

function TextBox:Destroy()
    if self.Connections then
        for _, connection in ipairs(self.Connections) do
            if connection then
                pcall(function()
                    connection:Disconnect()
                end)
            end
        end
        self.Connections = nil
    end
end

function TextBox:SetValue(text)
    self.Value = tostring(text)
    self.TextBox.Text = self.Value
    pcall(self.Callback, self.Value, false)
end

function TextBox:GetValue()
    return self.TextBox.Text
end

return TextBox

end)()

local Keybind = (function()
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local Creator = Creator
local ThemeManager = ThemeManager
local AnimationManager = AnimationManager

local Keybind = {}
Keybind.__index = Keybind

function Keybind.new(parentFrame, id, options)
    options = options or {}
    local self = setmetatable({}, Keybind)
    
    self.Id = id
    self.Title = options.Title or "Keybind"
    self.Description = options.Description or ""
    self.Default = options.Default or Enum.KeyCode.RightControl
    self.Callback = options.Callback or function() end
    
    self.Value = self.Default
    self.Binding = false
    
    -- Main row frame
    self.Frame = Creator.New("Frame", {
        Parent = parentFrame,
        Name = "Keybind_" .. self.Title:gsub("%s+", ""),
        Size = UDim2.new(1, 0, 0, self.Description ~= "" and 48 or 38),
        BackgroundColor3 = "Card",
        BackgroundTransparency = 1
    })
    
    Creator:Padding(self.Frame, 0, 12, 0, 12)
    
    -- Text container
    self.TextContainer = Creator.New("Frame", {
        Parent = self.Frame,
        Position = UDim2.new(0, 6, 0, 0),
        Size = UDim2.new(0.6, -12, 1, 0),
        BackgroundTransparency = 1
    })
    
    self.TitleLabel = Creator.New("TextLabel", {
        Parent = self.TextContainer,
        Size = UDim2.new(1, 0, self.Description ~= "" and 0.5 or 1, 0),
        Position = UDim2.new(0, 0, 0, 0),
        BackgroundTransparency = 1,
        Text = self.Title,
        TextColor3 = "Text",
        TextSize = 13,
        Font = Enum.Font.GothamBold,
        TextXAlignment = Enum.TextXAlignment.Left,
        TextYAlignment = self.Description ~= "" and Enum.TextYAlignment.Bottom or Enum.TextYAlignment.Center
    })
    
    if self.Description ~= "" then
        self.DescLabel = Creator.New("TextLabel", {
            Parent = self.TextContainer,
            Size = UDim2.new(1, 0, 0.5, 0),
            Position = UDim2.new(0, 0, 0.5, 0),
            BackgroundTransparency = 1,
            Text = self.Description,
            TextColor3 = "SubText",
            TextSize = 11,
            Font = Enum.Font.Gotham,
            TextXAlignment = Enum.TextXAlignment.Left,
            TextYAlignment = Enum.TextYAlignment.Top
        })
    end
    
    -- Trigger Button (Right side)
    self.BindBtn = Creator.New("TextButton", {
        Parent = self.Frame,
        Size = UDim2.new(0.4, -12, 0, 26),
        Position = UDim2.new(1, -12, 0.5, 0),
        AnchorPoint = Vector2.new(1, 0.5),
        BackgroundColor3 = "SecondaryBackground",
        Text = self.Value and self.Value.Name or "None",
        TextColor3 = "Text",
        Font = Enum.Font.GothamBold,
        TextSize = 11,
        AutoButtonColor = false
    })
    Creator:Corner(self.BindBtn, UDim.new(0, 5))
    self.CardStroke = Creator:Stroke(self.BindBtn, 1, "Border")
    
    self.Connections = {}
    self.TempConnection = nil
    
    -- Click event to enter binding mode
    table.insert(self.Connections, self.BindBtn.MouseButton1Click:Connect(function()
        if self.Binding then return end
        
        AnimationManager:Ripple(self.BindBtn, ThemeManager:GetColor("Accent"))
        self.Binding = true
        self.BindBtn.Text = "..."
        TweenService:Create(self.CardStroke, TweenInfo.new(0.15), { Color = ThemeManager:GetColor("Accent") }):Play()
        
        local connection
        connection = UserInputService.InputBegan:Connect(function(input)
            -- Ignore mouse inputs, only handle keyboard
            if input.UserInputType == Enum.UserInputType.Keyboard then
                local key = input.KeyCode
                -- Disconnect first to prevent key from triggering other listeners immediately
                if connection then
                    connection:Disconnect()
                    self.TempConnection = nil
                end
                
                if key ~= Enum.KeyCode.Escape then
                    self.Value = key
                    self.BindBtn.Text = key.Name
                else
                    -- Escape clears bind
                    self.Value = nil
                    self.BindBtn.Text = "None"
                end
                
                TweenService:Create(self.CardStroke, TweenInfo.new(0.15), { Color = ThemeManager:GetColor("Border") }):Play()
                
                -- Small delay so the newly-bound key doesn't also trigger the window toggle
                task.delay(0.15, function()
                    self.Binding = false
                    pcall(self.Callback, self.Value)
                end)
            end
        end)
        self.TempConnection = connection
    end))
    
    return self
end

function Keybind:Destroy()
    if self.Connections then
        for _, connection in ipairs(self.Connections) do
            if connection then
                pcall(function()
                    connection:Disconnect()
                end)
            end
        end
        self.Connections = nil
    end
    if self.TempConnection then
        pcall(function()
            self.TempConnection:Disconnect()
        end)
        self.TempConnection = nil
    end
end

function Keybind:SetValue(key)
    if typeof(key) == "EnumItem" then
        self.Value = key
    else
        self.Value = nil
    end
    self.BindBtn.Text = self.Value and self.Value.Name or "None"
    pcall(self.Callback, self.Value)
end

function Keybind:GetValue()
    return self.Value
end

return Keybind

end)()

local ColorPicker = (function()
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local Creator = Creator
local ThemeManager = ThemeManager
local AnimationManager = AnimationManager

local ColorPicker = {}
ColorPicker.__index = ColorPicker

function ColorPicker.new(parentFrame, id, options)
    options = options or {}
    local self = setmetatable({}, ColorPicker)
    
    self.Id = id
    self.Title = options.Title or "Color Picker"
    self.Description = options.Description or ""
    self.Callback = options.Callback or function() end
    self.Value = options.Default or Color3.fromRGB(0, 120, 212) -- Default Accent
    
    local h, s, v = Color3.toHSV(self.Value)
    self.Hue = h
    self.Sat = s
    self.Val = v
    self.Expanded = false
    self.Connections = {}
    
    -- Preset colors
    self.Presets = {
        Color3.fromRGB(232, 17, 35),   -- Red
        Color3.fromRGB(255, 140, 0),   -- Orange
        Color3.fromRGB(16, 124, 65),   -- Green
        Color3.fromRGB(0, 120, 212),   -- Blue
        Color3.fromRGB(155, 93, 229),  -- Purple
        Color3.fromRGB(255, 0, 255),   -- Magenta
        Color3.fromRGB(255, 255, 255), -- White
        Color3.fromRGB(0, 0, 0)        -- Black
    }
    
    -- Main row frame (height dynamically changes when expanded)
    self.Frame = Creator.New("Frame", {
        Parent = parentFrame,
        Name = "ColorPicker_" .. self.Title:gsub("%s+", ""),
        Size = UDim2.new(1, 0, 0, self.Description ~= "" and 48 or 38),
        BackgroundColor3 = "Card",
        BackgroundTransparency = 1,
        ClipsDescendants = true
    })
    
    -- Text container
    self.TextContainer = Creator.New("Frame", {
        Parent = self.Frame,
        Position = UDim2.new(0, 12, 0, 0),
        Size = UDim2.new(0.5, -20, 0, self.Description ~= "" and 48 or 38),
        BackgroundTransparency = 1
    })
    
    self.TitleLabel = Creator.New("TextLabel", {
        Parent = self.TextContainer,
        Size = UDim2.new(1, 0, self.Description ~= "" and 0.5 or 1, 0),
        Position = UDim2.new(0, 0, 0, 0),
        BackgroundTransparency = 1,
        Text = self.Title,
        TextColor3 = "Text",
        TextSize = 13,
        Font = Enum.Font.GothamBold,
        TextXAlignment = Enum.TextXAlignment.Left,
        TextYAlignment = self.Description ~= "" and Enum.TextYAlignment.Bottom or Enum.TextYAlignment.Center
    })
    
    if self.Description ~= "" then
        self.DescLabel = Creator.New("TextLabel", {
            Parent = self.TextContainer,
            Size = UDim2.new(1, 0, 0.5, 0),
            Position = UDim2.new(0, 0, 0.5, 0),
            BackgroundTransparency = 1,
            Text = self.Description,
            TextColor3 = "SubText",
            TextSize = 11,
            Font = Enum.Font.Gotham,
            TextXAlignment = Enum.TextXAlignment.Left,
            TextYAlignment = Enum.TextYAlignment.Top
        })
    end
    
    -- Preview square / Button trigger (Right side)
    self.PreviewBtn = Creator.New("TextButton", {
        Parent = self.Frame,
        Size = UDim2.new(0, 32, 0, 20),
        Position = UDim2.new(1, -12, 0, self.Description ~= "" and 14 or 9),
        AnchorPoint = Vector2.new(1, 0),
        BackgroundColor3 = self.Value,
        BorderSizePixel = 0,
        Text = ""
    })
    Creator:Corner(self.PreviewBtn, UDim.new(0, 4))
    Creator:Stroke(self.PreviewBtn, 1, "Border")
    
    -- Expanded picker area
    self.PickerArea = Creator.New("Frame", {
        Parent = self.Frame,
        Position = UDim2.new(0, 12, 0, self.Description ~= "" and 44 or 38),
        Size = UDim2.new(1, -24, 0, 0),
        BackgroundTransparency = 1,
        ClipsDescendants = true
    })
    
    -- Vertical layout for picker sliders
    self.PickerLayout = Creator.New("UIListLayout", {
        Parent = self.PickerArea,
        SortOrder = Enum.SortOrder.LayoutOrder,
        Padding = UDim.new(0, 8)
    })
    
    table.insert(self.Connections, self.PreviewBtn.MouseButton1Click:Connect(function()
        AnimationManager:Ripple(self.PreviewBtn)
        self:Toggle()
    end))
    
    -- Add Hue, Saturation, Value sliders and Presets container
    self:BuildSliders()
    
    return self
end

function ColorPicker:Toggle()
    self.Expanded = not self.Expanded
    
    local pickerHeight = 125 -- total height for sliders + presets
    local baseHeight = self.Description ~= "" and 48 or 38
    
    local targetFrameHeight = self.Expanded and (baseHeight + pickerHeight + 10) or baseHeight
    local targetPickerHeight = self.Expanded and pickerHeight or 0
    
    local info = TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    
    TweenService:Create(self.Frame, info, { Size = UDim2.new(1, 0, 0, targetFrameHeight) }):Play()
    TweenService:Create(self.PickerArea, info, { Size = UDim2.new(1, -24, 0, targetPickerHeight) }):Play()
end

function ColorPicker:BuildSliders()
    -- 1. HUE SLIDER
    local hueFrame = Creator.New("Frame", {
        Parent = self.PickerArea,
        Size = UDim2.new(1, 0, 0, 16),
        BackgroundTransparency = 1,
        LayoutOrder = 1
    })
    
    local hueLabel = Creator.New("TextLabel", {
        Parent = hueFrame,
        Size = UDim2.new(0, 30, 1, 0),
        BackgroundTransparency = 1,
        Text = "H",
        TextColor3 = "SubText",
        TextSize = 11,
        Font = Enum.Font.GothamBold,
        TextXAlignment = Enum.TextXAlignment.Left,
        TextYAlignment = Enum.TextYAlignment.Center
    })
    
    local hueTrack = Creator.New("TextButton", {
        Parent = hueFrame,
        Size = UDim2.new(1, -40, 0, 6),
        Position = UDim2.new(0, 30, 0.5, 0),
        AnchorPoint = Vector2.new(0, 0.5),
        BackgroundColor3 = Color3.new(1, 1, 1),
        BorderSizePixel = 0,
        Text = ""
    })
    Creator:Corner(hueTrack, UDim.new(1, 0))
    
    -- Rainbow Gradient Sequence
    local uigrad = Creator.New("UIGradient", {
        Parent = hueTrack,
        Color = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 0)),
            ColorSequenceKeypoint.new(0.167, Color3.fromRGB(255, 255, 0)),
            ColorSequenceKeypoint.new(0.333, Color3.fromRGB(0, 255, 0)),
            ColorSequenceKeypoint.new(0.5, Color3.fromRGB(0, 255, 255)),
            ColorSequenceKeypoint.new(0.667, Color3.fromRGB(0, 0, 255)),
            ColorSequenceKeypoint.new(0.833, Color3.fromRGB(255, 0, 255)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 0))
        })
    })
    
    local hueKnob = Creator.New("Frame", {
        Parent = hueTrack,
        Size = UDim2.new(0, 10, 0, 10),
        Position = UDim2.new(self.Hue, 0, 0.5, 0),
        AnchorPoint = Vector2.new(0.5, 0.5),
        BackgroundColor3 = "Text",
        BorderSizePixel = 0
    })
    Creator:Corner(hueKnob, UDim.new(1, 0))
    Creator:Stroke(hueKnob, 1, "Border")
    
    -- Drag Hue logic
    local dragHue = false
    local function updateHue(input)
        local ratio = math.clamp((input.Position.X - hueTrack.AbsolutePosition.X) / hueTrack.AbsoluteSize.X, 0, 1)
        self.Hue = ratio
        hueKnob.Position = UDim2.new(ratio, 0, 0.5, 0)
        self:UpdateColor()
    end
    
    table.insert(self.Connections, hueTrack.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragHue = true
            updateHue(input)
        end
    end))
    
    table.insert(self.Connections, UserInputService.InputChanged:Connect(function(input)
        if dragHue and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
            updateHue(input)
        end
    end))
    
    table.insert(self.Connections, UserInputService.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragHue = false
        end
    end))
    
    -- 2. SATURATION SLIDER
    local satFrame = Creator.New("Frame", {
        Parent = self.PickerArea,
        Size = UDim2.new(1, 0, 0, 16),
        BackgroundTransparency = 1,
        LayoutOrder = 2
    })
    
    local satLabel = Creator.New("TextLabel", {
        Parent = satFrame,
        Size = UDim2.new(0, 30, 1, 0),
        BackgroundTransparency = 1,
        Text = "S",
        TextColor3 = "SubText",
        TextSize = 11,
        Font = Enum.Font.GothamBold,
        TextXAlignment = Enum.TextXAlignment.Left,
        TextYAlignment = Enum.TextYAlignment.Center
    })
    
    local satTrack = Creator.New("TextButton", {
        Parent = satFrame,
        Size = UDim2.new(1, -40, 0, 6),
        Position = UDim2.new(0, 30, 0.5, 0),
        AnchorPoint = Vector2.new(0, 0.5),
        BackgroundColor3 = Color3.new(1, 1, 1),
        BorderSizePixel = 0,
        Text = ""
    })
    Creator:Corner(satTrack, UDim.new(1, 0))
    
    local satGradient = Creator.New("UIGradient", {
        Parent = satTrack,
        Color = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)),
            ColorSequenceKeypoint.new(1, Color3.fromHSV(self.Hue, 1, 1))
        })
    })
    
    local satKnob = Creator.New("Frame", {
        Parent = satTrack,
        Size = UDim2.new(0, 10, 0, 10),
        Position = UDim2.new(self.Sat, 0, 0.5, 0),
        AnchorPoint = Vector2.new(0.5, 0.5),
        BackgroundColor3 = "Text",
        BorderSizePixel = 0
    })
    Creator:Corner(satKnob, UDim.new(1, 0))
    Creator:Stroke(satKnob, 1, "Border")
    
    -- Drag Saturation logic
    local dragSat = false
    local function updateSat(input)
        local ratio = math.clamp((input.Position.X - satTrack.AbsolutePosition.X) / satTrack.AbsoluteSize.X, 0, 1)
        self.Sat = ratio
        satKnob.Position = UDim2.new(ratio, 0, 0.5, 0)
        self:UpdateColor()
    end
    
    table.insert(self.Connections, satTrack.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragSat = true
            updateSat(input)
        end
    end))
    
    table.insert(self.Connections, UserInputService.InputChanged:Connect(function(input)
        if dragSat and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
            updateSat(input)
        end
    end))
    
    table.insert(self.Connections, UserInputService.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragSat = false
        end
    end))
    
    -- 3. VALUE / BRIGHTNESS SLIDER
    local valFrame = Creator.New("Frame", {
        Parent = self.PickerArea,
        Size = UDim2.new(1, 0, 0, 16),
        BackgroundTransparency = 1,
        LayoutOrder = 3
    })
    
    local valLabel = Creator.New("TextLabel", {
        Parent = valFrame,
        Size = UDim2.new(0, 30, 1, 0),
        BackgroundTransparency = 1,
        Text = "V",
        TextColor3 = "SubText",
        TextSize = 11,
        Font = Enum.Font.GothamBold,
        TextXAlignment = Enum.TextXAlignment.Left,
        TextYAlignment = Enum.TextYAlignment.Center
    })
    
    local valTrack = Creator.New("TextButton", {
        Parent = valFrame,
        Size = UDim2.new(1, -40, 0, 6),
        Position = UDim2.new(0, 30, 0.5, 0),
        AnchorPoint = Vector2.new(0, 0.5),
        BackgroundColor3 = Color3.new(1, 1, 1),
        BorderSizePixel = 0,
        Text = ""
    })
    Creator:Corner(valTrack, UDim.new(1, 0))
    
    local valGradient = Creator.New("UIGradient", {
        Parent = valTrack,
        Color = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 0, 0)),
            ColorSequenceKeypoint.new(1, Color3.fromHSV(self.Hue, self.Sat, 1))
        })
    })
    
    local valKnob = Creator.New("Frame", {
        Parent = valTrack,
        Size = UDim2.new(0, 10, 0, 10),
        Position = UDim2.new(self.Val, 0, 0.5, 0),
        AnchorPoint = Vector2.new(0.5, 0.5),
        BackgroundColor3 = "Text",
        BorderSizePixel = 0
    })
    Creator:Corner(valKnob, UDim.new(1, 0))
    Creator:Stroke(valKnob, 1, "Border")
    
    -- Drag Value logic
    local dragVal = false
    local function updateVal(input)
        local ratio = math.clamp((input.Position.X - valTrack.AbsolutePosition.X) / valTrack.AbsoluteSize.X, 0, 1)
        self.Val = ratio
        valKnob.Position = UDim2.new(ratio, 0, 0.5, 0)
        self:UpdateColor()
    end
    
    table.insert(self.Connections, valTrack.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragVal = true
            updateVal(input)
        end
    end))
    
    table.insert(self.Connections, UserInputService.InputChanged:Connect(function(input)
        if dragVal and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
            updateVal(input)
        end
    end))
    
    table.insert(self.Connections, UserInputService.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragVal = false
        end
    end))
    
    -- 4. PRESETS ROW
    local presetsContainer = Creator.New("Frame", {
        Parent = self.PickerArea,
        Size = UDim2.new(1, 0, 0, 24),
        BackgroundTransparency = 1,
        LayoutOrder = 4
    })
    Creator:Padding(presetsContainer, 0, 0, 0, 30)
    
    Creator.New("UIListLayout", {
        Parent = presetsContainer,
        FillDirection = Enum.FillDirection.Horizontal,
        SortOrder = Enum.SortOrder.LayoutOrder,
        Padding = UDim.new(0, 6)
    })
    
    for i, color in ipairs(self.Presets) do
        local pCircle = Creator.New("TextButton", {
            Parent = presetsContainer,
            Size = UDim2.new(0, 18, 0, 18),
            BackgroundColor3 = color,
            BorderSizePixel = 0,
            Text = "",
            LayoutOrder = i
        })
        Creator:Corner(pCircle, UDim.new(1, 0))
        Creator:Stroke(pCircle, 1, "Border")
        
        table.insert(self.Connections, pCircle.MouseButton1Click:Connect(function()
            AnimationManager:Ripple(pCircle)
            self:SetValue(color)
        end))
    end
    
    -- Update function to refresh gradient colors dynamically
    self.RefreshGradients = function()
        satGradient.Color = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)),
            ColorSequenceKeypoint.new(1, Color3.fromHSV(self.Hue, 1, 1))
        })
        
        valGradient.Color = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 0, 0)),
            ColorSequenceKeypoint.new(1, Color3.fromHSV(self.Hue, self.Sat, 1))
        })
        
        hueKnob.Position = UDim2.new(self.Hue, 0, 0.5, 0)
        satKnob.Position = UDim2.new(self.Sat, 0, 0.5, 0)
        valKnob.Position = UDim2.new(self.Val, 0, 0.5, 0)
    end
end

function ColorPicker:Destroy()
    if self.Connections then
        for _, connection in ipairs(self.Connections) do
            if connection then
                pcall(function()
                    connection:Disconnect()
                end)
            end
        end
        self.Connections = nil
    end
end

function ColorPicker:UpdateColor()
    self.Value = Color3.fromHSV(self.Hue, self.Sat, self.Val)
    self.PreviewBtn.BackgroundColor3 = self.Value
    
    if self.RefreshGradients then
        self.RefreshGradients()
    end
    
    pcall(self.Callback, self.Value)
end

function ColorPicker:SetValue(color)
    self.Value = color
    local h, s, v = Color3.toHSV(color)
    self.Hue = h
    self.Sat = s
    self.Val = v
    self:UpdateColor()
end

function ColorPicker:GetValue()
    return self.Value
end

return ColorPicker

end)()

local Dropdown = (function()
local TweenService = game:GetService("TweenService")
local Creator = Creator
local Icons = Icons
local ThemeManager = ThemeManager
local AnimationManager = AnimationManager

local Dropdown = {}
Dropdown.__index = Dropdown

function Dropdown.new(parentFrame, id, options)
    options = options or {}
    local self = setmetatable({}, Dropdown)
    
    self.Id = id
    self.Title = options.Title or "Dropdown"
    self.Description = options.Description or ""
    self.Values = options.Values or {}
    self.MultiSelect = options.MultiSelect or false
    self.Callback = options.Callback or function() end
    
    self.Selected = options.Default
    if self.MultiSelect then
        self.Selected = type(options.Default) == "table" and options.Default or {}
    else
        self.Selected = type(options.Default) == "string" and options.Default or ""
    end
    
    self.Expanded = false
    self.OptionButtons = {}
    self.Searchable = options.Searchable ~= false
    self.Connections = {}
    
    -- Find MainFrame by walking up the hierarchy
    local mainFrame = parentFrame
    while mainFrame and mainFrame.Name ~= "MainFrame" and mainFrame.Parent ~= game do
        mainFrame = mainFrame.Parent
    end
    self.MainFrame = mainFrame
    
    -- Main row frame (fixed height now since dropdown list is in side popup)
    self.Frame = Creator.New("Frame", {
        Parent = parentFrame,
        Name = "Dropdown_" .. self.Title:gsub("%s+", ""),
        Size = UDim2.new(1, 0, 0, self.Description ~= "" and 48 or 38),
        BackgroundColor3 = "Card",
        BackgroundTransparency = 1,
        ClipsDescendants = true
    })
    
    -- Title/Description label frame
    self.TextContainer = Creator.New("Frame", {
        Parent = self.Frame,
        Position = UDim2.new(0, 12, 0, 0),
        Size = UDim2.new(0.5, -20, 0, self.Description ~= "" and 48 or 38),
        BackgroundTransparency = 1
    })
    
    self.TitleLabel = Creator.New("TextLabel", {
        Parent = self.TextContainer,
        Size = UDim2.new(1, 0, self.Description ~= "" and 0.5 or 1, 0),
        Position = UDim2.new(0, 0, 0, 0),
        BackgroundTransparency = 1,
        Text = self.Title,
        TextColor3 = "Text",
        TextSize = 13,
        Font = Enum.Font.GothamBold,
        TextXAlignment = Enum.TextXAlignment.Left,
        TextYAlignment = self.Description ~= "" and Enum.TextYAlignment.Bottom or Enum.TextYAlignment.Center
    })
    
    if self.Description ~= "" then
        self.DescLabel = Creator.New("TextLabel", {
            Parent = self.TextContainer,
            Size = UDim2.new(1, 0, 0.5, 0),
            Position = UDim2.new(0, 0, 0.5, 0),
            BackgroundTransparency = 1,
            Text = self.Description,
            TextColor3 = "SubText",
            TextSize = 11,
            Font = Enum.Font.Gotham,
            TextXAlignment = Enum.TextXAlignment.Left,
            TextYAlignment = Enum.TextYAlignment.Top
        })
    end
    
    -- Dropdown display card (Right side selector field)
    self.Selector = Creator.New("TextButton", {
        Parent = self.Frame,
        Size = UDim2.new(0.5, -12, 0, 26),
        Position = UDim2.new(1, -12, 0, self.Description ~= "" and 11 or 6),
        AnchorPoint = Vector2.new(1, 0),
        BackgroundColor3 = "SecondaryBackground",
        Text = "",
        AutoButtonColor = false
    })
    Creator:Corner(self.Selector, UDim.new(0, 5))
    Creator:Stroke(self.Selector, 1, "Border")
    
    self.SelectedLabel = Creator.New("TextLabel", {
        Parent = self.Selector,
        Position = UDim2.new(0, 10, 0, 0),
        Size = UDim2.new(1, -36, 1, 0),
        BackgroundTransparency = 1,
        Text = "Select...",
        TextColor3 = "Text",
        TextSize = 12,
        Font = Enum.Font.Gotham,
        TextXAlignment = Enum.TextXAlignment.Left,
        TextYAlignment = Enum.TextYAlignment.Center,
        ClipsDescendants = true
    })
    
    self.Chevron = Creator.New("TextLabel", {
        Parent = self.Selector,
        Size = UDim2.new(0, 18, 0, 18),
        Position = UDim2.new(1, -10, 0.5, 0),
        AnchorPoint = Vector2.new(1, 0.5),
        BackgroundTransparency = 1,
        Text = "⏄",
        TextColor3 = "SubText",
        TextSize = 13,
        Font = Enum.Font.GothamBold,
        TextXAlignment = Enum.TextXAlignment.Center,
        TextYAlignment = Enum.TextYAlignment.Center
    })
    
    -- Popup Drawer System (Created on the Window MainFrame level to overlay pages)
    if self.MainFrame then
        -- Overlay click detector
        self.Overlay = Creator.New("TextButton", {
            Parent = self.MainFrame,
            Name = "DropdownOverlay_" .. self.Title,
            Size = UDim2.new(1, 0, 1, 0),
            Position = UDim2.new(0, 0, 0, 0),
            BackgroundTransparency = 1,
            Text = "",
            Visible = false,
            ZIndex = 4900
        })
        
        -- Right Side Popup Drawer Panel
        self.PopupPanel = Creator.New("Frame", {
            Parent = self.MainFrame,
            Name = "DropdownPopup_" .. self.Title,
            Size = UDim2.new(0, 200, 1, 0),
            Position = UDim2.new(1, 200, 0, 0), -- Offscreen right
            AnchorPoint = Vector2.new(1, 0),
            BackgroundColor3 = "Card",
            BorderSizePixel = 0,
            ZIndex = 5000
        })
        
        Creator:Stroke(self.PopupPanel, 1, "Border")
        
        -- Header title inside popup panel
        self.PopupHeader = Creator.New("TextLabel", {
            Parent = self.PopupPanel,
            Size = UDim2.new(1, -24, 0, 36),
            Position = UDim2.new(0, 12, 0, 6),
            BackgroundTransparency = 1,
            Text = self.Title,
            TextColor3 = "Text",
            TextSize = 12,
            Font = Enum.Font.GothamBold,
            TextXAlignment = Enum.TextXAlignment.Center,
            TextYAlignment = Enum.TextYAlignment.Center,
            ZIndex = 5001
        })
        
        -- Search Box
        local currentY = 42
        if self.Searchable then
            self.SearchFrame = Creator.New("Frame", {
                Parent = self.PopupPanel,
                Size = UDim2.new(1, -24, 0, 28),
                Position = UDim2.new(0, 12, 0, currentY),
                BackgroundColor3 = "SecondaryBackground",
                ZIndex = 5002
            })
            Creator:Corner(self.SearchFrame, UDim.new(0, 5))
            Creator:Stroke(self.SearchFrame, 1, "Border")
            
            local searchIcon = Creator.New("TextLabel", {
                Parent = self.SearchFrame,
                Size = UDim2.new(0, 18, 0, 18),
                Position = UDim2.new(0, 6, 0.5, 0),
                AnchorPoint = Vector2.new(0, 0.5),
                BackgroundTransparency = 1,
                Text = "🔍",
                TextColor3 = "SubText",
                TextSize = 11,
                Font = Enum.Font.GothamBold,
                TextXAlignment = Enum.TextXAlignment.Center,
                TextYAlignment = Enum.TextYAlignment.Center,
                ZIndex = 5003
            })
            
            self.SearchInput = Creator.New("TextBox", {
                Parent = self.SearchFrame,
                Size = UDim2.new(1, -32, 1, 0),
                Position = UDim2.new(0, 26, 0, 0),
                BackgroundTransparency = 1,
                Text = "",
                PlaceholderText = "Search...",
                TextColor3 = "Text",
                PlaceholderColor3 = ThemeManager:GetColor("SubText"),
                TextSize = 11,
                Font = Enum.Font.Gotham,
                TextXAlignment = Enum.TextXAlignment.Left,
                TextYAlignment = Enum.TextYAlignment.Center,
                ZIndex = 5003
            })
            
            table.insert(self.Connections, self.SearchInput:GetPropertyChangedSignal("Text"):Connect(function()
                self:FilterOptions(self.SearchInput.Text)
            end))
            
            currentY = currentY + 34
        end
        
        -- Options Scroll List
        self.ScrollList = Creator.New("ScrollingFrame", {
            Parent = self.PopupPanel,
            Size = UDim2.new(1, -8, 1, -(currentY + 12)),
            Position = UDim2.new(0, 4, 0, currentY),
            BackgroundTransparency = 1,
            ScrollBarThickness = 2,
            ScrollBarImageColor3 = ThemeManager:GetColor("Border"),
            CanvasSize = UDim2.new(0, 0, 0, 0),
            ZIndex = 5002
        })
        
        self.ListLayout = Creator.New("UIListLayout", {
            Parent = self.ScrollList,
            SortOrder = Enum.SortOrder.LayoutOrder,
            Padding = UDim.new(0, 4)
        })
        
        Creator:Padding(self.ScrollList, 0, 8, 0, 8)
        
        table.insert(self.Connections, self.ListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
            self.ScrollList.CanvasSize = UDim2.new(0, 0, 0, self.ListLayout.AbsoluteContentSize.Y + 10)
        end))
        
        -- Overlay click closes popup
        table.insert(self.Connections, self.Overlay.MouseButton1Click:Connect(function()
            self:Toggle()
        end))
    end
    
    -- Selector click handler to expand dropdown
    table.insert(self.Connections, self.Selector.MouseButton1Click:Connect(function()
        AnimationManager:Ripple(self.Selector, ThemeManager:GetColor("Accent"))
        self:Toggle()
    end))
    
    -- Initialize options
    self:BuildOptions()
    self:UpdateSelectorText()
    
    return self
end

function Dropdown:Toggle()
    self.Expanded = not self.Expanded
    
    if not self.Expanded and self.SearchInput then
        self.SearchInput.Text = "" -- Reset search text
    end
    
    local targetPos = self.Expanded and UDim2.new(1, 0, 0, 0) or UDim2.new(1, 200, 0, 0)
    local targetChevronRotation = self.Expanded and 180 or 0
    
    local info = TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    
    if self.Expanded then
        self.Overlay.Visible = true
    else
        task.delay(0.3, function()
            if not self.Expanded then
                self.Overlay.Visible = false
            end
        end)
    end
    
    TweenService:Create(self.PopupPanel, info, { Position = targetPos }):Play()
    TweenService:Create(self.Chevron, info, { Rotation = targetChevronRotation }):Play()
end

function Dropdown:FilterOptions(query)
    query = query:lower()
    
    for val, opt in pairs(self.OptionButtons) do
        local matches = val:lower():find(query) ~= nil
        opt.Button.Visible = matches
    end
end

function Dropdown:BuildOptions()
    -- Clear old options
    for _, item in pairs(self.OptionButtons) do
        if item.Button then
            item.Button:Destroy()
        end
    end
    self.OptionButtons = {}
    
    for i, val in ipairs(self.Values) do
        local optBtn = Creator.New("TextButton", {
            Parent = self.ScrollList,
            Size = UDim2.new(1, 0, 0, 26),
            BackgroundColor3 = "SecondaryBackground",
            BackgroundTransparency = 0.5,
            Text = "",
            LayoutOrder = i + 1, -- SearchFrame is LayoutOrder 0
            AutoButtonColor = false,
            ZIndex = 5003
        })
        Creator:Corner(optBtn, UDim.new(0, 5))
        Creator:Stroke(optBtn, 1, "Border")
        
        local optLabel = Creator.New("TextLabel", {
            Parent = optBtn,
            Size = UDim2.new(1, -30, 1, 0),
            Position = UDim2.new(0, 14, 0, 0), -- Shifted right for left indicator strip space
            BackgroundTransparency = 1,
            Text = val,
            TextColor3 = Color3.fromRGB(0, 0, 0), -- Set dynamically in UpdateVisuals
            TextSize = 11,
            Font = Enum.Font.GothamBold,
            TextXAlignment = Enum.TextXAlignment.Left,
            TextYAlignment = Enum.TextYAlignment.Center,
            ZIndex = 5004
        })
        
        -- Left selection indicator strip
        local activeStrip = Creator.New("Frame", {
            Parent = optBtn,
            Size = UDim2.new(0, 2, 0, 0), -- Height animates to 12 on select
            Position = UDim2.new(0, 6, 0.5, 0),
            AnchorPoint = Vector2.new(0, 0.5),
            BackgroundColor3 = "Accent",
            BorderSizePixel = 0,
            BackgroundTransparency = 1,
            ZIndex = 5004
        })
        Creator:Corner(activeStrip, UDim.new(0, 1))
        
        -- MultiSelect checkmark icon (TextLabel)
        local checkIcon = Creator.New("TextLabel", {
            Parent = optBtn,
            Size = UDim2.new(0, 14, 0, 14),
            Position = UDim2.new(1, -10, 0.5, 0),
            AnchorPoint = Vector2.new(1, 0.5),
            BackgroundTransparency = 1,
            Text = "✓",
            TextColor3 = "Accent", -- Use theme key so it adapts to theme changes
            TextSize = 11,
            Font = Enum.Font.GothamBold,
            TextXAlignment = Enum.TextXAlignment.Center,
            TextYAlignment = Enum.TextYAlignment.Center,
            TextTransparency = 1, -- hidden by default
            ZIndex = 5004
        })
        
        -- Hover styling
        table.insert(self.Connections, optBtn.MouseEnter:Connect(function()
            TweenService:Create(optBtn, TweenInfo.new(0.15), { BackgroundColor3 = ThemeManager:GetColor("Card") }):Play()
        end))
        
        table.insert(self.Connections, optBtn.MouseLeave:Connect(function()
            TweenService:Create(optBtn, TweenInfo.new(0.15), { BackgroundColor3 = ThemeManager:GetColor("SecondaryBackground") }):Play()
        end))
        
        -- Click event to select option
        table.insert(self.Connections, optBtn.MouseButton1Click:Connect(function()
            AnimationManager:Ripple(optBtn, ThemeManager:GetColor("Accent"))
            self:Select(val)
        end))
        
        self.OptionButtons[val] = {
            Button = optBtn,
            Label = optLabel,
            Check = checkIcon,
            Strip = activeStrip
        }
    end
    
    self:UpdateVisuals()
end

function Dropdown:Destroy()
    if self.Connections then
        for _, connection in ipairs(self.Connections) do
            if connection then
                pcall(function()
                    connection:Disconnect()
                end)
            end
        end
        self.Connections = nil
    end
    if self.OptionButtons then
        for _, opt in pairs(self.OptionButtons) do
            if opt.Label then ThemeManager:Unregister(opt.Label) end
            if opt.Check then ThemeManager:Unregister(opt.Check) end
        end
    end
end

function Dropdown:Select(val)
    if self.MultiSelect then
        if table.find(self.Selected, val) then
            table.remove(self.Selected, table.find(self.Selected, val))
        else
            table.insert(self.Selected, val)
        end
    else
        self.Selected = val
        self:Toggle() -- close single select dropdown
    end
    
    self:UpdateSelectorText()
    self:UpdateVisuals()
    
    pcall(self.Callback, self.Selected)
end

function Dropdown:UpdateSelectorText()
    if self.MultiSelect then
        if #self.Selected == 0 then
            self.SelectedLabel.Text = "Select multiple..."
        else
            self.SelectedLabel.Text = table.concat(self.Selected, ", ")
        end
    else
        if self.Selected == "" then
            self.SelectedLabel.Text = "Select..."
        else
            self.SelectedLabel.Text = self.Selected
        end
    end
end

function Dropdown:UpdateVisuals()
    for val, opt in pairs(self.OptionButtons) do
        local isSelected = false
        if self.MultiSelect then
            isSelected = table.find(self.Selected, val) ~= nil
        else
            isSelected = self.Selected == val
        end
        
        local info = TweenInfo.new(0.15, Enum.EasingStyle.Quad)
        local targetThemeKey = isSelected and "Text" or "SubText"
        ThemeManager:Register(opt.Label, { TextColor3 = targetThemeKey })
        local targetTextColor = ThemeManager:GetColor(targetThemeKey)
        local checkTransparency = isSelected and 0 or 1
        
        local targetStripSize = isSelected and UDim2.new(0, 2, 0, 12) or UDim2.new(0, 2, 0, 0)
        local targetStripTrans = isSelected and 0 or 1
        
        TweenService:Create(opt.Label, info, { TextColor3 = targetTextColor }):Play()
        TweenService:Create(opt.Check, info, { TextTransparency = checkTransparency }):Play()
        
        if opt.Strip then
            TweenService:Create(opt.Strip, info, { 
                Size = targetStripSize, 
                BackgroundTransparency = targetStripTrans 
            }):Play()
        end
    end
end

function Dropdown:SetValue(val)
    if self.MultiSelect then
        self.Selected = type(val) == "table" and val or {}
    else
        self.Selected = type(val) == "string" and val or ""
    end
    self:UpdateSelectorText()
    self:UpdateVisuals()
    pcall(self.Callback, self.Selected)
end

function Dropdown:GetValue()
    return self.Selected
end

-- Method to dynamically update dropdown values list
function Dropdown:SetValues(newValues)
    self.Values = newValues or {}
    
    -- reset selections
    if self.MultiSelect then
        self.Selected = {}
    else
        self.Selected = ""
    end
    
    self:BuildOptions()
    self:UpdateSelectorText()
end

return Dropdown

end)()

local Section = (function()
local Creator = Creator
local Button = Button
local Toggle = Toggle
local Slider = Slider
local Dropdown = Dropdown
local TextBox = TextBox
local Keybind = Keybind
local ColorPicker = ColorPicker
local Elements = Elements

local Section = {}
Section.__index = Section

function Section.new(tab, options)
    options = options or {}
    local self = setmetatable({}, Section)
    
    self.Tab = tab
    self.Window = tab.Window
    local parentFrame = tab.ScrollFrame
    self.Title = options.Title or ""
    self.Index = #parentFrame:GetChildren()
    self.Collapsible = options.Collapsible ~= false
    self.Open = options.DefaultOpen == true
    
    -- Main Section Container
    self.Frame = Creator.New("Frame", {
        Parent = parentFrame,
        Name = "Section_" .. self.Title:gsub("%s+", ""),
        Size = UDim2.new(1, 0, 0, 0), -- Dynamic height
        BackgroundTransparency = 1,
        LayoutOrder = self.Index
    })
    
    local verticalLayout = Creator.New("UIListLayout", {
        Parent = self.Frame,
        SortOrder = Enum.SortOrder.LayoutOrder,
        Padding = UDim.new(0, 6)
    })
    
    -- Content Card Frame
    self.Card = Creator.New("Frame", {
        Parent = self.Frame,
        Name = "Card",
        Size = UDim2.new(1, 0, 0, 0), -- Dynamic height
        BackgroundColor3 = "Card",
        BorderSizePixel = 0,
        LayoutOrder = 1
    })
    
    Creator:Corner(self.Card, UDim.new(0, 8))
    Creator:Stroke(self.Card, 1, "Border")
    
    local cardLayout = Creator.New("UIListLayout", {
        Parent = self.Card,
        SortOrder = Enum.SortOrder.LayoutOrder,
        Padding = UDim.new(0, 0)
    })
    
    -- Card Header (Clickable if Collapsible)
    if self.Collapsible then
        self.HeaderBtn = Creator.New("TextButton", {
            Parent = self.Card,
            Size = UDim2.new(1, 0, 0, 36),
            BackgroundTransparency = 1,
            Text = "",
            LayoutOrder = 0,
            AutoButtonColor = false
        })
        
        Creator:Padding(self.HeaderBtn, 0, 12, 0, 12)
        
        self.HeaderText = Creator.New("TextLabel", {
            Parent = self.HeaderBtn,
            Size = UDim2.new(1, -30, 1, 0),
            BackgroundTransparency = 1,
            Text = self.Title ~= "" and self.Title or "Section",
            TextColor3 = "Text",
            TextSize = 12,
            Font = Enum.Font.GothamBold,
            TextXAlignment = Enum.TextXAlignment.Left,
            TextYAlignment = Enum.TextYAlignment.Center
        })
        
        self.Chevron = Creator.New("TextLabel", {
            Parent = self.HeaderBtn,
            Size = UDim2.new(0, 18, 0, 18),
            Position = UDim2.new(1, -14, 0.5, 0),
            AnchorPoint = Vector2.new(1, 0.5),
            BackgroundTransparency = 1,
            Text = "⏄",
            TextColor3 = "SubText",
            TextSize = 14,
            Font = Enum.Font.GothamBold,
            TextXAlignment = Enum.TextXAlignment.Center,
            TextYAlignment = Enum.TextYAlignment.Center,
            Rotation = self.Open and 0 or -90
        })
    else
        -- Regular header label (outside card) if provided
        if self.Title ~= "" then
            self.HeaderLabel = Creator.New("TextLabel", {
                Parent = self.Frame,
                Size = UDim2.new(1, 0, 0, 20),
                BackgroundTransparency = 1,
                Text = self.Title,
                TextColor3 = "SubText",
                TextSize = 11,
                Font = Enum.Font.GothamBold,
                TextXAlignment = Enum.TextXAlignment.Left,
                TextYAlignment = Enum.TextYAlignment.Center,
                LayoutOrder = 0
            })
        end
    end
    
    -- Card Content Container (Holds elements)
    self.CardContent = Creator.New("Frame", {
        Parent = self.Card,
        Name = "CardContent",
        Size = UDim2.new(1, 0, 0, 0),
        BackgroundTransparency = 1,
        ClipsDescendants = true,
        LayoutOrder = 1,
        Visible = self.Open
    })
    
    self.ContentLayout = Creator.New("UIListLayout", {
        Parent = self.CardContent,
        SortOrder = Enum.SortOrder.LayoutOrder,
        Padding = UDim.new(0, 1)
    })
    
    -- Dynamically expand Card and Section height
    local function updateHeights()
        local contentHeight = self.Open and self.ContentLayout.AbsoluteContentSize.Y or 0
        
        local tweenInfo = TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
        local TweenService = game:GetService("TweenService")
        
        -- Instantly resize content container or update target size
        self.CardContent.Size = UDim2.new(1, 0, 0, contentHeight)
        
        local headerHeight = self.Collapsible and 36 or 0
        local cardHeight = headerHeight + contentHeight
        self.Card.Size = UDim2.new(1, 0, 0, cardHeight)
        
        local labelHeight = (not self.Collapsible and self.Title ~= "") and 26 or 0
        local totalHeight = cardHeight + labelHeight
        self.Frame.Size = UDim2.new(1, 0, 0, totalHeight)
    end
    
    self.ContentLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(updateHeights)
    
    -- Handle Click Toggle
    if self.Collapsible then
        local TweenService = game:GetService("TweenService")
        self.HeaderBtn.MouseButton1Click:Connect(function()
            self.Open = not self.Open
            self.CardContent.Visible = self.Open
            
            -- Rotate Chevron
            TweenService:Create(self.Chevron, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                Rotation = self.Open and 0 or -90
            }):Play()
            
            updateHeights()
        end)
    end
    
    return self
end

function Section:AddSeparator(element)
    local children = self.CardContent:GetChildren()
    local activeCount = 0
    for _, child in ipairs(children) do
        if child:IsA("Frame") or child:IsA("TextButton") or child:IsA("TextBox") then
            -- Skip layout containers that are just wrapper templates if any
            activeCount = activeCount + 1
        end
    end
    
    local layoutOrder = activeCount * 2
    
    if activeCount > 0 then
        local separatorContainer = Creator.New("Frame", {
            Parent = self.CardContent,
            Size = UDim2.new(1, 0, 0, 1),
            BackgroundTransparency = 1,
            BorderSizePixel = 0,
            LayoutOrder = layoutOrder - 1
        })
        
        local separator = Creator.New("Frame", {
            Parent = separatorContainer,
            Size = UDim2.new(1, -24, 0, 1),
            Position = UDim2.new(0, 12, 0, 0),
            BackgroundColor3 = "Border",
            BackgroundTransparency = 0.75, -- Subtle border separator
            BorderSizePixel = 0
        })
    end
    
    if typeof(element) == "Instance" then
        element.LayoutOrder = layoutOrder
    elseif type(element) == "table" and element.Frame then
        element.Frame.LayoutOrder = layoutOrder
    end
end

-- Component Adders
function Section:AddButton(options)
    local element = Button.new(self.CardContent, options)
    self:AddSeparator(element)
    return element
end

function Section:AddToggle(id, options)
    local element = Toggle.new(self.CardContent, id, options)
    self:AddSeparator(element)
    if self.Window then
        self.Window:RegisterElement(id, element)
    end
    return element
end

function Section:AddSlider(id, options)
    local element = Slider.new(self.CardContent, id, options)
    self:AddSeparator(element)
    if self.Window then
        self.Window:RegisterElement(id, element)
    end
    return element
end

function Section:AddDropdown(id, options)
    local element = Dropdown.new(self.CardContent, id, options)
    self:AddSeparator(element)
    if self.Window then
        self.Window:RegisterElement(id, element)
    end
    return element
end

function Section:AddInput(id, options)
    local element = TextBox.new(self.CardContent, id, options)
    self:AddSeparator(element)
    if self.Window then
        self.Window:RegisterElement(id, element)
    end
    return element
end

function Section:AddKeybind(id, options)
    local element = Keybind.new(self.CardContent, id, options)
    self:AddSeparator(element)
    if self.Window then
        self.Window:RegisterElement(id, element)
    end
    return element
end

function Section:AddColorPicker(id, options)
    local element = ColorPicker.new(self.CardContent, id, options)
    self:AddSeparator(element)
    if self.Window then
        self.Window:RegisterElement(id, element)
    end
    return element
end

-- Elements
function Section:AddParagraph(options)
    local element = Elements.Paragraph(self.CardContent, options)
    self:AddSeparator(element)
    return element
end

function Section:AddLabel(options)
    local element = Elements.Label(self.CardContent, options)
    self:AddSeparator(element)
    return element
end

function Section:AddDivider(options)
    local element = Elements.Divider(self.CardContent, options)
    self:AddSeparator(element)
    return element
end

function Section:AddImage(options)
    local element = Elements.Image(self.CardContent, options)
    self:AddSeparator(element)
    return element
end

function Section:AddAvatar(options)
    local element = Elements.Avatar(self.CardContent, options)
    self:AddSeparator(element)
    return element
end

function Section:AddProgressBar(options)
    local element = Elements.ProgressBar(self.CardContent, options)
    self:AddSeparator(element)
    return element
end

function Section:AddLoadingIndicator(options)
    local element = Elements.LoadingIndicator(self.CardContent, options)
    self:AddSeparator(element)
    return element
end

return Section

end)()

local Tab = (function()
local TweenService = game:GetService("TweenService")
local Creator = Creator
local Icons = Icons
local ThemeManager = ThemeManager
local Section = Section

local Tab = {}
Tab.__index = Tab

function Tab.new(window, options)
    options = options or {}
    local self = setmetatable({}, Tab)
    
    self.Window = window
    self.Title = options.Title or "Tab"
    self.IconName = options.Icon or "folder"
    self.Active = false
    self.Index = #window.TabList:GetChildren() -- List order
    self.Sections = {}
    
    -- Sidebar button
    self.Button = Creator.New("TextButton", {
        Parent = window.TabList,
        Size = UDim2.new(1, 0, 0, 32),
        BackgroundColor3 = "SecondaryBackground",
        BackgroundTransparency = 1,
        Text = "",
        LayoutOrder = self.Index
    })
    Creator:Corner(self.Button, UDim.new(0, 6))
    
    -- Sidebar active strip indicator
    self.ActiveStrip = Creator.New("Frame", {
        Parent = self.Button,
        Position = UDim2.new(0, 4, 0.5, 0),
        Size = UDim2.new(0, 3, 0, 0), -- Starts with 0 height, animates to 16
        AnchorPoint = Vector2.new(0, 0.5),
        BackgroundColor3 = "Accent",
        BorderSizePixel = 0
    })
    Creator:Corner(self.ActiveStrip, UDim.new(0, 3))
    
    local iconChar = Icons[self.IconName] or Icons["folder"] or "📁"
    self.IconLabel = Creator.New("TextLabel", {
        Parent = self.Button,
        Size = UDim2.new(0, 18, 0, 18),
        Position = UDim2.new(0, 14, 0.5, 0),
        AnchorPoint = Vector2.new(0, 0.5),
        BackgroundTransparency = 1,
        Text = iconChar,
        TextColor3 = "SubText",
        TextSize = 14,
        Font = Enum.Font.GothamBold,
        TextXAlignment = Enum.TextXAlignment.Center,
        TextYAlignment = Enum.TextYAlignment.Center
    })
    
    self.TitleLabel = Creator.New("TextLabel", {
        Parent = self.Button,
        Position = UDim2.new(0, 38, 0, 0),
        Size = UDim2.new(1, -44, 1, 0),
        BackgroundTransparency = 1,
        Text = self.Title,
        TextColor3 = "SubText",
        TextSize = 12,
        Font = Enum.Font.GothamBold,
        TextXAlignment = Enum.TextXAlignment.Left,
        TextYAlignment = Enum.TextYAlignment.Center
    })
    
    -- Tab Scrolling Frame container
    self.ScrollFrame = Creator.New("ScrollingFrame", {
        Parent = window.PageContainer,
        Name = "TabScroll_" .. self.Title:gsub("%s+", ""),
        Size = UDim2.new(1, 0, 1, 0),
        BackgroundTransparency = 1,
        Visible = false,
        ScrollBarThickness = 2,
        ScrollBarImageColor3 = ThemeManager:GetColor("Border"),
        CanvasSize = UDim2.new(0, 0, 0, 0)
    })
    
    Creator:Padding(self.ScrollFrame, 12, 12, 12, 12)
    
    local contentLayout = Creator.New("UIListLayout", {
        Parent = self.ScrollFrame,
        SortOrder = Enum.SortOrder.LayoutOrder,
        Padding = UDim.new(0, 12)
    })
    
    contentLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
        self.ScrollFrame.CanvasSize = UDim2.new(0, 0, 0, contentLayout.AbsoluteContentSize.Y + 24)
    end)
    
    -- Click handler
    self.Button.MouseButton1Click:Connect(function()
        for idx, tab in ipairs(window.Tabs) do
            if tab == self then
                window:SelectTab(idx)
                break
            end
        end
    end)
    
    return self
end

function Tab:Activate()
    self.Active = true
    self.ScrollFrame.Visible = true
    
    local info = TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    
    -- Animate Tab button colors
    TweenService:Create(self.Button, info, { BackgroundTransparency = 0.85, BackgroundColor3 = ThemeManager:GetColor("Border") }):Play()
    TweenService:Create(self.IconLabel, info, { TextColor3 = ThemeManager:GetColor("Accent") }):Play()
    TweenService:Create(self.TitleLabel, info, { TextColor3 = ThemeManager:GetColor("Text") }):Play()
    
    -- Animate Active Strip height
    TweenService:Create(self.ActiveStrip, info, { Size = UDim2.new(0, 3, 0, 16) }):Play()
    
    -- Slide up and fade in transition for ScrollFrame content
    self.ScrollFrame.Position = UDim2.new(0, 0, 0, 10)
    TweenService:Create(self.ScrollFrame, info, { Position = UDim2.new(0, 0, 0, 0) }):Play()
end

function Tab:Deactivate()
    self.Active = false
    self.ScrollFrame.Visible = false
    
    local info = TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    
    -- Reset Tab button styles
    TweenService:Create(self.Button, info, { BackgroundTransparency = 1 }):Play()
    TweenService:Create(self.IconLabel, info, { TextColor3 = ThemeManager:GetColor("SubText") }):Play()
    TweenService:Create(self.TitleLabel, info, { TextColor3 = ThemeManager:GetColor("SubText") }):Play()
    
    -- Shrink active strip
    TweenService:Create(self.ActiveStrip, info, { Size = UDim2.new(0, 3, 0, 0) }):Play()
end

function Tab:AddSection(options)
    local section = Section.new(self, options)
    table.insert(self.Sections, section)
    return section
end

return Tab

end)()

local KeySystem = (function()
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local Creator = Creator
local Icons = Icons
local ConfigManager = ConfigManager
local AnimationManager = AnimationManager
local ThemeManager = ThemeManager

local KeySystem = {}

local function getGuiParent()
    local success, coreGui = pcall(function()
        return game:GetService("CoreGui")
    end)
    if success and coreGui then
        return coreGui
    end
    return Players.LocalPlayer:WaitForChild("PlayerGui")
end

function KeySystem.new(options, onVerified)
    options = options or {}
    local title = options.Title or "Verification"
    local subtitle = options.Subtitle or "SteamyUI Security"
    local description = options.Description or "Please enter your license key to verify access."
    local getKeyLink = options.GetKeyLink or ""
    local validKeys = options.Keys or {}
    local saveKey = options.SaveKey or false
    local folderName = options.Folder or "SteamyConfigs"
    local fileName = options.FileName or "key.json"
    local discordLink = options.Discord or ""
    local websiteLink = options.Website or ""
    -- ValidateFunction: custom async verifier
    -- Signature: function(key: string) -> (isValid: boolean, message: string)
    -- If provided, this is used INSTEAD of the Keys array check.
    -- This enables devs to hook any API (HTTP, server-side, etc.) for validation.
    local validateFunction = options.ValidateFunction or nil
    
    -- Auto load key if configured
    local savedKey = nil
    if saveKey then
        local savedConfig = ConfigManager:Load(folderName, fileName)
        if savedConfig and savedConfig.Key then
            savedKey = savedConfig.Key
        end
    end
    
    -- Helper: synchronous key check via Keys array (built-in fallback)
    local function verifyKeyLocal(inputKey)
        if type(validKeys) == "table" then
            for _, k in ipairs(validKeys) do
                if k == inputKey then
                    return true
                end
            end
        elseif type(validKeys) == "string" then
            return validKeys == inputKey
        end
        return false
    end

    -- Helper: unified verifier (uses ValidateFunction if provided, else Keys array)
    -- Always called inside task.spawn — safe to yield
    local function verifyKey(inputKey, callback)
        if validateFunction then
            -- Developer-supplied async validator
            local ok, isValid, msg = pcall(validateFunction, inputKey)
            if not ok then
                callback(false, "Validation error: " .. tostring(isValid))
            else
                callback(isValid == true, msg or (isValid and "Key valid!" or "Invalid key."))
            end
        else
            -- Built-in Keys array check (synchronous, wrapped in callback)
            callback(verifyKeyLocal(inputKey), verifyKeyLocal(inputKey) and "Key valid!" or "Invalid key.")
        end
    end
    
    -- If key is already saved:
    -- Sync (Keys array): skip GUI immediately if valid
    -- Async (ValidateFunction): build GUI but hide it, verify in background;
    --   if valid  → destroy GUI + call onVerified
    --   if invalid → show GUI for new input
    local asyncBypassDone = false  -- flag: async check resolved
    if savedKey then
        if not validateFunction then
            -- Sync path: Keys array check → early exit
            if verifyKeyLocal(savedKey) then
                task.spawn(onVerified)
                return nil
            end
        end
        -- Async path: let GUI build, async verify runs after UI is constructed
    end

    
    -- UI Construction
    local parent = getGuiParent()
    
    local screenGui = Creator.New("ScreenGui", {
        Name = "SteamyKeySystem",
        ResetOnSpawn = false,
        DisplayOrder = 9999
    })
    
    local mainFrame = Creator.New("Frame", {
        Parent = screenGui,
        Name = "KeySystemFrame",
        Size = UDim2.new(0, 380, 0, 290),
        Position = UDim2.new(0.5, 0, 0.5, 0),
        AnchorPoint = Vector2.new(0.5, 0.5),
        BackgroundColor3 = "Background",
        BorderSizePixel = 0,
        ClipsDescendants = true
    })
    
    Creator:Corner(mainFrame, UDim.new(0, 10))
    Creator:Stroke(mainFrame, 1, "Border")
    local shadow = Creator:AddShadow(mainFrame, 25, 0.5)
    
    -- Padding for standard content
    local content = Creator.New("Frame", {
        Parent = mainFrame,
        Size = UDim2.new(1, 0, 1, 0),
        BackgroundTransparency = 1
    })
    Creator:Padding(content, 18, 18, 18, 18)
    
    -- Logo and Header
    local header = Creator.New("Frame", {
        Parent = content,
        Size = UDim2.new(1, 0, 0, 40),
        BackgroundTransparency = 1
    })
    
    local logo = Creator.New("TextLabel", {
        Parent = header,
        Size = UDim2.new(0, 32, 0, 32),
        Position = UDim2.new(0, 0, 0.5, 0),
        AnchorPoint = Vector2.new(0, 0.5),
        BackgroundTransparency = 1,
        Text = Icons["lock"] or "🔒",
        TextColor3 = "Accent",
        TextSize = 22,
        Font = Enum.Font.GothamBold,
        TextXAlignment = Enum.TextXAlignment.Center,
        TextYAlignment = Enum.TextYAlignment.Center
    })
    
    local titleLabel = Creator.New("TextLabel", {
        Parent = header,
        Position = UDim2.new(0, 40, 0, 2),
        Size = UDim2.new(1, -40, 0, 18),
        BackgroundTransparency = 1,
        Text = title,
        TextColor3 = "Text",
        TextSize = 15,
        Font = Enum.Font.GothamBold,
        TextXAlignment = Enum.TextXAlignment.Left
    })
    
    local subLabel = Creator.New("TextLabel", {
        Parent = header,
        Position = UDim2.new(0, 40, 0, 20),
        Size = UDim2.new(1, -40, 0, 14),
        BackgroundTransparency = 1,
        Text = subtitle,
        TextColor3 = "SubText",
        TextSize = 11,
        Font = Enum.Font.Gotham,
        TextXAlignment = Enum.TextXAlignment.Left
    })
    
    -- Description
    local descLabel = Creator.New("TextLabel", {
        Parent = content,
        Position = UDim2.new(0, 0, 0, 50),
        Size = UDim2.new(1, 0, 0, 36),
        BackgroundTransparency = 1,
        Text = description,
        TextColor3 = "SubText",
        TextSize = 12,
        Font = Enum.Font.Gotham,
        TextWrapped = true,
        TextXAlignment = Enum.TextXAlignment.Left,
        TextYAlignment = Enum.TextYAlignment.Top
    })
    
    -- Input Field
    local inputFrame = Creator.New("Frame", {
        Parent = content,
        Position = UDim2.new(0, 0, 0, 95),
        Size = UDim2.new(1, 0, 0, 38),
        BackgroundColor3 = "SecondaryBackground"
    })
    Creator:Corner(inputFrame, UDim.new(0, 6))
    Creator:Stroke(inputFrame, 1, "Border")
    
    local textBox = Creator.New("TextBox", {
        Parent = inputFrame,
        Size = UDim2.new(1, -65, 1, 0),
        Position = UDim2.new(0, 10, 0, 0),
        BackgroundTransparency = 1,
        PlaceholderText = "Enter Key Here...",
        PlaceholderColor3 = ThemeManager:GetColor("SubText"),
        Text = "",
        TextColor3 = "Text",
        TextSize = 13,
        Font = Enum.Font.Gotham,
        TextXAlignment = Enum.TextXAlignment.Left
    })
    
    local pasteBtn = Creator.New("TextButton", {
        Parent = inputFrame,
        Size = UDim2.new(0, 50, 1, -8),
        Position = UDim2.new(1, -55, 0.5, 0),
        AnchorPoint = Vector2.new(0, 0.5),
        BackgroundColor3 = "Card",
        Text = "PASTE",
        TextColor3 = "Text",
        Font = Enum.Font.GothamBold,
        TextSize = 11
    })
    Creator:Corner(pasteBtn, UDim.new(0, 4))
    Creator:Stroke(pasteBtn, 1, "Border")
    
    pasteBtn.MouseButton1Click:Connect(function()
        AnimationManager:Ripple(pasteBtn)
        
        -- Exploit clipboard check
        local success, clip = pcall(function()
            -- Standard exploit function to read clipboard if available
            -- In standard Roblox, this is not possible, so we warn
            if getclipboard then
                return getclipboard()
            end
            error("No getclipboard")
        end)
        
        if success and clip then
            textBox.Text = clip
        else
            textBox.Text = ""
            textBox.PlaceholderText = "Paste manually (Ctrl+V)"
            task.delay(2, function()
                textBox.PlaceholderText = "Enter Key Here..."
            end)
        end
    end)
    
    -- Status Label
    local statusLabel = Creator.New("TextLabel", {
        Parent = content,
        Position = UDim2.new(0, 0, 0, 140),
        Size = UDim2.new(1, 0, 0, 16),
        BackgroundTransparency = 1,
        Text = "",
        TextColor3 = "SubText",
        TextSize = 12,
        Font = Enum.Font.GothamBold,
        TextXAlignment = Enum.TextXAlignment.Center
    })
    
    -- Action Buttons (Submit, Get Key)
    local submitBtn = Creator.New("TextButton", {
        Parent = content,
        Position = UDim2.new(0, 0, 0, 165),
        Size = UDim2.new(0.5, -6, 0, 36),
        BackgroundColor3 = "Accent",
        Text = "Submit Key",
        TextColor3 = "Text",
        Font = Enum.Font.GothamBold,
        TextSize = 13
    })
    Creator:Corner(submitBtn, UDim.new(0, 6))
    Creator:Stroke(submitBtn, 1, "Accent")
    
    local getKeyBtn = Creator.New("TextButton", {
        Parent = content,
        Position = UDim2.new(0.5, 6, 0, 165),
        Size = UDim2.new(0.5, -6, 0, 36),
        BackgroundColor3 = "SecondaryBackground",
        Text = "Get Key",
        TextColor3 = "Text",
        Font = Enum.Font.GothamBold,
        TextSize = 13
    })
    Creator:Corner(getKeyBtn, UDim.new(0, 6))
    Creator:Stroke(getKeyBtn, 1, "Border")
    
    getKeyBtn.MouseButton1Click:Connect(function()
        AnimationManager:Ripple(getKeyBtn)
        
        if getKeyLink ~= "" then
            local success = pcall(function()
                if setclipboard then
                    setclipboard(getKeyLink)
                end
            end)
            
            statusLabel.TextColor3 = ThemeManager:GetColor("Accent")
            if success then
                statusLabel.Text = "Key link copied to clipboard!"
            else
                statusLabel.Text = "Link: " .. getKeyLink
            end
            
            task.delay(3, function()
                if statusLabel.Text:find("copied") or statusLabel.Text:find("Link:") then
                    statusLabel.Text = ""
                end
            end)
        end
    end)
    
    -- Social Buttons (Discord, Website)
    local socialsContainer = Creator.New("Frame", {
        Parent = content,
        Position = UDim2.new(0, 0, 1, -36),
        Size = UDim2.new(1, 0, 0, 36),
        BackgroundTransparency = 1
    })
    
    local socialLayout = Creator.New("UIListLayout", {
        Parent = socialsContainer,
        FillDirection = Enum.FillDirection.Horizontal,
        HorizontalAlignment = Enum.HorizontalAlignment.Center,
        Padding = UDim.new(0, 12)
    })
    
    local function createSocialBtn(name, iconName, link)
        if link == "" then return end
        
        local btn = Creator.New("TextButton", {
            Parent = socialsContainer,
            Size = UDim2.new(0, 100, 1, 0),
            BackgroundColor3 = "SecondaryBackground",
            Text = "",
            ClipsDescendants = true
        })
        Creator:Corner(btn, UDim.new(0, 6))
        Creator:Stroke(btn, 1, "Border")
        
        local img = Creator.New("TextLabel", {
            Parent = btn,
            Size = UDim2.new(0, 18, 0, 18),
            Position = UDim2.new(0, 8, 0.5, 0),
            AnchorPoint = Vector2.new(0, 0.5),
            BackgroundTransparency = 1,
            Text = Icons[iconName] or "•",
            TextColor3 = "Text",
            TextSize = 13,
            Font = Enum.Font.GothamBold,
            TextXAlignment = Enum.TextXAlignment.Center,
            TextYAlignment = Enum.TextYAlignment.Center
        })
        
        local lbl = Creator.New("TextLabel", {
            Parent = btn,
            Size = UDim2.new(1, -36, 1, 0),
            Position = UDim2.new(0, 30, 0, 0),
            BackgroundTransparency = 1,
            Text = name,
            TextColor3 = "Text",
            Font = Enum.Font.GothamBold,
            TextSize = 11,
            TextXAlignment = Enum.TextXAlignment.Left
        })
        
        btn.MouseButton1Click:Connect(function()
            AnimationManager:Ripple(btn)
            pcall(function()
                if setclipboard then
                    setclipboard(link)
                end
            end)
            statusLabel.TextColor3 = ThemeManager:GetColor("Accent")
            statusLabel.Text = name .. " link copied!"
            task.delay(2, function()
                if statusLabel.Text == name .. " link copied!" then
                    statusLabel.Text = ""
                end
            end)
        end)
    end
    
    createSocialBtn("Discord", "discord", discordLink)
    createSocialBtn("Website", "globe", websiteLink)
    
    -- Submit key behavior
    local verifying = false
    submitBtn.MouseButton1Click:Connect(function()
        if verifying then return end
        verifying = true
        AnimationManager:Ripple(submitBtn)
        
        local inputKey = textBox.Text
        if not inputKey or inputKey == "" then
            statusLabel.TextColor3 = ThemeManager:GetColor("Error")
            statusLabel.Text = "Please enter a key first."
            verifying = false
            return
        end

        statusLabel.TextColor3 = ThemeManager:GetColor("Text")
        statusLabel.Text = "Verifying key..."
        submitBtn.Text = "Checking..."
        
        -- Run verification (async-safe: ValidateFunction can yield/HTTP)
        task.spawn(function()
            verifyKey(inputKey, function(isValid, message)
                if isValid then
                    statusLabel.TextColor3 = ThemeManager:GetColor("Success")
                    statusLabel.Text = message or "Success! Access granted."
                    submitBtn.Text = "Submit Key"
                    
                    -- Save key if enabled
                    if saveKey then
                        ConfigManager:Save(folderName, fileName, { Key = inputKey })
                    end
                    
                    -- Success animation: shrink and fade out
                    task.wait(0.6)
                    local fadeTween = TweenService:Create(mainFrame, TweenInfo.new(0.3, Enum.EasingStyle.Quad), {
                        Size = UDim2.new(0, 0, 0, 0),
                        BackgroundTransparency = 1
                    })
                    fadeTween.Completed:Connect(function()
                        screenGui:Destroy()
                        onVerified()
                    end)
                    fadeTween:Play()
                else
                    statusLabel.TextColor3 = ThemeManager:GetColor("Error")
                    statusLabel.Text = message or "Invalid License Key!"
                    submitBtn.Text = "Submit Key"
                    
                    -- Shake animation to indicate error
                    AnimationManager:Shake(mainFrame, 8)
                    verifying = false
                end
            end)
        end)
    end)
    
    -- Scale in animation
    screenGui.Parent = parent
    mainFrame.Size = UDim2.new(0, 0, 0, 0)
    mainFrame.BackgroundTransparency = 1
    
    TweenService:Create(mainFrame, TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
        Size = UDim2.new(0, 380, 0, 290),
        BackgroundTransparency = 0
    }):Play()
    
    -- Async saved key bypass (only runs when ValidateFunction is provided + there is a savedKey)
    -- The GUI is already visible; if the key is still valid we silently bypass it
    if savedKey and validateFunction and not asyncBypassDone then
        task.spawn(function()
            asyncBypassDone = true
            local ok, isValid, msg = pcall(validateFunction, savedKey)
            if ok and isValid == true then
                -- Key still valid → shrink out and call onVerified
                local bypassTween = TweenService:Create(mainFrame, TweenInfo.new(0.25, Enum.EasingStyle.Quad), {
                    Size = UDim2.new(0, 0, 0, 0),
                    BackgroundTransparency = 1
                })
                bypassTween.Completed:Connect(function()
                    screenGui:Destroy()
                    onVerified()
                end)
                bypassTween:Play()
            end
            -- If invalid: GUI stays visible, user must enter a new key
        end)
    end
    
    return screenGui

end

return KeySystem

end)()

local WindowManager = (function()
local WindowManager = {
    ActiveWindows = {}
}

function WindowManager:Register(window)
    table.insert(self.ActiveWindows, window)
end

function WindowManager:Unregister(window)
    for i, win in ipairs(self.ActiveWindows) do
        if win == window then
            table.remove(self.ActiveWindows, i)
            break
        end
    end
end

return WindowManager

end)()

local Window = (function()
local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local Creator = Creator
local Icons = Icons
local ThemeManager = ThemeManager
local AnimationManager = AnimationManager
local Notification = Notification
local Dialog = Dialog
local Tab = Tab
local ConfigManager = ConfigManager

local Window = {}
Window.__index = Window

local function getGuiParent()
    local success, coreGui = pcall(function()
        return game:GetService("CoreGui")
    end)
    if success and coreGui then
        return coreGui
    end
    return Players.LocalPlayer:WaitForChild("PlayerGui")
end

local function hexToColor3(hex)
    hex = hex:gsub("#", "")
    local r = tonumber(hex:sub(1, 2), 16) / 255
    local g = tonumber(hex:sub(3, 4), 16) / 255
    local b = tonumber(hex:sub(5, 6), 16) / 255
    return Color3.new(r, g, b)
end

local function getResponsiveSize(defaultSize)
    local screenSize = workspace.CurrentCamera.ViewportSize
    local w = screenSize.X
    local isTouchDevice = UserInputService.TouchEnabled and not UserInputService.MouseEnabled
    
    if isTouchDevice and w < 600 then
        -- Phone: near-fullscreen
        return UDim2.new(0.95, 0, 0.88, 0)
    elseif isTouchDevice or w < 900 then
        -- Tablet or small PC
        return UDim2.new(0.88, 0, 0.82, 0)
    end
    return defaultSize
end

function Window.new(options)
    options = options or {}
    local self = setmetatable({}, Window)
    
    self.Title = options.Title or "SteamyUI"
    self.SubTitle = options.SubTitle or "Premium Hub"
    self.Size = options.Size or UDim2.new(0, 580, 0, 430)

    -- Text-based logo: max 4 characters, default "S"
    local rawLogo = options.Logo
    if rawLogo and Icons[rawLogo] then
        self.LogoText = Icons[rawLogo]
    elseif rawLogo then
        -- Use as-is (letter, emoji, etc.), truncate to 4 chars
        self.LogoText = tostring(rawLogo):sub(1, 4)
    else
        self.LogoText = "S"
    end

    -- Logo badge color: hex string or Color3, default blue
    local logoColorRaw = options.LogoColor
    if type(logoColorRaw) == "string" then
        self.LogoColor = hexToColor3(logoColorRaw)
    elseif typeof(logoColorRaw) == "Color3" then
        self.LogoColor = logoColorRaw
    else
        self.LogoColor = Color3.fromRGB(0, 120, 255)
    end
    -- Apply custom or default theme
    local selectedTheme = options.Theme or "Darker"
    ThemeManager:SetTheme(selectedTheme)
    
    self.ToggleKey = options.ToggleKey or Enum.KeyCode.RightControl
    self.HasSettings = options.HasSettings == true
    
    -- Responsive sizing
    local rawSize = options.Size or UDim2.new(0, 580, 0, 430)
    self.Size = getResponsiveSize(rawSize)
    
    -- Floating Action Button options
    local fabOpts = options.FloatButton or {}
    self.FabEnabled = fabOpts.Enabled ~= false
    self.FabSize = fabOpts.Size or 60
    -- FAB border auto-inherits LogoColor unless explicitly overridden
    if fabOpts.BorderColor then
        self.FabBorderColor = hexToColor3(fabOpts.BorderColor)
    else
        self.FabBorderColor = self.LogoColor
    end
    self.FabBorderSize = fabOpts.BorderSize or 3
    
    self.Tabs = {}
    self.ActiveTab = nil
    self.Visible = true
    self.Elements = {}
    self.Connections = {}
    self.RootFolder = options.Folder or "Steamy"
    self.ConfigFolder = self.RootFolder .. "/Configs"
    self.DefaultConfig = options.ConfigSettings and options.ConfigSettings.DefaultConfig or "Default"
    
    -- Main ScreenGui
    local parent = getGuiParent()
    self.ScreenGui = Creator.New("ScreenGui", {
        Name = "SteamyUI_" .. self.Title:gsub("%s+", ""),
        ResetOnSpawn = false,
        DisplayOrder = 5000,
        IgnoreGuiInset = true
    })
    
    -- Main Window Frame
    self.MainFrame = Creator.New("CanvasGroup", {
        Parent = self.ScreenGui,
        Name = "MainFrame",
        Size = self.Size,
        Position = UDim2.new(0.5, 0, 0.5, 0),
        AnchorPoint = Vector2.new(0.5, 0.5),
        BackgroundColor3 = "Background",
        BorderSizePixel = 0,
        ClipsDescendants = true
    })
    
    self.UIScale = Creator.New("UIScale", {
        Parent = self.MainFrame,
        Scale = 1
    })
    
    Creator:Corner(self.MainFrame, UDim.new(0, 10))
    Creator:Stroke(self.MainFrame, 1, "Border")
    self.Shadow = Creator:AddShadow(self.MainFrame, 25, 0.5)
    
    -- Header / Top Bar
    self.Header = Creator.New("Frame", {
        Parent = self.MainFrame,
        Name = "Header",
        Size = UDim2.new(1, 0, 0, 45),
        BackgroundTransparency = 1
    })
    Creator:Padding(self.Header, 0, 12, 0, 12)
    
    -- Header Title Layout
    local titleFrame = Creator.New("Frame", {
        Parent = self.Header,
        Size = UDim2.new(1, -100, 1, 0),
        BackgroundTransparency = 1
    })
    Creator:Padding(titleFrame, 0, 0, 0, 12)
    
    -- Logo badge: circular transparent frame with border and neon glow
    self.LogoLabel = Creator.New("Frame", {
        Parent = titleFrame,
        Size = UDim2.new(0, 26, 0, 26),
        Position = UDim2.new(0, 0, 0.5, 0),
        AnchorPoint = Vector2.new(0, 0.5),
        BackgroundTransparency = 1,
        BorderSizePixel = 0
    })
    Creator.New("UICorner", {
        Parent = self.LogoLabel,
        CornerRadius = UDim.new(1, 0)
    })
    Creator.New("UIStroke", {
        Parent = self.LogoLabel,
        Color = self.LogoColor,
        Thickness = 1.5,
        ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    })

    -- Soft neon halo/glow background behind the logo badge (Frame-based, no ImageLabel fallback square)
    local logoGlow = Creator.New("Frame", {
        Parent = self.LogoLabel,
        Size = UDim2.new(1.4, 0, 1.4, 0),
        Position = UDim2.new(0.5, 0, 0.5, 0),
        AnchorPoint = Vector2.new(0.5, 0.5),
        BackgroundColor3 = self.LogoColor,
        BackgroundTransparency = 0.85,
        BorderSizePixel = 0,
        ZIndex = self.LogoLabel.ZIndex - 1
    })
    Creator.New("UICorner", {
        Parent = logoGlow,
        CornerRadius = UDim.new(1, 0)
    })

    self.LogoTextLabel = Creator.New("TextLabel", {
        Parent = self.LogoLabel,
        Size = UDim2.new(1, 0, 1, 0),
        BackgroundTransparency = 1,
        Text = self.LogoText,
        TextColor3 = self.LogoColor,
        TextSize = #self.LogoText > 1 and 10 or 14,
        Font = Enum.Font.GothamBold,
        TextXAlignment = Enum.TextXAlignment.Center,
        TextYAlignment = Enum.TextYAlignment.Center,
        TextScaled = false
    })

    -- Add neon stroke to text to make it glow/menyala
    Creator.New("UIStroke", {
        Parent = self.LogoTextLabel,
        Color = self.LogoColor,
        Thickness = 1.2,
        Transparency = 0.4
    })
    
    self.TitleLabel = Creator.New("TextLabel", {
        Parent = titleFrame,
        Position = UDim2.new(0, 32, 0.1, 0),
        Size = UDim2.new(1, -32, 0.5, 0),
        BackgroundTransparency = 1,
        Text = self.Title,
        TextColor3 = "Text",
        TextSize = 14,
        Font = Enum.Font.GothamBold,
        TextXAlignment = Enum.TextXAlignment.Left
    })
    
    self.SubTitleLabel = Creator.New("TextLabel", {
        Parent = titleFrame,
        Position = UDim2.new(0, 32, 0.55, 0),
        Size = UDim2.new(1, -32, 0.4, 0),
        BackgroundTransparency = 1,
        Text = self.SubTitle,
        TextColor3 = "SubText",
        TextSize = 11,
        Font = Enum.Font.Gotham,
        TextXAlignment = Enum.TextXAlignment.Left
    })
    
    -- Window Controls (Minimize / Close)
    local controls = Creator.New("Frame", {
        Parent = self.Header,
        Size = UDim2.new(0, 70, 1, 0),
        Position = UDim2.new(1, -70, 0, 0),
        BackgroundTransparency = 1
    })
    
    local controlsLayout = Creator.New("UIListLayout", {
        Parent = controls,
        FillDirection = Enum.FillDirection.Horizontal,
        HorizontalAlignment = Enum.HorizontalAlignment.Right,
        VerticalAlignment = Enum.VerticalAlignment.Center,
        Padding = UDim.new(0, 14)
    })
    
    -- Minimize Button
    local minBtn = Creator.New("TextButton", {
        Parent = controls,
        Size = UDim2.new(0, 24, 0, 24),
        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
        BackgroundTransparency = 1,
        Text = "",
        AutoButtonColor = false
    })
    Creator:Corner(minBtn, UDim.new(0, 4))
    
    local minIcon = Creator.New("Frame", {
        Parent = minBtn,
        Size = UDim2.new(0, 10, 0, 2),
        Position = UDim2.new(0.5, 0, 0.5, 0),
        AnchorPoint = Vector2.new(0.5, 0.5),
        BackgroundColor3 = "SubText",
        BorderSizePixel = 0
    })
    
    minBtn.MouseEnter:Connect(function()
        TweenService:Create(minBtn, TweenInfo.new(0.15), { BackgroundTransparency = 0.8, BackgroundColor3 = ThemeManager:GetColor("SecondaryBackground") }):Play()
        TweenService:Create(minIcon, TweenInfo.new(0.15), { BackgroundColor3 = ThemeManager:GetColor("Text") }):Play()
    end)
    
    minBtn.MouseLeave:Connect(function()
        TweenService:Create(minBtn, TweenInfo.new(0.15), { BackgroundTransparency = 1 }):Play()
        TweenService:Create(minIcon, TweenInfo.new(0.15), { BackgroundColor3 = ThemeManager:GetColor("SubText") }):Play()
    end)
    
    minBtn.MouseButton1Click:Connect(function()
        self:Toggle()
    end)
    
    -- Close Button
    local closeBtn = Creator.New("TextButton", {
        Parent = controls,
        Size = UDim2.new(0, 24, 0, 24),
        BackgroundColor3 = Color3.fromRGB(232, 17, 35),
        BackgroundTransparency = 1,
        Text = "",
        AutoButtonColor = false
    })
    Creator:Corner(closeBtn, UDim.new(0, 4))
    
    local closeIcon = Creator.New("TextLabel", {
        Parent = closeBtn,
        Size = UDim2.new(1, 0, 1, 0),
        Position = UDim2.new(0.5, 0, 0.5, -1),
        AnchorPoint = Vector2.new(0.5, 0.5),
        BackgroundTransparency = 1,
        Text = "X",
        TextColor3 = "SubText",
        TextSize = 10,
        Font = Enum.Font.GothamBold,
        TextXAlignment = Enum.TextXAlignment.Center,
        TextYAlignment = Enum.TextYAlignment.Center
    })
    
    closeBtn.MouseEnter:Connect(function()
        TweenService:Create(closeBtn, TweenInfo.new(0.15), { BackgroundTransparency = 0 }):Play()
        TweenService:Create(closeIcon, TweenInfo.new(0.15), { TextColor3 = Color3.fromRGB(255, 255, 255) }):Play()
    end)
    
    closeBtn.MouseLeave:Connect(function()
        TweenService:Create(closeBtn, TweenInfo.new(0.15), { BackgroundTransparency = 1 }):Play()
        TweenService:Create(closeIcon, TweenInfo.new(0.15), { TextColor3 = ThemeManager:GetColor("SubText") }):Play()
    end)
    
    closeBtn.MouseButton1Click:Connect(function()
        Dialog:Create(self.ScreenGui, {
            Title = "Exit Script?",
            Content = "Are you sure you want to close SteamyUI?",
            Buttons = {
                {
                    Text = "Yes",
                    Callback = function()
                        self:Destroy()
                    end
                },
                {
                    Text = "No",
                    Style = "Cancel"
                }
            }
        })
    end)
    
    -- Dragging Logic
    local dragging, dragStart, startPos
    self.Header.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = self.MainFrame.Position
            
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)
    
    UserInputService.InputChanged:Connect(function(input)
        if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
            local delta = input.Position - dragStart
            self.MainFrame.Position = UDim2.new(
                startPos.X.Scale,
                startPos.X.Offset + delta.X,
                startPos.Y.Scale,
                startPos.Y.Offset + delta.Y
            )
        end
    end)
    
    -- Sidebar Frame
    self.Sidebar = Creator.New("Frame", {
        Parent = self.MainFrame,
        Name = "Sidebar",
        Position = UDim2.new(0, 0, 0, 45),
        Size = UDim2.new(0, 140, 1, -45),
        BackgroundColor3 = "SecondaryBackground",
        BorderSizePixel = 0
    })
    
    Creator:Corner(self.Sidebar, UDim.new(0, 8))
    
    -- Border divider line between sidebar and container
    local borderLine = Creator.New("Frame", {
        Parent = self.MainFrame,
        Position = UDim2.new(0, 140, 0, 45),
        Size = UDim2.new(0, 1, 1, -45),
        BackgroundColor3 = "Border",
        BorderSizePixel = 0
    })
    
    -- Sidebar Scrolling Frame
    self.TabList = Creator.New("ScrollingFrame", {
        Parent = self.Sidebar,
        Name = "TabList",
        Position = UDim2.new(0, 0, 0, 0),
        Size = UDim2.new(1, 0, 1, -50),
        BackgroundTransparency = 1,
        CanvasSize = UDim2.new(0, 0, 0, 0),
        ScrollBarThickness = 0
    })
    
    Creator:Padding(self.TabList, 8, 8, 8, 8)
    
    local listLayout = Creator.New("UIListLayout", {
        Parent = self.TabList,
        SortOrder = Enum.SortOrder.LayoutOrder,
        Padding = UDim.new(0, 5)
    })
    
    listLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
        self.TabList.CanvasSize = UDim2.new(0, 0, 0, listLayout.AbsoluteContentSize.Y)
    end)
    
    -- User Avatar Card at bottom of sidebar (Fluent details)
    self.UserCard = Creator.New("Frame", {
        Parent = self.Sidebar,
        Name = "UserCard",
        Position = UDim2.new(0, 0, 1, -50),
        Size = UDim2.new(1, 0, 0, 50),
        BackgroundTransparency = 1
    })
    Creator:Padding(self.UserCard, 8, 8, 8, 8)
    
    local localPlayer = Players.LocalPlayer
    local avatarImage = "rbxassetid://10747373861"
    pcall(function()
        avatarImage = Players:GetUserThumbnailAsync(
            localPlayer.UserId,
            Enum.ThumbnailType.HeadShot,
            Enum.ThumbnailSize.Size48x48
        )
    end)
    
    self.Avatar = Creator.New("ImageLabel", {
        Parent = self.UserCard,
        Size = UDim2.new(0, 34, 0, 34),
        Position = UDim2.new(0, 4, 0.5, 0),
        AnchorPoint = Vector2.new(0, 0.5),
        BackgroundTransparency = 1,
        Image = avatarImage
    })
    Creator:Corner(self.Avatar, UDim.new(1, 0))
    Creator:Stroke(self.Avatar, 1, "Border")
    
    self.Username = Creator.New("TextLabel", {
        Parent = self.UserCard,
        Position = UDim2.new(0, 46, 0.1, 0),
        Size = UDim2.new(1, -48, 0.5, 0),
        BackgroundTransparency = 1,
        Text = localPlayer.DisplayName or localPlayer.Name,
        TextColor3 = "Text",
        TextSize = 11,
        Font = Enum.Font.GothamBold,
        TextXAlignment = Enum.TextXAlignment.Left
    })
    
    self.UserSubtitle = Creator.New("TextLabel", {
        Parent = self.UserCard,
        Position = UDim2.new(0, 46, 0.55, 0),
        Size = UDim2.new(1, -48, 0.4, 0),
        BackgroundTransparency = 1,
        Text = "@" .. localPlayer.Name,
        TextColor3 = "SubText",
        TextSize = 9,
        Font = Enum.Font.Gotham,
        TextXAlignment = Enum.TextXAlignment.Left
    })
    
    -- Page Container
    self.PageContainer = Creator.New("Frame", {
        Parent = self.MainFrame,
        Name = "PageContainer",
        Position = UDim2.new(0, 145, 0, 45),
        Size = UDim2.new(1, -145, 1, -45),
        BackgroundTransparency = 1
    })
    
    -- Keybind listener to toggle window (reads self.ToggleKey dynamically so it always uses the latest key)
    local toggleCooldown = false
    table.insert(self.Connections, UserInputService.InputBegan:Connect(function(input, processed)
        if processed then return end
        if toggleCooldown then return end
        if input.KeyCode ~= Enum.KeyCode.Unknown and input.KeyCode == self.ToggleKey then
            toggleCooldown = true
            self:Toggle()
            task.delay(0.3, function()
                toggleCooldown = false
            end)
        end
    end))
    
    -- Floating Action Button (FAB)
    if self.FabEnabled then
        local fabSize = self.FabSize
        
        self.FabFrame = Creator.New("CanvasGroup", {
            Parent = self.ScreenGui,
            Size = UDim2.new(0, fabSize, 0, fabSize),
            Position = UDim2.new(0, 20, 1, -(fabSize + 20)),
            BackgroundTransparency = 1,
            BorderSizePixel = 0,
            ZIndex = 100,
            Visible = false,
            GroupTransparency = 1
        })
        
        -- Soft neon glow background behind the FAB (Frame-based, no ImageLabel fallback square)
        local fabGlow = Creator.New("Frame", {
            Parent = self.FabFrame,
            Size = UDim2.new(1.15, 0, 1.15, 0),
            Position = UDim2.new(0.5, 0, 0.5, 0),
            AnchorPoint = Vector2.new(0.5, 0.5),
            BackgroundColor3 = self.FabBorderColor,
            BackgroundTransparency = 0.85,
            BorderSizePixel = 0,
            ZIndex = 99
        })
        Creator.New("UICorner", {
            Parent = fabGlow,
            CornerRadius = UDim.new(1, 0)
        })

        -- Inner circle — actual visible background
        local fabBg = Creator.New("Frame", {
            Parent = self.FabFrame,
            Size = UDim2.new(1, 0, 1, 0),
            BackgroundColor3 = ThemeManager:GetColor("Background"),
            BorderSizePixel = 0,
            ZIndex = 100
        })
        Creator.New("UICorner", {
            Parent = fabBg,
            CornerRadius = UDim.new(1, 0)
        })
        Creator.New("UIStroke", {
            Parent = fabBg,
            Color = self.FabBorderColor,
            Thickness = self.FabBorderSize,
            ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        })
        
        -- Logo inside FAB: text/emoji label
        local fabLogo = Creator.New("TextLabel", {
            Parent = self.FabFrame,
            Size = UDim2.new(0.7, 0, 0.7, 0),
            Position = UDim2.new(0.5, 0, 0.5, 0),
            AnchorPoint = Vector2.new(0.5, 0.5),
            BackgroundTransparency = 1,
            Text = self.LogoText,
            TextColor3 = self.FabBorderColor,
            TextSize = #self.LogoText > 1 and 12 or 18,
            Font = Enum.Font.GothamBold,
            TextXAlignment = Enum.TextXAlignment.Center,
            TextYAlignment = Enum.TextYAlignment.Center,
            ZIndex = 102,
            TextScaled = false
        })

        -- Add neon stroke to text to make it glow/menyala
        Creator.New("UIStroke", {
            Parent = fabLogo,
            Color = self.FabBorderColor,
            Thickness = 1.2,
            Transparency = 0.4
        })
        
        -- FAB UIScale for spring animation
        local fabScale = Creator.New("UIScale", {
            Parent = self.FabFrame,
            Scale = 0.4
        })
        
        -- Drag / tap logic (works for touch & mouse)
        -- hasMoved = true only if pointer moved after press (real drag, not tap)
        local pressing = false
        local hasMoved = false
        local dragStartPos = Vector2.new(0, 0)
        local fabStartPos = UDim2.new(0, 0, 0, 0)
        local DRAG_THRESHOLD = 6  -- pixels of movement before considered a drag
        
        table.insert(self.Connections, self.FabFrame.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 or
               input.UserInputType == Enum.UserInputType.Touch then
                pressing = true
                hasMoved = false
                dragStartPos = Vector2.new(input.Position.X, input.Position.Y)
                fabStartPos = self.FabFrame.Position
            end
        end))
        
        table.insert(self.Connections, UserInputService.InputChanged:Connect(function(input)
            if not pressing then return end
            if input.UserInputType == Enum.UserInputType.MouseMovement or
               input.UserInputType == Enum.UserInputType.Touch then
                local currentPos = Vector2.new(input.Position.X, input.Position.Y)
                local delta = currentPos - dragStartPos
                if not hasMoved then
                    -- Only start dragging if moved past threshold
                    if delta.Magnitude > DRAG_THRESHOLD then
                        hasMoved = true
                    end
                end
                if hasMoved then
                    local screenSize = workspace.CurrentCamera.ViewportSize
                    local fabSize = self.FabSize
                    local newX = math.clamp(fabStartPos.X.Offset + delta.X, 0, screenSize.X - fabSize)
                    local newY = math.clamp(fabStartPos.Y.Offset + delta.Y, 0, screenSize.Y - fabSize)
                    self.FabFrame.Position = UDim2.new(0, newX, 0, newY)
                end
            end
        end))
        
        table.insert(self.Connections, UserInputService.InputEnded:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 or
               input.UserInputType == Enum.UserInputType.Touch then
                if pressing and not hasMoved then
                    -- It was a tap, not a drag — open the GUI
                    self:Toggle()
                end
                pressing = false
                hasMoved = false
            end
        end))
        
        self.FabScale = fabScale
    end
    
    -- Open animation
    self.ScreenGui.Parent = parent
    self:AnimateOpen()
    
    -- Create Settings Tab if enabled
    if self.HasSettings then
        self:CreateSettingsTab()
    end
    
    return self
end

function Window:AnimateOpen()
    self.MainFrame.GroupTransparency = 1
    self.UIScale.Scale = 0.85
    -- FAB always hidden when window is open
    if self.FabFrame then
        self.FabFrame.Visible = false
        self.FabFrame.GroupTransparency = 1
    end
    
    local openTween1 = TweenService:Create(self.MainFrame, TweenInfo.new(0.35, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        GroupTransparency = 0
    })
    local openTween2 = TweenService:Create(self.UIScale, TweenInfo.new(0.35, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
        Scale = 1
    })
    openTween1:Play()
    openTween2:Play()
end

function Window:ShowFab()
    if not self.FabFrame then return end
    self.FabFrame.Visible = true
    self.FabScale.Scale = 0.4
    self.FabFrame.GroupTransparency = 1
    TweenService:Create(self.FabFrame, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        GroupTransparency = 0
    }):Play()
    TweenService:Create(self.FabScale, TweenInfo.new(0.35, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
        Scale = 1
    }):Play()
end

function Window:HideFab()
    if not self.FabFrame then return end
    local t1 = TweenService:Create(self.FabFrame, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        GroupTransparency = 1
    })
    local t2 = TweenService:Create(self.FabScale, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
        Scale = 0.4
    })
    t1.Completed:Connect(function()
        self.FabFrame.Visible = false
    end)
    t1:Play()
    t2:Play()
end

function Window:Toggle()
    self.Visible = not self.Visible
    local info = TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    
    if self.Visible then
        -- Hide FAB first, then show window
        self:HideFab()
        task.delay(0.1, function()
            self.MainFrame.Visible = true
            local t1 = TweenService:Create(self.MainFrame, info, { GroupTransparency = 0 })
            local t2 = TweenService:Create(self.UIScale, info, { Scale = 1 })
            t1:Play()
            t2:Play()
        end)
    else
        -- Hide window, then show FAB
        local t1 = TweenService:Create(self.MainFrame, info, { GroupTransparency = 1 })
        local t2 = TweenService:Create(self.UIScale, info, { Scale = 0.85 })
        t1.Completed:Connect(function()
            if not self.Visible then
                self.MainFrame.Visible = false
                self:ShowFab()
            end
        end)
        t1:Play()
        t2:Play()
    end
end

function Window:Notify(options)
    Notification:New(options)
end

function Window:Dialog(options)
    Dialog:Create(self.ScreenGui, options)
end

function Window:AddTab(tabOptions)
    local newTab = Tab.new(self, tabOptions)
    table.insert(self.Tabs, newTab)
    
    -- Automatically select the first tab added
    if #self.Tabs == 1 then
        self:SelectTab(1)
    end
    
    return newTab
end

function Window:SelectTab(tabIndex)
    local targetTab = self.Tabs[tabIndex]
    if not targetTab then return end
    
    if self.ActiveTab then
        self.ActiveTab:Deactivate()
    end
    
    self.ActiveTab = targetTab
    targetTab:Activate()
end

local function serializeValue(val)
    if typeof(val) == "Color3" then
        return { __type = "Color3", r = val.R, g = val.G, b = val.B }
    elseif typeof(val) == "EnumItem" then
        return { __type = "EnumItem", name = tostring(val) }
    elseif type(val) == "table" then
        local serialized = {}
        for k, v in pairs(val) do
            serialized[k] = serializeValue(v)
        end
        return serialized
    end
    return val
end

local function deserializeValue(val)
    if type(val) == "table" then
        if val.__type == "Color3" then
            return Color3.new(val.r, val.g, val.b)
        elseif val.__type == "EnumItem" then
            local enumType, enumName = val.name:match("^Enum%.([^%.]+)%.(.+)$")
            if enumType and enumName and Enum[enumType] then
                return Enum[enumType][enumName]
            end
            return nil
        else
            local deserialized = {}
            for k, v in pairs(val) do
                deserialized[k] = deserializeValue(v)
            end
            return deserialized
        end
    end
    return val
end

function Window:RegisterElement(id, element)
    if id and id ~= "" then
        self.Elements[id] = element
    end
end

function Window:SaveConfig(name)
    if not self.ConfigFolder then return false end
    
    local configData = {}
    for id, element in pairs(self.Elements) do
        local val = element:GetValue()
        configData[id] = serializeValue(val)
    end
    
    local filename = name .. ".json"
    return ConfigManager:Save(self.ConfigFolder, filename, configData)
end

function Window:LoadConfig(name)
    if not self.ConfigFolder then return false end
    
    local filename = name .. ".json"
    local configData = ConfigManager:Load(self.ConfigFolder, filename)
    if not configData then return false end
    
    for id, val in pairs(configData) do
        local element = self.Elements[id]
        if element then
            local deserialized = deserializeValue(val)
            pcall(function()
                element:SetValue(deserialized)
            end)
        end
    end
    return true
end

function Window:DeleteConfig(name)
    if not self.ConfigFolder then return false end
    local filename = name .. ".json"
    return ConfigManager:Delete(self.ConfigFolder, filename)
end

function Window:GetConfigs()
    if not self.ConfigFolder then return {} end
    return ConfigManager:GetConfigs(self.ConfigFolder)
end

function Window:LoadDefaultConfig()
    if self.ConfigFolder and self.DefaultConfig then
        self:LoadConfig(self.DefaultConfig)
    end
end

function Window:CreateSettingsTab()
    local settingsTab = self:AddTab({ Title = "Settings", Icon = "settings" })
    
    local themeSection = settingsTab:AddSection({ Title = "Appearance" })
    
    -- Theme selector
    local themesList = {}
    for name, _ in pairs(ThemeManager.Themes) do
        table.insert(themesList, name)
    end
    table.sort(themesList)
    
    themeSection:AddDropdown("UITheme", {
        Title = "Theme Selector",
        Description = "Change the visual styling",
        Values = themesList,
        Default = ThemeManager.CurrentTheme,
        Callback = function(themeName)
            ThemeManager:SetTheme(themeName)
        end
    })
    
    -- Window Toggle key binder
    local keySection = settingsTab:AddSection({ Title = "Controls" })
    keySection:AddKeybind("WindowToggleKey", {
        Title = "Toggle Keybind",
        Description = "Press a key to bind visibility toggle",
        Default = self.ToggleKey,
        Callback = function(key)
            self.ToggleKey = key
        end
    })
    
    -- Configurations Section
    if self.ConfigFolder then
        local configSection = settingsTab:AddSection({ Title = "Configurations" })
        
        local configsList = self:GetConfigs()
        
        local configDropdown = configSection:AddDropdown("SelectedConfig", {
            Title = "Select Config",
            Description = "Choose a configuration file",
            Values = configsList,
            Default = ""
        })
        
        local configNameInput = configSection:AddInput("NewConfigName", {
            Title = "Config Name",
            Description = "Enter a name for the new/updated config",
            Placeholder = "Config name..."
        })
        
        configSection:AddButton({
            Title = "Load Config",
            Description = "Load the selected configuration file",
            Callback = function()
                local selected = configDropdown:GetValue()
                if selected and selected ~= "" then
                    local success = self:LoadConfig(selected)
                    if success then
                        self:Notify({
                            Title = "Configs",
                            Content = "Successfully loaded config: " .. selected,
                            Duration = 3
                        })
                    else
                        self:Notify({
                            Title = "Configs",
                            Content = "Failed to load config: " .. selected,
                            Duration = 3
                        })
                    end
                else
                    self:Notify({
                        Title = "Configs",
                        Content = "Please select a config first.",
                        Duration = 3
                    })
                end
            end
        })
        
        configSection:AddButton({
            Title = "Save / Update Config",
            Description = "Save current settings to config name",
            Callback = function()
                local name = configNameInput:GetValue()
                if not name or name == "" then
                    name = configDropdown:GetValue()
                end
                
                if name and name ~= "" then
                    local success = self:SaveConfig(name)
                    if success then
                        local newList = self:GetConfigs()
                        configDropdown:SetValues(newList)
                        configDropdown:SetValue(name)
                        
                        self:Notify({
                            Title = "Configs",
                            Content = "Successfully saved config: " .. name,
                            Duration = 3
                        })
                    else
                        self:Notify({
                            Title = "Configs",
                            Content = "Failed to save config.",
                            Duration = 3
                        })
                    end
                else
                    self:Notify({
                        Title = "Configs",
                        Content = "Please enter or select a config name.",
                        Duration = 3
                    })
                end
            end
        })
        
        configSection:AddButton({
            Title = "Delete Config",
            Description = "Delete the selected configuration file",
            Callback = function()
                local selected = configDropdown:GetValue()
                if selected and selected ~= "" then
                    local success = self:DeleteConfig(selected)
                    if success then
                        local newList = self:GetConfigs()
                        configDropdown:SetValues(newList)
                        configDropdown:SetValue("")
                        
                        self:Notify({
                            Title = "Configs",
                            Content = "Successfully deleted config: " .. selected,
                            Duration = 3
                        })
                    else
                        self:Notify({
                            Title = "Configs",
                            Content = "Failed to delete config.",
                            Duration = 3
                        })
                    end
                else
                    self:Notify({
                        Title = "Configs",
                        Content = "Please select a config first.",
                        Duration = 3
                    })
                end
            end
        })
    end
    
    -- Reset / Info Section
    local infoSection = settingsTab:AddSection({ Title = "Information" })
    infoSection:AddButton({
        Title = "Destroy UI",
        Description = "Completely unload and delete SteamyUI",
        Callback = function()
            self:Destroy()
        end
    })
end

function Window:Destroy()
    -- Disconnect all window-level event connections
    if self.Connections then
        for _, connection in ipairs(self.Connections) do
            if connection then
                pcall(function()
                    connection:Disconnect()
                end)
            end
        end
        self.Connections = nil
    end
    
    -- Unload and clean up elements
    if self.Elements then
        for _, element in pairs(self.Elements) do
            if type(element) == "table" and type(element.Destroy) == "function" then
                pcall(element.Destroy, element)
            end
        end
        self.Elements = nil
    end
    
    local info = TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    local t1 = TweenService:Create(self.MainFrame, info, { GroupTransparency = 1 })
    local t2 = TweenService:Create(self.UIScale, info, { Scale = 0.85 })
    t1.Completed:Connect(function()
        self.ScreenGui:Destroy()
    end)
    t1:Play()
    t2:Play()
end

return Window

end)()

local SteamyUI = (function()
local ThemeManager = ThemeManager
local WindowManager = WindowManager
local Window = Window
local Tab = Tab
local KeySystem = KeySystem
local Icons = Icons

local SteamyUI = {
    Version = "1.0.0",
    Windows = {},
    ThemeManager = ThemeManager,
    Icons = Icons
}

function SteamyUI.new()
    return SteamyUI
end

function SteamyUI:CreateWindow(options)
    options = options or {}
    
    -- Instantiate main window
    local win = Window.new(options)
    table.insert(self.Windows, win)
    
    -- Handle Key System if configured
    if options.KeySystem and options.KeySettings then
        -- Hide main frame initially
        win.MainFrame.Visible = false
        if win.Shadow then win.Shadow.Visible = false end
        
        -- Route key file to root folder/SavedKeys.json automatically
        options.KeySettings.Folder = options.Folder or "Steamy"
        options.KeySettings.FileName = "SavedKeys.json"
        
        -- Spawn separate key verification GUI
        local keyGui = KeySystem.new(options.KeySettings, function()
            -- Verification success callback
            win.MainFrame.Visible = true
            if win.Shadow then win.Shadow.Visible = true end
            win:AnimateOpen()
            win:Notify({
                Title = "Access Granted",
                Content = "License verified successfully!",
                Icon = "check-circle",
                Type = "Success",
                Duration = 4
            })
        end)
    end
    
    return win
end

function SteamyUI:SetTheme(themeName)
    ThemeManager:SetTheme(themeName)
end

function SteamyUI:Destroy()
    for _, win in ipairs(self.Windows) do
        pcall(function()
            win:Destroy()
        end)
    end
    self.Windows = {}
end

return SteamyUI

end)()

return SteamyUI
