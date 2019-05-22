SECTION "WRAM Bank 0", WRAM0

wRAMStart::
wOAMBuffer:: ; $c000
	ds $a0
wOAMBufferEnd:: ; $c0a0


SECTION "WRAM Bank 1", WRAMX

	ds $2c

wLoadedROMBank:: ; $d02c
	ds 1

	ds $53

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
