# Hari, Bahan Material, Uang, Hiburan, Moral, dan Pertahanan.

extends Node2D

var hari: int
var bahan: int
var uang: int
var moral: int
var pertahanan: int




# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	hari = 100
	bahan = 100
	uang = 100
	moral = 100
	pertahanan = 100
	
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

func _on_button_pressed() -> void: #expedition
	ekspedisi()
	print("hasil setelah ekspedisi:")
	print("hari: %d" % hari)
	print("bahan: %d" % bahan)
	print("uang: %d" % uang)
	print("moral: %d" % moral)
	print("pertahanan: %d" % pertahanan)



func _on_button_2_pressed() -> void: #trade
	berniaga()
	print("hasil setelah berniaga:")
	print("hari: %d" % hari)
	print("bahan: %d" % bahan)
	print("uang: %d" % uang)
	print("moral: %d" % moral)
	print("pertahanan: %d" % pertahanan)


func _on_train_pressed() -> void: #train
	latihan()
	print("hasil setelah latihan:")
	print("hari: %d" % hari)
	print("bahan: %d" % bahan)
	print("uang: %d" % uang)
	print("moral: %d" % moral)
	print("pertahanan: %d" % pertahanan)



func _on_entertain_pressed() -> void: #entertain
	hiburan()
	print("hasil setelah hiburan:")
	print("hari: %d" % hari)
	print("bahan: %d" % bahan)
	print("uang: %d" % uang)
	print("moral: %d" % moral)
	print("pertahanan: %d" % pertahanan)
