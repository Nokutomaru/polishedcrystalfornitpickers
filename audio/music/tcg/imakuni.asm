Music_Imakuni:
	channel_count 4
	channel 1, Music_Imakuni_Ch1
	channel 2, Music_Imakuni_Ch2
	channel 3, Music_Imakuni_Ch3
	channel 4, Music_Imakuni_Ch4

Music_Imakuni_Ch1:
	note_type 3, 10, 8
	tempo 253
	stereo_panning TRUE, TRUE
	vibrato 0, 3, 3
	duty_cycle 1
	volume_envelope 10, 8
.MainLoop:
.Loop1:
	sound_call Branch_faea5
	sound_loop 6, .Loop1
.Loop2:
	note_type 3, 10, 8
	rest 10
	note_type 1, 10, 8
	octave 3
	note C_, 7
	rest 8
	note_type 3, 10, 8
	rest 10
	note_type 1, 10, 8
	note C_, 7
	rest 16
	rest 7
	note C_, 7
	rest 8
	note_type 3, 10, 8
	rest 10
	note_type 1, 10, 8
	note C_, 7
	rest 16
	rest 7
	note_type 3, 10, 8
	rest 10
	vibrato 8, 3, 3
	note C_, 10
	vibrato 0, 3, 3
	sound_loop 2, .Loop2
.Loop3:
	sound_call Branch_faea5
	sound_loop 2, .Loop3
	note_type 1, 10, 8
	octave 2
	note F_, 15
	note F_, 7
	octave 3
	note F_, 8
	note D#, 7
	rest 16
	rest 7
	note G#, 7
	note A_, 8
	note F_, 7
	note D#, 8
	note_type 3, 10, 8
	rest 10
	note_type 1, 10, 8
	octave 2
	note D#, 15
	note D#, 7
	octave 3
	note D#, 8
	note C#, 7
	rest 16
	rest 7
	note F#, 7
	note G_, 8
	note D#, 7
	note C#, 8
	note_type 3, 10, 8
	rest 10
	note_type 1, 10, 8
.Loop4:
	octave 3
	note D_, 7
	rest 16
	rest 16
	rest 6
	sound_loop 4, .Loop4
	octave 3
	note D_, 7
	rest 16
	rest 7
	vibrato 5, 3, 3
	note D_, 15
	note D_, 7
	rest 8
	vibrato 0, 3, 3
	sound_jump .MainLoop

Branch_faea5:
	note_type 6, 10, 8
	rest 10
	note_type 1, 10, 8
	rest 15
	octave 3
	note C#, 7
	rest 16
	rest 7
	note C#, 7
	rest 8
	vibrato 8, 3, 3
	note_type 9, 10, 8
	rest 10
	note_type 3, 10, 8
	note C#, 10
	vibrato 0, 3, 3
	sound_ret

Music_Imakuni_Ch2:
	note_type 3, 10, 8
	stereo_panning TRUE, TRUE
	vibrato 20, 3, 3
	duty_cycle 2
.MainLoop:
.Loop1:
	rest 10
	sound_loop 16, .Loop1
	sound_call Branch_fadf9
	octave 4
	volume_envelope 11, 8
	note D_, 15
	octave 3
	note B_, 7
	rest 8
	note G_, 7
	rest 8
	note_type 9, 11, 8
	note F_, 10
	note_type 1, 11, 8
	note F_, 7
	rest 8
	note_type 9, 10, 8
	rest 10
	sound_call Branch_fadf9
	sound_call Branch_fae1d
	note_type 1, 11, 8
	octave 4
	note E_, 7
	rest 15
	note E_, 3
	note C_, 2
	note E_, 3
	note C_, 15
	octave 3
	note G#, 15
	note A_, 7
	rest 8
	note_type 3, 10, 8
	rest 15
	note_type 1, 10, 8
	rest 16
	rest 14
	octave 4
	volume_envelope 11, 8
	note E_, 7
	rest 8
	note F#, 7
	rest 8
	note G_, 15
	note G_, 7
	note F#, 3
	note G_, 2
	note F#, 3
	note E_, 7
	rest 8
	note D#, 7
	rest 8
	note E_, 15
	note C_, 7
	rest 8
	octave 3
	note G#, 7
	rest 8
	note_type 7, 11, 8
	note F#, 15
	note_type 9, 10, 8
	rest 10
	sound_call Branch_fadf9
	sound_call Branch_fae1d
	note_type 1, 11, 8
	octave 3
	note F_, 7
	rest 8
	note B_, 7
	octave 4
	note C_, 8
	octave 3
	note G#, 7
	note A_, 8
	note F_, 7
	rest 8
	note B_, 7
	octave 4
	note C_, 8
	octave 3
	note G#, 7
	note A_, 8
	note_type 3, 11, 8
	note F_, 10
	note_type 1, 11, 8
	note D#, 7
	rest 8
	note A_, 7
	note A#, 8
	note F#, 7
	note G_, 8
	note D#, 7
	rest 8
	note A_, 7
	note A#, 8
	note F#, 7
	note G_, 8
	note_type 3, 11, 8
	note D#, 10
	note_type 1, 10, 8
