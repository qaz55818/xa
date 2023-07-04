--获取装备上宝石的附加属性

function DescUtility:GetESTONEDesc(tbl,tid,cid,ext_tbl)
	if #e_Stone[1] == 0 and #e_Stone[2] == 0 and  #e_Stone[3] == 0 then
		return --[[!AUTO_87]]""
	else
		local ITEMTYPE = --[[!AUTO_88]]""
		ITEMTYPE = --[[!]]"装备类别"
		local BITEMESTONETYPE,ITEMESTONETYPE
		if cid == ClassType.ICID_DARTS_BOX then
			ITEMESTONETYPE = 999
		else
			BITEMESTONETYPE,ITEMESTONETYPE = DescUtility:GetItemDBProp(tid,cid,ITEMTYPE)
			ITEMESTONETYPE = ITEMESTONETYPE +1
		end
		local num = --[[!AUTO_89]]""
		if cid == ClassType.ICID_DARTS_BOX then
			num = --[[!]]"打孔总数上限"
		else
			num = --[[!]]"打孔的总数上限"
		end
		local BESTONEnum, ESTONEnum = DescUtility:GetItemDBProp(tid,cid,num)
		local newnum = 0
			if #e_Stone[1]~= nil and #e_Stone[1]~= 0 then
				newnum = newnum + #e_Stone[1]
			end
			if #e_Stone[2]~= nil and #e_Stone[2]~= 0 then
				newnum = newnum + #e_Stone[2]
			end
			if #e_Stone[3]~= nil and #e_Stone[3]~= 0 then
				newnum = newnum + #e_Stone[3]
			end
		local unopennum =  ESTONEnum - newnum
		local iSocket = 0
		local ITEM_ESTONEADDON = {}
		local quality = 1
		for iStoneShape = 1, 3 do
			if #e_Stone[iStoneShape]~= nil then 
				for k, v in ipairs(e_Stone[iStoneShape]) do
					iSocket = iSocket + 1
					if v == 0 then
						ITEM_ESTONEADDON[iSocket] = {}
						ITEM_ESTONEADDON[iSocket][1] = 1
						ITEM_ESTONEADDON[iSocket][2] = -1
						ITEM_ESTONEADDON[iSocket][3] = --[[!AUTO_90]]"未镶嵌\n"
					else
						ITEM_ESTONEADDON[iSocket] = {}
						ITEM_ESTONEADDON[iSocket][1] = 1
						_,ITEM_ESTONEADDON[iSocket][2] = DescUtility:GetItemDBProp(v,ClassType.ICID_ESTONE,--[[!]]"图标名称")
						_, quality = DescUtility:GetItemDBProp(v,ClassType.ICID_ESTONE,--[[!]]"品质")
						ITEM_ESTONEADDON[iSocket][2] = GameApi.GetIDByFileName(ITEM_ESTONEADDON[iSocket][2],0)
						if ITEM_ESTONEADDON[iSocket][2] == --[[!AUTO_91]]"" then
							ITEM_ESTONEADDON[iSocket][2] = 0
						end
						--加入了宝石净化等级显示 gaoxinyuan 2015/01/21
						local Purify_Level = ext_tbl["Purify_Level_"..iSocket-1] or 0
						local Purify_DTime = ext_tbl["Purify_DTime_"..iSocket-1] or 0
						if Purify_Level == 0 then 
							local name,addon = DescUtility:GetESTONESocketedEss_V2(v, ITEMESTONETYPE)
							ITEM_ESTONEADDON[iSocket][3] = string.format(--[[!AUTO_92]]"%s%s",ITEM_COLOR_DESC[quality],name).." 净化+0\r"..addon.."\n"
						else
							local name,addon = DescUtility:GetESTONESocketedEss_V2(v, ITEMESTONETYPE, Purify_Level)
							ITEM_ESTONEADDON[iSocket][3] = string.format(--[[!AUTO_92]]"%s%s",ITEM_COLOR_DESC[quality],name)..string.format(" 净化+%d ",Purify_Level)..self:GetPurifyExpireDesc(Purify_DTime, true)..string.format("\r%s\n",addon)
						end
					end
				end
			end
		end

		if unopennum > 0 then
			for i = 1 ,unopennum do
			ITEM_ESTONEADDON[newnum+i] = {}
			ITEM_ESTONEADDON[newnum+i][1] = -1
			ITEM_ESTONEADDON[newnum+i][2] = -1
			ITEM_ESTONEADDON[newnum+i][3] = --[[!AUTO_99]]"\n"
			end
		end
		local k = 1
		local NEW_ITEM_ESTONEADDON ={}
		for i = 1,#ITEM_ESTONEADDON do
			for j = 1,#ITEM_ESTONEADDON[i] do
				NEW_ITEM_ESTONEADDON[k] = ITEM_ESTONEADDON[i][j]
				k = k+1
			end
		end
		local str = --[[!AUTO_100]]""
			for i = 1,#NEW_ITEM_ESTONEADDON do
				if i%3 ==1 then
					str = str .. NEW_ITEM_ESTONEADDON[i] .. --[[!AUTO_101]]"_"
				end
				if i%3 ==2 then
					str = str .. NEW_ITEM_ESTONEADDON[i] .. --[[!AUTO_102]]"_"
				end
				if i%3 == 0 then
					str = str .. NEW_ITEM_ESTONEADDON[i] .. --[[!AUTO_103]]"\r"
				end
			end
		--LogPrint("str:" .. str)

		return str
	end
