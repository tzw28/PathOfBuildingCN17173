﻿-- Path of Building
--
-- Class: Item
-- Equippable item class
--
--local launch, main = ...
local ipairs = ipairs
local t_insert = table.insert
local t_remove = table.remove
local m_min = math.min
local m_max = math.max
local m_floor = math.floor

local dmgTypeList = {"Physical", "Lightning", "Cold", "Fire", "Chaos"}--这个不要处理

local catalystList = {"研磨催化剂","加速催化剂", "丰沃催化剂", "灌注催化剂", "内在催化剂", "有害催化剂","棱光催化剂", "回火催化剂", "猛烈催化剂", "不稳定的催化剂"}
local catalystTags = {
	{ "attack" },
	{ "speed" },
	{ "life", "mana", "resource" },
	{ "caster" },
	{ "jewellery_attribute", "attribute" },
	{ "physical", "chaos" },
	{ "jewellery_resistance", "resistance" },
	{ "jewellery_defense", "defences" },
	{ "jewellery_elemental" ,"elemental_damage" },
	{ "critical" },
}

local function getCatalystScalar(catalystId, tags, quality)
	if not catalystId or type(catalystId) ~= "number" or not catalystTags[catalystId] or not tags or type(tags) ~= "table" or #tags == 0 then
		return 1
	end
	if not quality then
		quality = 20
	end

	-- Create a fast lookup table for all provided tags
	local tagLookup = {}
	for _, curTag in ipairs(tags) do
		tagLookup[curTag] = true;
	end

	-- Find if any of the catalyst's tags match the provided tags
	for _, catalystTag in ipairs(catalystTags[catalystId]) do
		if tagLookup[catalystTag] then
			return (100 + quality) / 100
		end
	end
	return 1
end

local influenceInfo = itemLib.influenceInfo


local ItemClass = newClass("Item", function(self,  raw)
	if raw and raw~=nil then
		self:ParseRaw(itemLib.sanitiseItemText(raw))--self:ParseRaw(itemLib.sanitiseItemText(raw))
	end	
end)

-- Reset all influence keys to false
function ItemClass:ResetInfluence()
	for _, curInfluenceInfo in ipairs(influenceInfo) do
		self[curInfluenceInfo.key] = false
	end
end

-- Parse raw item data and extract item name, base type, quality, and modifiers
function ItemClass:ParseRaw(raw)
	self.raw = raw
	local data = data
	self.name = "?"
self.rarity = "传奇"
	self.quality = nil
	self.qualityTitle = ''
	self.rawLines = { }
	--local alltext="" --lucifer
	for line in string.gmatch(self.raw .. "\r\n", "([^\r\n]*)\r?\n") do
		line = line:gsub("^%s+",""):gsub("%s+$","")
		if #line > 0 then
			--alltext=alltext..line.."\r\n" --lucifer			
			t_insert(self.rawLines, line)
		end
	end
	local mode = "WIKI"
	local l = 1
	
	if self.rawLines[l] then
		--lucifer
		for index in ipairs({1,2}) do
		--lucifer
			if self.rawLines[l] and self.rawLines[l]:match("^物品类别: (.+)") then
				l = l + 1 -- Item class is already determined by the base type
			end
			if self.rawLines[l] then 
				local rarity = self.rawLines[l]:match("^稀 有 度: (.+)")
				if rarity then
					mode = "GAME"
					if colorCodes[rarity:upper()] then
						self.rarity = rarity:upper()
					end
					if self.rarity == "传奇" then
						-- Hack for relics
						for _, line in ipairs(self.rawLines) do
							if line == "古藏传奇" then
								self.rarity = "遗产"
								break
							end
						end
					end
					l = l + 1
				end
			
			end
			
		end
	end
	
	if self.rawLines[l] then	
		self.name = self.rawLines[l]
		
		l = l + 1
	end
	self.namePrefix = ""
	self.nameSuffix = ""
if self.rarity == "普通" or self.rarity == "魔法" then
		for baseName, baseData in pairs(data.itemBases) do
			local s, e = self.name:find(baseName, 1, true)
			if s then
				self.baseName = baseName
				self.namePrefix = self.name:sub(1, s - 1)
				self.nameSuffix = self.name:sub(e + 1)
				self.type = baseData.type
				break
			end
		end
		if not self.baseName then
			local s, e = self.name:find("Two-Toned Boots", 1, true)
			if s then
				-- Hack for Two-Toned Boots
				self.baseName = "Two-Toned Boots (Armour/Energy Shield)"
				self.namePrefix = self.name:sub(1, s - 1)
				self.nameSuffix = self.name:sub(e + 1)
				self.type = "Boots"
			end
		end
		self.name = self.name:gsub(" %(.+%)","")
	elseif self.rawLines[l] and not self.rawLines[l]:match("^%-") then
		if self.rawLines[l] == "Two-Toned Boots" then
			self.rawLines[l] = "Two-Toned Boots (Armour/Energy Shield)"
		end
		local baseName = self.rawLines[l]:gsub("忆境 ",""):gsub("漫游之弓","游侠弓")
		if data.itemBases[baseName] then
			self.baseName = baseName			
			self.title = self.name
			self.name = self.title .. ", " .. baseName:gsub(" %(.+%)","")
			self.type = data.itemBases[baseName].type
			l = l + 1
		end
	end
	self.base = data.itemBases[self.baseName]
	self.sockets = { }
	self.classRequirementModLines = { }
	self.buffModLines = { }
	self.enchantModLines = { }
	self.scourgeModLines = { }
	self.implicitModLines = { }
	self.explicitModLines = { }
	local implicitLines = 0
	if self.base then
		self.affixes = (self.base.subType and data.itemMods[self.base.type..self.base.subType])
			or data.itemMods[self.base.type] 
			or data.itemMods.Item
		if self.base.weapon then
			self.enchantments = data.enchantments["Weapon"]
		elseif self.base.flask then
			self.enchantments = data.enchantments["Flask"]
			if self.base.utility_flask then
				self.enchantments = data.enchantments["Flask"]
			end
		else
			self.enchantments = data.enchantments[self.base.type]
		end
		self.synthesisedMods = data.synthesisedMods["Item"]
		self.harvestSeedWeaponEnchantments = data.harvestSeedEnchantments["Weapon"]
		self.harvestSeedBodyArmourEnchantments = data.harvestSeedEnchantments["Body Armour"]
		
		self.corruptible = self.base.type ~= "Flask"
		self.influenceTags = data.specialBaseTags[self.type]
		self.canBeInfluenced = self.influenceTags
		self.clusterJewel = data.clusterJewels and data.clusterJewels.jewels[self.baseName]
	end
	self.variantList = nil
	self.prefixes = { }
	self.suffixes = { }
	self.requirements = { }
	if self.base then
		self.requirements.str = self.base.req.str or 0
		self.requirements.dex = self.base.req.dex or 0
		self.requirements.int = self.base.req.int or 0
		local maxReq = m_max(self.requirements.str, self.requirements.dex, self.requirements.int)
		self.defaultSocketColor = (maxReq == self.requirements.dex and "G") or (maxReq == self.requirements.int and "B") or "R"
	end
	local importedLevelReq
	local flaskBuffLines = { }
	if self.base and self.base.flask and self.base.flask.buff then
		
		for _, line in ipairs(self.base.flask.buff) do
			flaskBuffLines[line] = true
			local modList, extra = modLib.parseMod(line)
			t_insert(self.buffModLines, { line = line, extra = extra, modList = modList or { } })
		end
	end
	local deferJewelRadiusIndexAssignment
	local gameModeStage = "FINDIMPLICIT"
	local foundExplicit, foundImplicit
	 
	local function processInfluenceLine(line)
		for i, curInfluenceInfo in ipairs(influenceInfo) do
			if line == curInfluenceInfo.display then
				self[curInfluenceInfo.key] = true
				return true
			end
		end
		return false
	end

	while self.rawLines[l] do	
		local line = self.rawLines[l]
		if flaskBuffLines[line] then
			flaskBuffLines[line] = nil
		elseif line == "--------" then
			--gameModeSection = gameModeSection + 1
			if gameModeStage == "IMPLICIT" then
				 if foundImplicit then
				 -- There were definitely implicits, so any following modifiers must be explicits
				 gameModeStage = "EXPLICIT"
					foundExplicit = true
				else
					
					gameModeStage = "FINDEXPLICIT"
				end
			elseif gameModeStage == "EXPLICIT" then
				gameModeStage = "DONE"
			end
