extends Node3D

@export var platform_scene: PackedScene
@export var spawn_interval: float = 2.0
var timer: float = 0.0


func _process(delta):
	timer += delta
	if timer >= spawn_interval:
		spawn_platform()
		timer = 0.0


func _ready() -> void:
	pass # Replace with function body.




func spawn_platform():
	var platform = platform_scene.instantiate()
	platform.velocity = Vector2(-200, 0)  # adjust to your needs
	add_child(platform)
