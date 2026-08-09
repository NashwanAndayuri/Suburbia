# Hari, Bahan Material, Uang, Hiburan, Moral, dan Pertahanan.

extends Node2D
@onready var stats_uang: Label = $CanvasLayer/Control/HBoxContainer/Uang/Label
@onready var stats_moral: Label = $CanvasLayer/Control/HBoxContainer/Moral/Label
@onready var stats_pertahanan: Label = $CanvasLayer/Control/HBoxContainer/Pertahanan/Label
@onready var stats_bahan: Label = $CanvasLayer/Control/HBoxContainer/BahanMaterial/Label


var hari: int = 1
var bahan: int = 0
var uang: int = 0
var moral: int = 0
var pertahanan: int = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	hari = 100
	bahan = 100
	uang = 100
	moral = 100
	pertahanan = 100
	
	stats_uang.text = "%s" % uang
	stats_bahan.text = "%s" % bahan
	stats_moral.text = "%s" % moral
	stats_pertahanan.text = "%s" % pertahanan
	print("hari: %d" % hari)
	print("bahan: %d" % bahan)
	print("uang: %d" % uang)
	print("moral: %d" % moral)
	print("pertahanan: %d" % pertahanan)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

#ekspedisi: uang 4 moral 8 (-) |  material 10 (+)
#berniaga: material 5 moral 5 (-) uang 10 (+)
#hiburan: uang 8 pertahanan 4 (-) moral 15 (+)
#pelatihan: uang 8 moral 10 (-) pertahanan 14 (+)

func ekspedisi():
	if uang > 4 and moral > 8:
		uang -= 4
		moral -=8
		bahan += 10



func berniaga():
	if bahan > 5 and moral > 5:
		bahan -= 5
		moral -= 5
		uang += 10
		
func hiburan():
	if uang > 8 and pertahanan > 4:
		uang -= 8
		pertahanan -= 4
		moral += 15
		
func latihan():
	if uang > 8 and moral > 10:
		uang -= 8
		moral -= 10
		pertahanan += 14

func _on_button_pressed(): #expedition
	ekspedisi()
	$Exp_Cutscene/CanvasLayer.visible = true
	print("hasil setelah ekspedisi:")
	print("hari: %d" % hari)
	print("bahan: %d" % bahan)
	print("uang: %d" % uang)
	print("moral: %d" % moral)
	print("pertahanan: %d" % pertahanan)
	stats_uang.text = "%s" % uang
	stats_bahan.text = "%s" % bahan
	stats_moral.text = "%s" % moral
	stats_pertahanan.text = "%s" % pertahanan




func _on_button_2_pressed() -> void: #trade
	berniaga()
	print("hasil setelah berniaga:")
	print("hari: %d" % hari)
	print("bahan: %d" % bahan)
	print("uang: %d" % uang)
	print("moral: %d" % moral)
	print("pertahanan: %d" % pertahanan)
	stats_uang.text = "%s" % uang
	stats_bahan.text = "%s" % bahan
	stats_moral.text = "%s" % moral
	stats_pertahanan.text = "%s" % pertahanan


func _on_train_pressed() -> void: #train
	latihan()
	print("hasil setelah latihan:")
	print("hari: %d" % hari)
	print("bahan: %d" % bahan)
	print("uang: %d" % uang)
	print("moral: %d" % moral)
	print("pertahanan: %d" % pertahanan)
	stats_uang.text = "%s" % uang
	stats_bahan.text = "%s" % bahan
	stats_moral.text = "%s" % moral
	stats_pertahanan.text = "%s" % pertahanan



func _on_entertain_pressed() -> void: #entertain
	hiburan()
	print("hasil setelah hiburan:")
	print("hari: %d" % hari)
	print("bahan: %d" % bahan)
	print("uang: %d" % uang)
	print("moral: %d" % moral)
	print("pertahanan: %d" % pertahanan)
	stats_uang.text = "%s" % uang
	stats_bahan.text = "%s" % bahan
	stats_moral.text = "%s" % moral
	stats_pertahanan.text = "%s" % pertahanan
