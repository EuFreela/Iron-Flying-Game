extends Node2D

onready var sound = get_node("samplePlay")

var voice

#button up
var bt_up_pressed = load("res://assets/cima1.png")
var bt_up_unpressed = load("res://assets/cima0.png")
#button down
var bt_down_pressed = load("res://assets/baixo1.png")
var bt_down_unpressed = load("res://assets/baixo0.png")
#button left
var bt_left_pressed = load("res://assets/esquerda1.png")
var bt_left_unpressed = load("res://assets/esquerda0.png")
#button right
var bt_right_pressed = load("res://assets/direita1.png")
var bt_right_unpressed = load("res://assets/direita0.png")

func _ready():
	voice = sound.play("Impactist_-_Wires")
	sound.set_volume(voice,0.4)
	get_node("animBackground").set_speed(2.5)


#button up
func _on_btup_button_down():
	get_node("control/bt-up").set_normal_texture(bt_up_pressed)
func _on_btup_button_up():
	get_node("control/bt-up").set_normal_texture(bt_up_unpressed)
#button down
func _on_btdown_button_down():
	get_node("control/bt-down").set_normal_texture(bt_down_pressed)
func _on_btdown_button_up():
	get_node("control/bt-down").set_normal_texture(bt_down_unpressed)
#button left
func _on_btleft_button_down():
	get_node("control/bt-left").set_normal_texture(bt_left_pressed)
func _on_btleft_button_up():
	get_node("control/bt-left").set_normal_texture(bt_left_unpressed)
#button right
func _on_btright_button_down():
	get_node("control/bt-right").set_normal_texture(bt_right_pressed)
func _on_btright_button_up():
	get_node("control/bt-right").set_normal_texture(bt_right_unpressed)
