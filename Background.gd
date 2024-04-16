extends ParallaxBackground

func _generate_texture():
	var texture = Texture.new()
	return texture
	
func _ready():
	var tex = _generate_texture()
	emit_signal("texture_generated", tex) # Emit signal with generated texture

func _process(delta):
	scroll_offset.x += 100 * delta
