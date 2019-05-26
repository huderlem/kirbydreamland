SECTION "ROM Bank $002", ROMX[$4000], BANK[$2]

NormalGameSpritesGfx:
    INCBIN "gfx/normal_game_sprites.2bpp.lz"

NormalGameStatusBarGfx:
    INCBIN "gfx/normal_game_status_bar.2bpp.lz"

NormalGameTilesGfx_GreenGreens:
    INCBIN "gfx/stages/green_greens/tiles_normal_game.2bpp.lz"
NormalGameTilesGfx_CastleLololo:
    INCBIN "gfx/stages/castle_lololo/tiles_normal_game.2bpp.lz"
NormalGameTilesGfx_FloatIslands:
    INCBIN "gfx/stages/float_islands/tiles_normal_game.2bpp.lz"
NormalGameTilesGfx_BubblyClouds:
    INCBIN "gfx/stages/bubbly_clouds/tiles_normal_game.2bpp.lz"
NormalGameTilesGfx_MtDedede:
    INCBIN "gfx/stages/mt_dedede/tiles_normal_game.2bpp.lz"

FontGfx:
    INCBIN "gfx/font.2bpp.lz"

; free space padding
INCBIN "baserom.gb", $b906, $c000 - $b906
