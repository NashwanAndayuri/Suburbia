# Hari, Bahan Material, Uang, Hiburan, Moral, dan Pertahanan.

extends Node2D

var hari: int
var bahan: int
var uang: int
var hiburan: int
var moral: int
var pertahanan: int



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	hari = 100
	bahan = 100
	uang = 100
	hiburan = 100
	moral = 100
	pertahanan = 100
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_pressed() -> void: #expedition
	uang -=50
	print(uang)


func _on_button_2_pressed() -> void: #trade
	bahan -= 50
	print(bahan)


func _on_train_pressed() -> void: #train
	hiburan -= 50
	print(hiburan)


func _on_entertain_pressed() -> void: #entertain
	pertahanan -= 50
	print(pertahanan)
