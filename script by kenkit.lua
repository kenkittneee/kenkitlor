loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()

       local Window = MakeWindow({
         Hub = {
         Title = "kenkit hub",
         Animation = "SCRIPT TỔNG HỢP By KENKITNEE"
         },
        Key = {
        KeySystem = false,
        Title = "Key System",
        Description = "",
        KeyLink = "",
        Keys = {"1234"},
        Notifi = {
        Notifications = true,
        CorrectKey = "Running the Script...",
       Incorrectkey = "The key is incorrect",
       CopyKeyLink = "Copied to Clipboard"
      }
    }
  })

       MinimizeButton({
       Image = "https://create.roblox.com/store/asset/130559888309547",
       Size = {60, 60},
       Color = Color3.fromRGB(10, 10, 10),
       Corner = true,
       Stroke = false,
       StrokeColor = Color3.fromRGB(255, 0, 0)
      })
      
------ Tab
     local Tab1o = MakeTab({Name = "Script Farm (bloxfruit)"})
     local Tab2o = MakeTab({Name = "Script Pvp (bloxfruit)"})
     local Tab3o = MakeTab({Name = "Script Kaitun (bloxfruit)"})
     local Tab4o = MakeTab({Name = "Script escape tsunami for brainrots"})
     
------- BUTTON
    
    AddButton(Tab1o, {
     Name = "Trau v9",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/trungdao2k4/buffalo/refs/heads/main/traurobloxv9.lua"))()

    AddButton(Tab1o, {
     Name = "Andepzai hub",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/AnDepZaiHub/AnDepZaiHubBeta/refs/heads/main/AnDepZaiHubBeta.lua"))()

    AddButton(Tab2o, {
     Name = "Hermanos hub",
    Callback = function()
	  local script_mode = "PVP" -- PVP, FARM
loadstring(game:HttpGet("https://raw.githubusercontent.com/hermanos-dev/hermanos-hub/refs/heads/main/Loader.lua"))()

    AddButton(Tab3o, {
     Name = "Kaitun ( lever )",
    Callback = function()
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

    AddButton(Tab4o, {
     Name = "Cyrus hub",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/CyrusOffc/scriptcyrus/refs/heads/main/roblox/loader.lua"))()
