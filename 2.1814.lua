local xxxgoui = loadstring(game:HttpGet("https://raw.githubusercontent.com/lIlIlIlIlI24568/9757.lllllIIIIjjjjjiiilll.UI/refs/heads/main/V3.5.lua"))()
local Notify = xxxgoui:Notify({	Title = "xgo Hub",	["Description"] = "- goto_O R's 2.1581版",	["Color"] = Color3.fromRGB(255, 0, 255),	Content = "欢迎宝宝回家 xgo Hub",	["Time"] = 1,	["Delay"] = 10})
local sitinkgui = xxxgoui:Start({    ["Name"] = "xgo Hub",    ["Description"] = "- goto_O R's 2.1581版",    ["Info Color"] = Color3.fromRGB(1, 1, 1),    ["Logo Info"] = "rbxassetid://18923878915",    ["Logo Player"] = "rbxassetid://18923878915",    ["Name Info"] = "xgo Hub Info",    ["Name Player"] = "xgo",    ["Info Description"] = "作者:xxxxgo 群聊:259461151",    ["Tab Width"] = 135,    ["Color"] = Color3.fromRGB(255, 0, 255),    ["CloseCallBack"] = function() end})
local MainTab = sitinkgui:MakeTab("x-信息")
local MusicTab = sitinkgui:MakeTab("x-音乐")
local AdministratorTab = sitinkgui:MakeTab("x-管理员")
local PicturequalityTab = sitinkgui:MakeTab("x-图像画质")
local UniversalTab = sitinkgui:MakeTab("x-通用")
local PlayerTab = sitinkgui:MakeTab("x-玩家")
local BlackholeTab = sitinkgui:MakeTab("x-黑洞")
local TalkTab = sitinkgui:MakeTab("x-聊天中枢")
local SelfishTab = sitinkgui:MakeTab("x-自瞄透视")
local PropsTab = sitinkgui:MakeTab("x-道具Fe")
local HorrorTab = sitinkgui:MakeTab("x-游戏-恐怖")
local WarTab = sitinkgui:MakeTab("x-游戏-战争")
local RNGTab = sitinkgui:MakeTab("x-游戏-RNG")
local Section = MainTab:Section({    Title = "X-玩家信息",    Content = "窃取你的所有信息"})
Section:Seperator("你的注入器:       "  ..identifyexecutor())
Section:Seperator("你的用户名:       " ..game.Players.LocalPlayer.Character.Name)
Section:Seperator("服务器的ID:       "  ..game.GameId)
Section:Seperator("人物血量:          "  ..game.Players.LocalPlayer.Character.Humanoid.Health)
Section:Seperator("人物跳跃:          " ..game.Players.LocalPlayer.Character.Humanoid.JumpPower)
Section:Seperator("人物速度:          "  ..game.Players.LocalPlayer.Character.Humanoid.WalkSpeed)
Section:Seperator("人物重力:          " ..game.Workspace.Gravity)
Section:Seperator("人物高度:          " ..game.Players.LocalPlayer.Character.Humanoid.HipHeight)
Section:Seperator("作者:xxxxgo")
Section:Seperator("随机更新或永久不更新")
Section:Seperator("获取客户端ID:"..game:GetService("RbxAnalyticsService"):GetClientId())
Section:Seperator("服务器名称:"..game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name)
Section:Seperator("==========《Q群:259461151》===========")
local Section = MainTab:Section({    Title = "X-作者信息",    Content = "xxxxgo信息和安全意识"})
Section:Seperator("xxxgo 和安全三函数")
Section:Button({	Title = "复制作者QQ",	Content = "QQ:3795512080",		Callback = function()		setclipboard("3795512080") local Notify = xxxgoui:Notify({	Title = "xgo Hub",	["Description"] = "- goto_O R's 2.1581版",	["Color"] = Color3.fromRGB(255, 0, 255),	Content = "欢迎 消息回复慢或者不回",	["Time"] = 1,	["Delay"] = 10}) end})
Section:Button({	Title = "复制QQ群",	Content = "Q群:259461151",	Callback = function()		setclipboard("259461151") local Notify = xxxgoui:Notify({	Title = "xgo Hub",	["Description"] = "- goto_O R's 2.1581版",	["Color"] = Color3.fromRGB(255, 0, 255),	Content = "欢迎宝宝回家 随机回复，比私聊快",	["Time"] = 1,	["Delay"] = 10})	end})
local Seperator = Section:Seperator(             "〈三大安全函数〉")
local Seperator = Section:Seperator("如果要测试脚本，请开启一下三下避免直接被封禁（主要是由某人制作恶意封禁脚本）建议全开")
Section:Button({	Title = "安全一",	Content = "（生产）分支，禁止从其他脚本的更改值. 应该用于保护",	Callback = function()   loadstring(game:HttpGet("https://raw.githubusercontent.com/GalacticHypernova/Guardian/main/MainProd"))() 	end})
local Seperator = Section:Seperator("仅适用于Codex用户!由于其发行与空闲连接（Codex）分支具有兼容性更新这相当于生产分支 ")
Section:Button({	Title = "安全二",	Content = "但没有基于连接的所有连接 并且只能由Codex用户使用,直到他们的问题得到解决",	Callback = function()   loadstring(game:HttpGet("https://raw.githubusercontent.com/GalacticHypernova/Guardian/main/CodexTest"))() 	end})
Section:Button({	Title = "安全三",	Content = "（开发）分支，允许更改其他潜在恶意脚本的值 主要用于调试和测试",  Callback = function()		loadstring(game:HttpGet("https://raw.githubusercontent.com/GalacticHypernova/Guardian/main/Main"))()	end})
local Section = MusicTab:Section({    Title = "x-音乐播放器",    Content = "小go未收集到你的音乐,你可以使用音乐播放器来播放"})
Section:Button({	Title = "音乐播放器  xgo版本",	Content ="音乐播放器输入自己的音乐代码播放音乐",	Callback = function() loadstring(game:HttpGet("https://pastebin.com/raw/cR1zvfH1"))()  end})
Section:Button({	Title = "音乐播放器    如果有好听的可以投稿",	Content ="音乐播放器输入自己的音乐代码播放音乐",	Callback = function()        loadstring(game:HttpGet("https://raw.githubusercontent.com/boyscp/beta/main/music.lua"))()   end})
local Seperator = Section:Seperator("小go提示: 嗯，这次更新后面会加上音乐id 前边的话我就不加了，太麻烦了")
local Section = MusicTab:Section({    Title = "x-音乐收藏家",    Content = "收集了70多种音乐"})
Section:Button({	Title = "停止播放音乐（所有皆为xgo 一人收集）",	Content = "停止所有开启的音乐",	   	Callback = function() for i,v in pairs(workspace:GetDescendants())    do			if v:IsA("Sound") then				v:Destroy()			end		end	end})
Section:Button({	Title = "Direct & Park Avenue - I'll Go 挺好听的",	Content ="音乐id:5410081298",	 	Callback = function()     local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://5410081298"    sound.Parent = game.Workspace    sound:Play()    end})
Section:Button({	Title = "Rogue - Motion",	Content ="音乐id:7028557220",	 	Callback = function()    local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://7028557220"    sound.Parent = game.Workspace    sound:Play()    end})
Section:Button({	Title = "Rome in Silver & Beach Season - Skin 和上一首一样，都挺好听的",	Content ="音乐id:7028570258",	 	Callback = function()      local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://7028570258"   sound.Parent = game.Workspace    sound:Play()    end})
Section:Button({	Title = "轻微吧（节奏）   男版",	Content ="音乐id:7023690024",	 	Callback = function()      local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://7023690024"    sound.Parent = game.Workspace    sound:Play()    end})
Section:Button({	Title = "轻松",	Content ="音乐id:1836842889",	 	Callback = function()        local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1837871067"    sound.Parent = game.Workspace    sound:Play()    end})
Section:Button({	Title = "轻松2",	Content ="音乐id:1837849285",	 	Callback = function()        local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1837849285"    sound.Parent = game.Workspace    sound:Play()    end})
Section:Button({	Title = "轻松3",	Content ="音乐id:1837871067",	 	Callback = function()            local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1836842889"    sound.Parent = game.Workspace    sound:Play()    end})
Section:Button({	Title = "Pixel Terror & Aviella - Enigma  女版",	Content ="音乐id:5410084645",	 	Callback = function()      local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://5410084645"    sound.Parent = game.Workspace    sound:Play()    end})
Section:Button({	Title = "Grant - Color  女版",	Content ="音乐id:7023828725",	 	Callback = function()         local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://7023828725"    sound.Parent = game.Workspace    sound:Play()    end})
Section:Button({	Title = "Til the Morning (a)女版",	Content ="音乐id:1840041842",	 	Callback = function()          local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1840041842"    sound.Parent = game.Workspace    sound:Play()    end})
Section:Button({	Title = "轻松7   女版",	Content ="音乐id:1847606454",	 	Callback = function()         local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1847606454"    sound.Parent = game.Workspace    sound:Play()    end})
Section:Button({	Title = "嗯，挺好听的，不知道叫啥   女版",	Content ="音乐id:7023741506",	 	Callback = function()         local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://7023741506"    sound.Parent = game.Workspace    sound:Play()    end})
Section:Button({	Title = "住宅区",	Content ="音乐id:1845554017",	 	Callback = function()        local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1845554017"    sound.Parent = game.Workspace    sound:Play()    end})
Section:Button({	Title = "轻松8",	Content ="音乐id:1839721437",	 	Callback = function()       local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1839721437"    sound.Parent = game.Workspace    sound:Play()    end})
local Seperator = Section:Seperator("Dj要音乐id，可以联系我")
Section:Button({	Title = "Play Theme 节奏",	Content ="音乐id:1847661821",	 	Callback = function()           local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1847661821"    sound.Parent = game.Workspace    sound:Play()    end})
Section:Button({	Title = "jumpstyle 节奏感很强",	Content ="音乐id:1839246711",	 	Callback = function()           local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1839246711"    sound.Parent = game.Workspace    sound:Play()    end})
Section:Button({	Title = "Autotuned Dancing Roach  不知道怎么形容这电音",	Content ="音乐id:4050095124",	 	Callback = function()           local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://4050095124"    sound.Parent = game.Workspace   sound:Play()    end})
Section:Button({	Title = "Dj",	Content ="音乐id:1843497734",	 	Callback = function()           local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1843497734"    sound.Parent = game.Workspace    sound:Play()    end})
Section:Button({	Title = "Dj2",	Content ="音乐id:7028977687",	 	Callback = function()          local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://7028977687 "    sound.Parent = game.Workspace    sound:Play()    end})
Section:Button({	Title = "Dj3",	Content ="音乐id:1836594449",	 	Callback = function()         local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1836594449"    sound.Parent = game.Workspace    sound:Play()    end})
Section:Button({	Title = "Dj4",	Content ="音乐id:792323017",	 	Callback = function()          local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://792323017"    sound.Parent = game.Workspace    sound:Play()    end})
Section:Button({	Title = "机器人舞蹈C ",	Content ="音乐id:1847853099",	 	Callback = function()          local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1847853099"    sound.Parent = game.Workspace    sound:Play()    end})
Section:Button({	Title = "Dj5",	Content ="音乐id:1842940193",	 	Callback = function()          local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1842940193"    sound.Parent = game.Workspace    sound:Play()    end})
Section:Button({	Title = "Robotic Dance A",	Content ="音乐id:1837853076",	 	Callback = function()           local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1837853076"    sound.Parent = game.Workspace    sound:Play()    end})
Section:Button({	Title = "Parry Gripp - Pancake Robot",	Content ="音乐id:9245558138",	 	Callback = function()           local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://9245558138"    sound.Parent = game.Workspace    sound:Play()    end})
Section:Button({	Title = "dj8",	Content ="音乐id:1837434037",	 	Callback = function()          local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1837434037"    sound.Parent = game.Workspace    sound:Play()    end})
Section:Button({	Title = "dj9",	Content ="音乐id:1839037193",	 	Callback = function()          local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1839037193"    sound.Parent = game.Workspace    sound:Play()    end})
Section:Button({	Title = "dj10",	Content ="音乐id:1837560230",	 	Callback = function()           local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1837560230"    sound.Parent = game.Workspace    sound:Play()    end})
Section:Button({	Title = "dj11",	Content ="音乐id:1842908121",  	 	Callback = function()          local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1842908121"    sound.Parent = game.Workspace    sound:Play()    end})
Section:Button({	Title = "dj12",	Content ="音乐id:9042493127",	 	Callback = function()           local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://9042493127"    sound.Parent = game.Workspace    sound:Play()    end})
Section:Button({	Title = "dj13",	Content ="音乐id:1839246774",	 	Callback = function()           local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1839246774"    sound.Parent = game.Workspace    sound:Play()    end})
Section:Button({	Title = "dj14",	Content ="音乐id:1842940253",	 	Callback = function()           local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1842940253"    sound.Parent = game.Workspace    sound:Play()    end})
Section:Button({	Title = "dj15",	Content ="音乐id:9041933055",	 	Callback = function()           local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://9041933055"    sound.Parent = game.Workspace    sound:Play()    end})
Section:Button({	Title = "dj16",	Content ="音乐id:5410086218",	 	Callback = function()           local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://5410086218"    sound.Parent = game.Workspace    sound:Play()    end})
Section:Button({	Title = "dj17",	Content ="音乐id:1839703786",	 	Callback = function()           local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1839703786"    sound.Parent = game.Workspace    sound:Play()    end})
Section:Button({	Title = "dj18",	Content ="音乐id:1838627720",	 	Callback = function()          local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1838627720"    sound.Parent = game.Workspace    sound:Play()    end})
Section:Button({	Title = "dj19",	Content ="音乐id:5410085763",	 	Callback = function()           local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://5410085763"    sound.Parent = game.Workspace    sound:Play()    end})
Section:Button({	Title = "dj20",	Content ="音乐id:1839898469",	 	Callback = function()           local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1839898469"    sound.Parent = game.Workspace    sound:Play()    end})
Section:Button({	Title = "dj21",	Content ="音乐id:1848213471",	 	Callback = function()           local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1848213471"    sound.Parent = game.Workspace    sound:Play()    end})
Section:Button({	Title = "dj22",	Content ="音乐id:5410080771",	 	Callback = function()           local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://5410080771"    sound.Parent = game.Workspace    sound:Play()    end})
Section:Button({	Title = "dj23",	Content ="音乐id:1837843720",	 	Callback = function()           local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1837843720"    sound.Parent = game.Workspace    sound:Play()    end})
Section:Button({	Title = "dj24",	Content ="音乐id:1842802012",	 	Callback = function()           local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1842802012"    sound.Parent = game.Workspace    sound:Play()   end})
Section:Button({	Title = "dj25",	Content ="音乐id:1846863084",	 	Callback = function()           local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1846863084"    sound.Parent = game.Workspace    sound:Play()    end})
Section:Button({	Title = "dj26",	Content ="音乐id:1842802498",	 	Callback = function()           local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1842802498"    sound.Parent = game.Workspace    sound:Play()    end})
Section:Button({	Title = "dj27",	Content ="音乐id:1838075732",	 	Callback = function()           local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1838075732"    sound.Parent = game.Workspace    sound:Play()    end})
Section:Button({	Title = "dj28",	Content ="音乐id:5410083226",	 	Callback = function()           local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://5410083226"    sound.Parent = game.Workspace    sound:Play()    end})
Section:Button({	Title = "dj29",	Content ="音乐id:792323017",	 	Callback = function()           local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://792323017"    sound.Parent = game.Workspace    sound:Play()    end})
Section:Button({	Title = "dj30",	Content ="音乐id:7028913008",	 	Callback = function()           local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://7028913008"    sound.Parent = game.Workspace    sound:Play()    end})
Section:Button({	Title = "dj31",	Content ="音乐id:9042616023",	 	Callback = function()           local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://9042616023"    sound.Parent = game.Workspace    sound:Play()    end})
Section:Button({	Title = "dj32",	Content ="音乐id:1847799916",  	 	Callback = function()         local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1847799916"    sound.Parent = game.Workspace    sound:Play()    end})
Section:Button({	Title = "Rip the Guts Out",	Content ="音乐id:1837814958",	 	Callback = function()          local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1837814958"    sound.Parent = game.Workspace    sound:Play()    end})
Section:Button({	Title = "Pixel Terror - Machina",	Content ="音乐id:5410080475",	 	Callback = function()           local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://5410080475"    sound.Parent = game.Workspace    sound:Play()    end})
Section:Button({	Title = "We Go Hard",	Content ="音乐id:1842940420",	 	Callback = function()          local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1842940420"    sound.Parent = game.Workspace    sound:Play()    end})
Section:Button({	Title = "Fight Or Flight",	Content ="音乐id:1842940300",	 	Callback = function()           local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1842940300"    sound.Parent = game.Workspace    sound:Play()    end})
Section:Button({	Title = "Alarm",	Content ="音乐id:1845080313",	 	Callback = function()           local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1845080313"    sound.Parent = game.Workspace    sound:Play()    end})
Section:Button({	Title = "Parry Gripp - Last Train to Awesome Town",	Content ="音乐id:9245554658",	 	Callback = function()          local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://9245554658"    sound.Parent = game.Workspace    sound:Play()    end})
Section:Button({	Title = "Uproar",	Content ="音乐id:1842934837",	 	Callback = function()           local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1842934837"    sound.Parent = game.Workspace    sound:Play()    end})
Section:Button({	Title = "The Will To Fight A",	Content ="音乐id:1845793864",	 	Callback = function()           local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1845793864"    sound.Parent = game.Workspace    sound:Play()    end})
Section:Button({	Title = "Mindwinder (a)",	Content ="音乐id:1838075377",	 	Callback = function()          local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1838075377"    sound.Parent = game.Workspace    sound:Play()    end})
Section:Button({	Title = "FWLR - Hot",	Content ="音乐id:5410082534",	 	Callback = function()          local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://5410082534"    sound.Parent = game.Workspace    sound:Play()    end})
Section:Button({	Title = "Noisestorm - Escape",	Content ="音乐id:5410082879",	 	Callback = function()           local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://5410082879"    sound.Parent = game.Workspace    sound:Play()    end})
Section:Button({	Title = "Skull Crusher",	Content ="音乐id:1842558494",	 	Callback = function()           local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1842558494"    sound.Parent = game.Workspace    sound:Play()    end})
Section:Button({	Title = "dj45",	Content ="音乐id:9041932892",	 	Callback = function()           local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://9041932892"    sound.Parent = game.Workspace    sound:Play()    end})
Section:Button({	Title = "Heist",	Content ="音乐id:1836782065",	 	Callback = function()           local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1836782065"    sound.Parent = game.Workspace    sound:Play()    end})
local Seperator = Section:Seperator("休闲安逸嗯，更新这个音乐系统的话，我也不知道具体什么时间") 
Section:Button({	Title  ="城镇谈话",     Content ="音乐id:1845756489",   	Callback = function()  local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1845756489"    sound.Parent = game.Workspace    sound:Play()    end})
Section:Button({  Title  ="快乐的歌",     Content ="音乐id:1843404009",   	Callback = function()  local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1843404009"    sound.Parent = game.Workspace    sound:Play()    end})
Section:Button({	Title  ="一起战斗吗",     Content ="音乐id:1843324336",   	Callback = function()  local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1843324336"    sound.Parent = game.Workspace    sound:Play()    end})
Section:Button({	Title  ="高保真冷柜A",     Content ="音乐id:9043887091",   	Callback = function()  local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://9043887091"    sound.Parent = game.Workspace    sound:Play()    end})
Section:Button({	Title  ="轻松的场景",     Content ="音乐id:1848354536",   	Callback = function()  local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1848354536"    sound.Parent = game.Workspace    sound:Play()    end})
Section:Button({	Title  ="在监狱里生活",     Content ="音乐id:1841647093",  	Callback = function()  local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1841647093"    sound.Parent = game.Workspace    sound:Play()    end})
Section:Button({	Title  ="不再",     Content ="音乐id:1846458016",    	Callback = function()   local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1846458016"    sound.Parent = game.Workspace    sound:Play()    end})
Section:Button({	Title  ="Cute Story",     Content ="音乐id:1839755231",    	Callback = function() local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1839755231"    sound.Parent = game.Workspace    sound:Play()    end})
Section:Button({	Title  ="快乐一点的",     Content ="音乐id:9039445224",   	Callback = function()  local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://9039445224"    sound.Parent = game.Workspace    sound:Play()    end})
Section:Button({	Title  ="Swing it",     Content ="音乐id:1843313385",   	Callback = function()  local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1843313385"    sound.Parent = game.Workspace    sound:Play()    end})
Section:Button({	Title  ="Police 打鼓伴奏",     Content ="音乐id:1842981634",  	Callback = function()  local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1842981634"    sound.Parent = game.Workspace    sound:Play()    end})
Section:Button({	Title  ="睡眠歌曲 Baby Song",     Content ="音乐id:1838998127",   	Callback = function()  local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1838998127"    sound.Parent = game.Workspace    sound:Play()    end})
Section:Button({	Title  ="义勇军进行曲",     Content ="音乐id:1845918434",   	Callback = function()  local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1845918434"    sound.Parent = game.Workspace    sound:Play()    end})
Section:Button({	Title  ="彩虹瀑布",    Content ="音乐id:1837879082",    	Callback = function() local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1837879082"    sound.Parent = game.Workspace    sound:Play()    end})
local Seperator = Section:Seperator("整蛊语音还有一些梗xgo找这些好辛苦的")
Section:Button({	Title  ="第1次听吓我一跳",     Content ="音乐id:7795812961",    	Callback = function() local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://7795812961"    sound.Parent = game.Workspace    sound:Play()    end})
Section:Button({	Title  ="我跌倒了,爬不起来",     Content ="音乐id:130768088",   	Callback = function() local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://130768088"    sound.Parent = game.Workspace    sound:Play()    end})
Section:Button({	Title  ="胜利的声音",     Content ="音乐id:12222253",   	Callback = function() local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://12222253"    sound.Parent = game.Workspace    sound:Play()    end})
Section:Button({	Title  ="死亡的声音",     Content ="音乐id:12222242",   	Callback = function()  local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://12222242"    sound.Parent = game.Workspace    sound:Play()    end})
Section:Button({	Title  ="当你在minecraft中死去",     Content ="音乐id:2607544190",   	Callback = function() local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://2607544190"    sound.Parent = game.Workspace    sound:Play()    end})
Section:Button({	Title  ="悲伤的小提琴",     Content ="音乐id:135308045",    	Callback = function() local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://135308045"    sound.Parent = game.Workspace    sound:Play()    end})
Section:Button({	Title  ="喂我!",     Content ="音乐id:130766856",   	Callback = function()  local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://130766856"    sound.Parent = game.Workspace    sound:Play()    end})
Section:Button({	Title  ="Minions - Bee Doo Bee Doo Bee Doo（130844390）",     Content ="音乐id:130844390",  	Callback = function()   local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://130844390"    sound.Parent = game.Workspace    sound:Play()    end})
Section:Button({	Title  ="你在我的沼泽做什么!",     Content ="音乐id:130767645",    	Callback = function() local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://130767645"    sound.Parent = game.Workspace    sound:Play()    end})
Section:Button({	Title  ="你是斯巴达",     Content ="音乐id:130781067",   	Callback = function()  local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://130781067"    sound.Parent = game.Workspace    sound:Play()    end})
Section:Button({	Title  ="那是我的钱包",     Content ="音乐id:130760834",   	Callback = function()  local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://130760834"    sound.Parent = game.Workspace    sound:Play()    end})
Section:Button({	Title  ="孩子说哎哟哇",     Content ="音乐id:12222058",   	Callback = function()  local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://12222058"    sound.Parent = game.Workspace    sound:Play()    end})
Section:Button({	Title  =" Oh my god",     Content ="音乐id:1841647093",   	Callback = function()  local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://1841647093"    sound.Parent = game.Workspace    sound:Play()    end})
Section:Button({	Title  ="我是蝙蝠侠",     Content ="音乐id:130769318",  	Callback = function()   local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://130769318"    sound.Parent = game.Workspace    sound:Play()    end})
Section:Button({	Title  ="约翰的笑声",     Content ="音乐id:130759239",   	Callback = function()  local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://130759239"    sound.Parent = game.Workspace    sound:Play()    end})
Section:Button({    Title  ="他是免费的",     Content ="音乐id:130771265",  	Callback = function()   local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://130771265"    sound.Parent = game.Workspace    sound:Play()    end})
Section:Button({	Title  ="李·罗伊·詹金斯",     Content ="音乐id:130758889",  	Callback = function()   local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://130758889"    sound.Parent = game.Workspace    sound:Play()    end})
Section:Button({	Title  ="防空警报",     Content ="音乐id:792323017",   	Callback = function()  local sound = Instance.new("Sound")    sound.SoundId = "rbxassetid://792323017"    sound.Parent = game.Workspace    sound:Play()    end}) 
local Section = AdministratorTab:Section({ Title = "x-管理员",    Content = "管理员"})
Section:Button({	Title  ="管理员权限 可获得游戏内的通行证",      Content ="假的获取通行证",   	Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/lIlIlIlIlI24568/114514.IIjjjjiiiallloiia.xxxxg/refs/heads/main/%E5%B0%8Fgo%E6%B1%89%E5%8C%96%E7%AE%A1%E7%90%86%E5%91%98"))()   end})
Section:Button({	Title  = "资源管理器",    Content ="管理员",   	Callback = function()  loadstring(game:HttpGet("https://raw.githubusercontent.com/VateqS/MinionHub/refs/heads/main/solara_dex"))()   end})
Section:Button({	Title  = "远程监控",	   Content ="管理员",   	Callback = function()   loadstring(game:HttpGet("https://raw.githubusercontent.com/VateqS/MinionHub/refs/heads/main/remotespy_save"))()  end})
local Section = AdministratorTab:Section({ Title = "x-注射器",    Content = "注入器"})
Section:Button({	Title  ="阿尔宙斯v3",  Content ="注入器",   	Callback = function()   loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/chillz-workshop/main/Arceus%20X%20V3"))()   end})
Section:Button({	Title  ="SOROLAZ BETTER SORALA注入器",      Content ="注入器",   	Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/PHNKSC/soralaz/refs/heads/main/better%20sorolaz"))()    end})
Section:Button({	Title  ="管理员注入 暂时无法使用,可能会被踢出去",      Content ="注入器",   	Callback = function()   loadstring(game:HttpGet(('https://raw.githubusercontent.com/iK4oS/backdoor.exe/master/source.lua'),true))()    end})
Section:Button({	Title  ="xgo 普通执行",  Content ="注入器",  	Callback = function()    loadstring(game:HttpGet(('https://raw.githubusercontent.com/GTAFAW/goto/refs/heads/main/xgo%20%E6%99%AE%E9%80%9A%E6%89%A7%E8%A1%8C%E5%99%A8')))()    end})
local Section = PicturequalityTab:Section({ Title = "x-图像画质",    Content = "修改你的图像及其画质"})
Section:Button({	Title  ="美丽天空",    Content ="修改天空图像",    	Callback = function()  loadstring(game:HttpGet("https://pastebin.com/raw/miBCv88z"))()   end})
Section:Button({	Title  ="光影（浅）",	 Content ="光影修改较浅",    	Callback = function()      	loadstring(game:HttpGet("https://pastebin.com/raw/jHBfJYmS"))()  	end})
Section:Button({	Title  ="光影菜单  小go推荐",     Content ="加载较慢，请稍等点击一下就行",    	Callback = function()    loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-Shader-RTX-New-12425"))()    end})
Section:Button({	Title  ="光影v2",     Content ="光影修改",    	Callback = function()   loadstring(game:HttpGet("https://raw.githubusercontent.com/MZEEN2424/Graphics/main/Graphics.xml"))()    end})
Section:Button({	Title  ="光影v4",     Content ="光影修改",    	Callback = function()    loadstring(game:HttpGet('https://pastebin.com/raw/gUceVJig'))()   end})
Section:Button({	Title  ="RTX  图形画质",     Content ="画质修改",    	Callback = function()     loadstring(game:HttpGet("https://pastebin.com/raw/wh967JHa"))()   end})
local Section = UniversalTab:Section({ Title = "x-通用",    Content = "基本通用的道具"})
Section:Button({	Title  ="对玩家进行观战",     Content ="可以观战游戏内的玩家",    	Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/lIlIlIlIlI24568/143628llllffaaaYXZS.123/refs/heads/main/%E8%A7%82%E6%88%98%E7%8E%A9%E5%AE%B6"))()    end})
Section:Button({	Title  ="玩家进入通知",     Content ="有新玩家进入后通知",    	Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/boyscp/scriscriptsc/main/bbn.lua"))()    end})
Section:Button({	Title  ="小goFe合集",     Content ="Fe所有合集",    	Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/lIlIlIlIlI24568/114514.IIjjjjiiiallloiia.xxxxg/refs/heads/main/Fe"))()    end})
Section:Button({	Title  = "无限跳",    Content ="可以实现无限连跳",    	Callback = function()      loadstring(game:HttpGet("https://raw.githubusercontent.com/GTAFAW/lllllllllllllllll114514xxxxg/refs/heads/main/%E6%97%A0%E9%99%90%E8%B7%B3", true))()	end})
Section:Button({	Title  = "踏空行走",	 Content ="可以在空中行走",    	Callback = function()loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Float'))()	end})
Section:Button({	Title  ="小go 全图传送 ",     Content ="地图点到哪传送哪",    	Callback = function()    mouse = game.Players.LocalPlayer:GetMouse() tool = Instance.new("Tool") tool.RequiresHandle = false tool.Name = "小go全图内任意传送" tool.Activated:connect(function() local pos = mouse.Hit+Vector3.new(0,2.5,0) pos = CFrame.new(pos.X,pos.Y,pos.Z) game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos end) tool.Parent = game.Players.LocalPlayer.Backpack    end})
Section:Button({	Title  ="铁拳（能打飞人）",     Content ="可以用铁拳来教训人",    	Callback = function()    loadstring(game:HttpGet(('https://raw.githubusercontent.com/0Ben1/fe/main/obf_rf6iQURzu1fqrytcnLBAvW34C9N55kS9g9G3CKz086rC47M6632sEd4ZZYB0AYgV.lua.txt'),true))()    end})
Section:Button({	Title  ="iw指令",     Content ="无限收益",    	Callback = function()  loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()    end})
Section:Button({	Title  ="动作",     Content ="可以更改你的动作，别人可见",    	Callback = function()    loadstring(game:HttpGet("https://yarhm.goteamst.com/scr?channel=afem"))()    end})
Section:Button({	Title  ="动作 R6",     Content =" R6动作更改",    	Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/ocfi/Animations-obfus/refs/heads/main/obfus"))()    end})
Section:Button({	Title  ="宙斯汉化飞行",     Content ="",    	Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/GTAFAW/goto/refs/heads/main/ArceusX-Fly.lua"))()    end})
Section:Button({	Title  ="goto飞车",     Content ="可以使车子飞行",    	Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/lIlIlIlIlI24568/114514.IIjjjjiiiallloiia.xxxxg/refs/heads/main/%E9%A3%9E%E8%BD%A6"))()    end})
Section:Button({	Title  ="goto飞行",     Content ="飞行",    	Callback = function()     loadstring(game:HttpGet("https://raw.githubusercontent.com/lIlIlIlIlI24568/114514.IIjjjjiiiallloiia.xxxxg/refs/heads/main/%E4%B9%8B%E5%89%8D%E7%9A%84%E9%A3%9E%E8%A1%8C"))()    end})
Section:Button({	Title  ="goto1.5百倍飞行",     Content ="百倍飞行",    	Callback = function()     loadstring(game:HttpGet("https://raw.githubusercontent.com/lIlIlIlIlI24568/114514.IIjjjjiiiallloiia.xxxxg/refs/heads/main/%E5%B0%8F%E5%AE%87%E9%A3%9E"))()    end})
Section:Button({    Title ="穿墙汉化",  Content ="穿墙",   Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/TtmScripter/OtherScript/main/Noclip"))()    end})
Section:Button({	Title  ="甩人通用",    Content ="甩飞游戏内的所有人",    	Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/lIlIlIlIlI24568/114514.IIjjjjiiiallloiia.xxxxg/refs/heads/main/%E7%94%A9%E4%BA%BA%E9%80%9A%E7%94%A8"))()    end})
Section:Button({	Title  ="锁定甩飞，不过你也会死",    Content ="锁定甩飞，可以搜索玩家名称进行甩飞",    	Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/hellohellohell012321/KAWAII-FREAKY-FLING/main/kawaii_freaky_fling.lua"))()    end})
Section:Button({	Title  ="xgo 锁定甩飞",     Content ="锁定甩飞，可以搜索玩家名称进行甩飞",    	Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/GTAFAW/goto/refs/heads/main/xgo%20%E9%94%81%E5%AE%9A%E7%94%A9%E9%A3%9E.lua"))()    end})
Section:Button({	Title  ="F3X",     Content ="改变局内工具",    	Callback = function()     loadstring(game:GetObjects("rbxassetid://6695644299")[1].Source)()    end})
Section:Button({	Title  ="工具包（三个经典工具）",     Content ="三个工具经典",    	Callback = function()    loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/BTools.txt"))()	  	    end})
Section:Button({	Title  ="工具挂",     Content ="工具菜单",    	Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/Bebo-Mods/BeboScripts/main/StandAwekening.lua"))()    end})
Section:Button({	Title  ="建筑工具",	 Content ="可复制建筑来进行建造",    	Callback = function()		Hammer = Instance.new("HopperBin")		Hammer.Name = "锤子"		Hammer.BinType = 4		Hammer.Parent = game.Players.LocalPlayer.Backpack		Clone = Instance.new("HopperBin")		Clone.Name = "克隆"		Clone.BinType = 3		Clone.Parent = game.Players.LocalPlayer.Backpack		Grab = Instance.new("HopperBin")		Grab.Name = "抓取"		Grab.BinType = 2	end})
Section:Button({	Title  ="xgo键盘",     Content ="",    	Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/GTAFAW/goto/refs/heads/main/xgo%E5%BB%BA%E7%9B%98.lua", true))()    end})
Section:Button({	Title  ="键盘",     Content ="",    	Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()    end})
Section:Button({	Title  = "替身",	 Content ="可以创造分身",    	Callback = function()      loadstring(game:HttpGet(('https://raw.githubusercontent.com/SkrillexMe/SkrillexLoader/main/SkrillexLoadMain')))()    end})
local Section = UniversalTab:Section({ Title = "x-通用2",    Content = "通用道具2"})
Section:Button({	Title  ="选择玩家传送",     Content ="",    	Callback = function()   loadstring(game:HttpGet("https://raw.githubusercontent.com/GTAFAW/goto/refs/heads/main/%20xgo%E7%8E%A9%E5%AE%B6%E4%BC%A0%E9%80%81.lua"))()  end})
Section:Button({	Title  ="反挂机",     Content ="防止20分钟后强制掉线",    	Callback = function()   loadstring(game:HttpGet("https://pastebin.com/raw/9fFu43FF"))()   end})
Section:Button({	Title  ="反挂机1",     Content ="防止20分钟后强制掉线 计时",    	Callback = function()   loadstring(game:HttpGet("https://pastebin.com/raw/gLkx6yhL"))()   end})
Section:Button({	Title  ="反挂机2",     Content ="防止20分钟后强制掉线 计时",    	Callback = function()   loadstring(game:HttpGet("https://pastebin.com/raw/1A348JKJ"))()   end})
Section:Button({	Title  = "把玩家传送到高空",	 Content ="把玩家传送到高空进行自由落体",   	Callback = function()    loadstring(game:HttpGet("https://pastebin.com/raw/WYBZTRv9"))()    end})
Section:Button({	Title  = "xgo制作幽灵状态 可能会掉血",	 Content ="幽灵状态进入后，别人不可见",   	Callback = function()    loadstring(game:HttpGet("https://pastebin.com/raw/0HhGVadL"))() end})
Section:Button({	Title  = "隐身（亲测有效）",	 Content ="隐身进入隐身玩家不可见",   	Callback = function()      loadstring(game:HttpGet("https://pastebin.com/raw/3Rnd9rHf"))()      end})
Section:Button({    Title = "隐身道具", Content ="", Callback = function()    loadstring(game:HttpGet("https://gist.githubusercontent.com/skid123skidlol/cd0d2dce51b3f20ad1aac941da06a1a1/raw/f58b98cce7d51e53ade94e7bb460e4f24fb7e0ff/%257BFE%257D%2520Invisible%2520Tool%2520(can%2520hold%2520tools)"))()  end})
Section:Button({	Title  = "锁定视角人物可移动",	 Content ="将视角锁定",   	Callback = function()    loadstring(game:HttpGet("https://pastebin.com/raw/6eVUiUnv"))()       end})
Section:Button({	Title  = "玩家控制",	 Content ="可搭配所有射击游戏",   	Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/lIlIlIlIlI24568/114514.IIjjjjiiiallloiia.xxxxg/refs/heads/main/%E7%8E%A9%E5%AE%B6%E6%8E%A7%E5%88%B6"))()    end})
Section:Button({	Title  = "小go超级无敌旋转",	 Content ="无敌旋转",   	Callback = function()       loadstring(game:HttpGet("https://raw.githubusercontent.com/lIlIlIlIlI24568/114514.IIjjjjiiiallloiia.xxxxg/refs/heads/main/%E5%88%9D%E4%BB%A3%E6%B1%89%E5%8C%96%E7%94%A9%E9%A3%9E"))()      end})
Section:Button({	Title  = "小go超级无敌旋转2.0",	 Content ="无敌旋转",   	Callback = function()        loadstring(game:HttpGet("https://raw.githubusercontent.com/lIlIlIlIlI24568/114514.IIjjjjiiiallloiia.xxxxg/refs/heads/main/%E5%B0%8Fgo%E6%B1%89%E5%8C%96%E7%94%A9%E9%A3%9E"))()    end})
Section:Button({	Title  = "一键脱衣（衬衫之类）",	 Content ="将衬衫之类的衣服脱下",   	Callback = function()        local player = game.Players.LocalPlayer           local character = player.Character or player.CharacterAdded:Wait()       local function removeClothes()    for _, item in pairs(character:GetChildren()) do        if item:IsA("Shirt") or item:IsA("Pants") then          item:Destroy()        end    end    end     removeClothes()	end})
Section:Button({	Title  = "xgo一键脱衣2.0",	 Content ="将除衬衫以外，衣服脱下，R6有效果",   	Callback = function()   loadstring(game:HttpGet("https://pastebin.com/raw/kNV2MkKY"))()      end})
Section:Button({	Title  ="鼠标（手机非常不建议用）",	 Content ="鼠标应用脚本错误时使用",   	Callback = function()        loadstring(game:HttpGet(('https://pastefy.ga/V75mqzaz/raw')))()	end})
Section:Button({	Title  ="锁定视角 摄像机",     Content ="可以将视角锁定人物可移动",   	Callback = function()     loadstring(game:HttpGet("https://raw.githubusercontent.com/lIlIlIlIlI24568/114514.IIjjjjiiiallloiia.xxxxg/refs/heads/main/%E9%94%81%E5%AE%9A%E8%A7%86%E8%A7%92"))()  end})
Section:Button({	Title  ="小go 在外网找的几个道具",     Content ="外网的几个道具",   	Callback = function()      loadstring(game:HttpGet("https://gist.githubusercontent.com/dark-modz/b04e28198c8eeb1408921a1560792152/raw/67739a2bc571093976e6cd7e51fb526dedd75861/tools"))()  end})
Section:Button({	Title  ="聊天绘画图",     Content ="在聊天上绘画",   	Callback = function()     loadstring(game:HttpGet("https://raw.githubusercontent.com/lIlIlIlIlI24568/143628lllkaiiiiiwggv.panmn.lua/refs/heads/main/xz"))()  end})
Section:Button({	Title  ="死亡笔记",     Content ="死亡笔记",   	Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/GTAFAW/goto/refs/heads/main/%E6%AD%BB%E4%BA%A1%E7%AC%94%E8%AE%B0"))()  end})
Section:Button({	Title  ="娱乐特效",     Content ="局内改特效",   	Callback = function()     loadstring(game:HttpGet("https://raw.githubusercontent.com/GTAFAW/xgoizlx/refs/heads/main/ui"))()  end}) 
Section:Button({	Title  = "漂浮控制器",   Content ="教程（手机需要键盘）:1. J-飞起来    2. K-回到手中",   	Callback = function() loadstring(game:HttpGet("https://pastebin.com/raw/jJEXYrbF"))()  end}) 
Section:Button({	Title  = "道具控制器",   Content ="教程（手机需要键盘）:1. Q - 靠近   2. E - 离远   3. Y - 投掷   4. J - 超级投掷   5. U - 使物体自转   6. P - 使物体悬浮在空中   7. X - 走得更远一点   8. L - 使方块变直并锁定在前部",  Callback = function()   loadstring(game:HttpGet("https://pastebin.com/raw/qCXsAu9Z"))()   end}) 
local Section = PlayerTab:Section({    Title = "X-玩家",    Content = "玩家通用区域"})
Section:TextInput({     ["Title"] = "时间",    ["Content"] = "更改时间（24小时制）",         ["Place Holder Text"] = "1~24输入",  ["Clear Text On Focus"] = false,   ["Callback"] = function(Time)       game.Lighting.ClockTime = Time     end})
Section:Button({	Title ="冻结自己 可以将自己暂停",  Content ="随时冻结使自己无法移动",  Callback = function()      loadstring(game:HttpGet("https://raw.githubusercontent.com/creepstu/fuzzy-octo-giggle/main/Source"))()     end})
Section:Button({	Title ="失重（可以被人当球踢）",  Content ="",  Callback=function()    loadstring(game:HttpGet("https://pastebin.com/raw/axjdwbQy"))()    end})
Section:Button({   Title="显示ping",    ["Content"] = "显示频率",    Callback=function()  loadstring(game:HttpGet("https://pastebin.com/raw/7eWsZKAE"))()   end})
Section:Button({    Title ="重新加入游戏", ["Content"] = "",  Callback = function()      game:GetService("TeleportService"):TeleportToPlaceInstance(      game.PlaceId,         game.JobId,           game:GetService("Players").LocalPlayer                  )            end})
Section:Button({    Title ="保存游戏",   ["Content"] = "", Callback = function()    saveinstance()    end})
Section:Button({    Title ="离开游戏",  ["Content"] = "",  Callback = function()     game:Shutdown()    end})
Section:Button({    Title ="进入人少的服务器",  ["Content"] = "",  Callback = function()     local Http = game:GetService("HttpService")         local TPS = game:GetService("TeleportService")          local Api = "https://games.roblox.com/v1/games/"               local _place = game.PlaceId       local _servers = Api.._place.."/servers/Public?sortOrder=Asc&limit=100"          function ListServers(cursor)  local Raw = game:HttpGet(_servers .. ((cursor and "&cursor="..cursor) or ""))  return Http:JSONDecode(Raw)         end            local Server, Next; repeat  local Servers = ListServers(Next)  Server = Servers.data[1]  Next = Servers.nextPageCursor       until Server           TPS:TeleportToPlaceInstance(_place,Server.id,game.Players.LocalPlayer)        end})
Section:Button({    Title ="最高帧率", ["Content"] = "启动最高帧率",   Callback = function()         setfpscap(999)    end})
Section:TextInput({  ["Title"] = "广角",    ["Content"] = "调整视角",     ["Place Holder Text"] = "数值",  ["Clear Text On Focus"] = false,   ["Callback"] = function(Value)       game.Workspace.CurrentCamera.FieldOfView = Value    end})
Section:TextInput({	["Title"] ="超广角（Fov）两者各有不同",   ["Content"] ="",     ["Place Holder Text"] = "数值",  ["Clear Text On Focus"] = false,	["Callback"] = function(Value)      workspace.CurrentCamera.FieldOfView = Value    end})
Section:TextInput({   Title = "血量 可能是假血",	["Content"] ="",     ["Place Holder Text"] = "数值",  ["Clear Text On Focus"] = false,	Callback = function(Value)		game.Players.LocalPlayer.Character.Humanoid.Health = Value	end})
Section:TextInput({   Title = "跳跃高度设置",	["Content"] ="",     ["Place Holder Text"] = "数值",  ["Clear Text On Focus"] = false,	Callback = function(Value)		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value	end})
Section:TextInput({   Title = "移动速度设置",	["Content"] ="",     ["Place Holder Text"] = "数值",  ["Clear Text On Focus"] = false,	Callback = function(Value)		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value	end})
Section:TextInput({   Title = "重力设置",	["Content"] ="",     ["Place Holder Text"] = "数值",  ["Clear Text On Focus"] = false,	Callback = function(Value)		game.Workspace.Gravity = Value	end})
Section:Button({    Title = "人物坐下",  ["Content"] = "",  Callback = function()     local player = game.Players.LocalPlayer               local character = player.Character or player.CharacterAdded:Wait()              local humanoid = character:WaitForChild("Humanoid")         if humanoid and character then    humanoid.Sit = true        else    warn("Humanoid or Character not found.")      end       end})
Section:Button({    Title = "人物坐下（单独按钮）",  ["Content"] = "单独开关",  Callback = function()  loadstring(game:HttpGet("https://pastebin.com/raw/7RHML3DK"))()     end})
Section:Toggle({    Title = "夜视",  Content = "夜晚的时候可以让你看得很清楚",	Default = false,	Callback = function(Value)		if Value then		    game.Lighting.Ambient = Color3.new(1, 1, 1)		else		    game.Lighting.Ambient = Color3.new(0, 0, 0)		end	end})
Section:Button({    Title="立即死亡",  Content ="遇到bug了吧",  Callback= function()        game.Players.LocalPlayer.Character.Humanoid.Health=0    end})  
local Section = BlackholeTab:Section({ Title = "x-黑洞",    Content = "使周围物体吸附或循环"})
Section:Button({	Title  ="键盘可单独按键",    Content ="键盘可单独寻找按键", 	Callback = function()    loadstring(game:HttpGet("https://gist.githubusercontent.com/RedZenXYZ/4d80bfd70ee27000660e4bfa7509c667/raw/da903c570249ab3c0c1a74f3467260972c3d87e6/KeyBoard%2520From%2520Ohio%2520Fr%2520Fr"))()    end}) 
Section:Button({	Title  ="黑洞小go汉化",    Content ="黑洞", 	Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/lIlIlIlIlI24568/114514.IIjjjjiiiallloiia.xxxxg/refs/heads/main/%E9%BB%91%E6%B4%9E2"))()    end})
Section:Button({  Title  ="黑洞 汉化",         Content ="黑洞", 	     Callback = function()          loadstring(game:HttpGet("https://pastebin.com/raw/jQd1HedN"))()    end})    
Section:Button({	Title  ="黑洞 0.4",    Content ="黑洞", 	Callback = function()      loadstring(game:HttpGet('https://gist.githubusercontent.com/AxolotlBmgo/8888080921c2b426a32dd9ff587baff1/raw/d45e03afed3c1716f36523bbf6dd741d3d2aad00/gistfile1.txt'))()    end})
Section:Button({	Title  ="黑洞 1.5",    Content ="黑洞", 	Callback = function()      loadstring(game:HttpGet('https://raw.githubusercontent.com/GTAFAW/goto/refs/heads/main/%E9%BB%91%E6%B4%9E'))()  end})
Section:Button({	Title  ="循环V2",  Content ="万磁使周围的物体旋转", 	Callback = function()      loadstring(game:HttpGet("https://raw.githubusercontent.com/BOOSBS/666/refs/heads/main/656"))()  end})
Section:Button({	Title  ="循环v3",    Content ="万磁使周围的物体旋转", 	Callback = function()    loadstring(game:HttpGet("https://pastefy.app/vaXK1Kgy/raw"))()    end})     
Section:Button({	Title  ="黑洞E键控制", Content ="黑洞按E", 	Callback = function() loadstring(game:HttpGet("https://pastebin.com/raw/BbYdbeDY"))()  end})
Section:Button({	Title  ="低配版不会太卡E键控制",  Content ="配置", 	Callback = function() loadstring(game:HttpGet("https://pastebin.com/raw/Sx6PY4gV"))()  end})
Section:Button({	Title  ="卡哇伊黑洞（可以锁人的哦）",    Content ="可以进行锁定玩家", 	Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/lIlIlIlIlI24568/114514.IIjjjjiiiallloiia.xxxxg/refs/heads/main/%E9%BB%91%E6%B4%9E",true))()    end})
Section:Button({	Title  ="控制fe黑洞（配置低别用）",    Content ="可使周围物体旋转占位适配手机", 	Callback = function()   loadstring(game:HttpGet("https://raw.githubusercontent.com/GTAFAW/goto/refs/heads/main/F'e"))()    end})
local Section = TalkTab:Section({ ["Title"] = "x-聊天中枢",    ["Content"] = "聊天工具"})
Section:Button({Title  = "查玩家ip地址 聊天发送",	Content ="只能吓唬人 因为是随机数字", 	Callback = function()       loadstring(game:HttpGet("https://raw.githubusercontent.com/BingusWR/FakeRobloxIPGrabber/refs/heads/main/FERobloxIpGrabberScrip"))()    end})
Section:Button({Title  = "传送到玩家面前循环（嘲讽）",	Content ="", 	Callback = function()        loadstring(game:HttpGet("https://raw.githubusercontent.com/0Ben1/fe./main/Orbit%20GUI"))()      end})
Section:TextInput({	["Title"]  ="聊天发送循环",["Content"] ="xgo提醒:别说一些容易被举报的话",     ["Place Holder Text"] = "输入你想说的话",  ["Clear Text On Focus"] = false,	["Callback"] = function(V)
local TeleportService = game:GetService("TeleportService")
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local function spamChat()
local message = V
while true do
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
wait(2)
end     end
local function flingAll()
while true do
loadstring(game:HttpGet(" https://raw scripts . net/raw/Universal-Script-FLING-ALL-Script-17590 "))()
wait(3)
TeleportService:Teleport(game.PlaceId, Players.LocalPlayer)
end    end
loadstring(game:HttpGet("https://raw.githubusercontent.com/GTAFAW/goto/refs/heads/main/222"))()
spawn(spamChat)
spawn(flingAll)
end})
Section:Button({	Title  = "Al聊天机器人",	Content ="聊天工具", 	Callback = function()        loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Synergy-Networks/products/main/BetterBypasser/loader.lua"))()      end})
Section:Button({	Title  ="骂人无违规",    Content ="不知道有没有效果", 	Callback = function()    loadstring(game:GetObjects("rbxassetid://1262435912")[1].Source)()    end})
Section:Button({	Title  ="xgo 随机骂人输出 （手机需要键盘按G）",    Content ="需要匹配键盘,按G发送", 	Callback = function()      loadstring(game:HttpGet("https://raw.githubusercontent.com/lIlIlIlIlI24568/85463.lllllIIIIIlIlIIll.ldzs/refs/heads/main/%E8%81%8A%E5%A4%A9%E4%B8%AD%E6%9E%A2"))()     end})
local Section = SelfishTab:Section({    Title = "x-自瞄",    Content = "自瞄 准星"})
Section:Button({    Title ="辅助瞄准",  ["Content"] = "",  Callback = function()   loadstring(game:HttpGet('https://raw.githubusercontent.com/yzeedw/Mortalv2-main/main/universal%20silent%20aim%20by%20Mortalexploits'))()      end})
Section:Button({    Title ="普通中心点",  ["Content"] = "",  Callback = function()   local d = Drawing.new("Circle")            d.Color, d.Radius, d.Filled, d.Visible = Color3.new(0, 0, 8), 3, true, false            game:GetService("RunService").RenderStepped:Connect(function()    d.Position = workspace.CurrentCamera.ViewportSize / 2    d.Visible = true        end)       end})
Section:Button({    Title ="战神十字架（小）",  ["Content"] = "",  Callback = function()   loadstring(game:HttpGet("https://pastebin.com/raw/q2qZbbbx"))()     end})
Section:Button({    Title ="战神十字架（中）",  ["Content"] = "",  Callback = function()   loadstring(game:HttpGet("https://pastebin.com/raw/1HT0VwKz"))()  end})
Section:Button({    Title ="战神十字架（超级）",  ["Content"] = "",  Callback = function()    loadstring(game:HttpGet("https://pastebin.com/raw/Q2Evf9mH"))()  end})
Section:Button({    Title ="可调节十字准心",  ["Content"] = "",  Callback = function()   loadstring(game:HttpGet("https://raw.githubusercontent.com/kn0a/Crosshair-M/main/Source.lua"))()     end})
Section:Button({   Title ="辅助瞄准v2",   ["Content"] = "",  Callback = function()   loadstring(game:HttpGet('https://raw.githubusercontent.com/yzeedw/Mortalv2-main/refs/heads/main/universal%20silent%20aim%20by%20Mortalexploits'))()       end})        
Section:Toggle({	["Title"]= "锁头",	["Content"] = "加入队伍检测",	["Default"] = false,	["Callback"] = function(Value) 		
_G.AimbotEnabled = Value
local Camera = workspace.CurrentCamera
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local LocalPlayer = Players.LocalPlayer
local Holding = false
_G.TeamCheck = true
_G.AimPart = "Head"
_G.Sensitivity = 0
_G.CircleSides = 64
_G.CircleColor = Color3.fromRGB(255, 255, 255)
_G.CircleTransparency = 0.7
_G.CircleRadius = 80
_G.CircleFilled = false
_G.CircleVisible = false
_G.CircleThickness = 0
local FOVCircle = Drawing.new("Circle")
FOVCircle.Position = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)
FOVCircle.Radius = _G.CircleRadius
FOVCircle.Filled = _G.CircleFilled
FOVCircle.Color = _G.CircleColor
FOVCircle.Visible = _G.CircleVisible
FOVCircle.Radius = _G.CircleRadius
FOVCircle.Transparency = _G.CircleTransparency
FOVCircle.NumSides = _G.CircleSides
FOVCircle.Thickness = _G.CircleThickness
local function GetClosestPlayer()
local MaximumDistance = _G.CircleRadius
local Target = nil
for _, v in next, Players:GetPlayers() do
if v.Name ~= LocalPlayer.Name then
if _G.TeamCheck == true then
if v.Team ~= LocalPlayer.Team then
if v.Character ~= nil then
if v.Character:FindFirstChild("HumanoidRootPart") ~= nil then
if v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("Humanoid").Health ~= 0 then
local ScreenPoint = Camera:WorldToScreenPoint(v.Character:WaitForChild("HumanoidRootPart", math.huge).Position)
local VectorDistance = (Vector2.new(UserInputService:GetMouseLocation().X, UserInputService:GetMouseLocation().Y) - Vector2.new(ScreenPoint.X, ScreenPoint.Y)).Magnitude
if VectorDistance < MaximumDistance then
Target = v									end									end								end						end				end
else
if v.Character ~= nil then
if v.Character:FindFirstChild("HumanoidRootPart") ~= nil then
if v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("Humanoid").Health ~= 0 then
local ScreenPoint = Camera:WorldToScreenPoint(v.Character:WaitForChild("HumanoidRootPart", math.huge).Position)
local VectorDistance = (Vector2.new(UserInputService:GetMouseLocation().X, UserInputService:GetMouseLocation().Y) - Vector2.new(ScreenPoint.X, ScreenPoint.Y)).Magnitude
if VectorDistance < MaximumDistance then
Target = v
end							end						end					end					end			end		end
return Target
end
UserInputService.InputBegan:Connect(function(Input)
if Input.UserInputType == Enum.UserInputType.MouseButton2 then
Holding = true
end		end)
UserInputService.InputEnded:Connect(function(Input)
if Input.UserInputType == Enum.UserInputType.MouseButton2 then
Holding = false
end		end)
RunService.RenderStepped:Connect(function()
FOVCircle.Position = Vector2.new(UserInputService:GetMouseLocation().X, UserInputService:GetMouseLocation().Y)
FOVCircle.Radius = _G.CircleRadius
FOVCircle.Filled = _G.CircleFilled
FOVCircle.Color = _G.CircleColor
FOVCircle.Visible = _G.CircleVisible
FOVCircle.Radius = _G.CircleRadius
FOVCircle.Transparency = _G.CircleTransparency
FOVCircle.NumSides = _G.CircleSides
FOVCircle.Thickness = _G.CircleThickness
if Holding == true and _G.AimbotEnabled == true then
TweenService:Create(Camera, TweenInfo.new(_G.Sensitivity, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {CFrame = CFrame.new(Camera.CFrame.Position, GetClosestPlayer().Character[_G.AimPart].Position)}):Play()
end		end)	end    })
Section:Button({   Title = "自瞄",	["Content"] = "",  Callback = function()         loadstring(game:HttpGet("https://pastebin.com/raw/gXsy4tYU"))()     end})
Section:Button({   Title = "自瞄ui",	["Content"] = "",  Callback = function()      loadstring(game:HttpGet("https://raw.githubusercontent.com/lIlIlIlIlI24568/114514.IIjjjjiiiallloiia.xxxxg/refs/heads/main/zm"))()    end})
Section:Button({   Title = "自瞄ui2.0",	["Content"] = "",  Callback = function()      loadstring(game:HttpGet("https://raw.githubusercontent.com/lIlIlIlIlI24568/111111/refs/heads/main/%E8%BE%85%E5%8A%A9%E7%9E%84%E5%87%86"))()    end}) 
local Section = SelfishTab:Section({    Title = "x-ESP",    Content = "透视 框架 血条"})
Section:Button({    Title ="框架 血条 射线 准心",  ["Content"] = "依旧fl有 Bug  不过我已经改得非常好了",  Callback = function()   loadstring(game:HttpGet("https://raw.githubusercontent.com/xgomn/143628llllffaaaYXZS.123/refs/heads/main/%E9%80%8F%E8%A7%86%E3%80%82%E6%A1%86%E6%9E%B6"))()ExunysDeveloperESP()     end})
Section:Button({    Title ="血条 射线",  ["Content"] = "",  Callback = function()             local lplr = game.Players.LocalPlayer     local camera = game:GetService("Workspace").CurrentCamera      local CurrentCamera = workspace.CurrentCamera      local worldToViewportPoint = CurrentCamera.worldToViewportPoint     local HeadOff = Vector3.new(0.5, 0)     local LegOff = Vector3.new(0, 3, 0)      local function createBoxEsp(v)      local Box = Drawing.new("Square")       Box.Visible = false      Box.Color = v.TeamColor.Color     Box.Thickness = 3    Box.Transparency = 0    Box.Filled = false    local HealthBar = Drawing.new("Line")    HealthBar.Visible = false    HealthBar.Color = Color3.new(0, 1, 0)    HealthBar.Thickness = 2    local NameTag = Drawing.new("Text")    NameTag.Visible = false    NameTag.Color = Color3.new(1, 1, 1)    NameTag.Size = 9    NameTag.Center = true    NameTag.Outline = true    NameTag.OutlineColor = Color3.new(0, 0, 0)    local DistanceTag = Drawing.new("Text")    DistanceTag.Visible = false    DistanceTag.Color = Color3.new(1, 1, 1)    DistanceTag.Size = 9    DistanceTag.Center = true    DistanceTag.Outline = true    DistanceTag.OutlineColor = Color3.new(0, 0, 0)    local Tracer = Drawing.new("Line")    Tracer.Visible = false    Tracer.Color = v.TeamColor.Color    Tracer.Thickness = 2    game:GetService("RunService").RenderStepped:Connect(function()        if v.Character and v.Character:FindFirstChild("Humanoid") and v.Character:FindFirstChild("HumanoidRootPart") and v ~= lplr and v.Character.Humanoid.Health > 0 then            local Vector, onScreen = camera:worldToViewportPoint(v.Character.HumanoidRootPart.Position)            local RootPart = v.Character.HumanoidRootPart            local Head = v.Character.Head            local RootPosition, RootVisibility = worldToViewportPoint(CurrentCamera, RootPart.Position)            local HeadPosition = worldToViewportPoint(CurrentCamera, Head.Position + HeadOff)            local LegPosition = worldToViewportPoint(CurrentCamera, RootPart.Position - LegOff)            Box.Size = Vector2.new(1000 / RootPosition.Z, HeadPosition.Y - LegPosition.Y)            Box.Position = Vector2.new(RootPosition.X - Box.Size.X / 2, RootPosition.Y - Box.Size.Y / 2)            local health = v.Character.Humanoid.Health / v.Character.Humanoid.MaxHealth            HealthBar.From = Vector2.new(Box.Position.X + Box.Size.X + 5, Box.Position.Y + Box.Size.Y * (1 - health))            HealthBar.To = Vector2.new(Box.Position.X + Box.Size.X + 5, Box.Position.Y + Box.Size.Y)            HealthBar.Color = Color3.new(1 - health, health, 0)            NameTag.Position = Vector2.new(Box.Position.X + Box.Size.X / 2, Box.Position.Y - 20)            NameTag.Text = v.Name            NameTag.Visible = true            DistanceTag.Position = Vector2.new(Box.Position.X + Box.Size.X / 2, Box.Position.Y + Box.Size.Y)            DistanceTag.Text = tostring(math.floor((lplr.Character.HumanoidRootPart.Position - RootPart.Position).Magnitude)) .. "m"            DistanceTag.Visible = true            local lplrHead = lplr.Character:FindFirstChild("Head")            if lplrHead then                local lplrHeadViewport = camera:worldToViewportPoint(lplrHead.Position)            Tracer.From = Vector2.new(lplrHeadViewport.X / 1, lplrHeadViewport.Y / 10)                Tracer.To = Vector2.new(RootPosition.X, RootPosition.Y)            end            if onScreen then                Box.Visible = true                HealthBar.Visible = true                NameTag.Visible = true                DistanceTag.Visible = true                Tracer.Visible = true            else                Box.Visible = false                HealthBar.Visible = false                NameTag.Visible = false                DistanceTag.Visible = false                Tracer.Visible = false            end        else            Box.Visible = false            HealthBar.Visible = false            NameTag.Visible = false            DistanceTag.Visible = false            Tracer.Visible = false        end    end)     end     for i, v in pairs(game.Players:GetChildren()) do    createBoxEsp(v)     end     game.Players.PlayerAdded:Connect(function(v)    createBoxEsp(v)end)        end})
Section:Button({    Title ="人物框架",  ["Content"] = "",  Callback = function()  loadstring(game:HttpGet("https://pastebin.com/raw/bJhnZ1bw"))()       end})
Section:Button({    Title ="人物射线",  ["Content"] = "",  Callback = function()   loadstring(game:HttpGet("https://pastebin.com/raw/iygw9nNf"))()   end}) 
Section:Button({    Title ="框架0.1",  ["Content"] = "",  Callback = function()  loadstring(game:HttpGet("https://pastebin.com/raw/42Vqnapv"))()  end})
Section:Button({	Title = "xgo制作最强Esp",	["Content"] = "", Callback = function()    local Outlines = true         local OutlineColoring = Color3.fromRGB(255, 255, 255)         local OutlineFill = false         local FillOpacity = 1         local FillColoring = Color3.fromRGB(255, 255, 255)        local NameTags = true       local TextFont = Enum.Font.RobotoMono       local NameColor = Color3.fromRGB(255, 255, 255)       local NamePositioning = false              local Folder = Instance.new("Folder", game:GetService("CoreGui"))      Folder.Name = ""            AddOutline = function(Character)   local Highlight = Instance.new("Highlight", Folder)      Highlight.OutlineColor = OutlineColoring   Highlight.Adornee = Character   if OutlineFill == true then       Highlight.FillColor = FillColoring      Highlight.FillTransparency = FillOpacity   else       Highlight.FillTransparency = 1   end         end           AddNameTag = function(Character)   local BGui = Instance.new("BillboardGui", Folder)   local Frame = Instance.new("Frame", BGui)   local TextLabel = Instance.new("TextLabel", Frame)      BGui.Adornee = Character:WaitForChild("Head")   BGui.StudsOffset = Vector3.new(0, 3, 0)   BGui.AlwaysOnTop = true      BGui.Size = UDim2.new(4, 0, 0.5, 0)   Frame.Size = UDim2.new(1, 0, 1, 0)   TextLabel.Size = UDim2.new(1, 0, 1, 0)      Frame.BackgroundTransparency = 1   TextLabel.BackgroundTransparency = 1      TextLabel.Text = Character.Name   TextLabel.Font = TextFont   TextLabel.TextColor3 = NameColor   TextLabel.TextScaled = NamePositioning     end             for i, v in ipairs(game:GetService("Players"):GetPlayers()) do   if v ~= game:GetService("Players").LocalPlayer then       v.CharacterAdded:Connect(function(Character)           if Outlines == true then               AddOutline(Character)           end          if NameTags == true then              AddNameTag(Character)          end       end)              if v.Character then           if Outlines == true then               AddOutline(v.Character)           end           if NameTags == true then               AddNameTag(v.Character)           end       end   end     end          game:GetService("Players").PlayerAdded:Connect(function(Player)   Player.CharacterAdded:Connect(function(Character)       if Outlines == true then           AddOutline(Character)       end       if NameTags == true then           AddNameTag(Character)      end   end) end)	end    })
Section:Button({	Title = "ESP白色",  ["Content"] = "",	Callback = function()      loadstring(game:HttpGet('https://raw.githubusercontent.com/Lucasfin000/SpaceHub/main/UESP'))()  	end    })
Section:Button({	Title = "ESP 外网 电脑可用",  ["Content"] = "",	Callback = function()    loadstring(game:HttpGet('https://raw.githubusercontent.com/ic3w0lf22/Unnamed-ESP/master/UnnamedESP.lua'))()  	end    })
Section:Button({	Title = "ESP 猫头鹰中心 ",  ["Content"] = "逐渐适配手机",	Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/CriShoux/OwlHub/master/OwlHub.txt"))()  	end    })
Section:Button({    Title = "CheatX GUI", ["Content"] = "",	Callback = function() local UILibrary = loadstring(game:HttpGet("https://pastebin.com/raw/V1ca2q9s"))() local MainUI = UILibrary.Load("CheatX - 3008") local Home = MainUI.AddPage("Home") local ESP = loadstring(game:HttpGet("https://kiriot22.com/releases/ESP.lua"))() ESP:Toggle(true) ESP.Players = false ESP.Tracers = false ESP.Boxes = false ESP.Names = false local function notify(message) game.StarterGui:SetCore("SendNotification", { Title = "CheatX"; Text = message; Icon = ""; Duration = 5; }) end local function teleportToItem(itemName) local donesearch = false for i,v in pairs(game:GetService("Workspace").GameObjects.Physical.Items:GetDescendants()) do if v.Name == "Root" and v.Parent.Name == itemName then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame donesearch = true break end end if donesearch == false then notify("Item position not defined") end end ESP:AddObjectListener(game:GetService("Workspace").GameObjects.Physical.Items, { Type = "Model", Color = Color3.fromRGB(0, 119, 255), IsEnabled = "itemESP" }) ESP:AddObjectListener(game:GetService("Workspace").GameObjects.Physical.Employees, { Type = "Model", CustomName = "Employee", Color = Color3.fromRGB(255, 0, 4), IsEnabled = "employeeToggle" }) Home.AddButton("Unlock Third Person", function() game.Players.LocalPlayer.CameraMaxZoomDistance = 50 game.Players.LocalPlayer.CameraMode = Enum.CameraMode.Classic end) Home.AddToggle("ESP", false, function(Value) ESP.Boxes = Value end) Home.AddToggle("ESP Tracers", false, function(Value) ESP.Tracers = Value end) Home.AddToggle("ESP Nametags", false, function(Value) ESP.Names = Value end) Home.AddToggle("Show Players", false, function(Value) ESP.Players = Value end) Home.AddToggle("Show Employees", false, function(Value) ESP.employeeToggle = Value end) Home.AddToggle("Show Items", false, function(Value) ESP.itemESP = Value end) local Teleports = MainUI.AddPage("Teleports") Teleports.AddButton("Teleport to Hotdog", function() teleportToItem("Hotdog") end) Teleports.AddButton("Teleport to Pizza", function() teleportToItem("Pizza") end) Teleports.AddButton("Teleport to Burger", function() teleportToItem("Burger") end) Teleports.AddButton("Teleport to Medkit", function() teleportToItem("Medkit") end) 	end })
Section:Slider({    ["Title"] = "Esp最大距离",    ["Content"] = "距离",    ["Min"] = 1,    ["Max"] = 100000,    ["Increment"] = 1,    ["Default"] = 100000,Color = Color3.fromRGB(255,255,255),    ["Callback"] = function(Value)         getgenv().mptespdistance = Value    end    })
Section:Slider({    ["Title"] = "Esp厚度",    ["Content"] = "厚度",    ["Min"] = 1,    ["Max"] = 30,    ["Increment"] = 1,    ["Default"] = 2,Color = Color3.fromRGB(255,255,255),    ["Callback"] = function(Value)     getgenv().mptespthickness = Value     end    })
Section:Button({   Title = "xgo3d人物射线",	["Content"] = "", Callback = function()         loadstring(game:HttpGet("https://raw.githubusercontent.com/GTAFAW/goto/refs/heads/main/xgo3d%E4%BA%BA%E7%89%A9%E5%B0%84%E7%BA%BF.lua"))()    end}) 
Section:Button({   Title = "外网框架", ["Content"] = "",	Callback = function()         loadstring(game:HttpGet("https://raw.githubusercontent.com/yzeedw/Mortalv2-main/refs/heads/main/UNIVERSAL%20AIMBOT%20V2"))()    end}) 
Section:Button({   Title = "情云同款自瞄",	["Content"] = "可以调整大小，绘制距离 fl目前有bug", Callback = function()	    local fov = 100 local smoothness = 10 local crosshairDistance = 5 local RunService = game:GetService("RunService") local UserInputService = game:GetService("UserInputService") local Players = game:GetService("Players") local Cam = game.Workspace.CurrentCamera local FOVring = Drawing.new("Circle") FOVring.Visible = true FOVring.Thickness = 2 FOVring.Color = Color3.fromRGB(0, 255, 0) FOVring.Filled = false FOVring.Radius = fov FOVring.Position = Cam.ViewportSize / 2 local Player = Players.LocalPlayer local PlayerGui = Player:WaitForChild("PlayerGui") local ScreenGui = Instance.new("ScreenGui") ScreenGui.Name = "FovAdjustGui" ScreenGui.Parent = PlayerGui local Frame = Instance.new("Frame") Frame.Name = "MainFrame" Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30) Frame.BorderColor3 = Color3.fromRGB(128, 0, 128) Frame.BorderSizePixel = 2 Frame.Position = UDim2.new(0.3, 0, 0.3, 0) Frame.Size = UDim2.new(0.4, 0, 0.4, 0) Frame.Active = true Frame.Draggable = true Frame.Parent = ScreenGui local MinimizeButton = Instance.new("TextButton") MinimizeButton.Name = "MinimizeButton" MinimizeButton.Text = "-" MinimizeButton.TextColor3 = Color3.fromRGB(255, 255, 255) MinimizeButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50) MinimizeButton.Position = UDim2.new(0.9, 0, 0, 0) MinimizeButton.Size = UDim2.new(0.1, 0, 0.1, 0) MinimizeButton.Parent = Frame local isMinimized = false MinimizeButton.MouseButton1Click:Connect(function() isMinimized = not isMinimized if isMinimized then Frame:TweenSize(UDim2.new(0.1, 0, 0.1, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.3, true) MinimizeButton.Text = "+" else Frame:TweenSize(UDim2.new(0.4, 0, 0.4, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.3, true) MinimizeButton.Text = "-" end end) local FovLabel = Instance.new("TextLabel") FovLabel.Name = "FovLabel" FovLabel.Text = "自瞄范围" FovLabel.TextColor3 = Color3.fromRGB(255, 255, 255) FovLabel.BackgroundTransparency = 1 FovLabel.Position = UDim2.new(0.1, 0, 0.1, 0) FovLabel.Size = UDim2.new(0.8, 0, 0.2, 0) FovLabel.Parent = Frame local FovSlider = Instance.new("TextBox") FovSlider.Name = "FovSlider" FovSlider.Text = tostring(fov) FovSlider.TextColor3 = Color3.fromRGB(255, 255, 255) FovSlider.BackgroundColor3 = Color3.fromRGB(50, 50, 50) FovSlider.Position = UDim2.new(0.1, 0, 0.3, 0) FovSlider.Size = UDim2.new(0.8, 0, 0.2, 0) FovSlider.Parent = Frame local SmoothnessLabel = Instance.new("TextLabel") SmoothnessLabel.Name = "SmoothnessLabel" SmoothnessLabel.Text = "自瞄平滑度" SmoothnessLabel.TextColor3 = Color3.fromRGB(255, 255, 255) SmoothnessLabel.BackgroundTransparency = 1 SmoothnessLabel.Position = UDim2.new(0.1, 0, 0.5, 0) SmoothnessLabel.Size = UDim2.new(0.8, 0, 0.2, 0) SmoothnessLabel.Parent = Frame local SmoothnessSlider = Instance.new("TextBox") SmoothnessSlider.Name = "SmoothnessSlider" SmoothnessSlider.Text = tostring(smoothness) SmoothnessSlider.TextColor3 = Color3.fromRGB(255, 255, 255) SmoothnessSlider.BackgroundColor3 = Color3.fromRGB(50, 50, 50) SmoothnessSlider.Position = UDim2.new(0.1, 0, 0.7, 0) SmoothnessSlider.Size = UDim2.new(0.8, 0, 0.2, 0) SmoothnessSlider.Parent = Frame local CrosshairDistanceLabel = Instance.new("TextLabel") CrosshairDistanceLabel.Name = "CrosshairDistanceLabel" CrosshairDistanceLabel.Text = "自瞄预判距离" CrosshairDistanceLabel.TextColor3 = Color3.fromRGB(255, 255, 255) CrosshairDistanceLabel.BackgroundTransparency = 1 CrosshairDistanceLabel.Position = UDim2.new(0.1, 0, 0.9, 0) CrosshairDistanceLabel.Size = UDim2.new(0.8, 0, 0.2, 0) CrosshairDistanceLabel.Parent = Frame local CrosshairDistanceSlider = Instance.new("TextBox") CrosshairDistanceSlider.Name = "CrosshairDistanceSlider" CrosshairDistanceSlider.Text = tostring(crosshairDistance) CrosshairDistanceSlider.TextColor3 = Color3.fromRGB(255, 255, 255) CrosshairDistanceSlider.BackgroundColor3 = Color3.fromRGB(50, 50, 50) CrosshairDistanceSlider.Position = UDim2.new(0.1, 0, 1.1, 0) CrosshairDistanceSlider.Size = UDim2.new(0.8, 0, 0.2, 0) CrosshairDistanceSlider.Parent = Frame local targetCFrame = Cam.CFrame local function updateDrawings() local camViewportSize = Cam.ViewportSize FOVring.Position = camViewportSize / 2 FOVring.Radius = fov end local function onKeyDown(input) if input.KeyCode == Enum.KeyCode.Delete then RunService:UnbindFromRenderStep("FOVUpdate") FOVring:Remove() end end UserInputService.InputBegan:Connect(onKeyDown) local function getClosestPlayerInFOV(trg_part) local nearest = nil local last = math.huge local playerMousePos = Cam.ViewportSize / 2 for _, player in ipairs(Players:GetPlayers()) do if player ~= Players.LocalPlayer then local part = player.Character and player.Character:FindFirstChild(trg_part) if part then local ePos, isVisible = Cam:WorldToViewportPoint(part.Position) local distance = (Vector2.new(ePos.x, ePos.y) - playerMousePos).Magnitude if distance < last and isVisible and distance < fov then last = distance nearest = player end end end end return nearest end RunService.RenderStepped:Connect(function() updateDrawings() local closest = getClosestPlayerInFOV("Head") if closest and closest.Character:FindFirstChild("Head") then local targetCharacter = closest.Character local targetHead = targetCharacter.Head local targetRootPart = targetCharacter:FindFirstChild("HumanoidRootPart") local isMoving = targetRootPart.Velocity.Magnitude > 0.1 local targetPosition if isMoving then targetPosition = targetHead.Position + (targetHead.CFrame.LookVector * crosshairDistance) else targetPosition = targetHead.Position end targetCFrame = CFrame.new(Cam.CFrame.Position, targetPosition) else targetCFrame = Cam.CFrame end Cam.CFrame = Cam.CFrame:Lerp(targetCFrame, 1 / smoothness) end) FovSlider.FocusLost:Connect(function(enterPressed, inputThatCausedFocusLoss) if enterPressed then local newFov = tonumber(FovSlider.Text) if newFov then fov = newFov else FovSlider.Text = tostring(fov) end end end) SmoothnessSlider.FocusLost:Connect(function(enterPressed, inputThatCausedFocusLoss) if enterPressed then local newSmoothness = tonumber(SmoothnessSlider.Text) if newSmoothness then smoothness = newSmoothness else SmoothnessSlider.Text = tostring(smoothness) end end end) CrosshairDistanceSlider.FocusLost:Connect(function(enterPressed, inputThatCausedFocusLoss) if enterPressed then local newCrosshairDistance = tonumber(CrosshairDistanceSlider.Text) if newCrosshairDistance then crosshairDistance = newCrosshairDistance else CrosshairDistanceSlider.Text = tostring(crosshairDistance) end end end)    end})
Section:Button({   Title ="小go宙斯二改汉化自瞄",  ["Content"] = "",  Callback = function()      loadstring(game:HttpGet("https://pastebin.com/raw/0K2bLjJ5"))()    end})
local Section = SelfishTab:Section({    Title = "x-范围",    Content = "范围设置"})
Section:Button({   Title = "范围",  ["Content"] = "范围20",	Callback = function()
_G.HeadSize = 20
_G.Disabled = true
game:GetService('RunService').RenderStepped:connect(function()
if _G.Disabled then
for i,v in next, game:GetService('Players'):GetPlayers() do
if v.Name ~= game:GetService('Players').LocalPlayer.Name then
pcall(function()
v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
v.Character.HumanoidRootPart.Transparency = 0.7
v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really blue")
v.Character.HumanoidRootPart.Material = "Neon"
v.Character.HumanoidRootPart.CanCollide = false
end)    end    end    end    end)    end})
Section:Button({   Title = "中级范围",  ["Content"] = "范围100",	Callback = function()
_G.HeadSize = 100
_G.Disabled = true
game:GetService('RunService').RenderStepped:connect(function()
if _G.Disabled then
for i,v in next, game:GetService('Players'):GetPlayers() do
if v.Name ~= game:GetService('Players').LocalPlayer.Name then
pcall(function()
v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
v.Character.HumanoidRootPart.Transparency = 0.7
v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really blue")
v.Character.HumanoidRootPart.Material = "Neon"
v.Character.HumanoidRootPart.CanCollide = false
end)    end    end    end    end)    end})
Section:Button({   Title = "高级范围",  ["Content"] = "范围500",	Callback = function()
_G.HeadSize = 500
_G.Disabled = true
game:GetService('RunService').RenderStepped:connect(function()
if _G.Disabled then
for i,v in next, game:GetService('Players'):GetPlayers() do
if v.Name ~= game:GetService('Players').LocalPlayer.Name then
pcall(function()
v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
v.Character.HumanoidRootPart.Transparency = 0.7
v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really blue")
v.Character.HumanoidRootPart.Material = "Neon"
v.Character.HumanoidRootPart.CanCollide = false
end)    end    end    end    end)    end})
Section:TextInput({	["Title"]= "范围修改",	["Place Holder Text"] = "数值",  ["Clear Text On Focus"] = false,	Callback = function(Value) 	  print(value)
_G.HeadSize = value
_G.Disabled = true
game:GetService('RunService').RenderStepped:connect(function()
if _G.Disabled then
for i,v in next, game:GetService('Players'):GetPlayers() do
if v.Name ~= game:GetService('Players').LocalPlayer.Name then
pcall(function()
v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
v.Character.HumanoidRootPart.Transparency = 0.7
v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really blue")
v.Character.HumanoidRootPart.Material = "Neon"
v.Character.HumanoidRootPart.CanCollide = false
end)    end    end    end    end)    end})
local Section = PropsTab:Section({    Title = "x-道具1",    Content = "武器类"})
Section:Button({   Title = "普通剑",	  ["Content"] = "",  Callback = function()     local item = game:GetObjects("rbxassetid://8517347614")[1]    item.Parent = game.Players.LocalPlayer.Backpack  	end    })
Section:Button({   Title = "彩虹剑",	  ["Content"] = "",  Callback = function()     loadstring(game:HttpGet("https://pastebin.com/raw/FW0zvFkH"))()	   end    })
Section:Button({   Title = "我的世界钻石剑",	  ["Content"] = "",  Callback = function()     local item = game:GetObjects("rbxassetid://5138636091")[1]    item.Parent = game.Players.LocalPlayer.Backpack  	end    })
Section:Button({   Title = "MM2小刀",	  ["Content"] = "",  Callback = function()    local item = game:GetObjects("rbxassetid://3576051114")[1]    item.Parent = game.Players.LocalPlayer.Backpack  	end    })
Section:Button({   Title = "金属棒球棍",	  ["Content"] = "",  Callback = function()     local Item = game:GetObjects("rbxassetid://12550781805")[1]    Item.Parent = game.Players.LocalPlayer.Backpack 	end    })
Section:Button({   Title = "斧子",	  ["Content"] = "",  Callback = function()     local item = game:GetObjects("rbxassetid://9255749565")[1]    item.Parent = game.Players.LocalPlayer.Backpack  	end    })
Section:Button({   Title = "锤子",	  ["Content"] = "",  Callback = function()    local item = game:GetObjects("rbxassetid://1380979171")[1]    item.Parent = game.Players.LocalPlayer.Backpack  	end    })
Section:Button({   Title = "核弹",	  ["Content"] = "",  Callback = function()     local item = game:GetObjects("rbxassetid://10694662894")[1]    item.Parent = game.Players.LocalPlayer.Backpack  	end    })
Section:Button({   Title = "普通剪刀",	  ["Content"] = "",  Callback = function()     local item = game:GetObjects("rbxassetid://1305578915")[1]    item.Parent = game.Players.LocalPlayer.Backpack  	end    })
Section:Button({   Title = "撬棍",	  ["Content"] = "",  Callback = function()     local item = game:GetObjects("rbxassetid://134950292")[1]    item.Parent = game.Players.LocalPlayer.Backpack  	end    })
Section:Button({   Title = "龙骨炮",	  ["Content"] = "",  Callback = function()     local item = game:GetObjects("rbxassetid://10748604184")[1]    item.Parent = game.Players.LocalPlayer.Backpack  	end    })
Section:Button({   Title = "武士刀",	  ["Content"] = "",  Callback = function()     local item = game:GetObjects("rbxassetid://8668934198")[1]   item.Parent = game.Players.LocalPlayer.Backpack 	end    })
Section:Button({   Title = "经典剑",	  ["Content"] = "",  Callback = function()     local item = game:GetObjects("rbxassetid://47433")[1]    item.Parent = game.Players.LocalPlayer.Backpack  	end    })
Section:Button({   Title = "火箭筒",	  ["Content"] = "",  Callback = function()       		loadstring(game:HttpGet(("https://raw.githubusercontent.com/persopoiu/scripts/main/rushbazooka.lua")))()  	end    })
Section:Button({   Title = "AK47",	  ["Content"] = "",  Callback = function()       		loadstring(game:HttpGet(("https://raw.githubusercontent.com/Mye123/Roblox-Scripts/master/AK-47.lua")))()  	end    })
Section:Button({   Title = "seek枪",	  ["Content"] = "",  Callback = function()       		loadstring(game:HttpGet(("https://raw.githubusercontent.com/persopoiu/scripts/main/seekgun.lua")))()  	end    })
Section:Button({   Title = "M249",	  ["Content"] = "",  Callback = function()       		loadstring(game:HttpGet(("https://pastebin.com/raw/cJWSByci")))()  	end    })
Section:Button({   Title = "枪",	  ["Content"] = "",  Callback = function()      loadstring(game:HttpGet('https://pastebin.com/raw/GWdRYDWk'))()  	end    })
Section:Button({   Title = "子空间绊雷",	  ["Content"] = "",  Callback = function()     loadstring(game:HttpGet(("https://pastebin.com/raw/vMpNR73S")))()  	end    })
Section:Button({   Title = "香蕉枪", ["Content"] = "",  Callback = function()   loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/BananaGunByNerd.lua"))()   end    })
Section:Button({   Title = "照明大炮", ["Content"] = "",  Callback =function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Lightning%20Cannon"))()   end    })
Section:Button({   Title = "迷你枪", ["Content"] = "",  Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Minigun"))()   end    })
Section:Button({   Title = "禁止锤子",  ["Content"] = "",  Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Neptunian%20V"))()  end    })
Section:Button({   Title = "剑",["Content"] = "",  Callback = function()    loadstring(game:HttpGet("https://pastebin.com/raw/QTnWUxB7"))()   end    })
Section:Button({   Title = "步枪", ["Content"] = "",  Callback = function()   loadstring(game:HttpGet("https://pastebin.com/raw/g6B7EKez"))()  end    })
local Section = PropsTab:Section({    Title = "x-道具2",    Content = "食品 玩偶 类"})
Section:Button({   Title ="召唤一辆小汽车",      ["Content"] = "",  Callback = function()     local Object = game:GetObjects("rbxassetid://16725966639")[1]Object.Parent = game.Workspace        Object:PivotTo(game.Players.LocalPlayer.Character:GetPivot())    end})
Section:Button({   Title = "天使",    ["Content"] = "",  Callback = function()    loadstring(game:HttpGet("https://pastebin.com/raw/RaXbiByH"))()  end})
Section:Button({   Title ="DOORS骷髅钥匙",      ["Content"] = "",  Callback = function()     local item = game:GetObjects("rbxassetid://11697889137")[1]item.Parent = game.Players.LocalPlayer.Backpack    end})
Section:Button({   Title = "黑洞",	  ["Content"] = "",  Callback = function()       		loadstring(game:HttpGet(("https://raw.githubusercontent.com/iimateiYT/Scripts/main/Black%20Hole.lua")))()  	end    })
Section:Button({   Title = "魔鬼辣火腿肠",	  ["Content"] = "",  Callback = function()       		loadstring(game:HttpGet(("https://raw.githubusercontent.com/sharksharksharkshark/musical-pancake/main/huo.txt")))()  	end    })
Section:Button({   Title = "气球",	  ["Content"] = "",  Callback = function()         local Item = game:GetObjects("rbxassetid://844258278")[1] Item.Parent = game.Players.LocalPlayer.Backpack  	end    })
Section:Button({   Title = "普通书",	  ["Content"] = "",  Callback = function()     local item = game:GetObjects("rbxassetid://139194324")[1]    item.Parent = game.Players.LocalPlayer.Backpack  	end    })
Section:Button({   Title = "手机",	  ["Content"] = "",  Callback = function()     local item = game:GetObjects("rbxassetid://4919665667")[1]    item.Parent = game.Players.LocalPlayer.Backpack  	end    })
Section:Button({   Title = "油漆",	  ["Content"] = "",  Callback = function()     local item = game:GetObjects("rbxassetid://1287005601")[1]    item.Parent = game.Players.LocalPlayer.Backpack  	end    })
Section:Button({   Title = "Stop标志",	  ["Content"] = "",  Callback = function()     local item = game:GetObjects("rbxassetid://1305561850")[1]    item.Parent = game.Players.LocalPlayer.Backpack  	end    })
Section:Button({   Title = "钱/robux",	  ["Content"] = "",  Callback = function()     local item = game:GetObjects("rbxassetid://78678939")[1]    item.Parent = game.Players.LocalPlayer.Backpack  	end    })
Section:Button({   Title = "摄影机",	  ["Content"] = "",  Callback = function()     local item = game:GetObjects("rbxassetid://9239732180")[1]    item.Parent = game.Players.LocalPlayer.Backpack  	end    })
Section:Button({   Title = "牌子",	  ["Content"] = "",  Callback = function()    local item = game:GetObjects("rbxassetid://6752274751")[1]    item.Parent = game.Players.LocalPlayer.Backpack  	end    })
Section:Button({   Title = "手电",	  ["Content"] = "",  Callback = function()     local item = game:GetObjects("rbxassetid://11242492137")[1]    item.Parent = game.Players.LocalPlayer.Backpack  	end    })
Section:Button({   Title = "水瓶",	  ["Content"] = "",  Callback = function()     local item = game:GetObjects("rbxassetid://8678380361")[1]   item.Parent = game.Players.LocalPlayer.Backpack  	end    })
Section:Button({   Title = "油漆桶",	  ["Content"] = "",  Callback = function()         local Item = game:GetObjects("rbxassetid://82578488")[1] Item.Parent = game.Players.LocalPlayer.Backpack  	end    })
Section:Button({   Title = "灯笼",	  ["Content"] = "",  Callback = function()    local item = game:GetObjects("rbxassetid://7301610554")[1]    item.Parent = game.Players.LocalPlayer.Backpack 	end    })
Section:Button({   Title = "火把",	  ["Content"] = "",  Callback = function()     local item = game:GetObjects("rbxassetid://3499523244")[1]    item.Parent = game.Players.LocalPlayer.Backpack 	end    })
Section:Button({   Title = "魔法书",	  ["Content"] = "",  Callback = function()     loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Magic%20Book"))()  	end    })
Section:Button({   Title = "screech抱枕 pss~",	  ["Content"] = "",  Callback = function()       		loadstring(game:HttpGet(("https://pastebin.com/raw/W6LhkY6r")))()  	end    })
Section:Button({   Title = "神圣手掌",	  ["Content"] = "",  Callback = function()     loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Godly%20Hand"))()  	end    })
Section:Button({   Title = "夜视仪",	  ["Content"] = "",  Callback = function()       _G.OnShop = trueloadstring(game:HttpGet('https://raw.githubusercontent.com/DeividComSono/Scripts/main/Scanner.lua'))()    end})    
Section:Button({   Title = "杰夫玩偶",	  ["Content"] = "",  Callback = function()       		local tool = game:GetObjects("rbxassetid://13069619857")[1]      tool.Parent = game.Players.LocalPlayer.Backpack  	end    })
Section:Button({   Title = "Screech玩偶",	  ["Content"] = "",  Callback = function()     local item = game:GetObjects("rbxassetid://12387752981")[1]    item.Parent = game.Players.LocalPlayer.Backpack  	end    })
Section:Button({   Title = "培根头(???)",	  ["Content"] = "",  Callback = function()     local item = game:GetObjects("rbxassetid://651205590")[1]    item.Parent = game.Players.LocalPlayer.Backpack  	end    })
Section:Button({   Title = "恐惧玩偶",	  ["Content"] = "",  Callback = function()     local dread=game:GetObjects("rbxassetid://13071801863")[1];dread.Parent=game.Players.LocalPlayer.Backpack  	end    })
Section:Button({   Title = "Seek玩偶",	  ["Content"] = "",  Callback = function()     loadstring(game:HttpGet(("https://pastebin.com/raw/e35wGTze")))() 	end    })
Section:Button({   Title = "巧克力棒",	  ["Content"] = "",  Callback = function()     loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Chocolate%20Bar%20Script"))()  	end    })
Section:Button({   Title = "蛋糕",	  ["Content"] = "",  Callback = function()     local tool = gaetObjects("rbxassetid://13175107839")[1]     tool.Parent = game.Players.LocalPlayer.Backpack    tool.Activated:Connect(function()    tool.Eat:play()    tool.Cake:Destroy()    task.wait(1)    tool.yay:Play()    end)  	end    })
Section:Button({   Title = "冰淇淋",	  ["Content"] = "",  Callback = function()         local Item = game:GetObjects("rbxassetid://110887863")[1] Item.Parent = game.Players.LocalPlayer.Backpack   	end    })
Section:Button({   Title = "蛋糕",	  ["Content"] = "",  Callback = function()     local item = game:GetObjects("rbxassetid://1523953726")[1]    item.Parent = game.Players.LocalPlayer.Backpack  	end    })
Section:Button({   Title = "汉堡",	  ["Content"] = "",  Callback = function()     local item = game:GetObjects("rbxassetid://100522628")[1]    item.Parent = game.Players.LocalPlayer.Backpack  	end    })
Section:Button({   Title = "Prime(看起来像某一种饮料)",	  ["Content"] = "",  Callback = function()     local item = game:GetObjects("rbxassetid://12691961635")[1]    item.Parent = game.Players.LocalPlayer.Backpack  	end    })
Section:Button({   Title = "绷带",	  ["Content"] = "",  Callback = function()     local item = game:GetObjects("rbxassetid://9956323407")[1]    item.Parent = game.Players.LocalPlayer.Backpack  	end    })
Section:Button({   Title = "乐事薯片",	  ["Content"] = "",  Callback = function()     local item = game:GetObjects("rbxassetid://11979782807")[1]    item.Parent = game.Players.LocalPlayer.Backpack  	end    })
Section:Button({   Title = "普通蜡烛",	  ["Content"] = "",  Callback = function()     local item = game:GetObjects("rbxassetid://11222116941")[1]    item.Parent = game.Players.LocalPlayer.Backpack  	end    })
Section:Button({   Title = "咖啡",	  ["Content"] = "",  Callback = function()     local item = game:GetObjects("rbxassetid://5933367192")[1]    item.Parent = game.Players.LocalPlayer.Backpack  	end    }) 
local Section = PropsTab:Section({    Title = "x-道具3",    Content = "FE 变身 特效类"})
Section:Button({   Title ="火焰特效",      ["Content"] = "",  Callback = function()     local Object = game:GetObjects("rbxassetid://16408664901")[1]     Object.Parent = game.Workspace       Object:PivotTo(game.Players.LocalPlayer.Character:GetPivot())     end})
Section:Button({   Title = "没有头部",  Callback = function(bool)    getgenv().game.Players.LocalPlayer.Character.Head.Transparency = 1    getgenv().game.Players.LocalPlayer.Character.Head.face:Destroy()    getgenv().game.Players.LocalPlayer.Character.Head.face:Destroy()  end})
Section:Button({   Title = "大飞机",    ["Content"] = "",  Callback = function()      loadstring(game:HttpGet("https://pastebin.com/raw/EJS2Fde3"))()  end})
Section:Button({   Title = "巫毒娃娃",    ["Content"] = "",  Callback = function()    loadstring(game:HttpGet("https://pastebin.com/raw/xqCCqeha"))()  end})
Section:Button({   Title = "FE C00lgui",     ["Content"] = "",  Callback = function()   loadstring(game:GetObjects("rbxassetid://8127297852")[1].Source)()   end    })
Section:Button({   Title = "FE 1x1x1x1",     ["Content"] = "",  Callback = function()   loadstring(game:HttpGet(('https://pastebin.com/raw/JipYNCht')))()    end    })
Section:Button({   Title = "FE大长腿",     ["Content"] = "",  Callback = function()    loadstring(game:HttpGet('https://gist.githubusercontent.com/1BlueCat/7291747e9f093555573e027621f08d6e/raw/23b48f2463942befe19d81aa8a06e3222996242c/FE%2520Da%2520Feets'))()    end    })
Section:Button({   Title = "FE用头",     ["Content"] = "",  Callback = function()    loadstring(game:HttpGet("https://pastebin.com/raw/BK4Q0DfU"))()   end    })
Section:Button({   Title = "鼠标",     ["Content"] = "",  Callback = function()    loadstring(game:HttpGet(('https://pastefy.ga/V75mqzaz/raw')))()    end    })
Section:Button({   Title = "自动解体",     ["Content"] = "",  Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/Xingtaiduan/Script/refs/heads/main/Content/sishen"))()    end    })
Section:Button({   Title = "超长**",     ["Content"] = "",  Callback = function()   loadstring(game:HttpGet("https://pastebin.com/raw/ESWSFND7"))()   end    })
Section:Button({   Title = "操人",     ["Content"] = "",  Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoYunCN/UWU/main/AHAJAJAKAK/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A.LUA"))()    end    })
Section:Button({   Title = "FE动画中心",     ["Content"] = "",  Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/GamingScripter/Animation-Hub/main/Animation%20Gui"))()    end    })
Section:Button({   Title = "FE",     ["Content"] = "",  Callback = function()    loadstring(game:HttpGet('https://pastefy.ga/a7RTi4un/raw'))()    end    })
Section:Button({   Title = "完了",     ["Content"] = "",  Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Linked%20Sword"))()   end    })
Section:Button({   Title = "牙帽战斗机",     ["Content"] = "",  Callback = function()   loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Ban%20Hammer"))()   end    })
Section:Button({   Title = "NeptunianV",     ["Content"] = "",  Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Krystal%20Dance"))()    end    })
Section:Button({   Title = "克里斯塔尔舞蹈",     ["Content"] = "",  Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Good%20Cop%20Bad%20Cop"))()     end    })
Section:Button({   Title = "Dearsister",     ["Content"] = "",  Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Dearsister"))()    end    })
Section:Button({   Title = "工作室假人",     ["Content"] = "",  Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Studio%20Dummy"))()    end    })
Section:Button({   Title = "木偶大师",     ["Content"] = "",  Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Puppet%20Master"))()    end    })
Section:Button({   Title = "虐待狂的种族传播者",     ["Content"] = "",  Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Sadist%20Genocider"))()    end    })
Section:Button({   Title = "星夹具",     ["Content"] = "",  Callback = function()   loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Star%20Glitcher"))()       end    })
Section:Button({   Title = "狙击手",     ["Content"] = "",  Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Sniper"))()    end    })
Section:Button({   Title = "复仇者",     ["Content"] = "",  Callback = function()   loadstring(game:HttpGet(('https://pastefy.ga/iGyVaTvs/raw')))()    end    })
Section:Button({   Title = "怪物",     ["Content"] = "",  Callback = function()    loadstring(game:HttpGetAsync("https://pastebin.com/raw/jfryBKds"))()   end    })
Section:Button({   Title = "警察",     ["Content"] = "",  Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Good%20Cop%20Bad%20Cop"))() end    })
Section:Button({   Title = "琦玉",     ["Content"] = "",  Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/Xingtaiduan/Script/refs/heads/main/FE/Saitama"))()  end    })
Section:Button({   Title = "FE变玩家",     ["Content"] = "",  Callback = function()    loadstring(game:HttpGet("https://pastebin.com/raw/XR4sGcgJ"))()  end    })
Section:Button({   Title = "FE猫娘R63",     ["Content"] = "",  Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Pendulum%20Hub%20V5.lua"))()   end    })
Section:Button({   Title = "变身**去操人",     ["Content"] = "",  Callback = function()    loadstring(game:HttpGet('https://raw.githubusercontent.com/LemonSquizerr/Universal-FE/refs/heads/main/Leaker%20v2'))()   end    })
local Section = HorrorTab:Section({    Title = "x-DOORS",    Content = "恐怖-DOORS"})
Section:Button({   Title = "小go制作",    ["Content"] = "",  Callback = function()    loadstring(game:HttpGet(("https://raw.githubusercontent.com/lIlIlIlIlI24568/114514.IIjjjjiiiallloiia.xxxxg/refs/heads/main/DOORS%E9%BE%99%E6%94%B9")))()    end})
Section:Button({   Title = "zs lll 2 ",    ["Content"] = "卡密:nrty",  Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/zuohongjian/bjb/main/ZS%20III"))()    end})
Section:Button({   Title = "FLOOR2",    ["Content"] = "",  Callback = function()    loadstring(game:HttpGet("https://github.com/DocYogurt/Main/raw/main/Scripts/DF2RW.lua"))()    end})
Section:Button({   Title =  "AND已汉化 推荐配合穿墙",    ["Content"] = "",  Callback = function()  loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\54\53\84\119\84\56\106\97"))()    end})
Section:Button({   Title =  "小go汉化版",   ["Content"] = "",  Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/GTAFAW/goto/refs/heads/main/xgo%20%E4%B8%AD%E6%96%87%E7%89%88%20MS%20DOORS.lua"))()    end})
Section:Button({   Title =  "room自动走",   ["Content"] = "",  Callback = function()    loadstring(game:HttpGet("https://scriptblox.com/raw/DOORS-Auto-A1000-9285"))()    end})
Section:Button({   Title = "xgo喜欢用",    ["Content"] = "",  Callback = function()   loadstring(game:HttpGet('https://rawscripts.net/raw/DOORS-FFJ-Hub-11365'))()   end})
Section:Dropdown({    ["Title"] = "脚本模式",   ["Multi"] = false,    ["Options"] = {"硬核模式", "硬核模式重置", "不可能模式", "Oof的不可能模式", "超级困难模式", "混乱模式", "EndlessDoors模式", "碎片模式", "管理员恶搞模式", "疯狂模式", "Plamen6789的硬核模式", "NAUTIC的硬核模式", "恐怖模式", "恶搞模式", ""},    ["Default"] = {"无"},    ["Place Holder Text"] = "选择选项",    ["Callback"] = function(a)        if a == "硬核模式" then    loadstring(game:HttpGet(("https://pastebin.com/raw/80Fi9ZaJ"),true))()    elseif a == "硬核模式重置" then    loadstring(game:HttpGet(("https://pastebin.com/raw/tufDF1vi"),true))()    elseif a == "不可能模式" then    loadstring(game:HttpGet(("https://pastebin.com/raw/YTbbweA8"),true))()    elseif a == "超级困难模式" then    loadstring(game:HttpGet(("https://pastebin.com/raw/8M9WjLKu"),true))()    elseif a == "混乱模式" then    loadstring(game:HttpGet('https://raw.githubusercontent.com/HollowedOutMods/MayhemMode/main/loader.lua'))()    elseif a == "EndlessDoors模式" then    game.SoundService.AmbientReverb = "City"           loadstring(game:HttpGet("https://raw.githubusercontent.com/check78/worldcuuuup/main/Script.lua"))()              loadstring(game:HttpGet("https://raw.githubusercontent.com/check78/worldcuuuup/main/ScriptNoAchievements.txt"))()             loadstring(game:HttpGet("https://raw.githubusercontent.com/check78/worldcuuuup/main/seekeye.lua"))()             loadstring(game:HttpGet("https://raw.githubusercontent.com/check78/worldcuuuup/main/seekmodel.lua"))()             loadstring(game:HttpGet("https://raw.githubusercontent.com/check78/worldcuuuup/main/VictrolaRecreation.txt"))()            loadstring(game:HttpGet("https://raw.githubusercontent.com/check78/worldcuuuup/main/MusicReplace.txt"))()             loadstring(game:HttpGet("https://raw.githubusercontent.com/check78/Entities/main/DeathSound.txt"))()    elseif a == "碎片模式" then    loadstring(game:HttpGet("https://raw.githubusercontent.com/Potato032/Doors-Fragmented-Mode/main/ScriptDontShareItsOnDC.txt"))()    elseif a == "" then    local CoreGui = game:GetService("StarterGui")                            CoreGui:SetCore("SendNotification", {    Title = "xxxxgo",    Text = "选的空白是干什么？点错了吗？",    Duration = 2, })    elseif a == "管理员恶搞模式" then    Loadstring(game:HttpGet(("https://pastebin.com/raw/YgC1rSfw"),true))()    elseif a == "疯狂模式" then    loadstring(game:HttpGet('https://raw.githubusercontent.com/MuhXd/DoorSuff/main/DoorsModes/HardMode(Multplayer%2CProtected).lua'))()    elseif a == "Plamen6789的硬核模式" then    loadstring(game:HttpGet('https://raw.githubusercontent.com/plamen6789/HardcoreScriptDOORS/main/HardcoreModeScript'))()    elseif a == "NAUTIC的硬核模式" then    loadstring(game:HttpGet("https://glot.io/snippets/gp5pu59o7f/raw"))()    elseif a == "恐怖模式" then    loadstring(game:HttpGet(("https://pastebin.com/raw/AriSD2rK"),true))()    elseif a == "恶搞模式" then    loadstring(game:HttpGet('https://pastebin.com/raw/qP0QFU0D'))()    elseif a == "Oof的不可能模式" then    loadstring(game:HttpGet('https://raw.githubusercontent.com/Ukazix/impossible-mode/main/Protected_79.lua.txt'))()    end       end})
Section:Button({   Title =  "全局高亮",  ["Content"] = "",  Callback = function()    loadstring(game:HttpGet("https://pastebin.com/raw/4LDKiJ5a"))()    end})
Section:Button({   Title =  "手电筒",  ["Content"] = "",  Callback = function()      loadstring(game:HttpGet('https://pastebin.com/raw/9Daqa4hD'))()  	end})
Section:Button({   Title = "吸铁石",    ["Content"] = "",  Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/MagnetByNerd.lua"))()    end})
Section:Button({   Title = "剪刀",    ["Content"] = "",  Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/shears_done.lua"))()    end})
Section:Button({   Title = "圣光炸弹",    ["Content"] = "我用过一次，不过炸完之后就不能游戏了，只能娱乐",  Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/HolyGrenadeByNerd.lua"))()    end})
Section:Button({   Title = "臭猫  加载有点慢",    ["Content"] = "",  Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Maxwell%20Plushie"))()    end})
Section:Button({   Title = "控制物体大小的枪",    ["Content"] = "在不可能模式中使用",  Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/SizeChangerByNerd.lua"))()    end})
Section:Button({   Title = "香蕉枪",    ["Content"] = "只有在困难模式才能发射香蕉子弹",  Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/BananaGunByNerd.lua"))()    end}) 
local Section = HorrorTab:Section({    Title = "x-压力",    Content = "恐怖-压力"})
Section:Button({   Title = "小go汉化",      ["Content"] = "",  Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/xgomn/zxcvb/refs/heads/main/WT%20-%20Pressure"))()    end})
Section:Button({   Title = "PersonalHub",     ["Content"] = "",  Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/LordEyes2/Script/main/PersonalHub"))()   end})
Section:Button({   Title = "DevHub",      ["Content"] = "",  Callback = function()    loadstring(game:HttpGet("https://pastebin.com/raw/8EuUX9kx"))()    end})
Section:Button({   Title = "caveirahub",      ["Content"] = "需要卡密",  Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/Powerblack09yt/Scripts/main/caveirahub-pressure.lua"))()    end})
Section:Button({   Title = "creepyV2.4",       ["Content"] = "",  Callback = function() loadstring(game:HttpGet("https://github.com/Drop56796/CreepyEyeHub/blob/main/obfuscate.lua?raw=true"))()    end})
Section:Button({   Title = "无敌",       ["Content"] = "唯一缺点就是能被机枪扫到",  Callback = function()  loadstring(game:HttpGet("https://rawscripts.net/raw/Pressure-*-Mode-15992"))()    end})
Section:Button({   Title = "人机压力",       ["Content"] = "",  Callback = function()    loadstring(game:HttpGet(('https://github.com/DocYogurt/Main/raw/main/Scripts/Pressure')))()    end})
local Section = WarTab:Section({    Title = "x-最强战场",    Content = "战争-最强战场"})
Section:Button({    Title ="最强英雄特效",    ["Content"] = "",  Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/invertedth/OblivionGourd/refs/heads/main/Dabestscirpt"))()   end   })
Section:Button({    Title ="致命忍者更改",    ["Content"] = "",  Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/Reapvitalized/TSB/refs/heads/main/VOLTA.lua"))()   end})
Section:Button({    Title ="改了最强和猎人（玛雅芯片）",    ["Content"] = "",  Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/Kenjihin69/Kenjihin69/refs/heads/main/Mahitotsbupdate"))()   end})
Section:Button({    Title ="三个特效GuI",    ["Content"] = "",  Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/Wi-sp/Limitless-legacy/refs/heads/main/GUI"))()   end})
Section:Button({    Title ="一些很帅的英雄猎人动作",    ["Content"] = "",  Callback = function()    loadstring(game:HttpGet("https://pastebin.com/raw/3msBRQXy"))()    end})
Section:Button({    Title ="忘了叫啥也挺帅的",    ["Content"] = "",  Callback = function()    loadstring(game:HttpGet("https://pastefy.app/1m6k8kOE/raw"))()   end})
Section:Button({    Title ="GOjo",    ["Content"] = "",  Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/FoiLONE/Gojo-Moveset-TSB-by-Raga/main/1725724019929-Gojo.txt"))()    end})
Section:Button({    Title ="KJ",    ["Content"] = "",  Callback = function()    loadstring(game:HttpGet("https://pastebin.com/raw/GwRuVSqJ"))()   end})
Section:Button({    Title ="最强的英雄1",    ["Content"] = "特效脚本 ",  Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/Kenjihin69/Kenjihin69/refs/heads/main/Tp%20exploit%20saitama%20to%20jun"))()    end})
Section:Button({    Title ="最强的英雄",    ["Content"] = "特效脚本 ",  Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/skibiditoiletfan2007/BaldyToSorcerer/main/Latest.lua"))()    end})
Section:Button({    Title ="最强的英雄VFX",    ["Content"] = "特效脚本 ",  Callback = function()    loadstring(game:HttpGet("https://pastefy.app/MNg2zcxz/raw"))()    end})
Section:Button({    Title ="最强的英雄（爆改）",    ["Content"] = "特效脚本 ",  Callback = function()    loadstring(game:HttpGet("https://rawscripts.net/raw/The-Strongest-Battlegrounds-Hero-to-True-Nosakatan-18742"))()    end})
Section:Button({    Title ="最强的英雄（爆改）2.0",    ["Content"] = "特效脚本 ",  Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/JayXSama/ray-makk/refs/heads/main/True%20Nosakatan"))()    end})
Section:Button({    Title ="死亡后触发 Gojo反向诅咒术 最强的英雄",    ["Content"] = "",  Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/rizzmaster23/n2q83dn/main/rez"))()    end})
Section:Button({    Title =" 最强的英雄 无移动集 狂野的精神",    ["Content"] = "特效脚本",  Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/Qaiddanial2904/ROBLOX-FREAKY-GOJO-REAL/refs/heads/main/SANS%20%5BREDACTED%5D"))()   end})
Section:Button({    Title ="刀锋大师",    ["Content"] = "特效脚本 ",  Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/zyrask/Nexus-Base/main/atomic-blademaster%20to%20sukuna"))()  end})
Section:Button({    Title ="残忍的恶魔",    ["Content"] = "特效脚本",  Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/Reapvitalized/TSB/main/APOPHENIA.lua"))()   end})
Section:Button({    Title ="狼人x龙",    ["Content"] = "",  Callback = function()    loadstring(game:HttpGet("https://pastebin.com/raw/DqXUTANt"))()    end})
Section:Button({    Title ="幻影op",    ["Content"] = "",  Callback = function()    loadstring(Game:HttpGet("https://raw.githubusercontent.com/ATrainz/main/main/Phantasm-Loader.lua"))()   end})
Section:Button({    Title ="kade Hub",    ["Content"] = "",  Callback = function()    loadstring(Game:HttpGet("https://rawscripts.net/raw/The-Strongest-Battlegrounds-KadeHub-17629"))()   end})
Section:Button({    Title ="杀死脚本",    ["Content"] = "",  Callback = function()    loadstring(Game:HttpGet("https://pastefy.app/oKLqVHKF/raw"))()    end})
Section:Button({    Title ="最强战场",    ["Content"] = "卡密:RoscriptsOnTop",  Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/RealOfficialSkully/Smm/main/Smm"))()  end})
Section:Button({    Title ="组合技",    ["Content"] = "",  Callback = function()    loadstring(game:HttpGet("https://pastefy.app/UY1oh6PG/raw"))()  end})
Section:Button({    Title ="操作",   ["Content"] = "",  Callback = function()    loadstring(game:HttpGet('https://freenote.biz/raw/xkcdkgyhkx',true))()   end})
Section:Button({    Title ="R",    ["Content"] = "",  Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/NBLMSCRIPTS/NBLMSCRIPTHUB/main/SKIBIDI"))()  end})
Section:Button({    Title ="聊天记录手机脚本",    ["Content"] = "",  Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/Synergy-Networks/products/main/BetterBypasser/loader.lua"))()   end})
local Section = WarTab:Section({    Title = "x-俄亥俄州",    Content = "战争-俄亥俄州"})
Section:Button({	Title  ="传送加自动工作",     ["Content"] = "",  Callback = function()   loadstring(game:HttpGet("https://raw.githubusercontent.com/LOLking123456/ohio/main/Roblox232"))()    end})
Section:Button({	Title  ="小go俄亥俄州简易版",   ["Content"] = "",  Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/lIlIlIlIlI24568/114514.IIjjjjiiiallloiia.xxxxg/refs/heads/main/%E4%BF%84%E4%BA%A5%E4%BF%84%E5%B7%9E"))()  end})
Section:Button({	Title  ="指令",     ["Content"] = "聊天框内输入指令",  Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/longshulol/long/main/longshu/Ohio"))()    end})
Section:Seperator("透开—透关")
Section:Seperator("追踪开—追踪关")
Section:Seperator("收钱开—收钱关")
Section:Seperator("收物开—收物关")
Section:Seperator("抢取款机开—抢取款机关")
Section:Seperator("抢银行开—抢银行关")
Section:Seperator("穿墙开—穿墙关")
local Section = RNGTab:Section({    Title = "x- RNG",    Content = ""})




























































