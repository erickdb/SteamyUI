# ♨️ SteamyUI

**SteamyUI** is a modern, responsive, and performance-optimized UI library designed for Roblox Script Hubs. It features smooth spring transitions, full Mobile/Tablet layout adaptation, a draggable Floating Action Button (FAB) when minimized, and advanced memory management to prevent client lag.

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

## 📁 Workspace Folder Structure

When you initialize SteamyUI, it automatically manages a structured filesystem inside the executor's `workspace/` directory.

```text
workspace/
└── Steamy/                     <-- Root Folder (Customizable via 'Folder' option)
    ├── SavedKeys.json          <-- Auto-saved KeySystem license file
    └── Configs/                <-- Subfolder for configurations
        ├── Default.json        <-- Default config loaded on start (auto-created)
        ├── custom_config.json  <-- Saved by users
        └── rage_settings.json  <-- Saved by users
```

---

## 🛠️ API Reference & Parameter Breakdowns

Every component and function option in SteamyUI is detailed below with parameter definitions.

### 1. Window Initialization (`SteamyUI:CreateWindow`)
Creates the main user interface window container. It handles responsive layouts, integrated license verification, configurations, and Floating Action Buttons.

```lua
local Window = SteamyUI:CreateWindow({
    Title = "SteamyUI",
    SubTitle = "v1.0.0 | Premium Script Hub",
    -- Logo: plain text, emoji, or max 4 characters. E.g. "S" or "🎯"
    Logo = "S", 
    -- LogoColor: hex code or Color3 for the neon logo badge and default FAB border
    LogoColor = "#0078FF",
    Size = UDim2.new(0, 580, 0, 430),       
    Theme = "Darker",                       
    Folder = "Steamy",                      -- Root folder name in executor workspace
    
    KeySystem = true,
    KeySettings = {
        Title = "Steamy Verification",
        Subtitle = "SteamyUI Security Portal",
        Description = "Enter your license key to verify access. Key is 'SecretKey123'.",
        GetKeyLink = "https://discord.gg/steamy-ui", 
        Keys = {"SecretKey123"},
        SaveKey = true 
    },
    
    ConfigSettings = {
        DefaultConfig = "Default"           -- Loads Configs/Default.json on start
    },
    
    FloatButton = {
        Enabled = true,
        Size = 60,                
        -- BorderColor omitted -> automatically inherits LogoColor (#0078FF)
        BorderSize = 3,            
    }
})
```

#### **Window Configuration Options Breakdown:**
* **`Title`** *(string)*: The main header text of the UI window (top-left).
* **`SubTitle`** *(string)*: A small secondary text right below the title.
* **`Logo`** *(string/number)*: Asset/Decal ID used as the GUI icon. Numeric IDs are automatically resolved via Roblox Thumbnail API.
* **`Size`** *(UDim2)*: Size of the UI window on Desktop. Auto-rescales on Mobile/Tablets to cover viewport safe areas.
* **`Theme`** *(string)*: The startup color theme. Options: `"Darker"` *(default)*, `"Dark"`, `"Light"`, `"Aqua"`, `"Amethyst"`, etc. (See full list at the bottom).
* **`Folder`** *(string)*: The main root folder name created inside the executor's `workspace/` directory. Defaults to `"Steamy"`.
* **`HasSettings`** *(boolean)*: If set to `true`, automatically builds an options/settings tab. Default is `false` (allowing developers to create their own custom settings layout).
* **`KeySystem`** *(boolean)*: Set to `true` to block the main GUI until key verification succeeds.
* **`KeySettings`** *(table)*: Authorization panel configuration (active only if `KeySystem = true`). License keys are automatically stored directly under the root folder as `SavedKeys.json`:
  * **`Title`** *(string)*: Header text of the Key System popup.
  * **`Subtitle`** *(string)*: Small text under the title.
  * **`Description`** *(string)*: Instructions for the user.
  * **`GetKeyLink`** *(string)*: URL shown to the user (e.g. Linkvertise, Discord) where they can obtain a key.
  * **`Keys`** *(array of strings)*: List of valid activation keys.
  * **`SaveKey`** *(boolean)*: Auto-saves successfully entered keys to bypass the key system on subsequent injects.
