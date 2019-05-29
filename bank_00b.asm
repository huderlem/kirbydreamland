SECTION "ROM Bank $00b", ROMX[$4000], BANK[$b]

INCBIN "baserom.gb", $2c000, $2d8b9 - $2c000

Metasprite_KirbyFaceRight:
    db $F8, $F8, $02, $00
    db $F8, $00, $12, $01

INCBIN "baserom.gb", $2d8c1, $2e8a9 - $2d8c1

; free space padding
INCBIN "baserom.gb", $2e8a9, $30000 - $2e8a9
