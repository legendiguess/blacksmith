extends AudioStreamPlayer2D

export var audio_streams: Array = []
onready var original_pitch = self.pitch_scale

func play(from_position: float = 0.0):
	if audio_streams.size() > 0:
		stream = audio_streams[int(rand_range(0, audio_streams.size()))]
	self.pitch_scale = original_pitch + rand_range(-0.1, 0.1)
	.play(from_position)