* **`ConfigSettings`** *(table)*: Handles the Auto-Saving configurations of elements. Config files are saved inside `<RootFolder>/Configs/`:
  * **`DefaultConfig`** *(string)*: Name of the default configuration loaded automatically (e.g., `"Default"` loads `<RootFolder>/Configs/Default.json`).
* **`FloatButton`** *(table)*: Circular draggable button (FAB) shown when the GUI is minimized:
  * **`Enabled`** *(boolean)*: Whether the FAB is enabled. Default is `true`.
  * **`Size`** *(number)*: Diameter of the circular button in pixels. Default is `60`.
  * **`BorderColor`** *(string)*: Optional hex color of the FAB's border (e.g. `"#7C5CBF"`). If omitted, automatically inherits the window `LogoColor`.
  * **`BorderSize`** *(number)*: Pixels width of the FAB border. Default is `3`.

---

### 2. Tabs (`Window:AddTab`)
Creates a category section on the left navigation bar.

```lua
local HomeTab = Window:AddTab({
    Title = "Home",
    Icon = "🏠" 
})
```

#### **Tab Options Breakdown:**
* **`Title`** *(string)*: Display name on the left sidebar.
* **`Icon`** *(string)*: Name of the built-in emoji/text icon (e.g., `"home"`, `"settings"`, `"terminal"`, `"sliders"`). Alternatively, you can pass **any custom emoji character or string** directly (e.g., `"⚔️"`, `"🎯"`, etc.).

---

### 3. Sections (`Tab:AddSection`)
Organizes elements visually inside a Tab.

```lua
local aimSection = HomeTab:AddSection({
    Title = "Silent Aim Settings",
    Collapsible = true,  
    DefaultOpen = false  
})
```

#### **Section Options Breakdown:**
* **`Title`** *(string)*: Section header text.
* **`Collapsible`** *(boolean)*: Enables clicking the header to collapse/expand (default: `true`).
* **`DefaultOpen`** *(boolean)*: Initial accordion expansion state (default: `false`).

---

### 4. Toggle (`Section:AddToggle`)
A checkbox representing a boolean value (`true`/`false`).

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

#### **Toggle Options Breakdown:**
* **`Title`** *(string)*: Display name.
* **`Description`** *(string)*: Small descriptive text.
* **`Default`** *(boolean)*: Starting state (`true`/`false`).
* **`Callback`** *(function)*: Fires when state changes, returning a boolean `state` parameter.

---

### 5. Slider (`Section:AddSlider`)
An interactive slider for numerical adjustments.

```lua
aimSection:AddSlider("SilentAimFOV", {
    Title = "Field Of View (FOV)",
    Description = "Adjust target detection radius",
    Min = 10,
    Max = 360,
    Default = 90,
    Decimal = 0,
    Callback = function(value)
        print("FOV set to:", value)
    end
})
```

#### **Slider Options Breakdown:**
* **`Title`** *(string)*: Display name.
* **`Description`** *(string)*: Small descriptive text.
* **`Min`** *(number)*: The minimum selectable value.
* **`Max`** *(number)*: The maximum selectable value.
* **`Default`** *(number)*: Starting value.
* **`Decimal`** *(number)*: Rounding decimal places (`0` for integers, `1`/`2` for fractions).
* **`Callback`** *(function)*: Fires on slider changes, returning a numerical `value`.

---

### 6. Dropdown (`Section:AddDropdown`)
A selection menu. Clicking slides in a side-sheet selection panel from the right. Selected items feature a clean left vertical indicator strip.

```lua
aimSection:AddDropdown("SilentAimTarget", {
    Title = "Target Body Parts",
    Description = "Select target hit box alignments",
    Values = {"Head", "Torso", "Left Arm", "Right Arm"},
    MultiSelect = true,  
    Searchable = true,   
    Default = {"Head"},  
    Callback = function(selectedItems)
        print("Target parts chosen:", table.concat(selectedItems, ", "))
    end
})
```