.Loop2:
	octave 3
	volume_envelope 11, 8
	note D_, 7
	octave 2
	note A_, 8
	note D_, 7
	note A_, 8
	note D_, 7
	note A_, 8
	sound_loop 4, .Loop2
	octave 3
	volume_envelope 11, 8
	note D_, 7
	octave 2
	note A_, 8
	note D_, 7
	note A_, 8
	vibrato 5, 3, 3
	note_type 3, 11, 8
	note D_, 10
	vibrato 20, 3, 3
	sound_jump .MainLoop

Branch_fadf9:
	note_type 1, 11, 8
	octave 4
	note C#, 7
	rest 15
	note C#, 3
	note D_, 2
	note C#, 3
	octave 3
	note A#, 15
	note B_, 15
	octave 4
	note D_, 7
	rest 8
	note_type 5, 10, 8
	rest 9
	note_type 1, 10, 8
	rest 16
	rest 14
	volume_envelope 11, 8
	note D_, 7
	rest 8
	note E_, 7
	rest 8
	note F_, 15
	note F_, 7
	note E_, 3
	note F_, 2
	note E_, 3
	note D_, 7
	rest 8
	note C#, 7
	rest 8
	sound_ret

Branch_fae1d:
	octave 4
	volume_envelope 11, 8
	note D_, 7
	rest 8
	octave 3
	note G_, 7
	rest 8
	octave 4
	note G_, 7
	rest 8
	note_type 9, 11, 8
	note F_, 10
	note_type 1, 11, 8
	note F_, 7
	rest 8
	note_type 9, 10, 8
	rest 10
	sound_ret

Music_Imakuni_Ch3:
	stereo_panning TRUE, TRUE
	volume_envelope 2, 5
	vibrato 0, 3, 3
.MainLoop:
	sound_call Branch_faf7d
	vibrato 8, 3, 3
	note_type 1, 2, 5
	octave 4
	note D_, 15
	note D_, 7
	vibrato 0, 3, 3
	octave 5
	note G_, 3
	octave 4
	note G_, 2
	octave 3
	note G_, 3
	sound_call Branch_faf7d
	vibrato 8, 3, 3
	octave 4
	volume_envelope 2, 5
	note D_, 10
	vibrato 0, 3, 3
.Loop1:
	sound_call Branch_faf7d
	vibrato 8, 3, 3
	octave 4
	volume_envelope 2, 5
	note D_, 10
	vibrato 0, 3, 3
	sound_loop 4, .Loop1
.Loop2:
	note_type 3, 2, 5
	octave 3
	note C_, 5
	rest 5
	note_type 1, 2, 5
	octave 4
	note E_, 7
	rest 8
	note_type 3, 2, 5
	octave 3
	note G#, 5
	note A_, 5
	note_type 1, 2, 5
	octave 4
	note D#, 7
	rest 16
	rest 7
	note D#, 7
	rest 8
	note_type 3, 2, 0
	rest 5
	octave 3
	volume_envelope 2, 5
	note C_, 5
	note_type 1, 2, 5
	octave 4
	note E_, 7
	rest 8
	note_type 3, 2, 5
	octave 3
	note G#, 5
	note A_, 5
	rest 5
	vibrato 8, 3, 3
	octave 4
	note D#, 10
	vibrato 0, 3, 3
	sound_loop 2, .Loop2
