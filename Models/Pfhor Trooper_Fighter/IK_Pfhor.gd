tool
extends Spatial


func _ready():
	$AnimationPlayer.playback_process_mode = AnimationPlayer.ANIMATION_PROCESS_PHYSICS 

func _process(delta):
	$AnimationPlayer.play("IK_Play")
