; \1 = num frames
; \2 = metasprite address
anim_duration: MACRO
	db \1
	dw \2
	ENDM

; \1 = metasprite address
anim_forever: MACRO
	anim_duration 0, \1
	ENDM

; \1 = destination
anim_jump: MACRO
.anim_jump\@
	db $E2
	db \1 - .anim_jump\@ - 1
	ENDM

; \1 = address
; \2 = value to compare
; \3 = destination address
anim_jump_if_equal: MACRO
	db $EA
	dw \1
	db \2
	dw \3
	ENDM

; \1 = destination address
; \2 = value to store
anim_store_value: MACRO
	db $F4
	dw \1
	db \2
	ENDM

; \1 = address
; \2 = and value
; \3 = or value
anim_f9: MACRO
	db $F9
	dw \1
	db \2
	db \3
	ENDM
