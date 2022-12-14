-- This file is automatically generated, do not edit!
-- Item data (c) Grinding Gear Games

return {
	[1]={
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
					text="牺牲你生命的 {0}%\n召唤生物每秒获得所牺牲生命 {1}% 的生命回复"
				}
			}
		},
		name="blood_offering_life_loss",
		stats={
			[1]="blood_offering_%_of_life_to_lose",
			[2]="blood_offering_%_of_lost_life_to_regenerate_as_life_per_second"
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
					text="每消耗 1 具灵柩，召唤生物的生命回复便总增 {0}%"
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
					text="每消耗 1 具灵柩，召唤生物的生命回复便总降 {0}%"
				}
			}
		},
		name="blood_offering_life_regen_multi",
		stats={
			[1]="blood_offering_life_regenerated_+%_final_per_corpse"
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
					text="召唤生物的攻击速度提高 {0}%"
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
					text="召唤生物的攻击速度降低 {0}%"
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
					text="召唤生物的伤害提高 {0}%"
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
					text="召唤生物的伤害降低 {0}%"
				}
			}
		},
		name="damage_incr",
		stats={
			[1]="damage_+%"
		}
	},
	[5]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="召唤生物的施法速度提高 {0}%"
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
					text="召唤生物的施法速度降低 {0}%"
				}
			}
		},
		name="cast_speed_incr_skill_granted",
		stats={
			[1]="cast_speed_+%_granted_from_skill"
		}
	},
	[6]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="召唤生物的移动速度提高 {0}%"
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
					text="召唤生物的移动速度降低 {0}%"
				}
			}
		},
		name="movement_speed_incr",
		stats={
			[1]="base_movement_velocity_+%"
		}
	},
	[7]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]="#",
							[2]="#"
						}
					},
					text="召唤生物的攻击伤害格挡几率提高 {0:+d}%"
				}
			}
		},
		name="base_block",
		stats={
			[1]="monster_base_block_%"
		}
	},
	[8]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]="#",
							[2]="#"
						}
					},
					text="召唤生物的法术伤害格挡几率提高 {0:+d}%"
				}
			}
		},
		name="base_spell_block",
		stats={
			[1]="base_spell_block_%"
		}
	},
	[9]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]="#",
							[2]="#"
						}
					},
					text="召唤生物在格挡时恢复 {0} 点生命"
				}
			}
		},
		name="recover_life_on_block",
		stats={
			[1]="minion_recover_X_life_on_block"
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
					text="召唤生物获得额外混沌伤害，其数值等同于自身物理伤害的 {0}%"
				}
			}
		},
		name="physical_damage_to_add_as_chaos",
		stats={
			[1]="physical_damage_%_to_add_as_chaos"
		}
	},
	[11]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]="#",
							[2]="#"
						}
					},
					text="每消耗 1 具灵柩，召唤生物便获得等同于自身最大生命 {0}% 的额外能量护盾"
				}
			}
		},
		name="spirit_offering_life_as_es_per_corpse",
		stats={
			[1]="spirit_offering_life_%_added_as_base_maximum_energy_shield_per_corpse_consumed"
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
					text="使召唤生物 +{0}% 混沌抗性"
				}
			}
		},
		name="chaos_res",
		stats={
			[1]="base_chaos_damage_resistance_%"
		}
	},
	[13]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]="#",
							[2]="#"
						}
					},
					text="召唤生物获得 {0:+d}% 元素抗性"
				}
			}
		},
		name="elemental_resist",
		stats={
			[1]="base_resist_all_elements_%"
		}
	},
	[14]={
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
							[1]=1,
							[2]="#"
						}
					},
					text="将召唤生物伤害的 {0}% 转化为生命偷取"
				}
			}
		},
		name="life_leech_from_any",
		stats={
			[1]="life_leech_from_any_damage_permyriad"
		}
	},
	[15]={
		lang={
			["Simplified Chinese"]={
				[1]={
					[1]={
						k="per_minute_to_per_second",
						v=1
					},
					[2]={
						k="reminderstring",
						v="ReminderTextRecently"
					},
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="使召唤生物的生命在它们近期内有过格挡的情况下每秒再生 {0}%"
				}
			}
		},
		name="minion_life_regen_if_blocked",
		stats={
			[1]="minion_life_regeneration_rate_per_minute_%_if_blocked_recently"
		}
	},
	["attack_speed_+%_granted_from_skill"]=3,
	["base_chaos_damage_resistance_%"]=12,
	["base_movement_velocity_+%"]=6,
	["base_resist_all_elements_%"]=13,
	["base_spell_block_%"]=8,
	["blood_offering_%_of_life_to_lose"]=1,
	["blood_offering_%_of_lost_life_to_regenerate_as_life_per_second"]=1,
	["blood_offering_life_regenerated_+%_final_per_corpse"]=2,
	["cast_speed_+%_granted_from_skill"]=5,
	["damage_+%"]=4,
	["life_leech_from_any_damage_permyriad"]=14,
	["minion_life_regeneration_rate_per_minute_%_if_blocked_recently"]=15,
	["minion_recover_X_life_on_block"]=9,
	["monster_base_block_%"]=7,
	parent="skill_stat_descriptions",
	["physical_damage_%_to_add_as_chaos"]=10,
	["spirit_offering_life_%_added_as_base_maximum_energy_shield_per_corpse_consumed"]=11
}