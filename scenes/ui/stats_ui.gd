class_name StatsUI
extends HBoxContainer

@onready var health: HBoxContainer = $Health
@onready var health_label: Label = %HealthLabel

@onready var block: HBoxContainer = $Block
@onready var block_label: Label = %BlockLabel

func update_stats(stats: Stats) -> void:
	health_label.text = str(stats.health)
	block_label.text = str(stats.block)

	health.visible = stats.health > 0
	block.visible = stats.block > 0
