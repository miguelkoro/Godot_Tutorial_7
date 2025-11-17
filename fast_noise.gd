extends Node3D

const BALL = preload("uid://gj82ftc2iy1j")
@export var noise: FastNoiseLite
@export var sc: float = 10
@export var height_sc: float = 10

func _ready() -> void:
	for i in range(100):
		for j in range(100):
			var x: float = i#randf_range(-50,50)
			var z: float = j#randf_range(-50,50)
					
			var height = noise.get_noise_2d(x/sc,z/sc)
			var newNode := BALL.instantiate()	

			newNode.global_position = Vector3(x, height * height_sc, z)
				
				#if(rand_num<0):
					#newNode.set_surface_override_material(0,material)
			add_child(newNode)
