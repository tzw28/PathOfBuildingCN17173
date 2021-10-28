return {
	[1]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="你和周围友军的物理伤害提高 {0}%"
				},
				[2]={
					[1]={
						k="negate",
						v=1
					},
					limit={
						[1]={
							[1]="#",
							[2]=-1
						}
					},
					text="你和周围友军的物理伤害降低 {0}%"
				}
			}
		},
		name="physical_damage_incr",
		stats={
			[1]="physical_damage_+%"
		}
	},
	[2]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="你与周围友军的移动速度提高 {0}%"
				},
				[2]={
					[1]={
						k="negate",
						v=1
					},
					limit={
						[1]={
							[1]="#",
							[2]=-1
						}
					},
					text="你与周围友军的移动速度降低 {0}%"
				}
			}
		},
		name="movement_speed_incr",
		stats={
			[1]="base_movement_velocity_+%"
		}
	},
	[3]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="你与周围友军的攻击速度提高 {0}%"
				},
				[2]={
					[1]={
						k="negate",
						v=1
					},
					limit={
						[1]={
							[1]="#",
							[2]=-1
						}
					},
					text="你与周围友军的攻击速度降低 {0}%"
				}
			}
		},
		name="attack_speed_incr_skill_granted",
		stats={
			[1]="attack_speed_+%_granted_from_skill"
		}
	},
	[4]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="你与周围友军的施法速度提高 {0}%"
				},
				[2]={
					[1]={
						k="negate",
						v=1
					},
					limit={
						[1]={
							[1]="#",
							[2]=-1
						}
					},
					text="你与周围友军的施法速度降低 {0}%"
				}
			}
		},
		name="cast_speed_incr_skill_granted",
		stats={
			[1]="cast_speed_+%_granted_from_skill"
		}
	},
	[5]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]="#",
							[2]="#"
						}
					},
					text="你与周围友军获得 {0:+d}% 元素抗性"
				}
			}
		},
		name="elemental_resist",
		stats={
			[1]="base_resist_all_elements_%"
		}
	},
	[6]={
		lang={
			["Simplified Chinese"]={
				[1]={
					[1]={
						k="per_minute_to_per_second_2dp",
						v=1
					},
					limit={
						[1]={
							[1]="#",
							[2]="#"
						}
					},
					text="你与周围友军每秒回复 {0}% 生命"
				}
			}
		},
		name="life_regen_per_minute_percent",
		stats={
			[1]="life_regeneration_rate_per_minute_%"
		}
	},
	[7]={
		lang={
			["Simplified Chinese"]={
				[1]={
					[1]={
						k="per_minute_to_per_second",
						v=1
					},
					limit={
						[1]={
							[1]="#",
							[2]="#"
						}
					},
					text="你和周围友军每秒再生 {0} 点生命"
				}
			}
		},
		name="life_regen_per_minute",
		stats={
			[1]="base_life_regeneration_rate_per_minute"
		}
	},
	[8]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="你与周围友军的命中值提高 {0}%"
				},
				[2]={
					[1]={
						k="negate",
						v=1
					},
					limit={
						[1]={
							[1]="#",
							[2]=-1
						}
					},
					text="你与周围友军的命中值降低 {0}%"
				}
			}
		},
		name="accuracy_rating_incr",
		stats={
			[1]="accuracy_rating_+%"
		}
	},
	[9]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="你与周围友军的攻击和法术暴击率提高 {0}%"
				},
				[2]={
					[1]={
						k="negate",
						v=1
					},
					limit={
						[1]={
							[1]="#",
							[2]=-1
						}
					},
					text="你与周围友军的攻击和法术暴击率降低 {0}%"
				}
			}
		},
		name="critical_strike_chance_incr",
		stats={
			[1]="critical_strike_chance_+%"
		}
	},
	[10]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="你与周围友军的闪避值提高 {0}"
				}
			}
		},
		name="base_evasion",
		stats={
			[1]="base_evasion_rating"
		}
	},
	[11]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="你与周围友军的总闪避值总增 {0}%"
				}
			}
		},
		name="grace_evasion_incr",
		stats={
			[1]="grace_aura_evasion_rating_+%_final"
		}
	},
	[12]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="你与周围友军的护甲提高 {0}"
				}
			}
		},
		name="base_armour",
		stats={
			[1]="base_physical_damage_reduction_rating"
		}
	},
	[13]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="你与周围友军的护甲总增 {0}% "
				}
			}
		},
		name="determination_armour_incr",
		stats={
			[1]="determination_aura_armour_+%_final"
		}
	},
	[14]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="你与周围友军的能量护盾提高 {0}"
				}
			}
		},
		name="base_energy_shield",
		stats={
			[1]="base_maximum_energy_shield"
		}
	},
	[15]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="你与周围友军的闪电抗性提高 {0}%"
				}
			}
		},
		name="lightning_resist",
		stats={
			[1]="base_lightning_damage_resistance_%"
		}
	},
	[16]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="你与周围友军的火焰抗性提高 {0}%"
				}
			}
		},
		name="fire_resist",
		stats={
			[1]="base_fire_damage_resistance_%"
		}
	},
	[17]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="你与周围友军的冰霜抗性提高 {0}%"
				}
			}
		},
		name="cold_resist",
		stats={
			[1]="base_cold_damage_resistance_%"
		}
	},
	[18]={
		lang={
			["Simplified Chinese"]={
				[1]={
					[1]={
						k="reminderstring",
						v="ReminderTextMaximumResistance"
					},
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="你与周围友军的火焰抗性上限提高 {0}%"
				}
			}
		},
		name="max_fire_resist",
		stats={
			[1]="base_maximum_fire_damage_resistance_%"
		}
	},
	[19]={
		lang={
			["Simplified Chinese"]={
				[1]={
					[1]={
						k="reminderstring",
						v="ReminderTextMaximumResistance"
					},
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="你与周围友军的冰霜抗性上限提高 {0}%"
				}
			}
		},
		name="max_cold_resist",
		stats={
			[1]="base_maximum_cold_damage_resistance_%"
		}
	},
	[20]={
		lang={
			["Simplified Chinese"]={
				[1]={
					[1]={
						k="reminderstring",
						v="ReminderTextMaximumResistance"
					},
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="你与周围友军的闪电抗性上限提高 {0}%"
				}
			}
		},
		name="max_lightning_resist",
		stats={
			[1]="base_maximum_lightning_damage_resistance_%"
		}
	},
	[21]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]="#",
							[2]="#"
						},
						[2]={
							[1]="#",
							[2]="#"
						}
					},
					text="你和周围友军的攻击额外造成 {0} - {1} 火焰伤害"
				}
			}
		},
		name="attack_added_fire",
		stats={
			[1]="attack_minimum_added_fire_damage",
			[2]="attack_maximum_added_fire_damage"
		}
	},
	[22]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]="#",
							[2]="#"
						},
						[2]={
							[1]="#",
							[2]="#"
						}
					},
					text="你和周围友军的攻击造成 {0} 到 {1} 点额外闪电伤害"
				}
			}
		},
		name="attack_added_lightning",
		stats={
			[1]="attack_minimum_added_lightning_damage",
			[2]="attack_maximum_added_lightning_damage"
		}
	},
	[23]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="你与周围友军额外获得 {0}% 物理伤害，并转化为冰霜伤害"
				}
			}
		},
		name="physical_damage_to_add_as_cold",
		stats={
			[1]="physical_damage_%_to_add_as_cold"
		}
	},
	[24]={
		lang={
			["Simplified Chinese"]={
				[1]={
					[1]={
						k="per_minute_to_per_second",
						v=1
					},
					limit={
						[1]={
							[1]="#",
							[2]="#"
						}
					},
					text="你与周围友军每秒回复 {0} 魔力"
				}
			}
		},
		name="mana_regen",
		stats={
			[1]="base_mana_regeneration_rate_per_minute"
		}
	},
	[25]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]="#",
							[2]="#"
						}
					},
					text="你与周围友军不会因为承受伤害而延迟能量护盾回复的间隔时间"
				}
			}
		},
		name="energy_shield_no_delay",
		stats={
			[1]="energy_shield_recharge_not_delayed_by_damage"
		}
	},
	[26]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]="#",
							[2]="#"
						}
					},
					text="你与周围友军施放技能时不消耗魔力"
				}
			}
		},
		name="no_mana_cost",
		stats={
			[1]="no_mana_cost"
		}
	},
	[27]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="你和周围友军的闪避攻击击中率 {0:+d}%"
				}
			}
		},
		name="evade_chance",
		stats={
			[1]="chance_to_evade_attacks_%"
		}
	},
	[28]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]="#",
							[2]="#"
						}
					},
					text="将你与周围友军承受的元素伤害转化为回复生命\n你与周围友军无法获得【瓦尔之灵】"
				}
			}
		},
		name="base_elemental_damage_heals",
		stats={
			[1]="base_elemental_damage_heals"
		}
	},
	[29]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]="#",
							[2]="#"
						},
						[2]={
							[1]="#",
							[2]="#"
						}
					},
					text="你和周围友军的法术额外造成 {0} - {1} 火焰伤害"
				}
			}
		},
		name="spell_added_fire_damage",
		stats={
			[1]="spell_minimum_added_fire_damage",
			[2]="spell_maximum_added_fire_damage"
		}
	},
	[30]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="你与周围友军施放法术时造成的闪电伤害总增 {0}%"
				},
				[2]={
					[1]={
						k="negate",
						v=1
					},
					limit={
						[1]={
							[1]="#",
							[2]=-1
						}
					},
					text="你与周围友军施放法术时造成的闪电伤害总降 {0}%"
				}
			}
		},
		name="wrath_spell_lightning_damage",
		stats={
			[1]="wrath_aura_spell_lightning_damage_+%_final"
		}
	},
	[31]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]="#",
							[2]="#"
						}
					},
					text="你和周围友军的命中值 {0:+d}"
				}
			}
		},
		name="accuracy_rating",
		stats={
			[1]="accuracy_rating"
		}
	},
	[32]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]="#",
							[2]="#"
						},
						[2]={
							[1]="#",
							[2]="#"
						}
					},
					text="你和你周围友军的攻击附加 {0} - {1} 基础混沌伤害"
				}
			}
		},
		name="attack_added_chaos",
		stats={
			[1]="attack_minimum_added_chaos_damage",
			[2]="attack_maximum_added_chaos_damage"
		}
	},
	[33]={
		lang={
			["Simplified Chinese"]={
				[1]={
					[1]={
						k="reminderstring",
						v="ReminderTextImpale"
					},
					limit={
						[1]={
							[1]=1,
							[2]=99
						}
					},
					text="你与周围友军攻击击中时有 {0}% 的几率穿刺敌人"
				},
				[2]={
					[1]={
						k="reminderstring",
						v="ReminderTextImpale"
					},
					limit={
						[1]={
							[1]=100,
							[2]="#"
						}
					},
					text="你与周围友军攻击击中时穿刺敌人"
				}
			}
		},
		name="attack_impale_chance",
		stats={
			[1]="attacks_impale_on_hit_%_chance"
		}
	},
	[34]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="你和周围友军的伤害提高 {0}%"
				},
				[2]={
					[1]={
						k="negate",
						v=1
					},
					limit={
						[1]={
							[1]="#",
							[2]=-1
						}
					},
					text="你和周围友军的伤害减少 {0}%"
				}
			}
		},
		name="aura_damage_pluspercent",
		stats={
			[1]="auras_grant_damage_+%_to_you_and_your_allies"
		}
	},
	[35]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]="#",
							[2]="#"
						}
					},
					text="你和周围友军有 {0}% 的几率避免元素异常状态"
				}
			}
		},
		name="aura_avoid_elemental_ailments",
		stats={
			[1]="avoid_all_elemental_status_%"
		}
	},
	[36]={
		lang={
			["Simplified Chinese"]={
				[1]={
					[1]={
						k="reminderstring",
						v="ReminderTextChanceToAvoidDamageMax"
					},
					limit={
						[1]={
							[1]=1,
							[2]=99
						}
					},
					text="你和周围友军被击中时，有 {0}% 的几率避免混沌伤害"
				},
				[2]={
					[1]={
						k="reminderstring",
						v="ReminderTextChanceToAvoidDamageMax"
					},
					limit={
						[1]={
							[1]=100,
							[2]="#"
						}
					},
					text="你和周围友军被击中时，避免混沌伤害"
				}
			}
		},
		name="avoid_chaos_damage",
		stats={
			[1]="avoid_chaos_damage_%"
		}
	},
	[37]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]="#",
							[2]="#"
						}
					},
					text="周围敌人有 {0}% 物理伤害减免"
				}
			}
		},
		name="phys_reduction",
		stats={
			[1]="base_additional_physical_damage_reduction_%"
		}
	},
	[38]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="你和周围友军的异常状态伤害提高 {0}%"
				},
				[2]={
					[1]={
						k="negate",
						v=1
					},
					limit={
						[1]={
							[1]="#",
							[2]=-1
						}
					},
					text="你和周围友军的异常状态伤害减少 {0}%"
				}
			}
		},
		name="aura_ailment_damage",
		stats={
			[1]="base_ailment_damage_+%"
		}
	},
	[39]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]="#",
							[2]="#"
						}
					},
					text="你和周围友军有 {0}% 的几率避免被冻结"
				}
			}
		},
		name="aura_avoid_freeze",
		stats={
			[1]="base_avoid_freeze_%"
		}
	},
	[40]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]="#",
							[2]="#"
						}
					},
					text="你和周围友军有 {0}% 的几率避免被点燃"
				}
			}
		},
		name="aura_avoid_ignite",
		stats={
			[1]="base_avoid_ignite_%"
		}
	},
	[41]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]="#",
							[2]="#"
						}
					},
					text="你和周围友军有 {0}% 的几率避免感电效果"
				}
			}
		},
		name="aura_avoid_shock",
		stats={
			[1]="base_avoid_shock_%"
		}
	},
	[42]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]=99
						}
					},
					text="你和周围友军有 {0}% 的几率避免被眩晕"
				},
				[2]={
					limit={
						[1]={
							[1]=100,
							[2]="#"
						}
					},
					text="你和周围友军不能被眩晕"
				}
			}
		},
		name="base_avoid_stun_chance",
		stats={
			[1]="base_avoid_stun_%"
		}
	},
	[43]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]="#",
							[2]="#"
						}
					},
					text="你和周围友军的暴击伤害加成 {0:+d}%"
				}
			}
		},
		name="critical_strike_multiplier_incr",
		stats={
			[1]="base_critical_strike_multiplier_+"
		}
	},
	[44]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]="#",
							[2]="#"
						}
					},
					text="你和周围友军免疫冰缓"
				}
			}
		},
		name="immune_to_chill",
		stats={
			[1]="base_immune_to_chill"
		}
	},
	[45]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]="#",
							[2]="#"
						}
					},
					text="你和周围友军免疫冻结"
				}
			}
		},
		name="immune_to_freeze",
		stats={
			[1]="base_immune_to_freeze"
		}
	},
	[46]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]="#",
							[2]="#"
						}
					},
					text="你和周围友军免疫点燃"
				}
			}
		},
		name="immune_to_ignite",
		stats={
			[1]="base_immune_to_ignite"
		}
	},
	[47]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]="#",
							[2]="#"
						}
					},
					text="你和周围友军免疫感电"
				}
			}
		},
		name="immune_to_shock",
		stats={
			[1]="base_immune_to_shock"
		}
	},
	[48]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="你和周围友军的投射物速度加快 {0}%"
				},
				[2]={
					[1]={
						k="negate",
						v=1
					},
					limit={
						[1]={
							[1]="#",
							[2]=-1
						}
					},
					text="你和周围友军的投射物速度减慢 {0}%"
				}
			}
		},
		name="projectile_speed_incr",
		stats={
			[1]="base_projectile_speed_+%"
		}
	},
	[49]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]="#",
							[2]="#"
						}
					},
					text="你和周围友军的伤害穿透 {0}% 冰霜抗性 "
				}
			}
		},
		name="cold_penetration",
		stats={
			[1]="base_reduce_enemy_cold_resistance_%"
		}
	},
	[50]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]="#",
							[2]="#"
						}
					},
					text="你和周围友军的伤害穿透 {0}% 火焰抗性"
				}
			}
		},
		name="fire_penetration",
		stats={
			[1]="base_reduce_enemy_fire_resistance_%"
		}
	},
	[51]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]="#",
							[2]="#"
						}
					},
					text="你和周围友军的伤害穿透 {0}% 闪电抗性"
				}
			}
		},
		name="lightning_penetration",
		stats={
			[1]="base_reduce_enemy_lightning_resistance_%"
		}
	},
	[52]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="你和周围友军身上的增益效果消减速度加快 {0}%"
				},
				[2]={
					[1]={
						k="negate",
						v=1
					},
					limit={
						[1]={
							[1]="#",
							[2]=-1
						}
					},
					text="你和周围友军身上的增益效果消减速度减慢 {0}%"
				}
			}
		},
		name="buff_time_passed_pluspercent_for_buff_category",
		stats={
			[1]="buff_time_passed_+%_only_buff_category"
		}
	},
	[53]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="你和周围友军的燃烧伤害提高 {0}%"
				},
				[2]={
					[1]={
						k="negate",
						v=1
					},
					limit={
						[1]={
							[1]="#",
							[2]=-1
						}
					},
					text="你和周围友军的燃烧伤害降低 {0}%"
				}
			}
		},
		name="burn_damage",
		stats={
			[1]="burn_damage_+%"
		}
	},
	[54]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="你和周围友军的冰缓和冻结持续时间延长 {0}%"
				},
				[2]={
					[1]={
						k="negate",
						v=1
					},
					limit={
						[1]={
							[1]="#",
							[2]=-1
						}
					},
					text="你和周围友军的冰缓和冻结持续时间缩短 {0}%"
				}
			}
		},
		name="chill_and_freeze_duration",
		stats={
			[1]="chill_and_freeze_duration_+%"
		}
	},
	[55]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="承受的冰霜伤害提高 {0}%"
				},
				[2]={
					[1]={
						k="negate",
						v=1
					},
					limit={
						[1]={
							[1]="#",
							[2]=-1
						}
					},
					text="承受的冰霜伤害降低 {0}%"
				}
			}
		},
		name="cold_damage_taken",
		stats={
			[1]="cold_damage_taken_+%"
		}
	},
	[56]={
		lang={
			["Simplified Chinese"]={
				[1]={
					[1]={
						k="reminderstring",
						v="ReminderTextConsecratedGround"
					},
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="你和周围非召唤生物友军有 {0}% 的几率在击中一个稀有或传奇敌人时，制造一个持续 8 秒的奉献地面"
				}
			}
		},
		name="consecrate_on_hit_rare_unique",
		stats={
			[1]="create_consecrated_ground_on_hit_%_vs_rare_or_unique_enemy"
		}
	},
	[57]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="若你近期改变过姿态，则增益效果使伤害提高 {0}%"
				},
				[2]={
					[1]={
						k="negate",
						v=1
					},
					limit={
						[1]={
							[1]="#",
							[2]=-1
						}
					},
					text="若你近期改变过姿态，则增益效果使伤害降低 {0}%"
				}
			}
		},
		name="damage_plus_if_changed_stances_recently",
		stats={
			[1]="damage_+%_if_changed_stances_recently"
		}
	},
	[58]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="魔力全满时，你和周围友军的伤害提高 {0}%"
				},
				[2]={
					[1]={
						k="negate",
						v=1
					},
					limit={
						[1]={
							[1]="#",
							[2]=-1
						}
					},
					text="魔力全满时，你和周围友军的伤害降低 {0}%"
				}
			}
		},
		name="damage_on_full_mana",
		stats={
			[1]="damage_+%_on_full_mana"
		}
	},
	[59]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="你和周围友军的伤害在能量护盾全满时提高 {0}%"
				},
				[2]={
					[1]={
						k="negate",
						v=1
					},
					limit={
						[1]={
							[1]="#",
							[2]=-1
						}
					},
					text="你和周围友军的伤害在能量护盾全满时降低 {0}%"
				}
			}
		},
		name="damage_on_full_energy_shield_incr",
		stats={
			[1]="damage_+%_on_full_energy_shield"
		}
	},
	[60]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]="#",
							[2]="#"
						}
					},
					text="满血时，你和周围友军的伤害提高 {0}%"
				}
			}
		},
		name="aura_damage_on_full_life",
		stats={
			[1]="damage_+%_when_on_full_life"
		}
	},
	[61]={
		lang={
			["Simplified Chinese"]={
				[1]={
					[1]={
						k="reminderstring",
						v="ReminderTextUnlucky"
					},
					limit={
						[1]={
							[1]="#",
							[2]="#"
						}
					},
					text="被压制的法术伤害对你特别不幸"
				}
			}
		},
		name="unlucky_suppressed_damage",
		stats={
			[1]="damage_taken_from_suppressed_hits_is_unlucky"
		}
	},
	[62]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="你与周围友军的总持续性伤害总增 {0}%"
				},
				[2]={
					[1]={
						k="negate",
						v=1
					},
					limit={
						[1]={
							[1]="#",
							[2]=-1
						}
					},
					text="你与周围友军的总持续性伤害总降 {0}%"
				}
			}
		},
		name="delirium_aura_damage_over_time_incr",
		stats={
			[1]="delirium_aura_damage_over_time_+%_final"
		}
	},
	[63]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="你和周围友军的技能效果持续时间延长 {0}%"
				},
				[2]={
					[1]={
						k="negate",
						v=1
					},
					limit={
						[1]={
							[1]="#",
							[2]=-1
						}
					},
					text="你和周围友军的技能效果持续时间降低 {0}%"
				}
			}
		},
		name="duration_incr_from_delerium",
		stats={
			[1]="delirium_skill_effect_duration_+%"
		}
	},
	[64]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="你和周围友军的能量护盾充能时间提前  {0}%"
				},
				[2]={
					[1]={
						k="negate",
						v=1
					},
					limit={
						[1]={
							[1]="#",
							[2]=-1
						}
					},
					text="你和周围友军的能量护盾充能时间延后  {0}%"
				}
			}
		},
		name="energy_shield_delay",
		stats={
			[1]="energy_shield_delay_-%"
		}
	},
	[65]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="你和周围友军的能量护盾充能率提高 {0}%"
				},
				[2]={
					[1]={
						k="negate",
						v=1
					},
					limit={
						[1]={
							[1]="#",
							[2]=-1
						}
					},
					text="你和周围友军的能量护盾充能率降低 {0}%"
				}
			}
		},
		name="energy_shield_recharge_rate",
		stats={
			[1]="energy_shield_recharge_rate_+%"
		}
	},
	[66]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]="#",
							[2]="#"
						}
					},
					text="你和周围友军将 {0}% 闪避值视为额外护甲"
				}
			}
		},
		name="evasion_to_add_as_armour",
		stats={
			[1]="evasion_rating_%_to_add_as_armour"
		}
	},
	[67]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="受到的火焰伤害提高 {0}%"
				},
				[2]={
					[1]={
						k="negate",
						v=1
					},
					limit={
						[1]={
							[1]="#",
							[2]=-1
						}
					},
					text="受到的火焰伤害降低 {0}%"
				}
			}
		},
		name="fire_damage_taken",
		stats={
			[1]="fire_damage_taken_+%"
		}
	},
	[68]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="你和周围友军的药剂魔力回复效果提高 {0}%"
				}
			}
		},
		name="flask_mana_to_recover_incr",
		stats={
			[1]="flask_mana_to_recover_+%"
		}
	},
	[69]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="你与周围友军的冰霜伤害总增 {0}%"
				},
				[2]={
					[1]={
						k="negate",
						v=1
					},
					limit={
						[1]={
							[1]="#",
							[2]=-1
						}
					},
					text="你与周围友军的冰霜伤害总降 {0}%"
				}
			}
		},
		name="hatred_aura_cold_damage",
		stats={
			[1]="hatred_aura_cold_damage_+%_final"
		}
	},
	[70]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]="#",
							[2]="#"
						}
					},
					text="击中周围敌人时无视其冰霜抗性"
				}
			}
		},
		name="hits_ignore_cold_res",
		stats={
			[1]="hits_ignore_my_cold_resistance"
		}
	},
	[71]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]="#",
							[2]="#"
						}
					},
					text="击中周围敌人时无视其火焰抗性"
				}
			}
		},
		name="hits_ignore_fire_res",
		stats={
			[1]="hits_ignore_my_fire_resistance"
		}
	},
	[72]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]="#",
							[2]="#"
						}
					},
					text="击中周围敌人时无视其闪电抗性"
				}
			}
		},
		name="hits_ignore_lightning_res",
		stats={
			[1]="hits_ignore_my_lightning_resistance"
		}
	},
	[73]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]="#",
							[2]="#"
						}
					},
					text="你和周围友军免疫诅咒"
				}
			}
		},
		name="immune_to_curses",
		stats={
			[1]="immune_to_curses"
		}
	},
	[74]={
		lang={
			["Simplified Chinese"]={
				[1]={
					[1]={
						k="reminderstring",
						v="ReminderTextElementalStatusAilments"
					},
					limit={
						[1]={
							[1]="#",
							[2]="#"
						}
					},
					text="你和周围友军免疫所有元素异常状态"
				}
			}
		},
		name="elemental_ailment_immunity",
		stats={
			[1]="immune_to_status_ailments"
		}
	},
	[75]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="你和周围友军的穿刺效果提高 {0}%"
				},
				[2]={
					[1]={
						k="negate",
						v=1
					},
					limit={
						[1]={
							[1]="#",
							[2]=-1
						}
					},
					text="你和周围友军的穿刺效果降低 {0}%"
				}
			}
		},
		name="impale_effect",
		stats={
			[1]="impale_debuff_effect_+%"
		}
	},
	[76]={
		lang={
			["Simplified Chinese"]={
				[1]={
					[1]={
						k="divide_by_one_hundred",
						v=1
					},
					[2]={
						k="reminderstring",
						v="ReminderTextLifeLeech"
					},
					limit={
						[1]={
							[1]="#",
							[2]="#"
						}
					},
					text="你和周围友军将 {0}% 物理攻击伤害偷取为生命"
				}
			}
		},
		name="life_leech_from_physical",
		stats={
			[1]="life_leech_from_physical_attack_damage_permyriad"
		}
	},
	[77]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="承受的闪电伤害提高 {0}%"
				},
				[2]={
					[1]={
						k="negate",
						v=1
					},
					limit={
						[1]={
							[1]="#",
							[2]=-1
						}
					},
					text="承受的闪电伤害降低 {0}%"
				}
			}
		},
		name="lightning_damage_taken",
		stats={
			[1]="lightning_damage_taken_+%"
		}
	},
	[78]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="你和周围友军在冰缓地面上时，移动速度加快 {0}%"
				},
				[2]={
					[1]={
						k="negate",
						v=1
					},
					limit={
						[1]={
							[1]="#",
							[2]=-1
						}
					},
					text="你和周围友军在冰缓地面上时，移动速度减慢 {0}%"
				}
			}
		},
		name="move_speed_on_chilled_ground",
		stats={
			[1]="movement_velocity_+%_on_chilled_ground"
		}
	},
	[79]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]="#",
							[2]="#"
						},
						[2]={
							[1]="#",
							[2]="#"
						}
					},
					text="周围敌人受到的总物理伤害至少总增 {0}%，\n留在光环内 4 秒可使该伤害最多提高至 {1}%"
				}
			}
		},
		name="pride_physical_damage_taken",
		stats={
			[1]="physical_damage_aura_nearby_enemies_physical_damage_taken_+%",
			[2]="physical_damage_aura_nearby_enemies_physical_damage_taken_+%_max"
		}
	},
	[80]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="周围敌人受到的物理伤害提高 {0}%"
				}
			}
		},
		name="physical_damage_taken_incr",
		stats={
			[1]="physical_damage_taken_+%"
		}
	},
	[81]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="你和周围友军的总效果区域额外扩大 {0}%"
				},
				[2]={
					[1]={
						k="negate",
						v=1
					},
					limit={
						[1]={
							[1]="#",
							[2]=-1
						}
					},
					text="你和周围友军的总效果区域额外缩小 {0}%"
				}
			}
		},
		name="precision_area_of_effect_incr_final",
		stats={
			[1]="precision_grants_area_of_effect_+%_final"
		}
	},
	[82]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]="#",
							[2]="#"
						}
					},
					text="对周围敌人的攻击击中有 {0}% 的几率施加流血状态"
				}
			}
		},
		name="bleed_when_hit_chance",
		stats={
			[1]="receive_bleeding_chance_%_when_hit_by_attack"
		}
	},
	[83]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]="#",
							[2]="#"
						}
					},
					text="你和周围友军的伤害穿透 {0}% 混沌抗性"
				}
			}
		},
		name="chaos_penetration",
		stats={
			[1]="reduce_enemy_chaos_resistance_%"
		}
	},
	[84]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]="#",
							[2]="#"
						}
					},
					text="你和周围友军的伤害穿透 {0}% 元素抗性"
				}
			}
		},
		name="elemental_penetration",
		stats={
			[1]="reduce_enemy_elemental_resistance_%"
		}
	},
	[85]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]="#",
							[2]="#"
						}
					},
					text="你和周围友军的暴击伤害加成 {0:+d}%"
				}
			}
		},
		name="grant_critical_strike_multiplier_incr",
		stats={
			[1]="skill_buff_grant_critical_strike_multiplier_+"
		}
	},
	[86]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="你与周围友军的法术暴击几率提高 {0}%"
				},
				[2]={
					[1]={
						k="negate",
						v=1
					},
					limit={
						[1]={
							[1]="#",
							[2]=-1
						}
					},
					text="你与周围友军的法术暴击几率降低 {0}%"
				}
			}
		},
		name="spell_crit_incr",
		stats={
			[1]="spell_critical_strike_chance_+%"
		}
	},
	[87]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="你与周围友军的法术伤害总增 {0}%"
				},
				[2]={
					[1]={
						k="negate",
						v=1
					},
					limit={
						[1]={
							[1]="#",
							[2]=-1
						}
					},
					text="你与周围友军的法术伤害总降 {0}%"
				}
			}
		},
		name="spell_damage_aura_spell_damage",
		stats={
			[1]="spell_damage_aura_spell_damage_+%_final"
		}
	},
	[88]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]="#",
							[2]="#"
						},
						[2]={
							[1]="#",
							[2]="#"
						}
					},
					text="你和你周围友军的法术附加 {0} - {1} 基础混沌伤害"
				}
			}
		},
		name="spell_added_chaos_damage",
		stats={
			[1]="spell_minimum_added_chaos_damage",
			[2]="spell_maximum_added_chaos_damage"
		}
	},
	[89]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="你和周围友军的图腾放置速度加快 {0}%"
				},
				[2]={
					[1]={
						k="negate",
						v=1
					},
					limit={
						[1]={
							[1]="#",
							[2]=-1
						}
					},
					text="你和周围友军的图腾放置速度减慢 {0}%"
				}
			}
		},
		name="totem_summon_speed_incr",
		stats={
			[1]="summon_totem_cast_speed_+%"
		}
	},
	["accuracy_rating"]=31,
	["accuracy_rating_+%"]=8,
	["attack_maximum_added_chaos_damage"]=32,
	["attack_maximum_added_fire_damage"]=21,
	["attack_maximum_added_lightning_damage"]=22,
	["attack_minimum_added_chaos_damage"]=32,
	["attack_minimum_added_fire_damage"]=21,
	["attack_minimum_added_lightning_damage"]=22,
	["attack_speed_+%_granted_from_skill"]=3,
	["attacks_impale_on_hit_%_chance"]=33,
	["auras_grant_damage_+%_to_you_and_your_allies"]=34,
	["avoid_all_elemental_status_%"]=35,
	["avoid_chaos_damage_%"]=36,
	["base_additional_physical_damage_reduction_%"]=37,
	["base_ailment_damage_+%"]=38,
	["base_avoid_freeze_%"]=39,
	["base_avoid_ignite_%"]=40,
	["base_avoid_shock_%"]=41,
	["base_avoid_stun_%"]=42,
	["base_cold_damage_resistance_%"]=17,
	["base_critical_strike_multiplier_+"]=43,
	["base_elemental_damage_heals"]=28,
	["base_evasion_rating"]=10,
	["base_fire_damage_resistance_%"]=16,
	["base_immune_to_chill"]=44,
	["base_immune_to_freeze"]=45,
	["base_immune_to_ignite"]=46,
	["base_immune_to_shock"]=47,
	["base_life_regeneration_rate_per_minute"]=7,
	["base_lightning_damage_resistance_%"]=15,
	["base_mana_regeneration_rate_per_minute"]=24,
	["base_maximum_cold_damage_resistance_%"]=19,
	["base_maximum_energy_shield"]=14,
	["base_maximum_fire_damage_resistance_%"]=18,
	["base_maximum_lightning_damage_resistance_%"]=20,
	["base_movement_velocity_+%"]=2,
	["base_physical_damage_reduction_rating"]=12,
	["base_projectile_speed_+%"]=48,
	["base_reduce_enemy_cold_resistance_%"]=49,
	["base_reduce_enemy_fire_resistance_%"]=50,
	["base_reduce_enemy_lightning_resistance_%"]=51,
	["base_resist_all_elements_%"]=5,
	["buff_time_passed_+%_only_buff_category"]=52,
	["burn_damage_+%"]=53,
	["cast_speed_+%_granted_from_skill"]=4,
	["chance_to_evade_attacks_%"]=27,
	["chill_and_freeze_duration_+%"]=54,
	["cold_damage_taken_+%"]=55,
	["create_consecrated_ground_on_hit_%_vs_rare_or_unique_enemy"]=56,
	["critical_strike_chance_+%"]=9,
	["damage_+%_if_changed_stances_recently"]=57,
	["damage_+%_on_full_energy_shield"]=59,
	["damage_+%_on_full_mana"]=58,
	["damage_+%_when_on_full_life"]=60,
	["damage_taken_from_suppressed_hits_is_unlucky"]=61,
	["delirium_aura_damage_over_time_+%_final"]=62,
	["delirium_skill_effect_duration_+%"]=63,
	["determination_aura_armour_+%_final"]=13,
	["energy_shield_delay_-%"]=64,
	["energy_shield_recharge_not_delayed_by_damage"]=25,
	["energy_shield_recharge_rate_+%"]=65,
	["evasion_rating_%_to_add_as_armour"]=66,
	["fire_damage_taken_+%"]=67,
	["flask_mana_to_recover_+%"]=68,
	["grace_aura_evasion_rating_+%_final"]=11,
	["hatred_aura_cold_damage_+%_final"]=69,
	["hits_ignore_my_cold_resistance"]=70,
	["hits_ignore_my_fire_resistance"]=71,
	["hits_ignore_my_lightning_resistance"]=72,
	["immune_to_curses"]=73,
	["immune_to_status_ailments"]=74,
	["impale_debuff_effect_+%"]=75,
	["life_leech_from_physical_attack_damage_permyriad"]=76,
	["life_regeneration_rate_per_minute_%"]=6,
	["lightning_damage_taken_+%"]=77,
	["movement_velocity_+%_on_chilled_ground"]=78,
	["no_mana_cost"]=26,
	parent="skill_stat_descriptions",
	["physical_damage_%_to_add_as_cold"]=23,
	["physical_damage_+%"]=1,
	["physical_damage_aura_nearby_enemies_physical_damage_taken_+%"]=79,
	["physical_damage_aura_nearby_enemies_physical_damage_taken_+%_max"]=79,
	["physical_damage_taken_+%"]=80,
	["precision_grants_area_of_effect_+%_final"]=81,
	["receive_bleeding_chance_%_when_hit_by_attack"]=82,
	["reduce_enemy_chaos_resistance_%"]=83,
	["reduce_enemy_elemental_resistance_%"]=84,
	["skill_buff_grant_critical_strike_multiplier_+"]=85,
	["spell_critical_strike_chance_+%"]=86,
	["spell_damage_aura_spell_damage_+%_final"]=87,
	["spell_maximum_added_chaos_damage"]=88,
	["spell_maximum_added_fire_damage"]=29,
	["spell_minimum_added_chaos_damage"]=88,
	["spell_minimum_added_fire_damage"]=29,
	["summon_totem_cast_speed_+%"]=89,
	["wrath_aura_spell_lightning_damage_+%_final"]=30
}