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
					text="该法术与召唤生物的施法速度提高 {0}%"
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
					text="该法术与召唤生物的施法速度降低 {0}%"
				},
				[3]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="ความเร็วในการร่ายของมิเนียนและเวทนี้เพิ่มขึ้น {0}%"
				},
				[4]={
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
					text="ความเร็วในการร่ายของมิเนียนและเวทนี้ลดลง {0}%"
				},
				[5]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="Эти чары и приспешники имеют {0}% повышение скорости сотворения чар"
				},
				[6]={
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
					text="Эти чары и приспешники имеют {0}% снижение скорости сотворения чар"
				},
				[7]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="Ce Sort et les Créatures ont {0}% d'Augmentation de la Vitesse d'incantation"
				},
				[8]={
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
					text="Ce Sort et les Créatures ont {0}% de Réduction de la Vitesse d'incantation"
				},
				[9]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="Este Hechizo y los Esbirros tienen Velocidad de Lanzamiento aumentada un {0}%"
				},
				[10]={
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
					text="Este Hechizo y los Esbirros tienen Velocidad de Lanzamiento reducida un {0}%"
				},
				[11]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="Dieser Zauber und Kreaturen haben {0}% erhöhte Zaubergeschwindigkeit"
				},
				[12]={
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
					text="Dieser Zauber und Kreaturen haben {0}% verringerte Zaubergeschwindigkeit"
				},
				[13]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="이 주문 및 소환수의 시전 속도 {0}% 증가"
				},
				[14]={
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
					text="이 주문 및 소환수의 시전 속도 {0}% 감소"
				}
			}
		},
		name="cast_speed_incr",
		stats={
			[1]="base_cast_speed_+%"
		}
	},
	[2]={
		lang={
			["Simplified Chinese"]={
				[1]={
					[1]={
						k="reminderstring",
						v="ReminderTextLowLife"
					},
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="当低血时，该法术与召唤生物的施法速度提高 {0}%"
				},
				[2]={
					[1]={
						k="negate",
						v=1
					},
					[2]={
						k="reminderstring",
						v="ReminderTextLowLife"
					},
					limit={
						[1]={
							[1]="#",
							[2]=-1
						}
					},
					text="当低血时，该法术与召唤生物的施法速度降低 {0}%"
				},
				[3]={
					[1]={
						k="reminderstring",
						v="ReminderTextLowLife"
					},
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="เวทนี้ กับ มิเนียน มีความเร็วในการร่าย เพิ่มขึ้น {0}% ขณะ พลังชีวิตเหลือน้อย"
				},
				[4]={
					[1]={
						k="negate",
						v=1
					},
					[2]={
						k="reminderstring",
						v="ReminderTextLowLife"
					},
					limit={
						[1]={
							[1]="#",
							[2]=-1
						}
					},
					text="เวทนี้ กับ มิเนียน มีความเร็วในการร่าย ลดลง {0}% ขณะ พลังชีวิตเหลือน้อย"
				},
				[5]={
					[1]={
						k="reminderstring",
						v="ReminderTextLowLife"
					},
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="Эти чары и приспешники имеют {0}% повышение скорости сотворения чар при малом количестве здоровья"
				},
				[6]={
					[1]={
						k="negate",
						v=1
					},
					[2]={
						k="reminderstring",
						v="ReminderTextLowLife"
					},
					limit={
						[1]={
							[1]="#",
							[2]=-1
						}
					},
					text="Эти чары и приспешники имеют {0}% снижение скорости сотворения чар при малом количестве здоровья"
				},
				[7]={
					[1]={
						k="reminderstring",
						v="ReminderTextLowLife"
					},
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="Ce Sort et les Créatures ont {0}% d'Augmentation de la Vitesse d'incantation lorsque leur Vie est Basse"
				},
				[8]={
					[1]={
						k="negate",
						v=1
					},
					[2]={
						k="reminderstring",
						v="ReminderTextLowLife"
					},
					limit={
						[1]={
							[1]="#",
							[2]=-1
						}
					},
					text="Ce Sort et les Créatures ont {0}% de Réduction de la Vitesse d'incantation lorsque leur Vie est Basse"
				},
				[9]={
					[1]={
						k="reminderstring",
						v="ReminderTextLowLife"
					},
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="Este Hechizo y los Esbirros tienen Velocidad de Lanzamiento aumentada un {0}% cuando tienes la Vida Baja"
				},
				[10]={
					[1]={
						k="negate",
						v=1
					},
					[2]={
						k="reminderstring",
						v="ReminderTextLowLife"
					},
					limit={
						[1]={
							[1]="#",
							[2]=-1
						}
					},
					text="Este Hechizo y los Esbirros tienen Velocidad de Lanzamiento reducida un {0}% cuando tienes la Vida Baja"
				},
				[11]={
					[1]={
						k="reminderstring",
						v="ReminderTextLowLife"
					},
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="Dieser Zauber und Kreaturen haben {0}% erhöhte Zaubergeschwindigkeit bei niedrigem Leben"
				},
				[12]={
					[1]={
						k="negate",
						v=1
					},
					[2]={
						k="reminderstring",
						v="ReminderTextLowLife"
					},
					limit={
						[1]={
							[1]="#",
							[2]=-1
						}
					},
					text="Dieser Zauber und Kreaturen haben {0}% verringerte Zaubergeschwindigkeit bei niedrigem Leben"
				},
				[13]={
					[1]={
						k="reminderstring",
						v="ReminderTextLowLife"
					},
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="낮은 생명력 상태일 때 이 주문 및 소환수의 시전 속도 {0}% 증가"
				},
				[14]={
					[1]={
						k="negate",
						v=1
					},
					[2]={
						k="reminderstring",
						v="ReminderTextLowLife"
					},
					limit={
						[1]={
							[1]="#",
							[2]=-1
						}
					},
					text="낮은 생명력 상태일 때 이 주문 및 소환수의 시전 속도 {0}% 감소"
				}
			}
		},
		name="cast_speed_incr_on_low_life",
		stats={
			[1]="cast_speed_+%_when_on_low_life"
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
					text="该法术与召唤生物的总施法速度总增 {0}%"
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
					text="该法术与召唤生物的总施法速度总降 {0}%"
				},
				[3]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="เวทนี้และมิเนียน จะมีความเร็วในการร่ายมากขึ้น {0}%"
				},
				[4]={
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
					text="เวทนี้และมิเนียน จะมีความเร็วในการร่ายน้อยลง {0}%"
				},
				[5]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="Эти чары и приспешники имеют на {0}% больше скорости сотворения чар"
				},
				[6]={
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
					text="Эти чары и приспешники имеют на {0}% меньше скорости сотворения чар"
				},
				[7]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="Ce Sort et les Créatures ont {0}% Davantage de Vitesse d'incantation"
				},
				[8]={
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
					text="Ce Sort et les Créatures ont {0}% de Perte de Vitesse d'incantation"
				},
				[9]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="Este Hechizo y los Esbirros {0}% más Velocidad de Lanzamiento"
				},
				[10]={
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
					text="Este Hechizo y los Esbirros {0}% menos Velocidad de Lanzamiento"
				},
				[11]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="Dieser Zauber und Kreaturen haben {0}% mehr Zaubergeschwindigkeit"
				},
				[12]={
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
					text="Dieser Zauber und Kreaturen haben {0}% weniger Zaubergeschwindigkeit"
				},
				[13]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="이 주문 및 소환수의 시전 속도 {0}% 증폭"
				},
				[14]={
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
					text="이 주문 및 소환수의 시전 속도 {0}% 감폭"
				}
			}
		},
		name="multicast_cast_speed_incr",
		stats={
			[1]="support_multicast_cast_speed_+%_final"
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
					text="该法术与召唤生物的总施法速度总增 {0}%"
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
					text="该法术与召唤生物的总施法速度总降 {0}%"
				},
				[3]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="เวทนี้และมิเนียน จะมีความเร็วในการร่ายมากขึ้น {0}%"
				},
				[4]={
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
					text="เวทนี้และมิเนียน จะมีความเร็วในการร่ายน้อยลง {0}%"
				},
				[5]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="Эти чары и приспешники имеют на {0}% больше скорости сотворения чар"
				},
				[6]={
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
					text="Эти чары и приспешники имеют на {0}% меньше скорости сотворения чар"
				},
				[7]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="Ce Sort et les Créatures ont {0}% Davantage de Vitesse d'incantation"
				},
				[8]={
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
					text="CCe Sort et les Créatures ont {0}% de Perte de Vitesse d'incantation"
				},
				[9]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="Este hechizo y los esbirros tienen un {0}% más de velocidad de lanzamiento"
				},
				[10]={
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
					text="Este hechizo y los esbirros tienen un {0}% menos de velocidad de lanzamiento"
				},
				[11]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="Dieser Zauber und Kreaturen haben {0}% mehr Zaubergeschwindigkeit"
				},
				[12]={
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
					text="Dieser Zauber und Kreaturen haben {0}% weniger Zaubergeschwindigkeit"
				},
				[13]={
					limit={
						[1]={
							[1]=1,
							[2]="#"
						}
					},
					text="이 주문 및 소환수의 시전 속도 {0}% 증폭"
				},
				[14]={
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
					text="이 주문 및 소환수의 시전 속도 {0}% 감폭"
				}
			}
		},
		name="totem_cast_speed",
		stats={
			[1]="support_spell_totem_cast_speed_+%_final"
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
					text="召唤生物的近战打击技能对周围敌人造成火焰限定溅射伤害"
				},
				[2]={
					limit={
						[1]={
							[1]="#",
							[2]="#"
						}
					},
					text="Nahkampf-Schlagfertigkeiten von Kreaturen verursachen nur feuerbasierten Streuschaden an Zielen im Umkreis"
				}
			}
		},
		name="melee_splash_fire_only",
		stats={
			[1]="summon_raging_spirit_melee_splash_fire_damage_only"
		}
	},
	[6]={
		lang={
			["Simplified Chinese"]={
				[1]={
					[1]={
						k="reminderstring",
						v="ReminderTextMultipleMines"
					},
					limit={
						[1]={
							[1]="#",
							[2]="#"
						}
					},
					text="该技能和召唤生物有 {0}% 的几率投掷 1 个额外的陷阱或地雷"
				}
			}
		},
		stats={
			[1]="support_additional_trap_mine_%_chance_for_1_additional_trap_mine"
		}
	},
	[7]={
		lang={
			["Simplified Chinese"]={
				[1]={
					[1]={
						k="reminderstring",
						v="ReminderTextMultipleMines"
					},
					limit={
						[1]={
							[1]="#",
							[2]="#"
						}
					},
					text="该技能和召唤生物有 {0}% 的几率投掷 2 个额外的陷阱或地雷"
				}
			}
		},
		stats={
			[1]="support_additional_trap_mine_%_chance_for_2_additional_trap_mine"
		}
	},
	[8]={
		lang={
			["Simplified Chinese"]={
				[1]={
					[1]={
						k="reminderstring",
						v="ReminderTextMultipleMines"
					},
					limit={
						[1]={
							[1]="#",
							[2]="#"
						}
					},
					text="该技能和召唤生物有 {0}% 的几率投掷 3 个额外的陷阱或地雷"
				}
			}
		},
		stats={
			[1]="support_additional_trap_mine_%_chance_for_3_additional_trap_mine"
		}
	},
	["base_cast_speed_+%"]=1,
	["cast_speed_+%_when_on_low_life"]=2,
	parent="minion_skill_stat_descriptions",
	["summon_raging_spirit_melee_splash_fire_damage_only"]=5,
	["support_additional_trap_mine_%_chance_for_1_additional_trap_mine"]=6,
	["support_additional_trap_mine_%_chance_for_2_additional_trap_mine"]=7,
	["support_additional_trap_mine_%_chance_for_3_additional_trap_mine"]=8,
	["support_multicast_cast_speed_+%_final"]=3,
	["support_spell_totem_cast_speed_+%_final"]=4
}