extends AudioStreamPlayer

export var audio_streams: Array = []

func play(from_position: float = 0.0):
	if audio_streams.size() > 0:
		stream = audio_streams[int(rand_range(0, audio_streams.size()))]
	pitch_scale = 1 + rand_range(-0.1, 0.1)
	.play(from_position)