.Loop3:
	sound_call Branch_faf7d
	vibrato 8, 3, 3
	octave 4
	volume_envelope 2, 5
	note D_, 10
	vibrato 0, 3, 3
	sound_loop 2, .Loop3
	note_type 1, 2, 5
	octave 2
	note F_, 15
	note F_, 7
	octave 3
	note F_, 8
	note D#, 7
	rest 8
	note F_, 7
	rest 8
	note G#, 7
	note A_, 8
	note F_, 7
	note D#, 8
	vibrato 5, 3, 3
	note_type 3, 2, 5
	note F_, 10
	vibrato 0, 3, 3
	note_type 1, 2, 5
	octave 2
	note D#, 15
	note D#, 7
	octave 3
	note D#, 8
	note C#, 7
	rest 8
	note D#, 7
	rest 8
	note F#, 7
	note G_, 8
	note D#, 7
	note C#, 8
	vibrato 5, 3, 3
	note_type 3, 2, 5
	note D#, 10
	vibrato 0, 3, 3
	note_type 1, 2, 0
.Loop4:
	octave 4
	volume_envelope 2, 5
	note C_, 7
	rest 8
	octave 2
	note D_, 7
	rest 8
	note D_, 7
	rest 8
	sound_loop 4, .Loop4
	octave 4
	volume_envelope 2, 5
	note C_, 7
	rest 8
	octave 2
	note D_, 7
	rest 8
	vibrato 5, 3, 3
	octave 4
	note C_, 15
	note C_, 7
	vibrato 0, 3, 3
	octave 5
	note G_, 3
	octave 4
	note G_, 2
	octave 3
	note G_, 3
	note_type 8, 2, 0
	sound_jump .MainLoop

Branch_faf7d:
	note_type 3, 2, 5
	octave 2
	note G_, 5
	rest 5
	note_type 1, 2, 5
	octave 3
	note G_, 7
	rest 8
	note_type 3, 2, 5
	note C#, 5
	note D_, 5
	note_type 1, 2, 5
	octave 4
	note D_, 7
	rest 16
	rest 7
	note D_, 7
	rest 8
	note_type 3, 2, 0
	rest 5
	octave 2
	volume_envelope 2, 5
	note G_, 5
	note_type 1, 2, 5
	octave 3
	note G_, 7
	rest 8
	note_type 3, 2, 5
	note C#, 5
	note D_, 5
	rest 5
	sound_ret

Music_Imakuni_Ch4:
	toggle_noise 3
	drum_speed 1
.MainLoop:
.Loop1:
	drum_speed 1
	drum_note 4, 15
	drum_note 2, 7
	drum_note 4, 8
	drum_note 3, 15
	drum_note 4, 15
	drum_note 2, 7
	drum_note 2, 8
	octave 7
	drum_note 7, 15
	octave 8
	drum_note 2, 7
	drum_note 2, 8
	octave 7
	drum_note 7, 15
	octave 8
	drum_note 2, 15
	drum_note 4, 15
	drum_note 3, 15
	octave 7
	drum_note 7, 15
	octave 8
	drum_note 4, 7
	drum_note 2, 8
	drum_note 3, 15
	drum_note 3, 15
	drum_note 2, 7
	drum_note 3, 8
	sound_loop 10, .Loop1
.Loop2:
	octave 7
	drum_speed 11
	drum_note 12, 2
	octave 8
	drum_speed 1
	drum_note 3, 8
	drum_note 3, 15
	drum_note 3, 15
	drum_note 3, 7
	drum_note 3, 8
	drum_note 3, 7
	drum_note 3, 8
	octave 7
	drum_speed 3
	drum_note 12, 10
	sound_loop 2, .Loop2
	drum_speed 1
	drum_note 3, 15
	drum_note 2, 7
	drum_note 3, 8
	octave 7
	drum_note 7, 15
	octave 8
	drum_note 3, 15
	drum_note 2, 7
	drum_note 3, 8
	octave 7
	drum_note 7, 15
	octave 8
	drum_note 3, 15
	drum_note 2, 7
	drum_note 3, 8
	octave 7
	drum_note 7, 15
	octave 8
	drum_note 3, 15
	drum_note 2, 7
	drum_note 3, 8
	octave 7
	drum_note 7, 15
	octave 8
	drum_note 3, 15
	drum_note 2, 4
	drum_note 2, 4
	drum_note 3, 7
	drum_note 3, 15
	drum_note 3, 15
	sound_jump .MainLoop
