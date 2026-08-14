extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$CanvasLayer.visible = false


func _on_button_pressed() -> void:
	DialogueManager.show_example_dialogue_balloon(load("res://Dialogues/trade.dialogue"), "start")


func _on_button_2_pressed() -> void:
		$CanvasLayer.visible = false
