extends Node

onready var soundPlay = get_node("soundPlay")

var bt_pressed = load("res://assets/bt-pressed.png")
var bt_credits_unpressed = load("res://assets/bt-2.png")
var bt_start_unpressed = load("res://assets/bt-1.png")

var voice
var start = load("res://scenes/scenery_one.tscn")
var pressed = true


func _ready():
	voice = soundPlay.play("Impactist_-_Wires")
	soundPlay.set_volume(voice,0.4)
	get_node("about/about").hide()
	set_fixed_process(true)
		
	
func _fixed_process(delta):
	if get_node("controle/bt-credits").is_pressed():
		get_node("about/about").show()
	if get_node("controle/bt-start").is_pressed() and pressed:
		pressed = false
		#soundPlay.set_volume(voice,0.1)
		soundPlay.stop(voice)
		on_start()
		
		

#MENU
func _on_btcredits_mouse_enter():
	get_node("controle/bt-credits").set_normal_texture(bt_pressed)

func _on_btcredits_mouse_exit():
	get_node("controle/bt-credits").set_normal_texture(bt_credits_unpressed)

func _on_btstart_mouse_enter():
	get_node("controle/bt-start").set_normal_texture(bt_pressed)
	get_node("controle/bt-start/anim").stop()

func _on_btstart_mouse_exit():
	get_node("controle/bt-start").set_normal_texture(bt_start_unpressed)
	get_node("controle/bt-start/anim").play("blink")

func on_start():
	var scene = load("res://scenes/scenery_one.tscn")
	var node = scene.instance()
	self.add_child(node)