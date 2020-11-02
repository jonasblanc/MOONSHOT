extends KinematicBody2D

class_name Actor


export var garvity: = Vector2(1, 1);
export var max_speed: = Vector2(1000.0,1000.0)

var velocity: = Vector2.ZERO;

	
func _physics_process(delta):
	velocity += garvity * delta
	velocity.x = min(velocity.x, max_speed.x) 
	velocity.y = min(velocity.y, max_speed.y) 
	velocity = move_and_slide(velocity)
