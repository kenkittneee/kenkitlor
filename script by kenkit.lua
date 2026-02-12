local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")

local player = Players.LocalPlayer

-- Tạo GUI
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = player:WaitForChild("PlayerGui")

-- Nút mở menu
local ToggleButton = Instance.new("TextButton")
ToggleButton.Parent = ScreenGui
ToggleButton.Size = UDim2.fromOffset(120, 40)
ToggleButton.Position = UDim2.fromScale(0.1, 0.1)
ToggleButton.Text = "MENU"
ToggleButton.BackgroundColor3 = Color3.fromRGB(0,0,0)
ToggleButton.TextColor3 = Color3.new(1,1,1)
ToggleButton.Draggable = true

-- Menu chính
local Menu = Instance.new("Frame")
Menu.Parent = ScreenGui
Menu.Size = UDim2.fromOffset(400, 250)
Menu.Position = UDim2.fromScale(0.3, 0.3)
Menu.BackgroundColor3 = Color3.fromRGB(30,30,30)
Menu.Visible = false
Menu.Active = true
Menu.Draggable = true

-- Bo góc
local UICorner = Instance.new("UICorner")
UICorner.Parent = Menu

-- Scale effect
local UIScale = Instance.new("UIScale")
UIScale.Parent = Menu
UIScale.Scale = 0.8

-- Trạng thái
local isOpen = false

-- Tween info
local tweenInfo = TweenInfo.new(
    0.25, -- thời gian
    Enum.EasingStyle.Quad,
    Enum.EasingDirection.Out
)

-- Hàm mở menu
local function OpenMenu()
    Menu.Visible = true
    
    TweenService:Create(UIScale, tweenInfo, {Scale = 1}):Play()
    TweenService:Create(Menu, tweenInfo, {BackgroundTransparency = 0}):Play()
    
    isOpen = true
end

-- Hàm đóng menu
local function CloseMenu()
    local tween1 = TweenService:Create(UIScale, tweenInfo, {Scale = 0.8})
    local tween2 = TweenService:Create(Menu, tweenInfo, {BackgroundTransparency = 1})
    
    tween1:Play()
    tween2:Play()
    
    tween1.Completed:Wait()
    Menu.Visible = false
    
    isOpen = false
end

-- Khi bấm nút
ToggleButton.MouseButton1Click:Connect(function()
    if isOpen then
        CloseMenu()
    else
        OpenMenu()
    end
end)

local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
repeat wait() until game:IsLoaded()
local Window = Fluent:CreateWindow({
    Title = "Kenkit Tổng Hợp",
    SubTitle = "by Gia Bao Dep Trai",
    TabWidth = 157,
    Size = UDim2.fromOffset(555, 320),
    Acrylic = true,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.End
})
local Tabs = {
        Main0=Window:AddTab({ Title="Thông Tin" }),
        Main1=Window:AddTab({ Title="Script Farm" }),
        Main2=Window:AddTab({ Title="Script Kaitun" }),
        Main3=Window:AddTab({ Title="Script Pvp" }),
        Main4=Window:AddTab({ Title="script escape tsunami" }),
		
}
    
    Tabs.Main0:AddButton({
    Title = "Youtuber",
    Description = "Kenkit nèe",
    Callback = function()
        setclipboard("https://www.youtube.com/@kenkitdepzai692")
    end
})

	
    Tabs.Main1:AddButton({
    Title="Trau v9",
    Description="",
    Callback=function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/trungdao2k4/buffalo/refs/heads/main/traurobloxv9.lua"))()
  end
})

Tabs.Main1:AddButton({
    Title="Andepzai hub",
    Description="",
    Callback=function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/AnDepZaiHub/AnDepZaiHubBeta/refs/heads/main/AnDepZaiHubBeta.lua"))()
  end
})

Tabs.Main2:AddButton({
    Title="Kaitun (lever)",
    Description="",
    Callback=function()
	  getgenv().NAH = {
    DeleteMap = true,
    BlackScreen = false,
    LockFragment = 10,
    AwakenFruit = false,
    UpRace = true,
    LockFps = true,
    FPSCAP = 15,
    FarmItems = {
        Pole = false,
        Saber = false,
        GetMirrorFactorWhenHaveCup = true,
    },
    TableFruit = {
        ListFruit = {"Kitsune-Kitsune"},
        SnipeFruit = false,
        EatFruit = true
    },
}
loadstring(game:HttpGet("https://api.luarmor.net/files/v4/loaders/4365e6ab3c80828a24ba946f4d8ff946.lua"))()
  end
})

Tabs.Main3:AddButton({
    Title="Hermanos hub",
    Description="",
    Callback=function()
	  local script_mode = "PVP" -- PVP, FARM
loadstring(game:HttpGet("https://raw.githubusercontent.com/hermanos-dev/hermanos-hub/refs/heads/main/Loader.lua"))()
  end
})

Tabs.Main4:AddButton({
    Title="Cyrus hub",
    Description="",
    Callback=function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/CyrusOffc/scriptcyrus/refs/heads/main/roblox/loader.lua"))()
  end
})
