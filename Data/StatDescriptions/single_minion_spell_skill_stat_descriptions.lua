return {
	[1]={
		lang={
			["Simplified Chinese"]={
				[1]={
					[1]={
						k="reminderstring",
						v="ReminderTextBleeding"
					},
					limit={
						[1]={
							[1]=1,
							[2]=99
						},
						[2]={
							[1]=0,
							[2]=0
						},
						[3]={
							[1]=0,
							[2]=0
						}
					},
					text="Minion's Attacks have {0}% chance to inflict Bleeding"
				},
				[2]={
					[1]={
						k="reminderstring",
						v="ReminderTextBleeding"
					},
					limit={
						[1]={
							[1]=100,
							[2]="#"
						},
						[2]={
							[1]=0,
							[2]=0
						},
						[3]={
							[1]=0,
							[2]=0
						}
					},
					text="Minion's Attacks inflict Bleeding"
				},
				[3]={
					[1]={
						k="reminderstring",
						v="ReminderTextBleeding"
					},
					limit={
						[1]={
							[1]="#",
							[2]="#"
						},
						[2]={
							[1]="#",
							[2]="#"
						},
						[3]={
							[1]=0,
							[2]=0
						}
					},
					text="Minion's Attacks inflict Bleeding"
				},
				[4]={
					limit={
						[1]={
							[1]="#",
							[2]="#"
						},
						[2]={
							[1]="#",
							[2]="#"
						},
						[3]={
							[1]="#",
							[2]="#"
						}
					},
					text="Minion cannot inflict Bleeding"
				}
			}
		},
		name="bleeding_chance",
		stats={
			[1]="bleed_on_hit_with_attacks_%",
			[2]="global_bleed_on_hit",
			[3]="cannot_cause_bleeding"
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
					text="Minion deals {0}% more Damage with Bleeding"
				},
				[2]={
					limit={
						[1]={
							[1]="#",
							[2]=-1
						}
					},
					text="Minion deals {0}% less Damage with Bleeding"
				}
			}
		},
		name="minion_bleeding_damage",
		stats={
			[1]="active_skill_minion_bleeding_damage_+%_final"
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
					text="Minion deals {0}% more Damage"
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
					text="Minion deals {0}% less Damage"
				}
			}
		},
		name="support_more_minion_damage",
		stats={
			[1]="support_minion_damage_+%_final"
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
					text="Minion deals {0}% more Damage"
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
					text="Minion deals {0}% less Damage"
				}
			}
		},
		name="minion_damage_final",
		stats={
			[1]="active_skill_minion_damage_+%_final"
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
					text="Minion deals {0}% more Physical Damage"
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
					text="Minion deals {0}% less Physical Damage"
				}
			}
		},
		name="minion_physical_damage_final",
		stats={
			[1]="active_skill_minion_physical_damage_+%_final"
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
					text="Minion has {0} Maximum Life"
				}
			}
		},
		name="display_minion_life",
		stats={
			[1]="display_minion_maximum_life"
		}
	},
	[7]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="Minion gains {0}% more Added Damage"
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
					text="Minion gains {0}% less Added Damage"
				}
			}
		},
		name="minion_added_damage",
		stats={
			[1]="active_skill_minion_added_damage_+%_final"
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
					text="Minion has {0}% more Duration "
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
					text="Minion has {0}% less Duration "
				}
			}
		},
		name="quality_duration_final",
		stats={
			[1]="active_skill_quality_duration_+%_final"
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
					text="Minion has {0}% more Attack Speed"
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
					text="Minion has {0}% less Attack Speed"
				}
			}
		},
		name="minion_attack_speed_more",
		stats={
			[1]="active_skill_minion_attack_speed_+%_final"
		}
	},
	[10]={
		lang={
			["Simplified Chinese"]={
				[1]={
					[1]={
						k="per_minute_to_per_second",
						v=1
					},
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="Minion takes {0}% of its Maximum Life as Fire Damage per second"
				}
			}
		},
		name="support_burning_minions_self_burn",
		stats={
			[1]="minion_fire_damage_%_of_maximum_life_taken_per_minute"
		}
	},
	[11]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]=99
						}
					},
					text="{0}% chance to gain a Rampage Kill when Minion hits a Unique Enemy"
				},
				[2]={
					limit={
						[1]={
							[1]=100,
							[2]="#"
						}
					},
					text="Gain a Rampage Kill when Minion hits a Unique Enemy"
				}
			}
		},
		name="minion_grants_rampage_on_hit",
		stats={
			[1]="minion_grants_rampage_kill_to_parent_on_hitting_unique_enemy_%"
		}
	},
	[12]={
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
					text="Minion Leeches {0}% of Elemental Damage as Life"
				}
			}
		},
		name="minion_elemental_damage_life_leech",
		stats={
			[1]="minion_life_leech_from_elemental_damage_permyriad"
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
					text="Minion Recovers {0}% of Life on Hit"
				}
			}
		},
		stats={
			[1]="minion_recover_%_maximum_life_on_hit"
		}
	},
	[14]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]="#",
							[2]="#"
						}
					},
					text="Minion cannot Taunt Enemies"
				}
			}
		},
		name="minions_cannot_taunt",
		stats={
			[1]="minions_cannot_taunt_enemies"
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
					text="Reaper causes your Non-Reaper Minions to deal {0}% more Damage"
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
					text="Reaper causes your Non-Reaper Minions to deal {0}% less Damage"
				}
			}
		},
		name="non_reaper_minion_damage_final",
		stats={
			[1]="non_reaper_minion_damage_+%_final"
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
					text="Reaper causes your Non-Reaper Minions to have {0}% more Maximum Life"
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
					text="Reaper causes your Non-Reaper Minions to have {0}% less Maximum Life"
				}
			}
		},
		name="non_reaper_minion_life_final",
		stats={
			[1]="non_reaper_minion_maximum_life_+%_final"
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
					text="Minion Converts {0}% of Physical Damage to Chaos Damage"
				}
			}
		},
		name="physical_damage_to_convert_to_chaos",
		stats={
			[1]="skill_physical_damage_%_to_convert_to_chaos"
		}
	},
	[18]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						},
						[2]={
							[1]=0,
							[2]=0
						}
					},
					text="Minion Converts {0}% of Physical Damage to Cold Damage"
				}
			}
		},
		name="physical_damage_to_convert_to_cold",
		stats={
			[1]="skill_physical_damage_%_to_convert_to_cold",
			[2]="active_skill_display_suppress_physical_to_cold_damage_conversion"
		}
	},
	[19]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="Minion Converts {0}% of Physical Damage to Fire Damage"
				}
			}
		},
		name="physical_damage_to_convert_to_fire",
		stats={
			[1]="skill_physical_damage_%_to_convert_to_fire"
		}
	},
	[20]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="Minion has {0}% increased Critical Strike Chance against the Prey"
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
					text="Minion has {0}% reduced Critical Strike Chance against the Prey"
				}
			}
		},
		name="deathmark_crit_chance_vs_target",
		stats={
			[1]="support_minion_focus_fire_critical_strike_chance_+%_vs_focused_target"
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
						}
					},
					text="Minion has {0:+d}% to Critical Strike Multiplier against the Prey"
				}
			}
		},
		name="deathmark_crit_multi_vs_target",
		stats={
			[1]="support_minion_focus_fire_critical_strike_multiplier_+_vs_focused_target"
		}
	},
	[22]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="Minion deals {0}% more Damage to the Prey"
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
					text="Minion deals {0}% less Damage to the Prey"
				}
			}
		},
		name="deathmark_damage_to_target",
		stats={
			[1]="support_minion_focus_fire_damage_+%_final_vs_focussed_target"
		}
	},
	[23]={
		lang={
			["Simplified Chinese"]={
				[1]={
					[1]={
						k="per_minute_to_per_second",
						v=1
					},
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="Minion deals {0} Base Fire Damage per second to Enemies near it"
				}
			}
		},
		name="support_burning_minions_aura_burn",
		stats={
			[1]="support_minion_instability_minion_base_fire_area_damage_per_minute"
		}
	},
	[24]={
		lang={
			["Simplified Chinese"]={
				[1]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="Minion deals {0}% more Elemental Damage"
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
					text="Minion deals {0}% less Elemental Damage"
				}
			}
		},
		name="minion_totem_resistance_support_damage",
		stats={
			[1]="support_minion_totem_resistance_elemental_damage_+%_final"
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
					text="Minion always targets the Prey if possible"
				}
			}
		},
		name="deathmark_target",
		stats={
			[1]="support_minion_use_focussed_target"
		}
	},
	["active_skill_display_suppress_physical_to_cold_damage_conversion"]=18,
	["active_skill_minion_added_damage_+%_final"]=7,
	["active_skill_minion_attack_speed_+%_final"]=9,
	["active_skill_minion_bleeding_damage_+%_final"]=2,
	["active_skill_minion_damage_+%_final"]=4,
	["active_skill_minion_physical_damage_+%_final"]=5,
	["active_skill_quality_duration_+%_final"]=8,
	["bleed_on_hit_with_attacks_%"]=1,
	["cannot_cause_bleeding"]=1,
	["display_minion_maximum_life"]=6,
	["global_bleed_on_hit"]=1,
	["minion_fire_damage_%_of_maximum_life_taken_per_minute"]=10,
	["minion_grants_rampage_kill_to_parent_on_hitting_unique_enemy_%"]=11,
	["minion_life_leech_from_elemental_damage_permyriad"]=12,
	["minion_recover_%_maximum_life_on_hit"]=13,
	["minions_cannot_taunt_enemies"]=14,
	["non_reaper_minion_damage_+%_final"]=15,
	["non_reaper_minion_maximum_life_+%_final"]=16,
	parent="minion_spell_skill_stat_descriptions",
	["skill_physical_damage_%_to_convert_to_chaos"]=17,
	["skill_physical_damage_%_to_convert_to_cold"]=18,
	["skill_physical_damage_%_to_convert_to_fire"]=19,
	["support_minion_damage_+%_final"]=3,
	["support_minion_focus_fire_critical_strike_chance_+%_vs_focused_target"]=20,
	["support_minion_focus_fire_critical_strike_multiplier_+_vs_focused_target"]=21,
	["support_minion_focus_fire_damage_+%_final_vs_focussed_target"]=22,
	["support_minion_instability_minion_base_fire_area_damage_per_minute"]=23,
	["support_minion_totem_resistance_elemental_damage_+%_final"]=24,
	["support_minion_use_focussed_target"]=25
}