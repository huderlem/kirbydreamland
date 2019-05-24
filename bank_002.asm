SECTION "ROM Bank $002", ROMX[$4000], BANK[$2]

NormalGameSpritesGfx:
    INCBIN "gfx/normal_game_sprites.2bpp.lz"

NormalGameStatusBarGfx:
    INCBIN "gfx/normal_game_status_bar.2bpp.lz"

INCBIN "baserom.gb", $8952, $b7e9 - $8952

FontGfx:
    INCBIN "gfx/font.2bpp.lz"

; free space padding
INCBIN "baserom.gb", $b906, $c000 - $b906
