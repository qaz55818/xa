--[[#tag push auto]]

--物品的描述获取
ItemTip = {}


ItemTip.Desc = {}
ItemTip.Desc[--[[!]]"品质"] = {
	[--[[!]]"白"] = --[[!AUTO_1]]"^ffe3a1无光",
	[--[[!]]"蓝"] = --[[!AUTO_2]]"^ffe3a1质上成",
	[--[[!]]"紫"] = --[[!AUTO_3]]"^ffe3a1品精良",
	[--[[!]]"黄"] = --[[!AUTO_4]]"^ffe3a1绝世精材",
}

ItemTip.Desc[--[[!]]"强化等级"] = {
	[0] = {text = --[[!AUTO_5]]"^ffe3a1相庸", tip = --[[!AUTO_6]]"^bcb08f当前的装备未强化，强化失败后强化等级不变。"},
	[1] = {text = --[[!AUTO_7]]"^ffe3a1草制", tip = --[[!AUTO_8]]"^bcb08f当前强化等级为1级，强化失败后强化等级降到0。"},
	[2] = {text = --[[!AUTO_9]]"^ffe3a1小龊", tip = --[[!AUTO_10]]"^bcb08f当前强化等级为2级，强化失败后强化等级降到1。"},
	[3] = {text = --[[!AUTO_11]]"^ffe3a1微熔", tip = --[[!AUTO_12]]"^bcb08f当前强化等级为3级，强化失败后强化等级降到0。"},
	[4] = {text = --[[!AUTO_13]]"^ffe3a1略铸", tip = --[[!AUTO_14]]"^bcb08f当前强化等级为4级，强化失败后强化等级降到0。"},
	[5] = {text = --[[!AUTO_15]]"^ffe3a1精雕", tip = --[[!AUTO_16]]"^bcb08f当前强化等级为5级，强化失败后强化等级降到0。"},
	[6] = {text = --[[!AUTO_17]]"^ffe3a1细啄", tip = --[[!AUTO_18]]"^bcb08f当前强化等级为6级，^ff0000强化失败后装备破碎。"},
	[7] = {text = --[[!AUTO_19]]"^ffe3a1神工", tip = --[[!AUTO_20]]"^bcb08f当前强化等级为7级，^ff0000强化失败后装备破碎。"},
	[8] = {text = --[[!AUTO_21]]"强化等级8", tip = --[[!AUTO_22]]"^bcb08f当前强化等级为8级，^ff0000强化失败后装备破碎。"},
	[9] = {text = --[[!AUTO_23]]"强化等级9", tip = --[[!AUTO_24]]"^bcb08f当前强化等级为9级，^ff0000强化失败后装备破碎。"},
	[10] = {text = --[[!AUTO_25]]"强化等级10", tip = --[[!AUTO_26]]"^bcb08f当前强化等级为10级，^ff0000强化失败后装备破碎。"},
	[100] = {text = --[[!AUTO_27]]"到达强化上限", tip = --[[!AUTO_28]]"^bcb08f当前强化等级已到达上限，不能继续强化。"},
}

ItemTip.Desc[--[[!]]"开光属性"] = {
	[0] = {text = --[[!AUTO_29]]"^ffe3a1丧福", filepath = --[[!AUTO_30]]"0"},--不可开光
	[1] = {text = --[[!AUTO_31]]"^ffe3a1慧缘", filepath = --[[!AUTO_32]]"1"},--可开光
	[2] = {text = --[[!AUTO_33]]"^ffe3a1性寒冰", filepath = --[[!AUTO_34]]"2"},--冰
	[3] = {text = --[[!AUTO_35]]"^ffe3a1性烈火", filepath = --[[!AUTO_36]]"3"},--火
	[4] = {text = --[[!AUTO_37]]"^ffe3a1性极毒", filepath = --[[!AUTO_38]]"4"},--毒
	[5] = {text = --[[!AUTO_39]]"^ffe3a1蛮力", filepath = --[[!AUTO_40]]"5"},--力
	[6] = {text = --[[!AUTO_41]]"^ffe3a1祭血", filepath = --[[!AUTO_42]]"6"},--体
	[7] = {text = --[[!AUTO_43]]"^ffe3a1易筋", filepath = --[[!AUTO_44]]"7"},--筋
	[8] = {text = --[[!AUTO_45]]"^ffe3a1合气", filepath = --[[!AUTO_46]]"8"},--气
	[9] = {text = --[[!AUTO_47]]"^ffe3a1修内", filepath = --[[!AUTO_48]]"9"},--内
}

ItemTip.Desc[--[[!]]"奖励说明"] = {
	[2256] = --[[!AUTO_49]]"在线5分钟的奖励，奖品是马一匹。",
	[2252] = --[[!AUTO_50]]"这是升到10级时的小小的奖励，等级到20级可以领取下一份奖励。",
	[2253] = --[[!AUTO_51]]"这是升到20级时的小小的奖励，等级到30级可以领取下一份奖励。",
	[2254] = --[[!AUTO_52]]"这是升到30级时的小小的奖励，等级到40级可以领取下一份奖励。",
	[3631] = --[[!AUTO_53]]"这是升到40级时的小小的奖励，等级到50级可以领取下一份奖励。",
	[2565] = --[[!AUTO_54]]"恭喜你成功完成一次运镖，这是奖励。当你运镖的路线路过的城市增加时，你的奖励的倍率就会提升。",
	[2566] = --[[!AUTO_55]]"恭喜你成功完成一次劫镖，这是奖励。当你帮派的分舵数目提升后，你的奖励的倍率就会提升。",
	[2611] = --[[!AUTO_56]]"帮派活动结束，表现优异。这是奖励，包括了海量的经验和帮贡。帮派灭门进度提升了3，随着帮派灭门进度的提升，此活动的奖励也会提升。",
	[2612] = --[[!AUTO_57]]"帮派活动结束，表现良好。这是奖励，包括了大量的经验和帮贡。帮派灭门进度提升了2，随着帮派灭门进度的提升，此活动的奖励也会提升。",
	[2613] = --[[!AUTO_58]]"帮派活动结束，表现尚可。这是奖励，包括了中量的经验和帮贡。帮派灭门进度提升了1，随着帮派灭门进度的提升，此活动的奖励也会提升。",
	[2614] = --[[!AUTO_59]]"帮派活动结束，表现平平。这是奖励，包括了少量的经验和帮贡。帮派灭门进度提升了0，随着帮派灭门进度的提升，此活动的奖励也会提升。",
	[2615] = --[[!AUTO_60]]"帮派活动结束，表现优异。这是奖励，包括了海量的经验和帮贡。帮派寻宝进度提升了3，随着帮派寻宝进度的提升，此活动的奖励也会提升。",
	[2616] = --[[!AUTO_61]]"帮派活动结束，表现良好。这是奖励，包括了大量的经验和帮贡。帮派寻宝进度提升了2，随着帮派寻宝进度的提升，此活动的奖励也会提升。",
	[2617] = --[[!AUTO_62]]"帮派活动结束，表现尚可。这是奖励，包括了中量的经验和帮贡。帮派寻宝进度提升了1，随着帮派寻宝进度的提升，此活动的奖励也会提升。",
	[2618] = --[[!AUTO_63]]"帮派活动结束，表现平平。这是奖励，包括了少量的经验和帮贡。帮派寻宝进度提升了0，随着帮派寻宝进度的提升，此活动的奖励也会提升。",
	[3493] = --[[!AUTO_64]]"帮派活动结束，表现优异。这是奖励，包括了海量的经验和帮贡。帮派特色进度提升了3，随着帮派特色进度的提升，此活动的奖励也会提升。",
	[3494] = --[[!AUTO_65]]"帮派活动结束，表现良好。这是奖励，包括了大量的经验和帮贡。帮派特色进度提升了2，随着帮派特色进度的提升，此活动的奖励也会提升。",
	[3495] = --[[!AUTO_66]]"帮派活动结束，表现尚可。这是奖励，包括了中量的经验和帮贡。帮派特色进度提升了1，随着帮派特色进度的提升，此活动的奖励也会提升。",
	[3496] = --[[!AUTO_67]]"帮派活动结束，表现平平。这是奖励，包括了少量的经验和帮贡。帮派特色进度提升了0，随着帮派特色进度的提升，此活动的奖励也会提升。",
	[3497] = --[[!AUTO_68]]"帮派活动结束，表现优异。这是奖励，包括了海量的经验和帮贡。帮派特色进度提升了3，随着帮派特色进度的提升，此活动的奖励也会提升。",
	[3498] = --[[!AUTO_69]]"帮派活动结束，表现良好。这是奖励，包括了大量的经验和帮贡。帮派特色进度提升了2，随着帮派特色进度的提升，此活动的奖励也会提升。",
	[3499] = --[[!AUTO_70]]"帮派活动结束，表现尚可。这是奖励，包括了中量的经验和帮贡。帮派特色进度提升了1，随着帮派特色进度的提升，此活动的奖励也会提升。",
	[3500] = --[[!AUTO_71]]"帮派活动结束，表现平平。这是奖励，包括了少量的经验和帮贡。帮派特色进度提升了0，随着帮派特色进度的提升，此活动的奖励也会提升。",
	[3491] = --[[!AUTO_72]]"恭喜你成功完成一次运镖，这是奖励。加入镖局类型的帮派，开启帮派内运镖，奖励会增加。",
	[3492] = --[[!AUTO_73]]"恭喜你成功完成一次劫镖，这是奖励。加入山寨类型的帮派，开启帮派内劫镖，奖励会增加。",
	[3594] = --[[!AUTO_74]]"恭喜你成功领取一次红利，这是奖励。帮派势力越多，帮派势力所在图的当前经济指数越高，奖励的银子越多。如果贵帮有幸有一位亲王，则奖励会更丰盛。",
	[2575] = --[[!AUTO_75]]"尊贵的《笑傲英雄谱》载录英雄，这是馈赠于你的金鬃狼毫、焕颜宝盒及千里传音还请英雄笑纳！",
	[2624] = --[[!AUTO_76]]"尊贵的《笑傲英雄谱》载录英雄，这是馈赠于你的狼毫、焕颜玉匣及千里传音还请英雄笑纳！",
	[3040] = --[[!AUTO_77]]"尊贵的《笑傲英雄谱》载录英雄，这是馈赠于你的狼毫及千里传音还请英雄笑纳！",
	[4034] = --[[!AUTO_78]]"这是反外挂答题奖励！",
	[3893] = --[[!AUTO_79]]"恭喜你成功完成一次劫镖，这是奖励。由于本日劫镖次数已达上限，奖励要比普通情况少一些，但你为同帮兄弟两肋插刀的精神值得鼓励。",
	[3894] = --[[!AUTO_80]]"恭喜你成功完成一次运镖，这是奖励。由于本日运镖次数已达上限，奖励要比普通情况少一些，但你为同帮兄弟两肋插刀的精神值得鼓励。",
	[4394] =--[[!AUTO_81]]"您成功兑换了物品^ffcb40笑傲江湖千元礼包,^ffffff祝您在游戏中玩的开心!",
	[4395] =--[[!AUTO_82]]"您成功兑换了物品^ffcb40多玩东方至尊礼包,^ffffff祝您在游戏中玩的开心!",
	[4396] =--[[!AUTO_83]]"您成功兑换了物品^ffcb40武林至尊特权卡,^ffffff祝您在游戏中玩的开心!",
	[4397] =--[[!AUTO_84]]"您成功兑换了物品^ffcb4017173江湖特权礼包,^ffffff祝您在游戏中玩的开心!",
	[4398] =--[[!AUTO_85]]"您成功兑换了物品^ffcb40新浪不败专属礼包,^ffffff祝您在游戏中玩的开心!",
	[4399] =--[[!AUTO_86]]"您成功兑换了物品^ffcb40东方教主猫特权卡,^ffffff祝您在游戏中玩的开心!",
	[4400] =--[[!AUTO_87]]"您成功兑换了物品^ffcb40腾讯侠胆特权礼包,^ffffff祝您在游戏中玩的开心!",
	[4401] =--[[!AUTO_88]]"您成功兑换了物品^ffcb40网吧谁与争锋礼包,^ffffff祝您在游戏中玩的开心!",
	[4402] =--[[!AUTO_89]]"您成功兑换了物品^ffcb40QT语音至尊礼包,^ffffff祝您在游戏中玩的开心!",
	[4403] =--[[!AUTO_90]]"您成功兑换了物品^ffcb40公会特权卡,^ffffff祝您在游戏中玩的开心!",
	[4404] =--[[!AUTO_91]]"您成功兑换了物品^ffcb40笑傲新手冲级礼包,^ffffff祝您在游戏中玩的开心!",
	[4405] =--[[!AUTO_92]]"您成功兑换了物品^ffcb40会长白金卡,^ffffff祝您在游戏中玩的开心!",
	[4406] =--[[!AUTO_93]]"您成功兑换了物品^ffcb40豪华版典藏礼包,^ffffff祝您在游戏中玩的开心!",
	[4407] =--[[!AUTO_94]]"您成功兑换了物品^ffcb40教主猫超萌礼包,^ffffff祝您在游戏中玩的开心!",
	[4408] =--[[!AUTO_95]]"您成功兑换了物品^ffcb40琴音箫意心意礼包,^ffffff祝您在游戏中玩的开心!",
	[4409] =--[[!AUTO_96]]"您成功兑换了物品^ffcb40萌恩后援特权卡,^ffffff祝您在游戏中玩的开心!",
	[4410] =--[[!AUTO_97]]"您成功兑换了物品^ffcb40搜狗至尊江湖礼包,^ffffff祝您在游戏中玩的开心!",
	[4411] =--[[!AUTO_98]]"您成功兑换了物品^ffcb40记者团,^ffffff祝您在游戏中玩的开心!",
	[4412] =--[[!AUTO_99]]"您成功兑换了物品^ffcb40葵花专属礼包,^ffffff祝您在游戏中玩的开心!",
	[4413] =--[[!AUTO_100]]"您成功兑换了物品^ffcb40美加狮豪华大礼包,^ffffff祝您在游戏中玩的开心!",
	[4414] =--[[!AUTO_101]]"您成功兑换了物品^ffcb4017173奇遇大礼包,^ffffff祝您在游戏中玩的开心!",
	[4664] =--[[!AUTO_102]]"您可以领取物品^ffcb40感恩礼包,^ffffff祝您在游戏中玩的开心!",
	[4666] =--[[!AUTO_103]]"您可以领取物品^ffcb40新手卡礼包合集01,^ffffff祝您在游戏中玩的开心!",
	[4667] =--[[!AUTO_104]]"您可以领取物品^ffcb40新手卡礼包合集02,^ffffff祝您在游戏中玩的开心!",
	[4668] =--[[!AUTO_105]]"您可以领取物品^ffcb40新手卡礼包合集03,^ffffff祝您在游戏中玩的开心!",
	[6175] = "恭喜您成功晋级16强，您可以领取16强奖励礼包。", 
	[6176] = "恭喜您成功晋级8强，您可以领取8强奖励礼包。", 
	[6177] = "恭喜您成功晋级半决赛，您可以领取半决赛奖励礼包。", 
	[6178] = "恭喜您成功晋级决赛，您可以领取决赛奖励礼包。", 
	[6179] = "恭喜您成功夺得武状元，您可以领取武状元奖励礼包。",  
	[6182] = "恭喜您竞猜武状元成功，您可以领取竞猜礼包。",  
	[6183] = "恭喜您竞猜武状元成功，您可以领取竞猜礼包。",  
	[6184] = "恭喜您竞猜武状元成功，您可以领取竞猜礼包。",  
	[6185] = "恭喜您竞猜武状元成功，您可以领取竞猜礼包。",  
	[6186] = "恭喜您竞猜武状元成功，您可以领取竞猜礼包。",  
	[6187] = "恭喜您竞猜武状元成功，您可以领取竞猜礼包。",  
	[6188] = "恭喜您竞猜武状元成功，您可以领取竞猜礼包。",  
	[6189] = "恭喜您竞猜武状元成功，您可以领取竞猜礼包。",  
	[6190] = "恭喜您竞猜武状元成功，您可以领取竞猜礼包。",  
	[6191] = "恭喜您竞猜武状元成功，您可以领取竞猜礼包。",  
	[6192] = "恭喜您竞猜武状元成功，您可以领取竞猜礼包。", 
	[6193] = "恭喜您竞猜武状元成功，您可以领取竞猜礼包。", 
	[6194] = "恭喜您竞猜武状元成功，您可以领取竞猜礼包。", 
	[6195] = "恭喜您竞猜武状元成功，您可以领取竞猜礼包。", 
	[6196] = "恭喜您竞猜武状元成功，您可以领取竞猜礼包。", 
	[6197] = "恭喜您竞猜武状元成功，您可以领取竞猜礼包。", 
	[6198] = "恭喜您竞猜武状元成功，您可以领取竞猜礼包。", 
	[6199] = "恭喜您竞猜武状元成功，您可以领取竞猜礼包。", 
	[6200] = "恭喜您竞猜武状元成功，您可以领取竞猜礼包。", 
	[6201] = "恭喜您竞猜武状元成功，您可以领取竞猜礼包。", 
	[6202] = "恭喜您竞猜武状元成功，您可以领取竞猜礼包。", 
	[6203] = "恭喜您竞猜武状元成功，您可以领取竞猜礼包。", 
	[6204] = "恭喜您竞猜武状元成功，您可以领取竞猜礼包。", 
	[6205] = "恭喜您竞猜武状元成功，您可以领取竞猜礼包。", 
	[6206] = "恭喜您竞猜武状元成功，您可以领取竞猜礼包。", 
	[6207] = "恭喜您竞猜武状元成功，您可以领取竞猜礼包。", 
	[6208] = "恭喜您竞猜武状元成功，您可以领取竞猜礼包。", 
	[6209] = "恭喜您竞猜武状元成功，您可以领取竞猜礼包。", 
	[6210] = "恭喜您竞猜武状元成功，您可以领取竞猜礼包。", 
	[6211] = "恭喜您竞猜武状元成功，您可以领取竞猜礼包。", 
	[6212] = "恭喜您竞猜武状元成功，您可以领取竞猜礼包。", 
	[6213] = "恭喜您竞猜武状元成功，您可以领取竞猜礼包。",
	[6214] = "很遗憾您竞猜失败了，但您仍然可以获得一份参与礼包。",
	[6804] = "本日首次通关妖楼，可领取首次通关奖励。\r^0db803首次通关奖励^ffffff：星尘砂*5\r第二次通关奖励：木质齿轮*5\r第三次通关奖励：秘笈书卷*2 高级秘笈书卷*1",
	[6805] = "本日第二次通关妖楼，可领取第二次通关奖励。\r首次通关奖励：星尘砂*5\r^0db803第二次通关奖励^ffffff：木质齿轮*5\r第三次通关奖励：秘笈书卷*2 高级秘笈书卷*1",
	[6809] = "您成功兑换了物品^ffcb40华丰魔法士礼包,^ffffff祝您在游戏中玩的开心!",
	[6811] = "本日第三次通关妖楼，可领取第三次通关奖励。\r首次通关奖励：星尘砂*5\r第二次通关奖励：木质齿轮*5\r^0db803第三次通关奖励^ffffff：秘笈书卷*2 高级秘笈书卷*1",
	[6829] = "帮派活动结束，您击败了年兽和它的爪牙，这是奖励！",
	[6854] = "您成功兑换了物品^ffcb40多玩吉庆卡,^ffffff祝您在游戏中玩的开心!",
	[6855] = "您成功兑换了物品^ffcb40新浪欢度卡,^ffffff祝您在游戏中玩的开心!",
	[6856] = "您成功兑换了物品^ffcb40新浪教主猫贺岁卡,^ffffff祝您在游戏中玩的开心!",
	[6857] = "您成功兑换了物品^ffcb4017173迎春卡,^ffffff祝您在游戏中玩的开心!",
	[6863] = "您成功兑换了物品^ffcb40网吧乐享卡,^ffffff祝您在游戏中玩的开心!",
	[6864] = "您成功兑换了物品^ffcb40跨年新手大礼包,^ffffff祝您在游戏中玩的开心!",
	[6940] = "恭喜您在躲猫猫中找到一名玩家！送您一点奖励，敬请笑纳，玩得开心!",
	[6941] = "恭喜您的团队在躲猫猫中获得胜利！奖励送上，欢迎下次再来！",
	[6968] = "很遗憾，您没能成功晋级，但仍可以领取入围奖励礼包。", 
	[6877] = "恭喜你！成功关联了一名导师，这是赠予你的^ffcb40“学员大礼包”^ffffff，祝愿大侠在江湖的闯荡之路上快乐相随!",
	[7137] = "恭喜你成功获得了^ffcb40“炼金石”^ffffff，集齐10个即可以与门派内的活动发布人兑换指定套装!",
	[7225] = "您可以领取物品^ffcb40官方新手卡,^ffffff祝您在游戏中玩的开心!",
	[7208] = "恭喜您在线达到24小时，这些是为您准备的奖励。",
	[7209] = "恭喜您在线达到48小时，这些是为您准备的奖励。",
	[7210] = "恭喜您在线达到72小时，这些是为您准备的奖励。",
	[7211] = "恭喜您在线达到96小时，这些是为您准备的奖励。",
	[7212] = "恭喜您在线达到120小时，这些是为您准备的奖励。",
	[7225] = "欢迎来到笑傲江湖，我们为您准备了丰厚的礼品，让您驰骋江湖。",
	[7242] = "恭喜您成功获得整点在线奖励礼包。",
	[7243] = "恭喜您成功获得整点在线奖励礼包。",
	[7244] = "恭喜您达到50级，获得“新服冲级 荣耀比拼”活动奖励。",
	[7272] = "您成功兑换了物品^ffcb40新浪初入江湖礼包,^ffffff祝您在游戏中玩的开心!",
	[7273] = "您成功兑换了物品^ffcb40腾讯初入江湖礼包,^ffffff祝您在游戏中玩的开心!",
	[7274] = "您成功兑换了物品^ffcb40太平洋初入江湖礼包,^ffffff祝您在游戏中玩的开心!",
	[7275] = "您成功兑换了物品^ffcb40电玩巴士初入江湖礼包,^ffffff祝您在游戏中玩的开心!",
	[7276] = "您成功兑换了物品^ffcb4017173初入江湖礼包,^ffffff祝您在游戏中玩的开心!",
	[7277] = "您成功兑换了物品^ffcb40多玩初入江湖礼包,^ffffff祝您在游戏中玩的开心!",
	[7278] = "您成功兑换了物品^ffcb40京东初入江湖礼包,^ffffff祝您在游戏中玩的开心!",
	[7279] = "您成功兑换了物品^ffcb40康师傅初入江湖礼包,^ffffff祝您在游戏中玩的开心!",
	[7280] = "您成功兑换了物品^ffcb40易乐游江湖礼包,^ffffff祝您在游戏中玩的开心!",
	[7281] = "您成功兑换了物品^ffcb40顺网江湖礼包,^ffffff祝您在游戏中玩的开心!",
	[7282] = "您成功兑换了物品^ffcb40鏖战江湖礼包,^ffffff祝您在游戏中玩的开心!",
	[7284] = "您成功兑换了物品^ffcb40赤炎烈影坐骑礼包,^ffffff祝您在游戏中玩的开心!",
	[7297] = "恭喜您在累计竞猜中得到了前十名,获得了^ffcb40前十礼包,^ffffff祝您在游戏中玩的开心!",
	[7298] = "恭喜您在累计竞猜中得到了前三十名,获得了^ffcb40前三十礼包,^ffffff祝您在游戏中玩的开心!",
	[7299] = "恭喜您在累计竞猜中得到了前一百名,获得了^ffcb40前一百礼包,^ffffff祝您在游戏中玩的开心!",
	[7300] = "恭喜您在累计竞猜中得到了20分,获得了^ffcb40参与礼包,^ffffff祝您在游戏中玩的开心!",
	[7302] = "恭喜您在竞猜中猜中了冠军归属,获得了^ffcb40蹴鞠竞猜大礼包,^ffffff祝您在游戏中玩的开心!",
	[7346] = "很遗憾，运气就差那么一点点，获得了”风平浪静“奖励",
	[7347] = "运气还可以，获得了”柳暗花明“奖励",
	[7348] = "运气不错呢，获得了”时来运转“奖励",
	[7349] = "恭喜，获得了”顺水行舟“奖励",
	[7350] = "恭喜恭喜，获得了”势如破竹“奖励",
	[7351] = "可喜可贺，时来运转，获得了”吉祥如意“奖励",
	[7352] = "恭喜恭喜，吉星高照，获得了”大吉大利“奖励",
	[7339] = "很遗憾，运气就差那么一点点，获得了”风平浪静“奖励",
	[7340] = "运气还可以，获得了”柳暗花明“奖励",
	[7341] = "运气不错呢，获得了”时来运转“奖励",
	[7342] = "恭喜，获得了”顺水行舟“奖励",
	[7343] = "恭喜恭喜，获得了”势如破竹“奖励",
	[7344] = "可喜可贺，时来运转，获得了”吉祥如意“奖励",
	[7345] = "恭喜恭喜，吉星高照，获得了”大吉大利“奖励",
	[7354] = "今日全服有1次祈福，您获得了”幸福来得太突然“礼包，祈福越多奖励越多哦。",
	[7355] = "今日全服有2次祈福，您获得了”幸福来得太突然“礼包，祈福越多奖励越多哦。",
	[7356] = "今日全服有3次祈福，您获得了”幸福来得太突然“礼包，祈福越多奖励越多哦。",
	[7357] = "今日全服有4次祈福，您获得了”幸福来得太突然“礼包，祈福越多奖励越多哦。",
	[7358] = "今日全服有5次祈福，您获得了”幸福来得太突然“礼包，祈福越多奖励越多哦。",
	[7363] = "您成功兑换了物品^ffcb40新浪周年庆礼包,^ffffff祝您在游戏中玩的开心!",
	[7364] = "您成功兑换了物品^ffcb4017173周年庆礼包,^ffffff祝您在游戏中玩的开心!",
	[7365] = "您成功兑换了物品^ffcb40多玩周年庆礼包,^ffffff祝您在游戏中玩的开心!",
	[7366] = "您成功兑换了物品^ffcb40笑傲周年庆礼包,^ffffff祝您在游戏中玩的开心!",
	[7367] = "您成功兑换了物品^ffcb40YY福利礼包1级,^ffffff祝您在游戏中玩的开心!",
	[7375] = "您成功兑换了物品^ffcb4017Y体验大礼包,^ffffff祝您在游戏中玩的开心!",
	[7376] = "您成功兑换了物品^ffcb4017Y轻松大礼包,^ffffff祝您在游戏中玩的开心!",
	[7377] = "您成功兑换了物品^ffcb4017Y特权大礼包,^ffffff祝您在游戏中玩的开心!",
	[7378] = "您成功兑换了物品^ffcb4017Y华丽大礼包,^ffffff祝您在游戏中玩的开心!",
	[7379] = "您成功兑换了物品^ffcb4017Y至尊大礼包,^ffffff祝您在游戏中玩的开心!",
	[7380] = "您成功兑换了物品^ffcb40ARC礼包,^ffffff祝您在游戏中玩的开心!",
	[6940] = "恭喜您抓到了一个躲藏者!",
	[6941] = "恭喜您在本次捉迷藏活动中获得胜利，请再接再厉。",
	[7385] = "很遗憾，您在这次捉迷藏活动中失败了，请继续努力。",
	[7251] = "您成功领取了一档活跃度奖励,^ffffff祝您在游戏中玩的开心!",
	[7252] = "您成功领取了二档活跃度奖励,^ffffff祝您在游戏中玩的开心!",
	[7253] = "您成功领取了三档活跃度奖励,^ffffff祝您在游戏中玩的开心!",
	[7254] = "您成功领取了四档活跃度奖励,^ffffff祝您在游戏中玩的开心!",
	[7513] = "您成功兑换了物品^ffcb40果维康初入江湖礼包,^ffffff祝您在游戏中玩的开心!",
	[7537] = "恭喜你获得炫动江湖礼包！",
	[7538] = "恭喜你获得炫动江湖礼包！",
	[7536] = "作为本次雪镇之争中的胜利者，这是你们应得的奖励！",
	[7546] = "非常遗憾在本次雪镇之争中你们失败了，下次请努力吧！一点小小心意，权当安慰吧！",
	[7559] = "您成功兑换了物品^ffcb40峨眉山论剑礼包,^ffffff祝您在游戏中玩的开心!",
	[7560] = "您成功兑换了物品^ffcb40新浪重聚礼包,^ffffff祝您在游戏中玩的开心!",
	[7561] = "您成功兑换了物品^ffcb40网易重聚礼包,^ffffff祝您在游戏中玩的开心!",
	[7562] = "您成功兑换了物品^ffcb40太平洋重聚礼包,^ffffff祝您在游戏中玩的开心!",
	[7563] = "您成功兑换了物品^ffcb40电玩巴士重聚礼包,^ffffff祝您在游戏中玩的开心!",
	[7564] = "您成功兑换了物品^ffcb4017173重聚礼包,^ffffff祝您在游戏中玩的开心!",
	[7565] = "您成功兑换了物品^ffcb40多玩重聚礼包,^ffffff祝您在游戏中玩的开心!",
	[7566] = "您成功兑换了物品^ffcb40多玩重聚珍贵礼包,^ffffff祝您在游戏中玩的开心!",
	[7567] = "您成功兑换了物品^ffcb40顺网重聚礼包,^ffffff祝您在游戏中玩的开心!",
	[7568] = "您成功兑换了物品^ffcb40易游重聚礼包,^ffffff祝您在游戏中玩的开心!",
	[7569] = "您成功兑换了物品^ffcb40京东重聚礼包,^ffffff祝您在游戏中玩的开心!",
	[7570] = "这是升到50级时的小小的奖励，等级到60级可以领取下一份奖励。",
	[7571] = "这是升到60级时的小小的奖励。",
	[7596] = "您成功兑换了物品^ffcb40YY重聚礼包,^ffffff祝您在游戏中玩的开心!",
	[7597] = "大侠神速，已达终点,小小礼物，不成敬意!",
	[7535] = "本方胜利，获得胜利奖励",
	[7534] = "本方不幸失败，安慰奖请笑纳！再接再厉！",
	[7479] = "恭喜您，您运送物资的白色镖车完好，获得丰厚的经验和武勋作为奖励！",
	[7480] = "恭喜您，您运送物资的绿色镖车完好，获得丰厚的经验和武勋作为奖励！",
	[7481] = "恭喜您，您运送物资的蓝色镖车完好，获得丰厚的经验和武勋作为奖励！",
	[7482] = "恭喜您，您运送物资的紫色镖车完好，获得丰厚的经验和武勋作为奖励！",
	[7483] = "恭喜您，您运送物资的橙色镖车完好，获得丰厚的经验和武勋作为奖励！",
	[7484] = "很不幸，您运送物资的绿色镖车已破损！只能给您一些经验以示鼓励！",
	[7485] = "很不幸，您运送物资的白色镖车已破损！只能给您一些经验以示鼓励！",
	[7486] = "很不幸，您运送物资的蓝色镖车已破损！只能给您一些经验以示鼓励！",
	[7487] = "很不幸，您运送物资的紫色镖车已破损！只能给您一些经验以示鼓励！",
	[7488] = "很不幸，您运送物资的橙色镖车已破损！只能给您一些经验以示鼓励！",
	[7603] = "《笑傲江湖OL-教主归来》资料片隆重开启，欢迎您的加入！在此期间（8.29-9.9）所有新加入的大侠们都将会获得教主特赠紫云衫一件，助您驰骋江湖！",
	[7647] = "您成功兑换了物品^ffcb4017173武斗礼包,^ffffff祝您在游戏中玩的开心!",
	[7648] = "您成功兑换了物品^ffcb40多玩武斗礼包,^ffffff祝您在游戏中玩的开心!",
	[7649] = "您成功兑换了物品^ffcb40新浪武斗礼包,^ffffff祝您在游戏中玩的开心!",
	[7650] = "您成功兑换了物品^ffcb40多玩武斗手机礼包,^ffffff祝您在游戏中玩的开心!",
	[7651] = "您成功兑换了物品^ffcb40多玩武斗至尊礼包,^ffffff祝您在游戏中玩的开心!",
	[7652] = "您成功兑换了物品^ffcb40顺网武斗礼包,^ffffff祝您在游戏中玩的开心!",
	[7653] = "您成功兑换了物品^ffcb40易游武斗礼包,^ffffff祝您在游戏中玩的开心!",
	[7663] = "您成功兑换了物品^ffcb40淘宝珍品礼包,^ffffff祝您在游戏中玩的开心!",
	[7664] = "您成功兑换了物品^ffcb40淘宝特制礼包,^ffffff祝您在游戏中玩的开心!",
	[7665] = "您成功兑换了物品^ffcb40淘宝新手礼包,^ffffff祝您在游戏中玩的开心!",
	[7646] = "恭喜您抵挡住了本次番邦的入侵，这是您应得的奖励！",
	[7745] = "您成功兑换了物品^ffcb40笑傲江湖淘宝精品礼包,^ffffff祝您在游戏中玩的开心!",
	[7746] = "您成功兑换了物品^ffcb40笑傲江湖淘宝入门礼包,^ffffff祝您在游戏中玩的开心!",
	[7724] = "恭喜您获得决战黑木崖第一名，为此提供您如下丰厚奖励！",
	[7725] = "恭喜您在决战黑木崖中取得优异的战绩，为此提供您如下丰厚奖励！再接再厉争取下次登上第一名的宝座哦！",
	[7726] = "您在决战黑木崖中战绩优异，获得如下丰厚奖励！希望您继续努力提升自己，争取取得更高的战绩，获得更好的奖励！",
	[7727] = "您在决战黑木崖中战绩优异，获得如下丰厚奖励！希望您继续努力提升自己，争取取得更高的战绩，获得更好的奖励！",
	[7728] = "您在决战黑木崖中战绩优异，获得如下丰厚奖励！希望您继续努力提升自己，争取取得更高的战绩，获得更好的奖励！",
	[7729] = "您在决战黑木崖中战绩优异，获得如下丰厚奖励！希望您继续努力提升自己，争取取得更高的战绩，获得更好的奖励！",
	[7755] = "消费大回馈活动期间，在商城进行第一次元宝消费，即可获得珍贵的奖励一份。",
	[7947] = "您成功兑换了物品^ffcb40YY迎新春礼包,^ffffff祝您在游戏中玩的开心!",
	[7948] = "您成功兑换了物品^ffcb4017173迎新春礼包,^ffffff祝您在游戏中玩的开心!",
	[7949] = "您成功兑换了物品^ffcb40多玩迎新春礼包,^ffffff祝您在游戏中玩的开心!",
	[7950] = "您成功兑换了物品^ffcb40新浪迎新春礼包,^ffffff祝您在游戏中玩的开心!",
	[7951] = "您成功兑换了物品^ffcb40多玩迎新春手机礼包,^ffffff祝您在游戏中玩的开心!",
	[7952] = "您成功兑换了物品^ffcb40多玩迎新春至尊礼包,^ffffff祝您在游戏中玩的开心!",
	[7953] = "您成功兑换了物品^ffcb40顺网迎新春礼包,^ffffff祝您在游戏中玩的开心!",
	[7954] = "您成功兑换了物品^ffcb40易游迎新春礼包,^ffffff祝您在游戏中玩的开心!",
	[7955] = "您成功兑换了物品^ffcb40新年畅爽礼包,^ffffff祝您在游戏中玩的开心!",
	[7760] = "您在夺羊大战中获得了胜利，以下是您获得的奖品，下次继续加油哦！",
	[7761] = "您在夺羊大战中取得一场平局，以下是您获得的奖品，下次继续加油哦！",
	[7762] = "您在夺羊大战中不幸失利，以下是您获得的奖品，下次继续加油哦！",
	[7658] = "帮派活动结束，表现优异，特色活动进度提升3点。这是奖励请收好！",
	[7659] = "帮派活动结束，表现良好，特色活动进度提升2点。这是奖励请收好！",
	[7660] = "帮派活动结束，表现尚可，特色活动进度提升1点。这是奖励请收好！",
	[7661] = "帮派活动结束，表现平平。这是奖励请收好！",
	[7943] = "恭喜您根据奇物图鉴成功制得相应宝物！以下是奇物居给您的奖赏，不同难度的宝贝换得的奖励不一样哦，欢迎明天再来！",
	[7971] = "您成功兑换了物品^ffcb40完美十周年礼包,^ffffff祝您在游戏中玩的开心!",
	[7973] = "黑木崖开启！这里为开启者准备了一些补给品，祝您在游戏中玩的开心！",
	[8002] = "您成功兑换了物品^ffcb40网易年货大礼包,^ffffff祝您在游戏中玩的开心!",
	[8263] = "您通过出售特产获得了高档奖励！",
	[8264] = "您通过出售特产获得了中档奖励！",
	[8265] = "您将特产出售给回收员得到了最低档奖励，好歹不算颗粒无收！",
	[8267] = "贵帮的收购推动了市场发展，故此发放小商小贩奖，下次继续加油哦！",
	[8268] = "贵帮的大量收购促进了市场繁荣，故此发放巨商大贾奖，下次继续加油哦！",
	[8288] = "您成功兑换了物品^ffcb4017173心动礼包,^ffffff祝您在游戏中玩的开心!",
	[8289] = "您成功兑换了物品^ffcb40多玩心动普通礼包,^ffffff祝您在游戏中玩的开心!",
	[8290] = "您成功兑换了物品^ffcb40多玩心动手机礼包,^ffffff祝您在游戏中玩的开心!",
	[8291] = "您成功兑换了物品^ffcb40多玩心动珍稀礼包,^ffffff祝您在游戏中玩的开心!",
	[8292] = "您成功兑换了物品^ffcb40心动美女礼包,^ffffff祝您在游戏中玩的开心!",
	[8293] = "您成功兑换了物品^ffcb40微信心动珍品礼包,^ffffff祝您在游戏中玩的开心!",
	[8294] = "您成功兑换了物品^ffcb40新浪心动礼包,^ffffff祝您在游戏中玩的开心!",
	[8295] = "您成功兑换了物品^ffcb40腾讯心动礼包,^ffffff祝您在游戏中玩的开心!",
	[8296] = "您成功兑换了物品^ffcb40网易心动礼包,^ffffff祝您在游戏中玩的开心!",
	[8297] = "您成功兑换了物品^ffcb40npcgo心动礼包,^ffffff祝您在游戏中玩的开心!",
	[8298] = "您成功兑换了物品^ffcb40顺网网吧心动礼包,^ffffff祝您在游戏中玩的开心!",
	[8299] = "您成功兑换了物品^ffcb40易游网吧心动礼包,^ffffff祝您在游戏中玩的开心!",
	[8305] = "您成功兑换了物品^ffcb40心动独孤礼包,^ffffff祝您在游戏中玩的开心!",
	[8383] = "您成功兑换了物品^ffcb40苏宁易购心动礼包,^ffffff祝您在游戏中玩的开心!",
	[8425] = "您成功兑换了物品^ffcb4017173两周年欢聚礼包,^ffffff祝您在游戏中玩的开心!",
	[8426] = "您成功兑换了物品^ffcb40笑傲江湖多玩特权礼包,^ffffff祝您在游戏中玩的开心!",
	[8427] = "您成功兑换了物品^ffcb40多玩两周年欢聚手机礼包,^ffffff祝您在游戏中玩的开心!",
	[8428] = "您成功兑换了物品^ffcb40新浪两周年欢聚礼包,^ffffff祝您在游戏中玩的开心!",
	[8429] = "您成功兑换了物品^ffcb40微信两周年欢聚普通礼包,^ffffff祝您在游戏中玩的开心!",
	[8430] = "您成功兑换了物品^ffcb40顺网网吧两周年欢聚礼包,^ffffff祝您在游戏中玩的开心!",
	[8431] = "您成功兑换了物品^ffcb40易游网吧两周年欢聚礼包,^ffffff祝您在游戏中玩的开心!",
	[8432] = "您成功兑换了物品^ffcb40腾讯两周年欢聚礼包,^ffffff祝您在游戏中玩的开心!",
	[8433] = "您成功兑换了物品^ffcb40笑傲江湖多玩特权珍稀礼包,^ffffff祝您在游戏中玩的开心!",
	[8434] = "您成功兑换了物品^ffcb40微信两周年欢聚珍品礼包,^ffffff祝您在游戏中玩的开心!",
	[8435] = "您成功兑换了物品^ffcb40两周年欢聚礼包,^ffffff祝您在游戏中玩的开心!",
	[8475] = "您成功兑换了物品^ffcb40欢聚珍品礼包,^ffffff祝您在游戏中玩的开心!",
	[8497] = "您成功兑换了物品^ffcb40活动物品A,^ffffff祝您在游戏中玩的开心!",
	[8548] = "您成功兑换了物品^ffcb40笑傲感动礼包,^ffffff祝您在游戏中玩的开心!",
	[8549] = "您成功兑换了物品^ffcb40金庸60年笑傲典藏大礼包,^ffffff祝您在游戏中玩的开心!",
	[8588] = "经过一番闯荡历练，你略感疲惫，然树欲静而风不止。看着眼前这枚神秘出现的“恒山归来令”，你知道，一场史无前例的暴风雨正在酝酿，即将来袭！",
	[8697] = "您成功兑换了物品^ffcb4017173秘藏礼包,^ffffff祝您在游戏中玩的开心!",
	[8698] = "您成功兑换了物品^ffcb40多玩秘藏普通礼包,^ffffff祝您在游戏中玩的开心!",
	[8699] = "您成功兑换了物品^ffcb40多玩秘藏特权礼包,^ffffff祝您在游戏中玩的开心!",
	[8700] = "您成功兑换了物品^ffcb40新浪秘藏礼包,^ffffff祝您在游戏中玩的开心!",
	[8701] = "您成功兑换了物品^ffcb40腾讯秘藏礼包,^ffffff祝您在游戏中玩的开心!",
	[8702] = "您成功兑换了物品^ffcb40网易秘藏礼包,^ffffff祝您在游戏中玩的开心!",
	[8703] = "您成功兑换了物品^ffcb40npcgo秘藏礼包,^ffffff祝您在游戏中玩的开心!",
	[8704] = "您成功兑换了物品^ffcb40顺网网吧秘藏礼包,^ffffff祝您在游戏中玩的开心!",
	[8705] = "您成功兑换了物品^ffcb40易游网吧秘藏礼包,^ffffff祝您在游戏中玩的开心!",
	[8706] = "您成功兑换了物品^ffcb40多玩秘藏珍稀礼包,^ffffff祝您在游戏中玩的开心!",
	[8707] = "您成功兑换了物品^ffcb40媒体通发秘藏礼包,^ffffff祝您在游戏中玩的开心!",
	[8708] = "您成功兑换了物品^ffcb40官方活动礼包,^ffffff祝您在游戏中玩的开心!",
	[8872] = "尊贵的笑傲英侠会员，恭喜你获得极品穿金石*3：",
	[8946] = "尊贵的笑傲英侠会员，恭喜你获得英侠礼包（小）及极品穿金石*3",
	[8947] = "尊贵的笑傲英侠会员，恭喜你获得英侠礼包（小）及极品穿金石*6、飞行旗*20",
	[8948] = "尊贵的笑傲英侠会员，恭喜你获得英侠礼包（中）及英豪礼包",
	[8949] = "尊贵的笑傲英侠会员，恭喜你获得英侠礼包（中）及英豪礼包、英侠专属面饰！",
	[8950] = "尊贵的笑傲英侠会员，恭喜你获得英侠礼包（大）及英豪礼包、英侠专属面饰！",
	[8951] = "尊贵的笑傲英侠会员，恭喜你获得英侠礼包（大）及英豪礼包、英侠专属面饰及萌宠一只！",
	[8952] = "尊贵的笑傲英侠会员，恭喜你获得英侠礼包（大）及英豪礼包、英侠专属面饰及萌宠一只！",
	[8953] = "尊贵的笑傲英侠会员，恭喜你获得英侠礼包（大）及英豪礼包、英侠专属面饰、萌宠一只、坐骑一只！",
	[8954] = "尊贵的笑傲英侠会员，恭喜你获得英侠礼包（大）及英豪礼包、英侠专属面饰、萌宠一只、坐骑一只！",
	[8752] = "成功突破六道轮回第1层的奖励",
	[8753] = "成功突破六道轮回第2层的奖励",
	[8754] = "成功突破六道轮回第3层的奖励",
	[8755] = "成功突破六道轮回第4层的奖励",
	[8756] = "成功突破六道轮回第5层的奖励",
	[8757] = "成功突破六道轮回第6层的奖励",
	[8758] = "成功突破六道轮回第7层的奖励",
	[8759] = "成功突破六道轮回第8层的奖励",
	[8760] = "成功突破六道轮回第9层的奖励",
	[8761] = "成功突破六道轮回第10层的奖励",
	[8762] = "成功突破六道轮回第11层的奖励",
	[8763] = "成功突破六道轮回第12层的奖励",
	[8764] = "成功突破六道轮回第13层的奖励",
	[8765] = "成功突破六道轮回第14层的奖励",
	[8766] = "成功突破六道轮回第15层的奖励",
	[8767] = "成功突破六道轮回第16层的奖励",
	[8768] = "成功突破六道轮回第17层的奖励",
	[8769] = "成功突破六道轮回第18层的奖励",
	[8770] = "成功突破六道轮回第19层的奖励",
	[8771] = "成功突破六道轮回第20层的奖励",
	[8772] = "成功突破六道轮回第21层的奖励",
	[8773] = "成功突破六道轮回第22层的奖励",
	[8774] = "成功突破六道轮回第23层的奖励",
	[8775] = "成功突破六道轮回第24层的奖励",
	[8776] = "成功突破六道轮回第25层的奖励",
	[8777] = "成功突破六道轮回第26层的奖励",
	[8778] = "成功突破六道轮回第27层的奖励",
	[8779] = "成功突破六道轮回第28层的奖励",
	[8780] = "成功突破六道轮回第29层的奖励",
	[8781] = "成功突破六道轮回第30层的奖励",
	[8782] = "成功突破六道轮回第31层的奖励",
	[8783] = "成功突破六道轮回第32层的奖励",
	[8784] = "成功突破六道轮回第33层的奖励",
	[8785] = "成功突破六道轮回第34层的奖励",
	[8786] = "成功突破六道轮回第35层的奖励",
	[8787] = "成功突破六道轮回第36层的奖励",
	[8788] = "成功突破六道轮回第37层的奖励",
	[8789] = "成功突破六道轮回第38层的奖励",
	[8790] = "成功突破六道轮回第39层的奖励",
	[8791] = "成功突破六道轮回第40层的奖励",
	[8792] = "成功突破六道轮回第41层的奖励",
	[8793] = "成功突破六道轮回第42层的奖励",
	[8794] = "成功突破六道轮回第43层的奖励",
	[8795] = "成功突破六道轮回第44层的奖励",
	[8796] = "成功突破六道轮回第45层的奖励",
	[8797] = "成功突破六道轮回第46层的奖励",
	[8798] = "成功突破六道轮回第47层的奖励",
	[8799] = "成功突破六道轮回第48层的奖励",
	[8800] = "成功突破六道轮回第49层的奖励",
	[8801] = "成功突破六道轮回第50层的奖励",
	[8802] = "成功突破六道轮回第51层的奖励",
	[8803] = "成功突破六道轮回第52层的奖励",
	[8804] = "成功突破六道轮回第53层的奖励",
	[8805] = "成功突破六道轮回第54层的奖励",
	[8806] = "成功突破六道轮回第55层的奖励",
	[8807] = "成功突破六道轮回第56层的奖励",
	[8808] = "成功突破六道轮回第57层的奖励",
	[8809] = "成功突破六道轮回第58层的奖励",
	[8810] = "成功突破六道轮回第59层的奖励",
	[8811] = "成功突破六道轮回第60层的奖励",
	[8812] = "当日历练六道轮回第1层的奖励",
	[8813] = "当日历练六道轮回第2层的奖励",
	[8814] = "当日历练六道轮回第3层的奖励",
	[8815] = "当日历练六道轮回第4层的奖励",
	[8816] = "当日历练六道轮回第5层的奖励",
	[8817] = "当日历练六道轮回第6层的奖励",
	[8818] = "当日历练六道轮回第7层的奖励",
	[8819] = "当日历练六道轮回第8层的奖励",
	[8820] = "当日历练六道轮回第9层的奖励",
	[8821] = "当日历练六道轮回第10层的奖励",
	[8822] = "当日历练六道轮回第11层的奖励",
	[8823] = "当日历练六道轮回第12层的奖励",
	[8824] = "当日历练六道轮回第13层的奖励",
	[8825] = "当日历练六道轮回第14层的奖励",
	[8826] = "当日历练六道轮回第15层的奖励",
	[8827] = "当日历练六道轮回第16层的奖励",
	[8828] = "当日历练六道轮回第17层的奖励",
	[8829] = "当日历练六道轮回第18层的奖励",
	[8830] = "当日历练六道轮回第19层的奖励",
	[8831] = "当日历练六道轮回第20层的奖励",
	[8832] = "当日历练六道轮回第21层的奖励",
	[8833] = "当日历练六道轮回第22层的奖励",
	[8834] = "当日历练六道轮回第23层的奖励",
	[8835] = "当日历练六道轮回第24层的奖励",
	[8836] = "当日历练六道轮回第25层的奖励",
	[8837] = "当日历练六道轮回第26层的奖励",
	[8838] = "当日历练六道轮回第27层的奖励",
	[8839] = "当日历练六道轮回第28层的奖励",
	[8840] = "当日历练六道轮回第29层的奖励",
	[8841] = "当日历练六道轮回第30层的奖励",
	[8842] = "当日历练六道轮回第31层的奖励",
	[8843] = "当日历练六道轮回第32层的奖励",
	[8844] = "当日历练六道轮回第33层的奖励",
	[8845] = "当日历练六道轮回第34层的奖励",
	[8846] = "当日历练六道轮回第35层的奖励",
	[8847] = "当日历练六道轮回第36层的奖励",
	[8848] = "当日历练六道轮回第37层的奖励",
	[8849] = "当日历练六道轮回第38层的奖励",
	[8850] = "当日历练六道轮回第39层的奖励",
	[8851] = "当日历练六道轮回第40层的奖励",
	[8852] = "当日历练六道轮回第41层的奖励",
	[8853] = "当日历练六道轮回第42层的奖励",
	[8854] = "当日历练六道轮回第43层的奖励",
	[8855] = "当日历练六道轮回第44层的奖励",
	[8856] = "当日历练六道轮回第45层的奖励",
	[8857] = "当日历练六道轮回第46层的奖励",
	[8858] = "当日历练六道轮回第47层的奖励",
	[8859] = "当日历练六道轮回第48层的奖励",
	[8860] = "当日历练六道轮回第49层的奖励",
	[8861] = "当日历练六道轮回第50层的奖励",
	[8862] = "当日历练六道轮回第51层的奖励",
	[8863] = "当日历练六道轮回第52层的奖励",
	[8864] = "当日历练六道轮回第53层的奖励",
	[8865] = "当日历练六道轮回第54层的奖励",
	[8866] = "当日历练六道轮回第55层的奖励",
	[8867] = "当日历练六道轮回第56层的奖励",
	[8868] = "当日历练六道轮回第57层的奖励",
	[8869] = "当日历练六道轮回第58层的奖励",
	[8870] = "当日历练六道轮回第59层的奖励",
	[8871] = "当日历练六道轮回第60层的奖励",
	[9036] = "您成功兑换了物品^ffcb40多玩双旦普通礼包,^ffffff祝您在游戏中玩的开心!",
	[9037] = "您成功兑换了物品^ffcb40多玩双旦珍稀礼包,^ffffff祝您在游戏中玩的开心!",
}



--获取物品描述函数
--ext_tbl: 特殊属性表,使用字符串索引
--ext_tbl["Num"]			数目
--ext_tbl["UnitPrice"]		单价
--ext_tbl["Bind"]			绑定状态
--ext_tbl["EquipEndurance"]		装备耐久
--ext_tbl["EquipRepairCost"]	装备修理价格
--ext_tbl["EquipEssAddon"]		装备的本体附加属性组id
--ext_tbl["ServiceNPC"]			NPC出售，回收，修理 的NPC模板ID
--ext_tbl["TimeLimit"]			道具时限，可直接与GameApi.GetServerTime()["server_time"]相减算时差
--ext_tbl["GiftFromName"]		礼物的发送人名称
--ext_tbl["GiftToName"]			礼物的接收人名称
--ext_tbl["GiftData"]			礼物日期，可直接与GameApi.GetServerTime()["server_time"]相减算时差
--ext_tbl["GiftContent"]		礼物发送人留言
--ext_tbl["Grade"]			强化等级
--ext_tbl["KaiguangState"]		开光状态 --0完全不可开光，1-没开光且封印，2-可开光，3-已开光
--ext_tbl["EquipEssAddon"]		装备的本体附加属性

--		CopyTable(ext_tbl["EquipEssAddon"], t_equip)
--		t_equip["ext_group_type"]	double	附加属性组情况(0:待鉴定, 1:无  2:确定的ID)
--		t_equip["ext_group_generate_type"]	double	属性组生成类型（0-服务器、1-本地）
--		t_equip["ext_group_id"]		double	附加属性组id
--		t_equip["ext_prop_count"]	double	附加属性个数

--		t_equip["ext_has_baseprop"]	bool	是否有基础属性

--		t_equip["ext_prop_%d_id"]	double	属性模板id(%d = 1 to 9 , 1为基础)
--		t_equip["ext_prop_%d_rand"]	double	属性随机值(%d = 1 to 9 , 1为基础)
--		t_equip["ext_prop_%d_type"]	double	属性随机值(%d = 1 to 9 , 1为基础)
--		t_equip["ext_prop_%d_param1"]	double	属性参数1数据(%d = 1 to 9 , 1为基础)
--		t_equip["ext_prop_%d_param2"]	double	属性参数2数据(%d = 1 to 9 , 1为基础)
--		t_equip["ext_prop_%d_param3"]	double	属性参数数据(%d = 1 to 9 , 1为基础)
--ext_tbl["EquipKaiguangAddon"]		开光属性

--		CopyTable(ext_tbl["EquipEssAddon"], g_equip)
--		g_equip["ext_group_type"]	double	附加属性组情况(0:待鉴定, 1:无  2:确定的ID)
--		g_equip["ext_group_id"]		double	附加属性组id
--		g_equip["ext_prop_count"]	double	附加属性个数

--		g_equip["ext_has_baseprop"]	bool	是否有基础属性

--		g_equip["ext_prop_%d_id"]	double	属性模板id(%d = 1 to 9 , 1为基础)
--		g_equip["ext_prop_%d_rand"]	double	属性随机值(%d = 1 to 9 , 1为基础)
--		g_equip["ext_prop_%d_type"]	double	属性随机值(%d = 1 to 9 , 1为基础)
--		g_equip["ext_prop_%d_param1"]	double	属性参数1数据(%d = 1 to 9 , 1为基础)
--		g_equip["ext_prop_%d_param2"]	double	属性参数2数据(%d = 1 to 9 , 1为基础)
--		g_equip["ext_prop_%d_param3"]	double	属性参数数据(%d = 1 to 9 , 1为基础)
--ext_tbl["EquipReinforceAddon"]	强化属性

--		CopyTable(ext_tbl["EquipEssAddon"], q_equip)
--		q_equip["ext_group_type"]	double	附加属性组情况(0:待鉴定, 1:无  2:确定的ID)
--		q_equip["ext_group_id"]		double	附加属性组id
--		q_equip["ext_prop_count"]	double	附加属性个数

--		q_equip["ext_has_baseprop"]	bool	是否有基础属性

--		q_equip["ext_prop_%d_id"]	double	属性模板id(%d = 1 to 9 , 1为基础)
--		q_equip["ext_prop_%d_rand"]	double	属性随机值(%d = 1 to 9 , 1为基础)
--		q_equip["ext_prop_%d_type"]	double	属性随机值(%d = 1 to 9 , 1为基础)
--		q_equip["ext_prop_%d_param1"]	double	属性参数1数据(%d = 1 to 9 , 1为基础)
--		q_equip["ext_prop_%d_param2"]	double	属性参数2数据(%d = 1 to 9 , 1为基础)
--		q_equip["ext_prop_%d_param3"]	double	属性参数数据(%d = 1 to 9 , 1为基础)
--ext_tbl["next_reinforce"]["group_id"] --下一强化等级强化属性

--ext_tbl["next_reinforce"]["addon_tbl"]
--ext_tbl["next_reinforce"]["addon_tbl"][1]["addon_id"]
--ext_tbl["next_reinforce"]["addon_tbl"][1]["type"]
--ext_tbl["next_reinforce"]["addon_tbl"][1]["param1"]
--ext_tbl["next_reinforce"]["addon_tbl"][1]["param2"]
--ext_tbl["next_reinforce"]["addon_tbl"][1]["param3"]
--ext_tbl["next_kaiguang"]["group_id"]--下一强化等级开光属性

--ext_tbl["next_kaiguang"]["addon_tbl"]
--ext_tbl["next_kaiguang"]["addon_tbl"][1]["addon_id"]
--ext_tbl["next_kaiguang"]["addon_tbl"][1]["type"]
--ext_tbl["next_kaiguang"]["addon_tbl"][1]["param1"]
--ext_tbl["next_kaiguang"]["addon_tbl"][1]["param2"]
--ext_tbl["next_kaiguang"]["addon_tbl"][1]["param3"]
--ext_tbl["Dice"]			彩票抽取数据
--	ext_tbl["Dice"][i]		彩票抽取数据（1－6）
--ext_tbl["Stone"]			宝石属性
--	CopyTable(ext_tbl["Stone"], e_Stone)
--	yuan_tbl = e_Stone[1]		圆孔数
--	len_tbl = e_Stone[2]		菱形孔数量
--	bgz_tbl = e_Stone[3]		不规则孔数量
--	#yuan_tbl  #e_Stone[1]	圆宝数目
--	yuan_tbl[1]
--	e_Stone[1][1]	圆孔的第一个宝石ID
--ext_tbl["SignName"]			签名字样
--ext_tbl["SignLevel"]			签名等级
--                                  / ---["idx"]
--ext_tbl["Dyeing"][1到4，可能比4小]
--                                  \ ---["color"]
--ext_tbl["ShopSellMode"]
--ext_tbl["ShopSellPrice"]
--ext_tbl["RepuType"]
--ext_tbl["RepuValue"]
--ext_tbl["ShopSellItem"]
--ext_tbl["ShopSellCnt"]
--ext_tbl["PrintIcon"]	印染图标
--ext_tbl["GuildBind"]	帮派绑定
--ext_tbl["destroy_id"]	销毁道具id


function ItemTip:GetItemDesc(tid,cid,context_type,price_scale,ext_tbl)
	LogPrint("cid:" .. cid)
	--LogPrint(cid)

	if tid < 1 then
		return DescTool:GetErrorDesc()
	end

	if cid == ClassType.ICID_EQUIP then
		return DescTool:GetEquipDesc(tid,cid,context_type,price_scale,ext_tbl)
	elseif cid == ClassType.ICID_MATERIAL then
		return DescTool:GetMaterialDesc(tid,cid,context_type,price_scale,ext_tbl)
	elseif cid == ClassType.ICID_MEDICINE then
		return DescTool:GetMedicineDesc(tid,cid,context_type,price_scale,ext_tbl)
	elseif cid == ClassType.ICID_SKILLTOME then
		return DescTool:GetSkillTomeDesc(tid,cid,context_type,price_scale,ext_tbl)
	elseif cid == ClassType.ICID_TASKITEM then
		return DescTool:GetTaskItemDesc(tid,cid,context_type,price_scale,ext_tbl)
	elseif cid == ClassType.ICID_TASKDICE then
		return DescTool:GetTaskDiceDesc(tid,cid,context_type,price_scale,ext_tbl)
	elseif cid == ClassType.ICID_ERRORITEM then
		return DescTool:GetErrorItemDesc(tid,cid,context_type,price_scale,ext_tbl)
	elseif cid == ClassType.ICID_SKILLMATTER then
		return DescTool:GetSkillMatterDesc(tid,cid,context_type,price_scale,ext_tbl)
	elseif cid == ClassType.ICID_VEHICLE then
		return DescTool:GetVehicleDesc(tid,cid,context_type,price_scale,ext_tbl)
	elseif cid == ClassType.ICID_SPAKER then
		return DescTool:GetSpakerDesc(tid,cid,context_type,price_scale,ext_tbl)
	elseif cid == ClassType.ICID_PET_BEDGE then
		return DescTool:GetPetBedgeDesc(tid,cid,context_type,price_scale,ext_tbl)
	elseif cid == ClassType.ICID_PET_SKILL then
		return DescTool:GetPetSkillDesc(tid,cid,context_type,price_scale,ext_tbl)
	elseif cid == ClassType.ICID_PET_MEDICINE then
		return DescTool:GetPetMedicineDesc(tid,cid,context_type,price_scale,ext_tbl)
	elseif cid == ClassType.ICID_PET_RESETPROP then
		return DescTool:GetPetResetPropDesc(tid,cid,context_type,price_scale,ext_tbl)
	elseif cid == ClassType.ICID_PET_ADDPROP then
		return DescTool:GetPetAddPropDesc(tid,cid,context_type,price_scale,ext_tbl)
	elseif cid == ClassType.ICID_PET_ADJPOWERPROP then
		return DescTool:GetPetAdjPowerPropDesc(tid,cid,context_type,price_scale,ext_tbl)
	elseif cid == ClassType.ICID_TASKITEM_GENERATOR then
		return DescTool:GetTaskItemGeneratorDesc(tid,cid,context_type,price_scale,ext_tbl)
	elseif cid == ClassType.ICID_PET_NORMALMEDICINE then
		return DescTool:GetPetNormalMedicineDesc(tid,cid,context_type,price_scale,ext_tbl)
	elseif cid == ClassType.ICID_GIFT then
		return DescTool:GetGiftDesc(tid,cid,context_type,price_scale,ext_tbl)
	elseif cid == ClassType.ICID_SUMMON_ITEM then
		return DescTool:GetSummonItemDesc(tid,cid,context_type,price_scale,ext_tbl)
	elseif cid == ClassType.ICID_LOTTERY then
		return DescTool:GetLotteryDesc(tid,cid,context_type,price_scale,ext_tbl)
	elseif cid == ClassType.ICID_CROPSEED then
		return DescTool:GetCROPSEEDDesc(tid,cid,context_type,price_scale,ext_tbl)
	elseif cid == ClassType.ICID_RECIPEROLL then
		return DescTool:GetRECIPEROLLDesc(tid,cid,context_type,price_scale,ext_tbl)
	elseif cid == ClassType.ICID_NORMAL_ITEM then
		return DescTool:GetNormalItemDesc(tid,cid,context_type,price_scale,ext_tbl)
	elseif cid == ClassType.ICID_ESTONE then
		return DescTool:GetESTONEDesc(tid,cid,context_type,price_scale,ext_tbl)
	elseif cid == ClassType.ICID_PSTONE then
		return DescTool:GetPSTONEDesc(tid,cid,context_type,price_scale,ext_tbl)
	elseif cid == ClassType.ICID_APLITITUDE then
		return DescTool:GetAplititudeDesc(tid,level)
	elseif cid == ClassType.ICID_PRACTISE then
		return DescTool:GetPractiseDesc(tid)
	elseif cid == ClassType.ICID_BREEDCUB then
		return DescTool:GetBreedcubDesc(tid,cid,context_type,price_scale,ext_tbl)
	elseif cid == ClassType.ICID_MONSTERCTRL then
		return DescTool:GetMonsterCtrlDesc(tid,cid,context_type,price_scale,ext_tbl)
	elseif cid == ClassType.ICID_FIREWORK then
		return DescTool:GetFireWorkDesc(tid,cid,context_type,price_scale,ext_tbl)
	elseif cid == ClassType.ICID_COUPLE_JUMPTO then
		return DescTool:GetCoupleJumptoDesc(tid,cid,context_type,price_scale,ext_tbl)
	elseif cid == ClassType.ICID_TRANSMITROLL then
		return DescTool:GetTransmitRollDesc(tid,cid,context_type,price_scale,ext_tbl)
	elseif cid == ClassType.ICID_DOUBLEEXP then
		return DescTool:GetDoubleExpDesc(tid,cid,context_type,price_scale,ext_tbl)
	elseif cid == ClassType.ICID_INVITATION then
		return DescTool:GetInvitationDesc(tid,cid,context_type,price_scale,ext_tbl)
	elseif cid == ClassType.ICID_TRANSMITFLAG then
		return DescTool:GetTransmitFlagDesc(tid,cid,context_type,price_scale,ext_tbl)
	elseif cid == ClassType.ICID_BACKPACK then
		return DescTool:GetBackPackDesc(tid,cid,context_type,price_scale,ext_tbl)
	elseif cid == ClassType.ICID_TREASUREMAP then
		return DescTool:GetTreasureMapDesc(tid,cid,context_type,price_scale,ext_tbl)
	elseif cid == ClassType.ICID_TREASUREMAPFRAGMENT then
		return DescTool:GetTreasureMapFragmentDesc(tid,cid,context_type,price_scale,ext_tbl)
	elseif cid == ClassType.ICID_SCENEONLY then
		return DescTool:GetSceneOnlyDesc(tid,cid,context_type,price_scale,ext_tbl)
	elseif cid == ClassType.ICID_SERVANT then
		return DescTool:GetServantDesc(tid,cid,context_type,price_scale,ext_tbl)
	elseif cid == ClassType.ICID_STATEMENT then
		return DescTool:GetStatmentDesc(tid,cid,context_type,price_scale,ext_tbl)
	elseif cid == ClassType.ICID_DART then
		return DescTool:GetDartDesc(tid,cid,context_type,price_scale,ext_tbl)
	elseif cid == ClassType.ICID_INFO_FRAGMENT then
		return DescTool:GetInfoFragmentDesc(tid,cid,context_type,price_scale,ext_tbl)
	elseif cid == ClassType.ICID_TREASUREITEM then
		return DescTool:GetTreasureItemDesc(tid,cid,context_type,price_scale,ext_tbl)
	elseif cid == ClassType.ICID_TREASURE_INTRIGUE then
		return DescTool:GetTreasureIntrigueDesc(tid,cid,context_type,price_scale,ext_tbl)
	elseif cid == ClassType.ICID_TREASUREMAP_PIECE then
		return DescTool:GetTreasureMapPieceDesc(tid,cid,context_type,price_scale,ext_tbl)
	elseif cid == ClassType.ICID_EQUIP_HOLE_ITEM then
		return DescTool:GetHOLEDesc(tid,cid,context_type,price_scale,ext_tbl)
	elseif cid == ClassType.ICID_EQUIP_EMBED_ITEM then
		return DescTool:GetEMBEDDesc(tid,cid,context_type,price_scale,ext_tbl)
	elseif cid == ClassType.ICID_CHANGEFACE then
		return DescTool:GetChangeFaceDesc(tid,cid,context_type,price_scale,ext_tbl)
	elseif cid == ClassType.ICID_EQUIP_STONECOMPOSE_ITEM then
		return DescTool:GetSTONECOMPOSEDesc(tid,cid,context_type,price_scale,ext_tbl)
	elseif cid == ClassType.ICID_DEL_ROB_DART then
		return DescTool:GetDelRobDartDesc(tid,cid,context_type,price_scale,ext_tbl)
	elseif cid == ClassType.ICID_POISON then
		return DescTool:GetPoisonDesc(tid,cid,context_type,price_scale,ext_tbl)
	elseif cid == ClassType.ICID_SETTRAP then
		return DescTool:GetSetTrapDesc(tid,cid,context_type,price_scale,ext_tbl)
	elseif cid == ClassType.ICID_PET_SUMMON then
		return DescTool:GetPetSummonItemDesc(tid,cid,context_type,price_scale,ext_tbl)
	elseif cid == ClassType.ICID_PET_SUMMON then
		return DescTool:GetPetSummonItemDesc(tid,cid,context_type,price_scale,ext_tbl)
	elseif cid == ClassType.ICID_CLUE then
		return DescTool:GetClueItemDesc(tid,cid,context_type,price_scale,ext_tbl)
	elseif cid == ClassType.ICID_PLAYER_CHUANGONG then
		return DescTool:GetPlayerChuangongDesc(tid,cid,context_type,price_scale,ext_tbl)
	elseif cid == ClassType.ICID_EQUIP_UPGRADE_ITEM then
		return DescTool:GetNormalItemDesc(tid,cid,context_type,price_scale,ext_tbl)
	elseif cid == ClassType.ICID_PRODUCE_SKILL_LV_UP_ITEM then
		return DescTool:GetNormalItemDesc(tid,cid,context_type,price_scale,ext_tbl)
	elseif cid == ClassType.ICID_EMOTION_ITEM then
		return DescTool:GetEmotionItemDesc(tid,cid,context_type,price_scale,ext_tbl)
	elseif cid == ClassType.ICID_STONE_GENERATE_BAG then
		return DescTool:GetStoneGenerateBagDesc(tid,cid,context_type,price_scale,ext_tbl)
	elseif cid == ClassType.ICID_FASHIONEQUIP_PAINTER then
		return DescTool:GetFashionEquipPainterDesc(tid,cid,context_type,price_scale,ext_tbl)
	elseif cid == ClassType.ICID_DARTS_WEAPON then
		return DescTool:GetDartsWeaponDesc(tid,cid,context_type,price_scale,ext_tbl)
	elseif cid == ClassType.ICID_DARTS_BOX then
		return DescTool:GetDartsBoxDesc(tid,cid,context_type,price_scale,ext_tbl)
	elseif cid == ClassType.ICID_DESTROYINGESSENCE then
		return DescTool:GetDestroyingEssenceDesc(tid,cid,context_type,price_scale,ext_tbl)
	elseif cid == ClassType.ICID_COMPANION_PET_ITEM then
		return DescTool:GetCutePetItemDesc(tid,cid,context_type,price_scale,ext_tbl)
	elseif cid == ClassType.ICID_ICID_FASHION_RECIPT_ITEM then
		return DescTool:GetFASHIONRECIPTDesc(tid,cid,context_type,price_scale,ext_tbl)
	elseif cid == ClassType.ICID_ICID_CARD_ITEM then
		return DescTool:GetCardDesc(tid,cid,context_type,price_scale,ext_tbl)
	elseif cid == ClassType.ICID_ICID_KUNGFU_SOUL_ITEM then
		return DescTool:GetKungfuSoulDesc(tid,cid,context_type,price_scale,ext_tbl)
	elseif cid == ClassType.ICID_TEXT_FIREWORK then
		return DescTool:GetTextFireWorkDesc(tid,cid,context_type,price_scale,ext_tbl)
	else
		return DescTool:GetUnknownItemDesc(tid,cid,context_type,price_scale,ext_tbl)
	end

end

function ItemTip:GetRewardDesc(tid)
	return ItemTip.Desc[--[[!]]"奖励说明"][tid]
end


--商城物品描述
function ItemTip:GetMallItemDesc(tid, cid, count, tbl)
--[[
sell_end_time (number) 下架时间(GMT)
time_limit (number) 有效期时长(秒)
gift_id (number) 赠品tid
gift_count (number) 赠品数量
这些信息已显示在购买界面中，但购物车和结算界面中看不到。有空麻烦加一下tip
]]
	return DescTool:GetMallItemDesc(tid, cid, count, tbl)
end

--[[
	取得套装描述中的一条附加属性组文字，前附：“xx件”
]]
local function GetSuitEffectBaseDesc (tid, mType, iSetCount, bIsSetActive)
	local EffectGroupStr = DescUtility:GetEffectBaseDesc(tid, mType)
	if bIsSetActive then
		return string.format(--[[!AUTO_500]]"%s%s：%s", TAG_COLOR_ESSENCE[1], TAG_SETITEM_COUNT[iSetCount] or TAG_SETITEM_COUNT_DEFAULT, EffectGroupStr)
	else
		return string.format(--[[!AUTO_501]]"%s%s：%s", TAG_COLOR_ESSENCE[6], TAG_SETITEM_COUNT[iSetCount] or TAG_SETITEM_COUNT_DEFAULT, EffectGroupStr)
	end
end

--获取套装描述
--suit_cnt  -- 目前身上的套装数目
--suit_prop -- key是需要几件，value是对应的属性组id
function ItemTip:GetSuitDesc(suit_cnt, suit_prop)
	local SetItemTip = --[[!AUTO_106]]""
	for iEss = 1, 14 do
		if suit_prop[iEss] then
			local SetPropStr = --[[!AUTO_107]]""
			if suit_prop[iEss] > 0 then
				local bIsSetActive = (suit_cnt >= iEss)
				SetPropStr = GetSuitEffectBaseDesc(suit_prop[iEss], 2, iEss, bIsSetActive)
			end
			if SetPropStr ~= --[[!AUTO_108]]"" then
				if SetItemTip == --[[!AUTO_109]]"" then
					SetItemTip = TAG_SETITEM_TITLE .. SetPropStr
				else
					SetItemTip = SetItemTip .. --[[!AUTO_110]]"\r" .. SetPropStr
				end
			end
		end
	end
	return SetItemTip .. --[[!AUTO_111]]"\r"
end

-- 新的获取套装描述中一条附加属性组文字的函数，之前会加上 XX星
local function NewGetSuitEffectBaseDesc( tid, mType, iStarCount, bIsSetActive )
	-- body
	local EffectGroupStr = DescUtility:GetEffectBaseDesc( tid, mType )
	if bIsSetActive then
		return string.format( "%s%d星：%s", TAG_COLOR_ESSENCE[1], iStarCount, EffectGroupStr )
	else
		return string.format( "%s%d星：%s", TAG_COLOR_ESSENCE[6], iStarCount, EffectGroupStr )
	end
end

-- 新的获取套装描述函数
-- star_cnt: 目前身上的套装总的星数
-- suit_prop: key是需要的星数目，value是对应的属性组id
function ItemTip:NewGetSuitDesc( star_cnt, suit_prop )
	-- body
	local iIndex = -1
	for k,v in pairs(suit_prop) do
		iIndex = iIndex + k
	end

	local SetItemTip = ""
	for i=1,iIndex do
		local SetPropStr = ""
		local v = suit_prop[i]
		if v then			
			if v > 0 then
				local bIsSetActive = (star_cnt >= i)
				SetPropStr = NewGetSuitEffectBaseDesc( v, 2, i, bIsSetActive )
			end
			if SetPropStr ~= "" then
				if SetItemTip == "" then
					SetItemTip = TAG_SETITEM_TITLE .. SetPropStr
				else
					SetItemTip = SetItemTip .. "\r" .. SetPropStr
				end
			end
		end
	end
	
	return SetItemTip .. "\r"
end

local legendParts = {"ring", "hufu", 4}

--[[
	取得传奇套装描述中的一条附加属性组文字，前附：“两枚戒指：”等
	which: legendParts 中的某一项
]]
local function GetLegendSuitEffectBaseDesc (tid, mType, which, bIsSetActive, extraAttributePercentage)
	local EffectGroupStr = DescUtility:GetEffectBaseDesc(tid, mType, extraAttributePercentage)
	return string.format(--[[!AUTO_500]]"%s%s：\r%s%s",
		bIsSetActive and TAG_COLOR_ESSENCE[1] or TAG_COLOR_ESSENCE[6],			--颜色
		TAG_LEGEND_SETITEM_COUNT[which] or TAG_LEGEND_SETITEM_COUNT.default,	--件数
		TAG_LEGEND_SETITEM_COUNT.indent,										--换行后加空白
		EffectGroupStr)															--属性
end

--获取传奇套装描述
--equiqedParts	-- 已装备的套件, ring = true/false, hufu = true/false, [4] = true/false
--suiteAddons	-- 套装附加属性组, ring = id, hufu = id, [4] = id
--extraPercentages	-- 额外增加的属性百分比, ring = value, hufu = value, [4] = value
function ItemTip:GetLegendSuitDesc(equiqedParts, suiteAddons, extraPercentages)
	local SetItemTip = --[[!AUTO_106]]""
	for iPart = 1, #legendParts do
		local part = legendParts[iPart]
		
		local bIsSetActive = equiqedParts[part]
		local addon = suiteAddons[part]
		local extraPercentage = extraPercentages[part]
		
		if extraPercentage == 0 then
			extraPercentage = nil
		end
		local SetPropStr = GetLegendSuitEffectBaseDesc(addon, 2, part, bIsSetActive, extraPercentage)	--生效时才显示额外增加的比例
		if SetPropStr ~= --[[!AUTO_108]]"" then
			if SetItemTip == --[[!AUTO_109]]"" then
				SetItemTip = TAG_SETITEM_TITLE .. SetPropStr
			else
				SetItemTip = SetItemTip .. --[[!AUTO_110]]"\r" .. SetPropStr
			end
		end
	end
	return SetItemTip .. --[[!AUTO_111]]"\r"
end

--玩家获得物品的原因
ItemTip.ItemIncType =
{
	INC_ITEM_TYPE_NULL              = 0,
	INC_ITEM_TYPE_TASK              = 1,    --任务
	INC_ITEM_TYPE_NPC_TRADE         = 2,    --npc交易
	INC_ITEM_TYPE_PLAYER_TRADE      = 3,    --玩家交易
	INC_ITEM_TYPE_MARKET            = 4,    --摆摊
	INC_ITEM_TYPE_PICKUP            = 5,    --拾取
	INC_ITEM_TYPE_LOTTERY           = 6,    --彩票
	INC_ITEM_TYPE_MAIL              = 7,    --邮件
	INC_ITEM_TYPE_PRODUCE           = 8,    --生产
	INC_ITEM_TYPE_BUYBACK           = 9,    --回购
	INC_ITEM_TYPE_UNINSTALL_STONE   = 10,   --解除镶嵌
	INC_ITEM_TYPE_MALL              = 11,   --商城
	INC_ITEM_TYPE_CATCH_PET		= 12,	--捉宠
	INC_ITEM_TYPE_ITEM_GEN		= 13,	--任务生成器物品
	INC_ITEM_TYPE_GIFT		= 14,	--收到礼物
	INC_ITEM_TYPE_MARRIAGE		= 15,	--婚姻(交换戒指)
	INC_ITEM_TYPE_SYNTHETIZE	= 16,	--合成
	INC_ITEM_TYPE_PET_SKILL_TRANS	= 17,	--宠物技能转移附加产物
	INC_ITEM_TYPE_EQUIP_UNEMBED_STONE = 18,	--取出装备上镶嵌的宝石
	INC_ITEM_TYPE_ANALYZE_PRODUCT	= 19,	--拆分成品
	INC_ITEM_TYPE_PRACTICE		= 20,	--修炼
	INC_ITEM_TYPE_PICKUP_DROP	= 21,	--拾取其他玩家掉落
	INC_ITEM_TYPE_INSTANCE_LUCKYDRAW = 22,	--副本抽奖
	INC_ITEM_TYPE_ONLINE_GIFT	= 23,	--在线发奖
	INC_ITEM_TYPE_FLOURISH 		= 24,	--活跃度
	INC_ITEM_TYPE_TREASURE_MAP	= 25,	--藏宝图拼图
	INC_ITEM_TYPE_MAFIA_LOG		= 26,	--帮派打工
	INC_ITEM_TYPE_PICKUP_SELF_DROP	= 27,	--拾取自己掉落
	INC_ITEM_TYPE_ROB_ESCORT	= 28,	--打劫镖车
	INC_ITEM_TYPE_REWARD		= 29,	--奖励
	INC_ITEM_TYPE_TREASURE_MAP_PRIZE = 30,	--藏宝图奖励
	INC_ITEM_TYPE_TREASURE_STEAL	= 31,	--盗宝奖励


}

--玩家失去物品的原因
ItemTip.ItemDecType =
{
	DEC_ITEM_TYPE_NULL              = 0,
	DEC_ITEM_TYPE_TASK              = 1,    --任务
	DEC_ITEM_TYPE_NPC_SELL          = 2,    --npc出售
	DEC_ITEM_TYPE_NPC_BUY           = 3,    --npc购买
	DEC_ITEM_TYPE_PLAYER_TRADE      = 4,    --玩家交易
	DEC_ITEM_TYPE_MARKET            = 5,    --摆摊
	DEC_ITEM_TYPE_DEATH             = 6,    --死亡掉落
	DEC_ITEM_TYPE_USE               = 7,    --主动使用
	DEC_ITEM_TYPE_MAIL              = 8,    --邮件
	DEC_ITEM_TYPE_PRODUCE           = 9,    --生产消耗
	DEC_ITEM_TYPE_DESTROY           = 10,   --销毁
	DEC_ITEM_TYPE_GATHER            = 11,   --采集消耗
	DEC_ITEM_TYPE_EXPIRE            = 12,   --过期
	DEC_ITEM_TYPE_AUTO_DEL          = 13,   --自动删除
	DEC_ITEM_TYPE_GIFT		= 14,	--使用礼物
	DEC_ITEM_TYPE_MARRIAGE          = 15,   --婚姻(订婚,结婚,交换戒指)
	DEC_ITEM_TYPE_SYNTHETIZE        = 16,	--合成
	DEC_ITEM_TYPE_DISSEAL_EQUIP     = 17,   --解封装备
	DEC_ITEM_TYPE_KAIGUANG_EQUIP    = 18,   --开光装备
	DEC_ITEM_TYPE_REINFORCE_EQUIP   = 19,   --强化装备
	DEC_ITEM_TYPE_PET_SERVICE       = 20,   --宠物服务
	DEC_ITEM_TYPE_EQUIP_MAKE_HOLE   = 21,   --装备打孔
	DEC_ITEM_TYPE_EQUIP_EMBED_STONE = 22,   --装备镶嵌宝石
	DEC_ITEM_TYPE_EQUIP_UNEMBED_STONE  = 23,--取出装备上镶嵌的宝石
	DEC_ITEM_TYPE_HOME              = 24,   --家园
	DEC_ITEM_TYPE_ANALYZE_PRODUCT   = 25,   --拆分成品
	DEC_ITEM_TYPE_TMP               = 26,   --临时道具
	DEC_ITEM_TYPE_KUNGFU            = 27,   --功夫
	DEC_ITEM_TYPE_NPC_PURCHASE      = 28,   --npc收购
	DEC_ITEM_TYPE_EQUIP_MAGIC_STONE	= 29,	--装备镶嵌附魔石
	DEC_ITEM_TYPE_MALL		= 30,	--商城
	DEC_ITEM_TYPE_MAFIA		= 31,	--帮派
	DEC_ITEM_TYPE_ESCORT		= 32,	--上交劫镖物品
	DEC_ITEM_GATHER_INFORMATION	= 34,	--收集消息
	DEC_ITEM_SUBMIT_INFORMATION	= 35,	--上交消息
	DEC_ITEM_MAFIATREASURE_ADVANCE	= 36,	--升级帮派宝物
	DEC_ITEM_TYPE_TREASURE_STEAL	= 37,	--盗宝
	DEC_ITEM_TYPE_TREASURE_TRAP	= 38,	--藏宝阁机关
	DEC_ITEM_TYPE_PRODUCE_LEVELUP	= 39,	--生成技能用道具升级
	DEC_ITEM_TYPE_MAFIA_PARTY	= 40,	--生成技能用道具升级
	DEC_ITEM_TYPE_LEAVE_SCENE_DROP  = 43,   --离场景自动掉落
	DEC_ITEM_TYPE_WEBTRADE  = 54,   --WEBTRADE
}

--玩家获取钱的方式
ItemTip.GoldIncType =
{
	INC_MONEY_TYPE_NULL 		= 0,
	INC_MONEY_TYPE_TASK		= 1,	--任务
	INC_MONEY_TYPE_NPC_TRADE	= 2,	--npc交易
	INC_MONEY_TYPE_PLAYER_TRADE	= 3,	--玩家交易
	INC_MONEY_TYPE_MARKET		= 4,	--摆摊
	INC_MONEY_TYPE_PICKUP		= 5,	--拾取
	INC_MONEY_TYPE_LOTTERY		= 6,	--彩票
	INC_MONEY_TYPE_MAIL		= 7,	--邮件
	INC_MONEY_TYPE_INV_EXCHANGE	= 8,	--仓库包裹之间移动
	INC_MONEY_TYPE_PICKUP_DROP	= 9,	--拾取他人死亡掉落
	INC_MONEY_TYPE_GRADUATE		= 10,	--出师
	INC_MONEY_TYPE_GUESS_RETURN	= 21,	--返还竞猜本金
	INC_MONEY_TYPE_GUESS_WIN	= 22,	--竞猜赢取
}

--玩家失去钱的方式
ItemTip.GoldDecType =
{
	DEC_MONEY_TYPE_NULL		= 0,
	DEC_MONEY_TYPE_TASK		= 1,	--任务
	DEC_MONEY_TYPE_NPC_TRADE 	= 2,	--npc交易
	DEC_MONEY_TYPE_PLAYER_TRADE	= 3,	--玩家交易
	DEC_MONEY_TYPE_MARKET		= 4,	--摆摊
	DEC_MONEY_TYPE_MAIL_SEND	= 5,	--邮费
	DEC_MONEY_TYPE_MAIL_USE		= 6,	--邮件
	DEC_MONEY_TYPE_INV_EXCHANGE	= 7,	--仓库包裹之间移动
	DEC_MONEY_TYPE_REPAIR		= 8,	--修理
	DEC_MONEY_TYPE_PRODUCE		= 9,	--生产
	DEC_MONEY_TYPE_EQUIP_EMBED_STONE	= 10,	--装备镶嵌宝石
	DEC_MONEY_TYPE_EQUIP_UNEMBED_STONE	= 11,	--取出装备上镶嵌的宝石
	DEC_MONEY_TYPE_UNINSTALL_ADDITION = 12,	--解除附加
	DEC_MONEY_TYPE_INSTALLHARNESS	= 13,	--马具
	DEC_MONEY_TYPE_MARRIAGE		= 14,	--婚姻(订婚,结婚)
	DEC_MONEY_TYPE_DISSEAL_EQUIP	= 15,	--解封装备
	DEC_MONEY_TYPE_KAIGUANG_EQUIP	= 16,	--开光装备
	DEC_MONEY_TYPE_REINFORCE_EQUIP	= 17,	--强化装备
	DEC_MONEY_TYPE_DEATH		= 18,	--死亡掉落
	DEC_MONEY_TYPE_RESURRECT	= 19,	--原地复活
	DEC_MONEY_TYPE_PET		= 20,	--宠物相关服务
	DEC_MONEY_TYPE_EQUIP_EMBED_MAGIC_STONE	= 21,	--装备镶嵌宝石
}

--玩家获得经验的方式
ItemTip.ExpIncType =
{
	INC_EXP_TYPE_NULL		= 0,
	INC_EXP_TYPE_TASK		= 1,
	INC_EXP_TYPE_NPC		= 2,
	INC_EXP_TYPE_FAMILY		= 3,
	INC_EXP_TYPE_SKILL		= 4,
	INC_EXP_TYPE_LOTTERY		= 5,
	INC_EXP_TYPE_SHARE		= 6,
	INC_EXP_TYPE_PRODUCE		= 7,
	INC_EXP_TYPE_COMPENSATE		= 8,	--补偿经验
	INC_EXP_TYPE_TEACH		= 9,	--指点
	INC_EXP_TYPE_GRADUATE		= 10,	--出师
	INC_EXP_TYPE_NEWBIE		= 11,	--活动副本新手模式
	INC_EXP_TYPE_SECT		= 12,	--活动副本师徒模式
	INC_EXP_TYPE_CONTEST		= 13,	--答题竞赛
	INC_EXP_TYPE_PRACTICE		= 14,	--修炼
	INC_FORCE_TYPE_NULL		= 0,
}

--玩家失去功力的方式
ItemTip.ForceDecType =
{
	DEC_FORCE_TYPE_NULL		= 0,
	DEC_FORCE_TYPE_PRACTICE		= 1,	--修炼
	DEC_FORCE_TYPE_SKILLTOME	= 2,	--使用技能书
}

--包裹类型
ItemTip.PackType =
{
	IVTRTYPE_INVALID	= -1,
	IVTRTYPE_EQUIPPACK	= 0,
	IVTRTYPE_BACKPACK	= 1,--特殊包裹栏
	IVTRTYPE_PACK		= 2,--Normal pack
	IVTRTYPE_PACK1		= 3,--Normal pack1
	IVTRTYPE_PACK2		= 4,--Normal pack2
	IVTRTYPE_TASKITEM	= 5,--Task Item pack
	IVTRTYPE_MATERIAL	= 6,--Material pack
	IVTRTYPE_CARD		= 7,--Card pack
	IVTRTYPE_GIFT		= 8,--Gift pack
	IVTRTYPE_PETPACK	= 9,--Pet pack
	IVTRTYPE_SCENEONLY	= 10,--场景专用
	IVTRTYPE_TRASHBOX	= 11,--Trash box
	IVTRTYPE_PETSTORAGE	= 12,--Pet storage
	IVTRTYPE_FACTIONSTORE = 13,--帮派包裹
	IVTRTYPE_RECYCLE	= 14,--Recycle pack
	IVTRTYPE_FACTION_COREMSG	= 15, --帮派核心消息仓库
	IVTRTYPE_FACTION_NORMALMSG	= 16, --帮派小道消息仓库
	IVTRTYPE_FACTION_TREASURE	= 17, --帮派宝物仓库
}

--玩家获得物品
--drop_desc_text掉落文本索引的值
--idPlayer为0表示玩家自己
--isObtain为true表示获得物品,为false表示失去物品
--optType表示操作类型,获得物品的方式或者失去物品的原因
--程序事件调用
function ItemTip:OnItemMsg(drop_desc_text,idPlayer,namePlayer,tidItem,cid,itemName,numItem,optType,isObtain,pack_type,pack_idx)
	if isObtain then
		return ItemTip:OnObtainItem(drop_desc_text,idPlayer,namePlayer,tidItem,cid,itemName,numItem,optType,pack_type,pack_idx)
	else
		return ItemTip:OnLostItem(drop_desc_text,idPlayer,namePlayer,tidItem,cid,itemName,numItem,optType,pack_type,pack_idx)
	end

	LogPrint(--[[!AUTO_112]]"ItemTip:OnItemMsg Error Option.")
	return --[[!AUTO_113]]""
end

--获得物品处理
function ItemTip:OnObtainItem(drop_desc_text,idPlayer,namePlayer,tidItem,cid,itemName,numItem,optType,pack_type,pack_idx)
	local MsgReturn		= --[[!AUTO_114]]""		--返回的文本
	local MsgType		= 0		--信息类型，暂只在函数类使用，0为固定信息，1为通常信息（简单拼结），2为带链接信息
	local MsgStyle		= --[[!AUTO_115]]""		--文本的格式
	local MsgSubject	= --[[!AUTO_116]]""		--文本的主语
	local MsgItemNum	= --[[!AUTO_117]]""		--文本的物品数量
	local MsgItemCount	= --[[!AUTO_118]]""		--文本的物品量词
	local MsgItemName	= --[[!AUTO_119]]""		--文本的物品名称
	local MsgColor		= --[[!AUTO_120]]"^ffdc8a"
	
	if drop_desc_text > 9 then	--任务写死文字
		if ITEM_DROP_MESSAGE_TASK[drop_desc_text] ~= nil then
			MsgType   = 0
			MsgReturn = ITEM_DROP_MESSAGE_TASK[drop_desc_text]
		else
			MsgType  = 1
			MsgStyle = ITEM_DROP_MESSAGE_DEFAULT
		end
	elseif drop_desc_text == 9 or drop_desc_text == 38 or drop_desc_text == 40 then	--隐藏描述
		MsgType   = 0
		MsgReturn = ITEM_DROP_MESSAGE_HIDDEN
	elseif drop_desc_text == 8 then	--固定完成目标描述
		MsgType   = 0
		MsgReturn = ITEM_DROP_MESSAGE_TARGET
	else				--其它拼接情况
		if ITEM_DROP_MESSAGE_COMMON[drop_desc_text] ~= nil then
			MsgType  = 1
			MsgStyle = ITEM_DROP_MESSAGE_COMMON[drop_desc_text]
		else
			if pack_type == 11 then
				MsgType  = 1
				MsgStyle = ITEM_DROP_MESSAGE_SELL
			else
				if optType == 2 then
					MsgType  = 1
					MsgStyle = ITEM_DROP_MESSAGE_BUY
				elseif optType == 9 then
					MsgType  = 1
					MsgStyle = ITEM_DROP_MESSAGE_BUYBACK
				elseif optType == 41 then
					MsgType  = 1
					MsgStyle = ITEM_DROP_MESSAGE_GEMBIND
				else
					MsgType  = 1
					MsgStyle = ITEM_DROP_MESSAGE_DEFAULT
				end
			end
		end
	end

	if MsgType == 1 then		--对需拼接情况作进一步处理
		if idPlayer == 0 then
			MsgSubject = ITEM_DROP_MESSAGE_SELF
		else
			MsgSubject = namePlayer
		end
		local ItemOverlap = DescUtility:GetItemOverlap(tidItem, cid)
		if ItemOverlap == 1 then
			MsgItemNum   = --[[!AUTO_121]]""
			MsgItemCount = --[[!AUTO_122]]""
		else
			MsgItemNum   = string.format(--[[!AUTO_123]]"%d",numItem)
			MsgItemCount = ITEM_DROP_MESSAGE_COUNT
		end
		MsgItemName = DescUtility:GetItemName(tidItem, cid)
		MsgReturn   = string.format(MsgStyle, MsgSubject, MsgItemNum, MsgItemCount, MsgItemName)
	end

	--LogPrint(MsgReturn)
	if pack_type == 15 or pack_type == 16 then
		MsgReturn = --[[!AUTO_124]]""
	elseif optType == 40 then
		MsgReturn = ""
	end
	
	if pack_type == 20 then
		if pack_idx == 0 then
				MsgReturn = ""
		end
	end

	if MsgReturn == --[[!AUTO_125]]"" then
		return MsgReturn
	else
		return MsgColor .. MsgReturn
	end
end

function ItemTip:IsSpeicalItem(optType)
	if optType == ItemTip.ItemDecType.DEC_ITEM_TYPE_TMP then
		return true
	end
	return false
end

--失去物品处理
function ItemTip:OnLostItem(drop_desc_text,idPlayer,namePlayer,tidItem,cid,itemName,numItem,optType,pack_type,pack_idx)
	local MsgStyle = --[[!AUTO_126]]""
	local MsgItemNum = --[[!AUTO_127]]""
	local MsgItemCount = --[[!AUTO_128]]""
	local MsgItemName = --[[!AUTO_129]]""
	local MsgColor		= --[[!AUTO_130]]"^ffdc8a"
	
	if pack_type == 20 then
		if pack_idx == 0 then
				return ITEM_LOSE_MESSAGE_HIDDEN
		end
	end
			
	if self:IsSpeicalItem(optType) or optType == 54 then  --特殊ID表中道具不显示提示信息
		return ITEM_LOSE_MESSAGE_HIDDEN
	end
	if drop_desc_text > 0 then	--任务写死文字
		if ITEM_LOSE_MESSAGE_TASK[drop_desc_text] ~= nil then
			return MsgColor .. ITEM_LOSE_MESSAGE_TASK[drop_desc_text]
		else
			if drop_desc_text == 9 then
				return ITEM_LOSE_MESSAGE_HIDDEN
			end
			MsgStyle = ITEM_LOSE_MESSAGE_DEFAULT
			local ItemOverlap = DescUtility:GetItemOverlap(tidItem, cid)
			if ItemOverlap == 1 then
				MsgItemNum   = --[[!AUTO_131]]""
				MsgItemCount = --[[!AUTO_132]]""
			else
				MsgItemNum   = string.format(--[[!AUTO_133]]"%d",numItem)
				MsgItemCount = ITEM_LOSE_MESSAGE_COUNT
			end
			MsgItemName = DescUtility:GetItemName(tidItem, cid)
			return MsgColor .. string.format(MsgStyle, MsgItemNum, MsgItemCount, MsgItemName)
		end
	elseif drop_desc_text == 0 then	--普通情况

		if optType == ItemTip.ItemDecType.DEC_ITEM_TYPE_PRODUCE then
			return ITEM_LOSE_MESSAGE_HIDDEN
		end

		local ItemOverlap = DescUtility:GetItemOverlap(tidItem, cid)
		if ItemOverlap == 1 then
			MsgItemNum   = --[[!AUTO_134]]""
			MsgItemCount = --[[!AUTO_135]]""
		else
			MsgItemNum   = string.format(--[[!AUTO_136]]"%d",numItem)
			MsgItemCount = ITEM_DROP_MESSAGE_COUNT
		end
		MsgItemName = DescUtility:GetItemName(tidItem, cid)
		if ITEM_LOSE_MESSAGE_TEXT[optType] == nil then
			MsgStyle = ITEM_LOSE_MESSAGE_DEFAULT
		elseif ITEM_LOSE_MESSAGE_TEXT[optType] == --[[!AUTO_137]]"" then
			return ITEM_LOSE_MESSAGE_HIDDEN
		elseif optType == 10 and cid == 38 then
			MsgStyle = ITEM_LOSE_MESSAGE_PET
		elseif optType == 43 then
			local idScene    = GameApi.GetInstanceID()
			MsgStyle = ITEM_LOSE_MESSAGE_TEXT[optType]
			return MsgColor .. string.format(MsgStyle,MsgItemName,TaskHelp.Scene[idScene] or --[[!AUTO_138]]"")
		else
			MsgStyle = ITEM_LOSE_MESSAGE_TEXT[optType]
		end
		return MsgColor .. string.format(MsgStyle, MsgItemNum, MsgItemCount, MsgItemName)
	else
		return ITEM_LOSE_MESSAGE_HIDDEN
	end
end

--[[_AL("Name"),
	_AL("Type"),
	_AL("Level"),
	_AL("Prof"),
	_AL("DamageType"),
	_AL("KaiGuang"),
	_AL("Star"),
	_AL("Remark"),
	_AL("Tip"),
	_AL("PropBefore"),
	_AL("PropAfter"),
	_AL("FailShowTime"),
	_AL("FailGfx"),
--]]


--强化板显示

function ItemTip:GetEquipReinforce(tid,cid,ext_tbl)
	local desc_tbl = {}
	if ext_tbl["Grade"] > 0 then
		desc_tbl["Name"] = string.format(--[[!AUTO_139]]"%s+%s",DescUtility:GetItemName(tid, cid),ext_tbl["Grade"])
	else
		desc_tbl["Name"] = DescUtility:GetItemName(tid, cid)
	end

	local _,equip_class = DescUtility:GetItemDBProp(tid,cid,--[[!]]"装备类别")
	local equip_type = DescUtility:GetItemMajorType(tid, cid)
	local _,equip_loca = DescUtility:GetItemDBProp(tid,cid,--[[!]]"逻辑上可以装备的部位")
	local sub_type_text = DescUtility:GetItemSubType(tid, cid)

	if equip_class == 0 and EQUIP_WEAPON_CLASS_DESC[sub_type_text] then
		sub_type_text = EQUIP_WEAPON_CLASS_DESC[sub_type_text]
		desc_tbl["Type"] = string.format(--[[!AUTO_140]]"%s%s",sub_type_text,DescUtility:GetItemSexLimit(tid, cid))
	elseif equip_class == 1 then
		local loca_type_text = --[[!AUTO_141]]"未知"
		local i,j

		i,j = string.find(sub_type_text,--[[!AUTO_142]]"布衣")
		if i and i > 0 then
			sub_type_text = EQUIP_WEAPON_CLASS_DESC[1]
		end
		i,j = string.find(sub_type_text,--[[!AUTO_143]]"棉甲")
		if i and i > 0 then
			sub_type_text = EQUIP_WEAPON_CLASS_DESC[2]
		end
		i,j = string.find(sub_type_text,--[[!AUTO_144]]"皮甲")
		if i and i > 0 then
			sub_type_text = EQUIP_WEAPON_CLASS_DESC[3]
		end
		i,j = string.find(sub_type_text,--[[!AUTO_145]]"新手")
		if i and i > 0 then
			sub_type_text = EQUIP_WEAPON_CLASS_DESC[4]
		end

		desc_tbl["Type"] = string.format(--[[!AUTO_146]]"%s%s",sub_type_text,DescUtility:GetItemSexLimit(tid, cid))
	elseif equip_class == 5 then
		if bit.band(equip_loca,2^16) > 0 then
			equip_type = --[[!AUTO_147]]"背包"
		elseif bit.band(equip_loca,2^18) > 0 then
			equip_type = --[[!AUTO_148]]"储存箱"
		end
		desc_tbl["Type"] = string.format(--[[!AUTO_149]]"%s%s",equip_type,DescUtility:GetItemSexLimit(tid, cid))
	else
		desc_tbl["Type"] = string.format(--[[!AUTO_150]]"%s%s",equip_type,DescUtility:GetItemSexLimit(tid, cid))
	end

	--等级限制
	local sLv = --[[!]]"等级限制"
	local _, levellimit = DescUtility:GetItemDBProp(tid, cid, sLv)
	desc_tbl["Level"] = string.format(--[[!AUTO_151]]"%s",levellimit)
	--门派限制
	local profLimit
	_, profLimit = DescUtility:GetItemProfLimit(tid, cid)
	desc_tbl["Prof"] =  profLimit
	--开光类型

	local damage_type = DescUtility:GetKaiguangDamageType(tid, cid, ext_tbl)

	desc_tbl["DamageType"] =  ItemTip.Desc[--[[!]]"开光属性"][damage_type+1].filepath
	--开光次数

	if ext_tbl["KaiguangState"] == 1 or ext_tbl["KaiguangState"] == 2 then

		desc_tbl["KaiGuang"] = ITEM_KAIGUANG_TYPE_DESC[ext_tbl["KaiguangState"]+1]
	end
	--强化等级
	desc_tbl["Star"] = string.format(--[[!AUTO_152]]"%s",ext_tbl["Grade"])
	--评鉴
	local _, quality = DescUtility:GetItemDBProp(tid,cid,--[[!]]"品质")
	local quality_str = --[[!AUTO_153]]""
	if quality == 0 then
		quality_str = ItemTip.Desc[--[[!]]"品质"][--[[!]]"白"]
	elseif quality == 1 or quality == 2 then
		quality_str = ItemTip.Desc[--[[!]]"品质"][--[[!]]"蓝"]
	elseif quality == 3 or quality == 4 then
		quality_str = ItemTip.Desc[--[[!]]"品质"][--[[!]]"紫"]
	elseif quality == 5 then
		quality_str = ItemTip.Desc[--[[!]]"品质"][--[[!]]"黄"]
	end

	local enhance_str = --[[!AUTO_154]]""
	enhance_str = ItemTip.Desc[--[[!]]"强化等级"][ext_tbl["Grade"]].text
	local equip_level = 1
	if equip_level >=0 and equip_level<20 then
		equip_level = 2
	elseif equip_level >=21 and equip_level<40 then
		equip_level = 3
	elseif equip_level >=41 and equip_level<80 then
		equip_level = 4
	end

	local damage_str = --[[!AUTO_155]]""
	damage_str = ItemTip.Desc[--[[!]]"开光属性"][damage_type].text

	local equip_str = --[[!AUTO_156]]""
	equip_str = ItemTip.Desc[--[[!]]"装备等级"][equip_level]

	desc_tbl["Remark"] = string.format(--[[!AUTO_157]]"%s，%s，%s，%s。",quality_str,enhance_str,damage_str,equip_str)
	--提示
	local max_grade = 0
	_,max_grade = DescUtility:GetItemDBProp(tid, cid, --[[!]]"装备强化次数上限")
	if (not ext_tbl["Grade"]) or ext_tbl["Grade"] >= max_grade then
		desc_tbl["Tip"] = ItemTip.Desc[--[[!]]"强化等级"][100].tip
	else
		desc_tbl["Tip"] = ItemTip.Desc[--[[!]]"强化等级"][ext_tbl["Grade"]].tip
	end
	--强化前属性

	local equip_info = {
		["mainType"] = 0,
		["phyAttMin"] = 0,
		["phyAttMax"] = 0,
		["mgcAttMin"] = 0,
		["mgcAttMax"] = 0,
		["phyDenf"] = 0,
		["mgcDenf"] = 0,
		}
	_,equip_info["mainType"] = DescUtility:GetItemDBProp(tid,cid,--[[!]]"装备类别")
	_,equip_info["phyAttMin"] = DescUtility:GetItemDBProp(tid,cid,--[[!]]"外功最小攻击力")
	_,equip_info["phyAttMax"] = DescUtility:GetItemDBProp(tid,cid,--[[!]]"外功最大攻击力")
	_,equip_info["mgcAttMin"] = DescUtility:GetItemDBProp(tid,cid,--[[!]]"内功最小攻击力")
	_,equip_info["mgcAttMax"] = DescUtility:GetItemDBProp(tid,cid,--[[!]]"内功最大攻击力")
	_,equip_info["phyDenf"] = DescUtility:GetItemDBProp(tid,cid,--[[!]]"外功防御力")
	_,equip_info["mgcDenf"] = DescUtility:GetItemDBProp(tid,cid,--[[!]]"内功防御力")


	--_,equip_info["mainType"],equip_info["phyAttMin"],equip_info["phyAttMax"],equip_info["mgcAttMin"],equip_info["mgcAttMax"],equip_info["phyDenf"],equip_info["mgcDenf"] =
	--	GameApi:GetItemDBProp(tid,cid,"装备类别","外攻最小攻击力","外攻最大攻击力","内功最小攻击力","内功最大攻击力","外攻防御力","内功防御力")
	local i,j
	local EssAddon = ext_tbl["EquipEssAddon"]
	local ReinforceAddon = ext_tbl["EquipReinforceAddon"]
	local KaiguangAddon = ext_tbl["EquipKaiguangAddon"]
	local before_equip_str01 = --[[!AUTO_158]]""
	local before_equip_str02 = --[[!AUTO_159]]""
	local before_equip_str03 = --[[!AUTO_160]]""
	local before_equip_str04 = --[[!AUTO_161]]""
	local after_equip_str01 = --[[!AUTO_162]]""
	local after_equip_str02 = --[[!AUTO_163]]""
	local after_equip_str03 = --[[!AUTO_164]]""
	local after_equip_str04 = --[[!AUTO_165]]""
	if equip_info["mainType"] == 0 then--武器
		local addon_type
		local addon_rand
		local addon_param1
		local addon_param2
		local addon_param3
		local before_damage_ed = 0
		local after_damage_ed = 0

		if EssAddon["ext_prop_count"] and EssAddon["ext_prop_count"] > 0 and EssAddon["ext_group_type"] == 2 then
			for i = 1, EssAddon["ext_prop_count"] do
				addon_type = EssAddon[string.format(--[[!AUTO_166]]"ext_prop_%d_type",i)]
				addon_rand = EssAddon[string.format(--[[!AUTO_167]]"ext_prop_%d_rand",i)]
				addon_param1 = EssAddon[string.format(--[[!AUTO_168]]"ext_prop_%d_param1",i)]
				addon_param2 = EssAddon[string.format(--[[!AUTO_169]]"ext_prop_%d_param2",i)]
				if addon_type == 122 then
					before_damage_ed = DescUtility:GetEquipRandValue(addon_rand, addon_param1, addon_param2)
					after_damage_ed = before_damage_ed
				end
			end
		end

		if ReinforceAddon["ext_prop_count"] and ReinforceAddon["ext_prop_count"] > 0 and ReinforceAddon["ext_group_type"] ==  2 then
			for i = 1, ReinforceAddon["ext_prop_count"] do
				addon_type = ReinforceAddon[string.format(--[[!AUTO_170]]"ext_prop_%d_type",i)]
				addon_rand = ReinforceAddon[string.format(--[[!AUTO_171]]"ext_prop_%d_rand",i)]
				addon_param1 = ReinforceAddon[string.format(--[[!AUTO_172]]"ext_prop_%d_param1",i)]
				addon_param2 = ReinforceAddon[string.format(--[[!AUTO_173]]"ext_prop_%d_param2",i)]
				if addon_type == 122 then
					before_damage_ed = before_damage_ed + DescUtility:GetEquipRandValue(addon_rand, addon_param1, addon_param2)
				end
			end
		end

		if KaiguangAddon["ext_prop_count"] and KaiguangAddon["ext_prop_count"] > 0 and KaiguangAddon["ext_group_type"] ==  2 then
			for i = 1, KaiguangAddon["ext_prop_count"] do
				addon_type = KaiguangAddon[string.format(--[[!AUTO_174]]"ext_prop_%d_type",i)]
				addon_rand = KaiguangAddon[string.format(--[[!AUTO_175]]"ext_prop_%d_rand",i)]
				addon_param1 = KaiguangAddon[string.format(--[[!AUTO_176]]"ext_prop_%d_param1",i)]
				addon_param2 = KaiguangAddon[string.format(--[[!AUTO_177]]"ext_prop_%d_param2",i)]
				before_equip_str03 = string.format(EQUIP_ESSENCE_TYPE[addon_type].style,DescUtility:GetEquipRandValue(addon_rand, addon_param1, addon_param2))
			end
		end

		if ext_tbl["next_reinforce"] and ext_tbl["next_reinforce"]["addon_tbl"] and #ext_tbl["next_reinforce"]["addon_tbl"] > 0 then
			for i = 1, #ext_tbl["next_reinforce"]["addon_tbl"] do
				addon_type = ext_tbl["next_reinforce"]["addon_tbl"][i]["type"]
				addon_param1 = ext_tbl["next_reinforce"]["addon_tbl"][i]["param1"]
				addon_param2 = ext_tbl["next_reinforce"]["addon_tbl"][i]["param2"]
				if addon_type == 122 then
					after_damage_ed = after_damage_ed + (addon_param1+addon_param2)/2
				end
			end
		end

		if ext_tbl["next_kaiguang"] and ext_tbl["next_kaiguang"]["addon_tbl"] and #ext_tbl["next_kaiguang"]["addon_tbl"] > 0 then
			for i = 1 ,#ext_tbl["next_kaiguang"]["addon_tbl"] do
				if ext_tbl["next_kaiguang"]["addon_tbl"][i] and ext_tbl["next_kaiguang"]["addon_tbl"][i]["addon_id"] > 0 then
					addon_type = ext_tbl["next_kaiguang"]["addon_tbl"][i]["type"]
					addon_param1 = ext_tbl["next_kaiguang"]["addon_tbl"][i]["param1"]
					addon_param2 = ext_tbl["next_kaiguang"]["addon_tbl"][i]["param2"]
					after_equip_str03 = string.format(EQUIP_ESSENCE_TYPE[addon_type].style,(addon_param1+addon_param2)/2)
				end
			end
		end

		before_equip_str01 = string.format(--[[!AUTO_178]]"外攻攻击 %d-%d",math.floor(equip_info["phyAttMin"]*(1+before_damage_ed/100)),math.floor(equip_info["phyAttMax"]*(1+before_damage_ed/100)))
		--before_equip_str02 = string.format("内功攻击 %d-%d",math.floor(equip_info["mgcAttMin"]*(1+before_damage_ed/100)),math.floor(equip_info["mgcAttMax"]*(1+before_damage_ed/100)))
		after_equip_str01 = string.format(--[[!AUTO_179]]"外攻攻击 %d-%d",math.floor(equip_info["phyAttMin"]*(1+after_damage_ed/100)),math.floor(equip_info["phyAttMax"]*(1+after_damage_ed/100)))
		--after_equip_str02 = string.format("内功攻击 %d-%d",math.floor(equip_info["mgcAttMin"]*(1+after_damage_ed/100)),math.floor(equip_info["mgcAttMax"]*(1+after_damage_ed/100)))
		desc_tbl["PropBefore"] = string.format(--[[!AUTO_180]]"%s\r%s\r%s\r%s",before_equip_str01,before_equip_str02,before_equip_str03,before_equip_str04)
		desc_tbl["PropAfter"] = string.format(--[[!AUTO_181]]"%s\r%s\r%s\r%s",after_equip_str01,after_equip_str02,after_equip_str03,after_equip_str04)
	elseif equip_info["mainType"] == 1 then--防具
		local addon_type
		local addon_param1
		local addon_param2
		local addon_param3
		local before_defence_ed = 0
		local after_defence_ed = 0
		local out_defence_point = 0
		local in_defence_point = 0

		if EssAddon["ext_prop_count"] and EssAddon["ext_prop_count"] > 0 and EssAddon["ext_group_type"] == 2 then
			for i = 1, EssAddon["ext_prop_count"] do
				addon_type = EssAddon[string.format(--[[!AUTO_182]]"ext_prop_%d_type",i)]
				addon_param1 = EssAddon[string.format(--[[!AUTO_183]]"ext_prop_%d_param1",i)]
				addon_param2 = EssAddon[string.format(--[[!AUTO_184]]"ext_prop_%d_param2",i)]
				if addon_type == 123 then
					before_defence_ed = (addon_param1+addon_param2)/2
					after_defence_ed = before_defence_ed
				end
			end
		end

		if ReinforceAddon["ext_prop_count"] and ReinforceAddon["ext_prop_count"] > 0 and ReinforceAddon["ext_group_type"] ==  2 then
			for i = 1, ReinforceAddon["ext_prop_count"] do
				addon_type = ReinforceAddon[string.format(--[[!AUTO_185]]"ext_prop_%d_type",i)]
				addon_rand = ReinforceAddon[string.format(--[[!AUTO_186]]"ext_prop_%d_rand",i)]
				addon_param1 = ReinforceAddon[string.format(--[[!AUTO_187]]"ext_prop_%d_param1",i)]
				addon_param2 = ReinforceAddon[string.format(--[[!AUTO_188]]"ext_prop_%d_param2",i)]
				if addon_type == 123 then
					before_defence_ed = before_defence_ed + DescUtility:GetEquipRandValue(addon_rand, addon_param1, addon_param2)
				elseif addon_type == 30 then
					out_defence_point = DescUtility:GetEquipRandValue(addon_rand, addon_param1, addon_param2)
				elseif addon_type == 41 then
					in_defence_point = DescUtility:GetEquipRandValue(addon_rand, addon_param1, addon_param2)
				elseif addon_type ~= nil and addon_type > 0 and addon_type <= 255 then
					before_equip_str03 = string.format(EQUIP_ESSENCE_TYPE[addon_type].style,DescUtility:GetEquipRandValue(addon_rand, addon_param1, addon_param2))
				end
			end
		end
		before_equip_str01 = string.format(--[[!AUTO_189]]"外攻防御力 %d",math.floor(equip_info["phyDenf"]*(1+before_defence_ed/100))+out_defence_point)
		--before_equip_str02 = string.format("内功防御力 %d",math.floor(equip_info["mgcDenf"]*(1+before_defence_ed/100))+in_defence_point)

		out_defence_point = 0
		in_defence_point = 0
		if ext_tbl["next_reinforce"] and ext_tbl["next_reinforce"]["addon_tbl"] and #ext_tbl["next_reinforce"]["addon_tbl"] > 0 then
			for i = 1, #ext_tbl["next_reinforce"]["addon_tbl"] do
				addon_type = ext_tbl["next_reinforce"]["addon_tbl"][i]["type"]
				--addon_rand = ReinforceAddon[string.format("ext_prop_%d_rand",i)]
				addon_param1 = ext_tbl["next_reinforce"]["addon_tbl"][i]["param1"]
				addon_param2 = ext_tbl["next_reinforce"]["addon_tbl"][i]["param2"]
				if addon_type == 123 then
					after_defence_ed = after_defence_ed + (addon_param1+addon_param2)/2
				elseif addon_type == 30 then
					out_defence_point = (addon_param1+addon_param2)/2
				elseif addon_type == 41 then
					in_defence_point = (addon_param1+addon_param2)/2
				elseif addon_type ~= nil and addon_type > 0 and addon_type <= 255 then
					after_equip_str03 = string.format(EQUIP_ESSENCE_TYPE[addon_type].style,addon_param1)
				end
			end
		end
		after_equip_str01 = string.format(--[[!AUTO_190]]"外攻防御力 %d",math.floor(equip_info["phyDenf"]*(1+after_defence_ed/100))+out_defence_point)
		--after_equip_str02 = string.format("内功防御力 %d",math.floor(equip_info["mgcDenf"]*(1+after_defence_ed/100))+in_defence_point)

		if KaiguangAddon["ext_prop_count"] and KaiguangAddon["ext_prop_count"] > 0 and KaiguangAddon["ext_group_type"] ==  2 then
			for i = 1, KaiguangAddon["ext_prop_count"] do
				addon_type = KaiguangAddon[string.format(--[[!AUTO_191]]"ext_prop_%d_type",i)]
				addon_rand = KaiguangAddon[string.format(--[[!AUTO_192]]"ext_prop_%d_rand",i)]
				addon_param1 = KaiguangAddon[string.format(--[[!AUTO_193]]"ext_prop_%d_param1",i)]
				addon_param2 = KaiguangAddon[string.format(--[[!AUTO_194]]"ext_prop_%d_param2",i)]
				before_equip_str04 = string.format(EQUIP_ESSENCE_TYPE[addon_type].style,addon_param1)
			end
		end

		if ext_tbl["next_kaiguang"] and ext_tbl["next_kaiguang"]["addon_tbl"] and #ext_tbl["next_kaiguang"]["addon_tbl"] > 0 then
			for i = 1 ,#ext_tbl["next_kaiguang"]["addon_tbl"] do
				if ext_tbl["next_kaiguang"]["addon_tbl"][i] and ext_tbl["next_kaiguang"]["addon_tbl"][i]["addon_id"] > 0 then
					addon_type = ext_tbl["next_kaiguang"]["addon_tbl"][i]["type"]
					addon_rand = KaiguangAddon[string.format(--[[!AUTO_195]]"ext_prop_%d_rand",i)]
					addon_param1 = ext_tbl["next_kaiguang"]["addon_tbl"][i]["param1"]
					addon_param2 = ext_tbl["next_kaiguang"]["addon_tbl"][i]["param2"]
					after_equip_str04 = string.format(EQUIP_ESSENCE_TYPE[addon_type].style,addon_param1)
				end
			end
		end
		desc_tbl["PropBefore"] = string.format(--[[!AUTO_196]]"%s\r%s\r%s\r%s",before_equip_str01,before_equip_str02,before_equip_str03,before_equip_str04)
		desc_tbl["PropAfter"] = string.format(--[[!AUTO_197]]"%s\r%s\r%s\r%s",after_equip_str01,after_equip_str02,after_equip_str03,after_equip_str04)
	end
	return desc_tbl
end

--取得开光属性
function ItemTip:GetKaiguangProp(tid,cid,ext_tbl)
local desc_tbl = {}
	if ext_tbl["Grade"] > 0 then
		desc_tbl["Name"] = string.format(--[[!AUTO_198]]"%s %s+%s",DescUtility:GetItemName(tid, cid),TAG_COLOR_ESSENCE[11],ext_tbl["Grade"])
	else
		desc_tbl["Name"] = DescUtility:GetItemName(tid, cid)
	end
	desc_tbl["Type"] = DescUtility:GetItemMajorType(tid, cid)
	--等级限制
	local sLv = --[[!]]"等级限制"
	local _, levellimit = DescUtility:GetItemDBProp(tid, cid, sLv)
	desc_tbl["Level"] = string.format(--[[!AUTO_199]]"%s",levellimit)
	--门派限制
	local profLimit
	_, profLimit = DescUtility:GetItemProfLimit(tid, cid)
	desc_tbl["Prof"] =  profLimit
	--开光类型

	local damage_type = DescUtility:GetKaiguangDamageType(tid, cid, ext_tbl)

	desc_tbl["DamageType"] =  ItemTip.Desc[--[[!]]"开光属性"][damage_type+1].filepath
	--开光次数

	if ext_tbl["KaiguangState"] == 1 or ext_tbl["KaiguangState"] == 2 then

		desc_tbl["KaiGuang"] = ITEM_KAIGUANG_TYPE_DESC[ext_tbl["KaiguangState"]+1]
	end
	--强化等级
	desc_tbl["Star"] = string.format(--[[!AUTO_200]]"%s",ext_tbl["Grade"])
	--评鉴
	local _, quality = DescUtility:GetItemDBProp(tid,cid,--[[!]]"品质")
	local quality_str = --[[!AUTO_201]]""
	if quality == 0 then
		quality_str = ItemTip.Desc[--[[!]]"品质"][--[[!]]"白"]
	elseif quality == 1 or quality == 2 then
		quality_str = ItemTip.Desc[--[[!]]"品质"][--[[!]]"蓝"]
	elseif quality == 3 or quality == 4 then
		quality_str = ItemTip.Desc[--[[!]]"品质"][--[[!]]"紫"]
	elseif quality == 5 then
		quality_str = ItemTip.Desc[--[[!]]"品质"][--[[!]]"黄"]
	end

	local enhance_str = --[[!AUTO_202]]""
	enhance_str = ItemTip.Desc[--[[!]]"强化等级"][ext_tbl["Grade"]].text
	local equip_level = 1
	if equip_level >=0 and equip_level<20 then
		equip_level = 2
	elseif equip_level >=21 and equip_level<40 then
		equip_level = 3
	elseif equip_level >=41 and equip_level<80 then
		equip_level = 4
	end

	local damage_str = --[[!AUTO_203]]""
	damage_str = ItemTip.Desc[--[[!]]"开光属性"][damage_type].text

	local equip_str = --[[!AUTO_204]]""
	equip_str = ItemTip.Desc[--[[!]]"装备等级"][equip_level]

	desc_tbl["Remark"] = string.format(--[[!AUTO_205]]"%s，%s，%s，%s。",quality_str,enhance_str,damage_str,equip_str)
	--提示
	local max_grade = 0
	_,max_grade = DescUtility:GetItemDBProp(tid, cid, --[[!]]"装备强化次数上限")
	if (not ext_tbl["Grade"]) or ext_tbl["Grade"] >= max_grade then
		desc_tbl["Tip"] = ItemTip.Desc[--[[!]]"强化等级"][100].tip
	else
		desc_tbl["Tip"] = ItemTip.Desc[--[[!]]"强化等级"][ext_tbl["Grade"]].tip
	end
	--强化前属性

	local equip_info = {
		["mainType"] = 0,
		["phyAttMin"] = 0,
		["phyAttMax"] = 0,
		["mgcAttMin"] = 0,
		["mgcAttMax"] = 0,
		["phyDenf"] = 0,
		["mgcDenf"] = 0,
		}
	_,equip_info["mainType"] = DescUtility:GetItemDBProp(tid,cid,--[[!]]"装备类别")
	_,equip_info["phyAttMin"] = DescUtility:GetItemDBProp(tid,cid,--[[!]]"外功最小攻击力")
	_,equip_info["phyAttMax"] = DescUtility:GetItemDBProp(tid,cid,--[[!]]"外功最大攻击力")
	_,equip_info["mgcAttMin"] = DescUtility:GetItemDBProp(tid,cid,--[[!]]"内功最小攻击力")
	_,equip_info["mgcAttMax"] = DescUtility:GetItemDBProp(tid,cid,--[[!]]"内功最大攻击力")
	_,equip_info["phyDenf"] = DescUtility:GetItemDBProp(tid,cid,--[[!]]"外功防御力")
	_,equip_info["mgcDenf"] = DescUtility:GetItemDBProp(tid,cid,--[[!]]"内功防御力")


	--_,equip_info["mainType"],equip_info["phyAttMin"],equip_info["phyAttMax"],equip_info["mgcAttMin"],equip_info["mgcAttMax"],equip_info["phyDenf"],equip_info["mgcDenf"] =
	--	GameApi:GetItemDBProp(tid,cid,"装备类别","外攻最小攻击力","外攻最大攻击力","内功最小攻击力","内功最大攻击力","外攻防御力","内功防御力")
	local i,j
	local EssAddon = ext_tbl["EquipEssAddon"]
	local ReinforceAddon = ext_tbl["EquipReinforceAddon"]
	local KaiguangAddon = ext_tbl["EquipKaiguangAddon"]
	local before_equip_str01 = --[[!AUTO_206]]""
	local before_equip_str02 = --[[!AUTO_207]]""
	local before_equip_str03 = --[[!AUTO_208]]""
	local before_equip_str04 = --[[!AUTO_209]]""
	local after_equip_str01 = --[[!AUTO_210]]""
	local after_equip_str02 = --[[!AUTO_211]]""
	local after_equip_str03 = --[[!AUTO_212]]""
	local after_equip_str04 = --[[!AUTO_213]]""
	if equip_info["mainType"] == 0 then--武器
		local addon_type
		local addon_rand
		local addon_param1
		local addon_param2
		local addon_param3
		local before_damage_ed = 0
		local after_damage_ed = 0

		--[[if EssAddon["ext_prop_count"] and EssAddon["ext_prop_count"] > 0 and EssAddon["ext_group_type"] == 2 then
			for i = 1, EssAddon["ext_prop_count"] do
				addon_type = EssAddon[string.format("ext_prop_%d_type",i)]
				addon_param1 = EssAddon[string.format("ext_prop_%d_param1",i)]
				addon_param2 = EssAddon[string.format("ext_prop_%d_param2",i)]
				if addon_type == 122 then
					before_damage_ed = (addon_param1+addon_param2)/2
					after_damage_ed = before_damage_ed
				end
			end
		end--]]

		if ReinforceAddon["ext_prop_count"] and ReinforceAddon["ext_prop_count"] > 0 and ReinforceAddon["ext_group_type"] ==  2 then
			for i = 1, ReinforceAddon["ext_prop_count"] do
				addon_type = ReinforceAddon[string.format(--[[!AUTO_214]]"ext_prop_%d_type",i)]
				addon_rand = ReinforceAddon[string.format(--[[!AUTO_215]]"ext_prop_%d_rand",i)]
				addon_param1 = ReinforceAddon[string.format(--[[!AUTO_216]]"ext_prop_%d_param1",i)]
				addon_param2 = ReinforceAddon[string.format(--[[!AUTO_217]]"ext_prop_%d_param2",i)]
				if addon_type == 122 then
					before_damage_ed = before_damage_ed + DescUtility:GetEquipRandValue(addon_rand, addon_param1, addon_param2)
				end
			end
		end

		if KaiguangAddon["ext_prop_count"] and KaiguangAddon["ext_prop_count"] > 0 and KaiguangAddon["ext_group_type"] ==  2 then
			for i = 1, KaiguangAddon["ext_prop_count"] do
				addon_type = KaiguangAddon[string.format(--[[!AUTO_218]]"ext_prop_%d_type",i)]
				addon_rand = KaiguangAddon[string.format(--[[!AUTO_219]]"ext_prop_%d_rand",i)]
				addon_param1 = KaiguangAddon[string.format(--[[!AUTO_220]]"ext_prop_%d_param1",i)]
				addon_param2 = KaiguangAddon[string.format(--[[!AUTO_221]]"ext_prop_%d_param2",i)]
				before_equip_str03 = string.format(EQUIP_ESSENCE_TYPE[addon_type].style,DescUtility:GetEquipRandValue(addon_rand, addon_param1, addon_param2))
			end
		end
	elseif equip_info["mainType"] == 1 then--防具
		local addon_type
		local addon_param1
		local addon_param2
		local addon_param3
		local before_defence_ed = 0
		local after_defence_ed = 0
		local out_defence_point = 0
		local in_defence_point = 0

		--[[if EssAddon["ext_prop_count"] and EssAddon["ext_prop_count"] > 0 and EssAddon["ext_group_type"] == 2 then
			for i = 1, EssAddon["ext_prop_count"] do
				addon_type = EssAddon[string.format("ext_prop_%d_type",i)]
				addon_param1 = EssAddon[string.format("ext_prop_%d_param1",i)]
				addon_param2 = EssAddon[string.format("ext_prop_%d_param2",i)]
				if addon_type == 123 then
					before_defence_ed = (addon_param1+addon_param2)/2
					after_defence_ed = before_defence_ed
				end
			end
		end--]]

		if ReinforceAddon["ext_prop_count"] and ReinforceAddon["ext_prop_count"] > 0 and ReinforceAddon["ext_group_type"] ==  2 then
			for i = 1, ReinforceAddon["ext_prop_count"] do
				addon_type = ReinforceAddon[string.format(--[[!AUTO_222]]"ext_prop_%d_type",i)]
				addon_rand = ReinforceAddon[string.format(--[[!AUTO_223]]"ext_prop_%d_rand",i)]
				addon_param1 = ReinforceAddon[string.format(--[[!AUTO_224]]"ext_prop_%d_param1",i)]
				addon_param2 = ReinforceAddon[string.format(--[[!AUTO_225]]"ext_prop_%d_param2",i)]
				if addon_type == 123 then
					before_defence_ed = before_defence_ed + DescUtility:GetEquipRandValue(addon_rand, addon_param1, addon_param2)
				elseif addon_type == 30 then
					out_defence_point = DescUtility:GetEquipRandValue(addon_rand, addon_param1, addon_param2)
				elseif addon_type == 41 then
					in_defence_point = DescUtility:GetEquipRandValue(addon_rand, addon_param1, addon_param2)
				elseif addon_type ~= nil and addon_type > 0 and addon_type <= 255 then
					before_equip_str03 = string.format(EQUIP_ESSENCE_TYPE[addon_type].style,DescUtility:GetEquipRandValue(addon_rand, addon_param1, addon_param2))
				end
			end
		end
		if KaiguangAddon["ext_prop_count"] and KaiguangAddon["ext_prop_count"] > 0 and KaiguangAddon["ext_group_type"] ==  2 then
			for i = 1, KaiguangAddon["ext_prop_count"] do
				addon_type = KaiguangAddon[string.format(--[[!AUTO_226]]"ext_prop_%d_type",i)]
				addon_rand = KaiguangAddon[string.format(--[[!AUTO_227]]"ext_prop_%d_rand",i)]
				addon_param1 = KaiguangAddon[string.format(--[[!AUTO_228]]"ext_prop_%d_param1",i)]
				addon_param2 = KaiguangAddon[string.format(--[[!AUTO_229]]"ext_prop_%d_param2",i)]
				before_equip_str03 = string.format(EQUIP_ESSENCE_TYPE[addon_type].style,DescUtility:GetEquipRandValue(addon_rand, addon_param1, addon_param2))
			end
		end
	end

	return before_equip_str03
end

--取得收购描述
function ItemTip:GetPurchaseContent(TemplTid, ItemTid, count1, count2)
	if ITEM_PURCHASE_TEXT[TemplTid] then
		--LogPrint(count1)
		--LogPrint(count2)
		if ITEM_PURCHASE_TEXT[TemplTid][ItemTid] then
			if count1 < count2 or count2 == 0 then
				return ITEM_PURCHASE_TEXT[TemplTid][ItemTid][1]
			else
				return ITEM_PURCHASE_TEXT[TemplTid][ItemTid][2]
			end
		else
			return ITEM_PURCHASE_TEXT_DEFAULT
		end
	else
		return ITEM_PURCHASE_TEXT_DEFAULT
	end
end
--取得资质描述
function ItemTip:GetAddonGroupDesc( addon_info_table )
	local ret_string = --[[!AUTO_230]]""
	for k,v in pairs(addon_info_table) do
		local addon_type = v["type"]
		local addon_param = v["value"]
		if addon_type ~= nil and addon_param ~= nil then
			local str = string.format(EQUIP_ESSENCE_TYPE[addon_type].style,addon_param)
			ret_string = ret_string .. str ..--[[!AUTO_231]]"\r"
		end
    end
	return ret_string
end

--取得附加属性描述
function ItemTip:GetSingleAddonDesc( tid, addon_rand)
	local str = --[[!AUTO_232]]""
	local _,addon_type,addon_param1,addon_param2,addon_param3 = GameApi.GetItemDBProp(tid,ClassType.ICID_EQUIPMENT_ADDON,--[[!AUTO_233]]"type",--[[!AUTO_234]]"param1",--[[!AUTO_235]]"param2",--[[!AUTO_236]]"param3")

	local exttype = addon_type
	local extvalue = DescUtility:GetEquipRandValue(addon_rand, addon_param1, addon_param2)
	local extparam2 = addon_param2
	local extparam3 = addon_param3
	
	return DescUtility:GetExtStr(exttype, extvalue, extparam2, extparam3)
end

--取得帮派加持当前属性的随机范围
function ItemTip:GetSingleAddonDescRand( tid )
	local str = --[[!AUTO_237]]""
	local _,addon_type,addon_param1,addon_param2,addon_param3 = GameApi.GetItemDBProp(tid,ClassType.ICID_EQUIPMENT_ADDON,--[[!AUTO_238]]"type",--[[!AUTO_239]]"param1",--[[!AUTO_240]]"param2",--[[!AUTO_241]]"param3")
	if addon_type == 58 or addon_type == 59 or addon_type == 60 or addon_type == 61 then
		addon_param1 = addon_param1 /100
		addon_param2 = addon_param2 /100
	end
	str = --[[!AUTO_242]]" ("..addon_param1..--[[!AUTO_243]]"-"..addon_param2..--[[!AUTO_244]]")"

	return str
end


--取得福缘值描述
function ItemTip:GetLuckyValueDesc(value)
	for k,v in pairs(LUCKY_VALUE_DESC) do
		if value >= v.Min and value <= v.Max then
			return v.Min,v.Max,v.Name,v.Desc,v.Color,v.Value
		end
	end
	return 0,0,--[[!AUTO_245]]"",--[[!AUTO_246]]"",--[[!AUTO_247]]"",--[[!AUTO_248]]""
end

--比武场文本
--index：0：武林声望榜奖励说明，1：竞技积分榜奖励说明，2：血战积分榜奖励说明，3：天下第一武道会规则说明
function ItemTip:GetBattleIntroductionText(index)
	return BATTLE_INTRUDUCTION_TEXT[index]
end

--比武竞猜确认信息
function ItemTip:GetBattleBallotText(name,pro,rank,num)
	return string.format(BATLLE_BALLOT_DESC,rank+1,name,ITEM_LIMIT_FACTION_DESC[pro+1],BATLLE_BALLOT_SUCCESS_DESC[rank+1],BATLLE_BALLOT_SUCCESS_DESC[33],num+1)
end

--武道会时间提示信息
--index 0：投票倒计时(增加10分钟是比赛开启倒计时)，1：第一轮比赛，2：第二轮比赛，3：第三轮比赛，4：第四轮比赛
function ItemTip:GetBattleTimeNoticeText(index,server_id)
	local svr_time = GameApi.GetServerTime()
	local svr_time_sec = os.time{year=svr_time["year"],month=svr_time["month"],day=svr_time["day"],hour=svr_time["hour"],min=svr_time["minute"],sec=svr_time["second"]}
	local game_date
	local game_time_sec
	local special_svr1 = 20500 --北冥神功
	local special_svr2 = 20533 --如来神掌
	local special_svr3 = 20484 --体验服
	local offset = 6000
	
	game_date = BATTLE_TIME_NOTICE["rc_test"]
	game_time_sec = os.time{year=game_date[1],month=game_date[2],day=game_date[3],hour=game_date[4],min=game_date[5],sec=game_date[6]}
	if svr_time_sec - game_time_sec - offset > 0 or (not (server_id == special_svr3)) then
		game_date = BATTLE_TIME_NOTICE["cn_test"]
		game_time_sec = os.time{year=game_date[1],month=game_date[2],day=game_date[3],hour=game_date[4],min=game_date[5],sec=game_date[6]}
		if svr_time_sec - game_time_sec - offset > 0 or (not (server_id == special_svr1 or server_id == special_svr2)) then
			game_date = BATTLE_TIME_NOTICE[svr_time["month"]]
			game_time_sec = os.time{year=game_date[1],month=game_date[2],day=game_date[3],hour=game_date[4],min=game_date[5],sec=game_date[6]}
			if svr_time_sec - game_time_sec - offset > 0 then
				game_date = BATTLE_TIME_NOTICE[svr_time["month"]+1]
				game_time_sec = os.time{year=game_date[1],month=game_date[2],day=game_date[3],hour=game_date[4],min=game_date[5],sec=game_date[6]}
			end
		end
	end	

	if index == 0 then
		return  game_time_sec - svr_time_sec
	elseif index == 1 then
		game_time_sec = os.time{year=game_date[1],month=game_date[2],day=game_date[3],hour=20,min=10,sec=0}
		return game_time_sec - svr_time_sec
	elseif index == 2 then
		game_time_sec = os.time{year=game_date[1],month=game_date[2],day=game_date[3],hour=20,min=20,sec=0}
		return game_time_sec - svr_time_sec
	elseif index == 3 then
		game_time_sec = os.time{year=game_date[1],month=game_date[2],day=game_date[3],hour=20,min=40,sec=0}
		return game_time_sec - svr_time_sec
	elseif index == 4 then
		game_time_sec = os.time{year=game_date[1],month=game_date[2],day=game_date[3],hour=21,min=0,sec=0}
		return game_time_sec - svr_time_sec
	else
		return 0
	end
end

--跨服比武提示信息
--server_name:比赛专用服务器名称
function ItemTip:GetUniteBattleNotice(server_name)
	return string.format(BATTLE_INTRUDUCTION_TEXT[4],server_name)
end