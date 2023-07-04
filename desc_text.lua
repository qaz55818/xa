--[[#tag push auto]]
--所有标签相关的定义、颜色、文字...


-----------------------------------------
------------------定义-------------------
-----------------------------------------

-- 根据context获取价格的描述字符串


ContextType = {}
ContextType.CONTEXT_DEFAULT	= 0 		--	标准(即包裹内的描述)	Default context
ContextType.CONTEXT_NPC_BUY 	= 1		--	商店打开时的商店	Buy from NPC
ContextType.CONTEXT_NPC_SELL 	= 2		--	商店打开时的包裹	Sell to NPC
ContextType.CONTEXT_BOOTH_BUY	= 3		--	摆摊打开时的摊位	Buy from booth
ContextType.CONTEXT_BOOTH_SELL	= 4		--	摆摊打开时的收购	Sell to booth
ContextType.CONTEXT_REWARD	= 5		--	任务奖励		Task reward
ContextType.CONTEXT_PRODUCE	= 6		--	生产界面成品		Produced
ContextType.CONTEXT_REPAIR	= 7		--	修理时鼠标悬浮		Repair
ContextType.CONTEXT_TRADE	= 8		--	玩家交易双方包裹	Player trade
ContextType.CONTEXT_VENDUE	= 9		--	摆摊打开时的包裹	Vendor
ContextType.CONTEXT_RECYCLE	= 10		--	商店回收站		Recycle Packc
ContextType.CONTEXT_NPC_BUY_BIND	= 12		--	商店打开时的商店(显示绑定币)		Recycle Packc

-- 物品使用条件
UseCondition = {}
UseCondition.USE_DAMAGE		= 0x0001	--	Item will cause damaged
UseCondition.USE_PERSIST	= 0x0002	--	Persist some time
UseCondition.USE_INSTANT	= 0x0004	--	Instant
UseCondition.USE_TARGET		= 0x0008	--	Need a target


-- 处理类型
ProcType = {}
ProcType.PROC_NOTDROPPABLE	= 1	--	死亡时不能掉落

ProcType.PROC_NOTDESTORIABLE	= 2	--	不可以消毁

ProcType.PROC_NOTSELLABLE	= 4	--	不可以卖给NPC
ProcType.PROC_RMBITEM		= 8	--	是人民币物品
ProcType.PROC_NOTTRADEABLE	= 16	--	不可以玩家间交易
ProcType.PROC_TASK		= 32	--	是任务相关物品

ProcType.PROC_PICKBIND		= 64	--	拾取后绑定

ProcType.PROC_EQUIPBIND		= 128	--	装备后绑定

ProcType.PROC_BOUND		= 256	--	已绑定

ProcType.PROC_NOSTRICTBIND	= 512	--	不可以严格绑定

ProcType.PROC_GENGUID		= 1024	--	产生GUID
ProcType.PROC_NOTSPLITPILE	= 2048	--	不可以分堆叠加

ProcType.PROC_EXISTINAREA	= 4096	--	特定区域内有效

ProcType.PROC_LIMITED		= 8192	--	限定标志
ProcType.PROC_MATERIAL		= 16384	--	材料标志（放入材料包裹/仓库）

ProcType.PROC_RECYCLESPEC	= 32768	--	为回收特殊物品


-- 状态标记

ItemStateFlag = {}
ItemStateFlag.STATE_BOUND		= 0x01
ItemStateFlag.STATE_BOUNDAFTEREQUIP	= 0x02
ItemStateFlag.STATE_STRICTLYBOUND	= 0x04
ItemStateFlag.STATE_LIMITED		= 0x08
ItemStateFlag.STATE_FDDJ		= 0x0800

-- 类别ID
ClassType = {}
ClassType.ICID_ITEM			= -100
ClassType.ICID_EQUIPBASE		= 0
ClassType.ICID_EQUIP			= 1	--	装备
ClassType.ICID_MATERIAL			= 2	--	生产原料
ClassType.ICID_MEDICINE			= 3	--	药品
ClassType.ICID_REVSCROLL		= 4	--	复活卷轴
ClassType.ICID_SKILLTOME		= 5	--	技能卷轴

ClassType.ICID_TOWNSCROLL		= 6	--	回城卷轴
ClassType.ICID_TASKITEM			= 7	--	任务物品
ClassType.ICID_ESTONE			= 8	--	镶嵌石

ClassType.ICID_PSTONE			= 9	--	属性石
ClassType.ICID_SSTONE			= 10	--	附魔石

ClassType.ICID_TASKDICE			= 11	--	任务随机发生器

ClassType.ICID_TASKNMMATTER		= 12	--	（无模板）用于任务的普通物品

ClassType.ICID_ERRORITEM		= 13	--	错误物品
ClassType.ICID_GM_GENERATOR		= 14	--	（无模板）GM物品生成器

ClassType.ICID_RECIPE			= 15	--	配方
ClassType.ICID_FIREWORK			= 16	--	烟花
ClassType.ICID_REFINETICKET		= 17	--	精炼概率调整道具
ClassType.ICID_RECIPEROLL		= 18	--	配方卷轴
ClassType.ICID_TRANSMITROLL		= 19	--	传送卷轴

ClassType.ICID_LUCKYROLL		= 20	--	替身娃娃
ClassType.ICID_DOUBLEEXP		= 21	--	双倍经验道具

ClassType.ICID_DESTROYINGESSENCE	= 22	--	正在被销毁的物品
ClassType.ICID_SKILLMATTER		= 23	--	技能物品

ClassType.ICID_VEHICLE			= 24	--	交通工具

ClassType.ICID_COUPLE_JUMPTO		= 25	--	夫妻同心结

ClassType.ICID_LOTTERY			= 26	--	彩票
ClassType.ICID_CAMRECORDER		= 27	--	录像道具
ClassType.ICID_TEXT_FIREWORK		= 28	--	文字烟花
ClassType.ICID_TALISMAN			= 29	--	法宝主件
ClassType.ICID_TALISMAN_EXPFOOD		= 30	--	法宝血炼材料

ClassType.ICID_TALISMAN_MERGEKATALYST	= 31	--	法宝熔炼剂

ClassType.ICID_TALISMAN_ENERGYFOOD	= 32	--	法宝精力增长道具
ClassType.ICID_SPAKER			= 33	--	喇叭
ClassType.ICID_LEVELUP			= 34	--	职业升级道具
ClassType.ICID_TRANSMITFLAG		= 35	--	传送旗
ClassType.ICID_MONSTERCTRL		= 36	--	怪物控制卷轴
ClassType.ICID_HARNESS			= 37	--	马具
ClassType.ICID_PET_BEDGE		= 38	--	门徒印记

ClassType.ICID_PET_SKILL		= 39	--	门徒技能书
ClassType.ICID_PET_MEDICINE		= 40	--	门徒药品
ClassType.ICID_PET_RESETPROP		= 41	--	门徒洗点符

ClassType.ICID_PET_ADDPROP		= 42	--	门徒灵丹
ClassType.ICID_PET_ADJPOWERPROP		= 43    --      门徒修为概率调整道具
ClassType.ICID_NORMAL_ITEM		= 44	--	普通物品

ClassType.ICID_TASKITEM_GENERATOR	= 45	--	任务物品生成器

ClassType.ICID_PET_NORMALMEDICINE	= 46	--	门徒通用药品
ClassType.ICID_GIFT			= 47    --	礼物物品
ClassType.ICID_IDENTIFYSCROLL		= 48    --	鉴定卷轴
ClassType.ICID_SUMMON_ITEM		= 49	--	召唤怪物物品
ClassType.ICID_CROPSEED			= 50	--	种子
ClassType.ICID_BREEDCUB			= 51	--	幼崽
ClassType.ICID_INVITATION		= 52	--	请帖
ClassType.ICID_BACKPACK			= 53	--	背包
ClassType.ICID_TREASUREMAP		= 54	--	鉴定过的藏宝图

ClassType.ICID_TREASUREMAPFRAGMENT	= 55	--	藏宝图碎片（未鉴定过的藏宝图）

ClassType.ICID_SCENEONLY		= 56	--	场景专用物品
ClassType.ICID_SERVANT			= 57	--	仆人
ClassType.ICID_EQUIP_HOLE_ITEM		= 58    --	装备打孔道具
ClassType.ICID_EQUIP_EMBED_ITEM		= 59    --	装备镶嵌道具
ClassType.ICID_STATEMENT		= 60	--	口供道具，触发劫镖事件

ClassType.ICID_DART			= 61	--	劫镖所得货物
ClassType.ICID_INFO_FRAGMENT		= 62	--	消息片段
ClassType.ICID_EQUIP_UPGRADE_ITEM	= 63	--	特殊强化升级道具
ClassType.ICID_DEL_ROB_DART		= 64	--	运劫镖道具
ClassType.ICID_POISON			= 65	--	下毒道具
ClassType.ICID_SETTRAP			= 66	--	设置陷阱道具
ClassType.ICID_TREASUREITEM		= 67	--	藏宝阁宝物
ClassType.ICID_CHANGEFACE		= 68	--	易容
ClassType.ICID_TREASURE_INTRIGUE	= 69	--	藏宝阁机关
ClassType.ICID_TREASUREMAP_PIECE	= 70	--	藏宝阁地图碎片
ClassType.ICID_EQUIP_STONECOMPOSE_ITEM  = 71    --	宝石合成符道具
ClassType.ICID_PRODUCE_SKILL_LV_UP_ITEM = 72	--	生产技能升级道具
ClassType.ICID_PET_SUMMON		= 73    --	门徒召唤道具
ClassType.ICID_PET_XISUI = 74			--	门徒洗髓道具
ClassType.ICID_CLUE			= 76    --	线索物品
ClassType.ICID_PLAYER_CHUANGONG         = 77    --      人物传功道具
ClassType.ICID_EMOTION_ITEM		= 78    --	表情包

ClassType.ICID_STONE_GENERATE_BAG	= 79    --	宝石包
ClassType.ICID_FASHIONEQUIP_PAINTER	= 80    --	染色道具
ClassType.ICID_DARTS_BOX = 81				--暗器匣
ClassType.ICID_DARTS_WEAPON = 82		--	暗器器具
ClassType.ICID_PET_LIFE_SKILL_LEARN_ITEM = 84	--宠物生活技能学习道具
ClassType.ICID_COMPANION_PET_ITEM = 85		--萌宠
ClassType.ICID_ICID_FASHION_RECIPT_ITEM = 86		--时装图纸
ClassType.ICID_ICID_CARD_ITEM = 87		--卡牌
ClassType.ICID_ICID_KUNGFU_SOUL_ITEM = 88 --武魂物品
ClassType.ICID_ICID_ANIMA_RUNE_ITEM = 89 --技能符文
ClassType.ICID_ACTION_ITEM = 90		-- 动作药品
ClassType.ICID_TALENT_PET_ITEM = 91  --新宠物物品
ClassType.ICID_TALENT_PET_ADD_EXP_ITEM = 92 --新宠物升级药品
ClassType.ICID_TALENT_PET_EQUIP = 93 --新宠物装备
ClassType.ICID_KICK_CORPSE_ITEM = 94 --金玉满堂踢出尸体道具
ClassType.ICID_MAGIC_CIRCLE = 95 --阵盘
ClassType.ICID_MAGIC_STONE = 96 --阵石
ClassType.ICID_SWORD_STONE = 97 --剑经总纲
ClassType.ICID_SWORD_CHAPTER = 98 --剑经章节
ClassType.ICID_TALENT_PET_APPEARANCE_ITEM = 99 --宠物幻化道具
ClassType.ICID_CHILD_SKILL_BOOK = 100 --萌娃技能书
ClassType.ICID_TRANS_SCROLL = 101 --新妖楼随机传送卷轴
ClassType.ICID_TEAM_ICON = 102 --队标
ClassType.ICID_HEAD_FRAME = 103 --头像框
ClassType.ICID_XINGQIYAOJUE = 104 --行气要诀
ClassType.ICID_NEIGONGXINFA = 105 --内功心法
ClassType.ICID_FACE_FRAME = 106	--名片框
ClassType.ICID_GIFT_BOX_ITEM = 107 --不放回礼盒
ClassType.ICID_MUSIC_INSTRUMENT = 108 --乐器
ClassType.ICID_SHEET_MUSIC = 109 --Buff曲谱


ClassType.ICID_ADDON_GROUP		= 1001	--	附加属性组模板
ClassType.ICID_PRODUCE_SKILL		= 1002	--	生产技能模板


ClassType.ICID_ACHIEVEMENT		= 1003	--	成就模板
ClassType.ICID_EQUIPMENT_ADDON		= 1004	--	装备附加属性

ClassType.ICID_APLITITUDE		= 1005	--	装备精通

ClassType.ICID_PRACTISE			= 1006	--	修练模板
ClassType.ICID_NPC			= 1007	--	NPC
ClassType.ICID_MONSTER			= 1008	--	怪物
ClassType.ICID_MINE			= 1009	--	矿物
ClassType.ICID_XIULIAN			= 1010	--	修炼
ClassType.ICID_EQUALITEM		= 1011	--	等价物品
ClassType.ICID_RUNEWORD			= 1012	--	符文之语
ClassType.ICID_EQUIP_LEVELUP		= 1013	--	装备升级模板
ClassType.ICID_TRANSFORM		= 1014	--	变身模板
ClassType.ICID_WUXUE			= 1015	--	武学
ClassType.ICID_BADGE			= 1016	--	徽章
ClassType.ECID_DARTS_BOX_LEVELUP = 1017 --暗器匣升级模板
ClassType.ECID_HOLY_EQUIP_CONFIG = 1018	--神器配置模板
ClassType.ECID_FASHION_RECIPT_CONFIG = 1019 --时装合成分解配置表
ClassType.ECID_CARD_COOPERATE_CONFIG = 1020 --卡牌协同配置表
-- 门徒食物类型
PetFoodType = {}
PetFoodType.PET_FOOD_GRASS		= 0
PetFoodType.PET_FOOD_MEAT		= 1
PetFoodType.PET_FOOD_VEGETABLE	= 2
PetFoodType.PET_FOOD_FRUIT		= 3
PetFoodType.PET_FOOD_WATER		= 4

-- 武器类型
WeaponRangeType = {}
WeaponRangeType.WEAPONTYPE_MELEE	= 0   --	近程武器
WeaponRangeType.WEAPONTYPE_RANGE	= 1   --	远程武器

-- 镶嵌的装备类别

EquipMask = {}
EquipMask.EQUIP_MASK_WEAPON		= 0x00000001	--	武器
EquipMask.EQUIP_MASK_HEAD		= 0x00000002	--	头部
EquipMask.EQUIP_MASK_BODY		= 0x00000004	--	上衣
EquipMask.EQUIP_MASK_LEG		= 0x00000008	--	裤子
EquipMask.EQUIP_MASK_FOOT		= 0x00000010	--	鞋子
EquipMask.EQUIP_MASK_WRIST		= 0x00000020	--	护腕
EquipMask.EQUIP_MASK_NECKLACE		= 0x00000040	--	项链
EquipMask.EQUIP_MASK_FINGER1		= 0x00000080	--	戒指1
EquipMask.EQUIP_MASK_FINGER2		= 0x00000100	--	戒指2
EquipMask.EQUIP_MASK_FASHION_HEAD	= 0x00000200	--	时装头饰
EquipMask.EQUIP_MASK_FASHION_BODY	= 0x00000400	--	时装衣服
EquipMask.EQUIP_MASK_FASHION_FOOT	= 0x00000800	--	时装鞋子
EquipMask.EQUIP_MASK_PICFRAME		= 0x00001000	--	头像图标
EquipMask.EQUIP_MASK_WAIST		= 0x00002000	--	腰


--附加属性组效果列表
EffectList = {}
EffectList[1] = --[[!]]"基础附加属性1"
EffectList[2] = --[[!]]"基础附加属性2"
EffectList[3] = --[[!]]"基础附加属性3"
EffectList[4] = --[[!]]"基础附加属性4"
EffectList[5] = --[[!]]"附加属性1"
EffectList[6] = --[[!]]"附加属性2"
EffectList[7] = --[[!]]"附加属性3"
EffectList[8] = --[[!]]"附加属性4"
EffectList[9] = --[[!]]"附加属性5"
EffectList[10] = --[[!]]"附加属性6"
EffectList[11] = --[[!]]"附加属性7"
EffectList[12] = --[[!]]"附加属性8"
-----------------------------------------

-----------------------------------------
-----------------------------------------
-----------------------------------------

-----------------------------------------
------------------颜色-------------------
-----------------------------------------

ITEM_COLOR_NORMAL = --[[!AUTO_13]]"^ffffff"	--	普通


ITEM_COLOR_LIMITED = --[[!AUTO_14]]"^FD2D31"	--	不满足限制条件


-- 物品颜色控制字符串

ITEM_COLOR_DESC = {}
--ITEM_COLOR_DESC[1] = "^A8A8A8"	--	灰色
--ITEM_COLOR_DESC[2] = "^FFFFFF"	--	白色
--ITEM_COLOR_DESC[3] = "^B6E3BB"	--	绿色
--ITEM_COLOR_DESC[4] = "^58a6df"	--	浅蓝
--ITEM_COLOR_DESC[5] = "^d787f6"	--	深蓝
--ITEM_COLOR_DESC[6] = "^fdee01"	--	橙红
ITEM_COLOR_DESC[1] = --[[!AUTO_15]]"^FFFFFF"	--	白
ITEM_COLOR_DESC[2] = --[[!AUTO_16]]"^00ff00"	--	绿
ITEM_COLOR_DESC[3] = --[[!AUTO_17]]"^00ff00"	--	绿
ITEM_COLOR_DESC[4] = --[[!AUTO_18]]"^00ff00"	--	绿
ITEM_COLOR_DESC[5] = --[[!AUTO_19]]"^3485FF"	--	蓝
ITEM_COLOR_DESC[6] = --[[!AUTO_20]]"^3485FF"	--	蓝
ITEM_COLOR_DESC[7] = --[[!AUTO_21]]"^3485FF"	--	蓝
ITEM_COLOR_DESC[8] = --[[!AUTO_22]]"^CE58FF"	--	紫
ITEM_COLOR_DESC[9] = --[[!AUTO_23]]"^CE58FF"	--	紫
ITEM_COLOR_DESC[10] = --[[!AUTO_24]]"^CE58FF"	--	紫
ITEM_COLOR_DESC[11] = --[[!AUTO_3153]]"^ffff00"	--
ITEM_COLOR_DESC[12] = --[[!AUTO_3154]]"^ffff00"	--
ITEM_COLOR_DESC[13] = --[[!AUTO_3155]]"^ffff00"	--
ITEM_COLOR_DESC[14] = --[[!AUTO_3156]]"^eb900e"	--
ITEM_COLOR_DESC[15] = --[[!AUTO_3157]]"^eb900e"	--
ITEM_COLOR_DESC[16] = --[[!AUTO_3158]]"^eb900e"	--
ITEM_COLOR_DESC[17] = --[[!AUTO_3159]]"^e63e57"	--
ITEM_COLOR_DESC[18] = --[[!AUTO_3160]]"^e63e57"	--
ITEM_COLOR_DESC[19] = --[[!AUTO_3161]]"^e63e57"	--
ITEM_COLOR_DESC[20] = --[[!AUTO_3162]]"^e1519c"	--
ITEM_COLOR_DESC[21] = --[[!AUTO_3163]]"^e1519c"	--
ITEM_COLOR_DESC[22] = --[[!AUTO_3164]]"^e1519c"	--
ITEM_COLOR_DESC[23] = --[[!AUTO_3165]]"^32ffff"	--
ITEM_COLOR_DESC[24] = --[[!AUTO_3166]]"^32ffff"	--
ITEM_COLOR_DESC[25] = --[[!AUTO_3167]]"^32ffff"	--

ITEM_COLOR_DESC[1001] = --[[!AUTO_3167]]"^ffb331"	--黄金武器
ITEM_COLOR_DESC[1002] = --[[!AUTO_3167]]"^c0baff"	--白银武器
ITEM_COLOR_DESC[1003] = --[[!AUTO_3167]]"^3DFEFA"	--琉璃武器
ITEM_COLOR_DESC[1004] = --[[!AUTO_3167]]"^ffff00"	--陨铁神兵


ITEM_COLOR_DESC_ERRORITEM = --[[!AUTO_25]]"^FF0000"	--	大红(待定)
ITEM_COLOR_DESC_ENHANCE = --[[!AUTO_26]]"^FF6C0A"	--	橙 强化属性

-- 元素颜色控制字符串

TAG_COLOR_ELEMENT = {}
TAG_COLOR_ELEMENT[1] = --[[!AUTO_29]]"^d7c4a2"	--	土黄		--风

TAG_COLOR_ELEMENT[2] = --[[!AUTO_30]]"^4a92ff"	--	深蓝		--水

TAG_COLOR_ELEMENT[3] = --[[!AUTO_31]]"^ff0000"	--	红		--火

TAG_COLOR_ELEMENT[4] = --[[!AUTO_32]]"^da8932"	--	橙黄		--土

TAG_COLOR_ELEMENT[5] = --[[!AUTO_33]]"^b981ff"	--	淡紫		--雷

TAG_COLOR_ELEMENT[6] = --[[!AUTO_34]]"^a1ddff"	--	淡蓝		--冰

TAG_COLOR_ELEMENT[7] = --[[!AUTO_35]]"^00ff00"	--	草绿		--毒

TAG_COLOR_ELEMENT[8] = --[[!AUTO_36]]"^ffed72"	--	淡黄		--玄

TAG_COLOR_ELEMENT[9] = --[[!AUTO_37]]"^ffffff"	--	白		--未用
TAG_COLOR_ELEMENT[10] = --[[!AUTO_38]]"^000000"	--	黑		--未用

-- 聊天聊道颜色控制字符串


TAG_COLOR_CHANNEL = {}
TAG_COLOR_CHANNEL[1] = --[[!AUTO_39]]"^ffffff"	--	白		--普通

TAG_COLOR_CHANNEL[2] = --[[!AUTO_40]]"^00d8ff"	--	天蓝		--世界
TAG_COLOR_CHANNEL[3] = --[[!AUTO_41]]"^ff6699"	--	粉红		--密语
TAG_COLOR_CHANNEL[4] = --[[!AUTO_42]]"^33cc33"	--	草绿		--帮派
TAG_COLOR_CHANNEL[5] = --[[!AUTO_43]]"^9287ff"	--	淡紫		--结义
TAG_COLOR_CHANNEL[6] = --[[!AUTO_44]]"^0182d5"	--	深蓝		--组队
TAG_COLOR_CHANNEL[7] = --[[!AUTO_45]]"^ffd200"	--	亮黄		--系统
TAG_COLOR_CHANNEL[8] = --[[!AUTO_46]]"^ff0000"	--	深红		--GM广播
TAG_COLOR_CHANNEL[9] = --[[!AUTO_47]]"^53b2c0"	--	淡蓝		--？超链接
TAG_COLOR_CHANNEL[10] = --[[!AUTO_48]]"^ff9600"	--	黄橙		--？玩家


--附加属性颜色控制字符串
TAG_COLOR_ESSENCE = {}
TAG_COLOR_ESSENCE[1] = --[[!AUTO_49]]"^1EFF00"	--	本体
TAG_COLOR_ESSENCE[2] = --[[!AUTO_50]]"^60B900"	--	套装
TAG_COLOR_ESSENCE[3] = --[[!AUTO_51]]"^ff6c0a"	--	宝石
TAG_COLOR_ESSENCE[4] = --[[!AUTO_52]]"^FD2D31"	--	不可用
TAG_COLOR_ESSENCE[5] = --[[!AUTO_53]]"^FFFFFF"	--	可用
TAG_COLOR_ESSENCE[6] = --[[!AUTO_54]]"^BBBBBB"	--	套装未激活
TAG_COLOR_ESSENCE[7] = --[[!AUTO_55]]"^1D9DFF"	--	资质效果
TAG_COLOR_ESSENCE[8] = --[[!AUTO_56]]"^ffd200"	--	资质效果激活条件
TAG_COLOR_ESSENCE[9] = --[[!AUTO_57]]"^ABCDEF"	--	资质效果未激活
TAG_COLOR_ESSENCE[10] = --[[!AUTO_58]]"^1D9DFF"	--	精通效果
TAG_COLOR_ESSENCE[11] = --[[!AUTO_59]]"^d8b861"	--	装备强化次数颜色
TAG_COLOR_ESSENCE[12] = --[[!AUTO_60]]"^ffcb40"	--	强化属性
TAG_COLOR_ESSENCE[13] = --[[!AUTO_61]]"^FFCB40"	--	开光属性
TAG_COLOR_ESSENCE[14] = --[[!AUTO_62]]"^6ab3ff"	--	固定属性
TAG_COLOR_ESSENCE[15] = --[[!AUTO_63]]"^00ff00"	--	随机属性
TAG_COLOR_ESSENCE[16] = --[[!AUTO_64]]"^ffff00"	--	

TAG_COLOR_ESSENCE[101]	= "^00ff00"	--	武魂附加属性资质1
TAG_COLOR_ESSENCE[102]	= "^00ff00"	--	武魂附加属性资质2
TAG_COLOR_ESSENCE[103]	= "^3485ff"	--	武魂附加属性资质3
TAG_COLOR_ESSENCE[104]	= "^3485ff"	--	武魂附加属性资质4
TAG_COLOR_ESSENCE[105]	= "^ce58ff"	--	武魂附加属性资质5

ITEM_COLOR_BIND = --[[!AUTO_64]]"^FFFFFF"	--	绑定颜色



--套装数量
TAG_SETITEM_COUNT = {}
TAG_SETITEM_COUNT[1] = --[[!AUTO_65]]"　　一件"
TAG_SETITEM_COUNT[2] = --[[!AUTO_66]]"　　两件"
TAG_SETITEM_COUNT[3] = --[[!AUTO_67]]"　　三件"
TAG_SETITEM_COUNT[4] = --[[!AUTO_68]]"　　四件"
TAG_SETITEM_COUNT[5] = --[[!AUTO_69]]"　　五件"
TAG_SETITEM_COUNT[6] = --[[!AUTO_70]]"　　六件"
TAG_SETITEM_COUNT[7] = --[[!AUTO_71]]"　　七件"
TAG_SETITEM_COUNT[8] = --[[!AUTO_72]]"　　八件"
TAG_SETITEM_COUNT[9] = --[[!AUTO_73]]"　　九件"
TAG_SETITEM_COUNT[10] = --[[!AUTO_74]]"　　十件"
TAG_SETITEM_COUNT[11] = --[[!AUTO_75]]"　　十一件"
TAG_SETITEM_COUNT[12] = --[[!AUTO_76]]"　　十二件"
TAG_SETITEM_COUNT[13] = --[[!AUTO_77]]"　　十三件"
TAG_SETITEM_COUNT[14] = --[[!AUTO_78]]"　　十四件"

TAG_SETITEM_COUNT_DEFAULT = --[[!AUTO_79]]"？件"

TAG_SETITEM_TITLE = --[[!AUTO_80]]"^FFFFFF套装属性\r"

--传奇套装数量
TAG_LEGEND_SETITEM_COUNT = {}
TAG_LEGEND_SETITEM_COUNT.ring = "两枚戒指"
TAG_LEGEND_SETITEM_COUNT.hufu = "两枚护符"
TAG_LEGEND_SETITEM_COUNT[4] = "四件全套"
TAG_LEGEND_SETITEM_COUNT.default = "？件"
TAG_LEGEND_SETITEM_COUNT.indent = "　"

-----------------------------------------
-----------------------------------------
-----------------------------------------


-----------------------------------------
------------------文本-------------------
-----------------------------------------

-- 特殊物品文本
ITEM_TITLE_ERROR = --[[!AUTO_81]]"错误物品"
ITEM_TITLE_UNKNOWN = --[[!AUTO_82]]"未知物品"
ITEM_CLASS_ERROR = --[[!AUTO_83]]"未知分类"
ITEM_INFO_ERROR = --[[!AUTO_84]]"未知属性"
ITEM_EXT_DESC_NONE = --[[!AUTO_85]]""

-- 物品品质字符串


ITEM_QUALITY_DESC = {}
--ITEM_QUALITY_DESC[1] = "劣质"
--ITEM_QUALITY_DESC[2] = "普通"
--ITEM_QUALITY_DESC[3] = "优质"
--ITEM_QUALITY_DESC[4] = "精良"
--ITEM_QUALITY_DESC[5] = "完美"
--ITEM_QUALITY_DESC[6] = "传说"

ITEM_QUALITY_DESC[1] = --[[!AUTO_86]]"普通"
ITEM_QUALITY_DESC[2] = --[[!AUTO_87]]"精良"
ITEM_QUALITY_DESC[3] = --[[!AUTO_88]]"上等"
ITEM_QUALITY_DESC[4] = --[[!AUTO_89]]"优质"
ITEM_QUALITY_DESC[5] = --[[!AUTO_90]]"完美"
ITEM_QUALITY_DESC[6] = --[[!AUTO_91]]"传说"
ITEM_QUALITY_DESC[7] = --[[!AUTO_92]]"史诗"
ITEM_QUALITY_DESC[8] = --[[!AUTO_93]]"神器"
ITEM_QUALITY_DESC[9] = --[[!AUTO_94]]"测试"
ITEM_QUALITY_DESC[10] = --[[!AUTO_95]]"江湖"
ITEM_QUALITY_DESC[11] = --[[!AUTO_96]]"神秘"

-- 物品类型文本
ITEM_CLASS_DESC = {}
ITEM_CLASS_DESC[1] = --[[!AUTO_97]]"装备"
ITEM_CLASS_DESC[2] = --[[!AUTO_98]]"生产原料"
ITEM_CLASS_DESC[3] = --[[!AUTO_99]]"药品"
ITEM_CLASS_DESC[4] = --[[!AUTO_100]]"复活卷轴"
ITEM_CLASS_DESC[5] = --[[!AUTO_101]]"技能书"
ITEM_CLASS_DESC[6] = --[[!AUTO_102]]"回城卷轴"
ITEM_CLASS_DESC[7] = --[[!AUTO_103]]"任务物品"
ITEM_CLASS_DESC[8] = --[[!AUTO_104]]"镶嵌石"
ITEM_CLASS_DESC[9] = --[[!AUTO_105]]"装备精华"
ITEM_CLASS_DESC[10] = --[[!AUTO_106]]"附魔石"
ITEM_CLASS_DESC[11] = --[[!AUTO_107]]"任务道具"
ITEM_CLASS_DESC[12] = --[[!AUTO_108]]"任务物品"
ITEM_CLASS_DESC[13] = --[[!AUTO_109]]"错误物品"
ITEM_CLASS_DESC[14] = --[[!AUTO_110]]"GM道具"
ITEM_CLASS_DESC[15] = --[[!AUTO_111]]"配方"
ITEM_CLASS_DESC[16] = --[[!AUTO_112]]"烟花"
ITEM_CLASS_DESC[17] = --[[!AUTO_113]]"精炼卷轴"
ITEM_CLASS_DESC[18] = --[[!AUTO_114]]"配方卷轴"
ITEM_CLASS_DESC[19] = --[[!AUTO_115]]"传送卷轴"
ITEM_CLASS_DESC[20] = --[[!AUTO_116]]"替身娃娃"
ITEM_CLASS_DESC[21] = --[[!AUTO_117]]"多倍经验"
ITEM_CLASS_DESC[22] = --[[!AUTO_118]]"销毁中的物品"
ITEM_CLASS_DESC[23] = --[[!AUTO_119]]"道具"
ITEM_CLASS_DESC[24] = --[[!AUTO_120]]"坐骑"
ITEM_CLASS_DESC[25] = --[[!AUTO_121]]"同心结"
ITEM_CLASS_DESC[26] = --[[!AUTO_122]]"礼包"
ITEM_CLASS_DESC[27] = --[[!AUTO_123]]"录像道具"
ITEM_CLASS_DESC[28] = --[[!AUTO_124]]"文字烟花"
ITEM_CLASS_DESC[29] = --[[!AUTO_125]]"法宝主件"
ITEM_CLASS_DESC[30] = --[[!AUTO_126]]"血炼材料"
ITEM_CLASS_DESC[31] = --[[!AUTO_127]]"法宝熔炼剂"
ITEM_CLASS_DESC[32] = --[[!AUTO_128]]"法宝精力药"
ITEM_CLASS_DESC[33] = --[[!AUTO_129]]"喇叭"
ITEM_CLASS_DESC[34] = --[[!AUTO_130]]"职业徽章"
ITEM_CLASS_DESC[35] = --[[!AUTO_131]]"飞行旗"
ITEM_CLASS_DESC[36] = --[[!AUTO_132]]"神秘卷轴"
ITEM_CLASS_DESC[37] = --[[!AUTO_133]]"坐骑"
ITEM_CLASS_DESC[38] = --[[!AUTO_134]]"门徒"
ITEM_CLASS_DESC[39] = --[[!AUTO_135]]"门徒技能书"
ITEM_CLASS_DESC[40] = --[[!AUTO_136]]"门徒药品"
ITEM_CLASS_DESC[41] = --[[!AUTO_137]]"门徒洗点符"
ITEM_CLASS_DESC[42] = --[[!AUTO_138]]"门徒灵丹"
ITEM_CLASS_DESC[43] = --[[!AUTO_139]]"门徒传功道具"
ITEM_CLASS_DESC[44] = --[[!AUTO_140]]"普通物品"
ITEM_CLASS_DESC[45] = --[[!AUTO_141]]"任务道具"
ITEM_CLASS_DESC[46] = --[[!AUTO_142]]"门徒药物"
ITEM_CLASS_DESC[47] = --[[!AUTO_143]]"礼物"
ITEM_CLASS_DESC[49] = --[[!AUTO_144]]"召怪物品"
ITEM_CLASS_DESC[50] = --[[!AUTO_145]]"种子"
ITEM_CLASS_DESC[51] = --[[!AUTO_146]]"幼崽"
ITEM_CLASS_DESC[52] = --[[!AUTO_147]]"请帖"
ITEM_CLASS_DESC[53] = --[[!AUTO_148]]"背包"
ITEM_CLASS_DESC[54] = --[[!AUTO_149]]"藏宝图"
ITEM_CLASS_DESC[55] = --[[!AUTO_150]]"藏宝图碎片"
ITEM_CLASS_DESC[56] = --[[!AUTO_151]]"战场专有"
ITEM_CLASS_DESC[57] = --[[!AUTO_152]]"仆人"
ITEM_CLASS_DESC[58] = --[[!AUTO_153]]"打孔道具"
ITEM_CLASS_DESC[59] = --[[!AUTO_154]]"镶嵌道具"
ITEM_CLASS_DESC[60] = --[[!AUTO_155]]"口供"
ITEM_CLASS_DESC[61] = --[[!AUTO_156]]"镖货"
ITEM_CLASS_DESC[62] = --[[!AUTO_157]]"江湖消息"
ITEM_CLASS_DESC[65] = --[[!AUTO_158]]"下药道具"
ITEM_CLASS_DESC[66] = --[[!AUTO_159]]"陷阱"
ITEM_CLASS_DESC[67] = --[[!AUTO_160]]"藏宝阁宝物"
ITEM_CLASS_DESC[68] = --[[!AUTO_161]]"易容道具"
ITEM_CLASS_DESC[69] = --[[!AUTO_162]]"藏宝阁机关"
ITEM_CLASS_DESC[70] = --[[!AUTO_163]]"地图碎片"
ITEM_CLASS_DESC[71] = --[[!AUTO_164]]"宝石合成符"
ITEM_CLASS_DESC[73] = --[[!AUTO_165]]"召唤门徒道具"
ITEM_CLASS_DESC[74] = --[[!AUTO_166]]"门徒洗髓道具"
ITEM_CLASS_DESC[76] = --[[!AUTO_167]]"线索物品"
ITEM_CLASS_DESC[77] = --[[!AUTO_168]]"传功道具"
ITEM_CLASS_DESC[78] = --[[!AUTO_169]]"表情包"
ITEM_CLASS_DESC[79] = --[[!AUTO_170]]"宝石包"
ITEM_CLASS_DESC[80] = --[[!AUTO_171]]"染色剂"
ITEM_CLASS_DESC[81] = --[[!AUTO_3206]]"暗器匣"
ITEM_CLASS_DESC[82] = --[[!AUTO_3207]]"暗器器具"
ITEM_CLASS_DESC[84] = --[[!AUTO_3207]]"差事技能道具"
ITEM_CLASS_DESC[85] = --[[!AUTO_3207]]"萌宠"
ITEM_CLASS_DESC[86] = --[[!AUTO_3207]]"时装图纸"
ITEM_CLASS_DESC[87] = --[[!AUTO_3207]]"卡牌"
ITEM_CLASS_DESC[88] = --[[!AUTO_3207]]"武魂"
ITEM_CLASS_DESC[89] = --[[!AUTO_3207]]"技能符文"
ITEM_CLASS_DESC[90] = "强力药品"
ITEM_CLASS_DESC[91] = "宠物"
ITEM_CLASS_DESC[92] = "宠物升级药品"
ITEM_CLASS_DESC[93] = "宠物装备"
ITEM_CLASS_DESC[94] = "清除尸体道具"
ITEM_CLASS_DESC[95] = "阵盘"
ITEM_CLASS_DESC[96] = "阵石"
ITEM_CLASS_DESC[97] = "剑经总纲"
ITEM_CLASS_DESC[98] = "剑经章节"
ITEM_CLASS_DESC[99] = "宠物图鉴"
ITEM_CLASS_DESC[100]= "萌娃技能书"
ITEM_CLASS_DESC[101]= "新传送卷轴"
ITEM_CLASS_DESC[102]= "队标"
ITEM_CLASS_DESC[103]= "头像框"
ITEM_CLASS_DESC[104]= "行气要诀"
ITEM_CLASS_DESC[105]= "内功心法"
ITEM_CLASS_DESC[106]= "名片框"
ITEM_CLASS_DESC[107]= "礼盒"
ITEM_CLASS_DESC[108]= "乐器"
ITEM_CLASS_DESC[109]= "曲谱"

ITEM_CLASS_DESC[10001] = "宝物碎片"
ITEM_CLASS_DESC[10002] = "合成碎片"
--物品名称显示格式
ITEM_NAME_DESC = {}
ITEM_NAME_DESC[1] = --[[!AUTO_172]]"%s"	--普通的物品
ITEM_NAME_DESC[2] = --[[!AUTO_173]]"%s%s"	--带计数的物品
ITEM_NAME_DESC[3] = --[[!AUTO_174]]"%s%s%s"	--装备（暂定）

--物品分类显示格式
ITEM_TYPE_DESC = {}
ITEM_TYPE_DESC[1] = --[[!AUTO_175]]"^FFFFFF%s"	--主分类


ITEM_TYPE_DESC[2] = --[[!AUTO_176]]"^FFFFFF%s\r^FFFFFF%s"	--次层分类，只有装备和材料，包括次层分类名和主要属性/品质
ITEM_TYPE_DESC[3] = --[[!AUTO_177]]"^72FE00%s"	--主分类


ITEM_TYPE_DESC[4] = --[[!AUTO_178]]"^FFFFFF%s\r^FFFFFF%s"	--次层分类，礼物当为收到时，显示收的时间


--物品绑定显示格式
ITEM_BIND_STRING = {}
ITEM_BIND_STRING[1] = --[[!AUTO_179]]"已绑定"
ITEM_BIND_STRING[2] = --[[!AUTO_180]]"装备绑定"
ITEM_BIND_STRING[3] = --[[!AUTO_181]]"已加锁"
ITEM_BIND_STRING[4] = --[[!AUTO_182]]"专属道具"
ITEM_BIND_STRING[5] = --[[!AUTO_183]]"拾取绑定"
ITEM_BIND_STRING[6] = --[[!AUTO_3208]]"帮派专属"
ITEM_BIND_STRING[7] = --[[!AUTO_3209]]"可以印染帮派标志"
ITEM_BIND_STRING[8] = "交易/邮寄后绑定"
ITEM_BIND_STRING[9] = "只可寄售"

--销毁中的道具显示
ITEM_DELAY_DESTORY_NAME = --[[!AUTO_3210]]"^ff6666销毁中的"
ITEM_DELAY_DESTORY_ICON = --[[!AUTO_3211]]"01907技能物品.dds"
ITEM_DELAY_DESTORY_DESC = --[[!AUTO_3212]]"\r^ff6666此道具出于安全考虑正延时销毁，将在上述时间到时后永久消失!!!\r^6666ff使用：请右键点击恢复道具!!!"
--商城保护道具显示
ITEM_MALL_PROTECT_NAME = --[[!AUTO_3210]]"^ff6666商城保护中的"
ITEM_MALL_PROTECT_ICON = --[[!AUTO_3211]]"01907技能物品.dds"
ITEM_MALL_PROTECT_DESC = --[[!AUTO_3212]]"\r^ff6666此道具处于商城购买保护期，将在上述时间到时后自动解除保护!\r^6666ff使用：右键点击可选择解除保护或商城退货!"
--时装分解中道具显示
ITEM_FASHION_DECOMPOSE_NAME = --[[!AUTO_3210]]"^ff6666分解中的"
ITEM_FASHION_DECOMPOSE_ICON = --[[!AUTO_3211]]"01907技能物品.dds"
ITEM_FASHION_DECOMPOSE_DESC = --[[!AUTO_3212]]"\r^ff6666倒计时中的待分解物品，右键点击可恢复时装。倒计时结束后，右键点击可获得分解后的材料。"

--马匹装绑提示
HORSE_EQUIPBIND_NOTICE = --[[!AUTO_184]]"(未绑定时不会在自动寻路中使用)"

--装备前后缀显示
EQUIP_NAME_UNDENTIFIED = --[[!AUTO_185]]"(未知)"
EQUIP_NAME_PREFIX = --[[!AUTO_186]]"%s的"
EQUIP_NAME_SUFFIX = --[[!AUTO_187]]"·%s"

--装备本体属性显示

EQUIP_BASEPROP_OUTERATK = --[[!AUTO_188]]"^FFFFFF基础外功攻击：%s%d"
EQUIP_BASEPROP_OUTERATK_ADD = --[[!AUTO_189]]"^FFFFFF基础外功攻击：%s%d%s(%d)"
EQUIP_BASEPROP_INNERATK = --[[!AUTO_190]]"^FFFFFF基础内功攻击：%s%d"
EQUIP_BASEPROP_INNERATK_ADD = --[[!AUTO_191]]"^FFFFFF基础内功攻击：%s%d%s(%d)"
EQUIP_BASEPROP_OUTERDEF = --[[!AUTO_192]]"^FFFFFF基础外功防御：%s%d"
EQUIP_BASEPROP_OUTERDEF_ADD = --[[!AUTO_193]]"^FFFFFF基础外功防御：%s%d%s(%d)"
EQUIP_BASEPROP_INNERDEF = --[[!AUTO_194]]"^FFFFFF基础内功防御：%s%d"
EQUIP_BASEPROP_INNERDEF_ADD = --[[!AUTO_195]]"^FFFFFF基础内功防御：%s%d%s(%d)"
EQUIP_BASEPROP_HP = --[[!AUTO_196]]"^FFFFFF基础气血上限：^FFFFFF%s%d"
EQUIP_BASEPROP_HP_ADD = --[[!AUTO_197]]"^FFFFFF基础气血上限：%s%d%s(%d)"
EQUIP_BASEPROP_MP1 = --[[!AUTO_198]]"^FFFFFF基础内力上限：^FFFFFF%s%d"
EQUIP_BASEPROP_MP1_ADD = --[[!AUTO_199]]"^FFFFFF基础内力上限：%s%d%s(%d)"
EQUIP_BASEPROP_CRIT = --[[!AUTO_200]]"^FFFFFF基础武学会心：^FFFFFF%s%d"
EQUIP_BASEPROP_CRIT_ADD = --[[!AUTO_201]]"^FFFFFF基础武学会心：%s%d%s(%d)"
EQUIP_BASEPROP_EXPERT = --[[!AUTO_202]]"^FFFFFF基础武学精通：^FFFFFF%s%d"
EQUIP_BASEPROP_EXPERT_ADD = --[[!AUTO_203]]"^FFFFFF基础武学精通：%s%d%s(%d)"
EQUIP_BASEPROP_RESIST = --[[!AUTO_204]]"^FFFFFF基础武学抵御：^FFFFFF%s%d"
EQUIP_BASEPROP_RESIST_ADD = --[[!AUTO_205]]"^FFFFFF基础武学抵御：%s%d%s(%d)"

--[[装备附加属性显示]]
EQUIP_ESSPROP_UNDENTIFIED = --[[!AUTO_206]]"未知属性（需要鉴定）"
EQUIP_ESSPROP_RANDOMIZED = --[[!AUTO_207]]"自由属性（获得时生成）"
EQUIP_PACKAGE_TYPE_DEFAULT = --[[!AUTO_208]]""

EQUIP_ESSPROP_RANDOMADD_SELECT = --[[!AUTO_209]]"附加%d个神秘属性"
EQUIP_ESSPROP_RANDOMADD_LOWHIGH = --[[!AUTO_210]]"附加%d - %d个神秘属性"

EQUIP_PACKAGE_TYPE = {}
EQUIP_PACKAGE_TYPE[1] = --[[!AUTO_211]]"包裹"
EQUIP_PACKAGE_TYPE[2] = --[[!AUTO_212]]"仓库"

EQUIP_ESSENCE_TYPE = {}
EQUIP_ESSENCE_TYPE[1] = {class = 1, style = --[[!AUTO_213]]"力道 + %d", icon = --[[!AUTO_214]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[2] = {class = 1, style = --[[!AUTO_215]]"体魄 + %d", icon = --[[!AUTO_216]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[3] = {class = 1, style = --[[!AUTO_217]]"筋骨 + %d", icon = --[[!AUTO_218]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[4] = {class = 1, style = --[[!AUTO_219]]"气海 + %d", icon = --[[!AUTO_220]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[5] = {class = 1, style = --[[!AUTO_221]]"内劲 + %d", icon = --[[!AUTO_222]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[6] = {class = 1, style = --[[!AUTO_223]]"[附加属性6] %d", icon = --[[!AUTO_224]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[7] = {class = 1, style = --[[!AUTO_225]]"[附加属性7] %d", icon = --[[!AUTO_226]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[8] = {class = 1, style = --[[!AUTO_227]]"[附加属性8] %d", icon = --[[!AUTO_228]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[9] = {class = 1, style = --[[!AUTO_229]]"气血 + %d", icon = --[[!AUTO_230]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[10] = {class = 1, style = --[[!AUTO_231]]"内力 + %d", icon = --[[!AUTO_232]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[11] = {class = 1, style = --[[!AUTO_233]]"怒气 + %d", icon = --[[!AUTO_234]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[12] = {class = 1, style = --[[!AUTO_235]]"破绽上限 + %d", icon = --[[!AUTO_236]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[13] = {class = 1, style = --[[!AUTO_237]]"体力上限 + %d", icon = --[[!AUTO_238]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[14] = {class = 1, style = --[[!AUTO_239]]"[附加属性12] %d", icon = --[[!AUTO_240]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[15] = {class = 1, style = --[[!AUTO_241]]"[附加属性13] %d", icon = --[[!AUTO_242]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[16] = {class = 1, style = --[[!AUTO_243]]"[附加属性14] %d", icon = --[[!AUTO_244]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[17] = {class = 1, style = --[[!AUTO_245]]"[附加属性15] %d", icon = --[[!AUTO_246]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[18] = {class = 1, style = --[[!AUTO_247]]"气血上限提升 %d%%", icon = --[[!AUTO_248]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[19] = {class = 1, style = --[[!AUTO_249]]"战斗外气血回复速度 + %d", icon = --[[!AUTO_250]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[20] = {class = 1, style = --[[!AUTO_251]]"战斗外内力回复速度 + %d", icon = --[[!AUTO_252]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[21] = {class = 1, style = --[[!AUTO_253]]"战斗外怒气回复速度 + %d", icon = --[[!AUTO_254]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[22] = {class = 1, style = --[[!AUTO_255]]"战斗外破绽回复速度 + %d", icon = --[[!AUTO_256]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[23] = {class = 1, style = --[[!AUTO_257]]"战斗外体力回复速度 + %d", icon = --[[!AUTO_258]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[24] = {class = 1, style = --[[!AUTO_259]]"[附加属性22] %d", icon = --[[!AUTO_260]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[25] = {class = 1, style = --[[!AUTO_261]]"[附加属性23] %d", icon = --[[!AUTO_262]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[26] = {class = 1, style = --[[!AUTO_263]]"[附加属性24] %d", icon = --[[!AUTO_264]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[27] = {class = 1, style = --[[!AUTO_265]]"[附加属性25] %d", icon = --[[!AUTO_266]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[28] = {class = 1, style = --[[!AUTO_267]]"外功攻击下限 + %d", icon = --[[!AUTO_268]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[29] = {class = 1, style = --[[!AUTO_269]]"外功攻击上限 + %d", icon = --[[!AUTO_270]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[30] = {class = 1, style = --[[!AUTO_271]]"外功防御 + %d", icon = --[[!AUTO_272]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[31] = {class = 1, style = --[[!AUTO_273]]"外功伤害加成 %d%%", icon = --[[!AUTO_274]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[32] = {class = 4, style = --[[!AUTO_275]]"外功伤害减免 %d%%", icon = --[[!AUTO_276]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[33] = {class = 4, style = --[[!AUTO_277]]"[附加属性31] %d%%", icon = --[[!AUTO_278]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[34] = {class = 4, style = --[[!AUTO_279]]"[附加属性32] %d%%", icon = --[[!AUTO_280]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[35] = {class = 4, style = --[[!AUTO_281]]"外攻暴击率 + %d%%", icon = --[[!AUTO_282]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[36] = {class = 4, style = --[[!AUTO_283]]"外攻暴击伤害 + %d%%", icon = --[[!AUTO_284]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[37] = {class = 1, style = --[[!AUTO_285]]"外攻暴击伤害 + %d点", icon = --[[!AUTO_286]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[38] = {class = 4, style = --[[!AUTO_287]]"外功暴击抗性 + %d%%", icon = --[[!AUTO_288]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[39] = {class = 1, style = --[[!AUTO_289]]"内功攻击下限 + %d", icon = --[[!AUTO_290]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[40] = {class = 1, style = --[[!AUTO_291]]"内功攻击上限 + %d", icon = --[[!AUTO_292]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[41] = {class = 1, style = --[[!AUTO_293]]"内功防御 + %d", icon = --[[!AUTO_294]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[42] = {class = 1, style = --[[!AUTO_295]]"内功伤害加成 %d%%", icon = --[[!AUTO_296]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[43] = {class = 4, style = --[[!AUTO_297]]"内功伤害减免 %d%%", icon = --[[!AUTO_298]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[44] = {class = 4, style = --[[!AUTO_299]]"[附加属性42] %d%%", icon = --[[!AUTO_300]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[45] = {class = 4, style = --[[!AUTO_301]]"[附加属性43] %d%%", icon = --[[!AUTO_302]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[46] = {class = 4, style = --[[!AUTO_303]]"内攻暴击率 + %d%%", icon = --[[!AUTO_304]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[47] = {class = 4, style = --[[!AUTO_305]]"内攻暴击伤害 + %d%%", icon = --[[!AUTO_306]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[48] = {class = 1, style = --[[!AUTO_307]]"内攻暴击伤害 + %d", icon = --[[!AUTO_308]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[49] = {class = 4, style = --[[!AUTO_309]]"内功暴击抗性+ %d%%", icon = --[[!AUTO_310]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[50] = {class = 1, style = --[[!AUTO_311]]"冰系伤害 + %d", icon = --[[!AUTO_312]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[51] = {class = 1, style = --[[!AUTO_313]]"火系伤害 + %d", icon = --[[!AUTO_314]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[52] = {class = 1, style = --[[!AUTO_315]]"毒系伤害 + %d", icon = --[[!AUTO_316]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[53] = {class = 1, style = --[[!AUTO_317]]"土系伤害 + %d", icon = --[[!AUTO_318]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[54] = {class = 1, style = --[[!AUTO_319]]"[附加属性54] %d", icon = --[[!AUTO_320]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[55] = {class = 1, style = --[[!AUTO_321]]"[附加属性55] %d", icon = --[[!AUTO_322]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[56] = {class = 1, style = --[[!AUTO_323]]"[附加属性56] %d", icon = --[[!AUTO_324]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[57] = {class = 1, style = --[[!AUTO_325]]"[附加属性57] %d", icon = --[[!AUTO_326]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[58] = {class = 4, style = --[[!AUTO_327]]"冰系抗性 + %d%% ", icon = --[[!AUTO_328]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[59] = {class = 4, style = --[[!AUTO_329]]"火系抗性 + %d%% ", icon = --[[!AUTO_330]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[60] = {class = 4, style = --[[!AUTO_331]]"毒系抗性 + %d%% ", icon = --[[!AUTO_332]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[61] = {class = 4, style = --[[!AUTO_333]]"土系抗性 + %d%% ", icon = --[[!AUTO_334]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[62] = {class = 1, style = --[[!AUTO_335]]"[附加属性62] %d%% ", icon = --[[!AUTO_336]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[63] = {class = 1, style = --[[!AUTO_337]]"[附加属性63] %d%% ", icon = --[[!AUTO_338]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[64] = {class = 1, style = --[[!AUTO_339]]"[附加属性64] %d%%", icon = --[[!AUTO_340]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[65] = {class = 1, style = --[[!AUTO_341]]"[附加属性65] %d%%", icon = --[[!AUTO_342]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[66] = {class = 4, style = --[[!AUTO_343]]"降低被冰冻的几率 %d%%", icon = --[[!AUTO_344]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[67] = {class = 4, style = --[[!AUTO_345]]"减少燃烧持续时间 %d%%", icon = --[[!AUTO_346]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[68] = {class = 4, style = --[[!AUTO_347]]"延缓毒发速度 %d%%", icon = --[[!AUTO_348]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[69] = {class = 1, style = --[[!AUTO_349]]"[附加属性69] %d", icon = --[[!AUTO_350]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[70] = {class = 1, style = --[[!AUTO_351]]"[附加属性70] %d", icon = --[[!AUTO_352]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[71] = {class = 1, style = --[[!AUTO_353]]"[附加属性71] %d", icon = --[[!AUTO_354]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[72] = {class = 1, style = --[[!AUTO_355]]"[附加属性72] %d", icon = --[[!AUTO_356]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[73] = {class = 1, style = --[[!AUTO_357]]"[附加属性73] %d", icon = --[[!AUTO_358]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[74] = {class = 4, style = --[[!AUTO_359]]"移动速度 + %d米/秒", icon = --[[!AUTO_360]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[75] = {class = 4, style = --[[!AUTO_361]]"骑乘速度 + %d米/秒", icon = --[[!AUTO_362]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[76] = {class = 1, style = --[[!AUTO_363]]"获得经验增加 %d%%", icon = --[[!AUTO_364]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[77] = {class = 16, style = --[[!AUTO_365]]"『%s』%s+%d", icon = --[[!AUTO_366]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[78] = {class = 3, style = --[[!AUTO_367]]"[附加属性78] %d", icon = --[[!AUTO_368]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[79] = {class = 1, style = --[[!AUTO_369]]"[附加属性79] %d%%", icon = --[[!AUTO_370]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[80] = {class = 1, style = --[[!AUTO_371]]"[附加属性80] %d%%", icon = --[[!AUTO_372]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[81] = {class = 1, style = --[[!AUTO_373]]"[附加属性81] %d%%", icon = --[[!AUTO_374]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[82] = {class = 1, style = --[[!AUTO_375]]"[附加属性82] %d%%", icon = --[[!AUTO_376]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[83] = {class = 1, style = --[[!AUTO_377]]"[附加属性83] %d", icon = --[[!AUTO_378]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[84] = {class = 1, style = --[[!AUTO_379]]"[附加属性84] %d", icon = --[[!AUTO_380]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[85] = {class = 1, style = --[[!AUTO_381]]"[附加属性85] %d", icon = --[[!AUTO_382]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[86] = {class = 1, style = --[[!AUTO_383]]"[附加属性86] %d", icon = --[[!AUTO_384]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[87] = {class = 1, style = --[[!AUTO_385]]"[附加属性87] %d", icon = --[[!AUTO_386]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[88] = {class = 1, style = --[[!AUTO_387]]"[附加属性88] %d", icon = --[[!AUTO_388]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[89] = {class = 1, style = --[[!AUTO_389]]"[附加属性89] %d", icon = --[[!AUTO_390]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[90] = {class = 1, style = --[[!AUTO_391]]"[附加属性90] %d", icon = --[[!AUTO_392]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[91] = {class = 1, style = --[[!AUTO_393]]"[附加属性91] %d", icon = --[[!AUTO_394]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[92] = {class = 1, style = --[[!AUTO_395]]"[附加属性92] %d", icon = --[[!AUTO_396]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[93] = {class = 1, style = --[[!AUTO_397]]"[附加属性93] %d", icon = --[[!AUTO_398]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[94] = {class = 1, style = --[[!AUTO_399]]"[附加属性94] %d", icon = --[[!AUTO_400]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[95] = {class = 1, style = --[[!AUTO_401]]"[附加属性95] %d", icon = --[[!AUTO_402]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[96] = {class = 1, style = --[[!AUTO_403]]"[附加属性96] %d", icon = --[[!AUTO_404]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[97] = {class = 1, style = --[[!AUTO_405]]"[附加属性97] %d", icon = --[[!AUTO_406]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[98] = {class = 1, style = --[[!AUTO_407]]"[附加属性98] %d", icon = --[[!AUTO_408]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[99] = {class = 1, style = --[[!AUTO_409]]"[附加属性99] %d", icon = --[[!AUTO_410]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[100] = {class = 1, style = --[[!AUTO_411]]"[附加属性100] %d", icon = --[[!AUTO_412]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[101] = {class = 1, style = --[[!AUTO_413]]"[附加属性101] %d", icon = --[[!AUTO_414]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[102] = {class = 1, style = --[[!AUTO_415]]"[附加属性102] %d", icon = --[[!AUTO_416]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[103] = {class = 1, style = --[[!AUTO_417]]"[附加属性103] %d", icon = --[[!AUTO_418]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[104] = {class = 1, style = --[[!AUTO_419]]"[附加属性104] %d", icon = --[[!AUTO_420]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[105] = {class = 1, style = --[[!AUTO_421]]"[附加属性105] %d", icon = --[[!AUTO_422]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[106] = {class = 1, style = --[[!AUTO_423]]"[附加属性106] %d", icon = --[[!AUTO_424]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[107] = {class = 1, style = --[[!AUTO_425]]"[附加属性107] %d", icon = --[[!AUTO_426]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[108] = {class = 1, style = --[[!AUTO_427]]"[附加属性108] %d", icon = --[[!AUTO_428]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[109] = {class = 1, style = --[[!AUTO_429]]"[附加属性109] %d", icon = --[[!AUTO_430]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[110] = {class = 1, style = --[[!AUTO_431]]"[附加属性110] %d", icon = --[[!AUTO_432]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[111] = {class = 1, style = --[[!AUTO_433]]"[附加属性111] %d", icon = --[[!AUTO_434]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[112] = {class = 1, style = --[[!AUTO_435]]"[附加属性112] %d", icon = --[[!AUTO_436]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[113] = {class = 1, style = --[[!AUTO_437]]"[附加属性113] %d", icon = --[[!AUTO_438]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[114] = {class = 1, style = --[[!AUTO_439]]"[附加属性114] %d", icon = --[[!AUTO_440]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[115] = {class = 1, style = --[[!AUTO_441]]"[附加属性115] %d", icon = --[[!AUTO_442]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[116] = {class = 1, style = --[[!AUTO_443]]"[附加属性116] %d", icon = --[[!AUTO_444]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[117] = {class = 1, style = --[[!AUTO_445]]"[附加属性117] %d", icon = --[[!AUTO_446]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[118] = {class = 1, style = --[[!AUTO_447]]"[附加属性118] %d", icon = --[[!AUTO_448]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[119] = {class = 6, style = --[[!AUTO_449]]"差事%s提升%d级", icon = --[[!AUTO_450]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[120] = {class = 1, style = --[[!AUTO_451]]"武学技能 + %d级", icon = --[[!AUTO_452]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[121] = {class = 1, style = --[[!AUTO_453]]"职业技能 + %d级", icon = --[[!AUTO_454]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[122] = {class = 1, style = --[[!AUTO_455]]"攻击强化 %d%%", icon = --[[!AUTO_456]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[123] = {class = 1, style = --[[!AUTO_457]]"防御强化 %d%%", icon = --[[!AUTO_458]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[124] = {class = 1, style = --[[!AUTO_459]]"全部资质点 + %d", icon = --[[!AUTO_460]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[125] = {class = 1, style = --[[!AUTO_461]]"无视 %d 点外功伤害", icon = --[[!AUTO_462]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[126] = {class = 1, style = --[[!AUTO_463]]"无视 %d 点内功伤害", icon = --[[!AUTO_464]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[127] = {class = 1, style = --[[!AUTO_465]]"无视 %d 点内外功伤害", icon = --[[!AUTO_466]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[128] = {class = 1, style = --[[!AUTO_467]]"真气上限提升 %d%%", icon = --[[!AUTO_468]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[129] = {class = 1, style = --[[!AUTO_469]]"外功攻击 + %d", icon = --[[!AUTO_470]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[130] = {class = 1, style = --[[!AUTO_471]]"内功攻击 + %d", icon = --[[!AUTO_472]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[131] = {class = 1, style = --[[!AUTO_473]]"社交点上限提升%d", icon = --[[!AUTO_474]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[132] = {class = 1, style = --[[!AUTO_475]]"劳作点上限提升%d", icon = --[[!AUTO_476]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[133] = {class = 7, style = --[[!AUTO_477]]"%s可完成次数增加%d次", icon = --[[!AUTO_478]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[134] = {class = 1, style = --[[!AUTO_479]]"提高幸运值%d点", icon = --[[!AUTO_480]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[135] = {class = 8, style = --[[!AUTO_481]]"声望%s购买物品可获得%d%%的折扣率", icon = --[[!AUTO_482]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[136] = {class = 9, style = --[[!AUTO_483]]"%s类任务可获得%d%%的增益", icon = --[[!AUTO_484]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[137] = {class = 10, style = --[[!AUTO_485]]"生产%s可额外获得造诣%d", icon = --[[!AUTO_486]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[138] = {class = 11, style = --[[!AUTO_487]]"生产可显示%s签名", icon = --[[!AUTO_488]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[139] = {class = 1, style = --[[!AUTO_489]]"门徒死亡后重新招出的恢复时间缩短%d", icon = --[[!AUTO_490]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[140] = {class = 1, style = --[[!AUTO_491]]"提高门徒可训练次数%d次", icon = --[[!AUTO_492]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[141] = {class = 12, style = --[[!AUTO_493]]"提高门徒捕获几率%d%%", icon = --[[!AUTO_494]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[142] = {class = 13, style = --[[!AUTO_495]]"增加门徒普攻威力%d%%%s", icon = --[[!AUTO_496]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[143] = {class = 12, style = --[[!AUTO_497]]"增加门徒训练效果%d%%", icon = --[[!AUTO_498]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[144] = {class = 1, style = --[[!AUTO_499]]"会心 + %d", icon = --[[!AUTO_500]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[145] = {class = 1, style = --[[!AUTO_501]]"精通 + %d", icon = --[[!AUTO_502]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[146] = {class = 1, style = --[[!AUTO_503]]"抵御 + %d", icon = --[[!AUTO_504]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[147] = {class = 1, style = --[[!AUTO_505]]"会心伤害 + %d%%", icon = --[[!AUTO_506]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[148] = {class = 1, style = --[[!AUTO_507]]"抵御伤害 + %d%%", icon = --[[!AUTO_508]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[149] = {class = 4, style = --[[!AUTO_509]]"冰系减抗 + %d%%", icon = --[[!AUTO_510]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[150] = {class = 4, style = --[[!AUTO_511]]"火系减抗 + %d%%", icon = --[[!AUTO_512]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[151] = {class = 4, style = --[[!AUTO_513]]"毒系减抗 + %d%%", icon = --[[!AUTO_514]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[152] = {class = 4, style = --[[!AUTO_515]]"土系减抗 + %d%%", icon = --[[!AUTO_516]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[153] = {class = 1, style = --[[!AUTO_517]]"[附加属性153] %d%%", icon = --[[!AUTO_518]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[154] = {class = 1, style = --[[!AUTO_519]]"[附加属性154] %d%%", icon = --[[!AUTO_520]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[155] = {class = 1, style = --[[!AUTO_521]]"[附加属性155] %d%%", icon = --[[!AUTO_522]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[156] = {class = 1, style = --[[!AUTO_523]]"[附加属性156] %d%%", icon = --[[!AUTO_524]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[157] = {class = 4, style = --[[!AUTO_525]]"冰系穿透 + %d%%", icon = --[[!AUTO_526]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[158] = {class = 4, style = --[[!AUTO_527]]"火系穿透 + %d%%", icon = --[[!AUTO_528]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[159] = {class = 4, style = --[[!AUTO_529]]"毒系穿透 + %d%%", icon = --[[!AUTO_530]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[160] = {class = 4, style = --[[!AUTO_531]]"土系穿透 + %d%%", icon = --[[!AUTO_532]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[161] = {class = 1, style = --[[!AUTO_533]]"[附加属性161] %d%%", icon = --[[!AUTO_534]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[162] = {class = 1, style = --[[!AUTO_535]]"[附加属性162] %d%%", icon = --[[!AUTO_536]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[163] = {class = 1, style = --[[!AUTO_537]]"[附加属性163] %d%%", icon = --[[!AUTO_538]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[164] = {class = 1, style = --[[!AUTO_539]]"[附加属性164] %d%%", icon = --[[!AUTO_540]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[165] = {class = 14, style = --[[!AUTO_541]]"[附加属性165] %d", icon = --[[!AUTO_542]]""}
EQUIP_ESSENCE_TYPE[166] = {class = 14, style = --[[!AUTO_543]]"[附加属性166] %d", icon = --[[!AUTO_544]]""}
EQUIP_ESSENCE_TYPE[167] = {class = 14, style = --[[!AUTO_545]]"[附加属性167] %d", icon = --[[!AUTO_546]]""}
EQUIP_ESSENCE_TYPE[168] = {class = 14, style = --[[!AUTO_547]]"[附加属性168] %d", icon = --[[!AUTO_548]]""}
EQUIP_ESSENCE_TYPE[169] = {class = 14, style = --[[!AUTO_549]]"[附加属性169] %d", icon = --[[!AUTO_550]]""}
EQUIP_ESSENCE_TYPE[170] = {class = 14, style = --[[!AUTO_551]]"[附加属性170] %d", icon = --[[!AUTO_552]]""}
EQUIP_ESSENCE_TYPE[171] = {class = 1, style = --[[!AUTO_553]]"内力上限 + %d%%", icon = --[[!AUTO_554]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[172] = {class = 1, style = --[[!AUTO_555]]"怒气上限 + %d%%", icon = --[[!AUTO_556]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[173] = {class = 1, style = --[[!AUTO_557]]"破绽上限 + %d%%", icon = --[[!AUTO_558]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[174] = {class = 1, style = --[[!AUTO_559]]"体力上限 + %d%%", icon = --[[!AUTO_560]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[175] = {class = 1, style = --[[!AUTO_561]]"出破绽时间降低%d%%(未生效)", icon = --[[!AUTO_562]]""}
EQUIP_ESSENCE_TYPE[176] = {class = 1, style = --[[!AUTO_563]]"被击倒的持续时间降低%d%%(未生效)", icon = --[[!AUTO_564]]""}
EQUIP_ESSENCE_TYPE[177] = {class = 1, style = --[[!AUTO_565]]"被击飞的持续时间降低%d%%(未生效)", icon = --[[!AUTO_566]]""}
EQUIP_ESSENCE_TYPE[178] = {class = 1, style = --[[!AUTO_567]]"被点穴的持续时间降低%d%%(未生效)", icon = --[[!AUTO_568]]""}
EQUIP_ESSENCE_TYPE[179] = {class = 1, style = "治疗效果+%d", icon = "XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[180] = {class = 1, style = --[[!AUTO_569]]"战斗内气血回复速度 + %d", icon = --[[!AUTO_570]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[181] = {class = 1, style = --[[!AUTO_571]]"战斗内内力回复速度 + %d", icon = --[[!AUTO_572]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[182] = {class = 1, style = --[[!AUTO_573]]"战斗内怒气回复速度 + %d", icon = --[[!AUTO_574]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[183] = {class = 1, style = --[[!AUTO_575]]"战斗内破绽回复速度 + %d", icon = --[[!AUTO_576]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[184] = {class = 1, style = --[[!AUTO_577]]"战斗内体力回复速度 + %d", icon = --[[!AUTO_578]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[189] = {class = 1, style = --[[!AUTO_3213]]"人物硬直度 + %d", icon = --[[!AUTO_3214]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[190] = {class = 1, style = --[[!AUTO_3215]]"人物僵直度 + %d", icon = --[[!AUTO_3216]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[191] = {class = 1, style = --[[!AUTO_3217]]"全武学技能 + %d", icon = --[[!AUTO_3218]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[192] = {class = 1, style = --[[!AUTO_3219]]"额外增加1格技能栏", icon = --[[!AUTO_3220]]"XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[193] = {class = 1, style = "人物硬直率+ %d%%", icon = "XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[194] = {class = 1, style = "人物僵直率+ %d%%", icon = "XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[195] = {class = 4, style = "总伤害加成+ %d%%", icon = "XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[196] = {class = 1, style = " %d%%", icon = "XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[197] = {class = 1, style = "内力最大值提升 %d%%", icon = "XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[198] = {class = 1, style = "总外功攻击提升 %d%%", icon = "XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[199] = {class = 1, style = "总内功攻击提升 %d%%", icon = "XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[200] = {class = 1, style = " %d%%", icon = "XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[201] = {class = 1, style = " %d%%", icon = "XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[202] = {class = 1, style = "外功防御提升 %d%%", icon = "XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[203] = {class = 1, style = "内功防御提升 %d%%", icon = "XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[204] = {class = 1, style = "会心提升 %d%%", icon = "XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[205] = {class = 1, style = "精通提升 %d%%", icon = "XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[206] = {class = 1, style = "抵御提升 %d%%", icon = "XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[207] = {class = 4, style = "受到冰系伤害降低 %d%%", icon = "XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[208] = {class = 4, style = "受到火系伤害降低 %d%%", icon = "XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[209] = {class = 4, style = "受到毒系伤害降低 %d%%", icon = "XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[210] = {class = 4, style = "受到土系伤害降低 %d%%", icon = "XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[211] = {class = 4, style = " %d%%", icon = "XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[212] = {class = 4, style = " %d%%", icon = "XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[213] = {class = 4, style = " %d%%", icon = "XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[214] = {class = 4, style = " %d%%", icon = "XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[215] = {class = 1, style = "增加%d%%力道基础值的体魄", icon = "XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[216] = {class = 1, style = "增加%d%%力道基础值的筋骨", icon = "XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[217] = {class = 1, style = "增加%d%%力道基础值的气海", icon = "XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[218] = {class = 1, style = "增加%d%%力道基础值的内劲", icon = "XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[219] = {class = 1, style = "增加%d%%体魄基础值的力道", icon = "XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[220] = {class = 1, style = "增加%d%%体魄基础值的筋骨", icon = "XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[221] = {class = 1, style = "增加%d%%体魄基础值的气海", icon = "XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[222] = {class = 1, style = "增加%d%%体魄基础值的内劲", icon = "XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[223] = {class = 1, style = "增加%d%%筋骨基础值的力道", icon = "XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[224] = {class = 1, style = "增加%d%%筋骨基础值的体魄", icon = "XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[225] = {class = 1, style = "增加%d%%筋骨基础值的气海", icon = "XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[226] = {class = 1, style = "增加%d%%筋骨基础值的内劲", icon = "XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[227] = {class = 1, style = "增加%d%%气海基础值的力道", icon = "XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[228] = {class = 1, style = "增加%d%%气海基础值的体魄", icon = "XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[229] = {class = 1, style = "增加%d%%气海基础值的筋骨", icon = "XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[230] = {class = 1, style = "增加%d%%气海基础值的内劲", icon = "XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[231] = {class = 1, style = "增加%d%%内劲基础值的力道", icon = "XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[232] = {class = 1, style = "增加%d%%内劲基础值的体魄", icon = "XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[233] = {class = 1, style = "增加%d%%内劲基础值的筋骨", icon = "XAJH\\底板\\透明.tga"}
EQUIP_ESSENCE_TYPE[234] = {class = 1, style = "增加%d%%内劲基础值的气海", icon = "XAJH\\底板\\透明.tga"}

EQUIP_ESSENCE_TYPE[999] = {class = 1, style = --[[!AUTO_579]]"组技能 + %d级", icon = --[[!AUTO_580]]"XAJH\\底板\\透明.tga"}





EQUIP_ESSENCE_TYPE14 = {}
EQUIP_ESSENCE_TYPE14[8478] = --[[!AUTO_581]]"^FF0000猛击：攻击时有几率晕目标3秒。\(本属性暂未开放)"
EQUIP_ESSENCE_TYPE14[8479] = --[[!AUTO_582]]"^FF0000灵风：攻击时有几率对自身释放1个吸收内伤害的护盾，最多吸收1000点伤害或者持续15秒。\(本属性暂未开放)"
EQUIP_ESSENCE_TYPE14[8480] = --[[!AUTO_583]]"^FF0000伏魔：攻击时有几率直接加满对方破绽。 \(本属性暂未开放)"
EQUIP_ESSENCE_TYPE14[8481] = --[[!AUTO_584]]"^FF0000割裂：攻击时有几率使目标流血，造成持续伤害。\(本属性暂未开放)"
EQUIP_ESSENCE_TYPE14[8482] = --[[!AUTO_585]]"^FF0000断筋：攻击时有几率使目标减速40%，持续5秒。\(本属性暂未开放)"
EQUIP_ESSENCE_TYPE14[8483] = --[[!AUTO_586]]"^FF0000点穴：攻击时有几率使目标被点穴，持续3秒。\(本属性暂未开放)"
EQUIP_ESSENCE_TYPE14[8484] = --[[!AUTO_587]]"^FF0000弹刀：攻击时有几率为自身释放1个幻影，能在5 秒内，反弹6次伤害。\(本属性暂未开放)"
EQUIP_ESSENCE_TYPE14[8485] = --[[!AUTO_588]]"^FF0000击飞：攻击时有几率打飞目标，持续4秒。\(本属性暂未开放)"
EQUIP_ESSENCE_TYPE14[8486] = --[[!AUTO_589]]"^FF0000强击：几率附加额外1000伤害。\(本属性暂未开放)"
EQUIP_ESSENCE_TYPE14[8487] = --[[!AUTO_590]]"^FF0000招架：攻击时有几率为自身招架外伤害，使自身免疫外伤害3秒。\(本属性暂未开放)"
EQUIP_ESSENCE_TYPE14[8488] = --[[!AUTO_591]]"^FF0000双子：攻击时有几率忽略目标50%内外防御。\(本属性暂未开放)"
EQUIP_ESSENCE_TYPE14[8489] = --[[!AUTO_592]]"^FF0000连击：攻击时有几率2次伤害。\(本属性暂未开放)"
EQUIP_ESSENCE_TYPE14[8490] = --[[!AUTO_593]]"^FF0000缠音：攻击时有几率使目标伤害加深，10秒内受到任意伤害增加40 %.\(本属性暂未开放)"
EQUIP_ESSENCE_TYPE14[8491] = --[[!AUTO_594]]"^FF0000拔势: 攻击时有几率降低目标外防666点。\(本属性暂未开放)"
EQUIP_ESSENCE_TYPE14[8492] = --[[!AUTO_595]]"^FF0000无痕：攻击时有几率使对方受到音波影响，10秒内目标每次施放技能就会掉血888。\(本属性暂未开放)"
EQUIP_ESSENCE_TYPE14[8493] = --[[!AUTO_596]]"^FF0000爆裂：攻击时有几率飞出小火药子弹造成额外的直接火伤害444点。\(本属性暂未开放)"
EQUIP_ESSENCE_TYPE14[8494] = --[[!AUTO_597]]"^FF0000灼烧：攻击时有几率使目标灼烧，10秒内持续加破绽且出破绽的话时间增加5秒。\(本属性暂未开放)"
EQUIP_ESSENCE_TYPE14[8495] = --[[!AUTO_598]]"^FF0000迟滞：攻击时有几率使子弹打入对方经脉，10秒内降低技能释放速度50%。 \(本属性暂未开放)"
EQUIP_ESSENCE_TYPE14[8496] = --[[!AUTO_599]]"^FF0000缠绵：攻击时有几率使目标定身和沉默外攻技能,持续5秒。\(本属性暂未开放)"
EQUIP_ESSENCE_TYPE14[8497] = --[[!AUTO_600]]"^FF0000破招：攻击时有几率本次攻击一定破招。\(本属性暂未开放)"
EQUIP_ESSENCE_TYPE14[8498] = --[[!AUTO_601]]"^FF0000无力：攻击时有几率降低目标内外攻击800点，持续8秒。\(本属性暂未开放)"
EQUIP_ESSENCE_TYPE14[8499] = --[[!AUTO_602]]"^FF0000刁钻：攻击时有几率无视格档造成伤害。\(本属性暂未开放)"
EQUIP_ESSENCE_TYPE14[8500] = --[[!AUTO_603]]"^FF0000古怪：攻击时有几率本次攻击一定是致命攻击。\(本属性暂未开放)"
EQUIP_ESSENCE_TYPE14[8501] = --[[!AUTO_604]]"^FF0000破气：攻击时有几率使目标产生混乱，10秒内技能消耗改为等量生命值。\(本属性暂未开放)"
EQUIP_ESSENCE_TYPE14[8502] = --[[!AUTO_605]]"^FF0000封脉：攻击时有几率使目标降低受到的治疗效果80%，持续8秒。\(本属性暂未开放)"
EQUIP_ESSENCE_TYPE14[8503] = --[[!AUTO_606]]"^FF0000绵力：攻击时有几率使目标内攻沉默并降低内防2000点，持续5秒。\(本属性暂未开放)"
EQUIP_ESSENCE_TYPE14[8504] = --[[!AUTO_607]]"^FF0000刚力：攻击时有几率使目标被击倒3秒。\(本属性暂未开放)"
EQUIP_ESSENCE_TYPE14[8505] = --[[!AUTO_608]]"^FF0000清风：攻击时有几率对自身治疗，直接恢复1200点生命值。\(本属性暂未开放)"
EQUIP_ESSENCE_TYPE14[8506] = --[[!AUTO_609]]"^FF0000风阵：攻击时有几率对目标释放风阵9秒，对方一旦移动位置就会受到大量伤害。\(本属性暂未开放)"
EQUIP_ESSENCE_TYPE14[8507] = --[[!AUTO_610]]"^FF0000冰封：攻击时有几率冰冻目标3秒。\(本属性暂未开放)"
EQUIP_ESSENCE_TYPE14[8508] = --[[!AUTO_611]]"^FF0000化劲：被攻击时有几率触发内伤害吸收盾，持续5秒减受到的内伤害30%。\(本属性暂未开放)"
EQUIP_ESSENCE_TYPE14[8509] = --[[!AUTO_612]]"^FF0000御力：被攻击时有几率触发内伤害吸收盾，持续5秒减受到的外伤害30%。\(本属性暂未开放)"
EQUIP_ESSENCE_TYPE14[8510] = --[[!AUTO_613]]"^FF0000混沌：被攻击时有几率触发伤害吸收盾，持续10秒或者吸收3000点伤害后破碎，破碎时对周围产生吸收值的内伤害。\(本属性暂未开放)"
EQUIP_ESSENCE_TYPE14[8511] = --[[!AUTO_614]]"^FF0000金刚：被攻击时有几率增加外防6666点，持续6秒。\(本属性暂未开放)"
EQUIP_ESSENCE_TYPE14[8512] = --[[!AUTO_615]]"^FF0000不动：被攻击时有几率增加内防5555点，持续5秒。\(本属性暂未开放)"
EQUIP_ESSENCE_TYPE14[8513] = --[[!AUTO_616]]"^FF0000复苏：被攻击时有几率缓慢恢复自身生命，持续10秒,共回复2000点。\(本属性暂未开放)"
EQUIP_ESSENCE_TYPE14[8514] = --[[!AUTO_617]]"^FF0000治愈：被攻击时有几率直接治疗自身和周围7米内队伍单位700点生命值。\(本属性暂未开放)"
EQUIP_ESSENCE_TYPE14[8515] = --[[!AUTO_618]]"^FF0000回魂：当你杀死任意单位时有几率触发直接治疗自身25%的生命值。\(本属性暂未开放)"
EQUIP_ESSENCE_TYPE14[8516] = --[[!AUTO_619]]"^FF0000周天：当你杀死任意单位时有几率触发直接治疗自身50%的内力值。\(本属性暂未开放)"
EQUIP_ESSENCE_TYPE14[8517] = --[[!AUTO_620]]"^FF0000顺风：当你杀死任意单位时有几率触发自身移动速度增加2米/秒,持续5秒。\(本属性暂未开放)"
EQUIP_ESSENCE_TYPE14[8518] = --[[!AUTO_621]]"^FF0000谨慎：当你杀死任意单位时有几率触发直接自身减少破绽10点。\(本属性暂未开放)"
EQUIP_ESSENCE_TYPE14[8519] = --[[!AUTO_622]]"^FF0000回力：当你杀死任意单位时有几率触发直接增加自身5点体力。\(本属性暂未开放)"
EQUIP_ESSENCE_TYPE14[8520] = --[[!AUTO_623]]"^FF0000火殇：当你杀死任意单位时有几率触发目标点直接爆炸，造成半径4米的火伤害888点。\(本属性暂未开放)"
EQUIP_ESSENCE_TYPE14[8521] = --[[!AUTO_624]]"^FF0000冰殇：当你杀死任意单位时有几率触发，会使半径6米内的目标被冰冻3秒。\(本属性暂未开放)"
EQUIP_ESSENCE_TYPE14[8522] = --[[!AUTO_625]]"^FF0000毒殇：当你杀死任意单位时有几率触发在尸体留下1片毒雾，进入的怪物会中毒，10秒内掉血888。毒雾持续15秒。\(本属性暂未开放)"
EQUIP_ESSENCE_TYPE14[8523] = --[[!AUTO_626]]"^FF0000聚力：当你成功闪避时有几率增加下次攻击的外攻击力800点。\(本属性暂未开放)"
EQUIP_ESSENCE_TYPE14[8524] = --[[!AUTO_627]]"^FF0000凝气：当你成功闪避时有几率增加下次攻击的内攻击力800点。\(本属性暂未开放)"
EQUIP_ESSENCE_TYPE14[8525] = --[[!AUTO_628]]"^FF0000反击：当你成功闪避时有几率直接对目标造成外伤害1000点，且对方处于破绽状态的话，会击晕对方2秒。\(本属性暂未开放)"
EQUIP_ESSENCE_TYPE14[8526] = --[[!AUTO_629]]"^FF0000倍返：当你成功闪避时有几率直接对目标造成外伤害1100点，且对方处于破绽状态的话，会击倒对方2秒。\(本属性暂未开放)"
EQUIP_ESSENCE_TYPE14[8527] = --[[!AUTO_630]]"^FF0000借力：当你成功闪避时有几率直接对目标造成外伤害1300点，且对方处于破绽状态的话，会点穴对方2秒。\(本属性暂未开放)"
EQUIP_ESSENCE_TYPE14[8528] = --[[!AUTO_631]]"^FF0000严密：当你成功闪避时有几率直接自身回复生命1000。\(本属性暂未开放)"
EQUIP_ESSENCE_TYPE14[8529] = --[[!AUTO_632]]"^FF0000气顺：当你成功闪避时有几率直接自身回复内力1100。\(本属性暂未开放)"
EQUIP_ESSENCE_TYPE14[8530] = --[[!AUTO_633]]"^FF0000灵火：当你在战斗中位置移动时有几率触发在原地留下一堆灵火，对进入的人造成燃烧伤害300点/秒，持续20秒。\(本属性暂未开放)"
EQUIP_ESSENCE_TYPE14[8531] = --[[!AUTO_634]]"^FF0000水精：当你在战斗中位置移动时有几率触发在原地留下一只持续10秒的水精，对触碰的人造成水伤害2000点，并降低目标速度2米/秒，持续4秒。\(本属性暂未开放)"
EQUIP_ESSENCE_TYPE14[8532] = --[[!AUTO_635]]"^FF0000厚土：当你在战斗中位置移动时有几率触发在原地留下一堆持续12秒的尘土，对进入的人造成土伤害500点/秒，并同时减少目标体力5点/秒。\(本属性暂未开放)"
EQUIP_ESSENCE_TYPE14[8533] = --[[!AUTO_636]]"^FF0000妙毒：当你在战斗中位置移动时有几率触发在原地留下一根持续10秒的毒针，对触碰的人造成毒伤害1500点，使对方麻痹4秒。\(本属性暂未开放)"
EQUIP_ESSENCE_TYPE14[8534] = --[[!AUTO_637]]"^FF0000真命：当你在战斗中位置移动时有几率触发在原地留下一个红魂，任何玩家都能吃，同吸魂，吸收可增加800点生命值，持续8秒。\(本属性暂未开放)"
EQUIP_ESSENCE_TYPE14[8535] = --[[!AUTO_638]]"^FF0000气旋：当你在战斗中位置移动时有几率触发在原地留下一个蓝魂，任何玩家都能吃，同吸魂，吸收可增加800点内力值，持续8秒。\(本属性暂未开放)"
EQUIP_ESSENCE_TYPE14[8536] = --[[!AUTO_639]]"^FF0000体力：当你在战斗中位置移动时有几率触发在原地留下一个黄魂，任何玩家都能吃，同吸魂，吸收可增加20点体力，持续8秒。\(本属性暂未开放)"
EQUIP_ESSENCE_TYPE14[8537] = --[[!AUTO_640]]"^FF0000狂暴：当你在战斗中位置移动时有几率触发在原地留下一个绿魂，任何玩家都能吃，同吸魂，吸收可增加30点怒气，持续8秒。\(本属性暂未开放)"
EQUIP_ESSENCE_TYPE14[8538] = --[[!AUTO_641]]"^FF0000爆发：当你在战斗中位置移动时有几率触发在原地留下一个红魂，任何玩家都能吃，同吸魂，吸收可增加X米/秒的移动速度，持续Y秒。\(本属性暂未开放)"
EQUIP_ESSENCE_TYPE14[8539] = --[[!AUTO_642]]"^FF0000铁壁：当你被控制进入破绽控制状态时有几率触发大量增加自身内外防50%，持续8秒。\(本属性暂未开放)"
EQUIP_ESSENCE_TYPE14[8540] = --[[!AUTO_643]]"^FF0000不灭：当你被控制进入破绽控制状态时有几率触发大量增加自身4抗性30%，持续5秒。\(本属性暂未开放)"
EQUIP_ESSENCE_TYPE14[8541] = --[[!AUTO_644]]"^FF0000两伤：当你被控制进入破绽控制状态时有几率触发放出冲击波，使周围的人受到500点内伤害，如果出破绽的敌人则会被击倒4秒。\(本属性暂未开放)"
EQUIP_ESSENCE_TYPE14[8542] = --[[!AUTO_645]]"^FF0000源魂：当你被控制进入破绽控制状态时有几率触对自身释放BUFF，缓慢恢复自身生命值，每秒300点，持续15秒。\(本属性暂未开放)"
EQUIP_ESSENCE_TYPE14[8543] = --[[!AUTO_646]]"^FF0000气场：当你被控制进入破绽控制状态时有几率触对自身释放BUFF，缓慢恢复自身内力值，每秒400点，持续10秒。\(本属性暂未开放)"
EQUIP_ESSENCE_TYPE14[8544] = --[[!AUTO_647]]"^FF0000真护：主动使用后释放1个真气罩，为全队伍增加护盾，抵挡任意伤害3000点，持续8秒或达到吸收上限消失。\(本属性暂未开放)"
EQUIP_ESSENCE_TYPE14[8545] = --[[!AUTO_648]]"^FF0000圣炎：主动使用后对单体目标释放1个火球，造成单体火伤害3000点，如果杀死目标，则爆炸追加半径9的AOE火伤害1500点。\(本属性暂未开放)"
EQUIP_ESSENCE_TYPE14[8546] = --[[!AUTO_649]]"^FF0000冰柱：主动使用后向某方向释放1道长15米宽5米高3米的冰柱，1秒后冰封范围内目标5秒。\(本属性暂未开放)"
EQUIP_ESSENCE_TYPE14[8547] = --[[!AUTO_650]]"^FF0000毒护：主动使用后对自身释放后自身被毒雾笼罩8秒，暂时减少自己受到的毒伤害50%，且攻击自身的目标会中毒降低攻击力50%，降低攻击效果持续10秒。\(本属性暂未开放)"
EQUIP_ESSENCE_TYPE14[8548] = --[[!AUTO_651]]"^FF0000土盾：主动使用后对自身释放后自身被土盾覆盖，减少受到的所有攻击伤害20%，但也降低自身移动速度2米秒，持续8秒。\(本属性暂未开放)"
EQUIP_ESSENCE_TYPE14[8549] = --[[!AUTO_652]]"^FF0000回春：主动使用后瞬间增加自身生命值1500。\(本属性暂未开放)"
EQUIP_ESSENCE_TYPE14[8550] = --[[!AUTO_653]]"^FF0000安神：主动使用后瞬间增加自身 内力值1500。\(本属性暂未开放)"
EQUIP_ESSENCE_TYPE14[8551] = --[[!AUTO_654]]"^FF0000圣佑：主动使用后瞬间增加自身体力50点。\(本属性暂未开放)"
EQUIP_ESSENCE_TYPE14[8552] = --[[!AUTO_655]]"^FF0000狂怒：主动使用后瞬间增加自身怒气100点。\(本属性暂未开放)"
EQUIP_ESSENCE_TYPE14[8553] = --[[!AUTO_656]]"^FF0000破军：主动使用后，自身下5秒一定破招。\(本属性暂未开放)"
EQUIP_ESSENCE_TYPE14[8554] = --[[!AUTO_657]]"^FF0000七杀：主动使用后，自身下3秒一定会心。\(本属性暂未开放)"
EQUIP_ESSENCE_TYPE14[8555] = --[[!AUTO_658]]"^FF0000破灭：主动使用后，自身下8秒增加外攻击力888点。\(本属性暂未开放)"
EQUIP_ESSENCE_TYPE14[8556] = --[[!AUTO_659]]"^FF0000内满：主动使用后，自身下8秒增加内攻击力888点。\(本属性暂未开放)"
EQUIP_ESSENCE_TYPE14[8557] = --[[!AUTO_660]]"^FF0000会心：主动使用后，自身下8秒增加会心伤害4000点。\(本属性暂未开放)"

ANIMA_EQUIP_DES = {}
ANIMA_EQUIP_DES[1] = "注灵%2d级"
ANIMA_EQUIP_DES[2] = "强化%2d级"

--装备类别描述
EQUIP_WEAPON_CLASS_DESC = {}
EQUIP_WEAPON_CLASS_DESC[1] = --[[!AUTO_661]]""
EQUIP_WEAPON_CLASS_DESC[2] = --[[!AUTO_662]]""
EQUIP_WEAPON_CLASS_DESC[3] = --[[!AUTO_663]]""
EQUIP_WEAPON_CLASS_DESC[4] = --[[!AUTO_664]]""
EQUIP_WEAPON_CLASS_DESC[--[[!]]"少林结棍"] = --[[!AUTO_665]]"禅棍"
EQUIP_WEAPON_CLASS_DESC[--[[!]]"武当长剑"] = --[[!AUTO_666]]"重剑"
EQUIP_WEAPON_CLASS_DESC[--[[!]]"华山单剑"] = --[[!AUTO_667]]"单剑"
EQUIP_WEAPON_CLASS_DESC[--[[!]]"恒山双剑"] = --[[!AUTO_668]]"双剑"
EQUIP_WEAPON_CLASS_DESC[--[[!]]"衡山琴剑"] = --[[!AUTO_669]]"藏剑"
EQUIP_WEAPON_CLASS_DESC[--[[!]]"日月双刃"] = --[[!AUTO_670]]"链刃"
EQUIP_WEAPON_CLASS_DESC[--[[!]]"五仙鞭子"] = --[[!AUTO_671]]"鞭索"
EQUIP_WEAPON_CLASS_DESC[--[[!]]"逍遥扇子"] = --[[!AUTO_672]]"折扇"
EQUIP_WEAPON_CLASS_DESC[--[[!]]"唐门拳刃"] = --[[!AUTO_673]]"拳铳"
EQUIP_WEAPON_CLASS_DESC[--[[!]]"峨眉法杖"] = --[[!AUTO_674]]"古杖"
EQUIP_WEAPON_CLASS_DESC[--[[!]]"黄金武器"] = --[[!AUTO_674]]"武器"
EQUIP_WEAPON_CLASS_DESC[--[[!]]"白银武器"] = --[[!AUTO_674]]"武器"
EQUIP_WEAPON_CLASS_DESC[--[[!]]"琉璃武器"] = --[[!AUTO_674]]"武器"
EQUIP_WEAPON_CLASS_DESC[--[[!]]"无名神鹰"] = --[[!AUTO_674]]"苍鹰"

EQUIP_LOCA_CLASS_DESC = {}
EQUIP_LOCA_CLASS_DESC = --[[!AUTO_675]]""
EQUIP_LOCA_CLASS_DESC = --[[!AUTO_676]]""
EQUIP_LOCA_CLASS_DESC = --[[!AUTO_677]]""
EQUIP_LOCA_CLASS_DESC = --[[!AUTO_678]]""
EQUIP_LOCA_CLASS_DESC = --[[!AUTO_679]]""

-- 物品限制说明
ITEM_LIMIT_DESC = {}
ITEM_LIMIT_DESC[1] = --[[!AUTO_680]]"%s%s"	--左侧限制等级门派限制
ITEM_LIMIT_DESC[2] = --[[!AUTO_681]]"%s%s"	--右侧限制性别耐久限制
ITEM_LIMIT_DESC[3] = --[[!AUTO_682]]"%s等级：%s\r"	--等级限制
ITEM_LIMIT_DESC[4] = --[[!AUTO_683]]"%s门派：%s\r"	--门派限制
ITEM_LIMIT_DESC[5] = --[[!AUTO_684]]"%s%s"	--性别限制
ITEM_LIMIT_DESC[6] = --[[!AUTO_685]]"^FFFFFF耐久：%d%%\r"	--耐久限制
ITEM_LIMIT_DESC[7] = --[[!AUTO_686]]"^FFFFFF门徒等级：^FFFFFF%d\r"	--门徒等级限制
ITEM_LIMIT_DESC[8] = --[[!AUTO_687]]"^FFFFFF门徒类型：^FFFFFF%s\r"	--门徒性格限制
ITEM_LIMIT_DESC[9] = --[[!AUTO_688]]"^FFFFFF声望需求：^FFFFFF%s%s%s\r" 	--门徒声望限制
ITEM_LIMIT_DESC[10] = --[[!AUTO_689]]"%s%s%s"	--左侧限制等级门派声望限制
ITEM_LIMIT_DESC[11] = --[[!AUTO_690]]"^FFFFFF适用装备等级：%d-%d"   --宝石等级限制
ITEM_LIMIT_DESC[12] = --[[!AUTO_691]]"^FFFFFF类型：%s"	--装备类型
ITEM_LIMIT_DESC[13] = --[[!AUTO_692]]"^FFFFFF%s" -- 基础属性样式

ITEM_LIMIT_DESC[14] = --[[!AUTO_693]]"^1EFF00%s" -- 附加属性样式

--ITEM_LIMIT_DESC[13] = "^FFFFFF【基础】\r%s" -- 基础属性样式

--ITEM_LIMIT_DESC[14] = "^1EFF00【附加】\r%s" -- 附加属性样式

ITEM_LIMIT_DESC[15] = --[[!AUTO_694]]"^FFFFFF生计：%s"	--生产技能

ITEM_LIMIT_DESC[16] = --[[!AUTO_695]]"^FFFFFF堆叠：%s"	--堆叠上限
ITEM_LIMIT_DESC[17] = --[[!AUTO_696]]"^FFFFFF门徒秘笈：%s"	--门徒技能书
ITEM_LIMIT_DESC[18] = --[[!AUTO_697]]"^FFFFFF状态：%s"	--礼物状态

ITEM_LIMIT_DESC[19] = --[[!AUTO_698]]"^FFFFFF使用次数：%s次"	--礼物状态

ITEM_LIMIT_DESC[20] = --[[!AUTO_699]]"^FFFFFF形状：%s"	--宝石形状
ITEM_LIMIT_DESC[21] = --[[!AUTO_700]]"^FFFFFF物品类型：%s"	--物品类型
ITEM_LIMIT_DESC[22] = --[[!AUTO_701]]"^FFFFFF堆叠上限：%s"	--堆叠上限
ITEM_LIMIT_DESC[23] = --[[!AUTO_702]]"^FFFFFF部位：%s"	--部位
ITEM_LIMIT_DESC[24] = --[[!AUTO_703]]"^FFFFFF数量：%s"	--堆叠上限
ITEM_LIMIT_DESC[25] = --[[!AUTO_704]]"%s^FFFFFF【特性】\r%s" -- 特殊效果样式
ITEM_LIMIT_DESC[26] = --[[!AUTO_705]]"^FFFFFF【使用】\r" -- 特殊效果样式
ITEM_LIMIT_DESC[27] = --[[!AUTO_706]]"^FFFFFF冷却：%s\r" -- 特殊效果样式
ITEM_LIMIT_DESC[28] = --[[!AUTO_707]]"^FFFFFF次数：%s%s次\r"	--剩余使用次数
ITEM_LIMIT_DESC[29] = --[[!AUTO_708]]"%s门派：%s"	--门派限制
ITEM_LIMIT_DESC[30] = --[[!AUTO_709]]"性别：%s"	--性别
ITEM_LIMIT_DESC[31] = --[[!AUTO_710]]"特长：%s"	--特长
ITEM_LIMIT_DESC[32] = --[[!AUTO_711]]"升级经验：%d/%d"	--特长
ITEM_LIMIT_DESC[33] = --[[!AUTO_712]]"^FFFFFF品种：%s"	--藏宝阁宝物分类
ITEM_LIMIT_DESC[34] = --[[!AUTO_713]]"^FFFFFF适用：%s"	--藏宝阁地图碎片针对的帮派
ITEM_LIMIT_DESC[35] = --[[!AUTO_714]]"^FFFFFF等级：%s"	--宝石等级
ITEM_LIMIT_DESC[36] = --[[!AUTO_715]]"^FFFFFF门徒出战等级：^FFFFFF%d级"	--门徒携带等级
ITEM_LIMIT_DESC[37] = --[[!AUTO_715]]"^FFFFFF可用暗器：%s"
ITEM_LIMIT_DESC[38] = --[[!AUTO_3221]]"^FFFFFF手法：%s"
ITEM_LIMIT_DESC[39] = "限制等级：%s1~%s"
ITEM_LIMIT_DESC[40] = "^CE58FF%s" -- 注入属性样式 (无时限)
ITEM_LIMIT_DESC[41] = "^CE58FF%s\r　属性时限：%s" -- 注入属性样式 (有时限)
ITEM_LIMIT_DESC[42] = "^FFFFFF装备等级：%s-%s"	--装备等级限制
ITEM_LIMIT_DESC[43] = --[[!AUTO_691]]"^FFFFFF位置：%s"	--卡牌类型
ITEM_LIMIT_DESC[44] = --[[!AUTO_691]]"^FFFFFF履历：%d"	--履历值
ITEM_LIMIT_DESC[45] = --[[!AUTO_691]]"^FFFFFF注灵等级：%d"	--履历值
ITEM_LIMIT_DESC[46] = --[[!AUTO_691]]"^FFFFFF注灵上限：%d"	--履历值
ITEM_LIMIT_DESC[47] = "^FFFF00%s\r　属性时限：%s" -- 附魔属性样式 (有时限)
ITEM_LIMIT_DESC[48] = "^FFFF00%s　永久" -- 附魔属性样式 
ITEM_LIMIT_DESC[49] = "^FFFFFF符文档次：%s" 
ITEM_LIMIT_DESC[50] = "^FFFFFF力道资质 +%s" 
ITEM_LIMIT_DESC[51] = "^FFFFFF内劲资质 +%s" 
ITEM_LIMIT_DESC[52] = "^FFFFFF体魄资质 +%s" 
ITEM_LIMIT_DESC[53] = "^FFFFFF筋骨资质 +%s" 
ITEM_LIMIT_DESC[54] = "^FFFFFF气海资质 +%s" 
ITEM_LIMIT_DESC[55] = "^FFFFFF差事技能" 
ITEM_LIMIT_DESC[56] = "^FFFFFF主人: "
ITEM_LIMIT_DESC[57] = "^FFFFFF经脉："
ITEM_LIMIT_DESC[58] = --[[!AUTO_693]]"^1EFF00%s" -- 经脉属性样式
ITEM_LIMIT_DESC[59] = "^FFFFFF需求：经脉%d重"

--奇经八脉相关描述
ITEM_LIMIT_BAMAI_ALL = "不限"
ITEM_LIMIT_BAMAI_UNKNOW = "不限"

ITEM_LIMIT_BAMAI_DESC = {}
ITEM_LIMIT_BAMAI_DESC[1] = "任脉"
ITEM_LIMIT_BAMAI_DESC[2] = "督脉"
ITEM_LIMIT_BAMAI_DESC[3] = "冲脉"
ITEM_LIMIT_BAMAI_DESC[4] = "带脉"
ITEM_LIMIT_BAMAI_DESC[5] = "阳维"
ITEM_LIMIT_BAMAI_DESC[6] = "阴维"
ITEM_LIMIT_BAMAI_DESC[7] = "阳跷"
ITEM_LIMIT_BAMAI_DESC[8] = "阴跷"

ITEM_LIMIT_SHIELD = "^00BFFF每十分钟获得一个吸收%s伤害的护盾。\r^00ff00吸收值 = 最大生命值X%d%%+%d(八脉十重) \r^ff0000吸收值随八脉重数提升而成长。\r^ff0000护盾不吸收燃烧，中毒造成的伤害。"
--暗器相关描述
ANQI_ESS_DESC = --[[!AUTO_3222]]"【基础属性】"
ANQI_ADDON_DESC = --[[!AUTO_3223]]"【额外属性】^1EFF00"

ANQI_TYPE_DEFAULT = --[[!AUTO_3224]]"未知"
ANQI_TYPE = {}
ANQI_TYPE[1] = --[[!AUTO_3225]]"飞镖"
ANQI_TYPE[2] = --[[!AUTO_3226]]"飞石"
ANQI_TYPE[3] = --[[!AUTO_3227]]"飞刀"
ANQI_TYPE[4] = --[[!AUTO_3228]]"飞针"
ANQI_TYPE[5] = --[[!AUTO_3229]]"飞索"
ANQI_TYPE[6] = --[[!AUTO_3230]]"机关"

ITEM_LIMIT_FACTION_MISC = --[[!AUTO_716]]""
ITEM_LIMIT_FACTION_CHOSEN = --[[!AUTO_717]]"已入门派"
ITEM_LIMIT_FACTION_ALL = --[[!AUTO_718]]"不限"
--ITEM_LIMIT_FACTION_UNKNOW = "未知"
ITEM_LIMIT_FACTION_UNKNOW = --[[!AUTO_719]]"不限"

ITEM_LIMIT_FACTION_DESC = {}
ITEM_LIMIT_FACTION_DESC[1] = --[[!AUTO_720]]"新手"
ITEM_LIMIT_FACTION_DESC[2] = --[[!AUTO_721]]"少林"
ITEM_LIMIT_FACTION_DESC[3] = --[[!AUTO_722]]"武当"
ITEM_LIMIT_FACTION_DESC[4] = --[[!AUTO_723]]"华山"
ITEM_LIMIT_FACTION_DESC[5] = --[[!AUTO_724]]"恒山"
ITEM_LIMIT_FACTION_DESC[6] = --[[!AUTO_725]]"衡山"
ITEM_LIMIT_FACTION_DESC[7] = --[[!AUTO_726]]"日月"
ITEM_LIMIT_FACTION_DESC[8] = --[[!AUTO_727]]"五仙"
ITEM_LIMIT_FACTION_DESC[9] = --[[!AUTO_728]]"逍遥"
ITEM_LIMIT_FACTION_DESC[10] = --[[!AUTO_729]]"唐门"
ITEM_LIMIT_FACTION_DESC[11] = --[[!AUTO_730]]"峨嵋"
ITEM_LIMIT_FACTION_DESC[12] = --[[!AUTO_730]]"独孤"
ITEM_LIMIT_FACTION_DESC[13] = --[[!AUTO_730]]"玲珑"
ITEM_LIMIT_FACTION_DESC[14] = --[[!AUTO_730]]"东华"

ITEM_LIMIT_SEX = {}
ITEM_LIMIT_SEX[1] = --[[!AUTO_731]]"（男）"
ITEM_LIMIT_SEX[2] = --[[!AUTO_732]]"（女）"
ITEM_LIMIT_SEX[3] = --[[!AUTO_733]]""
ITEM_LIMIT_SEX[4] = --[[!AUTO_734]]"男"
ITEM_LIMIT_SEX[5] = --[[!AUTO_735]]"女"

-- 物品数量显示格式
ITEM_COUNT_DESC = {}
ITEM_COUNT_DESC[1] = --[[!AUTO_736]]"(%d)"	--半角括号计数显示

-- 物品绑定状态显示格式

ITEM_BOUND_DESC = {}
ITEM_BOUND_DESC[1] = --[[!AUTO_737]]"已锁定"
ITEM_BOUND_DESC[2] = --[[!AUTO_738]]"已绑定"
ITEM_BOUND_DESC[3] = --[[!AUTO_739]]"装备后绑定"
ITEM_BOUND_DESC[4] = --[[!AUTO_740]]"拾取后绑定"
ITEM_BOUND_DESC[5] = --[[!AUTO_741]]"区域内绑定"
ITEM_BOUND_DESC[6] = --[[!AUTO_742]]"（限定）"

-- 物品时间显示格式
ITEM_TIME_DESC = {}
ITEM_TIME_DESC[1] = --[[!AUTO_743]]"^FFFFFF道具时限："
ITEM_TIME_DESC[2] = --[[!AUTO_744]]"%d天"
ITEM_TIME_DESC[3] = --[[!AUTO_745]]"%d小时"
ITEM_TIME_DESC[4] = --[[!AUTO_746]]"%d分"
ITEM_TIME_DESC[5] = --[[!AUTO_747]]"%d秒"
ITEM_TIME_DESC[6] = --[[!AUTO_748]]"^FFFFFF%d天"
ITEM_TIME_DESC[7] = --[[!AUTO_749]]"^FFD200不足1天"
ITEM_TIME_DESC[8] = --[[!AUTO_750]]"^FFD200约%d分钟"
ITEM_TIME_DESC[9] = --[[!AUTO_751]]"^FF0000不足1分钟"

-- 物品价格显示格式
ITEM_PRICE_FAME_STYLE = --[[!AUTO_752]]"%d 点 %s"
ITEM_PRICE_ITEM_STYLE = --[[!AUTO_753]]"%d × %s"

ITEM_PRICE_UNIT_DESC = --[[!AUTO_754]]"%02d"	--两位数，不足补0

ITEM_PRICE_UNIT_LOW = 100
ITEM_PRICE_UNIT_MID = 10000
ITEM_PRICE_UNIT_HIGH = 1000000

ITEM_PRICE_UNIT_DESC_MAX = --[[!AUTO_755]]"%d"

ITEM_PRICE_UNIT_DESC_BASE = --[[!AUTO_756]]"%02d"
ITEM_PRICE_UNIT_DESC_LOW = --[[!AUTO_757]]"%02d"
ITEM_PRICE_UNIT_DESC_MID = --[[!AUTO_758]]"%02d"
ITEM_PRICE_UNIT_DESC_HIGH = --[[!AUTO_759]]"%d"

ITEM_PRICE_MONEY_TEXT = --[[!AUTO_760]]"^FFFFFF购买单价"
ITEM_PRICE_FAME_TEXT = --[[!AUTO_761]]"^FFFFFF声望需求"
ITEM_PRICE_ITEM_TEXT = --[[!AUTO_762]]"^FFFFFF交换物品"

ITEM_PRICE_SELL_TEXT = --[[!AUTO_763]]"^FFFFFF出售单价"
ITEM_PRICE_ITEM_SELL_TEXT = --[[!AUTO_764]]"^FFFFFF出售获得"

ITEM_PRICE_COLLECT = --[[!AUTO_765]]"^FFFFFF收购单价"

ITEM_PRICE_REPAIR_NEED = --[[!AUTO_766]]"^FFFFFF修理价格"
ITEM_PRICE_REPAIR_NONEED = --[[!AUTO_767]]"^FFFFFF装备耐久为满，不需要修理"
ITEM_PRICE_REPAIR_NOEDUR = --[[!AUTO_768]]"^FFFFFF装备没有耐久限制，不需要修理"
ITEM_PRICE_REPAIR_NOTEQUIP = --[[!AUTO_769]]"^FFFFFF只能对装备进行修理"

ITEM_PRICE_CANT_SELL = --[[!AUTO_770]]"^FFFFFF此物品无法出售"


--物品生产相关描述
ITEM_PRODUCER_NAME = --[[!AUTO_771]]"「出自%s%s^FFFFFF之手」"

-- 交通工具属性显示
VEHICLE_MOUNT_LIMIT_TEXT = --[[!AUTO_772]]"可以乘载单位上限：%d"

VEHICLE_MOUNT_FASTRUNSPEED_YES_TEXT = --[[!AUTO_773]]"\r可以进行神行"
VEHICLE_MOUNT_FASTRUNSPEED_NO_TEXT = --[[!AUTO_774]]"\r无法进行神行"

VEHICLE_MOUNT_INCOMBAT_YES_TEXT = --[[!AUTO_775]]"\r可以在战斗中使用"
VEHICLE_MOUNT_INCOMBAT_NO_TEXT = --[[!AUTO_776]]"\r无法在战斗中使用"

VEHICLE_MOUNT_PROP_COLOR = --[[!AUTO_777]]"^6ab3ff"

VEHICLE_MOUNT_WALKSPEED_TEXT = --[[!AUTO_778]]"行走速度：%.1f 米/秒"
VEHICLE_MOUNT_RUNSPEED_TEXT = --[[!AUTO_779]]"\r奔跑速度：%.1f 米/秒"
VEHICLE_MOUNT_FASTRUNSPEED_TEXT = --[[!AUTO_780]]"\r神行速度：%.1f 米/秒"

-- 时间显示格式
TIME_TEXT_STYLE_BASE = --[[!AUTO_781]]"%d.%d.%d"
TIME_TEXT_STYLE = {}
TIME_TEXT_STYLE[1] = --[[!AUTO_782]]"^FFFFFF%d^FFFFFF年^FFFFFF%d^FFFFFF月^FFFFFF%d^FFFFFF日"
TIME_TEXT_STYLE[2] = --[[!AUTO_783]]"^FFFFFF%d^FFFFFF年^FFFFFF%d^FFFFFF月^FFFFFF%d^FFFFFF日^FFFFFF%d^FFFFFF时^FFFFFF%d^FFFFFF分"

-- 商城显示格式
MALL_SPECIAL_TEXT = --[[!AUTO_784]]"^d7c4a2商城道具专有属性"
MALL_SELL_END_TIME_TEXT = --[[!AUTO_785]]"%s\r^ffffff下架时间：%s"
MALL_TIME_LIMIT_TEXT = --[[!AUTO_786]]"%s\r^ffffff%s"
MALL_GIFT_TEXT = --[[!AUTO_787]]"%s\r^ffffff购买赠品：%s ^ffffff× %d"

-- 表情包显示格式
EMOTION_ITEM_TIME_TEXT = --[[!AUTO_788]]"^ffffff使用总%s\r^9287FF（道具时限从装备后开始计时）"

-- 宝石生成包
STONE_GENERATE_TIME_TEXT = --[[!AUTO_789]]"^ffffff右键打开后获得：%s^ffffff × %d%s"
BAOWUSUIPIAN_TIME_TEXT = --[[!AUTO_789]]"^ffffff集齐%s个碎片后，右键合成可获得：%s^ffffff（绑定 使用期限：30天） × %d"
XUEFUSUIPIAN_ITEM_TEXT = "^ffffff集齐%s个碎片后，右键合成可获得：%s^ffffff × %d"

STONE_GENERATE_BUFF_TEXT = {}
STONE_GENERATE_BUFF_TEXT[0] = --[[!AUTO_790]]""
STONE_GENERATE_BUFF_TEXT[8905] = --[[!AUTO_791]]"\r^9287FF使用后会获得祝福效果"
STONE_GENERATE_BUFF_TEXT[9129] = --[[!AUTO_792]]"\r^9287FF使用后会获得少量祝福效果"
STONE_GENERATE_BUFF_TEXT[9130] = --[[!AUTO_793]]"\r^9287FF使用后会获得中量祝福效果"
STONE_GENERATE_BUFF_TEXT[9131] = --[[!AUTO_794]]"\r^9287FF使用后会获得大量祝福效果"
STONE_GENERATE_BUFF_TEXT_DEFAULT = --[[!AUTO_795]]"\r^FFFFFF未配置的使用效果"

STONE_GENERATE_STONE_DESC_STYLE = --[[!AUTO_796]]"^d7c4a2『%s^ffffff』镶嵌属性：^ffffff\r%s"

STONE_GENERATE_DYE_TEXT = --[[!AUTO_797]]"^ffffff右键打开后获得：\r^00ff00精良染色剂^ffffff、^3485ff优质染色剂^ffffff之一"
STONE_GENERATE_DYE_LIST_TEXT = --[[!AUTO_798]]""
--STONE_GENERATE_DYE_LIST_TEXT = "^d7c4a2绣染袋可能开出的道具：\r^00ff00·精良染色剂－－\r^d500bc暗紫色　^0025d5宝蓝色　^00ebff碧蓝色　^ffff01淡黄色\r^00ff01油绿色　^0094ff海蓝色　^ff00ff粉红色　^5d00ff靛蓝色\r^d0ff01苹果色　^ffbc01芒果色　^540024深棕色　^010028深黑色\r^021f6f深蓝色　^9bad01葱绿色　^017800军绿色　^00ad7f青碧色\r^bf009b紫薯色　^000094青蓝色　^1cc001果绿色　^c17d00驼绒色\r^661b5e葡萄色　^87d9ff石青色　^c9ffff蔚蓝色　^ffd591淡橙色\r^baffa2银杏色　^a0e1ff湖蓝色　^ffd4ff淡粉色　^d7ffff亮青色\r^777745橄榄色　^feffd5乳白色　^ff7dad桃红色　^ff8fff亮紫色\r^3485ff·优质染色剂（稀有）－－\r^ff0000红宝石　^e57c00琥珀金　^ffffff纯白　　^000000纯黑　\r^573c41紫檀　\r^331618紫檀　^f238ca贵妃红　^74fac7瑠璃　　^3c47ef蓝宝石\r^bde0fe天蓝　　^f0f0bc樱草　　^ff98bb芙蓉　　^7b0e0b巧克力\r^46007f紫棠　　^437b00竹叶青　^3b1c60暗夜紫　^ff5794玫瑰粉\r^ffff19柠檬黄　^ff5a00橘子红　^ab77f3紫丁香　^9bd72a猫眼绿\r^bcd9f7浪花白　^5563a0天青石　^bcbcbc纯灰　　^6eb3ff海蓝石\r^69cbf8月光石　^c56fc6紫薇花　^c26675海棠粉　^58415e黛青　\r^ffba90珊瑚　　^8df1ef浅海蓝　^fdbcda藕荷粉　^6d3983紫罗兰"
-- 染色相关
DYE_TYPE_TEXT = --[[!AUTO_799]]"^ffffff类型：绣染袋"
DYE_TEXT = --[[!AUTO_800]]"^ffffff染色剂效果："

DYE_COLOR_STYLE_ONLIST = --[[!AUTO_801]]"%s■■■^ffffff（%s）"
DYE_COLOR_STYLE_NOTONLIST = --[[!AUTO_802]]"%s■■■"

DYE_COLOR_LIST = {}
DYE_COLOR_LIST[4294901760] = {name = --[[!AUTO_803]]"红宝石", rank = 2 , fashion_hair_color = 6684672}
DYE_COLOR_LIST[4293229568] = {name = --[[!AUTO_804]]"琥珀金", rank = 2 , fashion_hair_color = 7552256}
DYE_COLOR_LIST[4294967295] = {name = --[[!AUTO_805]]"纯白", rank = 2 , fashion_hair_color = 7243668}
DYE_COLOR_LIST[4278190080] = {name = --[[!AUTO_806]]"纯黑", rank = 2 , fashion_hair_color = 0}
DYE_COLOR_LIST[4283907137] = {name = --[[!AUTO_807]]"紫檀", rank = 2 , fashion_hair_color = 3347992}
DYE_COLOR_LIST[4281538072] = {name = "紫檀"}
DYE_COLOR_LIST[4294064330] = {name = --[[!AUTO_808]]"贵妃红", rank = 2 , fashion_hair_color = 7871588}
DYE_COLOR_LIST[4285856455] = {name = --[[!AUTO_809]]"琉璃", rank = 2 , fashion_hair_color = 3767651}
DYE_COLOR_LIST[4282140655] = {name = --[[!AUTO_810]]"蓝宝石", rank = 2 , fashion_hair_color = 6003}
DYE_COLOR_LIST[4290633982] = {name = --[[!AUTO_811]]"天蓝", rank = 2 , fashion_hair_color = 2906769}
DYE_COLOR_LIST[4293980348] = {name = --[[!AUTO_812]]"樱草", rank = 2 , fashion_hair_color = 8421472}
DYE_COLOR_LIST[4294940859] = {name = --[[!AUTO_813]]"芙蓉", rank = 2 , fashion_hair_color = 8408414}
DYE_COLOR_LIST[4286254603] = {name = --[[!AUTO_814]]"巧克力", rank = 2 , fashion_hair_color = 3999494}
DYE_COLOR_LIST[4282777727] = {name = --[[!AUTO_815]]"紫棠", rank = 2 , fashion_hair_color = 2293824}
DYE_COLOR_LIST[4282612480] = {name = --[[!AUTO_816]]"竹叶青", rank = 2 , fashion_hair_color = 2243840}
DYE_COLOR_LIST[4282063968] = {name = --[[!AUTO_817]]"暗夜紫", rank = 2 , fashion_hair_color = 1969712}
DYE_COLOR_LIST[4294924180] = {name = --[[!AUTO_818]]"玫瑰粉", rank = 2 , fashion_hair_color = 8399690}
DYE_COLOR_LIST[4294967065] = {name = --[[!AUTO_819]]"柠檬黄", rank = 2 , fashion_hair_color = 9208832}
DYE_COLOR_LIST[4294924800] = {name = --[[!AUTO_820]]"橘子红", rank = 2 , fashion_hair_color = 8400128}
DYE_COLOR_LIST[4289427443] = {name = --[[!AUTO_821]]"紫丁香", rank = 2 , fashion_hair_color = 5388661}
DYE_COLOR_LIST[4288403242] = {name = --[[!AUTO_822]]"猫眼绿", rank = 2 , fashion_hair_color = 5073685}
DYE_COLOR_LIST[4290566647] = {name = --[[!AUTO_823]]"浪花白", rank = 2 , fashion_hair_color = 6649221}
DYE_COLOR_LIST[4283786144] = {name = --[[!AUTO_824]]"天青石", rank = 2 , fashion_hair_color = 2765135}
DYE_COLOR_LIST[4290559164] = {name = --[[!AUTO_825]]"纯灰", rank = 2 , fashion_hair_color = 5923950}
DYE_COLOR_LIST[4285445119] = {name = --[[!AUTO_826]]"海蓝石", rank = 2 , fashion_hair_color = 1717890}
DYE_COLOR_LIST[4285123576] = {name = --[[!AUTO_827]]"月光石", rank = 2 , fashion_hair_color = 3370362}
DYE_COLOR_LIST[4291129286] = {name = --[[!AUTO_828]]"紫薇花", rank = 2 , fashion_hair_color = 6502499}
DYE_COLOR_LIST[4290930293] = {name = --[[!AUTO_829]]"海棠粉", rank = 2 , fashion_hair_color = 6370107}
DYE_COLOR_LIST[4283973982] = {name = --[[!AUTO_830]]"黛青", rank = 2 , fashion_hair_color = 2957616}
DYE_COLOR_LIST[4294949520] = {name = --[[!AUTO_831]]"珊瑚", rank = 2 , fashion_hair_color = 8412487}
DYE_COLOR_LIST[4287492591] = {name = --[[!AUTO_832]]"浅海蓝", rank = 2 , fashion_hair_color = 4552052}
DYE_COLOR_LIST[4294819034] = {name = --[[!AUTO_833]]"藕荷粉", rank = 2 , fashion_hair_color = 8215660}
DYE_COLOR_LIST[4285348227] = {name = --[[!AUTO_834]]"紫罗兰", rank = 2 , fashion_hair_color = 3480640}
DYE_COLOR_LIST[4292149436] = {name = --[[!AUTO_835]]"暗紫色", rank = 1 , fashion_hair_color = 7012447}
DYE_COLOR_LIST[4278199765] = {name = --[[!AUTO_836]]"宝蓝色", rank = 1 , fashion_hair_color = 4715}
DYE_COLOR_LIST[4278250495] = {name = --[[!AUTO_837]]"碧蓝色", rank = 1 , fashion_hair_color = 30080}
DYE_COLOR_LIST[4294967041] = {name = --[[!AUTO_838]]"淡黄色", rank = 1 , fashion_hair_color = 9075484}
DYE_COLOR_LIST[4278255361] = {name = --[[!AUTO_839]]"油绿色", rank = 1 , fashion_hair_color = 32768}
DYE_COLOR_LIST[4278228223] = {name = --[[!AUTO_840]]"海蓝色", rank = 1 , fashion_hair_color = 19072}
DYE_COLOR_LIST[4294902015] = {name = --[[!AUTO_841]]"粉红色", rank = 1 , fashion_hair_color = 8388736}
DYE_COLOR_LIST[4284285183] = {name = --[[!AUTO_842]]"靛蓝色", rank = 1 , fashion_hair_color = 3080320}
DYE_COLOR_LIST[4291886849] = {name = --[[!AUTO_843]]"苹果色", rank = 1 , fashion_hair_color = 6848513}
DYE_COLOR_LIST[4294949889] = {name = --[[!AUTO_844]]"芒果色", rank = 1 , fashion_hair_color = 8412673}
DYE_COLOR_LIST[4283695140] = {name = --[[!AUTO_845]]"深棕色", rank = 1 , fashion_hair_color = 2686994}
DYE_COLOR_LIST[4278255656] = {name = --[[!AUTO_846]]"深黑色", rank = 1 , fashion_hair_color = 1315090}
DYE_COLOR_LIST[4278329199] = {name = --[[!AUTO_847]]"深蓝色", rank = 1 , fashion_hair_color = 69688}
DYE_COLOR_LIST[4288392449] = {name = --[[!AUTO_848]]"葱绿色", rank = 1 , fashion_hair_color = 5134081}
DYE_COLOR_LIST[4278286336] = {name = --[[!AUTO_849]]"军绿色", rank = 1 , fashion_hair_color = 1125888}
DYE_COLOR_LIST[4278234495] = {name = --[[!AUTO_850]]"青碧色", rank = 1 , fashion_hair_color = 22336}
DYE_COLOR_LIST[4290707611] = {name = --[[!AUTO_851]]"紫薯色", rank = 1 , fashion_hair_color = 6160461}
DYE_COLOR_LIST[4278190228] = {name = --[[!AUTO_852]]"青蓝色", rank = 1 , fashion_hair_color = 74}
DYE_COLOR_LIST[4280074241] = {name = --[[!AUTO_853]]"果绿色", rank = 1 , fashion_hair_color = 876033}
DYE_COLOR_LIST[4290870528] = {name = --[[!AUTO_854]]"驼绒色", rank = 1 , fashion_hair_color = 6373120}
DYE_COLOR_LIST[4284881758] = {name = --[[!AUTO_855]]"葡萄色", rank = 1 , fashion_hair_color = 3345711}
DYE_COLOR_LIST[4287093247] = {name = --[[!AUTO_856]]"石青色", rank = 1 , fashion_hair_color = 3366528}
DYE_COLOR_LIST[4291428351] = {name = --[[!AUTO_857]]"蔚蓝色", rank = 1 , fashion_hair_color = 3702156}
DYE_COLOR_LIST[4294956433] = {name = --[[!AUTO_858]]"淡橙色", rank = 1 , fashion_hair_color = 8415817}
DYE_COLOR_LIST[4290445218] = {name = --[[!AUTO_859]]"银杏色", rank = 1 , fashion_hair_color = 6127698}
DYE_COLOR_LIST[4288733695] = {name = --[[!AUTO_860]]"湖蓝色", rank = 1 , fashion_hair_color = 1270144}
DYE_COLOR_LIST[4294956287] = {name = --[[!AUTO_861]]"淡粉色", rank = 1 , fashion_hair_color = 8415872}
DYE_COLOR_LIST[4292345855] = {name = --[[!AUTO_862]]"亮青色", rank = 1 , fashion_hair_color = 7045248}
DYE_COLOR_LIST[4286019397] = {name = --[[!AUTO_863]]"橄榄色", rank = 1 , fashion_hair_color = 5526577}
DYE_COLOR_LIST[4294901717] = {name = --[[!AUTO_864]]"乳白色", rank = 1 , fashion_hair_color = 8355958}
DYE_COLOR_LIST[4294933933] = {name = --[[!AUTO_865]]"桃红色", rank = 1 , fashion_hair_color = 8404566}
DYE_COLOR_LIST[4294938623] = {name = --[[!AUTO_866]]"亮紫色", rank = 1 , fashion_hair_color = 8406912}
DYE_COLOR_LIST[4292203989] = {name = --[[!AUTO_867]]"白茶", rank = 1 , fashion_hair_color = 7039851}
DYE_COLOR_LIST[4285975730] = {name = --[[!AUTO_868]]"青绿", rank = 1 , fashion_hair_color = 0}
DYE_COLOR_LIST[4283652435] = {name = --[[!AUTO_869]]"青钝", rank = 1 , fashion_hair_color = 2632488}
DYE_COLOR_LIST[4279182656] = {name = --[[!AUTO_870]]"花青", rank = 1 , fashion_hair_color = 463391}
DYE_COLOR_LIST[4289765322] = {name = --[[!AUTO_871]]"浅绛", rank = 1 , fashion_hair_color = 5853542}
DYE_COLOR_LIST[4287584828] = {name = --[[!AUTO_872]]"赭石", rank = 1 , fashion_hair_color = 5058592}
DYE_COLOR_LIST[4294901737] = {name = --[[!AUTO_873]]"牙白", rank = 1 , fashion_hair_color = 8355956}
DYE_COLOR_LIST[4290865468] = {name = --[[!AUTO_874]]"黄桦", rank = 1 , fashion_hair_color = 6698784}
DYE_COLOR_LIST[4283651494] = {name = --[[!AUTO_875]]"藕荷紫", rank = 1 , fashion_hair_color = 0}
DYE_COLOR_LIST[4292655225] = {name = --[[!AUTO_876]]"乌金", rank = 1 , fashion_hair_color = 0}
DYE_COLOR_LIST[4283902527] = {name = --[[!AUTO_877]]"茄子绀", rank = 1 , fashion_hair_color = 2823455}
DYE_COLOR_LIST[4282329910] = {name = --[[!AUTO_878]]"黑红", rank = 1 , fashion_hair_color = 2037018}
DYE_COLOR_LIST[4283842350] = {name = --[[!AUTO_879]]"焦茶", rank = 1 , fashion_hair_color = 2826263}
DYE_COLOR_LIST[4292594687] = {name = --[[!AUTO_880]]"浣竹纱", rank = 1 , fashion_hair_color = 7235200}
DYE_COLOR_LIST[4286292543] = {name = --[[!AUTO_881]]"柳黄", rank = 1 , fashion_hair_color = 0}
DYE_COLOR_LIST[4294959071] = {name = --[[!AUTO_882]]"晶粉", rank = 1 , fashion_hair_color = 8417135}
DYE_COLOR_LIST[4293525481] = {name = --[[!AUTO_883]]"素白", rank = 1 , fashion_hair_color = 7635060}
DYE_COLOR_LIST[4291825740] = {name = --[[!AUTO_884]]"芍药", rank = 1 , fashion_hair_color = 6883367}
DYE_COLOR_LIST[4289044561] = {name = --[[!AUTO_885]]"鶸茶", rank = 1 , fashion_hair_color = 0}
DYE_COLOR_LIST[4294016103] = {name = --[[!AUTO_886]]"酡颜", rank = 1 , fashion_hair_color = 8011573}
DYE_COLOR_LIST[4278720813] = {name = --[[!AUTO_887]]"褐", rank = 1 , fashion_hair_color = 0}
DYE_COLOR_LIST[4282540077] = {name = --[[!AUTO_888]]"松绿", rank = 1 , fashion_hair_color = 0}
DYE_COLOR_LIST[4282134337] = {name = --[[!AUTO_889]]"紫绀", rank = 1 , fashion_hair_color = 0}
DYE_COLOR_LIST[4278995010] = {name = --[[!AUTO_890]]"御纳户", rank = 1 , fashion_hair_color = 402465}
DYE_COLOR_LIST[4291510338] = {name = --[[!AUTO_891]]"朱砂", rank = 1 , fashion_hair_color = 6693154}
DYE_COLOR_LIST[4294955533] = {name = --[[!AUTO_892]]"鹅黄", rank = 1 , fashion_hair_color = 8415494}
DYE_COLOR_LIST[4291694886] = {name = --[[!AUTO_892]]"国旗红", rank = 1 , fashion_hair_color = 0}
DYE_COLOR_LIST[4290514690] = {name = --[[!AUTO_892]]"中国红", rank = 1 , fashion_hair_color = 6164226}


--时装相关
FASHIONEQUIP_SUBTYPE_LIST =
{
"时装衣服",
"时装头饰",
"测试时装",
"时装配饰",
"时装披风",
"时装发饰",
}

FASHIONEQUIP_SUBTYPE = {}
for k, v in pairs(FASHIONEQUIP_SUBTYPE_LIST) do
	FASHIONEQUIP_SUBTYPE[v] = true
end

FASHIONEQUIP_CAN_DYEING_TEXT = --[[!AUTO_867]]"^FFFFFF时装类型：^9287FF可定制时装"
FASHIONEQUIP_CAN_CUSTOMIZEIMG_TEXT = --[[!AUTO_3231]]"、可印标志"
FASHIONEQUIP_CAN_DIYTEX_TEXT = "、可刺绣"
FASHIONEQUIP_CANT_DYEING_TEXT = --[[!AUTO_868]]"^FFFFFF时装类型：^FFFFFF固定款时装"

FASHIONEQUIP_COLOR_TEXT_TOTAL = "时装颜色："
FASHIONEQUIP_COLOR_TEXT = --[[!AUTO_869]]"^ffffff『%s』："
FASHIONEQUIP_COLOR_TEXT_ORIGIN = --[[!AUTO_870]]"^ffffff『%s』：初始"
FASHIONEQUIP_COLOR_TEXT_RANDOM = --[[!AUTO_871]]"^ffffff『%s』：获得时生成"

FASHIONEQUIP_CUSTOMIZEIMG_TEXT_TOTAL = "印染标志："
FASHIONEQUIP_CUSTOMIZEIMG_TEXT_1 = --[[!AUTO_3232]]"\r^ffffff默认标志：%s"
FASHIONEQUIP_CUSTOMIZEIMG_TEXT_2 = --[[!AUTO_3233]]"\r^ffffff当前标志：%s"

FASHIONEQUIP_DIYTEX_TEXT_TOTAL = "刺绣图案："
FASHIONEQUIP_DIYTEX_TEXT = "^ffffff『%s』：%s（%s）"
FASHIONEQUIP_DIYTEX_TEXT_ORIGIN = "^ffffff『%s』：初始 %s"
FASHIONEQUIP_DIYTEX_COLOR_PREFIX = "        ^ffffff颜色 "
FASHIONEQUIP_DIYTEX_INITTEX_NONE = "无"

FASHIONEQUIP_RANDOM_STRING = "获得时生成"

-----------------------------------------
-- 装备印染标志的名称
FASHIONEQUIP_CUSTOMIZEIMG_TEXT_DEFAULT = --[[!AUTO_3234]]"未知"
FASHIONEQUIP_CUSTOMIZEIMG_TEXT = {}
FASHIONEQUIP_CUSTOMIZEIMG_TEXT[1] = --[[!AUTO_3235]]"空白"
FASHIONEQUIP_CUSTOMIZEIMG_TEXT[2] = --[[!AUTO_3236]]"出水芙蓉"
FASHIONEQUIP_CUSTOMIZEIMG_TEXT[3] = --[[!AUTO_3237]]"祥云共生"
FASHIONEQUIP_CUSTOMIZEIMG_TEXT[4] = --[[!AUTO_3238]]"龙之头"
FASHIONEQUIP_CUSTOMIZEIMG_TEXT[5] = --[[!AUTO_3239]]"风之翼"
FASHIONEQUIP_CUSTOMIZEIMG_TEXT[6] = --[[!AUTO_3240]]"熊之怒"
FASHIONEQUIP_CUSTOMIZEIMG_TEXT[7] = --[[!AUTO_3241]]"灵蝶"
FASHIONEQUIP_CUSTOMIZEIMG_TEXT[8] = --[[!AUTO_3242]]"灵剑"
FASHIONEQUIP_CUSTOMIZEIMG_TEXT[9] = --[[!AUTO_3243]]"正义之斧"
FASHIONEQUIP_CUSTOMIZEIMG_TEXT[10] = --[[!AUTO_3244]]"面具"
FASHIONEQUIP_CUSTOMIZEIMG_TEXT[11] = --[[!AUTO_3245]]"蔷薇"
FASHIONEQUIP_CUSTOMIZEIMG_TEXT[12] = --[[!AUTO_3246]]"白虎"
FASHIONEQUIP_CUSTOMIZEIMG_TEXT[13] = --[[!AUTO_3247]]"蝎虎"
FASHIONEQUIP_CUSTOMIZEIMG_TEXT[14] = --[[!AUTO_3248]]"麒麟之首"
FASHIONEQUIP_CUSTOMIZEIMG_TEXT[15] = --[[!AUTO_3249]]"有凤来仪"
FASHIONEQUIP_CUSTOMIZEIMG_TEXT[16] = --[[!AUTO_3250]]"呦呦鹿鸣"
FASHIONEQUIP_CUSTOMIZEIMG_TEXT[17] = --[[!AUTO_3251]]"牡丹"
FASHIONEQUIP_CUSTOMIZEIMG_TEXT[18] = --[[!AUTO_3252]]"狼"
FASHIONEQUIP_CUSTOMIZEIMG_TEXT[19] = --[[!AUTO_3253]]"四象青龙"
FASHIONEQUIP_CUSTOMIZEIMG_TEXT[20] = --[[!AUTO_3254]]"恶兽"
FASHIONEQUIP_CUSTOMIZEIMG_TEXT[21] = --[[!AUTO_3255]]"太极焰"
FASHIONEQUIP_CUSTOMIZEIMG_TEXT[22] = --[[!AUTO_3256]]"祥龙升天"
FASHIONEQUIP_CUSTOMIZEIMG_TEXT[23] = --[[!AUTO_3257]]"彩蝶"
FASHIONEQUIP_CUSTOMIZEIMG_TEXT[24] = --[[!AUTO_3258]]"飞龙"
FASHIONEQUIP_CUSTOMIZEIMG_TEXT[25] = --[[!AUTO_3259]]"雄鹰之眼"
FASHIONEQUIP_CUSTOMIZEIMG_TEXT[26] = --[[!AUTO_3260]]"菩提莲花"
FASHIONEQUIP_CUSTOMIZEIMG_TEXT[27] = --[[!AUTO_3261]]"怒焰"
FASHIONEQUIP_CUSTOMIZEIMG_TEXT[28] = --[[!AUTO_3262]]"死神"
FASHIONEQUIP_CUSTOMIZEIMG_TEXT[29] = --[[!AUTO_3263]]"圣火"
FASHIONEQUIP_CUSTOMIZEIMG_TEXT[30] = --[[!AUTO_3264]]"狮"
FASHIONEQUIP_CUSTOMIZEIMG_TEXT[31] = --[[!AUTO_3265]]"百鸟朝凤"
FASHIONEQUIP_CUSTOMIZEIMG_TEXT[32] = --[[!AUTO_3266]]"邪恶之龙"

-----------------------------------------
-- 装备刺绣图案的名称
FASHIONEQUIP_DIYTEX_ICON_TEXT = {}
FASHIONEQUIP_DIYTEX_ICON_TEXT[1] = --[[!AUTO_3235]]"空白"
FASHIONEQUIP_DIYTEX_ICON_TEXT[2] = --[[!AUTO_3236]]"细纹格"
FASHIONEQUIP_DIYTEX_ICON_TEXT[3] = --[[!AUTO_3237]]"金钱扣"
FASHIONEQUIP_DIYTEX_ICON_TEXT[4] = --[[!AUTO_3238]]"棋盘格"
FASHIONEQUIP_DIYTEX_ICON_TEXT[5] = --[[!AUTO_3239]]"八宝锦"
FASHIONEQUIP_DIYTEX_ICON_TEXT[6] = --[[!AUTO_3240]]"满月星"
FASHIONEQUIP_DIYTEX_ICON_TEXT[7] = --[[!AUTO_3241]]"重环纹"
FASHIONEQUIP_DIYTEX_ICON_TEXT[8] = --[[!AUTO_3242]]"瑞锦纹"
FASHIONEQUIP_DIYTEX_ICON_TEXT[9] = --[[!AUTO_3243]]"斑马纹"
FASHIONEQUIP_DIYTEX_ICON_TEXT[10] = --[[!AUTO_3245]]"樱花络"
FASHIONEQUIP_DIYTEX_ICON_TEXT[11] = --[[!AUTO_3246]]"宝相花"
FASHIONEQUIP_DIYTEX_ICON_TEXT[12] = --[[!AUTO_3247]]"福鹿纹"
FASHIONEQUIP_DIYTEX_ICON_TEXT[13] = --[[!AUTO_3253]]"怜星纹"
FASHIONEQUIP_DIYTEX_ICON_TEXT[14] = --[[!AUTO_3254]]"连锦纹"
FASHIONEQUIP_DIYTEX_ICON_TEXT[15] = --[[!AUTO_3254]]"正横纹"
FASHIONEQUIP_DIYTEX_ICON_TEXT[16] = --[[!AUTO_3254]]"博古纹"
FASHIONEQUIP_DIYTEX_ICON_TEXT[17] = --[[!AUTO_3254]]"骨斑纹"
FASHIONEQUIP_DIYTEX_ICON_TEXT[18] = --[[!AUTO_3254]]"镜花月"
FASHIONEQUIP_DIYTEX_ICON_TEXT[19] = --[[!AUTO_3254]]"豹皮纹"
FASHIONEQUIP_DIYTEX_ICON_TEXT[20] = --[[!AUTO_3254]]"福寿纹"
FASHIONEQUIP_DIYTEX_ICON_TEXT[21] = --[[!AUTO_3254]]"围棋格"
FASHIONEQUIP_DIYTEX_ICON_TEXT[22] = --[[!AUTO_3254]]"宝叶纹"
FASHIONEQUIP_DIYTEX_ICON_TEXT[23] = --[[!AUTO_3254]]"灯笼纹"
FASHIONEQUIP_DIYTEX_ICON_TEXT[24] = --[[!AUTO_3254]]"方古纹"
FASHIONEQUIP_DIYTEX_ICON_TEXT[25] = --[[!AUTO_3254]]"回角纹"
FASHIONEQUIP_DIYTEX_ICON_TEXT[26] = --[[!AUTO_3254]]"蟒番纹"
FASHIONEQUIP_DIYTEX_ICON_TEXT[27] = --[[!AUTO_3254]]"方胜纹"
FASHIONEQUIP_DIYTEX_ICON_TEXT[28] = --[[!AUTO_3254]]"灯景纹"
FASHIONEQUIP_DIYTEX_ICON_TEXT[29] = --[[!AUTO_3254]]"并蒂纹"
FASHIONEQUIP_DIYTEX_ICON_TEXT[30] = --[[!AUTO_3254]]"跃龙门"
FASHIONEQUIP_DIYTEX_ICON_TEXT[31] = --[[!AUTO_3254]]"胡姬格"
FASHIONEQUIP_DIYTEX_ICON_TEXT[32] = --[[!AUTO_3254]]"双心扣"
FASHIONEQUIP_DIYTEX_ICON_TEXT[33] = --[[!AUTO_3254]]"竹绦锦"
FASHIONEQUIP_DIYTEX_ICON_TEXT[34] = --[[!AUTO_3254]]"通宝纹"
FASHIONEQUIP_DIYTEX_ICON_TEXT[35] = --[[!AUTO_3254]]"方弦纹"
FASHIONEQUIP_DIYTEX_ICON_TEXT[36] = --[[!AUTO_3254]]"涡云纹"
FASHIONEQUIP_DIYTEX_ICON_TEXT[37] = --[[!AUTO_3254]]"繁花锦"
FASHIONEQUIP_DIYTEX_ICON_TEXT[38] = --[[!AUTO_3254]]"丹叶纹"
FASHIONEQUIP_DIYTEX_ICON_TEXT[39] = --[[!AUTO_3254]]"方角纹"
FASHIONEQUIP_DIYTEX_ICON_TEXT[40] = --[[!AUTO_3254]]"星逐月"
FASHIONEQUIP_DIYTEX_ICON_TEXT[41] = --[[!AUTO_3254]]"海棠纹"
FASHIONEQUIP_DIYTEX_ICON_TEXT[42] = --[[!AUTO_3254]]"天华锦"
FASHIONEQUIP_DIYTEX_ICON_TEXT[43] = --[[!AUTO_3254]]"正平格"
FASHIONEQUIP_DIYTEX_ICON_TEXT[44] = --[[!AUTO_3254]]"赤乌纹"
FASHIONEQUIP_DIYTEX_ICON_TEXT[45] = --[[!AUTO_3254]]"正竖纹"
FASHIONEQUIP_DIYTEX_ICON_TEXT[46] = --[[!AUTO_3254]]"牡丹锦"
FASHIONEQUIP_DIYTEX_ICON_TEXT[47] = --[[!AUTO_3254]]"梅枝雪"
FASHIONEQUIP_DIYTEX_ICON_TEXT[48] = --[[!AUTO_3254]]"祥云纹"
FASHIONEQUIP_DIYTEX_ICON_TEXT[49] = --[[!AUTO_3254]]"雪绒花"

-----------------------------------------
-- 装备刺绣图案分类名称
FASHIONEQUIP_DIYTEX_CLASS =
{
	KEEP = 0,
	BLANK = 1,

	NORMAL_BEGIN = 2,

	NORMAL_END = 11,

	ALL = 12,
}

FASHIONEQUIP_DIYTEX_CLASS_TEXT = {}

FASHIONEQUIP_DIYTEX_CLASS_TEXT[FASHIONEQUIP_DIYTEX_CLASS.KEEP] 	=  "锁定当前图案"
FASHIONEQUIP_DIYTEX_CLASS_TEXT[FASHIONEQUIP_DIYTEX_CLASS.BLANK] =  "空白图案"
FASHIONEQUIP_DIYTEX_CLASS_TEXT[FASHIONEQUIP_DIYTEX_CLASS.NORMAL_BEGIN	+ 0] = "奢华元素"
FASHIONEQUIP_DIYTEX_CLASS_TEXT[FASHIONEQUIP_DIYTEX_CLASS.NORMAL_BEGIN + 1] = "万兽之魂"
FASHIONEQUIP_DIYTEX_CLASS_TEXT[FASHIONEQUIP_DIYTEX_CLASS.NORMAL_BEGIN + 2] = "草木之心"
FASHIONEQUIP_DIYTEX_CLASS_TEXT[FASHIONEQUIP_DIYTEX_CLASS.NORMAL_BEGIN + 3] = "几何图案"
FASHIONEQUIP_DIYTEX_CLASS_TEXT[FASHIONEQUIP_DIYTEX_CLASS.NORMAL_BEGIN + 4] = "织物质感"
FASHIONEQUIP_DIYTEX_CLASS_TEXT[FASHIONEQUIP_DIYTEX_CLASS.NORMAL_BEGIN + 5] = "分类6"
FASHIONEQUIP_DIYTEX_CLASS_TEXT[FASHIONEQUIP_DIYTEX_CLASS.NORMAL_BEGIN + 6] = "分类7"
FASHIONEQUIP_DIYTEX_CLASS_TEXT[FASHIONEQUIP_DIYTEX_CLASS.NORMAL_BEGIN + 7] = "分类8"
FASHIONEQUIP_DIYTEX_CLASS_TEXT[FASHIONEQUIP_DIYTEX_CLASS.NORMAL_BEGIN + 8] = "分类9"
FASHIONEQUIP_DIYTEX_CLASS_TEXT[FASHIONEQUIP_DIYTEX_CLASS.NORMAL_BEGIN + 9] = "分类10"
FASHIONEQUIP_DIYTEX_CLASS_TEXT[FASHIONEQUIP_DIYTEX_CLASS.ALL] = "全部分类"

-----------------------------------------


-- 礼物显示格式
GIFT_TO_BE_SEND_TEXT = --[[!AUTO_872]]"可赠送"
GIFT_RECEIVED_TEXT = --[[!AUTO_873]]"已赠送"
GIFT_TIME_STYLE = --[[!AUTO_874]]"\r^FFFFFF%d^FFFFFF年^FFFFFF%d^FFFFFF月^FFFFFF%d^FFFFFF日"

GIFT_USE_TYPE = --[[!AUTO_875]]"^FFFFFF使用：通过邮件寄出"
GIFT_PROPERTY_STYLE = --[[!AUTO_876]]"%s%s"
GIFT_INFO_NONE = --[[!AUTO_877]]"无使用效果"
GIFT_INFO_STYLE = --[[!AUTO_878]]"%s%s%s"
GIFT_INFO1 = --[[!AUTO_879]]"^FFFFFF魅力提升：^FFFFFF%d"
GIFT_INFO2 = --[[!AUTO_880]]"\r^FFFFFF使用特效：^FFFFFF收到礼物的人使用后获得%d级的%s"
GIFT_INFO3 = --[[!AUTO_881]]"\r^FF6699对^FFFFFF%s的^FF6699好感增加^FFFFFF%d"
GIFT_INF04 = --[[!AUTO_882]]"\r^9287FF使对方对自已的好感提升^FFFFFF%d"

GIFT_CONTENT_NEEDWRITE = --[[!AUTO_883]]"^FFFFFF可以附加一张小纸条"
GIFT_CONTENT_NONE = --[[!AUTO_884]]"^FFFFFF无附言"
GIFT_CONTENT = --[[!AUTO_885]]"^FFFFFF小纸条：^FFFFFF%s"
GIFT_CONTENT_SENDER = --[[!AUTO_886]]"^FFFFFF赠送人：^FFFFFF%s%s"
GIFT_CONTENT_RECEIVER = --[[!AUTO_887]]"\r^FFFFFF被赠人：^FFFFFF%s\r^FFFFFF赠送日：%s"

--战场装备描述
BATTLE_ITEM_DESC = {}
BATTLE_ITEM_DESC[30876] = --[[!AUTO_888]]"由少林寺的大和尚开光的禅杖，蕴含佛家法力。使用后可使自身在10秒内免疫所有内功伤害。"
BATTLE_ITEM_DESC[30877] = --[[!AUTO_889]]"由少林寺的大和尚开光的禅杖，蕴含佛家法力。使用后可使自身在10秒内免疫所有内功伤害。"
BATTLE_ITEM_DESC[30878] = --[[!AUTO_890]]"这把镰刀散发出诡异的气息，似乎是某种邪教道具。使用后将击晕目标，持续4秒，冷却时间50秒。"
BATTLE_ITEM_DESC[30879] = --[[!AUTO_891]]"这把镰刀散发出诡异的气息，似乎是某种邪教道具。使用后将击晕目标，持续4秒，冷却时间50秒。"
BATTLE_ITEM_DESC[30882] = --[[!AUTO_892]]"据说来自西域罗马尼亚的面具，上面刻有“Vlad Tepes Dracula”几个字母。使用后可获得30%吸取气血的能力，持续10秒，冷却时间30秒。"
BATTLE_ITEM_DESC[30890] = --[[!AUTO_893]]"这块五仙教流出的勾玉上淬炼了五种毒物的精华。使用后可使目标中毒，每秒损失50点气血，并降低其移动速度15%，持续8秒，冷却时间10秒。"
BATTLE_ITEM_DESC[30894] = --[[!AUTO_894]]"传说中东邪黄药师的家传宝物，刀枪不入，布满倒刺，如肉掌击于其上，必为其所伤。使用后可反弹伤害，持续5秒，冷却时间40秒。"
BATTLE_ITEM_DESC[30895] = --[[!AUTO_895]]"传说中东邪黄药师的家传宝物，刀枪不入，布满倒刺，如肉掌击于其上，必为其所伤。使用后可反弹伤害，持续5秒，冷却时间40秒。"
BATTLE_ITEM_DESC[30896] = --[[!AUTO_896]]"使用后使自身与10米范围内友军回复500点内力，并提升内外防御800点。"
BATTLE_ITEM_DESC[30898] = --[[!AUTO_897]]"杖身如蟠龙缠绕，挥动时仿佛有龙吟发出。使用后强劲的龙卷风将击飞目标，持续6秒，但由于风力过于强劲，目标的内外防御也将增加9999。冷却时间50秒。"
BATTLE_ITEM_DESC[30899] = --[[!AUTO_898]]"杖身如蟠龙缠绕，挥动时仿佛有龙吟发出。使用后强劲的龙卷风将击飞目标，持续6秒，但由于风力过于强劲，目标的内外防御也将增加9999。冷却时间50秒。"
BATTLE_ITEM_DESC[30901] = --[[!AUTO_899]]"据说这件物品蕴含了仙术，但究竟是哪位仙人的力量则已不可考了。护甲+600，外功攻击+400。使用后对目标及其祖宗八辈造成8000点内功伤害。"
BATTLE_ITEM_DESC[30902] = --[[!AUTO_900]]"极其阴毒的武器，可以封住敌人周身内力运行。使用后沉默目标，并使其内功防御降低2000，持续5秒，冷却时间50秒。"
BATTLE_ITEM_DESC[30908] = --[[!AUTO_901]]"由波斯明教传入中原的圣火令，据称上面记载了极其高明的武功，更能激发人们内心的圣火。使用后回复周围10米内友军5000点气血，冷却时间60秒。"
BATTLE_ITEM_DESC[30910] = --[[!AUTO_902]]"大名鼎鼎的戚家军所使用的行军鼓，宏亮的鼓声能振奋人心，激发士气。使用后8米内友军移动速度增加1.5米/秒，内外攻击力提升500，持续12秒。只能使用5次。"
BATTLE_ITEM_DESC[30910] = --[[!AUTO_903]]"一件大食风格的服饰，据称其原主人是一位名叫雷霄古的波斯人。使用后10米内友军获得50%吸取气血能力，外功攻击提升5000，持续8秒，冷却时间50秒。"


ITEM_PRICE_DESC = {}
ITEM_PRICE_DESC[1] = --[[!AUTO_949]]"单价 %s"
ITEM_PRICE_DESC[2] = --[[!AUTO_950]]"价格 %s（%s）"
ITEM_PRICE_DESC[3] = --[[!AUTO_951]]"价格 %s"
ITEM_PRICE_DESC[4] = --[[!AUTO_952]]"功勋价格 %d"
ITEM_PRICE_DESC[5] = --[[!AUTO_953]]"修理费 %s"
ITEM_PRICE_DESC[6] = --[[!AUTO_954]]"交换所需道具：%s（%d）"
ITEM_PRICE_DESC[7] = --[[!AUTO_955]]"%d玉"
ITEM_PRICE_DESC[8] = --[[!AUTO_956]]"%d锭"
ITEM_PRICE_DESC[9] = --[[!AUTO_957]]"%d两"
ITEM_PRICE_DESC[10] = --[[!AUTO_958]]"%d钱"

--门徒技能书描述
PET_SKILL_BOOK_DESC = {}
PET_SKILL_BOOK_DESC[1256] = {name = "透骨" ,skilltype = "单体招式" ,desc = "以透骨之力对敌人造成内功伤害"}
PET_SKILL_BOOK_DESC[1257] = {name = "震脉" ,skilltype = "单体招式" ,desc = "通过打击经脉对其造成内伤的技能"}
PET_SKILL_BOOK_DESC[1258] = {name = "狂澜" ,skilltype = "单体招式" ,desc = "聚气于心，宛如入涛之势攻击敌人，使其内伤"}
PET_SKILL_BOOK_DESC[1259] = {name = "碎心" ,skilltype = "单体招式" ,desc = "以强力震击，伤及对手内脏的武功，能使其受到内伤"}
PET_SKILL_BOOK_DESC[1260] = {name = "破冰" ,skilltype = "单体招式" ,desc = "混元破冰之击，能使敌人造成冰属性内伤"}
PET_SKILL_BOOK_DESC[1261] = {name = "阴火" ,skilltype = "单体招式" ,desc = "以柔破刚之击，使对手造成内伤攻击的同时还携带阴属性伤害"}
PET_SKILL_BOOK_DESC[1262] = {name = "蛇牙" ,skilltype = "单体招式" ,desc = "如蛇牙般无攻不破，使对手内伤之余，还会中毒"}
PET_SKILL_BOOK_DESC[1263] = {name = "斩髓" ,skilltype = "单体招式" ,desc = "能通过斩击让敌人造成外功伤害"}
PET_SKILL_BOOK_DESC[1264] = {name = "断骨" ,skilltype = "单体招式" ,desc = "强力的攻击力，能直接导致对手造成外功伤害"}
PET_SKILL_BOOK_DESC[1265] = {name = "破壁" ,skilltype = "单体招式" ,desc = "以破壁之势，全力使对手造成外伤"}
PET_SKILL_BOOK_DESC[1266] = {name = "裂柱" ,skilltype = "单体招式" ,desc = "此招最初是出自少林，由“金刚掌”演化而来，使对手造成外伤"}
PET_SKILL_BOOK_DESC[1267] = {name = "烈焰" ,skilltype = "单体招式" ,desc = "气如烈焰的攻击，除此之外，还附带火属性的伤害"}
PET_SKILL_BOOK_DESC[1268] = {name = "炎阳" ,skilltype = "单体招式" ,desc = "暴如炎阳般的攻击，在攻击敌人的同时，还携带阳属性的伤害"}
PET_SKILL_BOOK_DESC[1269] = {name = "玄武力" ,skilltype = "单体招式" ,desc = "借玄武之力对敌人进行外功攻击，使其受到玄属性伤害"}
PET_SKILL_BOOK_DESC[1350] = {name = "气冲波" ,skilltype = "群体招式" ,desc = "以浑厚的气浪对范围内的敌人造成内功伤害"}
PET_SKILL_BOOK_DESC[1351] = {name = "玄冰谱" ,skilltype = "群体招式" ,desc = "化气为冰，一旦释放，会使范围内的敌人受到如冰寒般的攻击和伤害"}
PET_SKILL_BOOK_DESC[2518] = {name = "狼啸" ,skilltype = "群体招式" ,desc = "狼啸之术，源于头狼啸月，会使范围内的敌人受到内功攻击，并受到阴属性伤害"}
PET_SKILL_BOOK_DESC[2519] = {name = "千军扫" ,skilltype = "群体招式" ,desc = "顾名思义，此为“横扫千军”，能对范围的敌手照成外伤"}
PET_SKILL_BOOK_DESC[2520] = {name = "天罡谱" ,skilltype = "群体招式" ,desc = "以天罡之力，以“我”为心，攻击范围内敌人，造成阳属性伤害"}
PET_SKILL_BOOK_DESC[2521] = {name = "玄嚣谱" ,skilltype = "群体招式" ,desc = "皇帝长子玄嚣所创的一招武学，能对范围敌手造成外功攻击和玄属性伤害"}
PET_SKILL_BOOK_DESC[1270] = {name = "本草术" ,skilltype = "单体招式" ,desc = "《华佗内经》残篇里的一种医疗术，能瞬间回复主人部分气血值"}
PET_SKILL_BOOK_DESC[1271] = {name = "续命术" ,skilltype = "单体招式" ,desc = "战国时期的救济之术，有续命之效，能持续回复主人部分气血值"}
PET_SKILL_BOOK_DESC[1272] = {name = "归元术" ,skilltype = "单体招式" ,desc = "天元归体之术，由道教的养生术演化而来，能瞬间回复主人部分内力值"}
PET_SKILL_BOOK_DESC[1273] = {name = "聚华术" ,skilltype = "单体招式" ,desc = "源自蓬莱仙人的《聚华赋》里面的一句“以之聚华而显灵”，能持续回复主人内力值"}
PET_SKILL_BOOK_DESC[1274] = {name = "借力术" ,skilltype = "单体招式" ,desc = "祭物聚力之术，能增加主人的力量"}
PET_SKILL_BOOK_DESC[1275] = {name = "鼓魂术·体" ,skilltype = "单体招式" ,desc = "似擂鼓般的运气，再推入主人体内，增加主人体魄性"}
PET_SKILL_BOOK_DESC[1276] = {name = "铁骨术" ,skilltype = "单体招式" ,desc = "能以内力使主人的筋骨如铁般坚韧，增加主人的筋骨属性"}
PET_SKILL_BOOK_DESC[1277] = {name = "蛮劲术" ,skilltype = "单体招式" ,desc = "以借力打力之术，增加主人的内劲"}
PET_SKILL_BOOK_DESC[1278] = {name = "吐纳术" ,skilltype = "单体招式" ,desc = "通过内力推脉使主人吐纳自在，增加主人气海属性"}
PET_SKILL_BOOK_DESC[1279] = {name = "踏潮术" ,skilltype = "单体招式" ,desc = "此术能让其主人获得踏潮履浪之力，增加其移动速度"}
PET_SKILL_BOOK_DESC[1280] = {name = "吞云术" ,skilltype = "单体招式" ,desc = "能借助万物灵动之息，增加主人的内功攻击力"}
PET_SKILL_BOOK_DESC[1281] = {name = "袭山术" ,skilltype = "单体招式" ,desc = "一种冲脉之术，能使其主人脉搏通畅，增加主人的外功攻击力"}
PET_SKILL_BOOK_DESC[1282] = {name = "内丹术" ,skilltype = "单体招式" ,desc = "能让其主聚气为丹的招式，增加其主人的内功防御力"}
PET_SKILL_BOOK_DESC[1283] = {name = "铜墙术" ,skilltype = "单体招式" ,desc = "运气成甲，犹如铜墙，为其主增加外功防御力"}
PET_SKILL_BOOK_DESC[1284] = {name = "鼓魂术·外" ,skilltype = "单体招式" ,desc = "似擂鼓般的运气，再推入主人体内，增加主人体魄性"}
PET_SKILL_BOOK_DESC[1285] = {name = "鼓魂术·内" ,skilltype = "单体招式" ,desc = "似擂鼓般的运气，再推入主人体内，增加主人体魄性"}
PET_SKILL_BOOK_DESC[1304] = {name = "冰封" ,skilltype = "单体招式" ,desc = "以冰寒的内力使敌人冻结，不能移动，故为冰封"}
PET_SKILL_BOOK_DESC[1305] = {name = "网缚" ,skilltype = "单体招式" ,desc = "撒出一张网去束缚敌人，使其不能移动"}
PET_SKILL_BOOK_DESC[1306] = {name = "鬼丝" ,skilltype = "单体招式" ,desc = "借助如鬼魅般的自然之力缠绕敌人，使其不能移动"}
PET_SKILL_BOOK_DESC[1307] = {name = "狼撞" ,skilltype = "单体招式" ,desc = "像野狼猎食一样加速撞击对手的招式"}
PET_SKILL_BOOK_DESC[1314] = {name = "阻元决" ,skilltype = "单体招式" ,desc = "此诅咒，能使对手的内力不畅，降低对手的内功攻击力"}
PET_SKILL_BOOK_DESC[1315] = {name = "扫脉决" ,skilltype = "群体招式" ,desc = "通过催脉之咒，降低范围内敌对方的内功攻击力"}
PET_SKILL_BOOK_DESC[1316] = {name = "卸力决" ,skilltype = "单体招式" ,desc = "黑彝人的秘咒，能卸去对手外力，降低敌人外攻攻击力"}
PET_SKILL_BOOK_DESC[1317] = {name = "挫骨决" ,skilltype = "群体招式" ,desc = "能使对方全身骨踝衰疲的诅咒，能降低范围内敌对方的外功攻击力"}
PET_SKILL_BOOK_DESC[1318] = {name = "禁元决" ,skilltype = "单体招式" ,desc = "能封锁对方小周天的诅咒，能降低敌人的内功防御力"}
PET_SKILL_BOOK_DESC[1319] = {name = "虚神决" ,skilltype = "群体招式" ,desc = "借助虚神强大的咒力，降低范围内敌对方的内功防御力"}
PET_SKILL_BOOK_DESC[1320] = {name = "伤甲决" ,skilltype = "单体招式" ,desc = "女真祭司的破旗上抄录下来的咒语，能降低敌人外功防御力"}
PET_SKILL_BOOK_DESC[1321] = {name = "毁城决" ,skilltype = "群体招式" ,desc = "传闻是妲己写下的妖咒，能降低范围内敌对方的外功防御力"}
PET_SKILL_BOOK_DESC[1322] = {name = "束足决" ,skilltype = "单体招式" ,desc = "但凡中此诅咒者，都会脚如灌铅，立刻降低其移动速度"}
PET_SKILL_BOOK_DESC[1323] = {name = "驭毒决" ,skilltype = "单体招式" ,desc = "苗疆的咒语，此咒就是使周围的毒虫攻击对手，使其持续受到毒属性伤害"}
PET_SKILL_BOOK_DESC[1324] = {name = "毒菌决" ,skilltype = "群体招式" ,desc = "独龙族祭司所创的秘咒，此咒能催化空气中的毒菇孢子，使范围内的对手持续受到菌毒伤害"}
PET_SKILL_BOOK_DESC[1325] = {name = "哮血决" ,skilltype = "单体招式" ,desc = "从波斯流传过来的一种毒咒，能使对手流血不止，持续受到伤害"}
PET_SKILL_BOOK_DESC[1326] = {name = "血祭决" ,skilltype = "群体招式" ,desc = "由古暹罗的降头师带入中原的诅咒，此咒相当邪恶，能使范围内的对手出血，持续受到伤害"}
PET_SKILL_BOOK_DESC[1327] = {name = "冥火决" ,skilltype = "单体招式" ,desc = "中原古咒语，受祖咒的敌人会持续受到火属性的伤害"}
PET_SKILL_BOOK_DESC[1328] = {name = "焚狱决" ,skilltype = "群体招式" ,desc = "相传是从地府流传出来的诅咒，此诅咒能引出地府冥火，使范围内的敌对者受到灼烧，并持续受到火属性伤害"}
PET_SKILL_BOOK_DESC[1330] = {name = "赋力" ,skilltype = "心法" ,desc = "提升一级赋力的技能等级。"}
PET_SKILL_BOOK_DESC[1331] = {name = "涌脉" ,skilltype = "心法" ,desc = "提升一级涌脉的技能等级。"}
PET_SKILL_BOOK_DESC[1332] = {name = "献骨" ,skilltype = "心法" ,desc = "提升一级献骨的技能等级。"}
PET_SKILL_BOOK_DESC[1333] = {name = "沉元" ,skilltype = "心法" ,desc = "提升一级沉元的技能等级。"}
PET_SKILL_BOOK_DESC[1334] = {name = "聚流" ,skilltype = "心法" ,desc = "提升一级聚流的技能等级。"}
PET_SKILL_BOOK_DESC[1335] = {name = "气浪" ,skilltype = "心法" ,desc = "能借助万物灵动之息，增加自身内功攻击力"}
PET_SKILL_BOOK_DESC[1336] = {name = "断松" ,skilltype = "心法" ,desc = "一种冲脉之术，能使其脉搏通畅，增加自身外功攻击力"}
PET_SKILL_BOOK_DESC[1337] = {name = "送潮" ,skilltype = "心法" ,desc = "能让其主聚气为丹的招式，增加自身内功防御力"}
PET_SKILL_BOOK_DESC[1338] = {name = "岩甲" ,skilltype = "心法" ,desc = "运气成甲，犹如铜墙，增加自身外功防御力"}
PET_SKILL_BOOK_DESC[1339] = {name = "千峰术" ,skilltype = "心法" ,desc = "吸取千年古山之灵气，注入体内，增加自身气血上限"}
PET_SKILL_BOOK_DESC[1340] = {name = "石脉术" ,skilltype = "心法" ,desc = "提升一级石脉术的技能等级。"}
PET_SKILL_BOOK_DESC[1341] = {name = "龟甲术" ,skilltype = "心法" ,desc = "提升一级龟甲术的技能等级。"}
PET_SKILL_BOOK_DESC[1342] = {name = "融雪决" ,skilltype = "心法" ,desc = "提升一级融雪决的技能等级。"}
PET_SKILL_BOOK_DESC[1343] = {name = "冰心决" ,skilltype = "心法" ,desc = "提升一级冰心决的技能等级。"}
PET_SKILL_BOOK_DESC[1344] = {name = "祭草决" ,skilltype = "心法" ,desc = "提升一级祭草决的技能等级。"}
PET_SKILL_BOOK_DESC[1345] = {name = "运阳决" ,skilltype = "心法" ,desc = "提升一级运阳决的技能等级。"}
PET_SKILL_BOOK_DESC[1346] = {name = "青宵决" ,skilltype = "心法" ,desc = "提升一级青宵决的技能等级。"}
PET_SKILL_BOOK_DESC[1347] = {name = "御玄决" ,skilltype = "心法" ,desc = "提升一级御玄决的技能等级。"}
PET_SKILL_BOOK_DESC[9405] = {name = "禁言" ,skilltype = "单体招式" ,desc = "锁住敌人真气，是敌人不能使用技能"}
PET_SKILL_BOOK_DESC[1351] = {name = "玄冰谱·外" ,skilltype = "单体招式" ,desc = "化气为冰，一旦释放，能以冰暴之力重击对手"}
PET_SKILL_BOOK_DESC[2518] = {name = "狂犬·外" ,skilltype = "单体招式" ,desc = "如狂犬一般扑向对手，同时附带有独特的阴毒攻击"}
PET_SKILL_BOOK_DESC[2520] = {name = "天罡谱·外" ,skilltype = "单体招式" ,desc = "以天罡之力，以“我”为心，攻击周遭敌人，如同太阳释放出光热"}
PET_SKILL_BOOK_DESC[2521] = {name = "玄嚣谱·外" ,skilltype = "单体招式" ,desc = "黄帝长子玄嚣所创的一招武学，可惜只剩残篇"}
PET_SKILL_BOOK_DESC[9133] = {name = "玄冰谱·内" ,skilltype = "单体招式" ,desc = "化气为冰，一旦释放，能以冰暴之力重击对手"}
PET_SKILL_BOOK_DESC[9134] = {name = "狂犬·内" ,skilltype = "单体招式" ,desc = "如狂犬一般扑向对手，同时附带有独特的阴毒攻击"}
PET_SKILL_BOOK_DESC[9135] = {name = "天罡谱·内" ,skilltype = "单体招式" ,desc = "以天罡之力，以“我”为心，攻击周遭敌人，如同太阳释放出光热"}
PET_SKILL_BOOK_DESC[9136] = {name = "玄嚣谱·内" ,skilltype = "单体招式" ,desc = "黄帝长子玄嚣所创的一招武学，可惜只剩残篇"}
PET_SKILL_BOOK_DESC[9637] = {name = "击晕·外" ,skilltype = "单体招式" ,desc = "强大的功力，击晕敌人，使其无任何还手之力"}
PET_SKILL_BOOK_DESC[9648] = {name = "击晕·内" ,skilltype = "单体招式" ,desc = "强大的功力，击晕敌人，使其无任何还手之力"}

--门徒技能书等级颜色配置
PET_SKILL_LEVEL_COLOR = {}
PET_SKILL_LEVEL_COLOR[1] = --[[!AUTO_1172]]"^FFFFFF"
PET_SKILL_LEVEL_COLOR[2] = --[[!AUTO_1173]]"^B6E3BB"
PET_SKILL_LEVEL_COLOR[3] = --[[!AUTO_1174]]"^64E3E3"

--门徒技能书类型描述
PET_SKILL_BOOK_TYPE_DESC = {}
PET_SKILL_BOOK_TYPE_DESC[1] = --[[!AUTO_1175]]"招式"
PET_SKILL_BOOK_TYPE_DESC[2] = --[[!AUTO_1176]]"口诀"

--门徒技能书使用方法描述
PET_SKILL_BOOK_USE_DESC = {}
PET_SKILL_BOOK_USE_DESC[1] = --[[!AUTO_1177]]"^FFFFFF使用：在门徒训练师处学习"
PET_SKILL_BOOK_USE_DESC[2] = --[[!AUTO_1178]]"^FFFFFF使用：右键点击使用"

--门徒技能书等级描述配置
ITEM_MEDICINE_TEXT = {}
ITEM_MEDICINE_TEXT[1] = --[[!AUTO_1179]]"^FFFFFF瞬间回复%d气血值。"
ITEM_MEDICINE_TEXT[2] = --[[!AUTO_1180]]"^FFFFFF瞬间回复%d内力值。"
ITEM_MEDICINE_TEXT[3] = --[[!AUTO_1181]]"^FFFFFF瞬间回复%d连击数。"
ITEM_MEDICINE_TEXT[4] = --[[!AUTO_1182]]"^FFFFFF每2秒回复%d气血值，持续12秒。"
ITEM_MEDICINE_TEXT[5] = --[[!AUTO_1183]]"^FFFFFF每2秒回复%d内力值，持续12秒。"
ITEM_MEDICINE_TEXT[6] = --[[!AUTO_1184]]"^FFFFFF每2秒回复%d连击值，持续12秒。"
ITEM_MEDICINE_TEXT[7] = --[[!AUTO_1185]]"^FFFFFF立即获得%d点功力。"
ITEM_MEDICINE_TEXT[8] = --[[!AUTO_1186]]"^FFFFFF每2秒获得%d点功力，持续12秒。"
ITEM_MEDICINE_TEXT[9] = --[[!AUTO_1187]]"^FFFFFF每隔2秒回复一次，前三次回复气血值，分别回复%d点、%d点、%d点，后三次回复内力值，分别回复%d点、%d点、%d点，持续12秒"
ITEM_MEDICINE_TEXT[10] = --[[!AUTO_1188]]"^FFFFFF回复%d点精力值。"
ITEM_MEDICINE_TEXT[11] = --[[!AUTO_1189]]"^FFFFFF回复%d点劳作值。"
ITEM_MEDICINE_TEXT[12] = --[[!AUTO_1190]]"^FFFFFF减少%d点杀气值。"
ITEM_MEDICINE_TEXT[13] = --[[!AUTO_1191]]"^FFFFFF回复%d点社交值。"
ITEM_MEDICINE_TEXT[14] = --[[!AUTO_1192]]"^FFFFFF回复%d点活力值。"
ITEM_MEDICINE_TEXT[15] = --[[!AUTO_1193]]"^FFFFFF瞬间回复最大血量%d%%气血值。"
ITEM_MEDICINE_TEXT[16] = --[[!AUTO_1194]]"^FFFFFF瞬间回复最大血量%d%%内力值。"
ITEM_MEDICINE_TEXT[17] = --[[!AUTO_1195]]"^FFFFFF每2秒回复最大血量%d%%气血值，持续12秒。"
ITEM_MEDICINE_TEXT[18] = --[[!AUTO_1196]]"^FFFFFF每2秒回复最大血量%d%%内力值，持续12秒。"
ITEM_MEDICINE_TEXT[19] = --[[!AUTO_1197]]"^FFFFFF使用后获得世界漫游时间%d分钟。"
ITEM_MEDICINE_TEXT[20] = --[[!AUTO_1198]]""
ITEM_MEDICINE_TEXT[21] = --[[!AUTO_3267]]""
ITEM_MEDICINE_TEXT[22] = --[[!AUTO_3268]]"^FFFFFF使用后获得%d暗器匣经验。"
ITEM_MEDICINE_TEXT[23] = --[[!AUTO_3269]]""
ITEM_MEDICINE_TEXT[24] = --[[!AUTO_3270]]""
ITEM_MEDICINE_TEXT[25] = ""
ITEM_MEDICINE_TEXT[26] = ""
ITEM_MEDICINE_TEXT[27] = "^FFFFFF使用后所在帮派获得%d建设度，请勿在尚未加入帮派时使用以免造成损失。"
ITEM_MEDICINE_TEXT[28] = "^FFFFFF使用后所在帮派获得2锭资金，请勿在尚未加入帮派时使用以免造成损失。"
ITEM_MEDICINE_TEXT[29] = "^FFFFFF使用后获得%d宝石净化结晶"
ITEM_MEDICINE_TEXT[30] = "^FFFFFF使用后增加%d点VIP经验"
ITEM_MEDICINE_TEXT[31] = "^FFFFFF归元丹"
ITEM_MEDICINE_TEXT[32] = "^FFFFFF使用后增加元宝消费以及帮派声望积分"
ITEM_MEDICINE_TEXT[33] = "^FFFFFF使用此道具获得所有经验加倍效果，经验倍数%d倍，持续到%d级"
ITEM_MEDICINE_TEXT[34] = "^FFFFFF使用后提升生命最大值,道具堆叠数量越多,提升越大"
ITEM_MEDICINE_TEXT[35] = "^FFFFFF使用后获得%d点新技能战力。"
ITEM_MEDICINE_TEXT[36] = "^FFFFFF使用后提升%d级心法等级上限。"
ITEM_MEDICINE_TEXT[37] = ""
ITEM_MEDICINE_TEXT[38] = "^FFFFFF使用后获得跨年奖励。"
ITEM_MEDICINE_TEXT[39] = "^FFFFFF使用后增加当前展示萌娃%d点经验值，并消耗100点亲密度。"
ITEM_MEDICINE_TEXT[40] = "^FFFFFF右键点击后可选择孩子的性别和归属，需夫妻二人同时使用此道具。"
ITEM_MEDICINE_TEXT[41] = "^FFFFFF右键点击后可增加%d点壕礼活动积分，积分到达最大值时无法使用。"
ITEM_MEDICINE_TEXT[43] = "^FFFFFF右键点击后可学会奏乐技能。"
ITEM_MEDICINE_TEXT[44] = "^FFFFFF挽灵谱。"
ITEM_MEDICINE_TEXT[45] = "^FFFFFF拂心谱。"
ITEM_MEDICINE_TEXT[46] = "^FFFFFF增加%d乐师经验。"

--宠物天赋描述
TALENT_PET_TEXT = {}
TALENT_PET_TEXT[9884] = "萌萌哒萝莉轻轻抱了你一下，你顿时神清气爽，觉得浑身都充满了力量！"
TALENT_PET_TEXT[9895] = "萌萌哒萝莉轻轻抱了你一下，你顿时神清气爽，觉得浑身都充满了力量！"
TALENT_PET_TEXT[9894] = "随手拣回的小动物为了报答你的悉心照料，愿意贡献自己的力量，任你驱使。"
TALENT_PET_TEXT[9896] = "随手拣回的小动物为了报答你的悉心照料，愿意贡献自己的力量，任你驱使。"
TALENT_PET_TEXT[10014] = "小雪人甘愿献出自己的一部分，化作坚实的屏障，为你遮挡江湖的血雨腥风。"
TALENT_PET_TEXT[10259] = "嘻嘻。。墟市游荡的小幽灵从角落里突然蹦出来，把人吓得僵在了那里。"
TALENT_PET_TEXT[10349] = "心宿，东方七宿第五宿，为狐，喜好游戏人间。供奉她可以获得元素抗性。"
TALENT_PET_TEXT[10577] = "你获得了蓝凤凰的青睐，请继续保持与她的感情哦~\r^ff0000本宠物天赋升级属性不会增长，请不要浪费升级材料~"
TALENT_PET_TEXT[10578] = "你获得了任盈盈的青睐，请继续保持与她的感情哦~\r^ff0000本宠物天赋升级属性不会增长，请不要浪费升级材料~"
TALENT_PET_TEXT[10579] = "你获得了岳灵珊的青睐，请继续保持与她的感情哦~\r^ff0000本宠物天赋升级属性不会增长，请不要浪费升级材料~"
TALENT_PET_TEXT[10580] = "你获得了林平之的青睐，请继续保持与他的感情哦~\r^ff0000本宠物天赋升级属性不会增长，请不要浪费升级材料~"
TALENT_PET_TEXT[10581] = "你获得了仪琳的青睐，请继续保持与她的感情哦~\r^ff0000本宠物天赋升级属性不会增长，请不要浪费升级材料~"
TALENT_PET_TEXT[10582] = "你获得了田伯光的青睐，请继续保持与他的感情哦~\r^ff0000本宠物天赋升级属性不会增长，请不要浪费升级材料~"
TALENT_PET_TEXT[10583] = "你获得了令狐冲的青睐，请继续保持与他的感情哦~\r^ff0000本宠物天赋升级属性不会增长，请不要浪费升级材料~"
TALENT_PET_TEXT[10627] = "表演时间到！"
TALENT_PET_TEXT[10776] = "虽然我马上就要离开了，但我会一直默默守护你哒！十二年后希望我们还能再见呢~"
TALENT_PET_TEXT[10984] = "从今天起你就是我的专属铲屎官的喵~我会罩着你哒喵~"
TALENT_PET_TEXT[11003] = "从今天起你就是我的专属铲屎官的喵~我会罩着你哒喵~"
TALENT_PET_TEXT[11004] = "从今天起你就是我的专属铲屎官的喵~我会罩着你哒喵~"
TALENT_PET_TEXT[11005] = "从今天起你就是我的专属铲屎官的喵~我会罩着你哒喵~"
TALENT_PET_TEXT[11063] = "嘻嘻。。葬魂崖游荡的小幽灵从角落里突然蹦出来，把人吓得僵在了那里。"
TALENT_PET_TEXT[11260] = "小狼的“愤怒”\r尔等凡人，不许揉我脑袋！等我长大了，你们都要在我面前瑟瑟发抖！嗷呜~"
TALENT_PET_TEXT[11271] = "小狼的“愤怒”\r尔等凡人，不许揉我脑袋！等我长大了，你们都要在我面前瑟瑟发抖！嗷呜~"
TALENT_PET_TEXT[11272] = "小狼的“愤怒”\r尔等凡人，不许揉我脑袋！等我长大了，你们都要在我面前瑟瑟发抖！嗷呜~"
TALENT_PET_TEXT[11273] = "小狼的“愤怒”\r尔等凡人，不许揉我脑袋！等我长大了，你们都要在我面前瑟瑟发抖！嗷呜~"
TALENT_PET_TEXT[11274] = "小狼的“愤怒”\r尔等凡人，不许揉我脑袋！等我长大了，你们都要在我面前瑟瑟发抖！嗷呜~"
TALENT_PET_TEXT[11275] = "小狼的“愤怒”\r尔等凡人，不许揉我脑袋！等我长大了，你们都要在我面前瑟瑟发抖！嗷呜~"
TALENT_PET_TEXT[11402] = "我和嫦娥走散了，你能带我去找她嘛？"
TALENT_PET_TEXT[11379] = "和荀英建立了不错的关系，以后会经历什么样的故事呢？"
TALENT_PET_TEXT[11762] = "竖琴娃娃轻轻抱了你一下，你顿时神清气爽，觉得浑身都充满了力量！"
TALENT_PET_TEXT[11760] = "表演时间到！"
TALENT_PET_TEXT[11427] = "怎么只有功力成长了，身高完全没有成长嘛！"
TALENT_PET_TEXT[11946] = "嘻嘻。。墟市游荡的小幽灵轻轻抱了你一下，你吓了一跳，觉得整个人都精神了！"
TALENT_PET_TEXT[11956] = "随手拣回的小动物为了报答你的悉心照料，愿意贡献自己的力量，任你驱使。"
TALENT_PET_TEXT[11957] = "小雪人甘愿献出自己的一部分，化作坚实的屏障，为你遮挡江湖的血雨腥风。"
TALENT_PET_TEXT[12803] = "喵呜~我是天狼星的后裔，你们这些凡人都要臣服在我面前瑟瑟发抖！嗷呜"
TALENT_PET_TEXT[12804] = "嚯~呀呀呀呀！逮~妖怪你往哪里逃！看我变大变小变漂亮。"
TALENT_PET_TEXT[12883] = "阳光彩虹小白马，滴滴答，滴滴答。"
TALENT_PET_TEXT[12884] = "阳光彩虹小白马，滴滴答，滴滴答。"
TALENT_PET_TEXT[13034] = "心之所往，梦之所向，愿你都能遇见我们的龙猫。"
TALENT_PET_TEXT[13059] = "一声虎啸贯青虹，驰骋九州万马腾。"
TALENT_PET_TEXT[13060] = "一声虎啸贯青虹，驰骋九州万马腾。"
TALENT_PET_TEXT[13061] = "一声虎啸贯青虹，驰骋九州万马腾。"
TALENT_PET_TEXT[13062] = "一声虎啸贯青虹，驰骋九州万马腾。"

--动作物品配置描述
ITEM_ACTION_TEXT = {}
ITEM_ACTION_TEXT[1] = "^FFFFFF连续喝%d口，每一口间隔%d秒，每口回复%d%%血量，每口最高不超过%d，剩余可用回复量%d，总回复量%d"
ITEM_ACTION_TEXT[2] = "^FFFFFF连续喝%d口，每一口间隔%d秒，每口回复%d%%蓝量，每口最高不超过%d，剩余可用回复量%d，总回复量%d"
ITEM_ACTION_TEXT[3] = "^FFFFFF连续喝%d口，每一口间隔%d秒，每口回复%d%%血量，每口最高不超过%d，总回复量%d"
ITEM_ACTION_TEXT[4] = "^FFFFFF连续喝%d口，每一口间隔%d秒，每口回复%d%%蓝量，每口最高不超过%d，总回复量%d"

--踢出尸体道具描述
ITEM_KICK_CORPSE_TEXT = {}
ITEM_KICK_CORPSE_TEXT[1] = "使用后清除%d米范围内的一具尸体，只能在金玉满堂战场中使用。"

--门徒通用药品类型
PET_NORMAL_MEDICINE_TYPE = {}
PET_NORMAL_MEDICINE_TYPE[0] = --[[!AUTO_1199]]"门徒气血药"
PET_NORMAL_MEDICINE_TYPE[1] = --[[!AUTO_1200]]"门徒气力药"
PET_NORMAL_MEDICINE_TYPE[2] = --[[!AUTO_1201]]"门徒怒气药"
PET_NORMAL_MEDICINE_TYPE[3] = --[[!AUTO_1202]]"还童丹"
PET_NORMAL_MEDICINE_TYPE[4] = --[[!AUTO_1203]]""
PET_NORMAL_MEDICINE_TYPE[5] = --[[!AUTO_1204]]"门徒延寿丹"
PET_NORMAL_MEDICINE_TYPE[6] = --[[!AUTO_1205]]"门徒历练丹"
PET_NORMAL_MEDICINE_TYPE[7] = --[[!AUTO_1206]]"门徒忠诚药"
PET_NORMAL_MEDICINE_TYPE[8] = --[[!AUTO_1206]]"门徒修炼药"

--门徒控制卷轴描述
MONSTER_CTRL_DESC = {}
MONSTER_CTRL_DESC[1] = --[[!AUTO_1207]]"^FFFFFF画布中标出的地点在%s的[%s,%s]附近。"
MONSTER_CTRL_DESC[2] = --[[!AUTO_1208]]"^FFFFFF画布中标出的地点在%s。"
MONSTER_CTRL_DESC[3] = --[[!AUTO_1209]]"^FFFFFF召唤福地麒麟，打败它可获得用于开宗立派的升龙令。"

--彩票描述
ITEM_LOTTERY_HINT_UNOPENED = --[[!AUTO_1210]]"^FFFFFF状态：未使用"
ITEM_LOTTERY_HINT_PRESENTS = --[[!AUTO_1211]]"^FD2D31状态：待领奖"
ITEM_LOTTERY_IVTRLIMIT_ITEM = --[[!AUTO_1212]]"需要至少%d格物品栏才能使用"
ITEM_LOTTERY_IVTRLIMIT_MATS = --[[!AUTO_1213]]"需要至少%d格材料栏才能使用"
ITEM_LOTTERY_IVTRLIMIT_CARD = "需要至少%d格图志栏才能使用"

 --生产描述文本
ITEM_PROD_TYPE_DESC = {}
ITEM_PROD_TYPE_DESC[1] = --[[!AUTO_1214]]"该配方已学会"
ITEM_PROD_TYPE_DESC[2] = --[[!AUTO_1215]]"生产技能：%s%s"
ITEM_PROD_TYPE_DESC[3] = --[[!AUTO_1216]]"基础熟练：%s%d"
ITEM_PROD_TYPE_DESC[4] = --[[!AUTO_1217]]"学习制造：%s"
ITEM_PROD_TYPE_DESC[5] = --[[!AUTO_1218]]"成品参考：%s%s"

--生产相关描述
ITEM_PROD_DESC_TEXT = {}
ITEM_PROD_DESC_TEXT[--[[!]]"布帛"] = {type_text = --[[!AUTO_1219]]"布帛",use_text = --[[!AUTO_1220]]"用途：生产袍衫、棉甲所需的材料。"}
ITEM_PROD_DESC_TEXT[--[[!]]"兑换声望"] = {type_text = --[[!AUTO_1221]]"兑换",use_text = --[[!AUTO_1222]]"用途：兑换所需的材料。"}
ITEM_PROD_DESC_TEXT[--[[!]]"金石"] = {type_text = --[[!AUTO_1223]]"金石",use_text = --[[!AUTO_1224]]"用途：生产武器、首饰所需的材料。"}
ITEM_PROD_DESC_TEXT[--[[!]]"金石与木革"] = {type_text = --[[!AUTO_1225]]"金石、木革",use_text = --[[!AUTO_1226]]"用途：生产武器、首饰、皮衣所需的材料。"}
ITEM_PROD_DESC_TEXT[--[[!]]"卖钱"] = {type_text = --[[!AUTO_1227]]"商品",use_text = --[[!AUTO_1228]]"用途：可出售给商人。"}
ITEM_PROD_DESC_TEXT[--[[!]]"木革"] = {type_text = --[[!AUTO_1229]]"木革",use_text = --[[!AUTO_1230]]"用途：生产武器、皮衣所需的材料。"}
ITEM_PROD_DESC_TEXT[--[[!]]"木革与布帛"] = {type_text = --[[!AUTO_1231]]"木革、布帛",use_text = --[[!AUTO_1232]]"用途：生产武器、袍衫、棉甲、皮衣所需的材料。"}
ITEM_PROD_DESC_TEXT[--[[!]]"烹饪用"] = {type_text = --[[!AUTO_1233]]"烹饪",use_text = --[[!AUTO_1234]]"用途：生产食物所需的材料。"}
ITEM_PROD_DESC_TEXT[--[[!]]"烹饪与制药"] = {type_text = --[[!AUTO_1235]]"烹饪、制药",use_text = --[[!AUTO_1236]]"用途：生产食物、药品所需的材料。"}
ITEM_PROD_DESC_TEXT[--[[!]]"生产材料"] = {type_text = --[[!AUTO_1237]]"其它",use_text = --[[!AUTO_1238]]"用途：没什么用的材料。"}
ITEM_PROD_DESC_TEXT[--[[!]]"未使用"] = {type_text = --[[!AUTO_1239]]"其它",use_text = --[[!AUTO_1240]]"用途：没什么用的材料。"}
ITEM_PROD_DESC_TEXT[--[[!]]"幸运剂"] = {type_text = --[[!AUTO_1241]]"辅助物品",use_text = --[[!AUTO_1242]]"用途：增加生产成功率。"}
ITEM_PROD_DESC_TEXT[--[[!]]"制药用"] = {type_text = --[[!AUTO_1243]]"制药",use_text = --[[!AUTO_1244]]"用途：生产药品所需的材料。"}
ITEM_PROD_DESC_TEXT[--[[!]]"帮派后勤物品"] = {type_text = --[[!AUTO_1245]]"帮派后勤物品",use_text = --[[!AUTO_1246]]"用途：供应帮派人士使用"}
ITEM_PROD_DESC_TEXT[--[[!]]"兽骨"] = {type_text = --[[!AUTO_1247]]"木革",use_text = --[[!AUTO_1248]]"用途：生产饰品所需的材料"}

--配方相关文本
RECIPEROLL_USE_TEXT = --[[!AUTO_1249]]"^ffffff使用：右键点击使用\r\r满足技能需求才可学会，学会后可以在相应技能的生产界面里找到"
FASHION_RECIPEROLL_USE_TEXT = --[[!AUTO_1249]]"^ffffff使用：打开天工织造界面后，右键点击图纸放入\r说明：满足需要材料条件后，前往洛阳城找到何解儿使用天工织造功能即可获得新的定制时装。"
FASHION_CAILIAO_TEXT = "合成所需材料："
RECIPEROLL_LEARNED_TEXT = --[[!AUTO_1250]]"（已学会的配方）"
RECIPEROLL_UNLEARNED_TEXT = --[[!AUTO_1251]]"（未学会的配方）"


--技能书相关描述
ITEM_SKILLTOME_USE_GONGLI = --[[!AUTO_1252]]"阅读时会耗费%d点功力。"
ITEM_SKILLTOME_DESC_TEXT = {}
ITEM_SKILLTOME_DESC_TEXT["大宗武学"] = {type_text = --[[!AUTO_1253]]"秘笈",use_text = --[[!AUTO_1254]]"阅读：右键点击",learn_text = --[[!AUTO_1255]]"已经学会"}
ITEM_SKILLTOME_DESC_TEXT["武学2"] = {type_text = --[[!AUTO_1256]]"秘笈",use_text = --[[!AUTO_1257]]"阅读：右键点击",learn_text = --[[!AUTO_1258]]"已经领悟"}
ITEM_SKILLTOME_DESC_TEXT["武学3"] = {type_text = --[[!AUTO_1259]]"秘笈",use_text = --[[!AUTO_1260]]"阅读：右键点击",learn_text = --[[!AUTO_1261]]"已经领悟"}
ITEM_SKILLTOME_DESC_TEXT["绝招秘籍"] = {type_text = --[[!AUTO_1262]]"秘笈",use_text = --[[!AUTO_1263]]"阅读：右键点击",learn_text = --[[!AUTO_1264]]"已经学会"}
ITEM_SKILLTOME_DESC_TEXT["招式强化残页"] = {type_text = --[[!AUTO_1265]]"秘笈",use_text = --[[!AUTO_1266]]"阅读：右键点击",learn_text = --[[!AUTO_1267]]"已经领悟"}
ITEM_SKILLTOME_DESC_TEXT["其他技能书"] = {type_text = --[[!AUTO_1265]]"秘笈",use_text = --[[!AUTO_1266]]"阅读：右键点击",learn_text = --[[!AUTO_1267]]"已经领悟"}

--药品-功力药类型描述

ITEM_GONGLI_MEDICINE_TYPE_TEXT = --[[!AUTO_1268]]"功力丹"
ITEM_ANQI_LEVELUP_TYPE_TEXT = --[[!AUTO_3271]]"暗器匣升级道具"
ITEM_FUYUAN_Random_TYPE_TEXT = --[[!AUTO_3272]]"奇物"
ITEM_EQUIP_REP_TYPE_TEXT = "装备修理工具"
ITEM_MAFIA_BUILDING_TYPE_TEXT = "帮派奇物"
ITEM_MAFIA_MONEY_TYPE_TEXT = "帮派奇物"
ITEM_STONE_CRYSTAL_TYPE_TEXT = "结晶道具"
ITEM_MONTHLY_VIP = "江湖令"

--开光描述文本

ITEM_KAIGUANG_TYPE_DESC = {}
ITEM_KAIGUANG_TYPE_DESC[1] = --[[!AUTO_1269]]""
ITEM_KAIGUANG_TYPE_DESC[2] = --[[!AUTO_1270]]"^FD2D31已封印"
ITEM_KAIGUANG_TYPE_DESC[3] = --[[!AUTO_1271]]""
ITEM_KAIGUANG_TYPE_DESC[4] = --[[!AUTO_1272]]"^FFCB40【开光】\r"

--宝石镶嵌位置索引
ITEM_ESTONE_SOCKET_PLACE = {}
ITEM_ESTONE_SOCKET_PLACE[1] = --[[!]]"武器"
ITEM_ESTONE_SOCKET_PLACE[2] = --[[!]]"防具"
ITEM_ESTONE_SOCKET_PLACE[3] = --[[!]]"时装"
ITEM_ESTONE_SOCKET_PLACE[4] = --[[!]]"面部"
ITEM_ESTONE_SOCKET_PLACE[5] = --[[!]]"挂件"
ITEM_ESTONE_SOCKET_PLACE[6] = --[[!]]"箱子"
--ITEM_ESTONE_SOCKET_PLACE[7] = "披风"

--宝石属性显示格式

ITEM_ESTONE_SOCKET_PLACE_STYLE = --[[!AUTO_1279]]"%s%s-%s"
ITEM_ESTONE_RUNEWORD_TEXT = --[[!AUTO_1280]]"\r^6ab3ff【佛迹】 "

--装备精华显示格式

ITEM_PSTONE_SOCKET_PLACE_STYLE = "%s%s-%s"

--装备升级显示格式
EQUIP_UPGRADE_NAME = --[[!AUTO_1281]]"【强化】"
ANQI_UPGRADE_LEVELUP = --[[!AUTO_3273]]"【暗器升级】"
EQUIP_UPGRADE_LEVEL_TEXT = {--[[!AUTO_1282]]"^FFFFFF百炼",--[[!AUTO_1283]]"^3485FF千锤",--[[!AUTO_1284]]"^CE58FF万历",--[[!AUTO_1285]]"^FFD200化宝"}
EQUIP_UPGRADE_LEVEL_MAX = --[[!AUTO_1286]]"MAX"
EQUIP_LIANHUAGRADE_NAME = --[[!AUTO_1281]]"【炼化】+%d"
EQUIP_UPGRADE_LIMIT = " 强化上限:%d"
EQUIP_LIANHUA_EXP = "炼化经验：%d/%d"

--装备幻化显示
EQUIP_CHANGE_APPEARANCE = "\r^FFFFFF【已记忆外形】"

--装备镶后属性显示格式

ITEM_ESTONE_SOCKET_ESS_STYLE = --[[!AUTO_1287]]"%s%s-%s"
ITEM_ESTONE_SOCKET_ESS_STYLE_V2 = --[[!AUTO_1287]]"%s%s"

--宝石相关属性改成了直接从模板中取，写死的文字暂时去掉

--宝石属性文本	装备用武器，防具，时装，面部，挂件，箱子，披风

--ITEM_ESTONE_ADDON_DESC = {}
--ITEM_ESTONE_ADDON_DESC[13344] = "武器：护甲值+52\r防具：护甲值+52"
--装备上宝石属性文本	装备用武器，防具，时装，面部，挂件，箱子，披风

--INITEM_ESTONE_ADDON_DESC = {}
--INITEM_ESTONE_ADDON_DESC[13344] = {"黑玛瑙1级：护甲值+52","黑玛瑙1级：护甲值+52","","","","",""}

--神器属性信息显示

ITEM_KUNGFU_SOUL_BONE_NUM = "根骨: %d"
ITEM_KUNGFU_SOUL_lARGE_GROWTH_NUM = "觉醒次数: %d"
ITEM_KUNGFU_SOUL_EXP = "经验: %d/%d"
ITEM_KUNGFU_SOUL_MAX_EXP = "经验: [MAX]"
ITEM_KUNGFU_SOUL_LEVEL = "^FFFFFF等级：%d"

--宝石形状文本
ITEM_ESTONE_SHAPE_DESC = {}
ITEM_ESTONE_SHAPE_DESC[1] = --[[!AUTO_1288]]"圆形"
ITEM_ESTONE_SHAPE_DESC[2] = --[[!AUTO_1289]]"菱形"
ITEM_ESTONE_SHAPE_DESC[3] = --[[!AUTO_1290]]"不规则型"

--宝石种类文本
ITEM_ESTONE_TYPE_DESC = {}
ITEM_ESTONE_TYPE_DESC[1] = --[[!AUTO_1291]]"玉石"
ITEM_ESTONE_TYPE_DESC[2] = --[[!AUTO_1292]]"玛瑙"
ITEM_ESTONE_TYPE_DESC[3] = --[[!AUTO_1293]]"刚玉"
ITEM_ESTONE_TYPE_DESC[4] = --[[!AUTO_1294]]"晶石"
ITEM_ESTONE_TYPE_DESC[5] = --[[!AUTO_1295]]"翡翠"
ITEM_ESTONE_TYPE_DESC[6] = --[[!AUTO_1296]]"珊瑚"
ITEM_ESTONE_TYPE_DESC[7] = --[[!AUTO_1297]]"珍珠"
ITEM_ESTONE_TYPE_DESC[8] = --[[!AUTO_1298]]"奇石"
ITEM_ESTONE_TYPE_DESC[9] = --[[!AUTO_1299]]"珍石"
ITEM_ESTONE_TYPE_DESC[10] = --[[!AUTO_1300]]"长石"
ITEM_ESTONE_TYPE_DESC[11] = "名侠贴"

MINE_PROGRESS_PREFIX =
{
	--索引比矿物表上加了1
	[1]		=	{	showname = --[[!AUTO_1301]]"采集",	}	,
	[2]		=	{	showname = --[[!AUTO_1302]]"采集",	}	,
	[3]		=	{	showname = --[[!AUTO_1303]]"凿",	}	,
	[4]		=	{	showname = --[[!AUTO_1304]]"采集",	}	,
	[5]		=	{	showname = --[[!AUTO_1305]]"砍",	}    ,
	[6]		=	{	showname = --[[!AUTO_1306]]"刨",	}    ,
	[7]		=	{	showname = --[[!AUTO_1307]]"开",	}    ,
	[8]		=	{	showname = --[[!AUTO_1308]]"钓",	}    ,
	[9]		=	{	showname = --[[!AUTO_1309]]"烧",	}    ,
	[10]	=	{	showname = --[[!AUTO_1310]]"种",	}    ,
	[11]	=	{	showname = --[[!AUTO_1311]]"插",	}    ,
	[12]	=	{	showname = --[[!AUTO_1312]]"推",	}    ,
	[13]	=	{	showname = --[[!AUTO_1313]]"踩",	}    ,
	[14]	=	{	showname = --[[!AUTO_1314]]"读",	}    ,
	[15]	=	{	showname = --[[!AUTO_1315]]"写画",	}	,
	[16]	=	{	showname = --[[!AUTO_1316]]"爬",	}    ,
}

--烹饪食物描述
FOOD_RESTORE_DESC = {
	[1] = --[[!AUTO_1317]]"^FFFFFF每2秒恢复%d点气血，持续使用12秒之后，获得饱食状态，增加%d点外攻攻击和%d点外攻防御，持续30分钟。",
	[2] = --[[!AUTO_1318]]"^FFFFFF每2秒恢复%d点内力，持续使用满12秒之后，获得满饮状态，增加%d点内攻攻击和%d点内攻防御，持续30分钟。",
	[3] = --[[!AUTO_1319]]"^FFFFFF每2秒恢复%d点气血和%d点内力，持续使用12秒之后，获得酒足饭饱状态，增加%d点外攻攻击，%d点内攻攻击，%d点外攻防御，%d点内攻防御，持续30分钟。",
}

--丹丸描述
HEALER_RESTORE_DESC =
{
	[1] = --[[!AUTO_1320]]"^FFFFFF持续3秒, 共回复%d点血气和%d点内力。"
}

HEALER_TEMPLIST_SIMPLE_DESC = {}
	HEALER_TEMPLIST_SIMPLE_DESC[8888] = "^FFFFFF持续30分钟, 增加100点体力。"

HEALER_TEMPLIST_DESC = {}
	HEALER_TEMPLIST_DESC[2820] = {}
	HEALER_TEMPLIST_DESC[2820][1] = {440, 360}
	HEALER_TEMPLIST_DESC[2820][2] = {870, 720}
	HEALER_TEMPLIST_DESC[2820][3] = {1300, 1080}
	HEALER_TEMPLIST_DESC[2820][4] = {1730, 1440}
	HEALER_TEMPLIST_DESC[2820][5] = {2160, 1800}
	HEALER_TEMPLIST_DESC[2820][6] = {2600, 2160}
	HEALER_TEMPLIST_DESC[2820][7] = {3030, 2520}
	HEALER_TEMPLIST_DESC[2820][8] = {3460, 2880}
	HEALER_TEMPLIST_DESC[2820][9] = {3890, 3240}
	HEALER_TEMPLIST_DESC[2820][10] = {4320, 3600}
	HEALER_TEMPLIST_DESC[2820][11] = {4760, 3960}
	HEALER_TEMPLIST_DESC[2820][12] = {5190, 4320}
	HEALER_TEMPLIST_DESC[2820][13] = {5620, 4680}
	HEALER_TEMPLIST_DESC[2820][14] = {6050, 5040}
	HEALER_TEMPLIST_DESC[2820][15] = {6480, 5400}
	HEALER_TEMPLIST_DESC[2820][16] = {6920, 5760}
	HEALER_TEMPLIST_DESC[2820][17] = {7350, 6120}
	HEALER_TEMPLIST_DESC[2820][18] = {7780, 6480}
	HEALER_TEMPLIST_DESC[2820][19] = {8210, 6840}
	HEALER_TEMPLIST_DESC[2820][20] = {8640, 7200}

	HEALER_TEMPLIST_DESC[2821] = {}
	HEALER_TEMPLIST_DESC[2821][1] = {550, 460}
	HEALER_TEMPLIST_DESC[2821][2] = {1090, 910}
	HEALER_TEMPLIST_DESC[2821][3] = {1630, 1360}
	HEALER_TEMPLIST_DESC[2821][4] = {2170, 1810}
	HEALER_TEMPLIST_DESC[2821][5] = {2710, 2260}
	HEALER_TEMPLIST_DESC[2821][6] = {3250, 2710}
	HEALER_TEMPLIST_DESC[2821][7] = {3790, 3160}
	HEALER_TEMPLIST_DESC[2821][8] = {4330, 3610}
	HEALER_TEMPLIST_DESC[2821][9] = {4870, 4060}
	HEALER_TEMPLIST_DESC[2821][10] = {5410, 4510}
	HEALER_TEMPLIST_DESC[2821][11] = {5950, 4960}
	HEALER_TEMPLIST_DESC[2821][12] = {6490, 5410}
	HEALER_TEMPLIST_DESC[2821][13] = {7030, 5860}
	HEALER_TEMPLIST_DESC[2821][14] = {7570, 6310}
	HEALER_TEMPLIST_DESC[2821][15] = {8110, 6760}
	HEALER_TEMPLIST_DESC[2821][16] = {8650, 7210}
	HEALER_TEMPLIST_DESC[2821][17] = {9190, 7660}
	HEALER_TEMPLIST_DESC[2821][18] = {9730, 8110}
	HEALER_TEMPLIST_DESC[2821][19] = {10270, 8560}
	HEALER_TEMPLIST_DESC[2821][20] = {10810, 9010}

	HEALER_TEMPLIST_DESC[2822] = {}
	HEALER_TEMPLIST_DESC[2822][1] = {660, 220}
	HEALER_TEMPLIST_DESC[2822][2] = {1300, 433}
	HEALER_TEMPLIST_DESC[2822][3] = {1950, 650}
	HEALER_TEMPLIST_DESC[2822][4] = {2600, 867}
	HEALER_TEMPLIST_DESC[2822][5] = {3250, 1083}
	HEALER_TEMPLIST_DESC[2822][6] = {3900, 1300}
	HEALER_TEMPLIST_DESC[2822][7] = {4540, 1513}
	HEALER_TEMPLIST_DESC[2822][8] = {5190, 1730}
	HEALER_TEMPLIST_DESC[2822][9] = {5840, 1947}
	HEALER_TEMPLIST_DESC[2822][10] = {6490, 2163}
	HEALER_TEMPLIST_DESC[2822][11] = {7140, 2380}
	HEALER_TEMPLIST_DESC[2822][12] = {7780, 2593}
	HEALER_TEMPLIST_DESC[2822][13] = {8430, 2810}
	HEALER_TEMPLIST_DESC[2822][14] = {9080, 3027}
	HEALER_TEMPLIST_DESC[2822][15] = {9730, 3243}
	HEALER_TEMPLIST_DESC[2822][16] = {10380, 3460}
	HEALER_TEMPLIST_DESC[2822][17] = {11020, 3673}
	HEALER_TEMPLIST_DESC[2822][18] = {11670, 3890}
	HEALER_TEMPLIST_DESC[2822][19] = {12320, 4107}
	HEALER_TEMPLIST_DESC[2822][20] = {12970, 4323}


--资质相关描述

TEXT_APPLITITUE_0 = --[[!AUTO_1321]]"未激活"
TEXT_APPLITITUE_1 = --[[!AUTO_1322]]"已激活"
TEXT_APPLITITUE_LEVEL = --[[!AUTO_1323]]"第%d级"

TEXT_APPLITITUE_TYPE = {}
TEXT_APPLITITUE_TYPE[1] = --[[!AUTO_1324]]"属性强化"
TEXT_APPLITITUE_TYPE[2] = --[[!AUTO_1325]]"防具专精"
TEXT_APPLITITUE_TYPE[3] = --[[!AUTO_1326]]"门派特性"

TEXT_APPLITITUE_TYPE_DEFAULT = --[[!AUTO_1327]]"通用"

TEXT_APPLITITUE_EFFECT = {}
TEXT_APPLITITUE_EFFECT[1] = --[[!AUTO_1328]]"%s属性：%s\r\r%s"
TEXT_APPLITITUE_EFFECT[2] = --[[!AUTO_1329]]"%s专精：%s\r\r%s"
TEXT_APPLITITUE_EFFECT[3] = --[[!AUTO_1330]]"%s特性：%s\r\r%s"

TEXT_APPLITITUE_EFFECT_DEFAULT = --[[!AUTO_1331]]""

TEXT_APPLITITUTE_ATTRIBUTE = {}
TEXT_APPLITITUTE_ATTRIBUTE[1] = --[[!AUTO_1332]]"力道"
TEXT_APPLITITUTE_ATTRIBUTE[2] = --[[!AUTO_1333]]"体魄"
TEXT_APPLITITUTE_ATTRIBUTE[3] = --[[!AUTO_1334]]"筋骨"
TEXT_APPLITITUTE_ATTRIBUTE[4] = --[[!AUTO_1335]]"气海"
TEXT_APPLITITUTE_ATTRIBUTE[5] = --[[!AUTO_1336]]"内劲"
TEXT_APPLITITUTE_ATTRIBUTE[6] = --[[!AUTO_1337]]"属性6"
TEXT_APPLITITUTE_ATTRIBUTE[7] = --[[!AUTO_1338]]"属性6"
TEXT_APPLITITUTE_ATTRIBUTE[8] = --[[!AUTO_1339]]"属性6"

TEXT_APPLITITUTE_ATTRIBUTE_DEFAULT = --[[!AUTO_1340]]"属性"

TEXT_APPLITITUTE_MASTERMIZE = {}
TEXT_APPLITITUTE_MASTERMIZE[204] = --[[!AUTO_1341]]"作战时如果穿着棉甲，\r可以提升护甲值和气血值"
TEXT_APPLITITUTE_MASTERMIZE[205] = --[[!AUTO_1342]]"作战时如果穿着袍衫，\r可以提升内功攻击和内功防御"
TEXT_APPLITITUTE_MASTERMIZE[206] = --[[!AUTO_1343]]"作战时如果穿着棉甲，\r可以提升护甲值和内力值"
TEXT_APPLITITUTE_MASTERMIZE[207] = --[[!AUTO_1344]]"作战时如果穿着袍衫，\r可以提升内功防御和气血值"
TEXT_APPLITITUTE_MASTERMIZE[208] = --[[!AUTO_1345]]"作战时如果穿着皮衣，\r可以提升攻击力和外功暴击率"
TEXT_APPLITITUTE_MASTERMIZE[209] = --[[!AUTO_1346]]"作战时如果穿着袍衫，\r可以提升内攻强度和护甲值"
TEXT_APPLITITUTE_MASTERMIZE[210] = --[[!AUTO_1347]]"作战时如果穿着袍衫，\r可以提升攻击力和内功抵御"
TEXT_APPLITITUTE_MASTERMIZE[211] = --[[!AUTO_1348]]"作战时如果穿着皮衣，\r可以提升护甲值和内力值"
TEXT_APPLITITUTE_MASTERMIZE[212] = --[[!AUTO_1349]]"作战时如果穿着袍衫，\r可以提升攻击力和外功暴击伤害"
TEXT_APPLITITUTE_MASTERMIZE[213] = --[[!AUTO_1350]]"作战时如果穿着皮衣，\r可以提升攻击力和内攻强度"
TEXT_APPLITITUTE_MASTERMIZE[214] = --[[!AUTO_1351]]"作战时如果穿着皮衣，\r可以提升攻击力和护甲值"
TEXT_APPLITITUTE_MASTERMIZE[215] = --[[!AUTO_1352]]"作战时如果穿着棉甲，\r可以提升内攻强度和气血值"
TEXT_APPLITITUTE_MASTERMIZE[216] = --[[!AUTO_1353]]"作战时如果穿着袍衫，\r可以提升气血值和外功暴击率"
TEXT_APPLITITUTE_MASTERMIZE[217] = --[[!AUTO_1354]]"作战时如果穿着棉甲，\r可以提升内攻强度和护甲值"
TEXT_APPLITITUTE_MASTERMIZE[218] = --[[!AUTO_1355]]"作战时如果穿着袍衫，\r可以提升攻击力和护甲值"
TEXT_APPLITITUTE_MASTERMIZE[219] = --[[!AUTO_1356]]"作战时如果穿着皮甲，\r可以提升护甲值和内功暴击率"
TEXT_APPLITITUTE_MASTERMIZE[220] = --[[!AUTO_1357]]"作战时如果穿着皮甲，\r可以提升护甲值和气血值"
TEXT_APPLITITUTE_MASTERMIZE[221] = --[[!AUTO_1358]]"作战时如果穿着棉甲，\r可以提升内攻强度和内力值"
TEXT_APPLITITUTE_MASTERMIZE[222] = --[[!AUTO_1359]]"作战时如果穿着棉甲，\r可以提升攻击力和内力值"
TEXT_APPLITITUTE_MASTERMIZE[223] = --[[!AUTO_1360]]"作战时如果穿着袍衫，\r可以提升内攻强度和内功暴击伤害"
TEXT_APPLITITUTE_MASTERMIZE[1602] = --[[!AUTO_1361]]"作战时如果穿着皮衣，\r可以提升外功暴击率和外功暴击伤害"
TEXT_APPLITITUTE_MASTERMIZE[1603] = --[[!AUTO_1362]]"作战时如果穿着袍衫，\r可以提升内攻修为和内功抵御"

TEXT_APPLITITUTE_MASTERMIZE_DEFAULT = --[[!AUTO_1363]]"未知效果"

TEXT_APPLITITUTE_LEVEL_TOACTIVE = --[[!AUTO_1364]]"%s资质激活需求：%s达到%d"
TEXT_APPLITITUTE_LEVEL_TOACTIVE_DOUBLE = --[[!AUTO_1365]]"%s资质激活需求：%s达到%d，%s达到%d"
TEXT_APPLITITUTE_LEVEL_TOLEVELUP = --[[!AUTO_1366]]"%s第%d级需要：%s达到%d"
TEXT_APPLITITUTE_LEVEL_TOLEVELUP_DOUBLE = --[[!AUTO_1367]]"%s第%d级需要：%s达到%d，%s达到%d"
TEXT_APPLITITUTE_LEVEL_ACTIVED = --[[!AUTO_1368]]"%s资质已经激活"
TEXT_APPLITITUTE_LEVEL_FULL = --[[!AUTO_1369]]"%s资质效果已经满级"
TEXT_APPLITITUTE_LEVEL_BREAKLIMIT = --[[!AUTO_1370]]"%s资质效果已经突破上限"

TEXT_EFFECTGROUP_MULTILINE_TYPE ={}
TEXT_EFFECTGROUP_MULTILINE_TYPE[1] = --[[!AUTO_1371]]"\r　　　"
TEXT_EFFECTGROUP_MULTILINE_TYPE[2] = --[[!AUTO_1372]]"、"

TEXT_EFFECTGROUP_MULTILINE_TYPE_DEFAULT = --[[!AUTO_1373]]"\r"

--技能属性说明

skill_ADDON_DESC = --[[!AUTO_1374]]"『%s』%s+%d"

--技能属性职业代码

skill_ADDON_DESC_class = {}
skill_ADDON_DESC_class[1] = --[[!AUTO_1375]]"新手"
skill_ADDON_DESC_class[2] = --[[!AUTO_1376]]"少林"
skill_ADDON_DESC_class[4] = --[[!AUTO_1377]]"武当"
skill_ADDON_DESC_class[8] = --[[!AUTO_1378]]"华山"
skill_ADDON_DESC_class[16] = --[[!AUTO_1379]]"恒山"
skill_ADDON_DESC_class[32] = --[[!AUTO_1380]]"衡山"
skill_ADDON_DESC_class[64] = --[[!AUTO_1381]]"日月"
skill_ADDON_DESC_class[128] = --[[!AUTO_1382]]"五仙"
skill_ADDON_DESC_class[256] = --[[!AUTO_1383]]"逍遥"
skill_ADDON_DESC_class[512] = --[[!AUTO_1384]]"唐门"
skill_ADDON_DESC_class[1024] = --[[!AUTO_1385]]"峨嵋"
skill_ADDON_DESC_class[2048] = --[[!AUTO_1386]]"独孤"
skill_ADDON_DESC_class[4096] = --[[!AUTO_1386]]"玲珑"
skill_ADDON_DESC_class[8192] = --[[!AUTO_1386]]"东华"
skill_ADDON_DESC_class[-1] = --[[!AUTO_1386]]""
--13(典藉

--普通物品类型

NORMAL_ITEM_TYPE_DESC = {}
NORMAL_ITEM_TYPE_DESC[0] = {type_desc = --[[!AUTO_1387]]"普通物品",use_desc = --[[!AUTO_1388]]""}--未知普通物品

NORMAL_ITEM_TYPE_DESC[1] = {type_desc = --[[!AUTO_1389]]"普通物品",use_desc = --[[!AUTO_1390]]""}--NPC出售普通物品

NORMAL_ITEM_TYPE_DESC[2] = {type_desc = --[[!AUTO_1391]]"普通物品",use_desc = --[[!AUTO_1392]]""}--按谱系掉落的普通物品

NORMAL_ITEM_TYPE_DESC[3] = {type_desc = --[[!AUTO_1393]]"门徒物品",use_desc = --[[!AUTO_1394]]""}--门徒捕捉技能升级所需道具
NORMAL_ITEM_TYPE_DESC[4] = {type_desc = --[[!AUTO_1395]]"门徒物品",use_desc = --[[!AUTO_1396]]""}--门徒捕捉消耗物品

NORMAL_ITEM_TYPE_DESC[5] = {type_desc = --[[!AUTO_1397]]"普通物品",use_desc = --[[!AUTO_1398]]""}--门徒掉落的普通物品

NORMAL_ITEM_TYPE_DESC[6] = {type_desc = --[[!AUTO_1399]]"门徒物品",use_desc = --[[!AUTO_1400]]""}--门徒服务涉及的物品

NORMAL_ITEM_TYPE_DESC[7] = {type_desc = --[[!AUTO_1401]]"地宫物品",use_desc = --[[!AUTO_1402]]""}--地宫物品
NORMAL_ITEM_TYPE_DESC[8] = {type_desc = --[[!AUTO_1403]]"帮派物品",use_desc = --[[!AUTO_1404]]""}--帮派相关
NORMAL_ITEM_TYPE_DESC[9] = {type_desc = --[[!AUTO_1405]]"结义物品",use_desc = --[[!AUTO_1406]]""}--结拜相关
NORMAL_ITEM_TYPE_DESC[10] = {type_desc = --[[!AUTO_1407]]"结婚物品",use_desc = --[[!AUTO_1408]]""}--结婚相关
NORMAL_ITEM_TYPE_DESC[11] = {type_desc = --[[!AUTO_1409]]"门派物品",use_desc = --[[!AUTO_1410]]""}--门派物品
NORMAL_ITEM_TYPE_DESC[12] = {type_desc = --[[!AUTO_1411]]"生产工具",use_desc = --[[!AUTO_1412]]""}--生产工具
NORMAL_ITEM_TYPE_DESC[13] = {type_desc = --[[!AUTO_1413]]"打孔物品",use_desc = --[[!AUTO_1414]]"使用：装备打孔时消耗"}--装备打孔物品
NORMAL_ITEM_TYPE_DESC[14] = {type_desc = --[[!AUTO_1415]]"取宝石物品",use_desc = --[[!AUTO_1416]]"使用：装备取宝石时消耗"}--装备取宝石物品

NORMAL_ITEM_TYPE_DESC[15] = {type_desc = --[[!AUTO_1417]]"解封石",use_desc = --[[!AUTO_1418]]"使用：装备解封时消耗"}--解封符

NORMAL_ITEM_TYPE_DESC[16] = {type_desc = --[[!AUTO_1419]]"引灵石",use_desc = --[[!AUTO_1420]]""}--解封石合成材料

NORMAL_ITEM_TYPE_DESC[17] = {type_desc = --[[!AUTO_1421]]"开光石",use_desc = --[[!AUTO_1422]]"使用：装备开光时消耗"}--装备开光物品

NORMAL_ITEM_TYPE_DESC[18] = {type_desc = --[[!AUTO_1423]]"强化石",use_desc = --[[!AUTO_1424]]"使用：装备强化时消耗"}--装备强化物品
NORMAL_ITEM_TYPE_DESC[19] = {type_desc = --[[!AUTO_1425]]"刑具",use_desc = --[[!AUTO_1426]]"用途：拷问人质时消耗"}--装备强化物品
NORMAL_ITEM_TYPE_DESC[20] = {type_desc = --[[!AUTO_1427]]"山寨信物",use_desc = --[[!AUTO_1428]]"用途：在刺虎楼换取奖励"}--装备强化物品
NORMAL_ITEM_TYPE_DESC[21] = {type_desc = --[[!AUTO_1429]]"杂物",use_desc = --[[!AUTO_1430]]"用途：出售给商人换取金钱"}--每只怪对应的奇物
NORMAL_ITEM_TYPE_DESC[22] = {type_desc =--[[!AUTO_3168]]"生产幸运剂",use_desc = --[[!AUTO_3169]]""}--生产幸运剂
NORMAL_ITEM_TYPE_DESC[23] = {type_desc =--[[!AUTO_3168]]"分解符",use_desc = --[[!AUTO_3169]]"使用：装备分解时消耗"}--生产幸运剂
NORMAL_ITEM_TYPE_DESC[24] = {type_desc =--[[!AUTO_3168]]"注入符",use_desc = --[[!AUTO_3169]]"使用：装备注入时消耗"}--生产幸运剂
--差事名称对应表

ERRAND_NAME_LIST = {}
ERRAND_NAME_LIST[643] = --[[!AUTO_1431]]"门徒基础"
ERRAND_NAME_LIST[644] = --[[!AUTO_1432]]"门徒培养"
ERRAND_NAME_LIST[645] = --[[!AUTO_1433]]"门徒增益"
ERRAND_NAME_LIST[646] = --[[!AUTO_1434]]"社交基础"
ERRAND_NAME_LIST[647] = --[[!AUTO_1435]]"社交导师"
ERRAND_NAME_LIST[648] = --[[!AUTO_1436]]"社交乐师"
ERRAND_NAME_LIST[649] = --[[!AUTO_1437]]"手工基础"
ERRAND_NAME_LIST[650] = --[[!AUTO_1438]]"手工金石"
ERRAND_NAME_LIST[651] = --[[!AUTO_1439]]"手工布帛"
ERRAND_NAME_LIST[652] = --[[!AUTO_1440]]"手工木革"
ERRAND_NAME_LIST[653] = --[[!AUTO_1441]]"治疗基础"
ERRAND_NAME_LIST[654] = --[[!AUTO_1442]]"治疗养生"
ERRAND_NAME_LIST[655] = --[[!AUTO_1443]]"治疗药师"

ERRAND_NAME_DEFAULT = --[[!AUTO_1444]]"未知差事"

--特殊任务名称列表
SPECIAL_TASK_NAME_LIST = {}
SPECIAL_TASK_NAME_LIST[1] = --[[!AUTO_1445]]"基础任务"

SPECIAL_TASK_NAME_DEFAULT = --[[!AUTO_1446]]"未知任务"

--声望配置
REPUTATION_NAME_DEFAULT = --[[!AUTO_1447]]"未知声望"

--任务类型奖励提升（基础数上加1）

SPECIAL_TASK_REWARD_LIST = {}
SPECIAL_TASK_REWARD_LIST[1] = --[[!AUTO_1448]]"门派"
SPECIAL_TASK_REWARD_LIST[2] = --[[!AUTO_1449]]"帮派"

SPECIAL_TASK_REWARD_DEFAULT = --[[!AUTO_1450]]"未知类型"

--生产类型
PRODUCE_TYPE_DEFAULT = --[[!AUTO_1451]]"未知生产"

--签名情况
SIGNATURE_TYPE_STRING = {}
SIGNATURE_TYPE_STRING[1] = --[[!AUTO_1452]]"普通"
SIGNATURE_TYPE_STRING[2] = --[[!AUTO_1453]]"专家"

SIGNATURE_TYPE_DEFAULT = --[[!AUTO_1454]]"未知签名"

--门徒普攻情况
DISCIPLE_ATTACK_PHASE = {}
DISCIPLE_ATTACK_PHASE[1] = --[[!AUTO_1455]]"，激活二连击"
DISCIPLE_ATTACK_PHASE[2] = --[[!AUTO_1456]]"，激活三连击"

DISCIPLE_ATTACK_PHASE_DEFAULT = --[[!AUTO_1457]]""

--怪物名字颜色
MONSTER_COLOR_DESC = {}
MONSTER_COLOR_DESC[1] = --[[!AUTO_1458]]"^FFFFFF"	--	白色
MONSTER_COLOR_DESC[2] = --[[!AUTO_1459]]"^3485FF"	--	蓝

MONSTER_COLOR_DESC[3] = --[[!AUTO_1460]]"^CE58FF"	--	紫

MONSTER_COLOR_DESC[4] = --[[!AUTO_1461]]"^FFD200"	--	黄


MONSTER_COLOR_DESC_DEFAULT = --[[!AUTO_1462]]"^FFFFFF"	--	白色

--怪物类型
MONSTER_TYPE_STYLE = --[[!AUTO_1463]]"类型：%s"

MONSTER_TYPE_DESC = {}
MONSTER_TYPE_DESC[1] = --[[!AUTO_1464]]"人形"
MONSTER_TYPE_DESC[2] = --[[!AUTO_1465]]"野兽"
MONSTER_TYPE_DESC[3] = --[[!AUTO_1466]]"机关"
MONSTER_TYPE_DESC[4] = --[[!AUTO_1467]]"鬼怪"
MONSTER_TYPE_DESC[5] = --[[!AUTO_1468]]"植物"
MONSTER_TYPE_DESC[6] = --[[!AUTO_1469]]"神兽"

MONSTER_LEVEL_STYLE = --[[!AUTO_1470]]"%s\r等级：%s"

MONSTER_TYPE_HUMAN_STYLE = --[[!AUTO_1471]]"%s\r江湖评价：%s"

MONSTER_TYPE_HUMAN_DESC = {}
MONSTER_TYPE_HUMAN_DESC[1] = --[[!AUTO_1472]]""
MONSTER_TYPE_HUMAN_DESC[2] = --[[!AUTO_1473]]""
MONSTER_TYPE_HUMAN_DESC[3] = --[[!AUTO_1474]]""
MONSTER_TYPE_HUMAN_DESC[4] = --[[!AUTO_1475]]""
MONSTER_TYPE_HUMAN_DESC[5] = --[[!AUTO_1476]]""
MONSTER_TYPE_HUMAN_DESC[6] = --[[!AUTO_1477]]""
MONSTER_TYPE_HUMAN_DESC[7] = --[[!AUTO_1478]]""
MONSTER_TYPE_HUMAN_DESC[8] = --[[!AUTO_1479]]""
MONSTER_TYPE_HUMAN_DESC[9] = --[[!AUTO_1480]]""
MONSTER_TYPE_HUMAN_DESC[10] = --[[!AUTO_1481]]""

MONSTER_TYPE_HUMAN_DESC_DEFAULT = --[[!AUTO_1482]]""

MONSTER_COMMON_DESC = {}

MONSTER_COMMON_DESC[3461] = --[[!AUTO_1483]]"山寨中最不缺少的小喽啰。会几招江湖剑法，偶尔会舞两手。"
MONSTER_COMMON_DESC[3466] = --[[!AUTO_1484]]"梅关寨子中靠混混起来的小头目。说是头目，其实和普通怪物没什么两样。"
MONSTER_COMMON_DESC[3467] = --[[!AUTO_1485]]"穿山甲\r野兽普通怪物\r散布在梅关的各处的动物。善打洞。"
MONSTER_COMMON_DESC[3468] = --[[!AUTO_1486]]"山寨中最不缺少的小喽啰。会几招江湖枪法，性格谨慎，是梅寨的中坚力量。"
MONSTER_COMMON_DESC[3470] = --[[!AUTO_1487]]"弯角野牛分布于梅关古道中部，散漫，性格温和，但是一道激怒，会使用双角给敌人狠狠的攻击。"
MONSTER_COMMON_DESC[3472] = --[[!AUTO_1488]]"山寨中的小喽啰。剑法比较顺，战斗力较喽啰高一点，但是剑术和其他小喽啰没什么不同。"
MONSTER_COMMON_DESC[3473] = --[[!AUTO_1489]]"山寨中的小喽啰。枪法比较熟练，战斗力较喽啰高一点，但是枪招和其他小喽啰没什么大的差别。"
MONSTER_COMMON_DESC[3474] = --[[!AUTO_1490]]"梅庄强盗大当家，善使一根狼牙棒，一式风卷残云用得甚是漂亮。"
MONSTER_COMMON_DESC[4857] = --[[!AUTO_1491]]"梅庄中最有战斗力的一伙人。属于随时都可以卖命的心腹。"
MONSTER_COMMON_DESC[3475] = --[[!AUTO_1492]]"梅庄中工夫最烂的一批人，但同时也是战斗力最高的一批人。原因无他。工具好用。"
MONSTER_COMMON_DESC[6052] = --[[!AUTO_1493]]"少见的反手剑，刺和扎用得相当好。不知为何在武当上一带活动。"

MONSTER_SKILL_DESC = {}

MONSTER_SKILL_DESC[3461] = --[[!AUTO_1494]]"裂石斩：2段重攻击的剑法。"
MONSTER_SKILL_DESC[3466] = --[[!AUTO_1495]]"扫叶剑：攻击的时候能下盘闪避的招式。"
MONSTER_SKILL_DESC[3467] = --[[!AUTO_1496]]"鳞片：全身覆盖的鳞片可以减少其受到的外功伤害。\r酸液：穿山甲的舌头上带有酸液，可以腐蚀目标造成护甲值降低。"
MONSTER_SKILL_DESC[3468] = --[[!AUTO_1497]]"回马枪：模仿名枪术回马枪的招式，象模象样的，威力还行。"
MONSTER_SKILL_DESC[3470] = --[[!AUTO_1498]]"力大无穷：几乎所有的功能都能把破绽状态下的目标挑飞或者撞倒。"
MONSTER_SKILL_DESC[3472] = --[[!AUTO_1499]]"裂石斩：2段重攻击的剑法。"
MONSTER_SKILL_DESC[3473] = --[[!AUTO_1500]]"回马枪：模仿名枪术回马枪的招式，威力很大。"
MONSTER_SKILL_DESC[3474] = --[[!AUTO_1501]]"风卷残云：对前方扇型范围做横扫攻击，能打飞破绽状态下的目标。\r混沌开天：使用狼牙棒狠砸前方，造成相当大的伤害。"
MONSTER_SKILL_DESC[4857] = --[[!AUTO_1502]]"裂石斩：2段重攻击的剑法。"
MONSTER_SKILL_DESC[3475] = --[[!AUTO_1503]]"连环踢：把近身的目标踢退的防身腿法。"
MONSTER_SKILL_DESC[6052] = --[[!AUTO_1504]]"背刺：用剑拥有天生的5%致命一击几率。"
----------------------------道具收购描述----------------------------
ITEM_PURCHASE_TEXT =
{
	--测试收购1
	[68] =		{
			[5486] = {--[[!AUTO_1505]]"收购1未满文字", --[[!AUTO_1506]]"收购1已满文字"},
			[25659] = {--[[!AUTO_1507]]"收购2未满文字", --[[!AUTO_1508]]"收购2已满文字"},
			[25669] = {--[[!AUTO_1509]]"收购3未满文字", --[[!AUTO_1510]]"收购3已满文字"},
			},
	--测试收购2
	[29232] =	{
			[5486] = {--[[!AUTO_1511]]"收购1未满文字", --[[!AUTO_1512]]"收购1已满文字"},
			},
	--差事路人收购1
	[29601] =	{
			[28965] = {--[[!AUTO_1513]]"75铜钱，1点好评", --[[!AUTO_1514]]"这把折扇我很满意"},
                        [29057] = {--[[!AUTO_1515]]"50铜钱，3点好评", --[[!AUTO_1516]]"我不需要这个东西了"},
			[29060] = {--[[!AUTO_1517]]"250铜钱", --[[!AUTO_1518]]"我不需要这个东西了"},
			},
	--差事路人收购2
	[29602] =	{
			[29048] = {--[[!AUTO_1519]]"120铜钱，1点好评", --[[!AUTO_1520]]"这个马鞍我很满意"},
                        [29057] = {--[[!AUTO_1521]]"50铜钱，3点好评", --[[!AUTO_1522]]"我不需要这个东西了"},
			[29060] = {--[[!AUTO_1523]]"250铜钱", --[[!AUTO_1524]]"我不需要这个东西了"},
			},
	--差事路人收购3
	[29603] =	{
			[29058] = {--[[!AUTO_1525]]"75铜钱，1点好评", --[[!AUTO_1526]]"这本秘籍我很满意"},
                        [29057] = {--[[!AUTO_1527]]"50铜钱，3点好评", --[[!AUTO_1528]]"我不需要这个东西了"},
			[29060] = {--[[!AUTO_1529]]"250铜钱", --[[!AUTO_1530]]"我不需要这个东西了"},
			},
	--差事路人收购4
	[29604] =	{
			[29059] = {--[[!AUTO_1531]]"120铜钱，1点好评", --[[!AUTO_1532]]"这个秘药我很满意"},
                        [29057] = {--[[!AUTO_1533]]"50铜钱，3点好评", --[[!AUTO_1534]]"我不需要这个东西了"},
			[29060] = {--[[!AUTO_1535]]"250铜钱", --[[!AUTO_1536]]"我不需要这个东西了"},
			},
	--差事路人收购5
	[29605] =	{
			[29061] = {--[[!AUTO_1537]]"75铜钱，1点好评", --[[!AUTO_1538]]"这杯茶水我很满意"},
                        [29057] = {--[[!AUTO_1539]]"50铜钱，3点好评", --[[!AUTO_1540]]"我不需要这个东西了"},
			[29060] = {--[[!AUTO_1541]]"250铜钱", --[[!AUTO_1542]]"我不需要这个东西了"},
			},
	--差事路人收购6
	[29606] =	{
			[29062] = {--[[!AUTO_1543]]"120铜钱，1点好评", --[[!AUTO_1544]]"这块糕点我很满意"},
                        [29057] = {--[[!AUTO_1545]]"50铜钱，3点好评", --[[!AUTO_1546]]"我不需要这个东西了"},
			[29060] = {--[[!AUTO_1547]]"250铜钱", --[[!AUTO_1548]]"我不需要这个东西了"},
			},
	--差事富翁收购1
	[29607] =	{
			[28965] = {--[[!AUTO_1549]]"240铜钱", --[[!AUTO_1550]]"这些折扇我很满意"},
			},
	--差事富翁收购2
	[29608] =	{
			[29048] = {--[[!AUTO_1551]]"375铜钱", --[[!AUTO_1552]]"这些马鞍我很满意"},
			},
	--差事富翁收购3
	[29609] =	{
			[29058] = {--[[!AUTO_1553]]"240铜钱", --[[!AUTO_1554]]"这些秘籍我很满意"},
			},
	--差事富翁收购4
	[29610] =	{
			[29059] = {--[[!AUTO_1555]]"375铜钱", --[[!AUTO_1556]]"这些秘药我很满意"},
			},
	--差事富翁收购5
	[29611] =	{
			[29061] = {--[[!AUTO_1557]]"240铜钱", --[[!AUTO_1558]]"这些茶水我很满意"},
			},
	--差事富翁收购6
	[29612] =	{
			[29062] = {--[[!AUTO_1559]]"375铜钱", --[[!AUTO_1560]]"这些糕点我很满意"},
			},
        --帮派采集活动收购1-1
	[39196] =	{
			[30967] = {--[[!AUTO_1561]]"帮派需求", --[[!AUTO_1562]]"再接再厉"},
			},
        --帮派采集活动收购1-2
	[39197] =	{
			[30968] = {--[[!AUTO_1563]]"帮派需求", --[[!AUTO_1564]]"再接再厉"},
			},
        --帮派采集活动收购1-3
	[39198] =	{
			[30969] = {--[[!AUTO_1565]]"帮派需求", --[[!AUTO_1566]]"再接再厉"},
			},
        --帮派采集活动收购2-1
	[31675] =	{
			[31726] = {--[[!AUTO_1567]]"帮派需求", --[[!AUTO_1568]]"再接再厉"},
			},
        --帮派采集活动收购2-2
	[31676] =	{
			[31727] = {--[[!AUTO_1569]]"帮派需求", --[[!AUTO_1570]]"再接再厉"},
			},
        --帮派采集活动收购2-3
	[31677] =	{
			[31728] = {--[[!AUTO_1571]]"帮派需求", --[[!AUTO_1572]]"再接再厉"},
			},
        --帮派采集活动收购3-1
	[31678] =	{
			[31729] = {--[[!AUTO_1573]]"帮派需求", --[[!AUTO_1574]]"再接再厉"},
			},
        --帮派采集活动收购3-2
	[31679] =	{
			[31730] = {--[[!AUTO_1575]]"帮派需求", --[[!AUTO_1576]]"再接再厉"},
			},
        --帮派采集活动收购3-3
	[31680] =	{
			[31731] = {--[[!AUTO_1577]]"帮派需求", --[[!AUTO_1578]]"再接再厉"},
			},
        --帮派采集活动收购4-1
	[31681] =	{
			[31732] = {--[[!AUTO_1579]]"帮派需求", --[[!AUTO_1580]]"再接再厉"},
			},
        --帮派采集活动收购4-2
	[31682] =	{
			[31733] = {--[[!AUTO_1581]]"帮派需求", --[[!AUTO_1582]]"再接再厉"},
			},
        --帮派采集活动收购4-3
	[31683] =	{
			[31734] = {--[[!AUTO_1583]]"帮派需求", --[[!AUTO_1584]]"再接再厉"},
			},
        --乞丐收购食物1
	[32871] =	{
			[18779] = {--[[!AUTO_1585]]"1点口福", --[[!AUTO_1586]]"活菩萨"},
			[18788] = {--[[!AUTO_1587]]"9点口福", --[[!AUTO_1588]]"活菩萨"},
			},
        --乞丐收购食物2
	[32872] =	{
			[18780] = {--[[!AUTO_1589]]"1点口福", --[[!AUTO_1590]]"活菩萨"},
			[18787] = {--[[!AUTO_1591]]"9点口福", --[[!AUTO_1592]]"活菩萨"},
			},
        --乞丐收购食物3
	[32873] =	{
			[18781] = {--[[!AUTO_1593]]"3点口福", --[[!AUTO_1594]]"活菩萨"},
			[18786] = {--[[!AUTO_1595]]"7点口福", --[[!AUTO_1596]]"活菩萨"},
			},
        --乞丐收购食物4
	[32874] =	{
			[18782] = {--[[!AUTO_1597]]"3点口福", --[[!AUTO_1598]]"活菩萨"},
			[18785] = {--[[!AUTO_1599]]"7点口福", --[[!AUTO_1600]]"活菩萨"},
			},
        --乞丐收购食物5
	[32875] =	{
			[18783] = {--[[!AUTO_1601]]"5点口福", --[[!AUTO_1602]]"活菩萨"},
			[18784] = {--[[!AUTO_1603]]"5点口福", --[[!AUTO_1604]]"活菩萨"},
			},
		--秘境挑战证书回收
	[45576] =	{
			[29737] = {--[[!AUTO_1605]]"1两银票",--[[!AUTO_1606]]"暂时不收了"},
			[29738] = {--[[!AUTO_1607]]"1两银票",--[[!AUTO_1608]]"暂时不收了"},
			[29739] = {--[[!AUTO_1609]]"1两银票",--[[!AUTO_1610]]"暂时不收了"},
			[29740] = {--[[!AUTO_1611]]"1两银票",--[[!AUTO_1612]]"暂时不收了"},
			[29741] = {--[[!AUTO_1613]]"1两银票",--[[!AUTO_1614]]"暂时不收了"},
			},
			--秘境挑战证书回收2
	[60052] =	{
			[29742] = {--[[!AUTO_1615]]"1两银票",--[[!AUTO_1616]]"暂时不收了"},
			[29743] = {--[[!AUTO_1617]]"1两银票",--[[!AUTO_1618]]"暂时不收了"},
			[29744] = {--[[!AUTO_1619]]"1两银票",--[[!AUTO_1620]]"暂时不收了"},
			[29745] = {--[[!AUTO_1621]]"1两银票",--[[!AUTO_1622]]"暂时不收了"},
			[29746] = {--[[!AUTO_1623]]"1两银票",--[[!AUTO_1624]]"暂时不收了"},
			},
			--缉捕使收购
	[60606] =	{
			[59063] = {--[[!AUTO_1625]]"银票",--[[!AUTO_1626]]"暂时不收了"},
			[59064] = {--[[!AUTO_1627]]"银票",--[[!AUTO_1628]]"暂时不收了"},
			[59065] = {--[[!AUTO_1629]]"银票",--[[!AUTO_1630]]"暂时不收了"},
			},
			--缉捕使收购2
	[60967] =	{
			[59063] = {--[[!AUTO_1631]]"银票",--[[!AUTO_1632]]"暂时不收了"},
			[59064] = {--[[!AUTO_1633]]"银票",--[[!AUTO_1634]]"暂时不收了"},
			[59065] = {--[[!AUTO_1635]]"银票",--[[!AUTO_1636]]"暂时不收了"},
			},
			--缉捕使收购3
	[60968] =	{
			[59063] = {--[[!AUTO_1637]]"银票",--[[!AUTO_1638]]"暂时不收了"},
			[59064] = {--[[!AUTO_1639]]"银票",--[[!AUTO_1640]]"暂时不收了"},
			[59065] = {--[[!AUTO_1641]]"银票",--[[!AUTO_1642]]"暂时不收了"},
			},
			--缉捕使收购4
	[60969] =	{
			[59063] = {--[[!AUTO_1643]]"银票",--[[!AUTO_1644]]"暂时不收了"},
			[59064] = {--[[!AUTO_1645]]"银票",--[[!AUTO_1646]]"暂时不收了"},
			[59065] = {--[[!AUTO_1647]]"银票",--[[!AUTO_1648]]"暂时不收了"},
			},
			--缉捕使收购5
	[60972] =	{
			[59063] = {--[[!AUTO_1649]]"银票",--[[!AUTO_1650]]"暂时不收了"},
			[59064] = {--[[!AUTO_1651]]"银票",--[[!AUTO_1652]]"暂时不收了"},
			[59065] = {--[[!AUTO_1653]]"银票",--[[!AUTO_1654]]"暂时不收了"},
			},
			--缉捕使收购6
	[60973] =	{
			[59063] = {--[[!AUTO_1655]]"银票",--[[!AUTO_1656]]"暂时不收了"},
			[59064] = {--[[!AUTO_1657]]"银票",--[[!AUTO_1658]]"暂时不收了"},
			[59065] = {--[[!AUTO_1659]]"银票",--[[!AUTO_1660]]"暂时不收了"},
			},
			--缉捕使收购7
	[60974] =	{
			[59063] = {--[[!AUTO_1661]]"银票",--[[!AUTO_1662]]"暂时不收了"},
			[59064] = {--[[!AUTO_1663]]"银票",--[[!AUTO_1664]]"暂时不收了"},
			[59065] = {--[[!AUTO_1665]]"银票",--[[!AUTO_1666]]"暂时不收了"},
			},
			--缉捕使收购8
	[60975] =	{
			[59063] = {--[[!AUTO_1667]]"银票",--[[!AUTO_1668]]"暂时不收了"},
			[59064] = {--[[!AUTO_1669]]"银票",--[[!AUTO_1670]]"暂时不收了"},
			[59065] = {--[[!AUTO_1671]]"银票",--[[!AUTO_1672]]"暂时不收了"},
			},
			--缉捕使收购9
	[60976] =	{
			[59063] = {--[[!AUTO_1673]]"银票",--[[!AUTO_1674]]"暂时不收了"},
			[59064] = {--[[!AUTO_1675]]"银票",--[[!AUTO_1676]]"暂时不收了"},
			[59065] = {--[[!AUTO_1677]]"银票",--[[!AUTO_1678]]"暂时不收了"},
			},
			--宴会食材回收
	[70789] =	{
			[67434] = {--[[!AUTO_1679]]"得到什么得看运气",--[[!AUTO_1680]]"暂时不收了"},
			[67435] = {--[[!AUTO_1681]]"得到什么得看运气",--[[!AUTO_1682]]"暂时不收了"},
			[67436] = {--[[!AUTO_1683]]"得到什么得看运气",--[[!AUTO_1684]]"暂时不收了"},
			[67437] = {--[[!AUTO_1685]]"得到什么得看运气",--[[!AUTO_1686]]"暂时不收了"},
			[67438] = {--[[!AUTO_1687]]"得到什么得看运气",--[[!AUTO_1688]]"暂时不收了"},
			},
			--宴会食材回收2
	[72856] =	{
			[67439] = {--[[!AUTO_1689]]"得到什么得看运气",--[[!AUTO_1690]]"暂时不收了"},
			[67440] = {--[[!AUTO_1691]]"得到什么得看运气",--[[!AUTO_1692]]"暂时不收了"},
			[67441] = {--[[!AUTO_1693]]"得到什么得看运气",--[[!AUTO_1694]]"暂时不收了"},
			[67442] = {--[[!AUTO_1695]]"得到什么得看运气",--[[!AUTO_1696]]"暂时不收了"},
			[67443] = {--[[!AUTO_1697]]"得到什么得看运气",--[[!AUTO_1698]]"暂时不收了"},
			},
			--兑换原木
	[70846] =	{
			[70794] = {--[[!AUTO_1699]]"原木 X 1",--[[!AUTO_1700]]"暂时不收了"},
			[70790] = {--[[!AUTO_1701]]"原木 X 3",--[[!AUTO_1702]]"暂时不收了"},
			},
			--兑换石料
	[70847] =	{
			[70794] = {--[[!AUTO_1703]]"石料 X 1",--[[!AUTO_1704]]"暂时不收了"},
			[60626] = {--[[!AUTO_1705]]"石料 X 1",--[[!AUTO_1706]]"暂时不收了"},
			},
			--兑换黄泥
	[70852] =	{
			[60626] = {--[[!AUTO_1707]]"黄泥 X 3",--[[!AUTO_1708]]"暂时不收了"},
			[70790] = {--[[!AUTO_1709]]"黄泥 X 9",--[[!AUTO_1710]]"暂时不收了"},
			},
			--令狐冲
	[57368]	=
	{
		[57254] = {"奖励50点好感度", "奖励50点好感度"},
		[57255] = {"奖励100点好感度", "奖励100点好感度"},
		[77189] = {"奖励50点好感度", "奖励50点好感度"},
		[22457] = {"奖励50点好感度", "奖励50点好感度"},
		[22579] = {"奖励180点好感度", "奖励180点好感度"},
		[22569] = {"奖励280点好感度", "奖励280点好感度"},
		[22563] = {"奖励380点好感度", "奖励380点好感度"},
		[90436] = {"奖励0点好感度", "奖励0点好感度"},
	},
			--任盈盈
	[57369]	=
	{
		[57256] = {--[[!AUTO_1711]]"奖励50点好感度", --[[!AUTO_1712]]"奖励50点好感度"},
		[57257] = {--[[!AUTO_1713]]"奖励100点好感度", --[[!AUTO_1714]]"奖励100点好感度"},
		[77189] = {"奖励50点好感度", "奖励50点好感度"},
		[22457] = {"奖励50点好感度", "奖励50点好感度"},
		[22579] = {"奖励180点好感度", "奖励180点好感度"},
		[22569] = {"奖励280点好感度", "奖励280点好感度"},
		[22563] = {"奖励380点好感度", "奖励380点好感度"},
		[90433] = {"奖励0点好感度", "奖励0点好感度"},
	},
			--岳灵珊
	[57370]	=
	{
		[57258] = {--[[!AUTO_1715]]"奖励50点好感度", --[[!AUTO_1716]]"奖励50点好感度"},
		[57259] = {--[[!AUTO_1717]]"奖励100点好感度", --[[!AUTO_1718]]"奖励100点好感度"},
		[77189] = {"奖励50点好感度", "奖励50点好感度"},
		[22457] = {"奖励50点好感度", "奖励50点好感度"},
		[22579] = {"奖励180点好感度", "奖励180点好感度"},
		[22569] = {"奖励280点好感度", "奖励280点好感度"},
		[22563] = {"奖励380点好感度", "奖励380点好感度"},
		[94914] = {"奖励0点好感度", "奖励0点好感度"},
	},
			--林平之
	[57371]	=
	{
		[57260] = {--[[!AUTO_1719]]"奖励50点好感度", --[[!AUTO_1720]]"奖励50点好感度"},
		[57261] = {--[[!AUTO_1721]]"奖励100点好感度", --[[!AUTO_1722]]"奖励100点好感度"},
		[77189] = {"奖励50点好感度", "奖励50点好感度"},
		[22457] = {"奖励50点好感度", "奖励50点好感度"},
		[22579] = {"奖励180点好感度", "奖励180点好感度"},
		[22569] = {"奖励280点好感度", "奖励280点好感度"},
		[22563] = {"奖励380点好感度", "奖励380点好感度"},
		[83008] = {"奖励0点好感度", "奖励0点好感度"},
	},
			--仪琳
	[57373]	=
	{
		[57264] = {--[[!AUTO_1723]]"奖励50点好感度", --[[!AUTO_1724]]"奖励50点好感度"},
		[57265] = {--[[!AUTO_1725]]"奖励100点好感度", --[[!AUTO_1726]]"奖励100点好感度"},
		[77189] = {"奖励50点好感度", "奖励50点好感度"},
		[22457] = {"奖励50点好感度", "奖励50点好感度"},
		[22579] = {"奖励180点好感度", "奖励180点好感度"},
		[22569] = {"奖励280点好感度", "奖励280点好感度"},
		[22563] = {"奖励380点好感度", "奖励380点好感度"},
		[63211] = {"奖励0点好感度", "奖励0点好感度"},
	},
			--蓝凤凰
	[57376]	=
	{
		[57270] = {--[[!AUTO_1727]]"奖励50点好感度", --[[!AUTO_1728]]"奖励50点好感度"},
		[57271] = {--[[!AUTO_1729]]"奖励100点好感度", --[[!AUTO_1730]]"奖励100点好感度"},
		[77189] = {"奖励50点好感度", "奖励50点好感度"},
		[22457] = {"奖励50点好感度", "奖励50点好感度"},
		[22579] = {"奖励180点好感度", "奖励180点好感度"},
		[22569] = {"奖励280点好感度", "奖励280点好感度"},
		[22563] = {"奖励380点好感度", "奖励380点好感度"},
		[66137] = {"奖励0点好感度", "奖励0点好感度"},
	},
			--田伯光
	[57377]	=
	{
		[57272] = {--[[!AUTO_1731]]"奖励50点好感度", --[[!AUTO_1732]]"奖励50点好感度"},
		[57273] = {--[[!AUTO_1733]]"奖励100点好感度", --[[!AUTO_1734]]"奖励100点好感度"},
		[77189] = {"奖励50点好感度", "奖励50点好感度"},
		[22457] = {"奖励50点好感度", "奖励50点好感度"},
		[22579] = {"奖励180点好感度", "奖励180点好感度"},
		[22569] = {"奖励280点好感度", "奖励280点好感度"},
		[22563] = {"奖励380点好感度", "奖励380点好感度"},
		[66140] = {"奖励0点好感度", "奖励0点好感度"},
	},

	[67221]	=						--玄武令兑换
	{
		[67212] = {--[[!AUTO_1735]]"奖励2级宝石", --[[!AUTO_1736]]"奖励2级宝石"},

	},

	[70561]	=						--白虎令兑换
	{
		[70558] = {--[[!AUTO_1737]]"奖励2级宝石", --[[!AUTO_1738]]"奖励2级宝石"},

	},

	[70562]	=						--青龙令兑换
	{
		[70559] = {--[[!AUTO_1739]]"奖励2级宝石", --[[!AUTO_1740]]"奖励2级宝石"},

	},

	[70563]	=						--朱雀令兑换
	{
		[70560] = {--[[!AUTO_1741]]"奖励2级宝石", --[[!AUTO_1742]]"奖励2级宝石"},

	},
}


------------------------------差事相关附加属性名字----------------------------------------
JobEffectName =
{

	--门徒基础始终激活

	[27760] = {--[[!AUTO_1743]]"健体",--[[!AUTO_1744]]"奋发",--[[!AUTO_1745]]"",--[[!AUTO_1746]]""},
	[27761] = {--[[!AUTO_1747]]"健体",--[[!AUTO_1748]]"奋发",--[[!AUTO_1749]]"",--[[!AUTO_1750]]""},
	[27762] = {--[[!AUTO_1751]]"健体",--[[!AUTO_1752]]"奋发",--[[!AUTO_1753]]"",--[[!AUTO_1754]]""},
	[27763] = {--[[!AUTO_1755]]"健体",--[[!AUTO_1756]]"奋发",--[[!AUTO_1757]]"",--[[!AUTO_1758]]""},
	--门徒基础职业激活

	[27764] = {--[[!AUTO_1759]]"通灵术",--[[!AUTO_1760]]"",--[[!AUTO_1761]]"",--[[!AUTO_1762]]""},
	[27765] = {--[[!AUTO_1763]]"通灵术",--[[!AUTO_1764]]"",--[[!AUTO_1765]]"",--[[!AUTO_1766]]""},
	[27766] = {--[[!AUTO_1767]]"通灵术",--[[!AUTO_1768]]"",--[[!AUTO_1769]]"",--[[!AUTO_1770]]""},
	[27767] = {--[[!AUTO_1771]]"通灵术",--[[!AUTO_1772]]"",--[[!AUTO_1773]]"",--[[!AUTO_1774]]""},
	--门徒成长始终激活

	[27768] = {--[[!AUTO_1775]]"健体",--[[!AUTO_1776]]"奋发",--[[!AUTO_1777]]"",--[[!AUTO_1778]]""},
	[27769] = {--[[!AUTO_1779]]"健体",--[[!AUTO_1780]]"奋发",--[[!AUTO_1781]]"",--[[!AUTO_1782]]""},
	[27770] = {--[[!AUTO_1783]]"健体",--[[!AUTO_1784]]"奋发",--[[!AUTO_1785]]"",--[[!AUTO_1786]]""},
	[27771] = {--[[!AUTO_1787]]"健体",--[[!AUTO_1788]]"奋发",--[[!AUTO_1789]]"",--[[!AUTO_1790]]""},
	[27772] = {--[[!AUTO_1791]]"健体",--[[!AUTO_1792]]"奋发",--[[!AUTO_1793]]"",--[[!AUTO_1794]]""},
	[27773] = {--[[!AUTO_1795]]"健体",--[[!AUTO_1796]]"奋发",--[[!AUTO_1797]]"",--[[!AUTO_1798]]""},
	[27774] = {--[[!AUTO_1799]]"健体",--[[!AUTO_1800]]"奋发",--[[!AUTO_1801]]"",--[[!AUTO_1802]]""},
	[27775] = {--[[!AUTO_1803]]"健体",--[[!AUTO_1804]]"奋发",--[[!AUTO_1805]]"",--[[!AUTO_1806]]""},
	[27776] = {--[[!AUTO_1807]]"健体",--[[!AUTO_1808]]"奋发",--[[!AUTO_1809]]"",--[[!AUTO_1810]]""},
	[27777] = {--[[!AUTO_1811]]"健体",--[[!AUTO_1812]]"奋发",--[[!AUTO_1813]]"",--[[!AUTO_1814]]""},
	[27778] = {--[[!AUTO_1815]]"健体",--[[!AUTO_1816]]"奋发",--[[!AUTO_1817]]"",--[[!AUTO_1818]]""},
	[27779] = {--[[!AUTO_1819]]"健体",--[[!AUTO_1820]]"奋发",--[[!AUTO_1821]]"",--[[!AUTO_1822]]""},
	[27780] = {--[[!AUTO_1823]]"健体",--[[!AUTO_1824]]"奋发",--[[!AUTO_1825]]"",--[[!AUTO_1826]]""},
	[27781] = {--[[!AUTO_1827]]"健体",--[[!AUTO_1828]]"奋发",--[[!AUTO_1829]]"",--[[!AUTO_1830]]""},
	[27782] = {--[[!AUTO_1831]]"健体",--[[!AUTO_1832]]"奋发",--[[!AUTO_1833]]"",--[[!AUTO_1834]]""},
	[27783] = {--[[!AUTO_1835]]"健体",--[[!AUTO_1836]]"奋发",--[[!AUTO_1837]]"",--[[!AUTO_1838]]""},

	--门徒成长职业激活

	[27784] = {--[[!AUTO_1839]]"通灵术",--[[!AUTO_1840]]"力魂",--[[!AUTO_1841]]"",--[[!AUTO_1842]]""},
	[27785] = {--[[!AUTO_1843]]"通灵术",--[[!AUTO_1844]]"力魂",--[[!AUTO_1845]]"",--[[!AUTO_1846]]""},
	[27786] = {--[[!AUTO_1847]]"通灵术",--[[!AUTO_1848]]"力魂",--[[!AUTO_1849]]"",--[[!AUTO_1850]]""},
	[27787] = {--[[!AUTO_1851]]"通灵术",--[[!AUTO_1852]]"力魂",--[[!AUTO_1853]]"",--[[!AUTO_1854]]""},
	[27788] = {--[[!AUTO_1855]]"通灵术",--[[!AUTO_1856]]"力魂",--[[!AUTO_1857]]"",--[[!AUTO_1858]]""},
	[27789] = {--[[!AUTO_1859]]"通灵术",--[[!AUTO_1860]]"力魂",--[[!AUTO_1861]]"",--[[!AUTO_1862]]""},
	[27790] = {--[[!AUTO_1863]]"通灵术",--[[!AUTO_1864]]"力魂",--[[!AUTO_1865]]"",--[[!AUTO_1866]]""},
	[27791] = {--[[!AUTO_1867]]"通灵术",--[[!AUTO_1868]]"力魂",--[[!AUTO_1869]]"",--[[!AUTO_1870]]""},
	[27792] = {--[[!AUTO_1871]]"通灵术",--[[!AUTO_1872]]"力魂",--[[!AUTO_1873]]"",--[[!AUTO_1874]]""},
	[27793] = {--[[!AUTO_1875]]"通灵术",--[[!AUTO_1876]]"力魂",--[[!AUTO_1877]]"",--[[!AUTO_1878]]""},
	[27794] = {--[[!AUTO_1879]]"通灵术",--[[!AUTO_1880]]"力魂",--[[!AUTO_1881]]"",--[[!AUTO_1882]]""},
	[27795] = {--[[!AUTO_1883]]"通灵术",--[[!AUTO_1884]]"力魂",--[[!AUTO_1885]]"",--[[!AUTO_1886]]""},
	[27796] = {--[[!AUTO_1887]]"通灵术",--[[!AUTO_1888]]"力魂",--[[!AUTO_1889]]"",--[[!AUTO_1890]]""},
	[27797] = {--[[!AUTO_1891]]"通灵术",--[[!AUTO_1892]]"力魂",--[[!AUTO_1893]]"",--[[!AUTO_1894]]""},
	[27798] = {--[[!AUTO_1895]]"通灵术",--[[!AUTO_1896]]"力魂",--[[!AUTO_1897]]"",--[[!AUTO_1898]]""},
	[27799] = {--[[!AUTO_1899]]"通灵术",--[[!AUTO_1900]]"力魂",--[[!AUTO_1901]]"",--[[!AUTO_1902]]""},

	--门徒增益始终激活

	[27800] = {--[[!AUTO_1903]]"健体",--[[!AUTO_1904]]"奋发",--[[!AUTO_1905]]"",--[[!AUTO_1906]]""},
	[27801] = {--[[!AUTO_1907]]"健体",--[[!AUTO_1908]]"奋发",--[[!AUTO_1909]]"",--[[!AUTO_1910]]""},
	[27802] = {--[[!AUTO_1911]]"健体",--[[!AUTO_1912]]"奋发",--[[!AUTO_1913]]"",--[[!AUTO_1914]]""},
	[27803] = {--[[!AUTO_1915]]"健体",--[[!AUTO_1916]]"奋发",--[[!AUTO_1917]]"",--[[!AUTO_1918]]""},
	[27804] = {--[[!AUTO_1919]]"健体",--[[!AUTO_1920]]"奋发",--[[!AUTO_1921]]"",--[[!AUTO_1922]]""},
	[27805] = {--[[!AUTO_1923]]"健体",--[[!AUTO_1924]]"奋发",--[[!AUTO_1925]]"",--[[!AUTO_1926]]""},
	[27806] = {--[[!AUTO_1927]]"健体",--[[!AUTO_1928]]"奋发",--[[!AUTO_1929]]"",--[[!AUTO_1930]]""},
	[27807] = {--[[!AUTO_1931]]"健体",--[[!AUTO_1932]]"奋发",--[[!AUTO_1933]]"",--[[!AUTO_1934]]""},
	[27808] = {--[[!AUTO_1935]]"健体",--[[!AUTO_1936]]"奋发",--[[!AUTO_1937]]"",--[[!AUTO_1938]]""},
	[27809] = {--[[!AUTO_1939]]"健体",--[[!AUTO_1940]]"奋发",--[[!AUTO_1941]]"",--[[!AUTO_1942]]""},
	[27810] = {--[[!AUTO_1943]]"健体",--[[!AUTO_1944]]"奋发",--[[!AUTO_1945]]"",--[[!AUTO_1946]]""},
	[27811] = {--[[!AUTO_1947]]"健体",--[[!AUTO_1948]]"奋发",--[[!AUTO_1949]]"",--[[!AUTO_1950]]""},
	[27812] = {--[[!AUTO_1951]]"健体",--[[!AUTO_1952]]"奋发",--[[!AUTO_1953]]"",--[[!AUTO_1954]]""},
	[27813] = {--[[!AUTO_1955]]"健体",--[[!AUTO_1956]]"奋发",--[[!AUTO_1957]]"",--[[!AUTO_1958]]""},
	[27814] = {--[[!AUTO_1959]]"健体",--[[!AUTO_1960]]"奋发",--[[!AUTO_1961]]"",--[[!AUTO_1962]]""},
	[27815] = {--[[!AUTO_1963]]"健体",--[[!AUTO_1964]]"奋发",--[[!AUTO_1965]]"",--[[!AUTO_1966]]""},

	--门徒增益职业激活

	[27816] = {--[[!AUTO_1967]]"通灵术",--[[!AUTO_1968]]"力魂",--[[!AUTO_1969]]"",--[[!AUTO_1970]]""},
	[27817] = {--[[!AUTO_1971]]"通灵术",--[[!AUTO_1972]]"力魂",--[[!AUTO_1973]]"",--[[!AUTO_1974]]""},
	[27818] = {--[[!AUTO_1975]]"通灵术",--[[!AUTO_1976]]"力魂",--[[!AUTO_1977]]"",--[[!AUTO_1978]]""},
	[27819] = {--[[!AUTO_1979]]"通灵术",--[[!AUTO_1980]]"力魂",--[[!AUTO_1981]]"",--[[!AUTO_1982]]""},
	[27820] = {--[[!AUTO_1983]]"通灵术",--[[!AUTO_1984]]"力魂",--[[!AUTO_1985]]"",--[[!AUTO_1986]]""},
	[27821] = {--[[!AUTO_1987]]"通灵术",--[[!AUTO_1988]]"力魂",--[[!AUTO_1989]]"",--[[!AUTO_1990]]""},
	[27822] = {--[[!AUTO_1991]]"通灵术",--[[!AUTO_1992]]"力魂",--[[!AUTO_1993]]"",--[[!AUTO_1994]]""},
	[27823] = {--[[!AUTO_1995]]"通灵术",--[[!AUTO_1996]]"力魂",--[[!AUTO_1997]]"",--[[!AUTO_1998]]""},
	[27824] = {--[[!AUTO_1999]]"通灵术",--[[!AUTO_2000]]"力魂",--[[!AUTO_2001]]"",--[[!AUTO_2002]]""},
	[27825] = {--[[!AUTO_2003]]"通灵术",--[[!AUTO_2004]]"力魂",--[[!AUTO_2005]]"",--[[!AUTO_2006]]""},
	[27826] = {--[[!AUTO_2007]]"通灵术",--[[!AUTO_2008]]"力魂",--[[!AUTO_2009]]"",--[[!AUTO_2010]]""},
	[27827] = {--[[!AUTO_2011]]"通灵术",--[[!AUTO_2012]]"力魂",--[[!AUTO_2013]]"",--[[!AUTO_2014]]""},
	[27828] = {--[[!AUTO_2015]]"通灵术",--[[!AUTO_2016]]"力魂",--[[!AUTO_2017]]"",--[[!AUTO_2018]]""},
	[27829] = {--[[!AUTO_2019]]"通灵术",--[[!AUTO_2020]]"力魂",--[[!AUTO_2021]]"",--[[!AUTO_2022]]""},
	[27830] = {--[[!AUTO_2023]]"通灵术",--[[!AUTO_2024]]"力魂",--[[!AUTO_2025]]"",--[[!AUTO_2026]]""},
	[27831] = {--[[!AUTO_2027]]"通灵术",--[[!AUTO_2028]]"力魂",--[[!AUTO_2029]]"",--[[!AUTO_2030]]""},


	--社交基础永远激活

	[27688] = {--[[!AUTO_2031]]"玲珑",--[[!AUTO_2032]]"",--[[!AUTO_2033]]"",--[[!AUTO_2034]]""},
	[27689] = {--[[!AUTO_2035]]"玲珑",--[[!AUTO_2036]]"",--[[!AUTO_2037]]"",--[[!AUTO_2038]]""},
	[27690] = {--[[!AUTO_2039]]"玲珑",--[[!AUTO_2040]]"",--[[!AUTO_2041]]"",--[[!AUTO_2042]]""},
	[27761] = {--[[!AUTO_2043]]"玲珑",--[[!AUTO_2044]]"",--[[!AUTO_2045]]"",--[[!AUTO_2046]]""},
	--社交基础职业激活

	[27692] = {--[[!AUTO_2047]]"运·友",--[[!AUTO_2048]]"",--[[!AUTO_2049]]"",--[[!AUTO_2050]]""},
	[27693] = {--[[!AUTO_2051]]"运·友",--[[!AUTO_2052]]"",--[[!AUTO_2053]]"",--[[!AUTO_2054]]""},
	[27694] = {--[[!AUTO_2055]]"运·友",--[[!AUTO_2056]]"",--[[!AUTO_2057]]"",--[[!AUTO_2058]]""},
	[27695] = {--[[!AUTO_2059]]"运·友",--[[!AUTO_2060]]"",--[[!AUTO_2061]]"",--[[!AUTO_2062]]""},

	--社交导师始终激活

	[27696] = {--[[!AUTO_2063]]"玲珑",--[[!AUTO_2064]]"逢源",--[[!AUTO_2065]]"",--[[!AUTO_2066]]""},
	[27697] = {--[[!AUTO_2067]]"玲珑",--[[!AUTO_2068]]"逢源",--[[!AUTO_2069]]"",--[[!AUTO_2070]]""},
	[27698] = {--[[!AUTO_2071]]"玲珑",--[[!AUTO_2072]]"逢源",--[[!AUTO_2073]]"",--[[!AUTO_2074]]""},
	[27699] = {--[[!AUTO_2075]]"玲珑",--[[!AUTO_2076]]"逢源",--[[!AUTO_2077]]"",--[[!AUTO_2078]]""},
	[27700] = {--[[!AUTO_2079]]"玲珑",--[[!AUTO_2080]]"逢源",--[[!AUTO_2081]]"",--[[!AUTO_2082]]""},
	[27701] = {--[[!AUTO_2083]]"玲珑",--[[!AUTO_2084]]"逢源",--[[!AUTO_2085]]"",--[[!AUTO_2086]]""},
	[27702] = {--[[!AUTO_2087]]"玲珑",--[[!AUTO_2088]]"逢源",--[[!AUTO_2089]]"",--[[!AUTO_2090]]""},
	[27703] = {--[[!AUTO_2091]]"玲珑",--[[!AUTO_2092]]"逢源",--[[!AUTO_2093]]"",--[[!AUTO_2094]]""},
	[27704] = {--[[!AUTO_2095]]"玲珑",--[[!AUTO_2096]]"逢源",--[[!AUTO_2097]]"",--[[!AUTO_2098]]""},
	[27705] = {--[[!AUTO_2099]]"玲珑",--[[!AUTO_2100]]"逢源",--[[!AUTO_2101]]"",--[[!AUTO_2102]]""},
	[27706] = {--[[!AUTO_2103]]"玲珑",--[[!AUTO_2104]]"逢源",--[[!AUTO_2105]]"",--[[!AUTO_2106]]""},
	[27707] = {--[[!AUTO_2107]]"玲珑",--[[!AUTO_2108]]"逢源",--[[!AUTO_2109]]"",--[[!AUTO_2110]]""},
	[27708] = {--[[!AUTO_2111]]"玲珑",--[[!AUTO_2112]]"逢源",--[[!AUTO_2113]]"",--[[!AUTO_2114]]""},
	[27709] = {--[[!AUTO_2115]]"玲珑",--[[!AUTO_2116]]"逢源",--[[!AUTO_2117]]"",--[[!AUTO_2118]]""},
	[27710] = {--[[!AUTO_2119]]"玲珑",--[[!AUTO_2120]]"逢源",--[[!AUTO_2121]]"",--[[!AUTO_2122]]""},
	[27711] = {--[[!AUTO_2123]]"玲珑",--[[!AUTO_2124]]"逢源",--[[!AUTO_2125]]"",--[[!AUTO_2126]]""},

	--社交导师职业激活

	[27712] = {--[[!AUTO_2127]]"运·友",--[[!AUTO_2128]]"歃血",--[[!AUTO_2129]]"尊师",--[[!AUTO_2130]]""},
	[27713] = {--[[!AUTO_2131]]"运·友",--[[!AUTO_2132]]"歃血",--[[!AUTO_2133]]"尊师",--[[!AUTO_2134]]""},
	[27714] = {--[[!AUTO_2135]]"运·友",--[[!AUTO_2136]]"歃血",--[[!AUTO_2137]]"尊师",--[[!AUTO_2138]]""},
	[27715] = {--[[!AUTO_2139]]"运·友",--[[!AUTO_2140]]"歃血",--[[!AUTO_2141]]"尊师",--[[!AUTO_2142]]""},
	[27716] = {--[[!AUTO_2143]]"运·友",--[[!AUTO_2144]]"歃血",--[[!AUTO_2145]]"尊师",--[[!AUTO_2146]]""},
	[27717] = {--[[!AUTO_2147]]"运·友",--[[!AUTO_2148]]"歃血",--[[!AUTO_2149]]"尊师",--[[!AUTO_2150]]""},
	[27718] = {--[[!AUTO_2151]]"运·友",--[[!AUTO_2152]]"歃血",--[[!AUTO_2153]]"尊师",--[[!AUTO_2154]]""},
	[27719] = {--[[!AUTO_2155]]"运·友",--[[!AUTO_2156]]"歃血",--[[!AUTO_2157]]"尊师",--[[!AUTO_2158]]""},
	[27720] = {--[[!AUTO_2159]]"运·友",--[[!AUTO_2160]]"歃血",--[[!AUTO_2161]]"尊师",--[[!AUTO_2162]]""},
	[27721] = {--[[!AUTO_2163]]"运·友",--[[!AUTO_2164]]"歃血",--[[!AUTO_2165]]"尊师",--[[!AUTO_2166]]""},
	[27722] = {--[[!AUTO_2167]]"运·友",--[[!AUTO_2168]]"歃血",--[[!AUTO_2169]]"尊师",--[[!AUTO_2170]]""},
	[27723] = {--[[!AUTO_2171]]"运·友",--[[!AUTO_2172]]"歃血",--[[!AUTO_2173]]"尊师",--[[!AUTO_2174]]""},
	[27724] = {--[[!AUTO_2175]]"运·友",--[[!AUTO_2176]]"歃血",--[[!AUTO_2177]]"尊师",--[[!AUTO_2178]]""},
	[27725] = {--[[!AUTO_2179]]"运·友",--[[!AUTO_2180]]"歃血",--[[!AUTO_2181]]"尊师",--[[!AUTO_2182]]""},
	[27726] = {--[[!AUTO_2183]]"运·友",--[[!AUTO_2184]]"歃血",--[[!AUTO_2185]]"尊师",--[[!AUTO_2186]]""},
	[27727] = {--[[!AUTO_2187]]"运·友",--[[!AUTO_2188]]"歃血",--[[!AUTO_2189]]"尊师",--[[!AUTO_2190]]""},

	--社交乐师始终激活

	[27728] = {--[[!AUTO_2191]]"玲珑",--[[!AUTO_2192]]"逢源",--[[!AUTO_2193]]"",--[[!AUTO_2194]]""},
	[27729] = {--[[!AUTO_2195]]"玲珑",--[[!AUTO_2196]]"逢源",--[[!AUTO_2197]]"",--[[!AUTO_2198]]""},
	[27730] = {--[[!AUTO_2199]]"玲珑",--[[!AUTO_2200]]"逢源",--[[!AUTO_2201]]"",--[[!AUTO_2202]]""},
	[27731] = {--[[!AUTO_2203]]"玲珑",--[[!AUTO_2204]]"逢源",--[[!AUTO_2205]]"",--[[!AUTO_2206]]""},
	[27732] = {--[[!AUTO_2207]]"玲珑",--[[!AUTO_2208]]"逢源",--[[!AUTO_2209]]"",--[[!AUTO_2210]]""},
	[27733] = {--[[!AUTO_2211]]"玲珑",--[[!AUTO_2212]]"逢源",--[[!AUTO_2213]]"",--[[!AUTO_2214]]""},
	[27734] = {--[[!AUTO_2215]]"玲珑",--[[!AUTO_2216]]"逢源",--[[!AUTO_2217]]"",--[[!AUTO_2218]]""},
	[27735] = {--[[!AUTO_2219]]"玲珑",--[[!AUTO_2220]]"逢源",--[[!AUTO_2221]]"",--[[!AUTO_2222]]""},
	[27736] = {--[[!AUTO_2223]]"玲珑",--[[!AUTO_2224]]"逢源",--[[!AUTO_2225]]"",--[[!AUTO_2226]]""},
	[27737] = {--[[!AUTO_2227]]"玲珑",--[[!AUTO_2228]]"逢源",--[[!AUTO_2229]]"",--[[!AUTO_2230]]""},
	[27738] = {--[[!AUTO_2231]]"玲珑",--[[!AUTO_2232]]"逢源",--[[!AUTO_2233]]"",--[[!AUTO_2234]]""},
	[27739] = {--[[!AUTO_2235]]"玲珑",--[[!AUTO_2236]]"逢源",--[[!AUTO_2237]]"",--[[!AUTO_2238]]""},
	[27740] = {--[[!AUTO_2239]]"玲珑",--[[!AUTO_2240]]"逢源",--[[!AUTO_2241]]"",--[[!AUTO_2242]]""},
	[27741] = {--[[!AUTO_2243]]"玲珑",--[[!AUTO_2244]]"逢源",--[[!AUTO_2245]]"",--[[!AUTO_2246]]""},
	[27742] = {--[[!AUTO_2247]]"玲珑",--[[!AUTO_2248]]"逢源",--[[!AUTO_2249]]"",--[[!AUTO_2250]]""},
	[27743] = {--[[!AUTO_2251]]"玲珑",--[[!AUTO_2252]]"逢源",--[[!AUTO_2253]]"",--[[!AUTO_2254]]""},

	--社交乐师职业激活

	[27744] = {--[[!AUTO_2255]]"运·友",--[[!AUTO_2256]]"同门",--[[!AUTO_2257]]"师恩",--[[!AUTO_2258]]""},
	[27745] = {--[[!AUTO_2259]]"运·友",--[[!AUTO_2260]]"同门",--[[!AUTO_2261]]"师恩",--[[!AUTO_2262]]""},
	[27746] = {--[[!AUTO_2263]]"运·友",--[[!AUTO_2264]]"同门",--[[!AUTO_2265]]"师恩",--[[!AUTO_2266]]""},
	[27747] = {--[[!AUTO_2267]]"运·友",--[[!AUTO_2268]]"同门",--[[!AUTO_2269]]"师恩",--[[!AUTO_2270]]""},
	[27748] = {--[[!AUTO_2271]]"运·友",--[[!AUTO_2272]]"同门",--[[!AUTO_2273]]"师恩",--[[!AUTO_2274]]""},
	[27749] = {--[[!AUTO_2275]]"运·友",--[[!AUTO_2276]]"同门",--[[!AUTO_2277]]"师恩",--[[!AUTO_2278]]""},
	[27750] = {--[[!AUTO_2279]]"运·友",--[[!AUTO_2280]]"同门",--[[!AUTO_2281]]"师恩",--[[!AUTO_2282]]""},
	[27751] = {--[[!AUTO_2283]]"运·友",--[[!AUTO_2284]]"同门",--[[!AUTO_2285]]"师恩",--[[!AUTO_2286]]""},
	[27752] = {--[[!AUTO_2287]]"运·友",--[[!AUTO_2288]]"同门",--[[!AUTO_2289]]"师恩",--[[!AUTO_2290]]""},
	[27753] = {--[[!AUTO_2291]]"运·友",--[[!AUTO_2292]]"同门",--[[!AUTO_2293]]"师恩",--[[!AUTO_2294]]""},
	[27754] = {--[[!AUTO_2295]]"运·友",--[[!AUTO_2296]]"同门",--[[!AUTO_2297]]"师恩",--[[!AUTO_2298]]""},
	[27755] = {--[[!AUTO_2299]]"运·友",--[[!AUTO_2300]]"同门",--[[!AUTO_2301]]"师恩",--[[!AUTO_2302]]""},
	[27756] = {--[[!AUTO_2303]]"运·友",--[[!AUTO_2304]]"同门",--[[!AUTO_2305]]"师恩",--[[!AUTO_2306]]""},
	[27757] = {--[[!AUTO_2307]]"运·友",--[[!AUTO_2308]]"同门",--[[!AUTO_2309]]"师恩",--[[!AUTO_2310]]""},
	[27758] = {--[[!AUTO_2311]]"运·友",--[[!AUTO_2312]]"同门",--[[!AUTO_2313]]"师恩",--[[!AUTO_2314]]""},
	[27759] = {--[[!AUTO_2315]]"运·友",--[[!AUTO_2316]]"同门",--[[!AUTO_2317]]"师恩",--[[!AUTO_2318]]""},


	--手工基础永远激活

	[27904] = {--[[!AUTO_2319]]"能者",--[[!AUTO_2320]]"",--[[!AUTO_2321]]"",--[[!AUTO_2322]]""},
	[27905] = {--[[!AUTO_2323]]"能者",--[[!AUTO_2324]]"",--[[!AUTO_2325]]"",--[[!AUTO_2326]]""},
	[27906] = {--[[!AUTO_2327]]"能者",--[[!AUTO_2328]]"",--[[!AUTO_2329]]"",--[[!AUTO_2330]]""},
	[27907] = {--[[!AUTO_2331]]"能者",--[[!AUTO_2332]]"",--[[!AUTO_2333]]"",--[[!AUTO_2334]]""},
	--手工基础职业激活

	[27908] = {--[[!AUTO_2335]]"巧匠",--[[!AUTO_2336]]"天工",--[[!AUTO_2337]]"飞针",--[[!AUTO_2338]]""},
	[27909] = {--[[!AUTO_2339]]"巧匠",--[[!AUTO_2340]]"天工",--[[!AUTO_2341]]"飞针",--[[!AUTO_2342]]""},
	[27910] = {--[[!AUTO_2343]]"巧匠",--[[!AUTO_2344]]"天工",--[[!AUTO_2345]]"飞针",--[[!AUTO_2346]]""},
	[27911] = {--[[!AUTO_2347]]"巧匠",--[[!AUTO_2348]]"天工",--[[!AUTO_2349]]"飞针",--[[!AUTO_2350]]""},

	--手工金石始终激活

	[27912] = {--[[!AUTO_2351]]"能者",--[[!AUTO_2352]]"",--[[!AUTO_2353]]"",--[[!AUTO_2354]]""},
	[27913] = {--[[!AUTO_2355]]"能者",--[[!AUTO_2356]]"",--[[!AUTO_2357]]"",--[[!AUTO_2358]]""},
	[27914] = {--[[!AUTO_2359]]"能者",--[[!AUTO_2360]]"",--[[!AUTO_2361]]"",--[[!AUTO_2362]]""},
	[27915] = {--[[!AUTO_2363]]"能者",--[[!AUTO_2364]]"",--[[!AUTO_2365]]"",--[[!AUTO_2366]]""},
	[27916] = {--[[!AUTO_2367]]"能者",--[[!AUTO_2368]]"",--[[!AUTO_2369]]"",--[[!AUTO_2370]]""},
	[27917] = {--[[!AUTO_2371]]"能者",--[[!AUTO_2372]]"",--[[!AUTO_2373]]"",--[[!AUTO_2374]]""},
	[27918] = {--[[!AUTO_2375]]"能者",--[[!AUTO_2376]]"",--[[!AUTO_2377]]"",--[[!AUTO_2378]]""},
	[27919] = {--[[!AUTO_2379]]"能者",--[[!AUTO_2380]]"",--[[!AUTO_2381]]"",--[[!AUTO_2382]]""},
	[27920] = {--[[!AUTO_2383]]"能者",--[[!AUTO_2384]]"",--[[!AUTO_2385]]"",--[[!AUTO_2386]]""},
	[27921] = {--[[!AUTO_2387]]"能者",--[[!AUTO_2388]]"",--[[!AUTO_2389]]"",--[[!AUTO_2390]]""},
	[27922] = {--[[!AUTO_2391]]"能者",--[[!AUTO_2392]]"",--[[!AUTO_2393]]"",--[[!AUTO_2394]]""},
	[27923] = {--[[!AUTO_2395]]"能者",--[[!AUTO_2396]]"",--[[!AUTO_2397]]"",--[[!AUTO_2398]]""},
	[27924] = {--[[!AUTO_2399]]"能者",--[[!AUTO_2400]]"",--[[!AUTO_2401]]"",--[[!AUTO_2402]]""},
	[27925] = {--[[!AUTO_2403]]"能者",--[[!AUTO_2404]]"",--[[!AUTO_2405]]"",--[[!AUTO_2406]]""},
	[27926] = {--[[!AUTO_2407]]"能者",--[[!AUTO_2408]]"",--[[!AUTO_2409]]"",--[[!AUTO_2410]]""},
	[27927] = {--[[!AUTO_2411]]"能者",--[[!AUTO_2412]]"",--[[!AUTO_2413]]"",--[[!AUTO_2414]]""},

	--手工金石职业激活

	[27928] = {--[[!AUTO_2415]]"巧匠",--[[!AUTO_2416]]"天工",--[[!AUTO_2417]]"飞针",--[[!AUTO_2418]]""},
	[27929] = {--[[!AUTO_2419]]"巧匠",--[[!AUTO_2420]]"天工",--[[!AUTO_2421]]"飞针",--[[!AUTO_2422]]""},
	[27930] = {--[[!AUTO_2423]]"巧匠",--[[!AUTO_2424]]"天工",--[[!AUTO_2425]]"飞针",--[[!AUTO_2426]]""},
	[27931] = {--[[!AUTO_2427]]"巧匠",--[[!AUTO_2428]]"天工",--[[!AUTO_2429]]"飞针",--[[!AUTO_2430]]""},
	[27932] = {--[[!AUTO_2431]]"巧匠",--[[!AUTO_2432]]"天工",--[[!AUTO_2433]]"飞针",--[[!AUTO_2434]]""},
	[27933] = {--[[!AUTO_2435]]"巧匠",--[[!AUTO_2436]]"天工",--[[!AUTO_2437]]"飞针",--[[!AUTO_2438]]"流芳"},
	[27934] = {--[[!AUTO_2439]]"巧匠",--[[!AUTO_2440]]"天工",--[[!AUTO_2441]]"飞针",--[[!AUTO_2442]]"流芳"},
	[27935] = {--[[!AUTO_2443]]"巧匠",--[[!AUTO_2444]]"天工",--[[!AUTO_2445]]"飞针",--[[!AUTO_2446]]"流芳"},
	[27936] = {--[[!AUTO_2447]]"巧匠",--[[!AUTO_2448]]"天工",--[[!AUTO_2449]]"飞针",--[[!AUTO_2450]]"流芳"},
	[27937] = {--[[!AUTO_2451]]"巧匠",--[[!AUTO_2452]]"天工",--[[!AUTO_2453]]"飞针",--[[!AUTO_2454]]"流芳"},
	[27938] = {--[[!AUTO_2455]]"巧匠",--[[!AUTO_2456]]"天工",--[[!AUTO_2457]]"飞针",--[[!AUTO_2458]]"流芳"},
	[27939] = {--[[!AUTO_2459]]"巧匠",--[[!AUTO_2460]]"天工",--[[!AUTO_2461]]"飞针",--[[!AUTO_2462]]"流芳"},
	[27940] = {--[[!AUTO_2463]]"巧匠",--[[!AUTO_2464]]"天工",--[[!AUTO_2465]]"飞针",--[[!AUTO_2466]]"流芳"},
	[27941] = {--[[!AUTO_2467]]"巧匠",--[[!AUTO_2468]]"天工",--[[!AUTO_2469]]"飞针",--[[!AUTO_2470]]"流芳"},
	[27942] = {--[[!AUTO_2471]]"巧匠",--[[!AUTO_2472]]"天工",--[[!AUTO_2473]]"飞针",--[[!AUTO_2474]]"流芳"},
	[27943] = {--[[!AUTO_2475]]"巧匠",--[[!AUTO_2476]]"天工",--[[!AUTO_2477]]"飞针",--[[!AUTO_2478]]"流芳"},

	--手工布帛始终激活

	[27976] = {--[[!AUTO_2479]]"能者",--[[!AUTO_2480]]"",--[[!AUTO_2481]]"",--[[!AUTO_2482]]""},
	[27977] = {--[[!AUTO_2483]]"能者",--[[!AUTO_2484]]"",--[[!AUTO_2485]]"",--[[!AUTO_2486]]""},
	[27978] = {--[[!AUTO_2487]]"能者",--[[!AUTO_2488]]"",--[[!AUTO_2489]]"",--[[!AUTO_2490]]""},
	[27979] = {--[[!AUTO_2491]]"能者",--[[!AUTO_2492]]"",--[[!AUTO_2493]]"",--[[!AUTO_2494]]""},
	[27980] = {--[[!AUTO_2495]]"能者",--[[!AUTO_2496]]"",--[[!AUTO_2497]]"",--[[!AUTO_2498]]""},
	[27981] = {--[[!AUTO_2499]]"能者",--[[!AUTO_2500]]"",--[[!AUTO_2501]]"",--[[!AUTO_2502]]""},
	[27982] = {--[[!AUTO_2503]]"能者",--[[!AUTO_2504]]"",--[[!AUTO_2505]]"",--[[!AUTO_2506]]""},
	[27983] = {--[[!AUTO_2507]]"能者",--[[!AUTO_2508]]"",--[[!AUTO_2509]]"",--[[!AUTO_2510]]""},
	[27984] = {--[[!AUTO_2511]]"能者",--[[!AUTO_2512]]"",--[[!AUTO_2513]]"",--[[!AUTO_2514]]""},
	[27985] = {--[[!AUTO_2515]]"能者",--[[!AUTO_2516]]"",--[[!AUTO_2517]]"",--[[!AUTO_2518]]""},
	[27986] = {--[[!AUTO_2519]]"能者",--[[!AUTO_2520]]"",--[[!AUTO_2521]]"",--[[!AUTO_2522]]""},
	[27987] = {--[[!AUTO_2523]]"能者",--[[!AUTO_2524]]"",--[[!AUTO_2525]]"",--[[!AUTO_2526]]""},
	[27988] = {--[[!AUTO_2527]]"能者",--[[!AUTO_2528]]"",--[[!AUTO_2529]]"",--[[!AUTO_2530]]""},
	[27989] = {--[[!AUTO_2531]]"能者",--[[!AUTO_2532]]"",--[[!AUTO_2533]]"",--[[!AUTO_2534]]""},
	[27990] = {--[[!AUTO_2535]]"能者",--[[!AUTO_2536]]"",--[[!AUTO_2537]]"",--[[!AUTO_2538]]""},
	[27991] = {--[[!AUTO_2539]]"能者",--[[!AUTO_2540]]"",--[[!AUTO_2541]]"",--[[!AUTO_2542]]""},

	--手工布帛职业激活

	[27992] = {--[[!AUTO_2543]]"飞针",--[[!AUTO_2544]]"天工",--[[!AUTO_2545]]"巧匠",--[[!AUTO_2546]]""},
	[27993] = {--[[!AUTO_2547]]"飞针",--[[!AUTO_2548]]"天工",--[[!AUTO_2549]]"巧匠",--[[!AUTO_2550]]""},
	[27994] = {--[[!AUTO_2551]]"飞针",--[[!AUTO_2552]]"天工",--[[!AUTO_2553]]"巧匠",--[[!AUTO_2554]]""},
	[27995] = {--[[!AUTO_2555]]"飞针",--[[!AUTO_2556]]"天工",--[[!AUTO_2557]]"巧匠",--[[!AUTO_2558]]""},
	[27996] = {--[[!AUTO_2559]]"飞针",--[[!AUTO_2560]]"天工",--[[!AUTO_2561]]"巧匠",--[[!AUTO_2562]]""},
	[27997] = {--[[!AUTO_2563]]"飞针",--[[!AUTO_2564]]"天工",--[[!AUTO_2565]]"巧匠",--[[!AUTO_2566]]"流芳"},
	[27998] = {--[[!AUTO_2567]]"飞针",--[[!AUTO_2568]]"天工",--[[!AUTO_2569]]"巧匠",--[[!AUTO_2570]]"流芳"},
	[27999] = {--[[!AUTO_2571]]"飞针",--[[!AUTO_2572]]"天工",--[[!AUTO_2573]]"巧匠",--[[!AUTO_2574]]"流芳"},
	[27800] = {--[[!AUTO_2575]]"飞针",--[[!AUTO_2576]]"天工",--[[!AUTO_2577]]"巧匠",--[[!AUTO_2578]]"流芳"},
	[27801] = {--[[!AUTO_2579]]"飞针",--[[!AUTO_2580]]"天工",--[[!AUTO_2581]]"巧匠",--[[!AUTO_2582]]"流芳"},
	[27802] = {--[[!AUTO_2583]]"飞针",--[[!AUTO_2584]]"天工",--[[!AUTO_2585]]"巧匠",--[[!AUTO_2586]]"流芳"},
	[27803] = {--[[!AUTO_2587]]"飞针",--[[!AUTO_2588]]"天工",--[[!AUTO_2589]]"巧匠",--[[!AUTO_2590]]"流芳"},
	[27804] = {--[[!AUTO_2591]]"飞针",--[[!AUTO_2592]]"天工",--[[!AUTO_2593]]"巧匠",--[[!AUTO_2594]]"流芳"},
	[27805] = {--[[!AUTO_2595]]"飞针",--[[!AUTO_2596]]"天工",--[[!AUTO_2597]]"巧匠",--[[!AUTO_2598]]"流芳"},
	[27806] = {--[[!AUTO_2599]]"飞针",--[[!AUTO_2600]]"天工",--[[!AUTO_2601]]"巧匠",--[[!AUTO_2602]]"流芳"},
	[28007] = {--[[!AUTO_2603]]"飞针",--[[!AUTO_2604]]"天工",--[[!AUTO_2605]]"巧匠",--[[!AUTO_2606]]"流芳"},

	--手工木革始终激活

	[27944] = {--[[!AUTO_2607]]"能者",--[[!AUTO_2608]]"",--[[!AUTO_2609]]"",--[[!AUTO_2610]]""},
	[27945] = {--[[!AUTO_2611]]"能者",--[[!AUTO_2612]]"",--[[!AUTO_2613]]"",--[[!AUTO_2614]]""},
	[27946] = {--[[!AUTO_2615]]"能者",--[[!AUTO_2616]]"",--[[!AUTO_2617]]"",--[[!AUTO_2618]]""},
	[27947] = {--[[!AUTO_2619]]"能者",--[[!AUTO_2620]]"",--[[!AUTO_2621]]"",--[[!AUTO_2622]]""},
	[27948] = {--[[!AUTO_2623]]"能者",--[[!AUTO_2624]]"",--[[!AUTO_2625]]"",--[[!AUTO_2626]]""},
	[27949] = {--[[!AUTO_2627]]"能者",--[[!AUTO_2628]]"",--[[!AUTO_2629]]"",--[[!AUTO_2630]]""},
	[27950] = {--[[!AUTO_2631]]"能者",--[[!AUTO_2632]]"",--[[!AUTO_2633]]"",--[[!AUTO_2634]]""},
	[27951] = {--[[!AUTO_2635]]"能者",--[[!AUTO_2636]]"",--[[!AUTO_2637]]"",--[[!AUTO_2638]]""},
	[27952] = {--[[!AUTO_2639]]"能者",--[[!AUTO_2640]]"",--[[!AUTO_2641]]"",--[[!AUTO_2642]]""},
	[27953] = {--[[!AUTO_2643]]"能者",--[[!AUTO_2644]]"",--[[!AUTO_2645]]"",--[[!AUTO_2646]]""},
	[27954] = {--[[!AUTO_2647]]"能者",--[[!AUTO_2648]]"",--[[!AUTO_2649]]"",--[[!AUTO_2650]]""},
	[27955] = {--[[!AUTO_2651]]"能者",--[[!AUTO_2652]]"",--[[!AUTO_2653]]"",--[[!AUTO_2654]]""},
	[27956] = {--[[!AUTO_2655]]"能者",--[[!AUTO_2656]]"",--[[!AUTO_2657]]"",--[[!AUTO_2658]]""},
	[27957] = {--[[!AUTO_2659]]"能者",--[[!AUTO_2660]]"",--[[!AUTO_2661]]"",--[[!AUTO_2662]]""},
	[27958] = {--[[!AUTO_2663]]"能者",--[[!AUTO_2664]]"",--[[!AUTO_2665]]"",--[[!AUTO_2666]]""},
	[27959] = {--[[!AUTO_2667]]"能者",--[[!AUTO_2668]]"",--[[!AUTO_2669]]"",--[[!AUTO_2670]]""},

	--手工木革职业激活

	[27960] = {--[[!AUTO_2671]]"天工",--[[!AUTO_2672]]"巧匠",--[[!AUTO_2673]]"飞针",--[[!AUTO_2674]]""},
	[27961] = {--[[!AUTO_2675]]"天工",--[[!AUTO_2676]]"巧匠",--[[!AUTO_2677]]"飞针",--[[!AUTO_2678]]""},
	[27962] = {--[[!AUTO_2679]]"天工",--[[!AUTO_2680]]"巧匠",--[[!AUTO_2681]]"飞针",--[[!AUTO_2682]]""},
	[27963] = {--[[!AUTO_2683]]"天工",--[[!AUTO_2684]]"巧匠",--[[!AUTO_2685]]"飞针",--[[!AUTO_2686]]""},
	[27964] = {--[[!AUTO_2687]]"天工",--[[!AUTO_2688]]"巧匠",--[[!AUTO_2689]]"飞针",--[[!AUTO_2690]]""},
	[27965] = {--[[!AUTO_2691]]"天工",--[[!AUTO_2692]]"巧匠",--[[!AUTO_2693]]"飞针",--[[!AUTO_2694]]"流芳"},
	[27966] = {--[[!AUTO_2695]]"天工",--[[!AUTO_2696]]"巧匠",--[[!AUTO_2697]]"飞针",--[[!AUTO_2698]]"流芳"},
	[27967] = {--[[!AUTO_2699]]"天工",--[[!AUTO_2700]]"巧匠",--[[!AUTO_2701]]"飞针",--[[!AUTO_2702]]"流芳"},
	[27968] = {--[[!AUTO_2703]]"天工",--[[!AUTO_2704]]"巧匠",--[[!AUTO_2705]]"飞针",--[[!AUTO_2706]]"流芳"},
	[27969] = {--[[!AUTO_2707]]"天工",--[[!AUTO_2708]]"巧匠",--[[!AUTO_2709]]"飞针",--[[!AUTO_2710]]"流芳"},
	[27970] = {--[[!AUTO_2711]]"天工",--[[!AUTO_2712]]"巧匠",--[[!AUTO_2713]]"飞针",--[[!AUTO_2714]]"流芳"},
	[27971] = {--[[!AUTO_2715]]"天工",--[[!AUTO_2716]]"巧匠",--[[!AUTO_2717]]"飞针",--[[!AUTO_2718]]"流芳"},
	[27972] = {--[[!AUTO_2719]]"天工",--[[!AUTO_2720]]"巧匠",--[[!AUTO_2721]]"飞针",--[[!AUTO_2722]]"流芳"},
	[27973] = {--[[!AUTO_2723]]"天工",--[[!AUTO_2724]]"巧匠",--[[!AUTO_2725]]"飞针",--[[!AUTO_2726]]"流芳"},
	[27974] = {--[[!AUTO_2727]]"天工",--[[!AUTO_2728]]"巧匠",--[[!AUTO_2729]]"飞针",--[[!AUTO_2730]]"流芳"},
	[27975] = {--[[!AUTO_2731]]"天工",--[[!AUTO_2732]]"巧匠",--[[!AUTO_2733]]"飞针",--[[!AUTO_2734]]"流芳"},


	--治疗基础永远激活

	[27832] = {--[[!AUTO_2735]]"长生",--[[!AUTO_2736]]"",--[[!AUTO_2737]]"",--[[!AUTO_2738]]""},
	[27833] = {--[[!AUTO_2739]]"长生",--[[!AUTO_2740]]"",--[[!AUTO_2741]]"",--[[!AUTO_2742]]""},
	[27834] = {--[[!AUTO_2743]]"长生",--[[!AUTO_2744]]"",--[[!AUTO_2745]]"",--[[!AUTO_2746]]""},
	[27835] = {--[[!AUTO_2747]]"长生",--[[!AUTO_2748]]"",--[[!AUTO_2749]]"",--[[!AUTO_2750]]""},
	--治疗基础职业激活

	[27836] = {--[[!AUTO_2751]]"运·医",--[[!AUTO_2752]]"",--[[!AUTO_2753]]"",--[[!AUTO_2754]]""},
	[27837] = {--[[!AUTO_2755]]"运·医",--[[!AUTO_2756]]"",--[[!AUTO_2757]]"",--[[!AUTO_2758]]""},
	[27838] = {--[[!AUTO_2759]]"运·医",--[[!AUTO_2760]]"",--[[!AUTO_2761]]"",--[[!AUTO_2762]]""},
	[27839] = {--[[!AUTO_2763]]"运·医",--[[!AUTO_2764]]"",--[[!AUTO_2765]]"",--[[!AUTO_2766]]""},

	--治疗养生始终激活

	[27872] = {--[[!AUTO_2767]]"长生",--[[!AUTO_2768]]"",--[[!AUTO_2769]]"",--[[!AUTO_2770]]""},
	[27873] = {--[[!AUTO_2771]]"长生",--[[!AUTO_2772]]"",--[[!AUTO_2773]]"",--[[!AUTO_2774]]""},
	[27874] = {--[[!AUTO_2775]]"长生",--[[!AUTO_2776]]"",--[[!AUTO_2777]]"",--[[!AUTO_2778]]""},
	[27875] = {--[[!AUTO_2779]]"长生",--[[!AUTO_2780]]"",--[[!AUTO_2781]]"",--[[!AUTO_2782]]""},
	[27876] = {--[[!AUTO_2783]]"长生",--[[!AUTO_2784]]"",--[[!AUTO_2785]]"",--[[!AUTO_2786]]""},
	[27877] = {--[[!AUTO_2787]]"长生",--[[!AUTO_2788]]"",--[[!AUTO_2789]]"",--[[!AUTO_2790]]""},
	[27878] = {--[[!AUTO_2791]]"长生",--[[!AUTO_2792]]"",--[[!AUTO_2793]]"",--[[!AUTO_2794]]""},
	[27879] = {--[[!AUTO_2795]]"长生",--[[!AUTO_2796]]"",--[[!AUTO_2797]]"",--[[!AUTO_2798]]""},
	[27880] = {--[[!AUTO_2799]]"长生",--[[!AUTO_2800]]"",--[[!AUTO_2801]]"",--[[!AUTO_2802]]""},
	[27881] = {--[[!AUTO_2803]]"长生",--[[!AUTO_2804]]"",--[[!AUTO_2805]]"",--[[!AUTO_2806]]""},
	[27882] = {--[[!AUTO_2807]]"长生",--[[!AUTO_2808]]"",--[[!AUTO_2809]]"",--[[!AUTO_2810]]""},
	[27883] = {--[[!AUTO_2811]]"长生",--[[!AUTO_2812]]"",--[[!AUTO_2813]]"",--[[!AUTO_2814]]""},
	[27884] = {--[[!AUTO_2815]]"长生",--[[!AUTO_2816]]"",--[[!AUTO_2817]]"",--[[!AUTO_2818]]""},
	[27885] = {--[[!AUTO_2819]]"长生",--[[!AUTO_2820]]"",--[[!AUTO_2821]]"",--[[!AUTO_2822]]""},
	[27886] = {--[[!AUTO_2823]]"长生",--[[!AUTO_2824]]"",--[[!AUTO_2825]]"",--[[!AUTO_2826]]""},
	[27887] = {--[[!AUTO_2827]]"长生",--[[!AUTO_2828]]"",--[[!AUTO_2829]]"",--[[!AUTO_2830]]""},

	--治疗养生职业激活

	[27888] = {--[[!AUTO_2831]]"运·医",--[[!AUTO_2832]]"识味",--[[!AUTO_2833]]"",--[[!AUTO_2834]]""},
	[27889] = {--[[!AUTO_2835]]"运·医",--[[!AUTO_2836]]"识味",--[[!AUTO_2837]]"",--[[!AUTO_2838]]""},
	[27890] = {--[[!AUTO_2839]]"运·医",--[[!AUTO_2840]]"识味",--[[!AUTO_2841]]"",--[[!AUTO_2842]]""},
	[27891] = {--[[!AUTO_2843]]"运·医",--[[!AUTO_2844]]"识味",--[[!AUTO_2845]]"",--[[!AUTO_2846]]""},
	[27892] = {--[[!AUTO_2847]]"运·医",--[[!AUTO_2848]]"识味",--[[!AUTO_2849]]"",--[[!AUTO_2850]]""},
	[27893] = {--[[!AUTO_2851]]"运·医",--[[!AUTO_2852]]"识味",--[[!AUTO_2853]]"",--[[!AUTO_2854]]""},
	[27894] = {--[[!AUTO_2855]]"运·医",--[[!AUTO_2856]]"识味",--[[!AUTO_2857]]"",--[[!AUTO_2858]]""},
	[27895] = {--[[!AUTO_2859]]"运·医",--[[!AUTO_2860]]"识味",--[[!AUTO_2861]]"",--[[!AUTO_2862]]""},
	[27896] = {--[[!AUTO_2863]]"运·医",--[[!AUTO_2864]]"识味",--[[!AUTO_2865]]"",--[[!AUTO_2866]]""},
	[27897] = {--[[!AUTO_2867]]"运·医",--[[!AUTO_2868]]"识味",--[[!AUTO_2869]]"",--[[!AUTO_2870]]""},
	[27898] = {--[[!AUTO_2871]]"运·医",--[[!AUTO_2872]]"识味",--[[!AUTO_2873]]"",--[[!AUTO_2874]]""},
	[27899] = {--[[!AUTO_2875]]"运·医",--[[!AUTO_2876]]"识味",--[[!AUTO_2877]]"",--[[!AUTO_2878]]""},
	[27900] = {--[[!AUTO_2879]]"运·医",--[[!AUTO_2880]]"识味",--[[!AUTO_2881]]"",--[[!AUTO_2882]]""},
	[27901] = {--[[!AUTO_2883]]"运·医",--[[!AUTO_2884]]"识味",--[[!AUTO_2885]]"",--[[!AUTO_2886]]""},
	[27902] = {--[[!AUTO_2887]]"运·医",--[[!AUTO_2888]]"识味",--[[!AUTO_2889]]"",--[[!AUTO_2890]]""},
	[27903] = {--[[!AUTO_2891]]"运·医",--[[!AUTO_2892]]"识味",--[[!AUTO_2893]]"",--[[!AUTO_2894]]""},

	--治疗医师始终激活

	[27840] = {--[[!AUTO_2895]]"长生",--[[!AUTO_2896]]"",--[[!AUTO_2897]]"",--[[!AUTO_2898]]""},
	[27841] = {--[[!AUTO_2899]]"长生",--[[!AUTO_2900]]"",--[[!AUTO_2901]]"",--[[!AUTO_2902]]""},
	[27842] = {--[[!AUTO_2903]]"长生",--[[!AUTO_2904]]"",--[[!AUTO_2905]]"",--[[!AUTO_2906]]""},
	[27843] = {--[[!AUTO_2907]]"长生",--[[!AUTO_2908]]"",--[[!AUTO_2909]]"",--[[!AUTO_2910]]""},
	[27844] = {--[[!AUTO_2911]]"长生",--[[!AUTO_2912]]"",--[[!AUTO_2913]]"",--[[!AUTO_2914]]""},
	[27845] = {--[[!AUTO_2915]]"长生",--[[!AUTO_2916]]"",--[[!AUTO_2917]]"",--[[!AUTO_2918]]""},
	[27846] = {--[[!AUTO_2919]]"长生",--[[!AUTO_2920]]"",--[[!AUTO_2921]]"",--[[!AUTO_2922]]""},
	[27847] = {--[[!AUTO_2923]]"长生",--[[!AUTO_2924]]"",--[[!AUTO_2925]]"",--[[!AUTO_2926]]""},
	[27848] = {--[[!AUTO_2927]]"长生",--[[!AUTO_2928]]"",--[[!AUTO_2929]]"",--[[!AUTO_2930]]""},
	[27849] = {--[[!AUTO_2931]]"长生",--[[!AUTO_2932]]"",--[[!AUTO_2933]]"",--[[!AUTO_2934]]""},
	[27850] = {--[[!AUTO_2935]]"长生",--[[!AUTO_2936]]"",--[[!AUTO_2937]]"",--[[!AUTO_2938]]""},
	[27851] = {--[[!AUTO_2939]]"长生",--[[!AUTO_2940]]"",--[[!AUTO_2941]]"",--[[!AUTO_2942]]""},
	[27852] = {--[[!AUTO_2943]]"长生",--[[!AUTO_2944]]"",--[[!AUTO_2945]]"",--[[!AUTO_2946]]""},
	[27853] = {--[[!AUTO_2947]]"长生",--[[!AUTO_2948]]"",--[[!AUTO_2949]]"",--[[!AUTO_2950]]""},
	[27854] = {--[[!AUTO_2951]]"长生",--[[!AUTO_2952]]"",--[[!AUTO_2953]]"",--[[!AUTO_2954]]""},
	[27855] = {--[[!AUTO_2955]]"长生",--[[!AUTO_2956]]"",--[[!AUTO_2957]]"",--[[!AUTO_2958]]""},

	--治疗医师职业激活

	[27856] = {--[[!AUTO_2959]]"运·医",--[[!AUTO_2960]]"续命",--[[!AUTO_2961]]"",--[[!AUTO_2962]]""},
	[27857] = {--[[!AUTO_2963]]"运·医",--[[!AUTO_2964]]"续命",--[[!AUTO_2965]]"",--[[!AUTO_2966]]""},
	[27858] = {--[[!AUTO_2967]]"运·医",--[[!AUTO_2968]]"续命",--[[!AUTO_2969]]"",--[[!AUTO_2970]]""},
	[27859] = {--[[!AUTO_2971]]"运·医",--[[!AUTO_2972]]"续命",--[[!AUTO_2973]]"",--[[!AUTO_2974]]""},
	[27860] = {--[[!AUTO_2975]]"运·医",--[[!AUTO_2976]]"续命",--[[!AUTO_2977]]"",--[[!AUTO_2978]]""},
	[27861] = {--[[!AUTO_2979]]"运·医",--[[!AUTO_2980]]"续命",--[[!AUTO_2981]]"",--[[!AUTO_2982]]""},
	[27862] = {--[[!AUTO_2983]]"运·医",--[[!AUTO_2984]]"续命",--[[!AUTO_2985]]"",--[[!AUTO_2986]]""},
	[27863] = {--[[!AUTO_2987]]"运·医",--[[!AUTO_2988]]"续命",--[[!AUTO_2989]]"",--[[!AUTO_2990]]""},
	[27864] = {--[[!AUTO_2991]]"运·医",--[[!AUTO_2992]]"续命",--[[!AUTO_2993]]"",--[[!AUTO_2994]]""},
	[27865] = {--[[!AUTO_2995]]"运·医",--[[!AUTO_2996]]"续命",--[[!AUTO_2997]]"",--[[!AUTO_2998]]""},
	[27866] = {--[[!AUTO_2999]]"运·医",--[[!AUTO_3000]]"续命",--[[!AUTO_3001]]"",--[[!AUTO_3002]]""},
	[27867] = {--[[!AUTO_3003]]"运·医",--[[!AUTO_3004]]"续命",--[[!AUTO_3005]]"",--[[!AUTO_3006]]""},
	[27868] = {--[[!AUTO_3007]]"运·医",--[[!AUTO_3008]]"续命",--[[!AUTO_3009]]"",--[[!AUTO_3010]]""},
	[27869] = {--[[!AUTO_3011]]"运·医",--[[!AUTO_3012]]"续命",--[[!AUTO_3013]]"",--[[!AUTO_3014]]""},
	[27870] = {--[[!AUTO_3015]]"运·医",--[[!AUTO_3016]]"续命",--[[!AUTO_3017]]"",--[[!AUTO_3018]]""},
	[28871] = {--[[!AUTO_3019]]"运·医",--[[!AUTO_3020]]"续命",--[[!AUTO_3021]]"",--[[!AUTO_3022]]""},

}

ITEM_PURCHASE_TEXT_DEFAULT = --[[!AUTO_3023]]"未知效果"
---------------------------------------------
--改变阵营提示文本
--新阵营

camp_tip_new = {}
camp_tip_new["default"] = --[[!AUTO_3024]]""
--老阵营

camp_tip_old = {}
camp_tip_old["default"] = --[[!AUTO_3025]]""



--家园仆人描述
SERVANT_ABILITY = {
	[0] = --[[!AUTO_3026]]"无",
	[1] = --[[!AUTO_3027]]"统率",
	[2] = --[[!AUTO_3028]]"茶道",
	[3] = --[[!AUTO_3029]]"音律",
	[4] = --[[!AUTO_3030]]"美貌",
	[5] = --[[!AUTO_3031]]"推拿",
	[6] = --[[!AUTO_3032]]"医理",
	[7] = --[[!AUTO_3033]]"诗词",
	[8] = --[[!AUTO_3034]]"国画",
	[9] = --[[!AUTO_3035]]"歌舞",
	[10] = --[[!AUTO_3036]]"厨艺",
	[11] = --[[!AUTO_3037]]"谈判",
	[12] = --[[!AUTO_3038]]"经营",
	[13] = --[[!AUTO_3039]]"插花",
	[14] = --[[!AUTO_3040]]"棋艺",
	[15] = --[[!AUTO_3041]]"观星",
}
SERVANT_ABILITY_TEXT = {
	[1] = --[[!AUTO_3042]]"描述文字，大概30~50字，先占位预留下位置。",
	[2] = --[[!AUTO_3043]]"描述文字，大概30~50字，先占位预留下位置。",
	[3] = --[[!AUTO_3044]]"描述文字，大概30~50字，先占位预留下位置。",
	[4] = --[[!AUTO_3045]]"描述文字，大概30~50字，先占位预留下位置。",
	[5] = --[[!AUTO_3046]]"描述文字，大概30~50字，先占位预留下位置。",
	[6] = --[[!AUTO_3047]]"描述文字，大概30~50字，先占位预留下位置。",
	[7] = --[[!AUTO_3048]]"描述文字，大概30~50字，先占位预留下位置。",
	[8] = --[[!AUTO_3049]]"描述文字，大概30~50字，先占位预留下位置。",
	[9] = --[[!AUTO_3050]]"描述文字，大概30~50字，先占位预留下位置。",
	[10] = --[[!AUTO_3051]]"描述文字，大概30~50字，先占位预留下位置。",
	[11] = --[[!AUTO_3052]]"描述文字，大概30~50字，先占位预留下位置。",
	[12] = --[[!AUTO_3053]]"描述文字，大概30~50字，先占位预留下位置。",
	[13] = --[[!AUTO_3054]]"描述文字，大概30~50字，先占位预留下位置。",
	[14] = --[[!AUTO_3055]]"描述文字，大概30~50字，先占位预留下位置。",
	[15] = --[[!AUTO_3056]]"描述文字，大概30~50字，先占位预留下位置。",
}

SERVANT_GROUP_DESC = {
	[101] = {name = --[[!AUTO_3057]]"四大美女",groupnum = 4,group = {31934,31935,31936,31937}},
	[201] = {name = --[[!AUTO_3058]]"搞怪恶男",groupnum = 5,group = {32016,32017,32018,32019,32020}},
	[301] = {name = --[[!AUTO_3059]]"初唐三杰",groupnum = 3,group = {32067,32068,32069}},
	[401] = {name = --[[!AUTO_3060]]"金算盘",groupnum = 4,group = {34536,34537,34538,34539}},
}
SERVANT_GROUP_TEXT01 = --[[!AUTO_3061]]"^00ff00套卡效果\r所有仆人特长生效几率提高至100%。"

TREASUREITEM_TYPE_DESC = {
	[0] = --[[!AUTO_3062]]"神兵",
	[1] = --[[!AUTO_3063]]"宝甲",
	[2] = --[[!AUTO_3064]]"暗器",
	[3] = --[[!AUTO_3065]]"阵法",
	[4] = --[[!AUTO_3066]]"轻功",
	[5] = --[[!AUTO_3067]]"主攻内功",
	[6] = --[[!AUTO_3068]]"主守内功",
	[7] = --[[!AUTO_3069]]"练功器具",
	[8] = --[[!AUTO_3070]]"灵药",
}

TREASUREITEM_QULITY_DESC = {
	[1] = --[[!AUTO_3071]]"普通",
	[2] = --[[!AUTO_3072]]"优良",
	[3] = --[[!AUTO_3073]]"精致",
	[4] = --[[!AUTO_3074]]"珍稀",
	[5] = --[[!AUTO_3075]]"传世",
}

TREASURE_EFFECT_NAME = {
[0] = --[[!AUTO_3076]]"外功攻击",
[1] = --[[!AUTO_3077]]"外功防御",
[2] = --[[!AUTO_3078]]"会心",
[3] = --[[!AUTO_3079]]"抵御",
[4] = --[[!AUTO_3080]]"精通",
[5] = --[[!AUTO_3081]]"内功攻击",
[6] = --[[!AUTO_3082]]"内功防御",
[7] = --[[!AUTO_3083]]"内力上限",
[8] = --[[!AUTO_3084]]"气血上限",
}

TREASURE_EFFECT_DATA = {}

TREASURE_EFFECT_DATA[0] ={}
TREASURE_EFFECT_DATA[0][1] = { [1] = 48,[2] = 54,[3] = 60,[4] = 66,[5] = 72,[6] = 78,[7] = 84,[8] = 90,[9] = 96, }
TREASURE_EFFECT_DATA[0][2] = { [1] = 97,[2] = 109,[3] = 121,[4] = 133,[5] = 145,[6] = 157,[7] = 169,[8] = 181,[9] = 193, }
TREASURE_EFFECT_DATA[0][3] = { [1] = 194,[2] = 218,[3] = 242,[4] = 266,[5] = 290,[6] = 314,[7] = 338,[8] = 362,[9] = 386, }
TREASURE_EFFECT_DATA[0][4] = { [1] = 387,[2] = 423,[3] = 459,[4] = 495,[5] = 531,[6] = 567,[7] = 603,[8] = 639,[9] = 675, }
TREASURE_EFFECT_DATA[0][5] = { [1] = 678,[2] = 726,[3] = 774,[4] = 822,[5] = 870,[6] = 918,[7] = 966,[8] = 1014,[9] = 1062, }

TREASURE_EFFECT_DATA[1] ={}
TREASURE_EFFECT_DATA[1][1] = { [1] = 48,[2] = 54,[3] = 60,[4] = 66,[5] = 72,[6] = 78,[7] = 84,[8] = 90,[9] = 96, }
TREASURE_EFFECT_DATA[1][2] = { [1] = 96,[2] = 108,[3] = 120,[4] = 132,[5] = 144,[6] = 156,[7] = 168,[8] = 180,[9] = 192, }
TREASURE_EFFECT_DATA[1][3] = { [1] = 192,[2] = 216,[3] = 240,[4] = 264,[5] = 288,[6] = 312,[7] = 336,[8] = 362,[9] = 384, }
TREASURE_EFFECT_DATA[1][4] = { [1] = 384,[2] = 420,[3] = 456,[4] = 492,[5] = 528,[6] = 564,[7] = 600,[8] = 636,[9] = 672, }
TREASURE_EFFECT_DATA[1][5] = { [1] = 672,[2] = 720,[3] = 768,[4] = 816,[5] = 864,[6] = 912,[7] = 960,[8] = 1008,[9] = 1056, }

TREASURE_EFFECT_DATA[2] ={}
TREASURE_EFFECT_DATA[2][1] = { [1] = 32,[2] = 35,[3] = 38,[4] = 41,[5] = 44,[6] = 47,[7] = 50,[8] = 53,[9] = 56, }
TREASURE_EFFECT_DATA[2][2] = { [1] = 56,[2] = 63,[3] = 70,[4] = 77,[5] = 84,[6] = 91,[7] = 98,[8] = 105,[9] = 112, }
TREASURE_EFFECT_DATA[2][3] = { [1] = 113,[2] = 127,[3] = 141,[4] = 155,[5] = 169,[6] = 183,[7] = 197,[8] = 211,[9] = 225, }
TREASURE_EFFECT_DATA[2][4] = { [1] = 226,[2] = 247,[3] = 268,[4] = 289,[5] = 310,[6] = 331,[7] = 352,[8] = 371,[9] = 394, }
TREASURE_EFFECT_DATA[2][5] = { [1] = 396,[2] = 424,[3] = 452,[4] = 480,[5] = 508,[6] = 536,[7] = 564,[8] = 592,[9] = 620, }

TREASURE_EFFECT_DATA[3] ={}
TREASURE_EFFECT_DATA[3][1] = { [1] = 45,[2] = 50,[3] = 55,[4] = 60,[5] = 65,[6] = 70,[7] = 75,[8] = 80,[9] = 85, }
TREASURE_EFFECT_DATA[3][2] = { [1] = 90,[2] = 100,[3] = 110,[4] = 120,[5] = 130,[6] = 140,[7] = 150,[8] = 160,[9] = 170, }
TREASURE_EFFECT_DATA[3][3] = { [1] = 173,[2] = 194,[3] = 215,[4] = 236,[5] = 257,[6] = 278,[7] = 299,[8] = 320,[9] = 341, }
TREASURE_EFFECT_DATA[3][4] = { [1] = 341,[2] = 373,[3] = 405,[4] = 437,[5] = 469,[6] = 501,[7] = 533,[8] = 565,[9] = 597, }
TREASURE_EFFECT_DATA[3][5] = { [1] = 603,[2] = 645,[3] = 687,[4] = 729,[5] = 771,[6] = 813,[7] = 855,[8] = 897,[9] = 939, }

TREASURE_EFFECT_DATA[4] ={}
TREASURE_EFFECT_DATA[4][1] = { [1] = 64,[2] = 72,[3] = 80,[4] = 88,[5] = 96,[6] = 104,[7] = 112,[8] = 120,[9] = 128, }
TREASURE_EFFECT_DATA[4][2] = { [1] = 128,[2] = 144,[3] = 160,[4] = 176,[5] = 192,[6] = 208,[7] = 224,[8] = 240,[9] = 256, }
TREASURE_EFFECT_DATA[4][3] = { [1] = 256,[2] = 288,[3] = 320,[4] = 352,[5] = 384,[6] = 416,[7] = 448,[8] = 480,[9] = 512, }
TREASURE_EFFECT_DATA[4][4] = { [1] = 512,[2] = 560,[3] = 608,[4] = 656,[5] = 704,[6] = 752,[7] = 800,[8] = 848,[9] = 896, }
TREASURE_EFFECT_DATA[4][5] = { [1] = 897,[2] = 961,[3] = 1025,[4] = 1089,[5] = 1153,[6] = 1217,[7] = 1281,[8] = 1345,[9] = 1409, }

TREASURE_EFFECT_DATA[5] ={}
TREASURE_EFFECT_DATA[5][1] = { [1] = 48,[2] = 54,[3] = 60,[4] = 66,[5] = 72,[6] = 78,[7] = 84,[8] = 90,[9] = 96, }
TREASURE_EFFECT_DATA[5][2] = { [1] = 97,[2] = 109,[3] = 121,[4] = 133,[5] = 145,[6] = 157,[7] = 169,[8] = 181,[9] = 193, }
TREASURE_EFFECT_DATA[5][3] = { [1] = 194,[2] = 218,[3] = 242,[4] = 266,[5] = 290,[6] = 314,[7] = 338,[8] = 362,[9] = 386, }
TREASURE_EFFECT_DATA[5][4] = { [1] = 387,[2] = 423,[3] = 459,[4] = 495,[5] = 531,[6] = 567,[7] = 603,[8] = 639,[9] = 675, }
TREASURE_EFFECT_DATA[5][5] = { [1] = 678,[2] = 726,[3] = 774,[4] = 822,[5] = 870,[6] = 918,[7] = 966,[8] = 1014,[9] = 1062, }

TREASURE_EFFECT_DATA[6] ={}
TREASURE_EFFECT_DATA[6][1] = { [1] = 48,[2] = 54,[3] = 60,[4] = 66,[5] = 72,[6] = 78,[7] = 84,[8] = 90,[9] = 96, }
TREASURE_EFFECT_DATA[6][2] = { [1] = 96,[2] = 108,[3] = 120,[4] = 132,[5] = 144,[6] = 156,[7] = 168,[8] = 180,[9] = 192, }
TREASURE_EFFECT_DATA[6][3] = { [1] = 192,[2] = 216,[3] = 240,[4] = 264,[5] = 288,[6] = 312,[7] = 336,[8] = 362,[9] = 384, }
TREASURE_EFFECT_DATA[6][4] = { [1] = 384,[2] = 420,[3] = 456,[4] = 492,[5] = 528,[6] = 564,[7] = 600,[8] = 636,[9] = 672, }
TREASURE_EFFECT_DATA[6][5] = { [1] = 672,[2] = 720,[3] = 768,[4] = 816,[5] = 864,[6] = 912,[7] = 960,[8] = 1008,[9] = 1056, }

TREASURE_EFFECT_DATA[7] ={}
TREASURE_EFFECT_DATA[7][1] = { [1] = 115,[2] = 129,[3] = 143,[4] = 157,[5] = 171,[6] = 185,[7] = 199,[8] = 213,[9] = 227, }
TREASURE_EFFECT_DATA[7][2] = { [1] = 230,[2] = 258,[3] = 286,[4] = 314,[5] = 342,[6] = 370,[7] = 398,[8] = 426,[9] = 454, }
TREASURE_EFFECT_DATA[7][3] = { [1] = 460,[2] = 516,[3] = 572,[4] = 628,[5] = 684,[6] = 740,[7] = 796,[8] = 852,[9] = 908, }
TREASURE_EFFECT_DATA[7][4] = { [1] = 909,[2] = 994,[3] = 1079,[4] = 1164,[5] = 1249,[6] = 1334,[7] = 1419,[8] = 1504,[9] = 1589, }
TREASURE_EFFECT_DATA[7][5] = { [1] = 1594,[2] = 1707,[3] = 1820,[4] = 1933,[5] = 2046,[6] = 2159,[7] = 2272,[8] = 2385,[9] = 2498, }

TREASURE_EFFECT_DATA[8] ={}
TREASURE_EFFECT_DATA[8][1] = { [1] = 238,[2] = 266,[3] = 294,[4] = 322,[5] = 350,[6] = 378,[7] = 406,[8] = 434,[9] = 462, }
TREASURE_EFFECT_DATA[8][2] = { [1] = 468,[2] = 525,[3] = 582,[4] = 639,[5] = 696,[6] = 753,[7] = 810,[8] = 867,[9] = 924, }
TREASURE_EFFECT_DATA[8][3] = { [1] = 929,[2] = 1044,[3] = 1159,[4] = 1274,[5] = 1389,[6] = 1504,[7] = 1619,[8] = 1734,[9] = 1849, }
TREASURE_EFFECT_DATA[8][4] = { [1] = 1851,[2] = 2024,[3] = 2197,[4] = 2370,[5] = 2543,[6] = 2716,[7] = 2889,[8] = 3062,[9] = 3235, }
TREASURE_EFFECT_DATA[8][5] = { [1] = 3245,[2] = 3475,[3] = 3705,[4] = 3935,[5] = 4165,[6] = 4395,[7] = 4625,[8] = 4855,[9] = 5085, }

TERASURE_TRAP_EFFECT = {
[44875] = --[[!AUTO_3085]]"对触发机关的盗宝者造成持续5秒每秒500点真实伤害,触发后被消耗。",
[44876] = --[[!AUTO_3086]]"对触发机关的盗宝者造成持续5秒每秒1000点真实伤害,触发后被消耗。",
[44877] = --[[!AUTO_3087]]"对触发机关的盗宝者造成持续5秒每秒1500点真实伤害,触发后被消耗。",
[44878] = --[[!AUTO_3088]]"对触发机关的盗宝者造成3000点真实伤害,触发后被消耗。",
[44879] = --[[!AUTO_3089]]"对触发机关的盗宝者造成6000点真实伤害,触发后被消耗。",
[44880] = --[[!AUTO_3090]]"对触发机关的盗宝者造成9000点真实伤害,触发后被消耗。",
}
CHANGE_FACE_TEXT = {
	[55508] = --[[!AUTO_3091]]"右键激活使用可获得蒙面状态，用于盗窃藏宝阁守卫及使用盗宝功能。\r蒙面状态不能被主动取消，且蒙面时可以被所有玩家合法攻击。",
	[58695] = --[[!AUTO_3092]]"^00ff00变身后获得两个特殊技能\r喷火：可在街头表演，有几率获得打赏。\r顶大缸：可在街头表演，有几率获得打赏。",
	[58696] = --[[!AUTO_3093]]"^00ff00变身后获得两个特殊技能\r猜拳：与目标进行赌博，有几率赢得银票。\r骰子：与目标进行赌博，有几率赢得银票。",
	[58697] = --[[!AUTO_3094]]"^00ff00变身后获得两个特殊技能\r把脉：为目标把脉，成功诊断后会获得报酬。\r喂药：为目标喂药，治愈目标后会获得报酬。",
	[58690] = --[[!AUTO_3095]]"^00ff00变身后获得两个特殊技能\r媚眼：使目标陷入魅惑状态1分钟。\r咬唇：使目标陷入迷乱状态1分钟。",
	[58691] = --[[!AUTO_3096]]"^00ff00变身后获得两个特殊技能\r猜拳：使目标陷入嗜赌状态1分钟。\r骰子：与目标进行赌博，有几率赢得银票。",
	[58692] = --[[!AUTO_3097]]"^00ff00变身后获得一个特殊技能\r接头：对运镖NPC使用成功后，会直接接手镖车。",
	[58693] = --[[!AUTO_3098]]"^00ff00变身后获得两个特殊技能\r媚眼：使目标陷入魅惑状态1分钟。\r咬唇：使目标陷入迷乱状态1分钟。",
	[87798] = "^00ff00变身后获得两个特殊技能\r拽文：可为目标吟诵文章，有几率获得打赏。\r算数：可教授目标数理，有几率获得打赏。",
	[87799] = "^00ff00变身后获得两个特殊技能\r卖弄：可为目标展示肌肉，有几率获得打赏。\r修理：可修理目标的老旧装备，有几率获得打赏。",
	[87800] = "^00ff00变身后获得两个特殊技能\r推销：可向目标推销商品，有几率赚到差价。\r求购：可收购目标的无用之物，有几率倒手得利。",
	[87445] = "^00ff00变身后获得两个特殊技能\r驱赶：面向目标使用，可让目标向前移动一定距离。\r招呼：面向目标使用，可将目标招呼到身边。",
}

--临时用门徒资质星级
TEMP_PET_POINT_TEXT = {
	[1] = {name = --[[!AUTO_3099]]"力道",level = --[[!AUTO_3100]]"★"},
	[2] = {name = --[[!AUTO_3101]]"内劲",level = --[[!AUTO_3102]]"★★"},
	[3] = {name = --[[!AUTO_3103]]"体魄",level = --[[!AUTO_3104]]"★★★"},
	[4] = {name = --[[!AUTO_3105]]"筋骨",level = --[[!AUTO_3106]]"★★★★"},
	[5] = {name = --[[!AUTO_3107]]"气海",level = --[[!AUTO_3108]]"★★★★★"},
}


--线索物分类
CLUE_ITEM_TYPE_DESC = {
	[0] = --[[!AUTO_3109]]"作案动机",
	[1] = --[[!AUTO_3110]]"作案工具",
	[2] = --[[!AUTO_3111]]"案情分析",
}

--藏宝图等级限制
TREASUREMAP_LEVEL_LIMIT = {
	[72104] = --[[!AUTO_3112]]"等级：30",
	[72105] = --[[!AUTO_3113]]"等级：40",
	[72107] = --[[!AUTO_3114]]"等级：50",
	[72108] = --[[!AUTO_3115]]"等级：60",
	[72109] = --[[!AUTO_3116]]"等级：70",
	[72110] = --[[!AUTO_3117]]"等级：30",
	[72111] = --[[!AUTO_3118]]"等级：40",
	[72112] = --[[!AUTO_3119]]"等级：50",
	[72114] = --[[!AUTO_3120]]"等级：60",
	[72116] = --[[!AUTO_3121]]"等级：70",
	[79144] = --[[!AUTO_3170]]"等级：80",
	[79145] = --[[!AUTO_3171]]"等级：80",
}

----藏宝图团队限制：0 个人，1 团队
TREASUREMAP_TEAM_LIMIT = {
	[72104] = --[[!AUTO_3122]]"难度：个人",
	[72105] = --[[!AUTO_3123]]"难度：个人",
	[72107] = --[[!AUTO_3124]]"难度：个人",
	[72108] = --[[!AUTO_3125]]"难度：个人",
	[72109] = --[[!AUTO_3126]]"难度：个人",
	[72110] = --[[!AUTO_3127]]"难度：团队",
	[72111] = --[[!AUTO_3128]]"难度：团队",
	[72112] = --[[!AUTO_3129]]"难度：团队",
	[72114] = --[[!AUTO_3130]]"难度：团队",
	[72116] = --[[!AUTO_3131]]"难度：团队",
	[72094] = --[[!AUTO_3132]]"难度：个人",
	[72095] = --[[!AUTO_3133]]"难度：个人",
	[72096] = --[[!AUTO_3134]]"难度：个人",
	[72097] = --[[!AUTO_3135]]"难度：个人",
	[72098] = --[[!AUTO_3136]]"难度：个人",
	[72099] = --[[!AUTO_3137]]"难度：团队",
	[72100] = --[[!AUTO_3138]]"难度：团队",
	[72101] = --[[!AUTO_3139]]"难度：团队",
	[72102] = --[[!AUTO_3140]]"难度：团队",
	[72103] = --[[!AUTO_3141]]"难度：团队",
	[79142] = --[[!AUTO_3172]]"难度：个人",
	[79143] = --[[!AUTO_3173]]"难度：团队",
	[79144] = --[[!AUTO_3174]]"难度：个人",
	[79145] = --[[!AUTO_3175]]"难度：团队",
}

monster_boss_tip = {
	[56360] = --[[!AUTO_3142]]"09130成就副本通关02镖局夜战.dds",
	[34945] = --[[!AUTO_3143]]"09134成就副本通关06蝎王魔窟.dds",
	[67257] = --[[!AUTO_3144]]"02094嚣张武官.dds",
	[67259] = --[[!AUTO_3145]]"09142成就副本通关14叛军本营.dds",
	[38080] = --[[!AUTO_3146]]"09137成就副本通关09青城覆灭.dds",
	[60632] = --[[!AUTO_3147]]"01499丁勉.dds",
	[67600] = --[[!AUTO_3148]]"09046精英白剑客.dds",
	[66767] = --[[!AUTO_3149]]"09048怪书生.dds",
	[60675] = --[[!AUTO_3150]]"01539黑白子.dds",
	[67016] = --[[!AUTO_3151]]"01527任我行.dds",
	[4675] = --[[!AUTO_3152]]"01527任我行.dds",
}

--福缘值
LUCKY_VALUE_DESC = {
	[1] = {Min = 0, Max = 1, Name = --[[!AUTO_3176]]"泽水困卦", Desc = --[[!AUTO_3177]]"客卦兑、主卦坎，乃陷入泽水困境之象，忌出行、婚嫁。坐马则马落险地，行舟则船倾江海，万事不吉也。此卦不利情感事，有黯然销魂、情不可聚之象。不过天下诸事，福祸相依，断不能一概而论也！", Color = --[[!AUTO_3178]]"^ce58ff", Value = --[[!AUTO_3274]]"厄运缠身"},
	[2] = {Min = 2, Max = 20, Name = --[[!AUTO_3179]]"天地否卦", Desc = --[[!AUTO_3180]]"客卦乾、主卦坤，上下不合，万物闭塞之象。见此卦者，处处掣肘，有寸步难行、左右跌倒之感。更有甚者，如坠三九寒冰之中，稍有不慎，便陷万劫不复之地。", Color = --[[!AUTO_3181]]"^3485ff", Value = --[[!AUTO_3275]]"寸步难行"},
	[3] = {Min = 21, Max = 40, Name = --[[!AUTO_3182]]"雷山小过卦", Desc = --[[!AUTO_3183]]"东方甲乙木，北方任癸水。以竹木盛水，则篮漏水出，毫无所得。此乃辛苦奔波，却毫无所得之象。然世间之事，如白驹过隙、变化万千。白日打恶狗，夜间登朱门，此中奥妙，需得细细体会。", Color = --[[!AUTO_3184]]"", Value = --[[!AUTO_3276]]"竹篮打水"},
	[4] = {Min = 41, Max = 50, Name = --[[!AUTO_3185]]"雷泽归妹卦", Desc = --[[!AUTO_3186]]"人生在世，恍然一梦，或如越女执剑败千人，或是墨客哀思守孤坟。当你仗剑江湖时，只要能快意恩仇就可以了，执着于是梦还是非梦，又有什么意义呢？", Color = --[[!AUTO_3187]]"", Value = --[[!AUTO_3277]]"黄粱一梦"},
	[5] = {Min = 51, Max = 60, Name = --[[!AUTO_3188]]"火水未济卦", Desc = --[[!AUTO_3189]]"烈火煮水，将沸未沸，本当耐心以待，以不变应万变，以此卜之，自当无灾无难，平安一生。然则心急之人，却伸出铁掌，以掌风催动火势，这本当风平浪静的日子，便也变得乌云密布、海浪滔天起来。", Color = --[[!AUTO_3190]]"", Value = --[[!AUTO_3278]]"无灾无难"},
	[6] = {Min = 61, Max = 70, Name = --[[!AUTO_3191]]"地风升卦", Desc = --[[!AUTO_3192]]"风从地起，潜龙抬头，你已然时来运转，只要再多点努力，定能否极泰来、神照于顶，有所收获。至于此卦又有何深意，便是贫道我也难以琢磨。", Color = --[[!AUTO_3193]]"", Value = --[[!AUTO_3279]]"福缘隐现"},
	[7] = {Min = 71, Max = 80, Name = --[[!AUTO_3194]]"风雷益卦", Desc = --[[!AUTO_3195]]"此卦上吉。雷雨刚过，地气纯阳，紫霞满天，万物空明。忽有清风袭来，卷野草成球，落于太祖亭中，顿成天残之象。危急之时，恰有美女款款而来，执帚扫叶，除尘去晦，万事复归吉也。", Color = --[[!AUTO_3196]]"^008000", Value = --[[!AUTO_3280]]"顺风顺水"},
	[8] = {Min = 81, Max = 90, Name = --[[!AUTO_3197]]"地天泰卦", Desc = --[[!AUTO_3198]]"此卦大吉，乃斗转星移、天地交泰、万物和合之象。你已然历经生死之劫，否极泰来，正走出黑暗之地，纵然见到的不过一尺之阳，但也能感受如来佛祖的大海无量之恩，定能清心普善，成为当世之侠。", Color = --[[!AUTO_3199]]"^008000", Value = --[[!AUTO_3281]]"福泽临门"},
	[9] = {Min = 91, Max = 99, Name = --[[!AUTO_3200]]"坤为地卦", Desc = --[[!AUTO_3201]]"紫气东来，富贵之极，心中有如圣火燃烧，耳侧能听龙象之声。若醉心武学，不断精进，则易经洗髓、化功而为的境地，指日可待也！", Color = --[[!AUTO_3202]]"^3485ff", Value = --[[!AUTO_3282]]"紫气东来"},
	[10] = {Min = 100, Max = 100, Name = --[[!AUTO_3203]]"乾为天卦", Desc = --[[!AUTO_3204]]"上上之吉，可遇而不可求的之卦，得此卦者，有乾坤挪移、吸星降龙之力，纵然只有葵花一朵，也可凌波微步，笑傲江湖。居士还等什么？机不可失，失不再来！速速找寻自己的机缘去吧！", Color = --[[!AUTO_3205]]"^ce58ff", Value = --[[!AUTO_3283]]"天官赐福"},
}

--比武场说明文本
BATTLE_INTRUDUCTION_TEXT = {
	[0] = "第1名：\r称号：^ff0000【风云】\r^ffffff奖励：^ffcb40一级英雄权限、风云徽章、英雄榜第四位肖像权\r比武场正中NPC形象重铸权、重铸令牌(25天)×1\r\r^ffffff第2名：\r称号：^a800ff【天涯】\r^ffffff奖励：^ffcb40二级英雄权限\r\r^ffffff第3名：\r称号：^ff7d2f【流星】\r^ffffff奖励：^ffcb40三级英雄权限\r\r^ffffff本赛季奖励发放时间：2013年12月15日20点10分\r本赛季榜单统计周期：永久",
	[1] = "第1名：\r称号：^ff7d2f【亦幻】\r^ffffff奖励：^ffcb40二级英雄权限、亦幻徽章\r比武场左侧NPC形象重铸权、重铸令牌(25天)×1、纵横天下(30天)×1\r飞行旗×30\r\r^ffffff第2名：\r称号：^a800ff【苍月】\r^ffffff奖励：^ffcb40三级英雄权限、纵横天下(14天)×1、飞行旗×25\r\r^ffffff第3名：\r称号：^a800ff【红莲】\r^ffffff奖励：^ffcb40三级英雄权限、纵横天下(14天)×1、飞行旗×20\r\r^ffffff第4名：\r称号：^a800ff【冰魄】\r^ffffff奖励：^ffcb40三级英雄权限、纵横天下(14天)×1、飞行旗×20\r\r^ffffff第5名：\r称号：^a800ff【碧血】\r^ffffff奖励：^ffcb40三级英雄权限、纵横天下(14天)×1、飞行旗×10\r\r\r^ffffff竞技积分<2500>以上分段\r^ffffff奖励：^ffcb40三级精炼石×198、银叶子×30、高级秘笈书卷×20\r\r^ffffff竞技积分<2400~2499>分段\r^ffffff奖励：^ffcb40二级精炼石×198、银叶子×20、高级秘笈书卷×10\r\r^ffffff竞技积分<2300~2399>分段\r^ffffff奖励：^ffcb40一级精炼石×198、银叶子×15、高级秘笈书卷×7\r\r^ffffff竞技积分<2200~2299>分段\r^ffffff奖励：^ffcb40一级精炼石×149、银叶子×10、高级秘笈书卷×5\r\r^ffffff竞技积分<2100~2199>分段\r^ffffff奖励：^ffcb40一级精炼石×99、银叶子×10、高级秘笈书卷×3\r\r^ffffff本赛季奖励发放时间：2013年12月15日20点10分\r本赛季榜单统计周期：2013年11月15日21点10分至2013年12月15日20点",
	[2] = "第1名：\r称号：^ff7d2f【幻灭】\r^ffffff奖励：^ffcb40二级英雄权限、幻灭徽章\r比武场右侧NPC形象重铸权、重铸令牌(25天)×1纵横天下(30天)×1\r千里传音×20\r\r^ffffff第2名：\r称号：^a800ff【沧海】\r^ffffff奖励：^ffcb40三级英雄权限、纵横天下(14天)×1、千里传音×15\r\r^ffffff第3名：\r称号：^a800ff【红尘】\r^ffffff奖励：^ffcb40三级英雄权限、纵横天下(14天)×1、千里传音×10\r\r^ffffff第4名：\r称号：^a800ff【紫陌】\r^ffffff奖励：^ffcb40三级英雄权限、纵横天下(14天)×1、千里传音×10\r\r^ffffff第5名：\r称号：^a800ff【碧落】\r^ffffff奖励：^ffcb40三级英雄权限、纵横天下(14天)×1、千里传音×10\r\r\r^ffffff血战积分<2500以上>分段\r^ffffff奖励：^ffcb40四级大还丹×6、银叶子×20、秘笈书卷×30\r\r^ffffff血战积分<2400-2499>分段\r^ffffff奖励：^ffcb40三级大还丹×10、银叶子×14、秘笈书卷×15\r\r^ffffff血战积分<2300-2399>分段\r^ffffff奖励：^ffcb40三级大还丹×8、银叶子×10、秘笈书卷×11\r\r^ffffff血战积分<2200-2299>分段\r^ffffff奖励：^ffcb40三级大还丹×6、银叶子×6、秘笈书卷×8\r\r^ffffff血战积分<2100-2199>分段\r^ffffff奖励：^ffcb40二级大还丹×10、银叶子×6、秘笈书卷×5\r\r^ffffff本赛季奖励发放时间：2013年12月15日20点10分\r本赛季榜单统计周期：2013年11月15日21点10分至2013年12月15日20点",
	[3] = "一、比赛时间\r　　每月第四个周五19:50~21:30。\r\r二、参赛资格\r　　上月竞技积分排行榜前32名。\r\r三、比赛规则\r　　1.上月竞技排行榜前8名选手为种子选手，比赛位置固定。其余选手将分配到任意位置配对进行首轮比赛。比赛采取每局200秒单局决胜的方式。8强后将采取200秒三局两胜制。\r　　2.系统将自动于比赛前100秒创建房间,并将指定选手从准备区拉到备战位置，选手也可自行进入所属房间进行准备，如果比赛开始时选手仍没有进入房间，则视为弃权。判对手胜利。\r　　3.进入比赛房间后的选手无房主。默认比赛模式为禁用道具，门徒，坐骑，药品，暗器，切换装备。在规定开赛时间自动开始比赛。系统将判定并记录胜负。\r　　4.比赛结束后，房间将自动关闭。选手自动进入准备区。\r　　5.胜者将进入下一轮，负者将淘汰。\r　　6.若两人打平，则排名高者获胜。\r　　7.其他非比赛玩家将可以自由观战。不允许其他玩家创建房间。\r\r四、时间安排\r　　　　^ffffff19：50　　^ffcb40 竞猜中止，选手准备\r　　　　^ffffff20：00　　^ffcb40 （第一轮）32进16比赛\r　　　　^ffffff20：10　　^ffcb40 （第二轮）16进8比赛\r　　　　^ffffff20：20　　^ffcb40 （第三轮）8进4比赛\r　　　　^ffffff20：40　　^ffcb40 （第四轮）半决赛\r　　　　^ffffff21：00　　^ffcb40 （第五轮）决赛^\r　　　　^ffffff21：30　　^ffcb40 发放奖励^ffffff\r\r五、比赛奖励\r　　连续晋级玩家可获得多次奖励。\r^ffffff　　1.入围奖励（32进16无论胜败）^ffcb40\r　　·少量经验\r　　·精炼药粉x10\r　　·美味调料x10\r　　·三级滋补丹x1\r　　·古朴的宝箱x1\r^ffffff　　2.晋级8强奖励 ^ffcb40\r　　·中量经验\r　　·精炼药粉x20\r　　·美味调料x20\r　　·三级滋补丹x1\r　　·古朴的宝箱x1\r^ffffff　　3.晋级半决赛奖励^ffcb40\r　　·大量经验\r　　·三级滋补丹x1\r　　·三级大还丹x1\r　　·古朴的宝箱x2\r^ffffff　　4.晋级决赛奖励^ffcb40\r　　·巨量经验\r　　·精炼药粉x20\r　　·美味调料x20\r　　·古朴的宝箱x3\r　　^ffffff5.武状元奖励 ^ffcb40\r　　·海量经验\r　　·三级大还丹x1\r　　·称号：独孤求败（限时一个月）\r　　·衡山城【天下第一】雕像重铸（限时一个月）\r　　·古朴的宝箱x3\r\r^ffffff六、武道会竞猜\r　　所有30级以上玩家可于洛阳疯癫老头或擂台总管处对武状元（冠军）得主进行预测。竞猜需要消耗10D绑银。竞猜活动持续时间为本赛季开始（15日22:00）至比赛开始前。\r\r七、竞猜奖励\r　　根据赛前排名不能竞猜成功后所获奖励也不同，即使所竞猜选手未能夺冠也可获得奖励。\r　　1.押注竞技积分前8强夺魁^ffcb40\r　　·一级强化石x40\r　　·一级幸运剂x3\r　　·木制工具x5\r^ffffff　　2.押注竞技积分9~16强夺魁^ffcb40\r　　·一级强化石x55\r　　·一级幸运剂x3\r　　·木制工具x5\r^ffffff　　3.押注竞技积分前17~24强夺魁^ffcb40\r　　·一级强化石x60\r　　·一级幸运剂x3\r　　·木制工具x5\r^ffffff　　4.押注竞技积分前25~32强夺魁^ffcb40\r　　·一级强化石x65\r　　·一级幸运剂x3\r　　·木制工具x5\r^ffffff　　5.本次押注失败^ffcb40\r　　·一级强化石x25\r　　·一级幸运剂x3\r　　·木制工具x3\r",
	[4] = "1、匹配赛全面升级为跨服匹配赛，本战区比赛服务器为：^d787f6%s^ffffff\r2、进入匹配战后，会传送至比赛服务器进行匹配比武。\r3、活动进行期间，在比赛服务器比武场不消耗漫游值。\r4、每次成功匹配后，有三分钟冷却时间，侠士可稍事休息。\r5、每日每位侠士可通过匹配比武获得10次胜场（周六周日为20场）奖励。",
}

--武道会竞猜确认
BATLLE_BALLOT_DESC = "上月竞技排行榜名次：第%s名\r姓名：%s\r门派：%s\r成功竞猜冠军奖励：%s\r竞猜冠军失败奖励：%s\r当前已有%s人预测此玩家为武状元\r\r确认竞猜此玩家吗？\r（提示：本次竞猜消耗10锭银票，每届比赛只能竞猜一位选手）"


--冠军奖励说明
BATLLE_BALLOT_SUCCESS_DESC = {
	[1] = "1级精炼石 x40，一级天湖玄铁 x1，一级大衍天钩图 x1，一级天蚕丝 x1，木制工具 x5",
	[2] = "1级精炼石 x40，一级天湖玄铁 x1，一级大衍天钩图 x1，一级天蚕丝 x1，木制工具 x5",
	[3] = "1级精炼石 x40，一级天湖玄铁 x1，一级大衍天钩图 x1，一级天蚕丝 x1，木制工具 x5",
	[4] = "1级精炼石 x40，一级天湖玄铁 x1，一级大衍天钩图 x1，一级天蚕丝 x1，木制工具 x5",
	[5] = "1级精炼石 x40，一级天湖玄铁 x1，一级大衍天钩图 x1，一级天蚕丝 x1，木制工具 x5",
	[6] = "1级精炼石 x40，一级天湖玄铁 x1，一级大衍天钩图 x1，一级天蚕丝 x1，木制工具 x5",
	[7] = "1级精炼石 x40，一级天湖玄铁 x1，一级大衍天钩图 x1，一级天蚕丝 x1，木制工具 x5",
	[8] = "1级精炼石 x40，一级天湖玄铁 x1，一级大衍天钩图 x1，一级天蚕丝 x1，木制工具 x5",
	[9] = "1级精炼石 x55，一级天湖玄铁 x1，一级大衍天钩图 x1，一级天蚕丝 x1，木制工具 x5",
	[10] = "1级精炼石 x55，一级天湖玄铁 x1，一级大衍天钩图 x1，一级天蚕丝 x1，木制工具 x5",
	[11] = "1级精炼石 x55，一级天湖玄铁 x1，一级大衍天钩图 x1，一级天蚕丝 x1，木制工具 x5",
	[12] = "1级精炼石 x55，一级天湖玄铁 x1，一级大衍天钩图 x1，一级天蚕丝 x1，木制工具 x5",
	[13] = "1级精炼石 x55，一级天湖玄铁 x1，一级大衍天钩图 x1，一级天蚕丝 x1，木制工具 x5",
	[14] = "1级精炼石 x55，一级天湖玄铁 x1，一级大衍天钩图 x1，一级天蚕丝 x1，木制工具 x5",
	[15] = "1级精炼石 x55，一级天湖玄铁 x1，一级大衍天钩图 x1，一级天蚕丝 x1，木制工具 x5",
	[16] = "1级精炼石 x55，一级天湖玄铁 x1，一级大衍天钩图 x1，一级天蚕丝 x1，木制工具 x5",
	[17] = "1级精炼石 x60，一级天湖玄铁 x1，一级大衍天钩图 x1，一级天蚕丝 x1，木制工具 x5",
	[18] = "1级精炼石 x60，一级天湖玄铁 x1，一级大衍天钩图 x1，一级天蚕丝 x1，木制工具 x5",
	[19] = "1级精炼石 x60，一级天湖玄铁 x1，一级大衍天钩图 x1，一级天蚕丝 x1，木制工具 x5",
	[20] = "1级精炼石 x60，一级天湖玄铁 x1，一级大衍天钩图 x1，一级天蚕丝 x1，木制工具 x5",
	[21] = "1级精炼石 x60，一级天湖玄铁 x1，一级大衍天钩图 x1，一级天蚕丝 x1，木制工具 x5",
	[22] = "1级精炼石 x60，一级天湖玄铁 x1，一级大衍天钩图 x1，一级天蚕丝 x1，木制工具 x5",
	[23] = "1级精炼石 x60，一级天湖玄铁 x1，一级大衍天钩图 x1，一级天蚕丝 x1，木制工具 x5",
	[24] = "1级精炼石 x60，一级天湖玄铁 x1，一级大衍天钩图 x1，一级天蚕丝 x1，木制工具 x5",
	[25] = "1级精炼石 x65，一级天湖玄铁 x1，一级大衍天钩图 x1，一级天蚕丝 x1，木制工具 x5",
	[26] = "1级精炼石 x65，一级天湖玄铁 x1，一级大衍天钩图 x1，一级天蚕丝 x1，木制工具 x5",
	[27] = "1级精炼石 x65，一级天湖玄铁 x1，一级大衍天钩图 x1，一级天蚕丝 x1，木制工具 x5",
	[28] = "1级精炼石 x65，一级天湖玄铁 x1，一级大衍天钩图 x1，一级天蚕丝 x1，木制工具 x5",
	[29] = "1级精炼石 x65，一级天湖玄铁 x1，一级大衍天钩图 x1，一级天蚕丝 x1，木制工具 x5",
	[30] = "1级精炼石 x65，一级天湖玄铁 x1，一级大衍天钩图 x1，一级天蚕丝 x1，木制工具 x5",
	[31] = "1级精炼石 x65，一级天湖玄铁 x1，一级大衍天钩图 x1，一级天蚕丝 x1，木制工具 x5",
	[32] = "1级精炼石 x65，一级天湖玄铁 x1，一级大衍天钩图 x1，一级天蚕丝 x1，木制工具 x5",
	[33] = "1级精炼石 x25，一级天湖玄铁 x1，一级大衍天钩图 x1，一级天蚕丝 x1，木制工具 x3",
}


--武道会时间提示信息,每月第4个周五
BATTLE_TIME_NOTICE = {
	[1] = {2015,1,23,19,50,0},
	[2] = {2015,2,27,19,50,0},
	[3] = {2015,3,27,19,50,0},
	[4] = {2015,4,24,19,50,0},
	[5] = {2015,5,22,19,50,0},
	[6] = {2015,6,26,19,50,0},
	[7] = {2015,7,24,19,50,0},
	[8] = {2015,8,28,19,50,0},
	[9] = {2015,9,25,19,50,0},
	[10]= {2015,10,23,19,50,0},
	[11]= {2015,11,27,19,50,0},
	[12]= {2015,12,25,19,50,0},
	["rc_test"] = {2013,11,3,19,50,0},
	["cn_test"] = {2013,11,1,19,50,0},
}


--模板子目录名
TEMP_FOLDER_NAME = {
	[1] = "伞类携带物",
}

--物品特殊类型名
ITEM_SPECIAL_TYPE_NMAE = {
	[1] = "伞具",
}


--比武场相关文本
VICTORY_POINT_TYPE_TEXT = "类型：胜点券"


--烟花相关描述
MOSTER_CTRL_DESC = {
	[1] = "限制使用地点：%s(%d,%d)",
	[2] = "限制使用地点：%s(全地图)",
}

--卡牌类别描述
CARD_CLASS_DESC = {
	[0] = "乾",
	[1] = "坤",
	[2] = "离",
	[3] = "坎",
	[4] = "颐",
	[5] = "过",

}
CARD_COOPERATE_TEXT = "协同属性："
CARD_BASEATTR_TEXT = "基础属性："
COOPERATE_OPEN_TEXT = "%d级激活"	

EQUIP_ENGRAVE_COLOR_DESC = {
	[1] = {
		["color"] = "^ffffff",
		["itemcost"] = 0,
	},
	[2] = {
		["color"] = "^8982fb",
		["itemcost"] = 2,
	},
	[3] = {
		["color"] = "^5383c3",
		["itemcost"] = 2,
	},
	[4] = {
		["color"] = "^c97586",
		["itemcost"] = 3,
	},
	[5] = {
		["color"] = "^f2cb40",  --f2cb40
		["itemcost"] = 3,
	},

	["itemid"] = 104097,		-- 装备消耗道具id
	["fashionid"] = 104096,		-- 时装消耗道具id
	["basecost"] = 1,			-- 基础消耗
	["fashiononly"] = 0,		-- 1：只有时装可以刻字，0：时装和普通装备都可以
}