elseif line == "已腐化" or line == "已腐化的" then
			self.corrupted = true
--[[
elseif line == "塑界之器" then
			self.shaper = true
elseif line == "裂界之器" then
			self.elder = true
			]]--
elseif line == "分裂之物" then
			self.fractured = true
elseif line == "忆境物品" then
			self.synthesised = true
--[[
elseif line == "圣战者物品" then
			self.crusader = true
elseif line == "救赎者物品" then
			self.redeemer = true
elseif line == "狩猎者物品" then
			self.hunter = true
elseif line == "督军物品" then
			self.warlord = true
			]]--
elseif processInfluenceLine(line) then
	-- self already updated within the helper function
		else
		 
			local specName, specVal = line:match("^(.+): (%x+)$") --lucifer
			if not specName then
				specName, specVal = line:match("^(.+): %+?([%d%-%.]+)")--lucifer
				if not tonumber(specVal) then
					specName = nil
				end
			end
			if not specName then
				specName, specVal = line:match("^(.+): (.+)$") --lucifer
				if line:find("需求 职业") then
					specName = nil
					specVal = nil
				end
			end
			if not specName then
				specName, specVal = line:match("^(augmented) (.+)$")--lucifer
			end
			if not specName then
				specName, specVal = line:match("^(需求 职业): (.+)$")
			end
			if specName == "职业：" then
				specName = "需求 职业"
			end
			if specName then
				
				if specName == "Unique ID" then
					self.uniqueID = specVal
				elseif specName == "物品等级" then
					self.itemLevel = tonumber(specVal)
				elseif specName == "需求 职业" then
					self.classRestriction = specVal
				elseif specName == "品质" then
					self.quality = tonumber(specVal)
				elseif specName == "品质说明" then
					self.qualityTitle = specVal
				elseif  specName:find("品质（", 1, true)  then
					self.quality = tonumber(specVal)
					self.qualityTitle = specName
		
				elseif specName == "插槽" then
					local group = 0
					for c in specVal:gmatch(".") do
						if c:match("[RGBWA]") then
							t_insert(self.sockets, { color = c, group = group })
						elseif c == " " then
							group = group + 1
						end
					end
				elseif specName == "范围" and self.type == "Jewel" then
					self.jewelRadiusLabel = specVal:match("^.+")
					
					if specVal:match("^.+") == "Variable" or specVal:match("^变量")  then
					 -- Jewel radius is variable and must be read from it's mods instead after they are parsed
					   deferJewelRadiusIndexAssignment = true
					else
                        for index, data in pairs(data.jewelRadius) do
                            if specVal:match("^.+") == data.label then
                                self.jewelRadiusIndex = index
                                break
                            end 
						end
					end
				elseif specName == "仅限" and self.type == "Jewel" then
					self.limit = tonumber(specVal)
				elseif specName == "版本" then
					if not self.variantList then
						self.variantList = { }
					end
					-- This has to be kept for backwards compatibility
					local ver, name = specVal:match("{([%w_]+)}(.+)")
					if ver then
						t_insert(self.variantList, name)						
					else
						t_insert(self.variantList, specVal)
					end
elseif specName == "需求" then
					self.requirements.level = tonumber(specVal:match("Level (%d+)"))
elseif specName == "等级" then
					-- Requirements from imported items can't always be trusted
					importedLevelReq = tonumber(specVal)
				elseif specName == "护甲" or specName == "闪避" or specName == "能量护盾" or specName == "结界" then
					self.armourData = self.armourData or { }
					self.armourData[specName:gsub(" ", "")] = tonumber((specVal:gsub(" (augmented)", "")))
				elseif specName:match("BasePercentile") then
					self.armourData = self.armourData or { }
					self.armourData[specName] = tonumber(specVal) or 0
				elseif specName == "等级需求" then
					self.requirements.level = tonumber(specVal)
				elseif specName == "Has Alt Variant" then
					self.hasAltVariant = true
				elseif specName == "Has Alt Variant Two" then
					self.hasAltVariant2 = true
				elseif specName == "Has Alt Variant Three" then
					self.hasAltVariant3 = true
				elseif specName == "Has Alt Variant Four" then
					self.hasAltVariant4 = true
				elseif specName == "Has Alt Variant Five" then
					self.hasAltVariant5 = true
				elseif specName == "Selected Variant" then
					self.variant = tonumber(specVal)
				elseif specName == "Selected Alt Variant" then
					self.variantAlt = tonumber(specVal)
				elseif specName == "Selected Alt Variant Two" then
					self.variantAlt2 = tonumber(specVal)
				elseif specName == "Selected Alt Variant Three" then
					self.variantAlt3 = tonumber(specVal)
				elseif specName == "Selected Alt Variant Four" then
					self.variantAlt4 = tonumber(specVal)
				elseif specName == "Selected Alt Variant Five" then
					self.variantAlt5 = tonumber(specVal)
				elseif specName == "Has Variants" or specName == "Selected Variants" then
					-- Need to skip this line for backwards compatibility
					-- with builds that used an old Watcher's Eye implementation
					l = l + 1
				elseif specName == "联盟" then
					self.league = specVal
				elseif specName == "工艺" then
					self.crafted = true
				elseif specName == "灾魇" then
					self.scourge = true
				elseif specName == "前缀" then
					local range, affix = specVal:match("{range:([%d.]+)}(.+)")
					range = range or ((affix or specVal) ~= "None" and main.defaultItemAffixQuality)
					t_insert(self.prefixes, {
						modId = affix or specVal,
						range = tonumber(range),
					})
				elseif specName == "后缀" then
					local range, affix = specVal:match("{range:([%d.]+)}(.+)")
					range = range or ((affix or specVal) ~= "None" and main.defaultItemAffixQuality)
					t_insert(self.suffixes, {
						modId = affix or specVal,
						range = tonumber(range),
					})
				elseif specName == "固定基底词缀" then
					implicitLines = tonumber(specVal) or 0
					
					gameModeStage = "EXPLICIT"
				elseif specName == "未公开" then
					self.unreleased = (specVal == "true")
				elseif specName == "升级" then
					self.upgradePaths = self.upgradePaths or { }
					t_insert(self.upgradePaths, specVal)
				elseif specName == "源" then
					self.source = specVal
				elseif specName == "Evasion Rating" then
					if self.baseName == "Two-Toned Boots (Armour/Energy Shield)" then
						-- Another hack for Two-Toned Boots
						self.baseName = "Two-Toned Boots (Armour/Evasion)"
						self.base = data.itemBases[self.baseName]
					end
				elseif specName == "能量护盾" then
					if self.baseName == "Two-Toned Boots (Armour/Evasion)" then
						-- Yet another hack for Two-Toned Boots
						self.baseName = "Two-Toned Boots (Evasion/Energy Shield)"
						self.base = data.itemBases[self.baseName]
					end
				--3.10 导入星团珠宝需要处理
	
				elseif specName == "Cluster Jewel Skill" then
				
					if self.clusterJewel and self.clusterJewel.skills[specVal] then
					--print("Cluster Jewel Skill>>>>>>>>"..specVal)
						self.clusterJewelSkill = specVal
					end
				elseif specName == "Cluster Jewel Node Count" then
					if self.clusterJewel then
					--print("Cluster Jewel Node Count>>>>>>>>")
						local num = tonumber(specVal) or self.clusterJewel.maxNodes
						self.clusterJewelNodeCount = m_min(m_max(num, self.clusterJewel.minNodes), self.clusterJewel.maxNodes)
					end
				elseif specName == "Catalyst" then

					for i=1, #catalystList do
						if specVal == catalystList[i] then
							self.catalyst = i
						end
					end
			elseif specName == "CatalystQuality" then
					self.catalystQuality = tonumber(specVal)
				
			end
			
					
