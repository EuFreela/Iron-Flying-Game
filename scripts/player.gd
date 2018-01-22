extends Node2D

var y = 100
var x = 0

func _ready():
	set_process_input(true)
	
#Aguardando evento
func _input(event):
	if event.is_action_pressed("move_up"):
		on_up()
	if event.is_action_pressed("move_down"):
		on_down()
	if event.is_action_pressed("move_left"):
		on_left()
	if event.is_action_pressed("move_right"):
		on_right()
	
#Botões na tela
func _on_btup_pressed():
	on_up()
func _on_btdown_pressed():
	on_down()
func _on_btleft_pressed():
	on_left()
func _on_btright_pressed():
	on_right()


#IMPULSOS
func on_up():
	apply_impulse(Vector2(0,0),Vector2(x,-y))
func on_down():
	apply_impulse(Vector2(0,0),Vector2(x,y))
func on_left():
	apply_impulse(Vector2(0,0),Vector2(-y,x))
func on_right():
	apply_impulse(Vector2(0,0),Vector2(y,x))


