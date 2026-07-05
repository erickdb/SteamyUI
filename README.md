# ♨️ SteamyUI
---

## 🚀 Quick Start

### For Exploit / Executor Clients
Paste the following code into your exploit executor:

```lua
local SteamyUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/erickdb/SteamyUI/refs/heads/main/SteamyUI.lua"))()
```

### For Roblox Studio Testing (Rojo)
If you place the file inside `ReplicatedStorage`:

```lua
local SteamyUI = require(game:GetService("ReplicatedStorage"):WaitForChild("SteamyUI"))
```

---

## 🛠️ API Reference & Components

Here is a comprehensive guide to utilizing all components available in SteamyUI.

### 1. Window Initialization
Creates the main user interface window container. It supports an integrated Key Authorization System, Auto-Configurations, and a customizable Floating Action Button (FAB).

```lua
local Window = SteamyUI:CreateWindow({
    Title = "SteamyUI",
    SubTitle = "v1.0.0 | Premium Script Hub",
    Logo = "rbxassetid://133673716990208", -- Roblox Asset or Decal ID (autoresolved dynamically)
    Size = UDim2.new(0, 580, 0, 430),       -- Default window size for PC
    
    -- [OPTIONAL] Key System / License Protection
    KeySystem = true,
    KeySettings = {
        Title = "Steamy Verification",
        Subtitle = "SteamyUI Security Portal",
        Description = "Enter your license key to verify access. Key is 'SecretKey123'.",
        GetKeyLink = "https://discord.gg/steamy-ui", -- Link to acquire key
        Keys = {"SecretKey123"},
        SaveKey = true, -- Automatically stores the key to bypass on re-injects
        Folder = "SteamyConfigs",
        FileName = "saved_key.json"
    },
    
    -- [OPTIONAL] Auto Save/Load Configuration System
    ConfigSettings = {
        Folder = "SteamyConfigs",
        DefaultConfig = "default"
    },
    
    -- [OPTIONAL] Floating Action Button (FAB) shown when Minimized
    FloatButton = {
        Enabled = true,
        Size = 60,                -- Diameter of the circular button (px)
        BorderColor = "#7C5CBF",   -- Hex color for the border
        BorderSize = 3,            -- Thickness of the border
    }
})
```

---

### 2. Add Tab
Creates a category section on the left navigation bar.

```lua
local HomeTab = Window:AddTab({
    Title = "Home",
    Icon = "home" -- Icon name (e.g., home, terminal, eye, settings, sliders)
})
```

---

### 3. Add Section
Organizes elements visually inside a Tab. Sections are **collapsible** (accordion-style) by default with dynamic spring-like animations.

```lua
local aimSection = HomeTab:AddSection({
    Title = "Silent Aim Settings",
    Collapsible = true,  -- Enables accordion collapse/expand on header click (default: true)
    DefaultOpen = false  -- Sets initial expansion state (default: false)
})
```

---

### 4. Toggle
A checkbox element representing a boolean (`true`/`false`) value.

```lua
aimSection:AddToggle("SilentAimEnabled", {
    Title = "Enable Silent Aim",
    Description = "Automatically locks onto target players",
    Default = false,
    Callback = function(state)
        print("Silent Aim status:", state)
    end
})
```

---

### 5. Slider
An interactive slider for fine-tuning numerical adjustments.

```lua
aimSection:AddSlider("SilentAimFOV", {
    Title = "Field Of View (FOV)",
    Description = "Adjust target detection radius",
    Min = 10,
    Max = 360,
    Default = 90,
    Callback = function(value)
        print("FOV set to:", value)
    end
})
```

---

### 6. Dropdown
A menu allowing selection of a single value or multiple values. When clicked, it smoothly slides in a premium **side-sheet selection drawer** from the right edge of the window. Supports search query filtering dynamically. Selected items feature a clean left vertical indicator strip.

```lua
-- Multi-Select Dropdown Example
aimSection:AddDropdown("SilentAimTarget", {
    Title = "Target Body Parts",
    Description = "Select target hit box alignments",
    Values = {"Head", "Torso", "Left Arm", "Right Arm"},
    MultiSelect = true,  -- Support multiple checked selections
    Searchable = true,   -- Adds a search filter input (default: true)
    Default = {"Head"},  -- Initial selections
    Callback = function(selectedItems)
        print("Target parts chosen:", table.concat(selectedItems, ", "))
    end
})
```

