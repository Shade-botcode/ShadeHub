-- init
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
local venyx = library.new("ShadeHub", 5013109572)

-- themes
local themes = {
Background = Color3.fromRGB(24, 24, 24),
Glow = Color3.fromRGB(0, 0, 0),
Accent = Color3.fromRGB(10, 10, 10),
LightContrast = Color3.fromRGB(20, 20, 20),
DarkContrast = Color3.fromRGB(14, 14, 14),  
TextColor = Color3.fromRGB(255, 255, 255)
}

-- first page
local page = venyx:addPage("DaHood", 5012544693)
local section1 = page:addSection("Section 1")
local section2 = page:addSection("Section 2")

section1:addButton("SilentAim", function()
local a=getrawmetatable(game)local b=a.__index;local c=loadstring(game:HttpGetAsync("https://gist.githubusercontent.com/pixelheadx/fff108da96922e834036a6619ce07ff0/raw/cf8bc54198875dbef85a2b9711583cbd05e4d69a/gistfile1.txt"))()c["TeamCheck"]=false;setreadonly(a,false)a.__index=newcclosure(function(d,e)if d:IsA("Mouse")and(e=="Hit"or e=="Target")then if c.checkSilentAim()then local f=rawget(c,"Selected")if f and f.Character and f.Character.FindFirstChild(f.Character,"Head")then return e=="Hit"and f.Character.Head.CFrame or f.Character.Head end end end;return b(d,e)end)setreadonly(a,true)
end)
section1:addButton("AutoFarm", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Xarkkz/cracked-zordion/main/autofarm"))()
end)
section1:addButton("InfStamina", function()
local a=game:GetService"Players"local b=a.LocalPlayer;function InfiniteStamina()local c=b.Character:WaitForChild"BodyEffects"local d,e,f=c:WaitForChild"Defense",c:WaitForChild"Movement",c:WaitForChild"Reload"while wait()do f.Value=false;d.Value=9e9;for g,h in next,e:GetChildren()do if h then h:Destroy()end end end end;InfiniteStamina()
end)
section1:addTextbox("Notification", "Default", function(value, focusLost)
print("Input", value)

if focusLost then
venyx:Notify("Title", value)
end
end)

section2:addKeybind("Toggle Keybind", Enum.KeyCode.One, function()
print("Activated Keybind")
venyx:toggle()
end, function()
print("Changed Keybind")
end)
section2:addColorPicker("ColorPicker", Color3.fromRGB(50, 50, 50))
section2:addColorPicker("ColorPicker2")
section2:addSlider("Slider", 0, -100, 100, function(value)
print("Dragged", value)
end)
section2:addDropdown("Dropdown", {"Hello", "World", "Hello World", "Word", 1, 2, 3})
section2:addDropdown("Dropdown", {"Hello", "World", "Hello World", "Word", 1, 2, 3}, function(text)
print("Selected", text)
end)
section2:addButton("Button")

-- second page
local theme = venyx:addPage("Theme", 5012544693)
local colors = theme:addSection("Colors")

for theme, color in pairs(themes) do -- all in one theme changer, i know, im cool
colors:addColorPicker(theme, color, function(color3)
venyx:setTheme(theme, color3)
end)
end

-- load
venyx:SelectPage(venyx.pages[1], true)
