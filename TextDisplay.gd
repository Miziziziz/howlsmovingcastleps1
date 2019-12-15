extends Label

export var text_to_show = ""
export var char_name = ""
var close_after_time = 20.0
var showing = false
var ind = 0
var cur_time = 0.0
func _ready():
	end_display()

func _process(delta):
	if showing:
		if ind < text_to_show.length():
			text += text_to_show[ind]
			ind += 1
		else:
			cur_time += delta
			if cur_time > close_after_time:
				end_display()

func start_display():
	show()
	showing = true
	rect_size = Vector2(176, 14 + 17 * text_to_show.length() / 21)
	text = char_name + ":\n"
	ind = 0
	cur_time = 0.0

func end_display():
	hide()