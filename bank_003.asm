SECTION "ROM Bank $003", ROMX[$4000], BANK[$3]

TitlescreenTilemap:
    INCBIN "gfx/titlescreen.tilemap"

INCBIN "baserom.gb", $c1c7, $fed1 - $c1c7

INCBIN "baserom.gb", $fed1, $10000 - $fed1