end

			if line == "前缀:" then
				foundExplicit = true
				gameModeStage = "EXPLICIT"
			end
			if not specName or foundExplicit or foundImplicit then
				local varSpec = line:match("{variant:([%d,]+)}")
				local variantList
				if varSpec then
					variantList = { }
					for varId in varSpec:gmatch("%d+") do
						variantList[tonumber(varId)] = true
					end
				end
				local eater = line:match("{eater}")
				local exarch = line:match("{exarch}")
				local synthesis = line:match("{synthesis}")
				local fractured = line:match("{fractured}") or line:match(" %(fractured%)")
				local rangeSpec = line:match("{range:([%d.]+)}")

				local enchant = line:match(" %(enchant%)")
				local classReq = line:find("需求 职业")
				local scourge = line:match("{scourge}") or line:match(" %(scourge%)")
				local crafted = line:match("{crafted}") or line:match(" %(crafted%)") or enchant


				local custom = line:match("{custom}")
				local modTagsText = line:match("{tags:([^}]*)}") or ''

				local modTags = {}
				for curMod in modTagsText:gmatch("[^,]+") do
					curMod = curMod:match('^%s*(.*%S)') or '' -- Trim whitespace
					table.insert(modTags, curMod)
				end
				local implicit = line:match(" %(implicit%)") or enchant
				--line = line:gsub("%b{}", ""):gsub(" %(fractured%)",""):gsub(" %(crafted%)","")
				if implicit then
					foundImplicit = true
					gameModeStage = "IMPLICIT"
				end
				line = line:gsub("%b{}", ""):gsub(" %(fractured%)",""):gsub(" %(crafted%)",""):gsub(" %(implicit%)",""):gsub(" %(enchant%)",""):gsub(" %(scourge%)",""):gsub(" %(exarch%)",""):gsub(" %(eater%)",""):gsub(" %(synthesis%)","")
				local catalystScalar = getCatalystScalar(self.catalyst, modTags, self.catalystQuality)
				
				local rangedLine
				--lucifer
if (line:match("%(%d+%-%d+ %- %d+%-%d+%)") or line:match("%(%-?[%d%.]+ %- %-?[%d%.]+%)") or line:match("%(%-?[%d%.]+%-[%d%.]+%)")) and line:match(":")==nil  and line:match("^Requires")==nil then
					rangedLine = itemLib.applyRange(line, 1, catalystScalar)
				elseif catalystScalar ~= 1 then
					rangedLine = itemLib.applyValueScalar(line, catalystScalar)
				end
				local modList, extra = modLib.parseMod(rangedLine or line)
				if (not modList or extra) and self.rawLines[l+1] then
					-- Try to combine it with the next line
					local nextLine = self.rawLines[l+1]:gsub("%b{}", ""):gsub(" ?%(fractured%)",""):gsub(" ?%(crafted%)",""):gsub(" ?%(implicit%)",""):gsub(" ?%(enchant%)",""):gsub(" ?%(scourge%)",""):gsub(" %(exarch%)",""):gsub(" %(eater%)",""):gsub(" %(synthesis%)","")
					local combLine = line.." "..nextLine
