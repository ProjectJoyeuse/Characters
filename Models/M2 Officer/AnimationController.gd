extends Spatial
""" 
Standard model with procedural motions and blendings
"""

onready var Left = $Character/Foot_Height_L/Floor_target_L/Left
onready var Right = $Character/Foot_Height_R/Floor_target_R/Right
onready var Height_L = $Character/Foot_Height_L
onready var Height_R = $Character/Foot_Height_R
onready var Character = $"Character"
onready var Root = $"Character/Riggus Universalis"

export(float) var linear_speed : float = 1.0

func _physics_process(delta):
	$AnimationTree.set("parameters/LinearSpeed/blend_position", linear_speed)
	Height_L.translation.y = lerp(Height_L.translation.y, 
		Character.to_local(Left.get_collision_point()).y,
		delta*3)
	
	Height_R.translation.y = lerp(Height_R.translation.y,
		Character.to_local(Right.get_collision_point()).y, 
		delta*3)
	
	Character.translation.y = lerp(
			Character.translation.y,
			Root.to_local(Vector3(0,
				min(Left.get_collision_point().y , Right.get_collision_point().y),
				0)).y,delta*3)
	Character.translation.y = clamp(Character.translation.y,-0.5, 0.5)
	Height_L.translation.y = clamp(Height_L.translation.y,-0.5, 0.5)
	Height_R.translation.y = clamp(Height_R.translation.y,-0.5, 0.5)
