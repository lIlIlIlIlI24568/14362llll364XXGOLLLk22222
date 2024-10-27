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
local xgo3Tab = WazureGui:MakeTab("小go音乐区")
local xgo4Tab = WazureGui:MakeTab("小go音乐区")
local xgo5Tab = WazureGui:MakeTab("小go音乐区")
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
local Button = xgo1Tab:MakeButton("Button", {	["Title"] = "Direct & Park Avenue - I'll Go 挺好听的",	["Content"] ="音乐id:5410081298",	["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()     local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://5410081298"    sound.Parent = game.Workspace    sound:Play()    end})
local Button = xgo1Tab:MakeButton("Button", {	["Title"] = "Rogue - Motion",	["Content"] ="音乐id:7028557220",	["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://7028557220"    sound.Parent = game.Workspace    sound:Play()    end})
local Button = xgo1Tab:MakeButton("Button", {	["Title"] = "Rome in Silver & Beach Season - Skin 和上一首一样，都挺好听的",	["Content"] ="音乐id:7028570258",	["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()      local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://7028570258"   sound.Parent = game.Workspace    sound:Play()    end})
local Button = xgo1Tab:MakeButton("Button", {	["Title"] = "轻微吧（节奏）   男版",	["Content"] ="音乐id:7023690024",	["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()      local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://7023690024"    sound.Parent = game.Workspace    sound:Play()    end})
local Button = xgo1Tab:MakeButton("Button", {	["Title"] = "轻松",	["Content"] ="音乐id:1836842889",	["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()        local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1837871067"    sound.Parent = game.Workspace    sound:Play()    end})
local Button = xgo1Tab:MakeButton("Button", {	["Title"] = "轻松2",	["Content"] ="音乐id:1837849285",	["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()        local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1837849285"    sound.Parent = game.Workspace    sound:Play()    end})
local Button = xgo1Tab:MakeButton("Button", {	["Title"] = "轻松3",	["Content"] ="音乐id:1837871067",	["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()            local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1836842889"    sound.Parent = game.Workspace    sound:Play()    end})
local Button = xgo1Tab:MakeButton("Button", {	["Title"] = "Pixel Terror & Aviella - Enigma  女版",	["Content"] ="音乐id:5410084645",	["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()      local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://5410084645"    sound.Parent = game.Workspace    sound:Play()    end})
local Button = xgo1Tab:MakeButton("Button", {	["Title"] = "Grant - Color  女版",	["Content"] ="音乐id:7023828725",	["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()         local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://7023828725"    sound.Parent = game.Workspace    sound:Play()    end})
local Button = xgo1Tab:MakeButton("Button", {	["Title"] = "Til the Morning (a)女版",	["Content"] ="音乐id:1840041842",	["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()          local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1840041842"    sound.Parent = game.Workspace    sound:Play()    end})
local Button = xgo1Tab:MakeButton("Button", {	["Title"] = "轻松7   女版",	["Content"] ="音乐id:1847606454",	["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()         local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1847606454"    sound.Parent = game.Workspace    sound:Play()    end})
local Button = xgo1Tab:MakeButton("Button", {	["Title"] = "嗯，挺好听的，不知道叫啥   女版",	["Content"] ="音乐id:7023741506",	["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()         local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://7023741506"    sound.Parent = game.Workspace    sound:Play()    end})
local Button = xgo1Tab:MakeButton("Button", {	["Title"] = "住宅区",	["Content"] ="音乐id:1845554017",	["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()        local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1845554017"    sound.Parent = game.Workspace    sound:Play()    end})
local Button = xgo1Tab:MakeButton("Button", {	["Title"] = "轻松8",	["Content"] ="音乐id:1839721437",	["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()       local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1839721437"    sound.Parent = game.Workspace    sound:Play()    end})
local Seperator = xgo1Tab:MakeSeperator("Dj🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️要音乐id，可以联系我🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️")
local Button = xgo1Tab:MakeButton("Button", {	["Title"] = "Play Theme 节奏",	["Content"] ="音乐id:1847661821",	["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()           local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1847661821"    sound.Parent = game.Workspace    sound:Play()    end})
local Button = xgo1Tab:MakeButton("Button", {	["Title"] = "jumpstyle 节奏感很强",	["Content"] ="音乐id:1839246711",	["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()           local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1839246711"    sound.Parent = game.Workspace    sound:Play()    end})
local Button = xgo1Tab:MakeButton("Button", {	["Title"] = "Autotuned Dancing Roach  不知道怎么形容这电音",	["Content"] ="音乐id:4050095124",	["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()           local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://4050095124"    sound.Parent = game.Workspace   sound:Play()    end})
local Button = xgo1Tab:MakeButton("Button", {	["Title"] = "Dj",	["Content"] ="音乐id:1843497734",	["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()           local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1843497734"    sound.Parent = game.Workspace    sound:Play()    end})
local Button = xgo1Tab:MakeButton("Button", {	["Title"] = "Dj2",	["Content"] ="音乐id:7028977687",	["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()          local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://7028977687 "    sound.Parent = game.Workspace    sound:Play()    end})
local Button = xgo1Tab:MakeButton("Button", {	["Title"] = "Dj3",	["Content"] ="音乐id:1836594449",	["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()         local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1836594449"    sound.Parent = game.Workspace    sound:Play()    end})
local Button = xgo1Tab:MakeButton("Button", {	["Title"] = "Dj4",	["Content"] ="音乐id:792323017",	["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()          local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://792323017"    sound.Parent = game.Workspace    sound:Play()    end})
local Button = xgo1Tab:MakeButton("Button", {	["Title"] = "机器人舞蹈C ",	["Content"] ="音乐id:1847853099",	["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()          local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1847853099"    sound.Parent = game.Workspace    sound:Play()    end})
local Button = xgo1Tab:MakeButton("Button", {	["Title"] = "Dj5",	["Content"] ="音乐id:1842940193",	["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()          local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1842940193"    sound.Parent = game.Workspace    sound:Play()    end})
local Button = xgo1Tab:MakeButton("Button", {	["Title"] = "Robotic Dance A",	["Content"] ="音乐id:1837853076",	["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()           local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1837853076"    sound.Parent = game.Workspace    sound:Play()    end})
local Button = xgo1Tab:MakeButton("Button", {	["Title"] = "Parry Gripp - Pancake Robot",	["Content"] ="音乐id:9245558138",	["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()           local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://9245558138"    sound.Parent = game.Workspace    sound:Play()    end})
local Button = xgo1Tab:MakeButton("Button", {	["Title"] = "dj8",	["Content"] ="音乐id:1837434037",	["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()          local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1837434037"    sound.Parent = game.Workspace    sound:Play()    end})
local Button = xgo1Tab:MakeButton("Button", {	["Title"] = "dj9",	["Content"] ="音乐id:1839037193",	["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()          local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1839037193"    sound.Parent = game.Workspace    sound:Play()    end})
local Button = xgo1Tab:MakeButton("Button", {	["Title"] = "dj10",	["Content"] ="音乐id:1837560230",	["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()           local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1837560230"    sound.Parent = game.Workspace    sound:Play()    end})
local Button = xgo1Tab:MakeButton("Button", {	["Title"] = "dj11",	["Content"] ="音乐id:1842908121",  	["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()          local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1842908121"    sound.Parent = game.Workspace    sound:Play()    end})
local Button = xgo1Tab:MakeButton("Button", {	["Title"] = "dj12",	["Content"] ="音乐id:9042493127",	["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()           local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://9042493127"    sound.Parent = game.Workspace    sound:Play()    end})
local Button = xgo1Tab:MakeButton("Button", {	["Title"] = "dj13",	["Content"] ="音乐id:1839246774",	["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()           local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1839246774"    sound.Parent = game.Workspace    sound:Play()    end})
local Button = xgo1Tab:MakeButton("Button", {	["Title"] = "dj14",	["Content"] ="音乐id:1842940253",	["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()           local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1842940253"    sound.Parent = game.Workspace    sound:Play()    end})
local Button = xgo1Tab:MakeButton("Button", {	["Title"] = "dj15",	["Content"] ="音乐id:9041933055",	["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()           local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://9041933055"    sound.Parent = game.Workspace    sound:Play()    end})
local Button = xgo1Tab:MakeButton("Button", {	["Title"] = "dj16",	["Content"] ="音乐id:5410086218",	["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()           local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://5410086218"    sound.Parent = game.Workspace    sound:Play()    end})
local Button = xgo1Tab:MakeButton("Button", {	["Title"] = "dj17",	["Content"] ="音乐id:1839703786",	["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()           local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1839703786"    sound.Parent = game.Workspace    sound:Play()    end})
local Button = xgo1Tab:MakeButton("Button", {	["Title"] = "dj18",	["Content"] ="音乐id:1838627720",	["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()          local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1838627720"    sound.Parent = game.Workspace    sound:Play()    end})
local Button = xgo1Tab:MakeButton("Button", {	["Title"] = "dj19",	["Content"] ="音乐id:5410085763",	["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()           local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://5410085763"    sound.Parent = game.Workspace    sound:Play()    end})
local Button = xgo1Tab:MakeButton("Button", {	["Title"] = "dj20",	["Content"] ="音乐id:1839898469",	["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()           local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1839898469"    sound.Parent = game.Workspace    sound:Play()    end})
local Button = xgo1Tab:MakeButton("Button", {	["Title"] = "dj21",	["Content"] ="音乐id:1848213471",	["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()           local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1848213471"    sound.Parent = game.Workspace    sound:Play()    end})
local Button = xgo1Tab:MakeButton("Button", {	["Title"] = "dj22",	["Content"] ="音乐id:5410080771",	["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()           local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://5410080771"    sound.Parent = game.Workspace    sound:Play()    end})
local Button = xgo1Tab:MakeButton("Button", {	["Title"] = "dj23",	["Content"] ="音乐id:1837843720",	["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()           local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1837843720"    sound.Parent = game.Workspace    sound:Play()    end})
local Button = xgo1Tab:MakeButton("Button", {	["Title"] = "dj24",	["Content"] ="音乐id:1842802012",	["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()           local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1842802012"    sound.Parent = game.Workspace    sound:Play()   end})
local Button = xgo1Tab:MakeButton("Button", {	["Title"] = "dj25",	["Content"] ="音乐id:1846863084",	["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()           local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1846863084"    sound.Parent = game.Workspace    sound:Play()    end})
local Button = xgo1Tab:MakeButton("Button", {	["Title"] = "dj26",	["Content"] ="音乐id:1842802498",	["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()           local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1842802498"    sound.Parent = game.Workspace    sound:Play()    end})
local Button = xgo1Tab:MakeButton("Button", {	["Title"] = "dj27",	["Content"] ="音乐id:1838075732",	["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()           local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1838075732"    sound.Parent = game.Workspace    sound:Play()    end})
local Button = xgo1Tab:MakeButton("Button", {	["Title"] = "dj28",	["Content"] ="音乐id:5410083226",	["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()           local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://5410083226"    sound.Parent = game.Workspace    sound:Play()    end})
local Button = xgo1Tab:MakeButton("Button", {	["Title"] = "dj29",	["Content"] ="音乐id:792323017",	["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()           local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://792323017"    sound.Parent = game.Workspace    sound:Play()    end})
local Button = xgo1Tab:MakeButton("Button", {	["Title"] = "dj30",	["Content"] ="音乐id:7028913008",	["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()           local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://7028913008"    sound.Parent = game.Workspace    sound:Play()    end})
local Button = xgo1Tab:MakeButton("Button", {	["Title"] = "dj31",	["Content"] ="音乐id:9042616023",	["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()           local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://9042616023"    sound.Parent = game.Workspace    sound:Play()    end})
local Button = xgo1Tab:MakeButton("Button", {	["Title"] = "dj32",	["Content"] ="音乐id:1847799916",  	["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()         local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1847799916"    sound.Parent = game.Workspace    sound:Play()    end})
local Button = xgo1Tab:MakeButton("Button", {	["Title"] = "Rip the Guts Out",	["Content"] ="音乐id:1837814958",	["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()          local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1837814958"    sound.Parent = game.Workspace    sound:Play()    end})
local Button = xgo1Tab:MakeButton("Button", {	["Title"] = "Pixel Terror - Machina",	["Content"] ="音乐id:5410080475",	["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()           local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://5410080475"    sound.Parent = game.Workspace    sound:Play()    end})
local Button = xgo1Tab:MakeButton("Button", {	["Title"] = "We Go Hard",	["Content"] ="音乐id:1842940420",	["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()          local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1842940420"    sound.Parent = game.Workspace    sound:Play()    end})
local Button = xgo1Tab:MakeButton("Button", {	["Title"] = "Fight Or Flight",	["Content"] ="音乐id:1842940300",	["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()           local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1842940300"    sound.Parent = game.Workspace    sound:Play()    end})
local Button = xgo1Tab:MakeButton("Button", {	["Title"] = "Alarm",	["Content"] ="音乐id:1845080313",	["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()           local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1845080313"    sound.Parent = game.Workspace    sound:Play()    end})
local Button = xgo1Tab:MakeButton("Button", {	["Title"] = "Parry Gripp - Last Train to Awesome Town",	["Content"] ="音乐id:9245554658",	["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()          local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://9245554658"    sound.Parent = game.Workspace    sound:Play()    end})
local Button = xgo1Tab:MakeButton("Button", {	["Title"] = "Uproar",	["Content"] ="音乐id:1842934837",	["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()           local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1842934837"    sound.Parent = game.Workspace    sound:Play()    end})
local Button = xgo1Tab:MakeButton("Button", {	["Title"] = "The Will To Fight A",	["Content"] ="音乐id:1845793864",	["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()           local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1845793864"    sound.Parent = game.Workspace    sound:Play()    end})
local Button = xgo1Tab:MakeButton("Button", {	["Title"] = "Mindwinder (a)",	["Content"] ="音乐id:1838075377",	["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()          local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1838075377"    sound.Parent = game.Workspace    sound:Play()    end})
local Button = xgo1Tab:MakeButton("Button", {	["Title"] = "FWLR - Hot",	["Content"] ="音乐id:5410082534",	["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()          local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://5410082534"    sound.Parent = game.Workspace    sound:Play()    end})
local Button = xgo1Tab:MakeButton("Button", {	["Title"] = "Noisestorm - Escape",	["Content"] ="音乐id:5410082879",	["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()           local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://5410082879"    sound.Parent = game.Workspace    sound:Play()    end})
local Button = xgo1Tab:MakeButton("Button", {	["Title"] = "Skull Crusher",	["Content"] ="音乐id:1842558494",	["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()           local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1842558494"    sound.Parent = game.Workspace    sound:Play()    end})
local Button = xgo1Tab:MakeButton("Button", {	["Title"] = "dj45",	["Content"] ="音乐id:9041932892",	["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()           local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://9041932892"    sound.Parent = game.Workspace    sound:Play()    end})
local Button = xgo1Tab:MakeButton("Button", {	["Title"] = "Heist",	["Content"] ="音乐id:1836782065",	["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()           local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1836782065"    sound.Parent = game.Workspace    sound:Play()    end})
local Seperator = xgo1Tab:MakeSeperator("休闲安逸🕊️🕊️🕊️🕊️嗯，更新这个音乐系统的话，我也不知道具体什么时间🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️") 
local Button = xgo1Tab:MakeButton("Button", {	["Title"]  ="城镇谈话",     ["Content"] ="音乐id:1845756489",  ["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()  local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1845756489"    sound.Parent = game.Workspace    sound:Play()    end})
local Button = xgo1Tab:MakeButton("Button", {  ["Title"]  ="快乐的歌",     ["Content"] ="音乐id:1843404009",  ["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()  local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1843404009"    sound.Parent = game.Workspace    sound:Play()    end})
local Button = xgo1Tab:MakeButton("Button", {	["Title"]  ="一起战斗吗",     ["Content"] ="音乐id:1843324336",  ["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()  local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1843324336"    sound.Parent = game.Workspace    sound:Play()    end})
local Button = xgo1Tab:MakeButton("Button", {	["Title"]  ="高保真冷柜A",     ["Content"] ="音乐id:9043887091",  ["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()  local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://9043887091"    sound.Parent = game.Workspace    sound:Play()    end})
local Button = xgo1Tab:MakeButton("Button", {	["Title"]  ="轻松的场景",     ["Content"] ="音乐id:1848354536",  ["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()  local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1848354536"    sound.Parent = game.Workspace    sound:Play()    end})
local Button = xgo1Tab:MakeButton("Button", {	["Title"]  ="在监狱里生活",     ["Content"] ="音乐id:1841647093", ["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()  local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1841647093"    sound.Parent = game.Workspace    sound:Play()    end})
local Button = xgo1Tab:MakeButton("Button", {	["Title"]  ="不再",     ["Content"] ="音乐id:1846458016",   ["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()   local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1846458016"    sound.Parent = game.Workspace    sound:Play()    end})
local Button = xgo1Tab:MakeButton("Button", {	["Title"]  ="Cute Story",     ["Content"] ="音乐id:1839755231",   ["Logo"] = "rbxassetid://18923878915",	["Callback"] = function() local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1839755231"    sound.Parent = game.Workspace    sound:Play()    end})
local Button = xgo1Tab:MakeButton("Button", {	["Title"]  ="快乐一点的",     ["Content"] ="音乐id:9039445224",  ["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()  local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://9039445224"    sound.Parent = game.Workspace    sound:Play()    end})
local Button = xgo1Tab:MakeButton("Button", {	["Title"]  ="Swing it",     ["Content"] ="音乐id:1843313385",  ["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()  local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1843313385"    sound.Parent = game.Workspace    sound:Play()    end})
local Button = xgo1Tab:MakeButton("Button", {	["Title"]  ="Police 打鼓伴奏",     ["Content"] ="音乐id:1842981634", ["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()  local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1842981634"    sound.Parent = game.Workspace    sound:Play()    end})
local Button = xgo1Tab:MakeButton("Button", {	["Title"]  ="睡眠歌曲 Baby Song",     ["Content"] ="音乐id:1838998127",  ["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()  local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1838998127"    sound.Parent = game.Workspace    sound:Play()    end})
local Button = xgo1Tab:MakeButton("Button", {	["Title"]  ="义勇军进行曲",     ["Content"] ="音乐id:1845918434",  ["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()  local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1845918434"    sound.Parent = game.Workspace    sound:Play()    end})
local Button = xgo1Tab:MakeButton("Button", {	["Title"]  ="彩虹瀑布",    ["Content"] ="音乐id:1837879082",   ["Logo"] = "rbxassetid://18923878915",	["Callback"] = function() local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1837879082"    sound.Parent = game.Workspace    sound:Play()    end})
local Seperator = xgo1Tab:MakeSeperator("整蛊语音🕊️还有一些梗🕊️🕊️🕊️xgo找这些好辛苦的🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️🕊️")
local Button = xgo1Tab:MakeButton("Button", {	["Title"]  ="第1次听吓我一跳",     ["Content"] ="音乐id:7795812961",   ["Logo"] = "rbxassetid://18923878915",	["Callback"] = function() local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://7795812961"    sound.Parent = game.Workspace    sound:Play()    end})
local Button = xgo1Tab:MakeButton("Button", {	["Title"]  ="我跌倒了,爬不起来",     ["Content"] ="音乐id:130768088",  ["Logo"] = "rbxassetid://18923878915",	["Callback"] = function() local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://130768088"    sound.Parent = game.Workspace    sound:Play()    end})
local Button = xgo1Tab:MakeButton("Button", {	["Title"]  ="胜利的声音",     ["Content"] ="音乐id:12222253",  ["Logo"] = "rbxassetid://18923878915",	["Callback"] = function() local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://12222253"    sound.Parent = game.Workspace    sound:Play()    end})
local Button = xgo1Tab:MakeButton("Button", {	["Title"]  ="死亡的声音",     ["Content"] ="音乐id:12222242",  ["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()  local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://12222242"    sound.Parent = game.Workspace    sound:Play()    end})
local Button = xgo1Tab:MakeButton("Button", {	["Title"]  ="当你在minecraft中死去",     ["Content"] ="音乐id:2607544190",  ["Logo"] = "rbxassetid://18923878915",	["Callback"] = function() local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://2607544190"    sound.Parent = game.Workspace    sound:Play()    end})
local Button = xgo1Tab:MakeButton("Button", {	["Title"]  ="悲伤的小提琴",     ["Content"] ="音乐id:135308045",   ["Logo"] = "rbxassetid://18923878915",	["Callback"] = function() local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://135308045"    sound.Parent = game.Workspace    sound:Play()    end})
local Button = xgo1Tab:MakeButton("Button", {	["Title"]  ="喂我!",     ["Content"] ="音乐id:130766856",  ["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()  local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://130766856"    sound.Parent = game.Workspace    sound:Play()    end})
local Button = xgo1Tab:MakeButton("Button", {	["Title"]  ="Minions - Bee Doo Bee Doo Bee Doo（130844390）",     ["Content"] ="音乐id:130844390", ["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()   local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://130844390"    sound.Parent = game.Workspace    sound:Play()    end})
local Button = xgo1Tab:MakeButton("Button", {	["Title"]  ="你在我的沼泽做什么!",     ["Content"] ="音乐id:130767645",   ["Logo"] = "rbxassetid://18923878915",	["Callback"] = function() local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://130767645"    sound.Parent = game.Workspace    sound:Play()    end})
local Button = xgo1Tab:MakeButton("Button", {	["Title"]  ="你是斯巴达",     ["Content"] ="音乐id:130781067",  ["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()  local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://130781067"    sound.Parent = game.Workspace    sound:Play()    end})
local Button = xgo1Tab:MakeButton("Button", {	["Title"]  ="那是我的钱包",     ["Content"] ="音乐id:130760834",  ["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()  local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://130760834"    sound.Parent = game.Workspace    sound:Play()    end})
local Button = xgo1Tab:MakeButton("Button", {	["Title"]  ="孩子说哎哟哇",     ["Content"] ="音乐id:12222058",  ["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()  local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://12222058"    sound.Parent = game.Workspace    sound:Play()    end})
local Button = xgo1Tab:MakeButton("Button", {	["Title"]  =" Oh my god",     ["Content"] ="音乐id:1841647093",  ["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()  local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1841647093"    sound.Parent = game.Workspace    sound:Play()    end})
local Button = xgo1Tab:MakeButton("Button", {	["Title"]  ="我是蝙蝠侠",     ["Content"] ="音乐id:130769318", ["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()   local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://130769318"    sound.Parent = game.Workspace    sound:Play()    end})
local Button = xgo1Tab:MakeButton("Button", {	["Title"]  ="约翰的笑声",     ["Content"] ="音乐id:130759239",  ["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()  local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://130759239"    sound.Parent = game.Workspace    sound:Play()    end})
local Button = xgo1Tab:MakeButton("Button", {	["Title"]  ="他是免费的",     ["Content"] ="音乐id:130771265", ["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()   local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://130771265"    sound.Parent = game.Workspace    sound:Play()    end})
local Button = xgo1Tab:MakeButton("Button", {	["Title"]  ="李·罗伊·詹金斯",     ["Content"] ="音乐id:130758889", ["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()   local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://130758889"    sound.Parent = game.Workspace    sound:Play()    end})
local Button = xgo1Tab:MakeButton("Button", {	["Title"]  ="防空警报",     ["Content"] ="音乐id:792323017",  ["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()  local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://792323017"    sound.Parent = game.Workspace    sound:Play()    end}) 
local Button = xgo2Tab:MakeButton("Button", {	["Title"]  ="阿尔宙斯",   ["Content"] ="二宙斯内置版",  ["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()  loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/chillz-workshop/main/Arceus%20X%20V3"))()    end})
local Button = xgo2Tab:MakeButton("Button", {	["Title"]  ="SOROLAZ BETTER SORALA注入器",      ["Content"] ="注入器",   ["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/PHNKSC/soralaz/refs/heads/main/better%20sorolaz"))()    end})
local Button = xgo2Tab:MakeButton("Button", {	["Title"]  ="管理员注入 暂时无法使用，可能会被踢出去",      ["Content"] ="注入器",   ["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()   loadstring(game:HttpGet(('https://raw.githubusercontent.com/iK4oS/backdoor.exe/master/source.lua'),true))()    end})
local Button = xgo2Tab:MakeButton("Button", {	["Title"]  ="xgo 普通执行",  ["Content"] ="注入器",   ["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()    loadstring(game:HttpGet(('https://raw.githubusercontent.com/GTAFAW/goto/refs/heads/main/xgo%20%E6%99%AE%E9%80%9A%E6%89%A7%E8%A1%8C%E5%99%A8')))()    end})
local Button = xgo2Tab:MakeButton("Button", {	["Title"]  ="管理员权限 可获得游戏内的通行证",      ["Content"] ="假的获取通行证",   ["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/lIlIlIlIlI24568/114514.IIjjjjiiiallloiia.xxxxg/refs/heads/main/%E5%B0%8Fgo%E6%B1%89%E5%8C%96%E7%AE%A1%E7%90%86%E5%91%98"))()   end})
local Button = xgo2Tab:MakeButton("Button", {	["Title"]  = "资源管理器",    ["Content"] ="管理员",   ["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()  loadstring(game:HttpGet("https://raw.githubusercontent.com/VateqS/MinionHub/refs/heads/main/solara_dex"))()   end})
local Button = xgo2Tab:MakeButton("Button", {	["Title"]  = "远程监控",	   ["Content"] ="管理员",   ["Logo"] = "rbxassetid://18923878915",	["Callback"] = function()   loadstring(game:HttpGet("https://raw.githubusercontent.com/VateqS/MinionHub/refs/heads/main/remotespy_save"))()  end})
local TextInput = MainTab:MakeTextInput("Text Input", {
	["Title"] = "Webhook",
	["Content"] = "Enter your webhook here",
	["Callback"] = function(Value)
		print(Value)
	end
})
local Toggle = MainTab:MakeToggle("Toggle", {
	["Title"]= "Toggle",
	["Content"] = "This is a Toggle",
	["Default"] = false,
	["Callback"] = function(Value) 
		print(Value)
	end
})
local ToggleSetting = Toggle:AddSetting()
local SettingToggle = ToggleSetting:Toggle("Setting Toggle", {
	["Name"] = "Toggle",
	["Default"] = false,
	["Callback"] = function(Value)
		print(Value)
	end
})
local SliderSetting = ToggleSetting:Slider("Setting Slider", {
	["Name"] = "Slider",
	["Min"] = 0,
	["Max"] = 100,
	["Increment"] = 1,
	["Default"] = 30,
	["Callback"] = function(Value)
		print(Value)
	end
})
local Slider = MainTab:MakeSlider("Slider", {
	["Title"] = "Slider",
	["Content"] = "This is a Slider",
	["Min"] = 0,
	["Max"] = 100,
	["Increment"] = 1,
	["Default"] = 30,
	["Callback"] = function(Value) 
		print(Value)
	end
})
local Dropdown = MainTab:MakeDropdown("Dropdown", {
	["Title"] = "Dropdown",
	["Content"] = "This is a dropdown",
	["Multi"] = false,
	["Options"] = {"Option 1", "Option 2"},
	["Default"] = {"Option 1"},
	["Callback"] = function(Value)
		print(Value)
	end
})
local MultiDropdown = MainTab:MakeDropdown("Multi Dropdown", {
	["Title"] = "Multi Dropdown",
	["Content"] = "This is a multi dropdown",
	["Multi"] = true,
	["Options"] = {"Option 1", "Option 2"},
	["Default"] = {"Option 1"},
	["Callback"] = function(Value)
		print(Value)
	end
})
loadstring(game:HttpGet("https://github.com/GTAFAW/goto/blob/main/xgohubFuent.lua?raw=true?raw=true"))()
loadsetting("X-goto_O", "Config", WazureGui)