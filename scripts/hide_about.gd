extends Control

var bt_close_pressed = load("res://assets/bt-close-pressed.png")
var bt_close_unpressed = load("res://assets/bt-close.png")
onready var bt_close = get_node("bt-close")

func _ready():
	set_fixed_process(true)
	

func _fixed_process(delta):	
	if bt_close.is_pressed():
		bt_close.set_normal_texture(bt_close_unpressed)
		self.hide()
	
func _on_btclose_mouse_enter():
	bt_close.set_normal_texture(bt_close_pressed)


func _on_btclose_mouse_exit():
	bt_close.set_normal_texture(bt_close_unpressed)
