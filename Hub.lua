local Rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()

local Window = Rayfield:CreateWindow({
   Name = "BROTHAISHACKIER HUB",
   Icon = 81944506050305,
   LoadingTitle = "BROTHAISHACKIER HUB",
   LoadingSubtitle = "by BROTHAISHACKIER",
   ShowText = "BROTHAISHACKIER HUB",
   Theme = "DarkBlue",

   ToggleUIKeybind = "K",

   DisableRayfieldPrompts = true,
   DisableBuildWarnings = true,

   ConfigurationSaving = {
      Enabled = false,
      FolderName = nil,
      FileName = "Big Hub"
   },

   Discord = {
      Enabled = true,
      Invite = "MffTRsUSpj",
      RememberJoins = false
   },

   KeySystem = false,
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided",
      FileName = "Key",
      SaveKey = true,
      GrabKeyFromSite = false,
      Key = { "Hello" }
   }
})

local UniversalTab = Window:CreateTab("Scripts", "globe")

local AboutTab = Window:CreateTab("About BROTHAISHACKIER", 81944506050305)

AboutTab:CreateSection("About")

AboutTab:CreateLabel("BROTHAISHACKIER", 85624417780432)

AboutTab:CreateParagraph({
   Title = "About",
   Content = [[I make roblox hacks]]
})

AboutTab:CreateSection("Links")

local list = loadstring(game:HttpGet("https://raw.githubusercontent.com/BROTHAISHACKIER/BROTHAISHACKIER-HUB/refs/heads/main/Hub/list.lua"))()

for i, v in pairs(list.scripts) do
  UniversalTab:CreateButton({
     Name = i,
     Callback = function()
        loadstring(game:HttpGet(v))()
     end
  })
end

for i, v in pairs(list.profiles) do
  AboutTab:CreateButton({
     Name = i,
     Callback = function()
        setclipboard(v)
        Rayfield:Notify({
           Title = "Copied to Clipboard",
           Content = "Paste it in a Browser",
           Duration = 6.5,
           Image = "map-pin"
        })
     end
  })
end
