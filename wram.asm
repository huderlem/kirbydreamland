SECTION "WRAM Bank 0", WRAM0

wRAMStart::
wOAMBuffer:: ; $c000
	ds $a0
wOAMBufferEnd:: ; $c0a0

	ds $60

wMetatiles:: ; $c100
; Holds the metatile ids that define the entire stage that Kirby plays in.
; The metatiles are arranged in rows, so if the stage were 20x10, the first 20
; metatiles ids in this list make up the top row of the stage. Metatile ids correspond
; to the tiles in wMetatileDefinitions.
	ds $500

wMetatileDefinitions:: ; $c600
; Each metatiles is defined by 4 bytes, which specify the tile numbers to use for
; its 2x2 orientation on screen.
; The order is top-left, top-right, bottom-left, bottom-right.
	ds $140 * 4

wTilemapCopyBuffer:: ; $cb00
; This buffer queues tilemap data to be copied at a later time.
; Rather than holding raw data, it prefixes individual individual data packets
; with their destination addresses.  The size of the data packets depends on the
; context of the data.  For example, metatiles are first queued here, and each data
; packet is the size of a metatile (4 bytes).
	ds $500

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

	ds 8

wRemainingLives:: ; $d089
	ds 1
wMaximumLives:: ; $d08a
	ds 1

wScore:: ; $d08b
; Stored in little-endian.
; The score displayed on-screen artificially adds an extra zero to the end.
	ds 3

	ds 7

wClearSpritesOffset:: ; $d095
	ds 1

wClearAllSprites:: ; $d096
; When this is set to $ff, all OAM sprites are cleared.
	ds 1

wDestGfxAddress:: ; $d097
	ds 2

wRAMFuncD099:: ; $d099
	ds 7
