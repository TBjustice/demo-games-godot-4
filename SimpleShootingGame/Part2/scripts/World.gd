extends Node2D

func _on_player_attack(scene, pos):
	var instance = scene.instantiate()
	instance.position = pos
	add_child(instance)
	
