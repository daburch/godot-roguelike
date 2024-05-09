extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	$ActionsContainer/AttackButton.grab_focus()

func _on_attack_button_pressed():
	print("ATTACK PRESSED")
	var targets = get_tree().get_nodes_in_group("enemies")
	print(targets)

func _on_abilities_button_pressed():
	print("ABILITIES PRESSED")

func _on_items_button_pressed():
	print("ITEMS PRESSED")

func _on_end_turn_button_pressed():
	print("END TURN PRESSED")
