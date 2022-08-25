-- This file is automatically generated, do not edit!
-- Item data (c) Grinding Gear Games
local itemBases = ...

itemBases["火焰箭袋"] = {
	type = "Quiver",
	hidden = true,
	tags = { quiver = true, default = true, },
	implicit = "攻击附加 2 - 4 基础火焰伤害",
	implicitModTypes = { { "elemental_damage", "damage", "elemental", "fire", "attack" }, },
	req = { },
}
itemBases["冰晶箭袋"] = {
	type = "Quiver",
	hidden = true,
	tags = { quiver = true, default = true, },
	implicit = "攻击附加 2 - 3 基础冰霜伤害",
	implicitModTypes = { { "elemental_damage", "damage", "elemental", "cold", "attack" }, },
	req = { },
}
itemBases["电光箭袋"] = {
	type = "Quiver",
	hidden = true,
	tags = { quiver = true, default = true, },
	implicit = "攻击附加 1 - 5 基础闪电伤害",
	implicitModTypes = { { "elemental_damage", "damage", "elemental", "lightning", "attack" }, },
	req = { },
}
itemBases["重矢箭袋"] = {
	type = "Quiver",
	hidden = true,
	tags = { quiver = true, default = true, },
	implicit = "攻击附加 1 - 4 基础物理伤害",
	implicitModTypes = { { "physical_damage", "damage", "physical", "attack" }, },
	req = { level = 5, },
}
itemBases["轻巧箭袋"] = {
	type = "Quiver",
	hidden = true,
	tags = { quiver = true, default = true, },
	implicit = "+(30-40) 敏捷",
	implicitModTypes = { { "attribute" }, },
	req = { level = 12, },
}
itemBases["锯齿箭袋"] = {
	type = "Quiver",
	hidden = true,
	tags = { trade_market_legacy_item = true, quiver = true, default = true, },
	implicit = "弓类攻击附加 1 到 4 点物理伤害",
	implicitModTypes = { { "physical_damage", "damage", "physical", "attack" }, },
	req = { level = 5, },
}
itemBases["双锋箭袋"] = {
	type = "Quiver",
	hidden = true,
	tags = { trade_market_legacy_item = true, quiver = true, default = true, },
	implicit = "命中值提高 (20-30)%",
	implicitModTypes = { { "attack" }, },
	req = { level = 4, },
}
itemBases["鲨齿箭袋"] = {
	type = "Quiver",
	hidden = true,
	tags = { trade_market_legacy_item = true, quiver = true, default = true, },
	implicit = "你的攻击击中每个敌人会回复 (3-4) 生命",
	implicitModTypes = { { "resource", "life", "attack" }, },
	req = { level = 10, },
}
itemBases["钝矢箭袋"] = {
	type = "Quiver",
	hidden = true,
	tags = { trade_market_legacy_item = true, quiver = true, default = true, },
	implicit = "敌人被晕眩时间延长 (25-35)%",
	implicitModTypes = { {  }, },
	req = { level = 16, },
}
itemBases["火灵箭袋"] = {
	type = "Quiver",
	hidden = true,
	tags = { trade_market_legacy_item = true, quiver = true, default = true, },
	implicit = "弓类攻击附加 4 到 8 点火焰伤害",
	implicitModTypes = { { "elemental_damage", "damage", "elemental", "fire", "attack" }, },
	req = { level = 22, },
}
itemBases["宽矢箭袋"] = {
	type = "Quiver",
	hidden = true,
	tags = { trade_market_legacy_item = true, quiver = true, default = true, },
	implicit = "弓类攻击附加 6 到 12 点物理伤害",
	implicitModTypes = { { "physical_damage", "damage", "physical", "attack" }, },
	req = { level = 28, },
}
itemBases["穿射箭袋"] = {
	type = "Quiver",
	hidden = true,
	tags = { trade_market_legacy_item = true, quiver = true, default = true, },
	implicit = "箭矢会穿透 1 个额外目标",
	implicitModTypes = { { "attack" }, },
	req = { level = 36, },
}
itemBases["刺锋箭袋"] = {
	type = "Quiver",
	hidden = true,
	tags = { trade_market_legacy_item = true, quiver = true, default = true, },
	implicit = "攻击和法术暴击率提高 (20-30)%",
	implicitModTypes = { { "critical" }, },
	req = { level = 45, },
}
itemBases["华美箭袋"] = {
	type = "Quiver",
	tags = { not_for_sale = true, quiver = true, default = true, },
	implicit = "有 1 个插槽",
	implicitModTypes = { {  }, },
	req = { level = 45, },
}
itemBases["锯齿箭袋"] = {
	type = "Quiver",
	tags = { quiver = true, default = true, },
	implicit = "攻击附加 1 - 4 基础物理伤害",
	implicitModTypes = { { "physical_damage", "damage", "physical", "attack" }, },
	req = { level = 4, },
}
itemBases["火灵箭袋"] = {
	type = "Quiver",
	tags = { quiver = true, default = true, },
	implicit = "攻击附加 3 - 5 基础火焰伤害",
	implicitModTypes = { { "elemental_damage", "damage", "elemental", "fire", "attack" }, },
	req = { level = 9, },
}
itemBases["鲨齿箭袋"] = {
	type = "Quiver",
	tags = { quiver = true, default = true, },
	implicit = "你的攻击击中每个敌人会回复 (6-8) 生命",
	implicitModTypes = { { "resource", "life", "attack" }, },
	req = { level = 14, },
}
itemBases["飞羽箭袋"] = {
	type = "Quiver",
	tags = { quiver = true, default = true, },
	implicit = "投射物速度提高 (20-30)%",
	implicitModTypes = { { "speed" }, },
	req = { level = 20, },
}
itemBases["穿射箭袋"] = {
	type = "Quiver",
	tags = { quiver = true, default = true, },
	implicit = "箭矢会穿透 1 个额外目标",
	implicitModTypes = { { "attack" }, },
	req = { level = 25, },
}
itemBases["钝矢箭袋"] = {
	type = "Quiver",
	tags = { quiver = true, default = true, },
	implicit = "攻击附加 (7-9) - (13-16) 基础物理伤害",
	implicitModTypes = { { "physical_damage", "damage", "physical", "attack" }, },
	req = { level = 31, },
}
itemBases["双锋箭袋"] = {
	type = "Quiver",
	tags = { quiver = true, default = true, },
	implicit = "命中值提高 (20-30)%",
	implicitModTypes = { { "attack" }, },
	req = { level = 36, },
}
itemBases["刺锋箭袋"] = {
	type = "Quiver",
	tags = { quiver = true, default = true, },
	implicit = "弓类攻击的暴击率提高 (20-30)%",
	implicitModTypes = { { "attack", "critical" }, },
	req = { level = 40, },
}
itemBases["燃矢箭袋"] = {
	type = "Quiver",
	tags = { quiver = true, default = true, },
	implicit = "攻击附加 (12-15) - (24-27) 基础火焰伤害",
	implicitModTypes = { { "elemental_damage", "damage", "elemental", "fire", "attack" }, },
	req = { level = 45, },
}
itemBases["宽矢箭袋"] = {
	type = "Quiver",
	tags = { quiver = true, default = true, },
	implicit = "攻击速度提高 (8-10)%",
	implicitModTypes = { { "attack", "speed" }, },
	req = { level = 49, },
}
itemBases["恶矢箭袋"] = {
	type = "Quiver",
	tags = { quiver = true, default = true, },
	implicit = "获得额外混沌伤害，其数值等同于物理伤害的 (10-15)%",
	implicitModTypes = { { "physical_damage", "chaos_damage", "damage", "physical", "chaos" }, },
	req = { level = 55, },
}
itemBases["重矢箭袋"] = {
	type = "Quiver",
	tags = { quiver = true, default = true, },
	implicit = "攻击附加 (12-15) - (24-27) 基础物理伤害",
	implicitModTypes = { { "physical_damage", "damage", "physical", "attack" }, },
	req = { level = 61, },
}
itemBases["原矢箭袋"] = {
	type = "Quiver",
	tags = { quiver = true, default = true, },
	implicit = "攻击技能的元素伤害提高 (20-30)%",
	implicitModTypes = { { "elemental_damage", "damage", "elemental", "attack" }, },
	req = { level = 66, },
}
itemBases["火炮箭袋"] = {
	type = "Quiver",
	tags = { not_for_sale = true, atlas_base_type = true, quiveratlas1 = true, quiver = true, default = true, },
	implicit = "图腾放置速度提高 (20-30)%",
	implicitModTypes = { { "speed" }, },
	req = { level = 74, },
}