#### **Dropdown Options Breakdown:**
* **`Title`** *(string)*: Display name.
* **`Description`** *(string)*: Small descriptive text.
* **`Values`** *(array of strings)*: List of options to show in the dropdown list.
* **`MultiSelect`** *(boolean)*: Allows selecting multiple options concurrently (adds checkmarks). If `false`, clicking an option closes the drawer.
* **`Searchable`** *(boolean)*: Adds a search filter input field at the top of the side drawer. Default is `true`.
* **`Default`** *(string or array of strings)*: Initial selection(s).
* **`Callback`** *(function)*: Fires when a selection changes. Returns a table of strings if `MultiSelect = true`, or a single string if `MultiSelect = false`.

---

### 7. Input (`Section:AddInput`)
A text field allowing keyboard inputs.

```lua
aimSection:AddInput("TargetPlayer", {
    Title = "Target Player Username",
    Placeholder = "Enter username...",
    Default = "",
    ClearTextOnFocus = false,
    Callback = function(text, enterPressed)
        print("Input text:", text, "Enter pressed:", enterPressed)
    end
})
```

#### **Input Options Breakdown:**
* **`Title`** *(string)*: Display name.
* **`Placeholder`** *(string)*: Ghost text shown in the input box when it is empty.
* **`Default`** *(string)*: Starting text.
* **`ClearTextOnFocus`** *(boolean)*: Clears the input field as soon as the user clicks inside. Default is `false`.
* **`Callback`** *(function)*: Fires when the input box loses focus. Returns `text` (string) and `enterPressed` (boolean indicating if they hit the Enter key).

---

### 8. Color Picker (`Section:AddColorPicker`)
An interactive picker providing Hue, Saturation, Value sliders and presets to return a `Color3`.

```lua
espSection:AddColorPicker("EspBoxColor", {
    Title = "ESP Box Color",
    Description = "Change visual ESP box tint color",
    Default = Color3.fromRGB(0, 255, 128), 
    Callback = function(color)
        print("ESP Color changed:", color)
    end
})
```

#### **Color Picker Options Breakdown:**
* **`Title`** *(string)*: Display name.
* **`Description`** *(string)*: Small descriptive text.
* **`Default`** *(Color3)*: Initial color value.
* **`Callback`** *(function)*: Fires on color adjustments, returning a `Color3` object.

---

### 9. Button (`Section:AddButton`)
A clickable button containing smooth ripple click feedback.

```lua
testSection:AddButton({
    Title = "Reset Configuration",
    Description = "Restores all elements to default configurations",
    Icon = "refresh", 
    Callback = function()
        print("Settings reset requested.")
    end
})
```

#### **Button Options Breakdown:**
* **`Title`** *(string)*: Display name.
* **`Description`** *(string)*: Small descriptive text.
* **`Icon`** *(string)*: Optional icon name or custom string/emoji.
* **`Callback`** *(function)*: Code executed when the button is clicked.

---

### 10. Progress Bar (`Section:AddProgressBar`)
Displays a progress indicator bar.

```lua
local progress = visualElementsSection:AddProgressBar({
    Title = "Asset Downloader Progress",
    Default = 25 
})
progress:SetProgress(75) 
```

#### **Progress Bar Options Breakdown:**
* **`Title`** *(string)*: Display name.
* **`Default`** *(number)*: Starting percentage (0 - 100).
* **Methods**:
  * **`progress:SetProgress(number)`**: Changes progress bar fill percentage.

---

### 11. Loading Indicator (`Section:AddLoadingIndicator`)
Displays a looping loading ring (spinning/pulsing).

```lua
visualElementsSection:AddLoadingIndicator({
    Size = 32 
})
```

#### **Loading Indicator Options Breakdown:**
* **`Size`** *(number)*: Size diameter in pixels. Default is `28`.

---

### 12. Paragraph & Label (`Section:AddParagraph` / `Section:AddLabel`)
Renders static text blocks.

```lua
welcomeSection:AddParagraph({
    Title = "Update Notice",
    Content = "SteamyUI updated to v1.0.0!"
})

welcomeSection:AddLabel({
    Text = "Current Server Status: ONLINE"
})
```

