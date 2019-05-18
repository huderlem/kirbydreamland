ld_long: MACRO
    IF STRLWR("\1") == "a" 
        ; ld a, [$ff40]
        db $FA
        dw \2
    ELSE 
        IF STRLWR("\2") == "a" 
            ; ld [$ff40], a
            db $EA
            dw \1
        ENDC
    ENDC
ENDM

INCLUDE "hardware.inc"
INCLUDE "macros.asm"
INCLUDE "charmap.asm"
INCLUDE "constants.asm"
INCLUDE "bank_000.asm"
INCLUDE "bank_001.asm"
INCLUDE "bank_002.asm"
INCLUDE "bank_003.asm"
INCLUDE "bank_004.asm"
INCLUDE "bank_005.asm"
INCLUDE "bank_006.asm"
INCLUDE "bank_007.asm"
INCLUDE "bank_008.asm"
INCLUDE "bank_009.asm"
INCLUDE "bank_00a.asm"
INCLUDE "bank_00b.asm"
INCLUDE "bank_00c.asm"
INCLUDE "bank_00d.asm"
INCLUDE "bank_00e.asm"
INCLUDE "bank_00f.asm"