---

### 7. Input
A text field allowing keyboard input.

```lua
aimSection:AddInput("TargetPlayer", {
    Title = "Target Player Username",
    Placeholder = "Enter username...",
    Callback = function(text, enterPressed)
        print("Input text:", text, "Enter pressed:", enterPressed)
    end
})
```

---

### 8. Color Picker
An interactive palette providing HSV adjustments to return a `Color3` object.

```lua
espSection:AddColorPicker("EspBoxColor", {
    Title = "ESP Box Color",
    Description = "Change visual ESP box tint color",
    Default = Color3.fromRGB(0, 255, 128), -- Neon Emerald Green
    Callback = function(color)
        print("ESP Color changed:", color)
    end
})
```

---

### 9. Button
A clickable button containing a smooth ripple feedback animation.

```lua
testSection:AddButton({
    Title = "Reset Configuration",
    Description = "Restores all elements to default configurations",
    Icon = "refresh-cw", -- Optional Lucide icon name
    Callback = function()
        print("Settings reset requested.")
    end
})
```

---

### 10. Progress Bar
Displays percentage bars representing loader states or file downloads.

```lua
local progress = visualElementsSection:AddProgressBar({
    Title = "Asset Downloader Progress",
    Default = 25 -- Initiates at 25%
})

-- Dynamically update progress from anywhere
progress:SetProgress(75) -- Changes progress to 75%
```

---

### 11. Loading Indicator
Displays a looping loading ring (spinning/pulsing).

```lua
visualElementsSection:AddLoadingIndicator({
    Size = 32 -- Size diameter (px)
})
```

---

### 12. Paragraph & Label
Renders static text blocks.

```lua
-- Paragraph: Renders a large Title and a detailed description block
welcomeSection:AddParagraph({
    Title = "Update Notice",
    Content = "SteamyUI updated to v1.0.0 with smooth spring animations!"
})

-- Label: Renders a simple, clean, one-line string
welcomeSection:AddLabel({
    Text = "Current Server Status: ONLINE"
})
```

---

### 13. Dialog Prompt
Triggers a modal dialog in the middle of the viewport that locks background UI interaction.

```lua
Window:Dialog({
    Title = "Unload UI",
    Content = "Are you sure you want to completely unload and destroy the interface?",
    Buttons = {
        {
            Text = "Unload",
            Callback = function()
                Window:Destroy()
            end
        },
        {
            Text = "Cancel",
            Style = "Cancel" -- Uses the Cancel color palette style
        }
    }
})
```

---

### 14. Toast Notification
Spawns toast message pop-ups at the bottom-right corner.

```lua
Window:Notify({
    Title = "Execution Success!",
    Content = "SteamyUI loaded in 0.05s without issues.",
    Icon = "check-circle", -- Lucide icon name
    Type = "Success",       -- Notification Type: Success, Info, Warning, Error
    Duration = 5            -- Pop-up visibility duration in seconds
})
```

---

### 15. Divider
Renders a thin visual separator line.

```lua
visualElementsSection:AddDivider()
```

---

## 💾 Script Utilities

### Programmatic Toggles
You can open/close or destroy the GUI programmatically via Lua commands:

```lua
-- Toggle visibility (Minimize / Restore)
Window:Toggle()

-- Completely delete the GUI hierarchy and clean up event listeners
Window:Destroy()
```

### Memory Management & Optimizations
SteamyUI is heavily optimized for low-end mobile devices:
* **Garbage Collection (Memory Leaks)**: Calling `Window:Destroy()` will systematically disconnect all active `UserInputService` event connections, hover/click connections, layout recalculations, and clear references. This prevents client memory buildup on script re-injects.
* **CanvasGroup Optimization**: CanvasGroups are used dynamically for transitions. Propertis are disabled or set to `.Visible = false` when hidden, letting the engine bypass rendering calculations.

### Manual Configuration Management
If `ConfigSettings` is enabled in `CreateWindow`, you can trigger manual save, load, and deletion processes:

```lua
-- Save current values into file named "aim_setup.json"
Window:SaveConfig("aim_setup")

-- Load values stored inside "aim_setup.json"
Window:LoadConfig("aim_setup")

-- Delete "aim_setup.json" config file
Window:DeleteConfig("aim_setup")

-- Returns a list of all existing saved configs
local configs = Window:GetConfigs()
```
