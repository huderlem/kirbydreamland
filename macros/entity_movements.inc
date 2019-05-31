; \1 = x velocity
; \2 = y velocity
move_forever: MACRO
	db $00
	db \1
	db \2
	ENDM

; \1 = duration in frames
; \2 = x velocity
; \3 = y velocity
move_duration: MACRO
	db \1
	db \2
	db \3
	ENDM

; \1 = destination address
move_goto: MACRO
	db $E1
	dw \1
	ENDM