#### **Paragraph & Label Options Breakdown:**
* **Paragraph `Title` & `Content`** *(strings)*: Renders a large bold title with a multi-line content block below.
* **Label `Text`** *(string)*: Renders a single-line, lightweight text block.

---

### 13. Dialog Prompt (`Window:Dialog`)
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
            Style = "Cancel" 
        }
    }
})
```

#### **Dialog Options Breakdown:**
* **`Title`** *(string)*: Modal header.
* **`Content`** *(string)*: Message content.
* **`Buttons`** *(array of tables)*: Custom action buttons:
  * **`Text`** *(string)*: Label.
  * **`Style`** *(string)*: Design styling (`"Default"` or `"Cancel"`).
  * **`Callback`** *(function)*: Fires when clicked.

---

### 14. Toast Notification (`Window:Notify`)
Spawns toast message pop-ups at the bottom-right corner.

```lua
Window:Notify({
    Title = "Execution Success!",
    Content = "SteamyUI loaded in 0.05s without issues.",
    Icon = "check-circle", 
    Type = "Success",       
    Duration = 5            
})
```

#### **Notification Options Breakdown:**
* **`Title`** *(string)*: Bold header text.
* **`Content`** *(string)*: Message detail.
* **`Icon`** *(string)*: Icon name or custom string/emoji.
* **`Type`** *(string)*: Pop-up theme colors (`"Success"`, `"Info"`, `"Warning"`, `"Error"`).
* **`Duration`** *(number)*: Seconds before the notification auto-dismisses. Default is `4`.

---

## 💾 Script Utilities

### Programmatic Toggles
You can open/close or destroy the GUI programmatically via Lua commands:

```lua
-- Toggle visibility (Minimize / Restore)
Window:Toggle()

-- Completely delete the GUI hierarchy and clean up event listeners to free RAM
Window:Destroy()
```

### Memory Management & Optimizations
SteamyUI is heavily optimized for low-end mobile devices:
* **Garbage Collection (Memory Leaks)**: Calling `Window:Destroy()` systematically disconnects all active event connections (keyboard inputs, slider drags, text focus, layout recalculations). This prevents client memory buildup on script re-injects.
* **CanvasGroup Optimization**: CanvasGroups are used dynamically for transitions. Propertis are disabled or set to `.Visible = false` when hidden, letting the engine bypass rendering calculations.

### Manual Configuration Management
If `ConfigSettings` is enabled in `CreateWindow`, you can trigger manual save, load, and deletion processes:

```lua
-- Save current values into file named "aim_setup.json" (saves to executor <RootFolder>/Configs/ folder)
Window:SaveConfig("aim_setup")

-- Load values stored inside "aim_setup.json" from <RootFolder>/Configs/
Window:LoadConfig("aim_setup")

-- Delete "aim_setup.json" config file from <RootFolder>/Configs/
Window:DeleteConfig("aim_setup")

-- Returns a list of all existing configs in <RootFolder>/Configs/
local configs = Window:GetConfigs()
```

---

### 🛠️ Creating a Custom Settings Tab (Developer Reference)
SteamyUI does not enforce a hardcoded Settings tab. Instead, you can build a customized settings tab directly using the standard UI components and utilities:

```lua
-- 1. Create a Settings Tab
local SettingsTab = Window:AddTab({
    Title = "Settings",
    Icon = "settings"
})

-- 2. Theme Selection Section
local appearance = SettingsTab:AddSection({ Title = "Appearance" })
appearance:AddDropdown("ThemeSelect", {
    Title = "UI Theme",
    Description = "Choose a color palette for the interface",
    Values = {"Darker", "Dark", "Light", "Aqua", "Amethyst", "Darker Blue Neon", "Light Cyan Neon", "Darker Emerald Neon", "Darker Purple Neon"},
    Default = "Darker",
    Callback = function(themeName)
        SteamyUI:SetTheme(themeName)
    end
})

