SECTION "WRAM Bank 0", WRAM0

wc000::
	ds 1


SECTION "WRAM Bank 1", WRAMX

	ds $2c

wLoadedROMBank:: ; $d02c
	ds 1

	ds $53

wBGP:: ; $d080
	ds 1
