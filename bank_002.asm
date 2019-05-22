SECTION "ROM Bank $002", ROMX[$4000], BANK[$2]

KirbySpriteGfx:
    INCBIN "gfx/kirby_sprites.2bpp.lz"

INCBIN "baserom.gb", $8855, $b7e9 - $8855

FontGfx:
    INCBIN "gfx/font.2bpp.lz"

; free space padding
INCBIN "baserom.gb", $b906, $c000 - $b906
