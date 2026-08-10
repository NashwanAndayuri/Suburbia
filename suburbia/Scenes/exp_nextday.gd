extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_finish_pressed() -> void:
	pass # Replace with function body.


func _on_stats_pressed() -> void:
	$CanvasLayer/Sprite2D.visible = false
	$CanvasLayer/stats.visible = false
	$CanvasLayer/back.visible = true
	#add dialogue for showing stats


func _on_back_pressed() -> void:
	$CanvasLayer/Sprite2D.visible = true
	$CanvasLayer/stats.visible = true
	$CanvasLayer/back.visible = false
