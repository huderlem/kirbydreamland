SECTION "ROM Bank $003", ROMX[$4000], BANK[$3]

TitlescreenTilemap:
    INCBIN "gfx/titlescreen.tilemap.lz"

FontFullTilesGfx:
    INCBIN "gfx/font_full.2bpp.lz"

INCBIN "baserom.gb", $c2c8, $c665 - $c2c8

GameOverTextTilemap:
  INCBIN "gfx/gameover.map.lz"

INCBIN "baserom.gb", $c6b5, $c6e0 - $c6b5

Metatiles_GreenGreens:
    INCBIN "data/stages/green_greens/metatiles.bin.lz"
Metatiles_FloatIslands:
    INCBIN "data/stages/float_islands/metatiles.bin.lz"
Metatiles_CastleLololo:
    INCBIN "data/stages/castle_lololo/metatiles.bin.lz"
Metatiles_BubblyClouds:
    INCBIN "data/stages/bubbly_clouds/metatiles.bin.lz"

INCBIN "baserom.gb", $cfcf, $dcdd - $cfcf

StageIntroScreensTilesGfx:
    INCBIN "gfx/stages/tiles_intro_screen.2bpp.lz"

INCBIN "baserom.gb", $e195, $e273 - $e195

MetatileMap_FloatIslandsScreen0:
    INCBIN "data/stages/float_islands/screen_0.map.lz"

MetatileMap_FloatIslandsScreen7:
    INCBIN "data/stages/float_islands/screen_7.map.lz"
MetatileMap_FloatIslandsScreen4:
    INCBIN "data/stages/float_islands/screen_4.map.lz"
MetatileMap_FloatIslandsScreen2:
    INCBIN "data/stages/float_islands/screen_2.map.lz"
MetatileMap_FloatIslandsScreen1:
    INCBIN "data/stages/float_islands/screen_1.map.lz"
MetatileMap_FloatIslandsScreen5:
    INCBIN "data/stages/float_islands/screen_5.map.lz"
MetatileMap_FloatIslandsScreen3:
    INCBIN "data/stages/float_islands/screen_3.map.lz"

; Is this an unused screen map?
INCBIN "baserom.gb", $ea2c, $ea54 - $ea2c

MetatileMap_FloatIslandsScreen6:
    INCBIN "data/stages/float_islands/screen_6.map.lz"

MetatileMap_GreenGreensScreen1:
    INCBIN "data/stages/green_greens/screen_1.map.lz"
MetatileMap_GreenGreensScreen4:
    INCBIN "data/stages/green_greens/screen_4.map.lz"
MetatileMap_GreenGreensScreen2:
    INCBIN "data/stages/green_greens/screen_2.map.lz"
MetatileMap_GreenGreensScreen0:
    INCBIN "data/stages/green_greens/screen_0.map.lz"
MetatileMap_GreenGreensScreen3:
    INCBIN "data/stages/green_greens/screen_3.map.lz"

MetatileMap_CastleLololoScreen10:
    INCBIN "data/stages/castle_lololo/screen_10.map.lz"
MetatileMap_CastleLololoScreen3:
    INCBIN "data/stages/castle_lololo/screen_3.map.lz"
MetatileMap_CastleLololoScreen7:
    INCBIN "data/stages/castle_lololo/screen_7.map.lz"
MetatileMap_CastleLololoScreen8:
    INCBIN "data/stages/castle_lololo/screen_8.map.lz"
MetatileMap_CastleLololoScreen14:
    INCBIN "data/stages/castle_lololo/screen_14.map.lz"
MetatileMap_CastleLololoScreen12:
    INCBIN "data/stages/castle_lololo/screen_12.map.lz"
MetatileMap_CastleLololoScreen2:
    INCBIN "data/stages/castle_lololo/screen_2.map.lz"
MetatileMap_CastleLololoScreen4:
    INCBIN "data/stages/castle_lololo/screen_4.map.lz"
MetatileMap_CastleLololoScreen9:
    INCBIN "data/stages/castle_lololo/screen_9.map.lz"
MetatileMap_CastleLololoScreen6:
    INCBIN "data/stages/castle_lololo/screen_6.map.lz"
MetatileMap_CastleLololoScreen0:
    INCBIN "data/stages/castle_lololo/screen_0.map.lz"
MetatileMap_CastleLololoScreen11:
    INCBIN "data/stages/castle_lololo/screen_11.map.lz"
MetatileMap_CastleLololoScreen13:
    INCBIN "data/stages/castle_lololo/screen_13.map.lz"
MetatileMap_CastleLololoScreen1:
    INCBIN "data/stages/castle_lololo/screen_1.map.lz"
MetatileMap_CastleLololoScreen5:
    INCBIN "data/stages/castle_lololo/screen_5.map.lz"
MetatileMap_CastleLololoScreen15:
    INCBIN "data/stages/castle_lololo/screen_15.map.lz"

MetatileMap_BubblyCloudsScreen0:
    INCBIN "data/stages/bubbly_clouds/screen_0.map.lz"
MetatileMap_BubblyCloudsScreen2:
    INCBIN "data/stages/bubbly_clouds/screen_2.map.lz"
MetatileMap_BubblyCloudsScreen1:
    INCBIN "data/stages/bubbly_clouds/screen_1.map.lz"
MetatileMap_BubblyCloudsScreen4:
    INCBIN "data/stages/bubbly_clouds/screen_4.map.lz"

; free space padding
INCBIN "baserom.gb", $fed1, $10000 - $fed1
