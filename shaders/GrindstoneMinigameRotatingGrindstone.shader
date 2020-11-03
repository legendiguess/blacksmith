shader_type canvas_item;

void fragment()
{
	//vec4 enchant_texture = vec4(UV, 1.0, 1.0);
	
	COLOR = texture(TEXTURE, UV + vec2(-TIME * 2f, 0));
}