-- 3. Window Toggle Keybind Section
local controls = SettingsTab:AddSection({ Title = "Controls" })
controls:AddKeybind("ToggleBind", {
    Title = "Window Toggle Key",
    Description = "Key used to minimize or restore the main window",
    Default = Window.ToggleKey,
    Callback = function(key)
        Window.ToggleKey = key
    end
})

-- 4. Configurations Directory Section
local configSection = SettingsTab:AddSection({ Title = "Configurations" })

local configNameInput = configSection:AddInput("ConfigName", {
    Title = "Config File Name",
    Placeholder = "Enter filename...",
    Default = ""
})

-- List config files
local configsList = Window:GetConfigs()
local configDropdown = configSection:AddDropdown("SelectedConfig", {
    Title = "Select Config",
    Description = "Choose a file to load or delete",
    Values = configsList,
    Default = "",
    Callback = function(val)
        if val ~= "" then
            configNameInput:SetValue(val) -- Sync selection to the text box
        end
    end
})

configSection:AddButton({
    Title = "Save Config",
    Callback = function()
        local name = configNameInput:GetValue()
        if name ~= "" then
            Window:SaveConfig(name)
            configDropdown:SetValues(Window:GetConfigs()) -- Refresh options list
        end
    end
})

configSection:AddButton({
    Title = "Load Config",
    Callback = function()
        local selected = configDropdown:GetValue()
        if selected ~= "" then
            Window:LoadConfig(selected)
        end
    end
})

configSection:AddButton({
    Title = "Delete Config",
    Callback = function()
        local selected = configDropdown:GetValue()
        if selected ~= "" then
            Window:DeleteConfig(selected)
            configDropdown:SetValues(Window:GetConfigs()) -- Refresh options list
        end
    end
})

-- 5. Destruction Section
local danger = SettingsTab:AddSection({ Title = "Danger Zone" })
danger:AddButton({
    Title = "Unload UI",
    Description = "Completely delete the GUI and release resources",
    Icon = "trash",
    Callback = function()
        Window:Destroy()
    end
})
```

---

## 🎨 Supported Themes

You can initialize SteamyUI with any of the following themes using the `Theme` parameter in `CreateWindow` (e.g. `Theme = "Aqua"`):

* **`Darker`** *(Default)*: Extremely dark background theme with neon blue accents.
* **`Dark`**: A standard dark charcoal interface.
* **`Light`**: A clean, light-mode interface.
* **`Aqua`**: Ocean-deep dark teal background with bright cyan accents.
* **`Amethyst`**: Deep mystical purple background with vibrant purple accents.
* **`Darker Blue Neon`**: Deep dark navy background with bright cyan neon highlights.
* **`Light Cyan Neon`**: High-contrast light mode with sea-green highlights.
* **`Darker Emerald Neon`**: Emerald forest dark green background with neon green highlights.
* **`Darker Purple Neon`**: Dark orchid violet background with intense hot-magenta highlights.

---

## 🖼️ Supported Icons

Pass these names to the `Icon` parameter of elements such as Tabs or Buttons (e.g. `Icon = "terminal"`). Note that **you can also pass any direct unicode string/emoji** (like `"⚔️"`, `"🔥"`, `"🔫"`) and it will render perfectly!

`home` (🏠) | `settings` (⚙) | `menu` (☰) | `search` (🔍) | `user` (👤) | `lock` (🔒) | `unlock` (🔓) | `key` (🔑) | `discord` (💬) | `globe` (🌐) | `play` (▶) | `refresh` (↺) | `copy` (📋) | `link` (🔗) | `trash` (🗑) | `plus` (+) | `minus` (−) | `x` (✕) | `check` (✓) | `check-circle` (✅) | `info` (ℹ) | `alert-triangle` (⚠) | `alert-circle` (⊘) | `bell` (🔔) | `chevron-right` (›) | `chevron-left` (‹) | `chevron-down` (⌄) | `chevron-up` (⌃) | `folder` (📁) | `file` (📄) | `database` (🗄) | `save` (💾) | `eye` (👁) | `eye-off` (🙈) | `palette` (🎨) | `terminal` (>_) | `code` (</>) | `sliders` (⧉)
