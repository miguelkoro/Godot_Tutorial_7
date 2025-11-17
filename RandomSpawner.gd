extends Node3D

const BALL = preload("uid://gj82ftc2iy1j")

func _ready() -> void:
	for i in range(100):
		for j in range(100):
			var newNode := BALL.instantiate()			
			#newNode.global_position = Vector3(i,randf_range(-1,1),j)
			
			
			
			# Distribución uniforme en círculo
			var radius_max = 50.0
			var u = randf()  # [0,1)
			var r = sqrt(u) * radius_max
			var theta = randf_range(0.0, TAU)

			var x = r * cos(theta)
			var z = r * sin(theta)

			newNode.global_position = Vector3(x, 0, z)
			
			var rand_num = randf_range(-1,1)
			var material = StandardMaterial3D.new()
			material.albedo_color = Color(0,0,0)
			#if(rand_num<0):
				#newNode.set_surface_override_material(0,material)
			add_child(newNode)
