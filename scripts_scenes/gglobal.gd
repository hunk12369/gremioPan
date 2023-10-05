extends Node

var player_current_attack = false

var current_scene = "stage1" #stage1 cliff_side
var transition_scene = false

var player_exit_cliffside_posx = 0
var player_exit_cliffside_posy = 0
var player_start_posx = 0
var player_start_posy = 0



func finish_changescenes():
	if transition_scene == true:
		transition_scene = false
		if current_scene == "stage1":
			current_scene = "stage2"
			print("Cambiando a stage2")
		elif current_scene == "stage2":
			current_scene = "stage3"
			print("Cambiando a stage3")
		else:
			current_scene = "stage1"
			print("Cambiando a stage1")
		
