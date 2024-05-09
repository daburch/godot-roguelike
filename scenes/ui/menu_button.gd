@tool
extends TextureButton

@export var text: String = "BUTTON"
@export var arrow_margin: int = 25

# Called when the node enters the scene tree for the first time.
func _ready():
	setup_text()
	hide_arrow()
	
func _process(delta):
	if Engine.is_editor_hint():
		setup_text()
		show_arrow()
	
func setup_text():
	$ButtonText.text = "[center] %s [/center]" % [text]
	
func show_arrow():
	$Arrow.visible = true
	$Arrow.global_position.y = global_position.y + (size.y / 3.0)
	$Arrow.global_position.x = global_position.x + (size.x / 2.0) - arrow_margin

func hide_arrow():
	$Arrow.visible = false
	
func _on_focus_entered():
	show_arrow()

func _on_focus_exited():
	hide_arrow()

func _on_mouse_entered():
	grab_focus()
