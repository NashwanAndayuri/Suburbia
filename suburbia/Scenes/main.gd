# Hari, Bahan Material, Uang, Hiburan, Moral, dan Pertahanan.
#work order:
	# finish button logic
		#
	# proceed button logic
		#
	# balaancing uang moral hiburan dll


extends Node2D
@onready var stats_uang: Label = $CanvasLayer/Control/HBoxContainer/Uang/Label
@onready var stats_moral: Label = $CanvasLayer/Control/HBoxContainer/Moral/Label
@onready var stats_pertahanan: Label = $CanvasLayer/Control/HBoxContainer/Pertahanan/Label
@onready var stats_bahan: Label = $CanvasLayer/Control/HBoxContainer/BahanMaterial/Label


var hari: int = 0
var bahan: int = 0
var uang: int = 0
var moral: int = 0
var pertahanan: int = 0
var ekspedisiAMT: int
var berniagaAMT: int
var latihanAMT: int
var hiburanAMT: int

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	hari = 0
	bahan = 20
	uang = 30
	moral = 20
	pertahanan = 20
	
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
#can do unlimited turns if possible before ending turn
#every end turn will result in +15 money

#Action,New Cost (-),New Gain (+),Logic








func ekspedisi():#Ekspedisi,"6 Uang, 10 Moral",12 Material,Expensive; used only when you really need materials.
	uang -= 6
	moral -=10
	bahan += 12
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




func berniaga(): #Berniaga,"10 Material, 5 Moral",12 Uang,Trading raw goods for cash should be a slight loss in value.
	bahan -= 10
	moral -= 5
	uang += 12
	$Exp_trade/CanvasLayer.visible = true
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

func hiburan(): #Hiburan,"8 Uang, 4 Pertahanan",12 Moral,Reduced output to prevent Moral farming.
	uang -= 8
	pertahanan -= 4
	moral += 12
	$Exp_morale/CanvasLayer.visible = true
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


func latihan(): #Pelatihan,"8 Uang, 8 Moral",10 Pertahanan,Reduced output to force more training cycles.
	uang -= 8
	moral -= 8
	pertahanan += 10
	$Exp_train/CanvasLayer.visible = true
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

	
func weekEval():
	print("Your town might or might not blow up")
	
	
func nextDay():
	# display today's actions
	# display today's stats
		#
	# reset
	print("Next day")
	$Exp_nextDay/CanvasLayer.visible = true
	uang += 10
	moral -= 5


func proceed():
	pass

func _on_button_pressed(): #expedition
	if uang > 4 and moral > 8:
		ekspedisi()
	else:
		print("thou can't expedite")



func _on_button_2_pressed() -> void: #trade
	if bahan > 5 and moral > 5:
		berniaga()
	else:
		print("thou can't trade")



func _on_train_pressed() -> void: #train
	if uang > 8 and moral > 10:
		latihan()
	else:
		print("thou can't train")


func _on_entertain_pressed() -> void: #entertain
	if uang > 8 and pertahanan > 4:
		hiburan()
	else:
		print("thou can't entertain")


func _on_end_turn_pressed() -> void: #end turn
	if hari == 7:
		weekEval()
	else:
		hari -= 1
		nextDay()
	pass # if hari == 8 then go to week evaluation, else hari -= 1
