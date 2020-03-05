extends Spatial

onready var HelperSkeleton = $"Riggus Universalis/Skeleton2"

func set_L_Hand_Target(node : Spatial):
	HelperSkeleton.L_Hand_Target = node
	HelperSkeleton.setup_IK()
	
func set_R_Hand_Target(node : Spatial):
	HelperSkeleton.R_Hand_Target = node
	HelperSkeleton.setup_IK()

func set_L_Foot_Target(node : Spatial):
	HelperSkeleton.L_Foot_Target = node
	HelperSkeleton.setup_IK()

func set_R_Foot_Target(node : Spatial):
	HelperSkeleton.R_Foot_Target = node
	HelperSkeleton.setup_IK()