end

--获取宝石镶后的属性（tid模板，sid镶嵌位）
function DescUtility:GetESTONESocketedEss(tid, sid, purity_level)
	local bOK1, EstoneName = DescUtility:GetItemDBProp(tid, ClassType.ICID_ESTONE, --[[!AUTO_104]]"t_name")
	local bOK2, EstoneEss
	for k,v in pairs(ITEM_ESTONE_SOCKET_PLACE) do
		bOK2, EstoneEss = DescUtility:GetItemDBProp(tid, ClassType.ICID_ESTONE, --[[!]]"镶在" .. v .. --[[!]]"上的附加属性组id")
		if EstoneEss>0 then
			break
		end
	end

	if bOK1 and bOK2 and EstoneEss > 0 then
		add_percent = nil
		if purity_level then
			local bOK3, percent = DescUtility:GetItemDBProp(tid, ClassType.ICID_ESTONE, --[[!]]"净化" .. purity_level .. --[[!]]"级增加属性")
			if bOK3 and percent > 0 then
					add_percent = percent * 100
				end
			end
		return string.format(ITEM_ESTONE_SOCKET_ESS_STYLE, TAG_COLOR_ESSENCE[3], EstoneName, DescUtility:GetEffectBaseDesc(EstoneEss, 2, add_percent))
	else
		return --[[!AUTO_105]]""
	end
	--return INITEM_ESTONE_ADDON_DESC[tid][sid]
end

function DescUtility:GetESTONESocketedEss_V2(tid, sid, purity_level)
	local bOK1, EstoneName = DescUtility:GetItemDBProp(tid, ClassType.ICID_ESTONE, --[[!AUTO_104]]"t_name")
	local bOK2, EstoneEss
	for k,v in pairs(ITEM_ESTONE_SOCKET_PLACE) do
		bOK2, EstoneEss = DescUtility:GetItemDBProp(tid, ClassType.ICID_ESTONE, --[[!]]"镶在" .. v .. --[[!]]"上的附加属性组id")
		if EstoneEss>0 then
			break
		end
	end

	if bOK1 and bOK2 and EstoneEss > 0 then
		add_percent = nil
		if purity_level then
			local bOK3, percent = DescUtility:GetItemDBProp(tid, ClassType.ICID_ESTONE, --[[!]]"净化" .. purity_level .. --[[!]]"级增加属性")
			if bOK3 and percent > 0 then
					add_percent = percent * 100
				end
			end
		return string.format(ITEM_ESTONE_SOCKET_ESS_STYLE_V2, TAG_COLOR_ESSENCE[3], EstoneName),string.format(ITEM_ESTONE_SOCKET_ESS_STYLE_V2, TAG_COLOR_ESSENCE[3], DescUtility:GetEffectBaseDesc(EstoneEss, 2, add_percent))
	else
		return --[[!AUTO_105]]"",""
	end
	--return INITEM_ESTONE_ADDON_DESC[tid][sid]
end

--获取宝石的形状

function DescUtility:GetESTONEShape(tid, cid)
	local sTempl = --[[!AUTO_106]]""
	sTempl = --[[!]]"宝石形状"
	local BShape, Shape = DescUtility:GetItemDBProp(tid,cid,sTempl)
	Shape =Shape +1
	return ITEM_ESTONE_SHAPE_DESC[Shape]
end

--获取宝石的类型

function DescUtility:GetESTONEType(tid, cid)
	local sTempl = --[[!AUTO_107]]""
	sTempl = --[[!]]"宝石种类"
	local BType, Type = DescUtility:GetItemDBProp(tid,cid,sTempl)
	Type = Type +1
	return ITEM_ESTONE_TYPE_DESC[Type]
end

--获取宝石的等级

function DescUtility:GetESTONELevel(tid, cid)
	local sTempl = --[[!AUTO_108]]""
	sTempl = --[[!]]"宝石等级"
	local BLevel, Level = DescUtility:GetItemDBProp(tid,cid,sTempl)
	return Level
end

--获取宝石附加属性

function DescUtility:GetAESTONEDesc(tid, cid,purity_level)
	local ESTONEstr = --[[!AUTO_109]]""
	for i = 1, #ITEM_ESTONE_SOCKET_PLACE do
		local bOK, EstoneEss = DescUtility:GetItemDBProp(tid, cid, --[[!]]"镶在" .. ITEM_ESTONE_SOCKET_PLACE[i] .. --[[!]]"上的附加属性组id")
		if bOK and EstoneEss > 0 then
			add_percent = nil
			if purity_level then
				local bOK2, percent = DescUtility:GetItemDBProp(tid, cid, --[[!]]"净化" .. purity_level .. --[[!]]"级增加属性")
				if bOK2 and percent > 0 then
					add_percent = percent * 100
				end
			end
			local EssString = string.format(ITEM_ESTONE_SOCKET_PLACE_STYLE, TAG_COLOR_ESSENCE[3], --[[!AUTO_110]]"镶嵌", DescUtility:GetEffectBaseDesc(EstoneEss, 2, add_percent))
			if ESTONEstr == --[[!AUTO_111]]"" then
				ESTONEstr = EssString
			--[[else
				ESTONEstr = ESTONEstr .. "\r" .. EssString]]
			end
		end
	end
	return ESTONEstr
	--return ITEM_ESTONE_ADDON_DESC[tid]
end
