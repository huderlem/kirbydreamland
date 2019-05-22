SECTION "ROM Bank $002", ROMX[$4000], BANK[$2]

KirbySpriteGfx:
    INCBIN "gfx/kirby_sprites.2bpp.lz"

INCBIN "baserom.gb", $8855, $b906 - $8855

; free space padding
INCBIN "baserom.gb", $b906, $c000 - $b906
