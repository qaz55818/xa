--[[#tag push auto]]

Flourish = {}

----------------------------------------------------
--数据配置区
Flourish.Reputation = 46
Flourish.Version = 1
Flourish.Award =
{
	{Repu = 20, Award = 7251, tips = "^a800ff宝银^ffffff*2\r^00ff00一定量银票"},
	{Repu = 35, Award = 7252, tips = "^a800ff宝银^ffffff*3\r^00ff001级精炼石^ffffff*5"},
	{Repu = 50, Award = 7253, tips = "^a800ff宝银^ffffff*5\r^a800ff星尘砂^ffffff*3\r^00ff00双倍经验药（小）^ffffff*1"},
	{Repu = 70, Award = 7254, tips = "^a800ff宝银^ffffff*10\r^00ff00二级大还丹^ffffff*1\r^00ff00双倍经验药（中）^ffffff*1\r^00ff00青龙令^ffffff*1"},
}

----------------------------------------------------
Flourish.Task =
{
	{
		TaskID = {8626},
		Desc = "每日第一次上线",
		FlourishNum = 20,
		ActivityCount = 1,
		DetailDesc = "",
		QuikAccomplish = false,
	},
	{
		TaskID = {4777},
		Desc = "完成一次绿竹幻想乡",
		FlourishNum = 5,
		ActivityCount = 1,
		DetailDesc = "",
		QuikAccomplish = false,
	},
	{
		TaskID = {4778},
		Desc = "完成四次龙岭迷窟/百毒入侵",
		FlourishNum = 3,
		ActivityCount = 4,
		DetailDesc = "",
		QuikAccomplish = false,
	},
	--[[{
		TaskID = {5512},
		Desc = "完成三次百毒入侵",
		FlourishNum = 2,
		ActivityCount = 3,
		DetailDesc = "",
		QuikAccomplish = false,
	},]]--
	{
		TaskID = {7727},
		Desc = "完成三次九层妖楼",
		FlourishNum = 4,
		ActivityCount = 3,
		DetailDesc = "",
		QuikAccomplish = false,
	},
	{
		TaskID = {8630},
		Desc = "完成一次侠客及以上难度的副本",
		FlourishNum = 5,
		ActivityCount = 1,
		DetailDesc = "",
		QuikAccomplish = false,
	},
	{
		TaskID = {8631},
		Desc = "完成一次盟主难度的副本",
		FlourishNum = 10,
		ActivityCount = 1,
		DetailDesc = "",
		QuikAccomplish = false,
	},
	{
		TaskID = {7349},
		Desc = "完成一次以武会友任务",
		FlourishNum = 3,
		ActivityCount = 1,
		DetailDesc = "",
		QuikAccomplish = false,
	},
	{
		TaskID = {7705},
		Desc = "通关绝情谷禁地",
		FlourishNum = 5,
		ActivityCount = 1,
		DetailDesc = "",
		QuikAccomplish = false,
	},
	{
		TaskID = {8584},
		Desc = "通关截击刺客",
		FlourishNum = 5,
		ActivityCount = 1,
		DetailDesc = "",
		QuikAccomplish = false,
	},
	{
		TaskID = {8632},
		Desc = "完成一次帮派运镖/劫镖/监工/打工",
		FlourishNum = 3,
		ActivityCount = 1,
		DetailDesc = "",
		QuikAccomplish = false,
	},
	{
		TaskID = {9952},
		Desc = "进入六道轮回副本",
		FlourishNum = 5,
		ActivityCount = 1,
		DetailDesc = "",
		QuikAccomplish = false,
	},
	{
		TaskID = {9953},
		Desc = "天下会运镖四次",
		FlourishNum = 2,
		ActivityCount = 4,
		DetailDesc = "",
		QuikAccomplish = false,
	},
	{
		TaskID = {8629},
		Desc = "给好友送礼两次",
		FlourishNum = 2,
		ActivityCount = 2,
		DetailDesc = "",
		QuikAccomplish = false,
	},
	--[[{
		TaskID = {8633},
		Desc = "任意一件装备强化提升一级",
		FlourishNum = 3,
		ActivityCount = 1,
		DetailDesc = "",
		QuikAccomplish = false,
	},
	{
		TaskID = {8634},
		Desc = "完成一次宝石镶嵌",
		FlourishNum = 3,
		ActivityCount = 1,
		DetailDesc = "",
		QuikAccomplish = false,
	},]]--
	{
		TaskID = {8543},
		Desc = "时装染色一次",
		FlourishNum = 5,
		ActivityCount = 1,
		DetailDesc = "",
		QuikAccomplish = false,
	},
	{
		TaskID = {9954},
		Desc = "商城消费一次",
		FlourishNum = 6,
		ActivityCount = 1,
		DetailDesc = "",
		QuikAccomplish = false,
	},
	{
		TaskID = {9955},
		Desc = "抽取风物志卡牌一次",
		FlourishNum = 3,
		ActivityCount = 1,
		DetailDesc = "",
		QuikAccomplish = false,
	},
	{
		TaskID = {9956},
		Desc = "使用双倍经验药一次",
		FlourishNum = 3,
		ActivityCount = 1,
		DetailDesc = "",
		QuikAccomplish = false,
	},
}

Flourish.RegulationDesc = "活跃度规则：\r1、每日完成上述条件，可获得对应的活跃度，到达一定值即可领取对应的奖励。\r2、每日早上8点清空前一天的活跃度点数。"

----------------------------------------------------


----------------------------------------------------
--客户端用接口
function Flourish:GetRepuId()
	return Flourish.Reputation
end

function Flourish:GetAwardCfg()
	return Flourish.Award
end

function Flourish:GetFlourishTask()
	return Flourish.Task
end

function Flourish:GetFlourishReguDesc()
	return Flourish.RegulationDesc
end


----------------------------------------------------


----------------------------------------------------
--服务器用接口
function GetFlourishRepuId()
	return Flourish.Reputation
end

function GetFlourishVersion()
	return Flourish.Version
end

function GetFlourishAward()
	local tbl = {}
	for k,v in pairs(Flourish.Award) do
		tbl[#tbl + 1] = v.Repu
		tbl[#tbl + 1] = v.Award
	end
	tbl[#tbl + 1] =  #tbl
	return unpack(tbl)
end

