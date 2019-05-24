SECTION "WRAM Bank 0", WRAM0

wRAMStart::
wOAMBuffer:: ; $c000
	ds $a0
wOAMBufferEnd:: ; $c0a0

	ds $560

wMetatileDefinitions:: ; $c600
; Each metatiles is defined by 4 bytes, which specify the tile numbers to use for
; its 2x2 orientation on screen.
; The order is top-left, top-right, bottom-left, bottom-right.
	ds $140 * 4

SECTION "WRAM Bank 1", WRAMX

	ds $2c

wLoadedROMBank:: ; $d02c
	ds 1

	ds 12

wExtraGameEnabled:: ; $d039
	ds 1

wExtraGameSelected:: ; $d03a
	ds 1

wCurStage:: ; $d03b
	ds 1

	ds 2

wCurStageScreen:: ; $d03e
	ds 1

	ds $12

wStageScrollTileX:: ; $d051
	ds 1
wStageScrollTileY:: ; $d052
	ds 1

	ds 9

wPlayerScreenXCoord:: ; $d05c
	ds 1
wPlayerScreenYCoord:: ; $d05d
	ds 1

	ds $22

wBGP:: ; $d080
	ds 1

	ds $14

wClearSpritesOffset:: ; $d095
	ds 1

wClearAllSprites:: ; $d096
; When this is set to $ff, all OAM sprites are cleared.
	ds 1

wDestGfxAddress:: ; $d097
	ds 2

wRAMFuncD099:: ; $d099
	ds 7
