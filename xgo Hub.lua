--XGO 超级无敌源码 
repeat wait() until game:IsLoaded()
local resume = coroutine.resume           local create = coroutine.create
getgenv().autoCollectEnabled = true        --⠀  ⠀⠀⠀⠀⠀⠀⠀⣠⣶⣶⣶⣦⠀      ⠀
getgenv().autoSellEnabled = true           -- ⠀ ⠀⣠⣤⣤⣄⣀⣾⣿⠟⠛⠻⢿⣷⠀      
getgenv().autoBuyEnabled = true            --   ⢰⣿⡿⠛⠙⠻⣿⣿⠁⠀⠀⠀⣶⢿⡇      
getgenv().infiniteJumpEnabled = true       --   ⢿⣿⣇⠀⠀⠀⠈⠏⠀⠀ 𝟓𝟐𝟎🎀      
getgenv().clickTpEnabled = true            --⠀   ⠻⣿⣷⣦⣤⣀⠀⠀⠀⠀⣾⡿⠃⠀      
getgenv().autoObbyEnabled = true           --⠀⠀  ⠀⠀⠉⠉⠻⣿⣄⣴⣿⠟⠀⠀⠀      ⠀
--🫧 𝙻𝚒𝚔𝚎 -🖇🤍꙳✧˖°. ⁺₊⋆ ✩🖇..★⛓.*☠️.☆♪   --⠀⠀⠀  ⠀⠀⠀⠀⣿⡿⠟⠁⠀⠀⠀⠀      
local function destroyIfExists(obj)    if obj then        obj:Destroy()    end    end
function teleportLocalPlayer(input)    local Player = game.Players.LocalPlayer    local Mouse = Player:GetMouse()    local UIS = game:GetService("UserInputService")    if clickTpEnabled and input.UserInputType == Enum.UserInputType.MouseButton1 and UIS:IsKeyDown(Enum.KeyCode.LeftControl) then       local Char = Player.Character       if Char then          Char:MoveTo(Mouse.Hit.p)       end    end end
function walkSpeed(speed)    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speed      end
function teleportTo(player)        local localPlayer = game.Players.LocalPlayer    localPlayer.Character.HumanoidRootPart.CFrame = player.Character.HumanoidRootPart.CFrame      wait()        end
function infiniteJump()    task.spawn(function()        local character = game.Players.LocalPlayer.Character        local humanoid = character:FindFirstChild("Humanoid")        while true do            if not infiniteJumpEnabled then break end            if humanoid.Jump and humanoid.FloorMaterial == Enum.Material.Air then                humanoid.JumpPower = 50                humanoid:ChangeState("Jumping")            end            wait()        end    end)end
function getTycoonIndex()    for tycoonIndex = 1, 8 do        if tostring(game:GetService("Workspace").Tycoons[tycoonIndex].TycoonInfo.Owner.Value) == game.Players.LocalPlayer.Name then            return tycoonIndex        end    end    end
function autoCollect()    spawn(function()         local tycoonIndex = getTycoonIndex()        if not tycoonIndex then return end        while wait() do           if not autoCollectEnabled then break end            for i, item in pairs(game:GetService("Workspace").Tycoons[tycoonIndex].ItemDebris:GetChildren()) do                local args = {[1] = item}                game:GetService("ReplicatedStorage").RF.CollectItem:InvokeServer(unpack(args))            end        end    end)end
function autoBuy()    spawn(function()        while wait(0.5) do            if not autoBuyEnabled then break end            local tycoonIndex = getTycoonIndex()            if not tycoonIndex then return end            local character = game.Players.LocalPlayer.Character            local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")            local dropperButtons = game:GetService("Workspace").Tycoons[tycoonIndex].DropperButtons            local children = dropperButtons:GetChildren()            for i = #children, 1, -1 do                local dropperButton = children[i]                firetouchinterest(humanoidRootPart, dropperButton.Main, 0)                firetouchinterest(humanoidRootPart, dropperButton.Main, 1)            end            local speedUpgrades = game:GetService("Workspace").Tycoons[tycoonIndex].SpeedUpgrades            local children = speedUpgrades:GetChildren()            for i = #children, 1, -1 do                local dropperButton = children[i]                firetouchinterest(humanoidRootPart, dropperButton.Main, 0)                firetouchinterest(humanoidRootPart, dropperButton.Main, 1)           end        end    end)end
function autoSell()    spawn(function()        game:GetService("ReplicatedStorage").RF.EssentialFunction:InvokeServer("SettingsChange", {"Sound Effects"})        local character = game.Players.LocalPlayer.Character       local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")        while wait(0.5) do           if not autoSellEnabled then break end            local tycoonIndex = getTycoonIndex()            for i,v in pairs(game:GetService("Workspace").Tycoons[tycoonIndex].SellPad:GetChildren()) do                firetouchinterest(humanoidRootPart,  v, 0)                firetouchinterest(humanoidRootPart,  v, 1)            end        end    end)end
function autoObby()    spawn(function()       while wait(0.5) do            if not autoObbyEnabled then break end            local character = game.Players.LocalPlayer.Character            local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")            local obbyRewardButtons = game:GetService("Workspace").ObbyRewardButtons            for i, rewardButton in pairs(obbyRewardButtons:GetChildren()) do                firetouchinterest(humanoidRootPart, rewardButton, 0)                firetouchinterest(humanoidRootPart, rewardButton, 1)            end        end    end)end
--如果你看到了xgo的源码....嗯，你看到了我也没办法꒰ঌ ✝︎ ໒꒱ྀིˎˊ˗ 
--祝你有个美好的一天     ꒰ঌᐢ.ˬ.ᐢ໒꒱˚
--    ✞♡✞♡✞♡✞♡✞         𝗛𝗮𝗽𝗽𝘆 𝗗𝗮𝘆𝘀 • 更新💡 ​​​          xgo的留言❤️🇨🇳
local CoreGui = game:GetService("StarterGui")    --哈哈 xgo超无敌
--xgo--xgo--xgo--xgo--xgo--xgo--xgo--
CoreGui:SetCore("SendNotification", {    Title = "goto_O",    Text = "小go努力加载中..（启动反挂机系统）",    Duration = 6, })
-- ᘏ ⑅ ᘏ
--꒰ ⸝⸝ᴗ̤ ̫ ɞ̴̶̷⸝⸝꒱
--꒰ つ (i love x ) ഒ （xgo超可爱）
--　　∪ ∪ ♡̩
CoreGui:SetCore("SendNotification", {    Title = "goto脚本",    Text = "自动重进服务器系统已启动",    Duration = 7, })
--♡.꒰⑅:Why?xgo如此可愛らしい…   ✞🤍 ₓ 夢の終わり🤍‧₊˚。
CoreGui:SetCore("SendNotification", {    Title = "<(￣3￣)>哼！=☞盘他",    Text = "加载成功⸝ヽ(๏~๏)ﾉ",    Duration = 8, })
--𝑅𝑎𝑖𝑛 ☂︎ ⸝⸝⸝ 下雨天捕捉浪漫🌧不管阴天雨天🍥，🥂有好心情就是晴天🍹
print("xgo goto_O")
local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
wait(1)
vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
local vu = game:GetService("VirtualUser")
game:service"NetworkClient".ChildRemoved:Connect(function()
game:service"TeleportService":TeleportToPlaceInstance(game.PlaceId, game.JobId, game:service"Players".LocalPlayer);
end)
local LBLG = Instance.new("ScreenGui", getParent)
local LBL = Instance.new("TextLabel", getParent)
local player = game.Players.LocalPlayer
local CoreGui = game:GetService("StarterGui")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
LBLG.Name = "LBLG"
LBLG.Parent = game.CoreGui
LBLG.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
LBLG.Enabled = true
LBL.Name = "LBL"
LBL.Parent = LBLG
LBL.BackgroundColor3 = Color3.new(1, 1, 1)
LBL.BackgroundTransparency = 1
LBL.BorderColor3 = Color3.new(0, 0, 0)
LBL.Position = UDim2.new(0.75,0,0.010,0)
LBL.Size = UDim2.new(0, 133, 0, 30)
LBL.Font = Enum.Font.GothamSemibold
LBL.Text = "TextLabel"
LBL.TextColor3 = Color3.new(1, 1, 1)
LBL.TextScaled = true
LBL.TextSize = 14
LBL.TextWrapped = true
LBL.Visible = true
local FpsLabel = LBL
local Heartbeat = game:GetService("RunService").Heartbeat
local LastIteration, Start
local FrameUpdateTable = {}
local function HeartbeatUpdate()
	LastIteration = tick()
	for Index = #FrameUpdateTable, 1, -1 do
	FrameUpdateTable[Index + 1] = (FrameUpdateTable[Index] >= LastIteration - 1) and FrameUpdateTable[Index] or nil
end     FrameUpdateTable[1] = LastIteration
	local CurrentFPS = (tick() - Start >= 1 and #FrameUpdateTable) or (#FrameUpdateTable / (tick() - Start))
	CurrentFPS = CurrentFPS - CurrentFPS % 1
	FpsLabel.Text = ("时间"..os.date("%H").."时"..os.date("%M").."分"..os.date("%S").."秒")
end     Start = tick()  Heartbeat:Connect(HeartbeatUpdate)
local WazureV1 = loadstring(game:HttpGet("https://github.com/ErutTheTeru/uilibrary/blob/main/Wazure%20V1%20Lib/Source.lua?raw=true"))()
if not LPH_OBFUSCATED then 
    LPH_NO_VIRTUALIZE = function(...) return (...) end;
    LPH_JIT_MAX = function(...) return (...) end;
end
function getStudLength(target)
    if game.Players.LocalPlayer.Character and target then
        distanceInStuds = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - target.Position).Magnitude
    end
    return distanceInStuds    end
local function tw(input, studspersecond, offset, bypass)
       local distanceInStuds = 0
       if game.Players.LocalPlayer.Character and input and not bypass then
            pcall(function()
                distanceInStuds = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - input.Position).Magnitude
            end)        end  
        if distanceInStuds > 1000 then return end
local char = game:GetService("Players").LocalPlayer.Character;
local input = input or error("input is nil")
local studspersecond = studspersecond or 1000
local offset = offset or CFrame.new(0,0,0)
local vec3, cframe
if typeof(input) == "table" then
        vec3 = Vector3.new(unpack(input)); cframe = CFrame.new(unpack(input))
    elseif typeof(input) ~= "Instance" then
        return error("wrong format used")
    end;
    Time = (char.HumanoidRootPart.Position - (vec3 or input.Position)).magnitude/studspersecond
    local twn = game.TweenService:Create(char.HumanoidRootPart, TweenInfo.new(Time,Enum.EasingStyle.Linear), {CFrame = (cframe or input.CFrame) * offset})    --pcall(function() repeat game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true until game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored == true end)
    twn:Play()
    twn.Completed:Wait()    --pcall(function() repeat game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false until game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored == false end)
 end
_G.SendNotification = LPH_NO_VIRTUALIZE(function(title,text)
    OrionLib:MakeNotification({
        Name = tostring(title),
        Content = tostring(text),
        Image = "rbxassetid://4483345998",
        Time = 2 })    end)
function getYourDungeon()
    for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
        if v:FindFirstChild("VV") and v:FindFirstChild("VV").Value == game.Players.LocalPlayer.Name then
            return v
        end    end     end
if not game:GetService("Workspace"):FindFirstChild("a") then
    local a = Instance.new("Part",game:GetService("Workspace"))
    a.Size = Vector3.new(10,5,10)
    a.CFrame = (CFrame.new(-10958.4316, 103.607559, -17797.5742) * CFrame.new(0,20,0)) * CFrame.new(0,-7,0)
    a.Transparency = 0
    a.Anchored = true
    a.Name = "a"      end
function tpToDungeonEntrance()
    if not getYourDungeon() then
        if getStudLength(game:GetService("Workspace"):FindFirstChild("a")) > 100 and not getYourDungeon() and not _G.EnteringDungeon then
            repeat
                pcall(function()
                    if _G.Settings.Tween and not firetouchinterest then
                        tw(game:GetService("Workspace")[game.Players.LocalPlayer.Name.."'s Base"].DungeonTP.Focus, 20,CFrame.new(0,20,0))
                        task.wait(1)
                    elseif not firetouchinterest then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")[game.Players.LocalPlayer.Name.."'s Base"].DungeonTP.Focus.CFrame * CFrame.new(0,13,0)
                    end
                    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace")[game.Players.LocalPlayer.Name.."'s Base"].DungeonTP.Focus, 0)
                    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace")[game.Players.LocalPlayer.Name.."'s Base"].DungeonTP.Focus, 1)
                end)
                task.wait(1)
            until game:GetService("Workspace").Maps:FindFirstChild("Magma Hills") and game:GetService("Workspace").Maps["Magma Hills"].FortressDoor:FindFirstChild("Brick") and getStudLength(game:GetService("Workspace"):FindFirstChild("a")) < 100       end
        task.wait(1)
        if getStudLength(game:GetService("Workspace"):FindFirstChild("a")) < 100 and not getYourDungeon() and not _G.EnteringDungeon then
            pcall(function()
                if _G.Settings.Tween then
                    tw({-10958.4316, 103.607559, -17797.5742},10,CFrame.new(0,20,0))
 else               game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-10958.4316, 103.607559, -17797.5742) * CFrame.new(0,20,0)               end             end)        end    end     end
if not isfolder("XGO") then
    makefolder("XGO")  end
if not isfolder("XGO/"..game.Players.LocalPlayer.Name) then
    makefolder("XGO/"..game.Players.LocalPlayer.Name)  end 
function updateTotalGem()
    pcall(function()
        local j
        local HS = game:GetService("HttpService")
        if writefile then
            d = HS:JSONEncode(game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("MainGui"):WaitForChild("TopHolder"):WaitForChild("Gems"):WaitForChild("Price").Text:gsub(",",""))
            writefile("XGO/"..game.Players.LocalPlayer.Name.."/TotalGems.json",d)        end    end)    end
function updateTotalArtifacts()
    local artifacts = {}
    pcall(function()
        for i,v in ipairs(game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.MainGui.ArtifactMenu.Holder:GetChildren()) do
            if v:FindFirstChild("Amount") then  
                table.insert(artifacts,v.Amount.Text:split("x")[2])           end        end            end)
    pcall(function()
        local j
        local HS = game:GetService("HttpService")
        if writefile then
            d = HS:JSONEncode(artifacts)
            writefile("XGO/"..game.Players.LocalPlayer.Name.."/TotalArtifacts.json",d)       end    end)     end
local updJS = LPH_NO_VIRTUALIZE(function()
    local j
    local HS = game:GetService("HttpService")
    if writefile then
        d = HS:JSONEncode(_G.Settings)
        writefile("XGO/"..game.Players.LocalPlayer.Name.."/Settings.json",d)    end       end)
_G.Settings = {
    MobSwordNickname = "",
    BossSwordNickname = "",
    ChestSwordNickname = "",
    Delay = 0,
    WebhookLink = "",
    AutoDungeon = false,
    JoinDelay = 0,
    Tween = false,
    TweenSpeed = 80}
if readfile and isfile and isfile("XGO/"..game.Players.LocalPlayer.Name.."/Settings.json") then
    local HS = game:GetService("HttpService")
    _G.Settings = HS:JSONDecode(readfile("XGO/"..game.Players.LocalPlayer.Name.."/Settings.json"))  end
local Notify = WazureV1:Notify({	["Title"] = "加载完成",	["Content"] = "谢谢使用!",	["Logo"] = "rbxassetid://18289959127",	["Time"] = 0.5,	["Delay"] = 5})
local WazureGui = WazureV1:Start({	["Name"] = "X-goto_O (xxxxgo)",	["Logo Player"] = "rbxassetid://18243105495",	["Name Player"] = "ruteteru",	["Tab Width"] = 120,	["Color"] = Color3.fromRGB(6.000000117346644, 141.0000067949295, 234.00000125169754),	["Custom Toggle"] = false,	["Save Config"] = {		["Folder"] = "X-goto_O",		["Name Config"] = "Config"	},	["CloseCallBack"] = function()		WazureV1:Notify({			["Title"] = "脚本已关闭",			["Content"] = "点击按钮重新打开!",			["Logo"] = "rbxassetid://18289959127",			["Time"] = 0.5,			["Delay"] = 5		})	end})
local MainTab = WazureGui:MakeTab("信息")
local xgoTab = WazureGui:MakeTab("关于作者")
local xgo1Tab = WazureGui:MakeTab("小go音乐区")
local xgo2Tab = WazureGui:MakeTab("注入器及管理员")
local xgo3Tab = WazureGui:MakeTab("图像 画质")
local xgo4Tab = WazureGui:MakeTab("通用")
local xgo5Tab = WazureGui:MakeTab("通用2")
local xgo6Tab = WazureGui:MakeTab("小go音乐区")
local xgo7Tab = WazureGui:MakeTab("小go音乐区")
local xgo8Tab = WazureGui:MakeTab("小go音乐区")
local xgo9Tab = WazureGui:MakeTab("小go音乐区")
local xgo10Tab = WazureGui:MakeTab("小go音乐区")
local xgo11Tab = WazureGui:MakeTab("小go音乐区")
local xgo12Tab = WazureGui:MakeTab("小go音乐区")
local xgo13Tab = WazureGui:MakeTab("小go音乐区")
local xgo14Tab = WazureGui:MakeTab("小go音乐区")
local Seperator = MainTab:MakeSeperator("玩家信息")
local Label = MainTab:MakeLabel("小go为你查看账户年龄:          "..player.AccountAge.."天")
MainTab:MakeLabel("你的注入器:       "  ..identifyexecutor())
MainTab:MakeLabel("你的用户名:       " ..game.Players.LocalPlayer.Character.Name)
MainTab:MakeLabel("服务器的ID:       "  ..game.GameId)
MainTab:MakeLabel("人物血量:          "  ..game.Players.LocalPlayer.Character.Humanoid.Health)
MainTab:MakeLabel("人物跳跃:          " ..game.Players.LocalPlayer.Character.Humanoid.JumpPower)
MainTab:MakeLabel("人物速度:          "  ..game.Players.LocalPlayer.Character.Humanoid.WalkSpeed)
MainTab:MakeLabel("人物重力:          " ..game.Workspace.Gravity)
MainTab:MakeLabel("人物高度:          " ..game.Players.LocalPlayer.Character.Humanoid.HipHeight)
MainTab:MakeLabel("作者:xxxxgo")
MainTab:MakeLabel("随机更新或永久不更新")
MainTab:MakeLabel("获取客户端ID:"..game:GetService("RbxAnalyticsService"):GetClientId())
MainTab:MakeLabel("服务器名称:"..game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name)
MainTab:MakeLabel("==========《Q群:259461151》===========")
local Button = xgoTab:MakeButton("Button", {	["Title"] = "复制作者QQ",	["Content"] = "QQ:3795512080",	["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()		setclipboard("3795512080") local Notify = WazureV1:Notify({	["Title"] = "复制完成",	["Content"] = "消息回复慢!",	["Logo"] = "rbxassetid://18289959127",	["Time"] = 0.5,	["Delay"] = 5})	end})
local Button = xgoTab:MakeButton("Button", {	["Title"] = "复制QQ群",	["Content"] = "Q群:259461151",	["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()		setclipboard("259461151") local Notify = WazureV1:Notify({	["Title"] = "复制完成",	["Content"] = "欢迎加入,群号已添加至复制快捷栏!",	["Logo"] = "rbxassetid://18289959127",	["Time"] = 0.5,	["Delay"] = 5})	end})
local Seperator = xgoTab:MakeSeperator(             "〈三大安全函数〉")
local Seperator = xgoTab:MakeSeperator("如果要测试脚本，请开启一下三下避免直接被封禁（主要是由某人制作恶意封禁脚本）建议全开")
local Button = xgoTab:MakeButton("Button", {	["Title"] = "安全一",	["Content"] = "（生产）分支，禁止从其他脚本的更改值. 应该用于保护",	["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()   loadstring(game:HttpGet("https://raw.githubusercontent.com/GalacticHypernova/Guardian/main/MainProd"))() 	end})
local Seperator = xgoTab:MakeSeperator("仅适用于Codex用户!由于其发行与空闲连接（Codex）分支具有兼容性更新这相当于生产分支 ")
local Button = xgoTab:MakeButton("Button", {	["Title"] = "安全二",	["Content"] = "但没有基于连接的所有连接 并且只能由Codex用户使用,直到他们的问题得到解决",	["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()   loadstring(game:HttpGet("https://raw.githubusercontent.com/GalacticHypernova/Guardian/main/CodexTest"))() 	end})
local Button = xgoTab:MakeButton("Button", {	["Title"] = "安全三",	["Content"] = "（开发）分支，允许更改其他潜在恶意脚本的值 主要用于调试和测试",   ["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()		loadstring(game:HttpGet("https://raw.githubusercontent.com/GalacticHypernova/Guardian/main/Main"))()	end})
local Button = xgo1Tab:MakeButton("Button", {	["Title"] = "停止播放音乐（所有皆为xgo 一人收集）",	["Content"] = "停止所有开启的音乐",	   ["Logo"] = "rbxassetid://18923878915",	["Callback"] = function() for i,v in pairs(workspace:GetDescendants())    do			if v:IsA("Sound") then				v:Destroy()			end		end	end})
local Button = xgo1Tab:MakeButton("Button", {	["Title"] = "音乐播放器  xgo版本",	["Content"] ="音乐播放器输入自己的音乐代码播放音乐",	["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()   
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local CloseButton = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local BetaText = Instance.new("TextLabel")
local UICornerForClose = Instance.new("UICorner")
local TextBox = Instance.new("TextBox")
local PlayButton = Instance.new("TextButton")
local Sound = Instance.new("Sound")-- 将GUI到玩家的屏幕
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ResetOnSpawn = false-- 帧属性（主GUI窗口）
Frame.Size = UDim2.new(0, 300, 0, 100)
Frame.Position = UDim2.new(0.5, -150, 0.5, -100)
Frame.BackgroundColor3 = Color3.fromRGB(1, 1, 1)
Frame.Parent = ScreenGui
Frame.Active = true
Frame.Draggable = true  -- 使它拖累  -- UI角用于框架上的光滑边缘
UICorner.CornerRadius = UDim.new(0.1, 0)  -- 光滑的边缘
UICorner.Parent = Frame-- Close Button (a circle with 'X' in it)
CloseButton.Text = "X"
CloseButton.Size = UDim2.new(0, 40, 0, 40)
CloseButton.Position = UDim2.new(1, -45, 0, 5)  -- 位于右上角的位置
CloseButton.BackgroundColor3 = Color3.fromRGB(1, 0.5, 0)
CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.Parent = Frame
CloseButton.Font = Enum.Font.SourceSansBold
CloseButton.TextSize = 24-- ui角用于关闭按钮上的光滑边缘
UICornerForClose.CornerRadius = UDim.new(1, 0)  -- 完整的循环
UICornerForClose.Parent = CloseButton-- Beta通知的弹出文本标签
BetaText.Size = UDim2.new(0, 250, 0, 50)
BetaText.Position = UDim2.new(0.5, -125, 0.5, -25)
BetaText.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
BetaText.Text = "欢迎使用xgo;Q群 259461151 "
BetaText.TextColor3 = Color3.fromRGB(255, 255, 255)
BetaText.Font = Enum.Font.SourceSansBold
BetaText.TextSize = 18
BetaText.Parent = ScreenGui
BetaText.Visible = true-- ui角落在beta文本上的光滑边缘
local BetaTextCorner = Instance.new("UICorner")
BetaTextCorner.CornerRadius = UDim.new(0.1, 0)
BetaTextCorner.Parent = BetaText-- 在几秒钟后使beta文本消失
wait(3)
for i = 1, 50 do
    BetaText.TextTransparency = i / 50
    BetaText.BackgroundTransparency = i / 50
    wait(0.05) end
BetaText:Destroy()-- 关闭按钮功能
CloseButton.MouseButton1Click:Connect(function()
    Sound:Stop()  -- Stop the music when the GUI is closed
    ScreenGui:Destroy()end)-- 用于输入音乐ID的TextBox
TextBox.Size = UDim2.new(0, 200, 0, 40)
TextBox.Position = UDim2.new(0.5, -100, 0.3, -20)
TextBox.PlaceholderText = "输入歌曲ID"
TextBox.Text = ""
TextBox.Parent = Frame
TextBox.BackgroundColor3 = Color3.fromRGB(1, 1, 1)
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.Font = Enum.Font.SourceSans
TextBox.TextSize = 18-- 播放按钮
PlayButton.Size = UDim2.new(0, 100, 0, 40)
PlayButton.Position = UDim2.new(0.5, -50, 0.5, 20)
PlayButton.Text = "播放 xgo"
PlayButton.BackgroundColor3 = Color3.fromRGB(0, 170, 0)
PlayButton.TextColor3 = Color3.fromRGB(255, 255, 255)
PlayButton.Parent = Frame
PlayButton.Font = Enum.Font.SourceSansBold
PlayButton.TextSize = 18-- 创建声音对象
Sound.Parent = game.Workspace-- 播放按钮功能
PlayButton.MouseButton1Click:Connect(function()
    local musicId = tonumber(TextBox.Text)
    if musicId then
        Sound.SoundId = "rbxassetid://" .. musicId
        Sound:Play()
else    warn("xgo准备好音乐id，然后输入进去即可")end      end)   end})
local Button = xgo1Tab:MakeButton("Button", {	["Title"] = "音乐播放器    如果有好听的可以投稿",	["Content"] ="音乐播放器输入自己的音乐代码播放音乐",	["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()        loadstring(game:HttpGet("https://raw.githubusercontent.com/boyscp/beta/main/music.lua"))()   end})
local Seperator = xgo1Tab:MakeSeperator("小go提示: 嗯，这次更新后面会加上音乐id 前边的话我就不加了，太麻烦了")
local Seperator = xgo2Tab:MakeSeperator("注入器及管理员收藏 xxxxgo")
local Button = xgo2Tab:MakeButton("Button", {	["Title"]  ="阿尔宙斯",   ["Content"] ="二宙斯内置版",  ["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()  loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/chillz-workshop/main/Arceus%20X%20V3"))()    end})
local Button = xgo2Tab:MakeButton("Button", {	["Title"]  ="SOROLAZ BETTER SORALA注入器",      ["Content"] ="注入器",   ["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/PHNKSC/soralaz/refs/heads/main/better%20sorolaz"))()    end})
local Button = xgo2Tab:MakeButton("Button", {	["Title"]  ="管理员注入 暂时无法使用，可能会被踢出去",      ["Content"] ="注入器",   ["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()   loadstring(game:HttpGet(('https://raw.githubusercontent.com/iK4oS/backdoor.exe/master/source.lua'),true))()    end})
local Button = xgo2Tab:MakeButton("Button", {	["Title"]  ="xgo 普通执行",  ["Content"] ="注入器",   ["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()    loadstring(game:HttpGet(('https://raw.githubusercontent.com/GTAFAW/goto/refs/heads/main/xgo%20%E6%99%AE%E9%80%9A%E6%89%A7%E8%A1%8C%E5%99%A8')))()    end})
local Button = xgo2Tab:MakeButton("Button", {	["Title"]  ="管理员权限 可获得游戏内的通行证",      ["Content"] ="假的获取通行证",   ["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/lIlIlIlIlI24568/114514.IIjjjjiiiallloiia.xxxxg/refs/heads/main/%E5%B0%8Fgo%E6%B1%89%E5%8C%96%E7%AE%A1%E7%90%86%E5%91%98"))()   end})
local Button = xgo2Tab:MakeButton("Button", {	["Title"]  = "资源管理器",    ["Content"] ="管理员",   ["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()  loadstring(game:HttpGet("https://raw.githubusercontent.com/VateqS/MinionHub/refs/heads/main/solara_dex"))()   end})
local Button = xgo2Tab:MakeButton("Button", {	["Title"]  = "远程监控",	   ["Content"] ="管理员",   ["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()   loadstring(game:HttpGet("https://raw.githubusercontent.com/VateqS/MinionHub/refs/heads/main/remotespy_save"))()  end})
local Seperator = xgo3Tab:MakeSeperator("图像画质修改")
local Button = xgo3Tab:MakeButton("Button", {	["Title"]  ="美丽天空",    ["Content"] ="修改天空图像",   ["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()    local light = game.Lighting      for i, v in pairs(light:GetChildren()) do      v:Destroy()    end
local ter = workspace.Terrain
local color = Instance.new("ColorCorrectionEffect")
local bloom = Instance.new("BloomEffect")
local sun = Instance.new("SunRaysEffect")
local blur = Inst  end})
local Button = xgo3Tab:MakeButton("Button", {	["Title"]  = "光影（浅）",	 ["Content"] ="光影修改较浅",   ["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()      	loadstring(game:HttpGet("https://pastebin.com/raw/jHBfJYmS"))()  	end})
local Button = xgo3Tab:MakeButton("Button", {	["Title"]  ="光影菜单  小go推荐",     ["Content"] ="加载较慢，请稍等点击一下就行",   ["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()    loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-Shader-RTX-New-12425"))()    end})
local Button = xgo3Tab:MakeButton("Button", {	["Title"]  ="光影v2",     ["Content"] ="光影修改",   ["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()   loadstring(game:HttpGet("https://raw.githubusercontent.com/MZEEN2424/Graphics/main/Graphics.xml"))()    end})
local Button = xgo3Tab:MakeButton("Button", {	["Title"]  ="光影v4",     ["Content"] ="光影修改",   ["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()    loadstring(game:HttpGet('https://pastebin.com/raw/gUceVJig'))()   end})
local Button = xgo3Tab:MakeButton("Button", {	["Title"]  ="RTX  图形画质",     ["Content"] ="画质修改",   ["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()     local light = game.Lighting        for i, v in pairs(light:GetChildren()) do        v:Destroy()         end
local ter = workspace.Terrain
local color = Instance.new("ColorCorrectionEffect")
local bloom = Instance.new("BloomEffect")
local sun = Instance.new("SunRaysEffect")
local blur = Instance.new("BlurEffect")              color.Parent = light            bloom.Parent = light            sun.Parent = light           blur.Parent = light
local config = { Terrain = true,              ColorCorrection = true,               Sun = true,                Lighting = true,                BloomEffect = true  }
 --settings {
color.Enabled = false
color.Contrast = 0.15
color.Brightness = 0.1
color.Saturation = 0.25
color.TintColor = Color3.fromRGB(255, 222, 211)
bloom.Enabled = false
bloom.Intensity = 0.1
sun.Enabled = false
sun.Intensity = 0.2
sun.Spread = 1
bloom.Enabled = false
bloom.Intensity = 0.05
bloom.Size = 32
bloom.Threshold = 1
blur.Enabled = false
blur.Size = 6
--settings }
if config.ColorCorrection then
color.Enabled = true           end
if config.Sun then
sun.Enabled = true       end
if config.Terrain then
--settings {
ter.WaterWaveSize = 0.1
ter.WaterWaveSpeed = 22
ter.WaterTransparency = 0.9
ter.WaterReflectance = 0.05
--settings }
end
if config.Lighting then
-- settings {
light.Ambient = Color3.fromRGB(0, 0, 0)
light.Brightness = 4
light.ColorShift_Bottom = Color3.fromRGB(0, 0, 0)
light.ColorShift_Top = Color3.fromRGB(0, 0, 0)
light.ExposureCompensation = 0
light.FogColor = Color3.fromRGB(132, 132, 132)
light.GlobalShadows = true
light.OutdoorAmbient = Color3.fromRGB(112, 117, 128)
light.Outlines = false
--settings }
end
local a = game.Lighting
a.Ambient = Color3.fromRGB(33, 33, 33)
a.Brightness = 5.69
a.ColorShift_Bottom = Color3.fromRGB(0, 0, 0)
a.ColorShift_Top = Color3.fromRGB(255, 247, 237)
a.EnvironmentDiffuseScale = 0.105
a.EnvironmentSpecularScale = 0.522
a.GlobalShadows = true
a.OutdoorAmbient = Color3.fromRGB(51, 54, 67)
a.ShadowSoftness = 0.18
a.GeographicLatitude = -15.525
a.ExposureCompensation = 0.75
b.Enabled = true
b.Intensity = 0.99
b.Size = 9999
b.Threshold = 0
local c = Instance.new("ColorCorrectionEffect", a)
c.Brightness = 0.015
c.Contrast = 0.25
c.Enabled = true
c.Saturation = 0.2
c.TintColor = Color3.fromRGB(217, 145, 57)
if getgenv().mode == "Summer" then
c.TintColor = Color3.fromRGB(255, 220, 148)
elseif getgenv().mode == "Autumn" then
c.TintColor = Color3.fromRGB(217, 145, 57)
else
warn("没选择模式！  xgo")
print("请选择一种模式")
b:Destroy()
c:Destroy()
end
local d = Instance.new("DepthOfFieldEffect", a)
d.Enabled = true
d.FarIntensity = 0.077
d.FocusDistance = 21.54
d.InFocusRadius = 20.77
d.NearIntensity = 0.277
local e = Instance.new("ColorCorrectionEffect", a)
e.Brightness = 0
e.Contrast = -0.07
e.Saturation = 0
e.Enabled = true
e.TintColor = Color3.fromRGB(255, 247, 239)
local e2 = Instance.new("ColorCorrectionEffect", a)
e2.Brightness = 0.2
e2.Contrast = 0.45
e2.Saturation = -0.1
e2.Enabled = true
e2.TintColor = Color3.fromRGB(255, 255, 255)
local s = Instance.new("SunRaysEffect", a)
s.Enabled = true
s.Intensity = 0.01
s.Spread = 0.146
print("小go  RTX图形加载完毕!")    end})
local Button = xgo5Tab:MakeButton("Button", {	["Title"]  = "把玩家传送到高空",	 ["Content"] ="把玩家传送到高空进行自由落体",   ["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()    local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local rootPart = character:WaitForChild("HumanoidRootPart")
local function teleportAndFall()    rootPart.CFrame = rootPart.CFrame + Vector3.new(0, 800, 0)
local bodyVelocity = Instance.new("BodyVelocity")    bodyVelocity.Velocity = Vector3.new(0, -200, 0)    bodyVelocity.MaxForce = Vector3.new(0, math.huge, 0)   bodyVelocity.Parent = rootPart        wait(5)    bodyVelocity:Destroy()end        teleportAndFall() end})
local Button = xgo5Tab:MakeButton("Button", {	["Title"]  = "xgo制作幽灵状态 可能会掉血",	 ["Content"] ="幽灵状态进入后，别人不可见",   ["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()    local offset = 1100 
local LocalPlayer = game.Players.LocalPlayer
local Backpack = LocalPlayer.Backpack
local Character = LocalPlayer.Character
local invisible = false
local grips = {}
local heldTool
local gripChanged
local handle
local weld       function setDisplayDistance(distance)   for _,player in pairs(game.Players:GetPlayers()) do if player.Character and player.Character:FindFirstChildWhichIsA("Humanoid") then player.Character:FindFirstChildWhichIsA("Humanoid").NameDisplayDistance = distance player.Character:FindFirstChildWhichIsA("Humanoid").HealthDisplayDistance = distance end end     end
local tool = Instance.new("Tool", Backpack)   tool.Name = "xgo 幽灵状态可能会掉血"   tool.RequiresHandle = false     tool.CanBeDropped = false     tool.Equipped:Connect(function() wait()   
if not invisible then       invisible = true       tool.Name = "xgo 幽灵状态可能会掉血"
if handle then handle:Destroy() end if weld then weld:Destroy() end       handle = Instance.new("Part", workspace) handle.Name = "Handle" handle.Transparency = 1 handle.CanCollide = false handle.Size = Vector3.new(2, 1, 1)       weld = Instance.new("Weld", handle) weld.Part0 = handle weld.Part1 = Character.HumanoidRootPart weld.C0 = CFrame.new(0, offset-1.5, 0)       setDisplayDistance(offset+100)      workspace.CurrentCamera.CameraSubject = handle       Character.HumanoidRootPart.CFrame = Character.HumanoidRootPart.CFrame * CFrame.new(0, offset, 0)       Character.Humanoid.HipHeight = offset       Character.Humanoid:ChangeState(11)       for _,child in pairs(Backpack:GetChildren()) do if child:IsA("Tool") and child ~= tool then grips[child] = child.Grip end end   elseif invisible then       invisible = false       tool.Name = "xgo 幽灵状态可能会掉血"       if handle then handle:Destroy() end if weld then weld:Destroy() end       for _,child in pairs(Character:GetChildren()) do if child:IsA("Tool") then child.Parent = Backpack end end       for tool,grip in pairs(grips) do if tool then tool.Grip = grip end end       heldTool = nil       setDisplayDistance(100)       workspace.CurrentCamera.CameraSubject = Character.Humanoid       Character.Animate.Disabled = false       Character.HumanoidRootPart.CFrame = Character.HumanoidRootPart.CFrame * CFrame.new(0, -offset, 0)       Character.Humanoid.HipHeight = 0       Character.Humanoid:ChangeState(11)   end   tool.Parent = Backpack      end)   Character.ChildAdded:Connect(function(child) wait()
if invisible and child:IsA("Tool") and child ~= heldTool and child ~= tool then       heldTool = child
local lastGrip = heldTool.Grip
if not grips[heldTool] then grips[heldTool] = lastGrip end       for _,track in pairs(Character.Humanoid:GetPlayingAnimationTracks()) do track:Stop() end       Character.Animate.Disabled = true       heldTool.Grip = heldTool.Grip*(CFrame.new(0, offset-1.5, 1.5) * CFrame.Angles(math.rad(-90), 0, 0))       heldTool.Parent = Backpack       heldTool.Parent = Character
if gripChanged then gripChanged:Disconnect() end      gripChanged = heldTool:GetPropertyChangedSignal("Grip"):Connect(function() wait()
if not invisible then gripChanged:Disconnect() end
if heldTool.Grip ~= lastGrip then               lastGrip = heldTool.Grip*(CFrame.new(0, offset-1.5, 1.5) * CFrame.Angles(math.rad(-90), 0, 0))               heldTool.Grip = lastGrip               heldTool.Parent = Backpack               heldTool.Parent = Character           end       end)   end     end)  end})
local Button = xgo5Tab:MakeButton("Button", {	["Title"]  ="隐身（亲测有效）",	 ["Content"] ="隐身进入隐身玩家不可见",   ["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()      loadstring(game:HttpGet("https://pastebin.com/raw/3Rnd9rHf"))()      end})
local Button = xgo5Tab:MakeButton("Button", {	["Title"]  = "锁定视角人物可移动",	 ["Content"] ="将视角锁定",   ["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()    loadstring(game:HttpGet("https://pastebin.com/raw/6eVUiUnv"))()       end})
local Button = xgo5Tab:MakeButton("Button", {	["Title"]  = "玩家控制",	 ["Content"] ="可搭配所有射击游戏",   ["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/lIlIlIlIlI24568/114514.IIjjjjiiiallloiia.xxxxg/refs/heads/main/%E7%8E%A9%E5%AE%B6%E6%8E%A7%E5%88%B6"))()    end})
local Button = xgo5Tab:MakeButton("Button", {	["Title"]  = "小go超级无敌旋转",	 ["Content"] ="无敌旋转",   ["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()       loadstring(game:HttpGet("https://raw.githubusercontent.com/lIlIlIlIlI24568/114514.IIjjjjiiiallloiia.xxxxg/refs/heads/main/%E5%88%9D%E4%BB%A3%E6%B1%89%E5%8C%96%E7%94%A9%E9%A3%9E"))()      end})
local Button = xgo5Tab:MakeButton("Button", {	["Title"]  = "小go超级无敌旋转2.0",	 ["Content"] ="无敌旋转",   ["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()        loadstring(game:HttpGet("https://raw.githubusercontent.com/lIlIlIlIlI24568/114514.IIjjjjiiiallloiia.xxxxg/refs/heads/main/%E5%B0%8Fgo%E6%B1%89%E5%8C%96%E7%94%A9%E9%A3%9E"))()    end})
local Button = xgo5Tab:MakeButton("Button", {	["Title"]  = "一键脱衣（衬衫之类）",	 ["Content"] ="将衬衫之类的衣服脱下",   ["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()        local player = game.Players.LocalPlayer           local character = player.Character or player.CharacterAdded:Wait()       local function removeClothes()    for _, item in pairs(character:GetChildren()) do        if item:IsA("Shirt") or item:IsA("Pants") then          item:Destroy()        end    end    end     removeClothes()	end})
local Button = xgo5Tab:MakeButton("Button", {	["Title"]  = "xgo一键脱衣2.0",	 ["Content"] ="将除衬衫以外，衣服脱下，R6有效果",   ["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()   local plr = game.Players.LocalPlayer;
local chr = plr.Character;
local hum = chr.Humanoid;
local mov = {};
local mov2 = {};coroutine.resume(coroutine.create(function()	settings().Physics.AllowSleep = false;	game.RunService.RenderStepped:Connect(function()		for i, v in pairs(game.Players:GetPlayers()) do			if v ~= plr then				v.MaximumSimulationRadius = 0.1;				v.SimulationRadius = 0;   else				v.MaximumSimulationRadius = math.pow(math.huge, math.huge);				v.SimulationRadius = math.pow(math.huge, 2);			end		end	end)    end))   function ftp(str)
local pt = {};    if str ~= 'me' and str ~= 'random' then        for i, v in pairs(game.Players:GetPlayers()) do           if v.Name:lower():find(str:lower()) then                table.insert(pt, v);            end        end    elseif str == 'me' then        table.insert(pt, plr);	elseif str == 'random' then		table.insert(pt, game.Players:GetPlayers()[math.random(1, #game.Players:GetPlayers())]);    end    return pt;  end      for _, v in pairs(hum:GetAccessories()) do
local b = v.Handle;	b.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0);	b.CanCollide = false;	b:BreakJoints();	for _, k in pairs(v:GetChildren()) do		if not k:IsA'SpecialMesh' and not k:IsA'Part' then			k:Destroy();		end	end
local still = Instance.new('BodyAngularVelocity', b);	still.MaxTorque = Vector3.new(math.huge, math.huge, math.huge);	still.AngularVelocity = Vector3.new(0, 0, 0);
local align = Instance.new('AlignPosition', b);	align.MaxForce = 1000000;	align.MaxVelocity = math.huge;	align.RigidityEnabled = false;	align.ApplyAtCenterOfMass = true;	align.Responsiveness = 200;
local a0 = Instance.new('Attachment', b);
local a1 = Instance.new('Attachment', chr.Head);	align.Attachment0 = a0;	align.Attachment1 = a1;	table.insert(mov, a1);	table.insert(mov2, still);  end
local par = {};    for _, v in pairs(mov) do
local parr = Instance.new('Part', workspace);	parr.Anchored = true;	parr.Size = Vector3.new(1, 1, 1);	parr.Transparency = 1;	parr.CanCollide = false;	table.insert(par, parr);  end
local rotx = 0;
local rotz = math.pi / 2;
local height = 0;
local heighti = 1;
local offset = 10;
local speed = 0.5;
local mode = 4;
local angular = Vector3.new(0, 0, 0);
local l = 1;  game['Run Service'].RenderStepped:Connect(function()	rotx = rotx + speed / 100;	rotz = rotz + speed / 100;	l = (l >= 360 and 1 or l + speed);
for i, v in pairs(par) do		v.CFrame = CFrame.new(chr.HumanoidRootPart.Position) * CFrame.fromEulerAnglesXYZ(0, math.rad(l + (360 / #par) * i + speed), 0) * CFrame.new(offset, 0, 0);	end	if heighti == 1 then		height = height + speed / 100;	elseif heighti == 2 then		height = height - speed / 100;	end	if height > 2 then		heighti = 2;	end	if height < -1 then		heighti = 1;	end	if mode == 1 then
for _, v in pairs(mov) do			v.Position = Vector3.new(math.sin(rotx) * offset, 0, math.sin(rotz) * offset);		end	elseif mode == 2 then
for _, v in pairs(mov) do			v.Position = Vector3.new(offset, height, offset);		end	elseif mode == 3 then
for _, v in pairs(mov) do			v.Position = Vector3.new(math.sin(rotx) * offset, height, math.sin(rotz) * offset);		end	elseif mode == 4 then
for i, v in pairs(mov) do			v.Position = Vector3.new(chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).X, chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).Y, chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).Z);		end	elseif mode == 5 then
for i, v in pairs(mov) do			v.Position = Vector3.new((math.sin(rotx)) * offset, height, (math.cos(rotz) - i) * offset);		end	elseif mode == 6 then
for i, v in pairs(mov) do			v.Position = Vector3.new((math.sin(rotx)) * offset, height, (math.tan(rotz) - i) * offset);		end	elseif mode == 7 then
for i, v in pairs(mov) do			v.Position = Vector3.new(math.cos(rotx * i) * offset, 0, math.cos(rotz * i) * offset);		end	elseif mode == 8 then
for i, v in pairs(mov) do			v.Position = Vector3.new(math.sin(rotx) * i * offset, 0, math.sin(rotz) * i * offset);		end	elseif mode == 9 then		pcall(function()
local so = nil;			for k, b in pairs(chr:GetChildren()) do				if b:IsA'Tool' then					for h, j in pairs(b:GetDescendants()) do						if j:IsA'Sound' then							so = j;						end					end				end			end			if so ~= nil then				offset = so.PlaybackLoudness / 35;				speed = so.PlaybackLoudness / 500;				angular = Vector3.new(0, so.PlaybackLoudness / 75, 0);			end		end)
for i, v in pairs(mov) do			v.Position = Vector3.new(chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).X, chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).Y, chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).Z);		end	elseif mode == 10 then		offset = height * 15;
for i, v in pairs(mov) do			v.Position = Vector3.new(chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).X, chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).Y, chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).Z);		end	elseif mode == 11 then		
for i, v in pairs(mov) do			v.Position = Vector3.new(chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(plr:GetMouse().Hit.p)).X, chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(plr:GetMouse().Hit.p)).Y, chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(plr:GetMouse().Hit.p)).Z) + Vector3.new(chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).X, chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).Y, chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).Z);		end	end
for _, v in pairs(mov2) do		v.AngularVelocity = angular;	end     end)   game.Players.LocalPlayer.Chatted:Connect(function(c)	if c:split(' ')[1] == '.orbit' then
for _, v in pairs(mov) do			chr = ftp(c:split(' ')[2])[1].Character;			v.Parent = ftp(c:split(' ')[2])[1].Character.HumanoidRootPart;		end	end	if c:split(' ')[1] == '.speed' then		speed = tonumber(c:split(' ')[2]);	end	if c:split(' ')[1] == '.mode' then		mode = tonumber(c:split(' ')[2]);	end	if c:split(' ')[1] == '.offset' then		offset = tonumber(c:split(' ')[2]);	end	if c:split(' ')[1] == '.angular' then		angular = Vector3.new(tonumber(c:split(' ')[2]), tonumber(c:split(' ')[3]), tonumber(c:split(' ')[4]));	end     end)
for i,v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do    if v:IsA("BasePart") and v.Name ~="HumanoidRootPart" then     game:GetService("RunService").Heartbeat:connect(function()    v.Velocity = Vector3.new(-30,0,0)    end)    end    endgame:GetService("StarterGui"):SetCore("SendNotification", {         Title = "xgo 一键脱衣2.0";        Text = "警视觉效果";       Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"})    Duration = 16;   end})
local Button = xgo5Tab:MakeButton("Button", {	["Title"]  ="鼠标（手机非常不建议用）",	 ["Content"] ="鼠标应用脚本错误时使用",   ["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()        loadstring(game:HttpGet(('https://pastefy.ga/V75mqzaz/raw'),true))()	end})
local Button = xgo5Tab:MakeButton("Button", {	["Title"]  ="锁定视角 摄像机",     ["Content"] ="可以将视角锁定人物可移动",   ["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()     loadstring(game:HttpGet("https://raw.githubusercontent.com/lIlIlIlIlI24568/114514.IIjjjjiiiallloiia.xxxxg/refs/heads/main/%E9%94%81%E5%AE%9A%E8%A7%86%E8%A7%92"))()  end})
local Button = xgo5Tab:MakeButton("Button", {	["Title"]  ="小go 在外网找的几个道具",     ["Content"] ="外网的几个道具",   ["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()      loadstring(game:HttpGet("https://gist.githubusercontent.com/dark-modz/b04e28198c8eeb1408921a1560792152/raw/67739a2bc571093976e6cd7e51fb526dedd75861/tools",true))()  end})
local Button = xgo5Tab:MakeButton("Button", {	["Title"]  ="聊天绘画图",     ["Content"] ="在聊天上绘画",   ["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()     loadstring(game:HttpGet("https://raw.githubusercontent.com/lIlIlIlIlI24568/143628lllkaiiiiiwggv.panmn.lua/refs/heads/main/xz"))()  end})
local Button = xgo5Tab:MakeButton("Button", {	["Title"]  ="死亡笔记",     ["Content"] ="死亡笔记",   ["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/GTAFAW/goto/refs/heads/main/%E6%AD%BB%E4%BA%A1%E7%AC%94%E8%AE%B0"))()  end})
local Button = xgo5Tab:MakeButton("Button", {	["Title"]  ="娱乐特效",     ["Content"] ="局内改特效",   ["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()     loadstring(game:HttpGet("https://raw.githubusercontent.com/GTAFAW/xgoizlx/refs/heads/main/ui"))()  end}) 
local Button = xgo5Tab:MakeButton("Button", {	["Title"]  = "漂浮控制器",   ["Content"] ="教程（手机需要键盘）:1. J-飞起来    2. K-回到手中",   ["Logo"] = "rbxassetid://18923878915",	["Callback"] = function() local options = {	CaptureAtMagnitude = 5,    	EquipToolOnCapture = true,    	ToolFloatBackSpeed = 500,    	ToolFloatBackResponsiveness = 20,    	HotKeys = {		Release = Enum.KeyCode.J,        	Capture = Enum.KeyCode.K	}         }
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local PLAYER = Players.LocalPlayer
local CHARACTER = PLAYER.Character or PLAYER.CharacterAdded:Wait()
local BACKPACK = PLAYER.Backpack
local HUMANOID_ROOT_PART = CHARACTER:WaitForChild("HumanoidRootPart")
local vA = {}
local function FolderToolParts(pA)
local tvA = Instance.new("Folder")    	tvA.Parent = pA    	for lvA, lvB in next, pA:GetChildren() do        	if lvB:IsA("BasePart") then            		lvB.Parent = tvA        	end  	end		return tvA    end
local function FindFirstTool()	for lvA, lvB in next, CHARACTER:GetDescendants() do        	if lvB:IsA("Tool") and lvB:FindFirstChildOfClass("Part") then            		return lvB        	end	end		for lvA, lvB in next, BACKPACK:GetDescendants() do        	if lvB:IsA("Tool") and lvB:FindFirstChildOfClass("Part") then            		return lvB        	end    	end    	return nil    end
local function Release(pA)
local tvA = FolderToolParts(pA)    	if #tvA:GetChildren() > 0 then        	for lvA, lvB in next, tvA:GetDescendants() do            		if lvB:IsA("BasePart") then                		lvB.CanCollide = true
local tvB = Instance.new("BodyForce")                		tvB.Force = Vector3.new(0, lvB:GetMass() * workspace.Gravity, 0)                		tvB.Parent = lvB            		end       	end        	tvA.Parent = workspace		        	table.insert(vA, {tvA, pA})	end      end
local function Capture(pA)	if pA and pA[1] and pA[2] then
local tvA = pA[1]:GetChildren()        	for lvA, lvB in next, tvA do			lvB.CanCollide = false        	end
local tvB = Instance.new("Attachment")        	tvB.Parent = tvA[1]
local tvC = Instance.new("Attachment")        	tvC.Position = Vector3.new(0, 0, -4)        	tvC.Parent = HUMANOID_ROOT_PART
local tvD = Instance.new("AlignPosition")        	tvD.RigidityEnabled = false        	tvD.Responsiveness = options.ToolFloatBackResponsiveness        	tvD.MaxVelocity = options.ToolFloatBackSpeed        	tvD.MaxForce = options.ToolFloatBackSpeed       	tvD.Attachment0 = tvB        	tvD.Attachment1 = tvC        	tvD.Parent = tvA[1]        	repeat			wait()		until (tvA[1].Position - HUMANOID_ROOT_PART.Position).Magnitude < options.CaptureAtMagnitude        	for lvA, lvB in next, pA[1]:GetChildren() do
local tvE = lvB:FindFirstChildOfClass("BodyForce")                        		if tvE then                		tvE:Destroy()            		end            		lvB.Parent = pA[2]        	end      	tvB:Destroy()        	tvC:Destroy()       	tvD:Destroy()        	pA[1]:Destroy()       	pA[2].Parent = options.EquipToolOnCapture and CHARACTER or BACKPACK        	return true	end		return false    endUserInputService.InputBegan:Connect(function(pA, pB)	if pB == false and pA.UserInputType == Enum.UserInputType.Keyboard then        	if pA.KeyCode == options.HotKeys.Release then
local tvA = FindFirstTool()			if tvA then				if tvA.Parent ~= CHARACTER then					tvA.Parent = CHARACTER					wait(0.5)				end				Release(tvA)			end		elseif pA.KeyCode == options.HotKeys.Capture then            		if #vA > 0 and Capture(vA[#vA]) then                		table.remove(vA, #vA)            		end        	end	end    end)settings().Physics.AllowSleep = false        sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius", math.huge)  end})
local Button = xgo5Tab:MakeButton("Button", {	["Title"]  = "道具控制器",   ["Content"] ="教程（手机需要键盘）:","1. Q - 靠近   2. E - 离远   3. Y - 投掷   4. J - 超级投掷   5. U - 使物体自转   6. P - 使物体悬浮在空中   7. X - 走得更远一点   8. L - 使方块变直并锁定在前部",   ["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()   local sandbox = function(var,func)
local env = getfenv(func)
local newenv = setmetatable({},{		__index = function(self,k)			if k=="script" then				return var	else		return env[k]			end		end,	})	setfenv(func,newenv)	return func       end     cors = {}
local _Name = "物体道具控制"
local uis = game:GetService("UserInputService")
local _Ins, _CF_new, _VTR_new = Instance.new, CFrame.new, Vector3.new
mas = _Ins("Model",game:GetService("Lighting"))
Tool0 = _Ins("Tool")
Part1 = _Ins("Part")
Script2 = _Ins("Script")
LocalScript3 = _Ins("LocalScript")
Tool0.Name = _Name
Tool0.Parent = mas
Tool0.Grip = _CF_new(0, 0, 1, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Tool0.GripPos = _VTR_new(0, 0, 1)
Part1.Name = "Handle"
Part1.Parent = Tool0
Part1.CFrame = _CF_new(-3.5, 5.30000019, -3.5, 1, 0, 0, 0, -1, 0, 0, 0, -1)
Part1.Orientation = _VTR_new(0, 180, 180)
Part1.Position = _VTR_new(-3.5, 5.300000190734863, -3.5)
Part1.Rotation = _VTR_new(-180, 0, 0)
Part1.Color = Color3.new(0.972549, 0.972549, 0.972549)
Part1.Transparency = 1
Part1.Size = _VTR_new(1, 1, 1)
Part1.BottomSurface = Enum.SurfaceType.Smooth
Part1.BrickColor = BrickColor.new("Institutional white")
Part1.Locked = true
Part1.TopSurface = Enum.SurfaceType.Smooth
Part1.brickColor = BrickColor.new("Institutional white")Script2.Name = "LineConnect" Script2.Parent = Tool0
local Sound = _Ins("Sound", game.Workspace)Sound.SoundId = "rbxassetid://1092093337"   Sound:Play()   table.insert(cors,sandbox(Script2,function()	wait()
local check = script.Part2
local part1 = script.Part1.Value
local part2 = script.Part2.Value
local parent = script.Par.Value
local color = script.Color
local line = _Ins("Part")	line.TopSurface = 0	line.BottomSurface = 0	line.Reflectance = .5	line.Name = "Laser"	line.Locked = true	line.CanCollide = false	line.Anchored = true	line.formFactor = 0	line.Size = _VTR_new(1,1,1)
local mesh = _Ins("BlockMesh")	mesh.Parent = line	while true do		if (check.Value==nil) then break end		if (part1==nil or part2==nil or parent==nil) then break end		if (part1.Parent==nil or part2.Parent==nil) then break end		if (parent.Parent==nil) then break end
local lv = _CF_new(part1.Position,part2.Position)
local dist = (part1.Position-part2.Position).magnitude		line.Parent = parent		line.BrickColor = color.Value.BrickColor		line.Reflectance = color.Value.Reflectance		line.Transparency = color.Value.Transparency		line.CFrame = _CF_new(part1.Position+lv.lookVector*dist/2)		line.CFrame = _CF_new(line.Position,part2.Position)		mesh.Scale = _VTR_new(.25,.25,dist)		wait()	end	line:remove()	script:remove()   end))
Script2.Disabled = true
LocalScript3.Name = "MainScript"
LocalScript3.Parent = Tool0
table.insert(cors,sandbox(LocalScript3,function()
	wait() 
	tool = script.Parent
	lineconnect = tool.LineConnect
	object = nil
	mousedown = false
	found = false
	BP = _Ins("BodyPosition")
	BP.maxForce = _VTR_new(math.huge*math.huge,math.huge*math.huge,math.huge*math.huge) --pwns everyone elses bodyposition
	BP.P = BP.P*3
	dist = nil
	point = _Ins("Part")
	point.Locked = true
	point.Anchored = true
	point.formFactor = 0
	point.Shape = 0
	point.BrickColor = BrickColor.Blue() 
	point.Size = _VTR_new(1,1,1)
	point.CanCollide = false
local mesh = _Ins("SpecialMesh")	mesh.MeshType = "Sphere"	mesh.Scale = _VTR_new(.7,.7,.7)	mesh.Parent = point	handle = tool.Handle	front = tool.Handle	color = tool.Handle	objval = nil
local hooked = false 
local hookBP = BP:clone() 	hookBP.maxForce = _VTR_new(30000,30000,30000) 	function LineConnect(part1,part2,parent)
local p1 = _Ins("ObjectValue")		p1.Value = part1		p1.Name = "Part1"
local p2 = _Ins("ObjectValue")		p2.Value = part2		p2.Name = "Part2"
local par = _Ins("ObjectValue")		par.Value = parent		par.Name = "Par"
local col = _Ins("ObjectValue")		col.Value = color		col.Name = "Color"
local s = lineconnect:clone()		s.Disabled = false		p1.Parent = s		p2.Parent = s		par.Parent = s		col.Parent = s		s.Parent = workspace		if (part2==object) then			objval = p2		end	end	function onButton1Down(mouse)		if (mousedown==true) then return end		mousedown = true		coroutine.resume(coroutine.create(function()
local p = point:clone()			p.Parent = tool			LineConnect(front,p,workspace)			while (mousedown==true) do				p.Parent = tool				if (object==nil) then					if (mouse.Target==nil) then
local lv = _CF_new(front.Position,mouse.Hit.p)						p.CFrame = _CF_new(front.Position+(lv.lookVector*1000))	else     				p.CFrame = _CF_new(mouse.Hit.p)					end	else             		LineConnect(front,object,workspace)					break				end				wait()			end			p:remove()		end))		while (mousedown==true) do			if (mouse.Target~=nil) then
local t = mouse.Target				if (t.Anchored==false) then					object = t					dist = (object.Position-front.Position).magnitude					break				end			end			wait()		end		while (mousedown==true) do			if (object.Parent==nil) then break end
local lv = _CF_new(front.Position,mouse.Hit.p)			BP.Parent = object			BP.position = front.Position+lv.lookVector*dist			wait()		end		BP:remove()		object = nil		objval.Value = nil	end	function onKeyDown(key,mouse) 
local key = key:lower() 
local yesh = false 
if (key=="q") then 			if (dist>=5) then 			dist = dist-5 			end 		end
if (key=="u") then 
if (dist ~=1) then 
BX = _Ins("BodyGyro")
BX.MaxTorque = _VTR_new(math.huge,0,math.huge)
BX.CFrame = BX.CFrame * CFrame.Angles(0, math.rad(45), 0)
BX.D = 0
BX.Parent = object							end 		end 
if (key=="p") then 			if (dist ~=1) then
BX = _Ins("BodyVelocity")
BX.maxForce = _VTR_new(0,math.huge,0)
BX.velocity = _VTR_new(0,1,0)				--BX.CFrame = BX.CFrame * CFrame.Angles(0, math.rad(45), 0)
BX.Parent = object			end 		end 
if key == "l" then 			if (object==nil) then return end 			for _,v in pairs(object:children()) do 				if v.className == "BodyGyro" then 					return nil 				end 		end 
BG = _Ins("BodyGyro") 
BG.maxTorque = _VTR_new(math.huge,math.huge,math.huge) 
BG.cframe = _CF_new(object.CFrame.p) 
BG.Parent = object 			repeat wait() until(object.CFrame == _CF_new(object.CFrame.p))
BG.Parent = nil 
if (object==nil) then return end 			for _,v in pairs(object:children()) do 				if v.className == "BodyGyro" then 					v.Parent = nil 				end 			end 			object.Velocity = _VTR_new(0,0,0) 			object.RotVelocity = _VTR_new(0,0,0) 		end 
if (key=="y") then 			if (dist ~=100) then 				dist = 100 			end 		end 
if (key=="j") then 			if (dist~=5000) then 				dist = 5000 			end 		end
if (key=="e") then			dist = dist+5		end
if (key=="x") then 			if dist ~= 15 then 				dist = 15 end 		end 	end		function onEquipped(mouse)		keymouse = mouse
local char = tool.Parent		human = char.Humanoid		human.Changed:connect(function() if (human.Health==0) then mousedown = false BP:remove() point:remove() tool:remove() end end)		mouse.Button1Down:connect(function() onButton1Down(mouse) end)		mouse.KeyDown:connect(function(key) onKeyDown(key,mouse) end)		mouse.Icon = "rbxasset://textures\\GunCursor.png"		if uis.TouchEnabled then			uis.TouchEnded:Connect(function() mousedown = false end)  else     		mouse.Button1Up:connect(function() mousedown = false end)		end	end	tool.Equipped:connect(onEquipped)	tool.Unequipped:connect(function() mousedown = false end) end))      for i,v in pairs(mas:GetChildren()) do	v.Parent = game:GetService("Players").LocalPlayer.Backpack	pcall(function() v:MakeJoints() end)    end     mas:Destroy()     for i,v in pairs(cors) do	spawn(function()		pcall(v)end)     end  end})






loadstring(game:HttpGet("https://github.com/GTAFAW/goto/blob/main/xgohubFuent.lua?raw=true?raw=true"))()
loadsetting("X-goto_O", "Config", WazureGui)