if combLine:match("%(%d+%-%d+ %- %d+%-%d+%)") or combLine:match("%(%-?[%d%.]+ %- %-?[%d%.]+%)") or combLine:match("%(%-?[%d%.]+%-[%d%.]+%)") and line:match(":")==nil  and line:match("^Requires")==nil then
						rangedLine = itemLib.applyRange(combLine, 1, catalystScalar)
					elseif catalystScalar ~= 1 then
						rangedLine = itemLib.applyValueScalar(combLine, catalystScalar)
					end
					modList, extra = modLib.parseMod(rangedLine or combLine, true)
					if modList and not extra then
						line = line.."\n"..self.rawLines[l+1]
						l = l + 1
					else
						modList, extra = modLib.parseMod(rangedLine or line)
					end
				end

				local lineLower = line:lower()
				if lineLower == "this item can be anointed by cassia" then
					self.canBeAnointed = true
				elseif lineLower == "可附加第二种附魔词缀" then
					self.canHaveTwoEnchants = true
				elseif lineLower == "可附加 1 种额外的附魔词缀" then
					self.canHaveTwoEnchants = true
				elseif lineLower == "可附加 2 种额外的附魔词缀" then
					self.canHaveTwoEnchants = true
					self.canHaveThreeEnchants = true
				elseif lineLower == "可附加 3 种额外的附魔词缀" then
					self.canHaveTwoEnchants = true
					self.canHaveThreeEnchants = true
					self.canHaveFourEnchants = true
				end

				if data.itemBases[line] then
					self.baseLines = self.baseLines or { }
					self.baseLines[line] = { line = line, variantList = variantList}
				end
				
				local modLines
				if enchant or (crafted and #self.enchantModLines + #self.implicitModLines < implicitLines) then
					modLines = self.enchantModLines
				elseif scourge then
					modLines = self.scourgeModLines
				elseif classReq then
					modLines = self.classRequirementModLines
				elseif implicit or (not crafted and #self.enchantModLines + #self.scourgeModLines + #self.implicitModLines < implicitLines) then
					modLines = self.implicitModLines
				else
					modLines = self.explicitModLines
				end
				if modList and (line:find("需求 职业") or string.find(line,":")==nil)   then --lucifer
					t_insert(modLines, { line = line, extra = extra, modList = modList, modTags = modTags, variantList = variantList, scourge = scourge, crafted = crafted, custom = custom, fractured = fractured, exarch = exarch, eater = eater, synthesis = synthesis, implicit = implicit, range = rangedLine and (tonumber(rangeSpec) or main.defaultItemAffixQuality), valueScalar = catalystScalar })
					if mode == "GAME" then
						if gameModeStage == "FINDIMPLICIT" then
							gameModeStage = "IMPLICIT"
						elseif gameModeStage == "FINDEXPLICIT" then
							foundExplicit = true
							gameModeStage = "EXPLICIT"
						elseif gameModeStage == "EXPLICIT" then
							foundExplicit = true
						end
					else
						foundExplicit = true
					end
				elseif mode == "GAME" then
					if gameModeStage == "IMPLICIT" or gameModeStage == "EXPLICIT" or (gameModeStage == "FINDIMPLICIT" and (not data.itemBases[line]) and not (self.name == line) and not line:find("Two%-Toned") and not (self.base and (line == self.base.type or self.base.subType and line == self.base.subType .. " " .. self.base.type))) then
						t_insert(modLines, { line = line, extra = line, modList = { }, modTags = { }, variantList = variantList, scourge = scourge, crafted = crafted, custom = custom, fractured = fractured, exarch = exarch, eater = eater, synthesis = synthesis, implicit = implicit })
					elseif gameModeStage == "FINDEXPLICIT" then
						gameModeStage = "DONE"
					end
				elseif foundExplicit then
					t_insert(modLines, { line = line, extra = line, modList = { }, modTags = { }, variantList = variantList, scourge = scourge, crafted = crafted, custom = custom, fractured = fractured, exarch = exarch, eater = eater, synthesis = synthesis, implicit = implicit })
				end
				
			end
		end
		l = l + 1
	end
	
	if self.base and not self.requirements.level then
		if importedLevelReq and #self.sockets == 0 then
			-- Requirements on imported items can only be trusted for items with no sockets
			self.requirements.level = importedLevelReq
		else
			self.requirements.level = self.base.req.level
		end
	end
	--[[
	if gameModeStage == "IMPLICIT" and not foundImplicit and not implicitNumberSpecified then
	-- We only found modifiers that could be enchantments or explicits; assume enchantments for now
	self.implicitLines = #self.modLines - self.buffLines
	end
	if self.implicitLines > 0 and not implicitNumberSpecified then
		if not foundExplicit and self.rarity ~= "NORMAL" then
			-- No explicits were found, but the item should have some, so the implicits (presumed enchantments) must be explicits
			self.implicitLines = 0
		else
			-- Any "implicits" that weren't explicitly marked as such will be enchantments
			for index, modLine in ipairs(self.modLines) do
				if index > self.implicitLines then
					break
				end
				if not modLine.implicit then
					modLine.crafted = true
				end
			end
			
	 
		end
 
	end
	]]--
	self.affixLimit = 0
	if self.crafted then
		if not self.affixes then 
			self.crafted = false
elseif self.rarity == "魔法" then
			self.affixLimit = 2
elseif self.rarity == "稀有" then
			self.affixLimit = (self.type == "Jewel" and 4 or 6)
		else
			self.crafted = false
		end
		if self.crafted then
			for _, list in ipairs({self.prefixes,self.suffixes}) do
				for i = 1, self.affixLimit/2 do
					if not list[i] then
						list[i] = { modId = "None" }
					elseif list[i].modId ~= "None" and not self.affixes[list[i].modId] then
						for modId, mod in pairs(self.affixes) do
							if list[i].modId == mod.affix then
								list[i].modId = modId
								break
							end
						end
						if not self.affixes[list[i].modId] then
							list[i].modId = "None"
						end
					end
				end
			end
		end
	end
	if self.base and self.base.socketLimit then
		if #self.sockets == 0 then
			for i = 1, self.base.socketLimit do
				t_insert(self.sockets, {
					color = self.defaultSocketColor,
					group = 0,
				})
			end
		end
	end
	self.abyssalSocketCount = 0
	if self.variantList then
		self.variant = m_min(#self.variantList, self.variant or #self.variantList)
		if self.hasAltVariant then
			self.variantAlt = m_min(#self.variantList, self.variantAlt or #self.variantList)
		end
		if self.hasAltVariant2 then
			self.variantAlt2 = m_min(#self.variantList, self.variantAlt2 or #self.variantList)
		end
		if self.hasAltVariant3 then
			self.variantAlt3 = m_min(#self.variantList, self.variantAlt3 or #self.variantList)
		end
		if self.hasAltVariant4 then
			self.variantAlt4 = m_min(#self.variantList, self.variantAlt4 or #self.variantList)
		end
		if self.hasAltVariant5 then
			self.variantAlt5 = m_min(#self.variantList, self.variantAlt5 or #self.variantList)
		end
	end
	
	if not self.quality then
		self:NormaliseQuality()
	end
	self:BuildModList()
	if deferJewelRadiusIndexAssignment then
		self.jewelRadiusIndex = self.jewelData.radiusIndex
	end
end

function ItemClass:NormaliseQuality()
	if self.base and (self.base.armour or self.base.weapon or self.base.flask) then
		if not self.quality then
			self.quality = self.corrupted and 0 or 20 
		elseif not self.uniqueID and not self.corrupted and self.quality < 20 then
			self.quality = 20
		end
	end	
end

function ItemClass:GetModSpawnWeight(mod, extraTags)
	local weight = 0
	if self.base then
		local function HasInfluenceTag(key)
			if self.influenceTags then
				for _, curInfluenceInfo in ipairs(influenceInfo) do
					if self[curInfluenceInfo.key] and self.influenceTags[curInfluenceInfo.key] == key then
						return true
					end
				end
			end
			return false
		end

		--有些部位 比如项链 没有魔力保留尊崇
		local function HasMavenInfluence(modAffix)
			return modAffix:match("尊崇")
		end
		for i, key in ipairs(mod.weightKey) do
			if self.base.tags[key] or (extraTags and extraTags[key]) or HasInfluenceTag(key) then
				weight = (HasInfluenceTag(key) and HasMavenInfluence(mod.affix)) and 1000 or mod.weightVal[i]
				break
			end
		end
		for i, key in ipairs(mod.weightMultiplierKey) do
			if self.base.tags[key] or (extraTags and extraTags[key]) or HasInfluenceTag(key) then
				weight = weight * mod.weightMultiplierVal[i] / 100
				break
			end
		end
	end
	return weight
end

function ItemClass:CheckIfModIsDelve(mod)
	return mod.affix == "地心的" or mod.affix == "地下之"
end

function ItemClass:BuildRaw()
	local rawLines = { }
t_insert(rawLines, "稀 有 度: "..self.rarity)
	if self.title then
		t_insert(rawLines, self.title)
		t_insert(rawLines, self.baseName)
	else
		t_insert(rawLines, (self.namePrefix or "")..self.baseName..(self.nameSuffix or ""))
	end
	if self.armourData then
		for _, type in ipairs({ "Armour", "Evasion", "EnergyShield", "Ward" }) do
			if self.armourData[type] > 0 then
				t_insert(rawLines, type:gsub("EnergyShield", "Energy Shield") .. ": " .. self.armourData[type])
				if self.armourData[type .. "BasePercentile"] then
					t_insert(rawLines, type .. "BasePercentile: " .. self.armourData[type .. "BasePercentile"])
				end
			end
		end
	end
	if self.uniqueID then
		t_insert(rawLines, "Unique ID: "..self.uniqueID)
	end
	if self.league then
		t_insert(rawLines, "League: "..self.league)
	end
	if self.unreleased then
		t_insert(rawLines, "Unreleased: true")
	end
	for i, curInfluenceInfo in ipairs(influenceInfo) do
		if self[curInfluenceInfo.key] then
		t_insert(rawLines, curInfluenceInfo.display)
		end
	end
	--[[if self.shaper then
t_insert(rawLines, "塑界之器")
	end
	
	if self.crusader  then
t_insert(rawLines, "圣战者物品")
	end
	if self.redeemer  then
t_insert(rawLines, "救赎者物品")
	end
	if self.hunter  then
t_insert(rawLines, "狩猎者物品")
	end
	if self.warlord  then
t_insert(rawLines, "督军物品")
	end	
	
	if self.elder then
t_insert(rawLines, "裂界之器")
	end
	if self.synthesised then
t_insert(rawLines, "忆境物品")
	end
	]]--
	
	
	if self.crafted then
t_insert(rawLines, "工艺: true")
		for i, affix in ipairs(self.prefixes or { }) do
t_insert(rawLines, "前缀: "..(affix.range and ("{range:"..round(affix.range,3).."}") or "")..affix.modId)
		end
		for i, affix in ipairs(self.suffixes or { }) do
t_insert(rawLines, "后缀: "..(affix.range and ("{range:"..round(affix.range,3).."}") or "")..affix.modId)
		end
	end
	if self.catalyst and self.catalyst > 0 then
		t_insert(rawLines, "Catalyst: "..catalystList[self.catalyst])
	end
	if self.catalystQuality then
		t_insert(rawLines, "CatalystQuality: "..self.catalystQuality)
	end
	--星团珠宝待处理
	if self.clusterJewel then
		if self.clusterJewelSkill then
			t_insert(rawLines, "Cluster Jewel Skill: "..self.clusterJewelSkill)
		end
		if self.clusterJewelNodeCount then
			t_insert(rawLines, "Cluster Jewel Node Count: "..self.clusterJewelNodeCount)
		end
	end
	if self.itemLevel then
		t_insert(rawLines, "Item Level: " .. self.itemLevel)
	end
	local function writeModLine(modLine)
		local line = modLine.line
		if modLine.range then
			line = "{range:"..round(modLine.range,3).."}" .. line
		end
		if modLine.crafted then
			line = "{crafted}" .. line
		end
		if modLine.custom then
			line = "{custom}" .. line
		end
		if modLine.scourge then
			line = "{scourge}" .. line
		end
		if modLine.fractured then
			line = "{fractured}" .. line
		end
		if modLine.exarch then
			line = "{exarch}" .. line
		end
		if modLine.eater then
			line = "{eater}" .. line
		end
		if modLine.synthesis then
			line = "{synthesis}" .. line
		end
		if modLine.variantList then
			local varSpec
			for varId in pairs(modLine.variantList) do
				varSpec = (varSpec and varSpec.."," or "") .. varId
			end
			line = "{variant:"..varSpec.."}"..line
		end
		if modLine.modTags and #modLine.modTags > 0 then
			line = "{tags:"..table.concat(modLine.modTags, ",").."}"..line
		end
		t_insert(rawLines, line)
	end
	if self.variantList then
		for _, variantName in ipairs(self.variantList) do
			t_insert(rawLines, "版本: "..variantName)
		end
		t_insert(rawLines, "Selected Variant: "..self.variant)

		local hasVariantBases = false
		local i = 1
		for _, variantName in ipairs(self.variantList) do
			
			if data.itemBases[variantName] then
				t_insert(rawLines, "{variant:"..i.."}"..variantName)
				hasVariantBases = true
			end
			i = i + 1
		end
		if not hasVariantBases then
			t_insert(rawLines, self.baseName)
		end
		if self.hasAltVariant then
			t_insert(rawLines, "Has Alt Variant: true")
			t_insert(rawLines, "Selected Alt Variant: "..self.variantAlt)
		end
		if self.hasAltVariant2 then
			t_insert(rawLines, "Has Alt Variant Two: true")
			t_insert(rawLines, "Selected Alt Variant Two: "..self.variantAlt2)
		end
		if self.hasAltVariant3 then
			t_insert(rawLines, "Has Alt Variant Three: true")
			t_insert(rawLines, "Selected Alt Variant Three: " .. self.variantAlt3)
		end
		if self.hasAltVariant4 then
			t_insert(rawLines, "Has Alt Variant Four: true")
			t_insert(rawLines, "Selected Alt Variant Four: " .. self.variantAlt4)
		end
		if self.hasAltVariant5 then
			t_insert(rawLines, "Has Alt Variant Five: true")
			t_insert(rawLines, "Selected Alt Variant Five: " .. self.variantAlt5)
		end
	end
	if self.quality then
		t_insert(rawLines, "品质: "..self.quality)
	end
	if self.sockets and #self.sockets > 0 then
		local line = "插槽: "
		for i, socket in pairs(self.sockets) do
			line = line .. socket.color
			if self.sockets[i+1] then
				line = line .. (socket.group == self.sockets[i+1].group and "-" or " ")
			end
		end
		if modLine and modLine.modTags and #modLine.modTags > 0 then
			line = "{tags:"..table.concat(modLine.modTags, ",").."}"..line
		end
		t_insert(rawLines, line)
	end
	if self.requirements and self.requirements.level then
		t_insert(rawLines, "等级需求: "..self.requirements.level)
	end
	if self.jewelRadiusLabel then
		t_insert(rawLines, "范围: "..self.jewelRadiusLabel)
	end
	if self.limit then
		t_insert(rawLines, "仅限: "..self.limit)
	end
	if self.classRestriction then
		t_insert(rawLines, "需求 职业: "..self.classRestriction)
	end
		t_insert(rawLines, "固定基底词缀: "..(#self.enchantModLines + #self.implicitModLines + #self.scourgeModLines))

	for _, modLine in ipairs(self.enchantModLines) do
		writeModLine(modLine)
	end
	for _, modLine in ipairs(self.scourgeModLines) do
		writeModLine(modLine)
	end
	for _, modLine in ipairs(self.classRequirementModLines) do
		writeModLine(modLine)
	end
	for _, modLine in ipairs(self.implicitModLines) do
		writeModLine(modLine)
	end
	for _, modLine in ipairs(self.explicitModLines) do
		writeModLine(modLine)
	end
	if self.corrupted or self.scourge then
		t_insert(rawLines, "已腐化")
	end
	return table.concat(rawLines, "\n")
	
end

function ItemClass:BuildAndParseRaw()
	local raw = self:BuildRaw()
	self:ParseRaw(raw)
end

-- Rebuild explicit modifiers using the item's affixes
function ItemClass:Craft()
	-- Save off any crafted or custom mods so they can be re-added at the end
	local savedMods = {}
	for _, mod in ipairs(self.explicitModLines) do
		if mod.crafted or mod.custom then
			t_insert(savedMods, mod)
		end
	end

	wipeTable(self.explicitModLines)
	self.namePrefix = ""
	self.nameSuffix = ""
	self.requirements.level = self.base.req.level
	local statOrder = { }
	for _, list in ipairs({self.prefixes,self.suffixes}) do
		for i = 1, self.affixLimit/2 do
			local affix = list[i]
			if not affix then
				list[i] = { modId = "None" }
			end
			local mod = self.affixes[affix.modId]
			if mod then
				if mod.type == "Prefix" then
					self.namePrefix = mod.affix .. " "
				elseif mod.type == "Suffix" then
					self.nameSuffix = " " .. mod.affix
				end
				self.requirements.level = m_max(self.requirements.level or 0, m_floor(mod.level * 0.8))
				local rangeScalar = getCatalystScalar(self.catalyst, mod.modTags, self.catalystQuality)
				for i, line in ipairs(mod) do
					line = itemLib.applyRange(line, affix.range or 0.5, rangeScalar)
					local order = mod.statOrder[i]
					if statOrder[order] then
						-- Combine stats
						local start = 1
						statOrder[order].line = statOrder[order].line:gsub("%d+", function(num)
							local s, e, other = line:find("(%d+)", start)
							start = e + 1
							return tonumber(num) + tonumber(other)
						end)
					else
						local modLine = { line = line, order = order }
						for l = 1, #self.explicitModLines + 1 do
							if not self.explicitModLines[l] or self.explicitModLines[l].order > order then
								t_insert(self.explicitModLines, l, modLine)
								break
							end
						end
						statOrder[order] = modLine
					end	
				end
			end
		end
	end

	-- Restore the crafted and custom mods
	for _, mod in ipairs(savedMods) do
		t_insert(self.explicitModLines, mod)
	end

	self:BuildAndParseRaw()
end

function ItemClass:CheckModLineVariant(modLine)
	return not modLine.variantList 
		or modLine.variantList[self.variant]
		or (self.hasAltVariant and modLine.variantList[self.variantAlt])
		or (self.hasAltVariant2 and modLine.variantList[self.variantAlt2])
		or (self.hasAltVariant3 and modLine.variantList[self.variantAlt3])
		or (self.hasAltVariant4 and modLine.variantList[self.variantAlt4])
		or (self.hasAltVariant5 and modLine.variantList[self.variantAlt5])
end

-- Return the name of the slot this item is equipped in
function ItemClass:GetPrimarySlot()
	if self.base.weapon then
		return "Weapon 1"
	elseif self.type == "Quiver" or self.type == "Shield" then
		return "Weapon 2"
	elseif self.type == "Ring" then
		return "Ring 1"
	elseif self.type == "Flask" then
		return "Flask 1"
	else
		return self.type
	end
end

-- Calculate local modifiers, and removes them from the modifier list
-- To be considered local, a modifier must be an exact flag match, and cannot have any tags (e.g conditions, multipliers)
-- Only the InSlot tag is allowed (for Adds x to x X Damage in X Hand modifiers)
local function calcLocal(modList, name, type, flags)
	local result
	if type == "FLAG" then
		result = false
	elseif type == "MORE" then
		result = 1
	else
		result = 0
	end
	local i = 1
	while modList[i] do
		local mod = modList[i]
		if mod.name == name and mod.type == type and mod.flags == flags and mod.keywordFlags == 0 and (not mod[1] or mod[1].type == "InSlot") then
			if type == "FLAG" then
				result = result or mod.value
			-- convert MORE to times multiplier, e.g. 50% more = 1.5x, result = 1.5
			elseif type == "MORE" then
				result = result * ((100 + mod.value) / 100)
			else
				result = result + mod.value
			end
			t_remove(modList, i)
		else
			i = i + 1
		end
	end
	return result
end

-- Build list of modifiers in a given slot number (1 or 2) while applying local modifers and adding quality
function ItemClass:BuildModListForSlotNum(baseList, slotNum)
	local slotName = self:GetPrimarySlot()
	if slotNum == 2 then
		slotName = slotName:gsub("1", "2")
	end
	local modList = new("ModList")
	for _, baseMod in ipairs(baseList) do
		local mod = copyTable(baseMod)
		local add = true
		for _, tag in ipairs(mod) do
			if tag.type == "SlotNumber" or tag.type == "InSlot" then
				if tag.num ~= slotNum then
					add = false
					break
				end
			end
			for k, v in pairs(tag) do
				if type(v) == "string" then
					tag[k] = v:gsub("{SlotName}", slotName)
							  :gsub("{Hand}", (slotNum == 1) and "MainHand" or "OffHand")
							  :gsub("{OtherSlotNum}", slotNum == 1 and "2" or "1")
				end
			end
		end
		if add then
			mod.sourceSlot = slotName
			modList:AddMod(mod)
		end
	end
	if #self.sockets > 0 then
		local multiName = {
			R = "Multiplier:RedSocketIn"..slotName,
			G = "Multiplier:GreenSocketIn"..slotName,
			B = "Multiplier:BlueSocketIn"..slotName,
			W = "Multiplier:WhiteSocketIn"..slotName,
		}
		for _, socket in ipairs(self.sockets) do
			if multiName[socket.color] then
				modList:NewMod(multiName[socket.color], "BASE", 1, "Item Sockets")
			end
		end
	end
	
	local craftedQuality = calcLocal(modList,"Quality","BASE",0)
	if craftedQuality ~= self.craftedQuality then
		if self.craftedQuality then
			self.quality = self.quality - self.craftedQuality + craftedQuality
		end
		self.craftedQuality = craftedQuality
	end
	if self.quality then
		modList:NewMod("Multiplier:QualityOn"..slotName, "BASE", self.quality, "Quality")
	end
	if self.base.weapon then
		local weaponData = { }
		self.weaponData[slotNum] = weaponData
		weaponData.type = self.base.type
		weaponData.name = self.name
		weaponData.AttackSpeedInc = calcLocal(modList, "Speed", "INC", ModFlag.Attack) + m_floor(self.quality / 8 * calcLocal(modList, "AlternateQualityLocalAttackSpeedPer8Quality", "INC", 0))
		weaponData.AttackRate = round(self.base.weapon.AttackRateBase * (1 + weaponData.AttackSpeedInc / 100), 2)
		weaponData.rangeBonus = calcLocal(modList, "WeaponRange", "BASE", 0) + m_floor(self.quality / 10 * calcLocal(modList, "AlternateQualityLocalWeaponRangePer10Quality", "BASE", 0))
		weaponData.range = self.base.weapon.Range + weaponData.rangeBonus
		for _, value in ipairs(modList:List(nil, "WeaponData")) do
			weaponData[value.key] = value.value
		end
		
		for _, dmgType in pairs(dmgTypeList) do
			local min = (self.base.weapon[dmgType.."Min"] or 0) + calcLocal(modList, dmgType.."Min", "BASE", 0)
			local max = (self.base.weapon[dmgType.."Max"] or 0) + calcLocal(modList, dmgType.."Max", "BASE", 0)
			if dmgType == "Physical" then
				local physInc = calcLocal(modList, "PhysicalDamage", "INC", 0)
				
				--品质加成		
				local qualityScalar = self.quality
				if calcLocal(modList, "AlternateQualityWeapon", "BASE", 0) > 0 then
					qualityScalar = 0
				end
				min = round(min * (1 + (physInc + qualityScalar) / 100))
				max = round(max * (1 + (physInc + qualityScalar) / 100))
				
				 
			end
			if min > 0 and max > 0 then
				weaponData[dmgType.."Min"] = min
				weaponData[dmgType.."Max"] = max
				local dps = (min + max) / 2 * weaponData.AttackRate
				weaponData[dmgType.."DPS"] = dps
				if dmgType ~= "Physical" and dmgType ~= "Chaos" then
					weaponData.ElementalDPS = (weaponData.ElementalDPS or 0) + dps
				end
			end
		end
		weaponData.CritChance = round(self.base.weapon.CritChanceBase * (1 + (calcLocal(modList, "CritChance", "INC", 0) + m_floor(self.quality / 4 * calcLocal(modList, "AlternateQualityLocalCritChancePer4Quality", "INC", 0))) / 100), 2)
		for _, value in ipairs(modList:List(nil, "WeaponData")) do
			weaponData[value.key] = value.value
		end
		
		for _, mod in ipairs(modList) do
			-- Convert accuracy, L/MGoH and PAD Leech modifiers to local
			if (
				(mod.name == "Accuracy" and mod.flags == 0) or (mod.name == "ImpaleChance" and mod.flags ~= ModFlag.Spell) or
				((mod.name == "LifeOnHit" or mod.name == "ManaOnHit") and mod.flags == ModFlag.Attack) or
				((mod.name == "PhysicalDamageLifeLeech" or mod.name == "PhysicalDamageManaLeech") and mod.flags == ModFlag.Attack)
			   ) and mod.keywordFlags == 0 and (mod.keywordFlags == 0 or mod.keywordFlags == KeywordFlag.Attack) and not mod[1] then
				mod[1] = { type = "Condition", var = (slotNum == 1) and "MainHandAttack" or "OffHandAttack" }
			elseif  (mod.name == "PoisonChance" or mod.name == "BleedChance") and (not mod[1] or (mod[1].type == "Condition" and mod[1].var == "CriticalStrike" and not mod[2])) then
				t_insert(mod, { type = "Condition", var = (slotNum == 1) and "MainHandAttack" or "OffHandAttack" })
			end
		end
		weaponData.TotalDPS = 0
		for _, dmgType in pairs(dmgTypeList) do
			weaponData.TotalDPS = weaponData.TotalDPS + (weaponData[dmgType.."DPS"] or 0)
		end
	elseif self.base.armour then
		local armourData = self.armourData
		local armourBase = calcLocal(modList, "Armour", "BASE", 0) + (self.base.armour.ArmourBaseMin or 0)
		local armourVariance = (self.base.armour.ArmourBaseMax or 0) - (self.base.armour.ArmourBaseMin or 0)
		local armourEvasionBase = calcLocal(modList, "ArmourAndEvasion", "BASE", 0)
		local evasionBase = calcLocal(modList, "Evasion", "BASE", 0) + (self.base.armour.EvasionBaseMin or 0)
		local evasionVariance = (self.base.armour.EvasionBaseMax or 0) - (self.base.armour.EvasionBaseMin or 0)
		local evasionEnergyShieldBase = calcLocal(modList, "EvasionAndEnergyShield", "BASE", 0)
		local energyShieldBase = calcLocal(modList, "EnergyShield", "BASE", 0) + (self.base.armour.EnergyShieldBaseMin or 0)
		local energyShieldVariance = (self.base.armour.EnergyShieldBaseMax or 0) - (self.base.armour.EnergyShieldBaseMin or 0)
		local armourEnergyShieldBase = calcLocal(modList, "ArmourAndEnergyShield", "BASE", 0)
		local wardBase = calcLocal(modList, "Ward", "BASE", 0) + (self.base.armour.WardBaseMin or 0)
		local wardVariance = (self.base.armour.WardBaseMax or 0) - (self.base.armour.WardBaseMin or 0)
		local armourInc = calcLocal(modList, "Armour", "INC", 0)
		local armourEvasionInc = calcLocal(modList, "ArmourAndEvasion", "INC", 0)
		local evasionInc = calcLocal(modList, "Evasion", "INC", 0)
		local evasionEnergyShieldInc = calcLocal(modList, "EvasionAndEnergyShield", "INC", 0)
		local energyShieldInc = calcLocal(modList, "EnergyShield", "INC", 0)
		local wardInc = calcLocal(modList, "Ward", "INC", 0)
		local armourEnergyShieldInc = calcLocal(modList, "ArmourAndEnergyShield", "INC", 0)
		local defencesInc = calcLocal(modList, "Defences", "INC", 0)
		
		local qualityScalar = self.quality
		if calcLocal(modList, "AlternateQualityArmour", "BASE", 0) > 0 then
			qualityScalar = 0
		end
		-- base percentiles need to differ for each armour type, as they're weighted differently
		if armourData.Armour and armourData.Armour > 0 and not armourData.ArmourBasePercentile then
			armourData.ArmourBasePercentile = ((armourData.Armour / (1 + (armourInc + armourEvasionInc + armourEnergyShieldInc + defencesInc + qualityScalar) / 100) - armourBase)) / armourVariance
			armourData.ArmourBasePercentile = round(m_max(m_min(armourData.ArmourBasePercentile, 1), 0), 2)
		end
		if armourData.Evasion and armourData.Evasion > 0 and not armourData.EvasionBasePercentile then
			armourData.EvasionBasePercentile = ((armourData.Evasion / (1 + (evasionInc + armourEvasionInc + evasionEnergyShieldInc + defencesInc + qualityScalar) / 100) - evasionBase)) / evasionVariance
			armourData.EvasionBasePercentile = round(m_max(m_min(armourData.EvasionBasePercentile, 1), 0), 2)
		end
		if armourData.EnergyShield and armourData.EnergyShield > 0 and not armourData.EnergyShieldBasePercentile then
			armourData.EnergyShieldBasePercentile = ((armourData.EnergyShield / (1 + (energyShieldInc + armourEnergyShieldInc + evasionEnergyShieldInc + defencesInc + qualityScalar) / 100) - energyShieldBase)) / energyShieldVariance
			armourData.EnergyShieldBasePercentile = round(m_max(m_min(armourData.EnergyShieldBasePercentile, 1), 0), 2)
		end
		if armourData.Ward and armourData.Ward > 0 and not armourData.WardBasePercentile then
			armourData.WardBasePercentile = ((armourData.Ward / (1 + (wardInc + defencesInc + qualityScalar) / 100) - wardBase)) / wardVariance
			armourData.WardBasePercentile = round(m_max(m_min(armourData.WardBasePercentile, 1), 0),2)
		end

		armourData.Armour = round((armourBase + armourEvasionBase + armourEnergyShieldBase + armourVariance * (armourData.ArmourBasePercentile or 1)) * (1 + (armourInc + armourEvasionInc + armourEnergyShieldInc + defencesInc + qualityScalar) / 100))
		armourData.Evasion = round((evasionBase + armourEvasionBase + evasionEnergyShieldBase + evasionVariance * (armourData.EvasionBasePercentile or 1)) * (1 + (evasionInc + armourEvasionInc + evasionEnergyShieldInc + defencesInc + qualityScalar) / 100))
		armourData.EnergyShield = round((energyShieldBase + evasionEnergyShieldBase + armourEnergyShieldBase + energyShieldVariance * (armourData.EnergyShieldBasePercentile or 1)) * (1 + (energyShieldInc + armourEnergyShieldInc + evasionEnergyShieldInc + defencesInc + qualityScalar) / 100))
		armourData.Ward = round((wardBase + wardVariance * (armourData.WardBasePercentile or 1)) * (1 + (wardInc + defencesInc + qualityScalar) / 100))
		if self.base.armour.BlockChance then
			armourData.BlockChance = self.base.armour.BlockChance + calcLocal(modList, "BlockChance", "BASE", 0)
		end
		if self.base.armour.MovementPenalty then
			modList:NewMod("MovementSpeed", "INC", -self.base.armour.MovementPenalty, self.modSource, { type = "Condition", var = "IgnoreMovementPenalties", neg = true })
		end
		for _, value in ipairs(modList:List(nil, "ArmourData")) do
			armourData[value.key] = value.value
		end
	elseif self.base.flask then
		local flaskData = self.flaskData
		local durationInc = calcLocal(modList, "Duration", "INC", 0)
		local durationMore = calcLocal(modList, "Duration", "MORE", 0)
		
		if self.base.flask.life or self.base.flask.mana then
			-- Recovery flask
			flaskData.instantPerc = calcLocal(modList, "FlaskInstantRecovery", "BASE", 0)
			local recoveryMod = 1 + calcLocal(modList, "FlaskRecovery", "INC", 0) / 100
			local rateMod = 1 + calcLocal(modList, "FlaskRecoveryRate", "INC", 0) / 100
			flaskData.duration = self.base.flask.duration * (1 + durationInc / 100) / rateMod * durationMore
			if self.base.flask.life then
				flaskData.lifeBase = self.base.flask.life * (1 + self.quality / 100) * recoveryMod
				flaskData.lifeInstant = flaskData.lifeBase * flaskData.instantPerc / 100
				flaskData.lifeGradual = flaskData.lifeBase * (1 - flaskData.instantPerc / 100) * (1 + durationInc / 100)
				flaskData.lifeTotal = flaskData.lifeInstant + flaskData.lifeGradual
			end
			if self.base.flask.mana then
				flaskData.manaBase = self.base.flask.mana * (1 + self.quality / 100) * recoveryMod
				flaskData.manaInstant = flaskData.manaBase * flaskData.instantPerc / 100
				flaskData.manaGradual = flaskData.manaBase * (1 - flaskData.instantPerc / 100) * (1 + durationInc / 100)
				flaskData.manaTotal = flaskData.manaInstant + flaskData.manaGradual
			end
		else
			-- Utility flask
			flaskData.duration = self.base.flask.duration * (1 + (durationInc + self.quality) / 100) * durationMore
		end
		flaskData.chargesMax = self.base.flask.chargesMax + calcLocal(modList, "FlaskCharges", "BASE", 0)
		flaskData.chargesUsed = m_floor(self.base.flask.chargesUsed * (1 + calcLocal(modList, "FlaskChargesUsed", "INC", 0) / 100))
		flaskData.gainMod = 1 + calcLocal(modList, "FlaskChargeRecovery", "INC", 0) / 100
		flaskData.effectInc = calcLocal(modList, "FlaskEffect", "INC", 0)
		for _, value in ipairs(modList:List(nil, "FlaskData")) do
			flaskData[value.key] = value.value
		end
	elseif self.type == "Jewel" then
		local jewelData = self.jewelData
		for _, func in ipairs(modList:List(nil, "JewelFunc")) do
			jewelData.funcList = jewelData.funcList or { }
			t_insert(jewelData.funcList, func)
		end
		for _, value in ipairs(modList:List(nil, "JewelData")) do
			jewelData[value.key] = value.value
		end
		if modList:List(nil, "ImpossibleEscapeKeystones") then
			jewelData.impossibleEscapeKeystones = { }
			for _, value in ipairs(modList:List(nil, "ImpossibleEscapeKeystones")) do
				jewelData.impossibleEscapeKeystones[value.key] = value.value
			end
		end
		if self.clusterJewel then
			jewelData.clusterJewelNotables = { }
			for _, name in ipairs(modList:List(nil, "ClusterJewelNotable")) do
				t_insert(jewelData.clusterJewelNotables, name)
			end
			jewelData.clusterJewelAddedMods = { }
			for _, line in ipairs(modList:List(nil, "AddToClusterJewelNode")) do
				t_insert(jewelData.clusterJewelAddedMods, line)
			end
			-- Small and Medium Curse Cluster Jewel passive mods are parsed the same so the medium cluster data overwrites small and the skills differ
			-- This changes small curse clusters to have the correct clusterJewelSkill so it passes validation below and works as expected in the tree
			if jewelData.clusterJewelSkill == "affliction_curse_effect" and jewelData.clusterJewelNodeCount and jewelData.clusterJewelNodeCount < 4 then
				jewelData.clusterJewelSkill = "affliction_curse_effect_small"
			end
			-- Validation
			if jewelData.clusterJewelNodeCount then
				jewelData.clusterJewelNodeCount = m_min(m_max(jewelData.clusterJewelNodeCount, self.clusterJewel.minNodes), self.clusterJewel.maxNodes)
			end
			if jewelData.clusterJewelSkill and not self.clusterJewel.skills[jewelData.clusterJewelSkill] then
				jewelData.clusterJewelSkill = nil
			end
			jewelData.clusterJewelValid = jewelData.clusterJewelKeystone 
				or ((jewelData.clusterJewelSkill or jewelData.clusterJewelSmallsAreNothingness) and jewelData.clusterJewelNodeCount) 
				or (jewelData.clusterJewelSocketCountOverride and jewelData.clusterJewelNothingnessCount)
		end
	end	
	return { unpack(modList) }
end

-- Build lists of modifiers for each slot the item can occupy
function ItemClass:BuildModList()
	if not self.base then
		return
	end
	local baseList = new("ModList")
	if self.base.weapon then
		self.weaponData = { }
	elseif self.base.armour then
		self.armourData = self.armourData or { }
	elseif self.base.flask then
		self.flaskData = { }
		self.buffModList = { }
	elseif self.type == "Jewel" then
		self.jewelData = { }
	end
	self.baseModList = baseList
	self.rangeLineList = { }
	self.modSource = "Item:"..(self.id or -1)..":"..self.name
	for _, modLine in ipairs(self.buffModLines) do
		if not modLine.extra and self:CheckModLineVariant(modLine) then
			for _, mod in ipairs(modLine.modList) do
				mod.source = self.modSource
				t_insert(self.buffModList, mod)
			end
		end
	end
	local function processModLine(modLine)
		if self:CheckModLineVariant(modLine) then
			-- special section for variant over-ride of pre-modifier item parameters
			if modLine.line:find("需求 职业") then
				self.classRestriction = modLine.line:gsub("{variant:([%d,]+)}", ""):match("需求 职业: (.+)")
			end
			-- handle understood modifier variable properties
			if not modLine.extra then
				if modLine.range then
					local strippedModeLine = modLine.line:gsub("\n"," ")
					-- Look at the min and max of the range to confirm it's *actually* a range
					local rangeMin, rangeMax = itemLib.getLineRangeMinMax(strippedModeLine)
					if rangeMin ~= rangeMax then
						local catalystScalar = getCatalystScalar(self.catalyst, modLine.modTags, self.catalystQuality)
						-- Put the modified value into the string
						local line = itemLib.applyRange(strippedModeLine, modLine.range, catalystScalar)
						-- Check if we can parse it before adding the mods
						local list, extra = modLib.parseMod(line)
						if list and not extra then
							modLine.modList = list
							t_insert(self.rangeLineList, modLine)
						end
					end
				end
				for _, mod in ipairs(modLine.modList) do
					mod = modLib.setSource(mod, self.modSource)
					baseList:AddMod(mod)
				end
				if modLine.modTags and #modLine.modTags > 0 then
					self.hasModTags = true
				end
			end
		end
	end
	for _, modLine in ipairs(self.enchantModLines) do
		processModLine(modLine)
	end
	for _, modLine in ipairs(self.scourgeModLines) do
		processModLine(modLine)
	end
	for _, modLine in ipairs(self.classRequirementModLines) do
		processModLine(modLine)
	end
	for _, modLine in ipairs(self.implicitModLines) do
		processModLine(modLine)
	end
	for _, modLine in ipairs(self.explicitModLines) do
		processModLine(modLine)
	end
	if calcLocal(baseList, "NoAttributeRequirements", "FLAG", 0) then
		self.requirements.strMod = 0
		self.requirements.dexMod = 0
		self.requirements.intMod = 0
	else
		self.requirements.strMod = m_floor((self.requirements.str + calcLocal(baseList, "StrRequirement", "BASE", 0)) * (1 + calcLocal(baseList, "StrRequirement", "INC", 0) / 100))
		self.requirements.dexMod = m_floor((self.requirements.dex + calcLocal(baseList, "DexRequirement", "BASE", 0)) * (1 + calcLocal(baseList, "DexRequirement", "INC", 0) / 100))
		self.requirements.intMod = m_floor((self.requirements.int + calcLocal(baseList, "IntRequirement", "BASE", 0)) * (1 + calcLocal(baseList, "IntRequirement", "INC", 0) / 100))
	end
	self.grantedSkills = { }
	for _, skill in ipairs(baseList:List(nil, "ExtraSkill")) do
		if skill.name ~= "Unknown" then
			t_insert(self.grantedSkills, {
				skillId = skill.skillId,
				level = skill.level,
				noSupports = skill.noSupports,
				source = self.modSource,
				triggered = skill.triggered,
			})
			
		end
	end
	local socketCount = calcLocal(baseList, "SocketCount", "BASE", 0)
	self.abyssalSocketCount = calcLocal(baseList, "AbyssalSocketCount", "BASE", 0)
	
	
	self.selectableSocketCount = m_max(self.base.socketLimit or 0, #self.sockets) - self.abyssalSocketCount
	
	
	if calcLocal(baseList, "NoSockets", "FLAG", 0) then
		-- Remove all sockets
		wipeTable(self.sockets)
		self.selectableSocketCount = 0
	elseif socketCount > 0 then
		-- Force the socket count to be equal to the stated number
		self.selectableSocketCount = socketCount
		local group = 0
		for i = 1, m_max(socketCount, #self.sockets) do 
			if i > socketCount then
				self.sockets[i] = nil
			elseif not self.sockets[i] then
				self.sockets[i] = {
					color = self.defaultSocketColor,
					group = group
				}
			else
				group = self.sockets[i].group
			end
		end
	elseif self.abyssalSocketCount > 0 then
		-- Ensure that there are the correct number of abyssal sockets present
		local newSockets = { }
		local group = 0
		if self.sockets then
			for i, socket in ipairs(self.sockets) do
				if socket.color ~= "A" then
					t_insert(newSockets, socket)
					group = socket.group
					if #newSockets >= self.selectableSocketCount then
						break
					end
				end
			end
		end
		for i = 1, self.abyssalSocketCount do
			group = group + 1
			t_insert(newSockets, {
				color = "A",
				group = group
			})
		end
		self.sockets = newSockets
	end
	self.socketedJewelEffectModifier = 1 + calcLocal(baseList, "SocketedJewelEffect", "INC", 0) / 100
if self.name == "无尽之衣, 简易之袍" or self.name == "忠诚之肤, 简易之袍" or self.name == "君主之肤, 简易之袍" then
		-- Hack to remove the energy shield
		baseList:NewMod("ArmourData", "LIST", { key = "EnergyShield", value = 0 })
	end
	if self.base.weapon or self.type == "Ring" then
		self.slotModList = { }
		for i = 1, 2 do
			self.slotModList[i] = self:BuildModListForSlotNum(baseList, i)
		end
	else
		self.modList = self:BuildModListForSlotNum(baseList)
	end
end
