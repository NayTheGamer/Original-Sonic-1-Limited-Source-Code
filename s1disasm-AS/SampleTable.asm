
; ---------------------------------------------------------------
SampleTable:
	;			type			pointer		Hz
	dcSample	TYPE_DPCM, 		Kick, 		8000				; $81
	dcSample	TYPE_PCM,		Snare,		14000				; $82
	dcSample	TYPE_DPCM, 		Timpani, 	7250				; $83
	dcSample	TYPE_PCM,		SnareSC, 	13610							; $84
	dcSample	TYPE_PCM,		Go,			13482					; $85
	dcSample	TYPE_PCM,        Sega2,		0								; $86
	dcSample	TYPE_PCM,		Sega3,      0								; $87
	dcSample	TYPE_DPCM, 		Timpani, 	9750				; $88
	dcSample	TYPE_DPCM, 		Timpani, 	8750				; $89
	dcSample	TYPE_DPCM, 		Timpani, 	7150				; $8A
	dcSample	TYPE_DPCM, 		Timpani, 	7000				; $8B
	dcSample	TYPE_PCM,		SegaPCM,	0, FLAGS_SFX		; $8C	NOTE: sample rate is auto-detected from WAV file
	dc.w	-1	; end marker

; ---------------------------------------------------------------
	incdac	Kick, "sound/dac/kick.dpcm"
	incdac	Snare, "sound/dac/snare.pcm"
	incdac	Timpani, "sound/dac/timpani.dpcm"
	incdac	SnareSC, "sound/dac/SnareSC.pcm"
	incdac	Go, "sound/dac/Go.pcm"	
	incdac	SegaPCM, "sound/dac/sega.wav"
	incdac	Sega2, "sound/dac/sega2.wav"
	incdac	Sega3, "sound/dac/sega3.wav"	
	even
