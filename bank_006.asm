SECTION "ROM Bank $006", ROMX[$4000], BANK[$6]

ExecuteTitlescreen:
    ld a, $ff
    ld [wClearAllSprites], a
    call ClearSprites
    call StartTimer
    xor a
    ld [wClearSpritesOffset], a
    ld [$d053], a
    ld [$d081], a
    ld [wBGP], a
    ld a, $00
    ld [$d055], a
    ld hl, NormalGameSpritesGfx
    ld de, _VRAM
    ld c, Bank(NormalGameSpritesGfx)
    call Decompress
    ld hl, TitlescreenGfx1
    ld de, _VRAM + $800
    ld c, Bank(TitlescreenGfx1)
    call Decompress
    ld hl, TitlescreenGfx2
    ld de, _VRAM + $1000
    ld c, Bank(TitlescreenGfx2)
    call Decompress
    ld hl, FontGfx
    ld de, _VRAM + $e00
    ld c, Bank(FontGfx)
    call Decompress
    ld hl, TitlescreenTilemap
    ld de, _SCRN0
    ld c, Bank(TitlescreenTilemap)
    call Decompress
    ld a, $05
    call PlaySong
    ld a, $01
    call Call_000_21fb
    call StopTimer
    xor a
    ld_long $ff90, a
    ld a, $04
    ld_long $ff8f, a
    call TryDrawExtraGameText
    ld a, $01
    call Call_000_1dc3
    call Call_000_0670
    ld a, $08
    ld [$d050], a
.checkInput:
    ld a, $01
    call Call_000_1dc3
    ld_long a, $ff8b
    cp PADF_DOWN | PADF_SELECT | PADF_B
    jp z, ExecuteConfigurationModeScreen
    cp PADF_UP | PADF_SELECT | PADF_A
    jr nz, .noExtraGame
    ld a, 1
    ld [wExtraGameSelected], a
    call TryDrawExtraGameText
.noExtraGame:
    ld_long a, $ff8b
    and PADF_START
    jr z, .checkInput
    ld a, $1b
    call PlaySE
    ret

TryDrawExtraGameText:
    ld a, [wExtraGameSelected]
    and a
    ret z
    ld bc, _SCRN0 + $145
    ld de, ExtraGameText
    ld hl, wTilemapCopyBuffer
    ld a, 10
.loop:
    push af
    ld a, b
    ld [hl+], a
    ld a, c
    ld [hl+], a
    ld a, [de]
    ld [hl+], a
    inc de
    inc bc
    pop af
    dec a
    jr nz, .loop
    xor a
    ld [$cb1e], a
    ld_long a, $ff91
    set 2, a
    ld_long $ff91, a
    ret

ExtraGameText:
    db "EXTRA GAME"


Call_006_40d4:
    ld a, $01
    ld [wExtraGameEnabled], a
    ld a, $06
    ld [wLoadedROMBank], a
    ld [MBC1RomBank], a
    jp Jump_006_486c


Call_006_40e4:
    ld a, $ff
    ld [wClearAllSprites], a
    call ClearSprites
    xor a
    ld_long $ff90, a
    ld [$d3f1], a
    ld hl, $d3df
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld [$d3be], a
    ld a, [wCurStage]
    ld b, a
    add a
    add a
    add a
    sub b
    ld c, a
    ld b, $00
    ld hl, Unk388e
    add hl, bc
    push hl
    ld bc, $0005
    add hl, bc
    ld a, [hl+]
    cp $01
    jr z, jr_006_411a

    ld a, $c8
    jr jr_006_411c

jr_006_411a:
    ld a, $cc

jr_006_411c:
    ld_long $ff90, a
    push hl
    xor a
    ld_long $ff8c, a
    ld_long $ff8d, a
    call Call_000_0648
    ld a, $ff
    call PlaySE
    ld a, $ff
    call PlaySong
    pop hl
    ld_long a, $ff95
    bit 7, a
    jr nz, .jr_006_4142
    call InitWindow
    call Call_006_42e8
.jr_006_4142:
    ld a, $ff
    ld [wClearAllSprites], a
    call Call_000_231e
    call Call_000_0648
    call Call_000_1c0a
    call StartTimer
    call Call_006_4285
    ld d, $00
    ld a, [wCurStage]
    ld c, a
    add a
    add c
    ld b, $00
    ld c, a
    ld hl, Unk20A2
    add hl, bc
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld e, a
    ld h, d
    ld l, e
    ld de, wMetatileDefinitions
    call Decompress
    ld a, $32
    ld_long $ff8f, a
    ld a, $15
    ld [$d07e], a
    ld a, $16
    ld [$d065], a
    xor a
    ld hl, $d082
    ld [hl+], a
    ld [hl], a
    ld_long $ff8d, a
    ld_long $ff8e, a
    ld_long $ff92, a
    ld_long $ff93, a
    ld [$d064], a
    ld [$d053], a
    ld [$d055], a
    ld [$d054], a
    ld [$d056], a
    ld [$d078], a
    ld [$d079], a
    ld a, $20
    ld [$d07c], a
    ld a, $0e
    ld [$d07d], a
    ld a, $01
    ld [$d076], a
    ld a, $33
    ld [$d077], a
    ld a, [$d087]
    ld [$d086], a
    xor a
    ld [wClearSpritesOffset], a
    call ClearSprites
    pop hl
    ld a, [hl+]
    ld [wCurStageScreen], a
    push hl
    call StopTimer
    call Call_000_19c9
    call Call_000_19f9
    pop hl
    ld a, [hl+]
    ld [wStageScrollTileX], a
    ld a, [hl+]
    ld [wStageScrollTileY], a
    ld a, [hl+]
    ld [wPlayerScreenXCoord], a
    ld a, [hl+]
    ld [wPlayerScreenYCoord], a
    ld a, [wCurStage]
    ld e, a
    ld d, $00
    ld hl, $4270
    add hl, de
    ld a, [hl]
    ld [$d03c], a
    ld bc, $0000
    ld a, $04
    cp e
    jr nz, jr_006_421e

    ld hl, $ff95

Jump_006_4203:
    bit 7, [hl]
    jr z, jr_006_421e

    ld a, $33
    ld [wStageScrollTileX], a
    ld a, $01
    ld [wStageScrollTileY], a
    ld a, $48
    ld [wPlayerScreenXCoord], a
    ld a, $70
    ld [wPlayerScreenYCoord], a
    ld bc, $0032

jr_006_421e:
    ld hl, wMetatiles
    add hl, bc
    call Call_000_1964
    xor a
    ld [wClearSpritesOffset], a
    call Call_000_21fb
    call Call_000_139b
    call Call_000_2329
    call ClearSprites
    ld a, [wCurStage]
    cp $04
    jr nz, jr_006_424a

    ld hl, $ff94
    res 2, [hl]
    ld_long a, $ff95
    bit 7, a
    jr nz, jr_006_424a

    set 2, [hl]

jr_006_424a:
    ld hl, $ff95
    res 7, [hl]
    ld_long a, $ff95
    bit 7, a
    jr z, jr_006_4263

    ld a, [wCurStage]
    cp $04
    jr z, jr_006_4263

    ld a, [$d03c]
    call PlaySong

jr_006_4263:
    call Call_000_1570
    call StopTimer
    call Call_000_0670
    call Call_000_8dc
    ret


    dec c
    db $10
    ld c, $0f
    ld [de], a

Call_006_4275:
    ld a, [wExtraGameEnabled]
    push af
    xor a
    ld [wExtraGameEnabled], a
    call Call_006_4285
    pop af
    ld [wExtraGameEnabled], a
    ret


Call_006_4285:
    ld a, [wExtraGameEnabled]
    and a
    jr nz, .loadExtraGameSprites
    ld hl, NormalGameSpritesGfx
    ld de, _VRAM + $0
    ld c, Bank(NormalGameSpritesGfx)
    call Decompress
    ld hl, NormalGameStatusBarGfx
    ld de, _VRAM + $1670
    ld c, Bank(NormalGameStatusBarGfx)
    call Decompress
    jr .continue
.loadExtraGameSprites:
    ld hl, ExtraGameSpritesGfx
    ld de, _VRAM + $0
    ld c, Bank(ExtraGameSpritesGfx)
    call Decompress
    ld hl, $50f3
    ld de, $9670
    ld c, $0a
    call Decompress
.continue:
    ld d, $00
    ld a, [wCurStage]
    ld c, a
    add a
    add a
    add c
    ld c, a
    ld b, $00
    ld hl, $2070
    ld a, [wExtraGameEnabled]
    and a
    jr z, .jr_006_42d1
    ld hl, $2089
.jr_006_42d1:
    add hl, bc
    ld a, [hl+]
    ld [$d06b], a
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld h, b
    ld l, c
    ld a, [$d06b]
    ld c, a
    call Decompress
    ret


Call_006_42e8:
    push hl
    xor a
    ld [wClearSpritesOffset], a
    ld [$d053], a
    ld [$d055], a
    inc a
    ld [wStageScrollTileX], a
    ld [wStageScrollTileY], a
    ld hl, $ff94
    set 1, [hl]
    call ClearSprites
    call StartTimer
    ld hl, $4000
    ld de, $8000
    ld c, $02
    call Decompress
    ld hl, $4855
    ld de, $9670
    ld c, $02
    call Decompress
    ld a, [wCurStage]
    ld c, a
    add a
    add a
    add c
    ld c, a
    ld b, $00
    ld hl, $2070
    add hl, bc
    ld a, [hl+]
    ld [$d06b], a
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld e, a
    ld a, [hl]
    ld d, a
    ld h, b
    ld l, c
    ld a, [$d06b]
    ld c, a
    call Decompress
    ld a, [wCurStage]
    cp $04
    jr z, jr_006_435b

    ld hl, FontGfx
    ld de, _VRAM + $e00
    ld c, Bank(FontGfx)
    call Decompress
    ld hl, $5cdd
    ld de, $8800
    ld c, $03
    call Decompress

jr_006_435b:
    ld a, [wCurStage]
    ld c, a
    add a
    add c
    ld c, a
    ld b, $00
    ld hl, $50bb
    add hl, bc
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld d, a
    ld a, [hl]
    ld e, a
    ld h, d
    ld l, e
    ld de, $9800
    call Decompress
    xor a
    call Call_000_21fb
    call StopTimer
    call Call_000_0670
    pop hl
    ld a, [hl]
    ld [$d03c], a
    call PlaySong
    ld a, [wCurStage]
    add a
    ld e, a
    ld d, $00
    ld hl, $43b5
    add hl, de
    ld a, [hl+]
    ld e, a
    ld d, [hl]

jr_006_4396:
    ld hl, $ff8c
    set 6, [hl]

jr_006_439b:
    db $76
    bit 6, [hl]
    jr nz, jr_006_439b

    call Call_006_5098
    ld_long a, $ff8b
    bit 3, a
    jr nz, jr_006_43af

    dec de
    ld a, d
    or e
    jr nz, jr_006_4396

jr_006_43af:
    ld hl, $ff94
    res 1, [hl]
    ret


    ld b, b
    ld bc, $0157
    sub b
    ld bc, $0186
    ret z

    ld [bc], a

Jump_006_43bf:
    ld a, [$d041]
    ld [$d042], a
    call Call_006_444f
    ld hl, $ff90
    res 4, [hl]
    ld a, [wCurStage]
    add a
    ld c, a
    ld b, $00
    ld hl, $50ca
    add hl, bc
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld a, [wCurStageScreen]
    add a
    ld l, a
    ld h, $00
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, $01
    ld [$d3dd], a

jr_006_43ec:
    ld_long a, $ff8c
    set 6, a
    ld_long $ff8c, a

jr_006_43f4:
    ld_long a, $ff8c
    bit 6, a
    jr nz, jr_006_43f4

    push hl

Jump_006_43fc:
    call Call_000_319d
    call Call_006_5098
    pop hl
    ld a, [$d3dd]
    dec a
    ld [$d3dd], a
    jr nz, jr_006_4440

    ld a, [hl+]
    ld [$d3dd], a
    ld a, [hl+]
    ld [$d3de], a
    bit 7, a
    jp nz, Jump_000_3d2d

    bit 0, a
    call nz, Call_006_44f4
    bit 1, a
    call nz, Call_006_44f4
    bit 2, a
    call nz, Call_006_4485
    bit 4, a
    call nz, Call_006_4473
    bit 5, a
    jp nz, Jump_006_486c

    bit 3, a
    jr z, jr_006_4440

    ld hl, wCurStage
    inc [hl]
    call Call_006_40e4
    jp $3d32


jr_006_4440:
    ld a, [$d3de]
    bit 0, a
    call nz, Call_006_4506
    bit 1, a
    call nz, Call_006_4528
    jr jr_006_43ec

Call_006_444f:
    ld a, [wCurStage]
    add a
    ld c, a
    ld b, $00
    ld hl, $526a
    add hl, bc
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld a, [wCurStageScreen]
    add a
    ld l, a
    ld h, $00
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $157a
    ld bc, $0000
    call Call_000_21e6
    ret


Call_006_4473:
    push af
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    push hl
    ld hl, $410c
    ld bc, $0000
    call Call_000_21e6
    pop hl
    pop af
    ret


Call_006_4485:
    push af
    ld a, [hl+]
    ld [wCurStageScreen], a
    push hl
    call Call_000_19c9
    call Call_000_0648
    ld a, $ff
    call PlaySE
    pop hl
    xor a
    ld [$d053], a
    ld [$d055], a
    ld a, [hl+]
    ld [wStageScrollTileX], a
    ld a, [hl+]
    ld [wStageScrollTileY], a
    push hl
    call Call_000_19f9
    ld a, [wStageScrollTileY]
    dec a
    ld b, a
    ld a, [$d03f]
    ld e, a
    call Call_000_1c52
    ld a, [wStageScrollTileX]
    dec a
    ld l, a
    ld h, $00
    add hl, bc
    ld b, h
    ld c, l
    ld hl, wMetatiles
    add hl, bc
    call Call_000_1964
    ld a, $ff
    ld [wClearAllSprites], a
    call Call_006_444f
    xor a
    call Call_000_21fb
    call ClearSprites
    call Call_000_2e9c
    ld a, [wCurStage]
    cp $04
    jr nz, jr_006_44eb

    ld a, [wCurStageScreen]
    and a
    jr nz, jr_006_44eb

    ld a, $12
    call PlaySong

jr_006_44eb:
    call StopTimer
    call Call_000_0670
    pop hl
    pop af
    ret


Call_006_44f4:
    push af
    ld a, [hl+]
    ld [$d074], a
    ld a, [hl+]
    ld [$d075], a
    xor a
    ld [$d076], a
    ld [$d077], a
    pop af
    ret


Call_006_4506:
    push af
    push hl
    ld a, [$d075]
    ld e, a
    ld a, [$d077]
    add e
    ld [$d077], a
    ld a, [$d074]
    ld e, a
    ld a, [$d076]
    adc e
    ld [$d063], a
    xor a
    ld [$d076], a
    call Call_000_1062
    pop hl
    pop af
    ret


Call_006_4528:
    push hl
    ld a, [$d075]
    ld e, a
    ld a, [$d077]
    add e
    ld [$d077], a
    ld a, [$d074]
    ld e, a
    ld a, [$d076]
    adc e
    ld b, a
    ld [$d067], a
    xor a
    ld [$d076], a
    cp b
    jr z, jr_006_4591

    ld a, [$d055]
    ld c, a

jr_006_454b:
    ld a, c
    call Call_000_0643
    jr nc, jr_006_4557

    dec c
    dec b
    jr nz, jr_006_454b

    jr jr_006_4591

jr_006_4557:
    ld a, [$d055]
    sub $10
    ld [$d058], a
    ld a, [$d053]
    and $f0
    ld [$d057], a
    ld a, [wStageScrollTileY]
    dec a
    jr z, jr_006_456e

    dec a

jr_006_456e:
    ld e, a
    ld a, [$d03f]
    ld b, a
    call Call_000_1c52
    ld hl, wMetatiles
    add hl, bc
    ld b, $00
    ld a, [wStageScrollTileX]
    dec a
    ld c, a
    add hl, bc
    call Call_000_12b4
    ld hl, wStageScrollTileY
    dec [hl]
    ld_long a, $ff8c
    set 5, a
    ld_long $ff8c, a

jr_006_4591:
    ld a, [$d067]
    ld b, a
    ld a, [$d055]
    sub b
    ld [$d055], a
    pop hl
    ret

Call_006_459e:
    ld a, $21
    call PlaySE
    xor a
    ld [$d067], a
    ld [$d068], a
    ld_long $ff8b, a
    ld_long a, $ff93
    set 2, a
    ld_long $ff93, a
jr_006_45b5:
    ld_long a, $ff8c
    bit 6, a
    jr nz, jr_006_45b5
    ld_long a, $ff94
    bit 0, a
    jr nz, .jr_006_462f
    ld_long a, $ff8e
    and $9c
    jr nz, .jr_006_45f6
    ld_long a, $ff92
    and $80
    jr nz, .jr_006_45f6
    ld_long a, $ff93
    and $38
    jr nz, .jr_006_45f6
    ld hl, $ff93
    set 0, [hl]
    ld hl, $d067
    ld a, [hl]
    add $01
    ld [hl+], a
    ld a, [hl]
    adc $00
    ld [hl-], a
    cp $04
    jr c, .jr_006_45f6
    ld a, [hl]
    cp $b0
    jr c, .jr_006_45f6
    ld hl, $ff91
    set 4, [hl]
.jr_006_45f6:
    xor a
    ld [wClearSpritesOffset], a
    call Call_000_2e9c
    call Call_000_139b
    call ClearSprites
    ld_long a, $ff8c
    set 6, a
    ld_long $ff8c, a
    ld_long a, $ff8b
    bit 3, a
    jr z, jr_006_45b5
    ld a, $18
    call PlaySE
    ld_long a, $ff93
    and $fa
    ld_long $ff93, a
    ld hl, $ff91
    res 4, [hl]
    ld hl, $ff94
    res 0, [hl]
    ld a, $1e
    call Call_000_1de0
    ret
.jr_006_462f:
    ld_long a, $ff91
    res 4, a
    ld_long $ff91, a
    jr .jr_006_45f6
    xor a
    ld [$d086], a
    ld a, $15
    call PlaySE
    ld a, $ff
    call PlaySong
    ld hl, $d3df
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld [$d3be], a
    ld [$d3f5], a
    ld a, [$d1a0]
    res 4, a
    res 5, a
    ld [$d1a0], a
    ld a, [wCurStage]
    cp $04
    jr nz, .jr_006_4678
    ld a, [wCurStageScreen]
    ld b, $00
    ld c, a
    ld hl, .Unk474d
    add hl, bc
    ld a, [hl]
    ld c, a
    ld hl, $d043
    add hl, bc
    xor a
    ld [hl], a
.jr_006_4678:
    xor a
    ld_long $ff8c, a
    ld_long $ff94, a
    ld_long $ff93, a
    ld_long a, $ff95
    and $81
    ld_long $ff95, a
    call Call_000_2329
    ld a, $01
    call Call_000_1dc3
    ld a, $3b
    call Call_000_1de0
    ld a, $07
    call PlaySong
    ld hl, $ff94
    set 5, [hl]
    call Call_000_2317
    xor a
    ld [$d3cc], a
    ld bc, $0000
    ld hl, $4154
    ld de, $4137
    call Call_000_21e6
    ld b, $a0
.jr_006_46b6:
    push bc
    ld a, [$d0d1]
    cp $dc
    jr nc, .jr_006_46c2
    cp $a0
    jr nc, .jr_006_46c7
.jr_006_46c2:
    ld a, $01
    ld [$d160], a
.jr_006_46c7:
    ld a, $01
    call Call_000_1dc3
    pop bc
    dec b
    jr nz, .jr_006_46b6
    ld hl, $ff94
    res 5, [hl]
    ld a, [wRemainingLives]
    dec a
    jr z, .noLivesRemaining
    ld [wRemainingLives], a
    ld a, [wCurStage]
    add a
    ld c, a
    ld b, $00
    ld hl, Unk3a43
    add hl, bc
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld a, [wCurStageScreen]
    ld h, a
    add a
    add a
    add h
    ld l, a
    ld h, $00
    add hl, bc
    ld a, [hl+]
    ld [wCurStageScreen], a
    push hl
    call Call_000_19c9
    call Call_000_0648
    call Call_000_19f9
    pop hl
    ld a, [hl+]
    ld [wStageScrollTileX], a
    ld a, [hl+]
    ld [wStageScrollTileY], a
    ld a, [hl+]
    ld [wPlayerScreenXCoord], a
    ld a, [hl+]
    ld [wPlayerScreenYCoord], a
    xor a
    ld_long $ff8d, a
    ld_long $ff8e, a
    ld_long $ff92, a
    call Call_000_139b
    ld a, [wCurStage]
    cp $04
    jr z, .jr_006_4731
    ld a, [$d03c]
    call PlaySong
.jr_006_4731:
    ld_long a, $ff91
    res 6, a
    ld_long $ff91, a
    call Call_000_3d92
    ld_long a, $ff8f
    set 4, a
    ld_long $ff8f, a
    ld a, [$d087]
    ld [$d086], a
    jp Jump_000_01e6
.Unk474d:
    db $00, $01, $02, $03, $04, $05, $01, $03, $02, $04
.noLivesRemaining:
    call Call_000_0648
    call InitWindow
    call StartTimer
    ld a, $0a
    call Call_000_21fb
    ld hl, $4665
    ld de, $9800
    ld c, $03
    call Decompress
    ld hl, $41c7
    ld de, $8e00
    ld c, $03
    call Decompress
    ld a, $03
    call PlaySong
    xor a
    ld [$d053], a
    ld [$d055], a
    call StopTimer
    call Call_000_0670
    xor a
    ld [wClearSpritesOffset], a
    call Call_000_2e9c
    ld bc, $0118
.jr_006_4797:
    ld hl, $ff8c
    set 6, [hl]
.jr_006_479c:
    bit 6, [hl]
    jr nz, .jr_006_479c
    ld_long a, $ff8b
    bit 3, a
    jr nz, .jr_006_47b0
    dec bc
    ld a, b
    and a
    jr nz, .jr_006_4797
    ld a, c
    and a
    jr nz, .jr_006_4797
.jr_006_47b0:
    ld hl, $ff95
    set 0, [hl]
    call Call_000_0648
    call InitWindow
    call StartTimer
    call Call_000_231e
    inc a
    ld [wStageScrollTileX], a
    ld [wStageScrollTileY], a
    ld a, $0b
    call Call_000_21fb
    ld a, $ff
    ld [wClearAllSprites], a
    call ClearSprites
    ld hl, FontGfx
    ld de, _VRAM + $e00
    ld c, Bank(FontGfx)
    call Decompress
    ld hl, $5cdd
    ld de, $8800
    ld c, $03
    call Decompress
    ld hl, $46b5
    ld de, $9800
    ld c, $03
    call Decompress
    xor a
    ld [$d06b], a
    ld [$d053], a
    ld [$d055], a

Jump_006_4800:
    ld a, $04
    call PlaySong
    call StopTimer
    call Call_000_0670
.jr_006_480b:
    ld hl, $ff8c
    set 6, [hl]
.jr_006_4810:
    bit 6, [hl]
    jr nz, .jr_006_4810
    call Call_006_5098
    ld a, [$d3d0]
    and a
    jr z, .jr_006_480b
    ld hl, $ff95
    res 0, [hl]
    ld a, [$d3cf]
    and a
    jp nz, .jump_006_485e
    ld a, [wMaximumLives]
    ld [wRemainingLives], a
    call Call_000_1570
    ld hl, $d048
    ld a, [hl-]
    and a
    jr z, .jr_006_483e
    xor a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
.jr_006_483e:
    ld hl, wScore + 2
    ld a, [hl]
    srl a
    ld [hl-], a
    ld a, [hl]
    rr a
    ld [hl-], a
    ld a, [hl]
    rr a
    ld [hl], a
    ld hl, $ff91
    set 5, [hl]
    call Call_006_40e4
    ld a, [$d03c]
    call PlaySong
    jp Jump_000_01e6
.jump_006_485e:
    ld a, $3c
    call Call_000_1dc3
    call Call_000_0648
    call StartTimer
    jp InitGame


Jump_006_486c:
    ld a, $ff
    ld [wClearAllSprites], a
    call ClearSprites
    call Call_000_0648
    ld a, $ff
    call PlaySE
    ld a, $ff
    call PlaySong
    xor a
    ld_long $ff90, a
    inc a
    ld [wStageScrollTileX], a
    ld [wStageScrollTileY], a
    ld a, $03
    call Call_000_21fb
    call Call_006_5098
    call InitWindow
    ld a, $04
    ld_long $ff8f, a
    xor a
    ld [$d053], a
    ld [$d055], a
    call StartTimer
    ld hl, $41c7
    ld de, $8e00
    ld c, $03
    call Decompress
    ld hl, $4fcf
    ld de, $8000
    ld c, $03
    call Decompress
    ld hl, $5894
    ld de, $9000
    ld c, $03
    call Decompress
    ld hl, $42c8
    ld de, $9800
    ld c, $03
    call Decompress
    call StopTimer
    call Call_000_0670
    ld de, $00c8
    ld hl, $ff8c

jr_006_48de:
    set 6, [hl]

jr_006_48e0:
    bit 6, [hl]
    jr nz, jr_006_48e0

    call Call_006_5098
    dec de
    ld a, d
    or e
    jr nz, jr_006_48de

    xor a
    ld_long $ff90, a
    ld a, $ff
    ld [wClearAllSprites], a
    call ClearSprites
    call Call_000_0648
    call StartTimer
    ld hl, $4000
    ld de, $8000
    ld c, $02
    call Decompress
    ld hl, $4855
    ld de, $9670
    ld c, $02
    call Decompress
    ld hl, $6c49
    ld de, $8800
    ld c, $02
    call Decompress
    ld hl, $777c
    ld de, wMetatileDefinitions
    ld c, $06
    call Decompress
    ld hl, $71e2
    ld de, wMetatiles
    ld c, $06
    call Decompress
    ld a, $04
    call Call_000_21fb
    call Call_006_5098
    ld a, $12
    ld [$d03f], a
    ld a, $08
    ld [$d040], a
    ld hl, $c104
    call Call_000_1964
    call StopTimer
    call Call_000_0670
    ld de, $01b0
    ld hl, $ff8c

jr_006_4959:
    set 6, [hl]

jr_006_495b:
    bit 6, [hl]
    jr nz, jr_006_495b

    call Call_006_5098
    dec de
    ld a, d
    or e
    jr nz, jr_006_4959

    ld a, $ff
    ld [wClearAllSprites], a
    call ClearSprites
    call Call_000_0648
    ld a, $05
    call Call_000_21fb
    call Call_006_5098
    call StartTimer
    ld hl, $41c7
    ld de, $8e00
    ld c, $03
    call Decompress
    ld hl, $4fcf
    ld de, $8000
    ld c, $03
    call Decompress
    ld hl, $5894
    ld de, $9000
    ld c, $03
    call Decompress
    ld hl, $42c8
    ld de, $9800
    ld c, $03
    call Decompress
    call StopTimer
    call Call_000_0670
    ld de, $0200
    ld hl, $ff8c

jr_006_49b5:
    set 6, [hl]

jr_006_49b7:
    bit 6, [hl]
    jr nz, jr_006_49b7

    call Call_006_5098
    dec de
    ld a, d
    or e
    jr nz, jr_006_49b5

    call Call_000_0648
    call StartTimer
    ld a, $06
    call Call_000_21fb
    call Call_006_5098
    xor a
    ld_long $ff8f, a
    ld [$d053], a
    ld a, $08
    ld [$d055], a
    ld hl, $9800
    ld de, $52d6
    ld b, $13

jr_006_49e5:
    ld c, $14

jr_006_49e7:
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_006_49e7

    dec b
    push bc
    ld bc, $000c
    add hl, bc
    pop bc
    jr nz, jr_006_49e5

    push de
    call StopTimer
    call Call_000_0670
    pop de
    ld hl, $9be0
    ld_long a, $ff91
    res 2, a
    ld_long $ff91, a

jr_006_4a09:
    ld_long a, $ff8c
    set 6, a
    ld_long $ff8c, a

jr_006_4a11:
    ld_long a, $ff8c
    bit 6, a
    jr nz, jr_006_4a11

    call Call_006_5098
    ld a, [$d055]
    dec a
    ld [$d055], a
    and $07
    jr nz, jr_006_4a09

    ld a, $57
    cp d
    jr nz, jr_006_4a33

    ld a, $86
    cp e
    jr nz, jr_006_4a33

    jp Jump_006_4a65


jr_006_4a33:
    ld bc, wTilemapCopyBuffer

jr_006_4a36:
    ld a, $97
    cp h
    jr nz, jr_006_4a3e

    ld hl, $9be0

jr_006_4a3e:
    ld a, h
    ld [bc], a
    inc bc
    ld a, l
    ld [bc], a
    inc bc
    ld a, [de]
    ld [bc], a
    inc bc
    inc de
    inc hl
    ld a, $cb
    cp b
    jr nz, jr_006_4a36

    ld a, $3c
    cp c
    jr nz, jr_006_4a36

    xor a
    ld [bc], a
    ld bc, $0034
    call Call_000_1ce0
    ld_long a, $ff91
    set 2, a
    ld_long $ff91, a
    jr jr_006_4a09

Jump_006_4a65:
    ld a, $ff
    ld [wClearAllSprites], a
    call ClearSprites
    call Call_000_0648
    call StartTimer
    ld a, $07
    call Call_000_21fb

Call_006_4a78:
    call Call_006_5098
    ld a, $08
    ld [$d053], a
    xor a
    ld [$d055], a
    ld hl, $9c00
    ld c, $80

jr_006_4a89:
    ld a, $ff
    ld [hl+], a
    dec c
    jr nz, jr_006_4a89

    ld hl, $9800
    ld de, $5786
    ld b, $0e

jr_006_4a97:
    ld c, $15

jr_006_4a99:
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_006_4a99

    push bc
    ld bc, $000b
    add hl, bc
    pop bc
    dec b
    jr nz, jr_006_4a97

    ld a, d
    ld [$d059], a
    ld a, e
    ld [$d05a], a
    ld hl, $5e86
    ld de, $9c00
    ld c, $04

jr_006_4ab8:
    ld b, $14

jr_006_4aba:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_006_4aba

    push hl
    ld hl, $000c
    add hl, de
    ld d, h
    ld e, l
    pop hl
    dec c
    jr nz, jr_006_4ab8

    xor a
    ldh [rIF], a
    ld a, $6f
    ldh [rLYC], a
    ld hl, $ffff
    set 1, [hl]
    ld a, $90
    ld [$d05b], a
    call StopTimer
    ld a, $40
    ld [wBGP], a
    ld a, $40
    ldh [rOBP0], a
    ld a, $05
    call Call_000_1dc3
    ld a, $90
    ld [wBGP], a
    ld a, $80
    ldh [rOBP0], a
    ld a, $05
    call Call_000_1dc3
    ld a, $e1
    ld [wBGP], a

Call_006_4b00:
    ld a, $d0
    ldh [rOBP0], a
    ld a, $05
    call Call_000_1dc3
    ld a, $0b
    call PlaySong
    ld a, $98
    ld [$d06b], a
    ld a, $1f
    ld [$d06c], a
    ld a, $9c
    ld [$d084], a
    ld a, $80
    ld [$d085], a
    ld hl, $5ed6
    ld a, h
    ld [$d082], a
    ld a, l
    ld [$d083], a
    xor a
    ld [$d054], a
    ld [$d060], a
    ld [$d061], a
    ld [$d054], a
    ld [$d065], a
    ld [$d067], a
    ld_long a, $ff91
    res 2, a
    ld_long $ff91, a

jr_006_4b48:
    ld_long a, $ff8c
    set 6, a
    ld_long $ff8c, a

jr_006_4b50:
    ld_long a, $ff8c
    bit 6, a
    jr nz, jr_006_4b50

    call Call_006_5098
    ld a, [$d067]
    and a
    jp nz, Jump_006_4c5c

    ld a, [$d065]
    and a
    call nz, Call_006_4b85
    ld a, [$d054]
    inc a
    ld [$d054], a
    cp $04
    jr c, jr_006_4b48

    xor a
    ld [$d054], a
    ld a, [$d053]
    dec a
    ld [$d053], a
    and $07
    call z, Call_006_4bf6
    jr jr_006_4b48

Call_006_4b85:
    ld a, [$d060]
    ld b, a
    ld a, $01
    sub b
    ld [$d060], a
    ld hl, wTilemapCopyBuffer
    ld b, $0a

jr_006_4b94:
    ld a, [$d084]
    ld [hl+], a
    ld d, a
    ld a, [$d085]
    ld [hl+], a
    ld e, a
    inc de
    ld a, d
    ld [$d084], a
    ld a, e
    ld [$d085], a
    ld a, [$d082]
    ld d, a
    ld a, [$d083]
    ld e, a
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, d
    ld [$d082], a
    ld a, e
    ld [$d083], a
    dec b
    jr nz, jr_006_4b94

    ld a, [$d061]
    inc a
    cp $08
    jr nz, jr_006_4bc9

    xor a
    ld [$d065], a

jr_006_4bc9:
    ld [$d061], a
    ld_long a, $ff91
    set 2, a
    ld_long $ff91, a
    ld a, [$d060]
    and a
    ret nz

    ld a, [$d084]
    ld h, a
    ld a, [$d085]
    ld l, a
    ld bc, $000c
    add hl, bc
    ld a, $a0
    cp h
    jr nz, jr_006_4bed

    ld hl, $9c00

jr_006_4bed:
    ld a, h
    ld [$d084], a
    ld a, l
    ld [$d085], a
    ret


Call_006_4bf6:
    ld bc, wTilemapCopyBuffer
    ld a, [$d06b]
    ld h, a
    ld a, [$d06c]
    ld l, a
    ld a, [$d059]
    ld d, a
    ld a, [$d05a]
    ld e, a

jr_006_4c09:
    ld a, $ff
    cp l
    jr nz, jr_006_4c1e

    ld a, $97
    cp h
    jr nz, jr_006_4c1e

    ld hl, $981f
    ld a, h
    ld [$d06b], a
    ld a, l
    ld [$d06c], a

jr_006_4c1e:
    ld a, h
    ld [bc], a
    inc bc
    ld a, l
    ld [bc], a
    inc bc
    ld a, [de]
    ld [bc], a
    inc bc
    inc de
    push bc
    ld bc, $0020
    add hl, bc
    pop bc
    ld a, $cb
    cp b
    jr nz, jr_006_4c09

    ld a, $2a
    cp c
    jr nz, jr_006_4c09

    xor a
    ld [bc], a
    ld_long a, $ff91
    set 2, a
    ld_long $ff91, a
    ld a, [$d06b]
    ld h, a
    ld a, [$d06c]
    ld l, a
    dec hl
    ld a, h
    ld [$d06b], a
    ld a, l
    ld [$d06c], a
    ld a, d
    ld [$d059], a
    ld a, e
    ld [$d05a], a
    ret


Jump_006_4c5c:
    ld a, $90
    ld [wBGP], a
    ld a, $d0
    ldh [rOBP0], a
    ld a, $05
    call Call_000_1dc3
    ld a, $40
    ld [wBGP], a
    ld a, $80
    ldh [rOBP0], a
    ld a, $05
    call Call_000_1dc3
    ld a, $00
    ld [wBGP], a
    ld a, $40
    ldh [rOBP0], a
    ld a, $05
    call Call_000_1dc3
    call StartTimer
    xor a
    ld [wBGP], a
    ld a, $08
    call Call_000_21fb
    call Call_006_5098
    ld hl, $ffff
    res 1, [hl]
    xor a
    ld [$d053], a
    ld [$d055], a
    ld hl, $437a
    ld de, $9800
    ld c, $03
    call Decompress
    call StopTimer
    call Call_000_0670
    ld de, $0144
    ld hl, $ff8c

jr_006_4cb8:
    set 6, [hl]

jr_006_4cba:
    bit 6, [hl]
    jr nz, jr_006_4cba

    call Call_006_5098
    dec de
    ld a, d
    or e
    jr nz, jr_006_4cb8

    call Call_000_0648
    call StartTimer
    ld a, $09
    call Call_000_21fb
    call Call_006_5098
    ld hl, $441d
    ld de, $9800
    ld c, $03
    call Decompress
    call StopTimer
    call Call_000_0670
    ld de, $0190
    call Call_006_5086
    ld de, $01a4
    ld hl, $ff8c

jr_006_4cf1:
    set 6, [hl]

jr_006_4cf3:
    bit 6, [hl]
    jr nz, jr_006_4cf3

    call Call_006_5098
    ld_long a, $ff8b
    bit 0, a
    jr nz, jr_006_4d06

    dec de
    ld a, d
    or e
    jr nz, jr_006_4cf1

jr_006_4d06:
    call Call_000_0648
    call StartTimer
    call Call_000_231e
    ld a, [wExtraGameEnabled]
    and a
    ld a, $01
    ld [wExtraGameEnabled], a
    jp z, Jump_006_5055

    ld a, $01
    call PlaySong
    xor a
    ld [wCurStage], a
    call Call_006_4275
    ld a, $0c
    call Call_000_21fb
    call Call_006_5098
    ld hl, $4000
    ld de, $9000
    ld c, $0d
    call Decompress
    ld hl, $45c0
    ld de, $9800
    ld c, $0d
    call Decompress
    call StopTimer
    call Call_000_0670
    ld de, $01a0
    call Call_006_5086
    call Call_000_0648
    call StartTimer
    ld a, $0d
    call Call_000_21fb
    call Call_006_5098
    ld hl, $46fb
    ld de, $9000
    ld c, $0d
    call Decompress
    ld hl, $4cb4
    ld de, $9800
    ld c, $0d
    call Decompress
    call StopTimer
    call Call_000_0670
    ld de, $01a0
    call Call_006_5086
    call Call_000_0648
    call StartTimer
    ld a, $0e
    call Call_000_21fb
    call Call_006_5098
    ld hl, $4dc0
    ld de, $9000
    ld c, $0d
    call Decompress
    ld hl, $535c
    ld de, $9800
    ld c, $0d
    call Decompress
    call StopTimer
    call Call_000_0670
    ld de, $00ec
    call Call_006_5086
    call Call_000_0648
    call StartTimer
    ld a, $01
    ld [wCurStage], a
    call Call_006_4275
    ld a, $0f
    call Call_000_21fb
    call Call_006_5098
    ld hl, $543e
    ld de, $9000
    ld c, $0d
    call Decompress
    ld hl, $5987
    ld de, $9800
    ld c, $0d
    call Decompress
    call StopTimer
    call Call_000_0670
    ld de, $01a0
    call Call_006_5086
    call Call_000_0648
    call StartTimer
    ld a, $10
    call Call_000_21fb
    call Call_006_5098
    ld hl, $5a89
    ld de, $9000
    ld c, $0d
    call Decompress
    ld hl, $5fd2
    ld de, $9800
    ld c, $0d
    call Decompress
    call StopTimer
    call Call_000_0670
    ld de, $01a0
    call Call_006_5086
    call Call_000_0648
    call StartTimer
    ld a, $02
    ld [wCurStage], a
    call Call_006_4275
    ld a, $11
    call Call_000_21fb
    call Call_006_5098
    ld hl, $6063
    ld de, $9000
    ld c, $0d
    call Decompress
    ld hl, $6553
    ld de, $9800
    ld c, $0d
    call Decompress
    call StopTimer
    call Call_000_0670
    ld de, $01a0
    call Call_006_5086
    call Call_000_0648
    call StartTimer
    ld a, $12
    call Call_000_21fb
    call Call_006_5098
    ld hl, $6658
    ld de, $9000
    ld c, $0d
    call Decompress
    ld hl, $6b80
    ld de, $9800
    ld c, $0d
    call Decompress
    call StopTimer
    call Call_000_0670
    ld de, $01a0
    call Call_006_5086
    call Call_000_0648
    call StartTimer
    ld a, $03
    ld [wCurStage], a
    call Call_006_4275
    ld a, $13
    call Call_000_21fb
    call Call_006_5098
    ld hl, $6c7c
    ld de, $9000
    ld c, $0d
    call Decompress
    ld hl, $717d
    ld de, $9800
    ld c, $0d
    call Decompress
    call StopTimer
    call Call_000_0670
    ld de, $01a0
    call Call_006_5086
    call Call_000_0648
    call StartTimer
    ld a, $14
    call Call_000_21fb
    call Call_006_5098
    ld hl, $729b
    ld de, $9000
    ld c, $0d
    call Decompress
    ld hl, $779c
    ld de, $9800
    ld c, $0d
    call Decompress
    call StopTimer
    call Call_000_0670
    ld de, $01a0
    call Call_006_5086
    call Call_000_0648
    call StartTimer
    xor a
    ld [wCurStage], a
    call Call_006_4285
    ld a, $15
    call Call_000_21fb
    call Call_006_5098
    ld hl, $4000
    ld de, $9000
    ld c, $0e
    call Decompress
    ld hl, $78cc
    ld de, $9800
    ld c, $0d
    call Decompress
    call StopTimer
    call Call_000_0670
    ld de, $01a0
    call Call_006_5086
    call Call_000_0648
    call StartTimer
    ld a, $01
    ld [wCurStage], a
    call Call_006_4285
    ld a, $16
    call Call_000_21fb
    call Call_006_5098
    ld hl, $4582
    ld de, $9000
    ld c, $0e
    call Decompress
    ld hl, $4ac6
    ld de, $9800
    ld c, $0e
    call Decompress
    call StopTimer
    call Call_000_0670
    ld de, $01a0
    call Call_006_5086
    call Call_000_0648
    call StartTimer
    ld a, $02
    ld [wCurStage], a
    call Call_006_4285
    ld a, $17
    call Call_000_21fb
    call Call_006_5098
    ld hl, $4bf3
    ld de, $9000
    ld c, $0e
    call Decompress
    ld hl, $511e
    ld de, $9800
    ld c, $0e
    call Decompress
    call StopTimer
    call Call_000_0670
    ld de, $01a0
    call Call_006_5086
    call Call_000_0648
    call StartTimer
    ld a, $03
    ld [wCurStage], a
    call Call_006_4285
    ld a, $18
    call Call_000_21fb
    call Call_006_5098
    ld hl, $5206
    ld de, $9000
    ld c, $0e
    call Decompress
    ld hl, $5707
    ld de, $9800
    ld c, $0e
    call Decompress
    call StopTimer
    call Call_000_0670
    ld de, $01a0
    call Call_006_5086
    call Call_000_0648
    call StartTimer
    ld hl, $6c49
    ld de, $8800
    ld c, $02
    call Decompress
    ld a, $19
    call Call_000_21fb
    call Call_006_5098
    ld hl, $5820
    ld de, $9000
    ld c, $0e
    call Decompress
    ld hl, $5be1
    ld de, $9800
    ld c, $0e
    call Decompress
    call StopTimer
    call Call_000_0670
    ld de, $01a0
    call Call_006_5086
    ld de, $012c
    ld hl, $ff8c

jr_006_5009:
    set 6, [hl]

jr_006_500b:
    bit 6, [hl]
    jr nz, jr_006_500b

    call Call_006_5098
    ld_long a, $ff8b
    bit 0, a
    jr nz, jr_006_501e

    dec de
    ld a, d
    or e
    jr nz, jr_006_5009

jr_006_501e:
    call Call_000_0648
    call StartTimer
    ld a, $ff
    call PlaySong
    ld a, $1a
    call Call_000_21fb
    call Call_006_5098
    ld hl, $5cbf
    ld de, $8000
    ld c, $0e
    call Decompress
    ld hl, $6cce
    ld de, $9800
    ld c, $0e
    call Decompress
    call StopTimer
    call Call_000_0670

jr_006_504d:
    ld de, $0000
    call Call_006_5086
    jr jr_006_504d

Jump_006_5055:
    ld a, $ff
    call PlaySong
    ld a, $1b
    call Call_000_21fb
    call Call_006_5098
    ld hl, $6dd9
    ld de, $8000
    ld c, $0e
    call Decompress
    ld hl, $7e4a
    ld de, $9800
    ld c, $0e
    call Decompress
    call StopTimer
    call Call_000_0670

jr_006_507e:
    ld de, $0000
    call Call_006_5086
    jr jr_006_507e

Call_006_5086:
    ld hl, $ff8c

jr_006_5089:
    set 6, [hl]

jr_006_508b:
    bit 6, [hl]
    jr nz, jr_006_508b

    call Call_006_5098
    dec de
    ld a, d
    or e
    jr nz, jr_006_5089

    ret


Call_006_5098:
    push af
    push bc
    push de
    push hl
    ld a, [$d06b]
    push af
    ld a, [$d06c]
    push af
    xor a
    ld [wClearSpritesOffset], a
    call Call_000_2e9c
    call ClearSprites
    pop af
    ld [$d06c], a
    pop af
    ld [$d06b], a
    pop hl
    pop de
    pop bc
    pop af
    ret


    ld b, $78
    dec [hl]
    ld b, $78
    rst $18
    ld b, $79
    ld e, l
    ld b, $79
    ld sp, hl
    ld b, $7a
    xor a
    call nc, $de50
    ld d, b
    cp $50
    ld c, $51
    ld [hl+], a
    ld d, c
    jr c, @+$53

    ld [hl], $51
    ld [hl], $51
    ld [hl], $51
    ld l, l
    ld d, c
    ld [hl], $51
    ld [hl], $51
    ld [hl], $51
    ld [hl], $51
    ld [hl], $51
    ld [hl], $51
    ld [hl], $51
    ld [hl], l
    ld d, c
    xor d
    ld d, c
    ld [hl], $51
    ld [hl], $51
    ld [hl], $51
    ld [hl], $51
    ld [hl], $51
    or a
    ld d, c
    cp [hl]
    ld d, c
    ld [hl], $51

Jump_006_5100:
    ld [hl], $51
    ld [hl], $51
    ld [hl], $51
    ld [hl], $51
    add $51
    ld [hl], $51
    cp $51
    ld [hl], $51
    ld [hl], $51
    ld [hl], $51
    ld [hl], $51
    ld b, $52
    ld [hl], $51
    ld [hl], $51
    ld [hl], $51
    ld [hl], $51
    dec hl
    ld d, d
    inc sp
    ld d, d
    ld [hl], $51
    ld [hl], $51
    ld [hl], $51
    ld [hl], $51
    ld l, b
    ld d, d
    ld e, e
    ld d, d
    ld e, e
    ld d, d
    ld e, e
    ld d, d
    ld e, e
    ld d, d
    ld bc, $3c80
    nop
    ld a, [bc]
    ld bc, $8000
    ld a, [bc]
    ld bc, $0001
    ld a, [bc]
    ld bc, $0002
    dec bc
    ld bc, $0003
    ld d, [hl]
    ld bc, $0004
    dec bc
    ld bc, $0003
    ld a, [bc]
    ld bc, $0002
    ld a, [bc]
    ld bc, $0001
    ld a, [bc]
    ld bc, $8000
    ld a, b
    nop
    ld bc, $0204
    ld bc, $0101
    db $10
    dec bc
    ld b, b
    rst $38
    nop
    ld bc, $f080
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ld bc, $3c08
    nop
    ld a, [bc]
    ld bc, $8000
    ld a, [bc]
    ld bc, $0001
    ld a, [bc]
    ld bc, $0002
    dec bc
    ld bc, $0003
    ld d, [hl]
    ld bc, $0004
    dec bc
    ld bc, $0003
    ld a, [bc]
    ld bc, $0002
    ld a, [bc]
    ld bc, $0001
    ld a, [bc]
    ld bc, $8000
    ld e, $00
    ld bc, $0804
    ld bc, $0101
    db $10
    inc d
    ld b, b
    ldh a, [rP1]
    ld bc, $0180
    inc b
    add hl, bc
    ld bc, $0109
    db $10
    db $76
    ld b, d
    ld e, $00
    ld bc, $0180
    inc b
    rrca
    ld bc, $0101
    add b
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ld bc, $a008
    nop
    ld a, [bc]
    ld [bc], a
    ld bc, $0a00
    ld [bc], a
    ld [bc], a
    nop
    ld a, [bc]
    ld [bc], a
    inc bc
    nop
    ld [hl+], a
    ld [bc], a
    inc b
    nop
    ld a, [bc]
    ld [bc], a
    inc bc
    nop
    ld a, [bc]
    ld [bc], a
    ld [bc], a
    nop
    ld a, [bc]
    ld [bc], a
    ld bc, $8c00
    nop
    ld bc, $0604
    ld bc, $0101
    db $10
    cpl
    ld b, b
    ret z

    nop
    ld bc, $0704
    ld bc, $0101
    db $10
    ld d, [hl]
    ld b, b
    rst $38
    nop
    ld bc, $f080
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ld bc, $6408
    nop
    ld a, [bc]
    ld [bc], a
    nop
    add b
    ld a, [bc]
    ld [bc], a
    ld bc, $0a00
    ld [bc], a
    ld [bc], a
    nop
    dec bc
    ld [bc], a
    inc bc
    nop
    inc l
    ld [bc], a
    inc b
    nop
    ld a, b
    nop
    ld bc, $0504
    ld bc, $0101
    db $10
    cp a
    ld b, b
    rst $38
    nop
    ld bc, $f080
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ld bc, $f008
    ld bc, $c001
    cp h
    ld bc, $c001
    ld a, [bc]
    ld bc, $8001
    ld a, [bc]
    ld bc, $4001
    ld a, [bc]
    ld bc, $0001
    ld a, [bc]
    ld bc, $c000
    ld a, [bc]
    ld bc, $8000
    ld a, [bc]
    ld bc, $4000
    ld a, [bc]
    ld bc, $0000
    ld [hl-], a
    nop
    ld bc, $0180
    inc b
    nop
    inc sp
    ld bc, $1001
    dec e
    ld b, c
    ldh a, [rP1]
    ld bc, $0180
    jr nz, jr_006_52df

    ld d, d
    ld a, [hl]
    ld d, d
    sbc [hl]
    ld d, d
    xor [hl]
    ld d, d
    jp nz, $4b52

    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    or a
    ld b, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], e
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    or a
    ld b, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld b, b
    nop
    nop
    or a
    ld b, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    or h
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    or a
    ld b, c
    ld b, $42
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, d
    ld b, b
    ld c, d
    ld b, b
    ld c, d
    ld b, b
    ld c, d
    ld b, b
    ld c, d
    ld b, b
    scf
    dec [hl]
    jr c, jr_006_5312

    jr c, @+$36

    ld a, a
    ld a, a
    ld a, a

jr_006_52df:
    ld a, a
    dec [hl]
    inc [hl]
    dec [hl]
    jr c, jr_006_531d

    jr c, jr_006_531f

    jr c, jr_006_5321

    jr c, jr_006_5323

    jr c, jr_006_5325

    jr c, jr_006_5327

    jr c, jr_006_5325

    ld a, a
    ld a, a
    dec [hl]
    jr c, @+$3a

    jr c, @+$3a

    jr c, @+$3a

    jr c, @+$3a

    jr c, jr_006_5336

    jr c, jr_006_5338

    jr c, jr_006_533a

    jr c, jr_006_533c

    jr c, jr_006_533a

    dec [hl]
    jr c, @+$3a

    jr c, @+$3a

    jr c, @+$3a

    jr c, @+$34

    ld [hl], $36
    inc sp

jr_006_5312:
    inc sp
    jr c, @+$3a

    jr c, jr_006_534f

    jr c, jr_006_5351

    jr c, jr_006_5353

    jr c, jr_006_5355

jr_006_531d:
    jr c, jr_006_5357

jr_006_531f:
    jr c, jr_006_5353

jr_006_5321:
    ld [hl], $7f

jr_006_5323:
    ld a, a
    scf

jr_006_5325:
    dec [hl]
    ld a, a

jr_006_5327:
    ld [hl], $33
    jr c, jr_006_5363

    jr c, jr_006_5365

    jr c, jr_006_5367

    jr c, jr_006_5369

    jr c, jr_006_536b

    jr c, jr_006_5369

    scf

jr_006_5336:
    scf
    dec [hl]

jr_006_5338:
    jr c, @+$3a

jr_006_533a:
    ld a, a
    ld a, a

jr_006_533c:
    ld a, a
    ld [hl], $36
    inc sp
    jr c, jr_006_537a

    jr c, @+$3a

    jr c, @+$3a

    jr c, @+$3a

    jr c, @+$3a

    jr c, jr_006_5384

    jr c, jr_006_5386

    ld a, a

jr_006_534f:
    ld a, a
    ld a, a

jr_006_5351:
    ld a, a
    ld a, a

jr_006_5353:
    ld a, a
    inc sp

jr_006_5355:
    jr c, jr_006_538f

jr_006_5357:
    jr c, jr_006_5391

    jr c, jr_006_5393

    jr c, jr_006_5395

    jr c, jr_006_5397

    jr c, @+$3a

    jr c, jr_006_53e2

jr_006_5363:
    ld a, a
    ld a, a

jr_006_5365:
    ld a, a
    ld a, a

jr_006_5367:
    scf
    dec [hl]

jr_006_5369:
    jr c, jr_006_53a3

jr_006_536b:
    jr c, @+$3a

    jr c, jr_006_53a7

    jr c, jr_006_53a9

    jr c, @+$3a

    jr c, @+$3a

    jr c, @+$81

    ld a, a
    ld a, a
    ld a, a

jr_006_537a:
    dec [hl]
    jr c, jr_006_53b5

    jr c, jr_006_53b7

    jr c, jr_006_53b3

    ld [hl], $36
    inc sp

jr_006_5384:
    jr c, @+$3a

jr_006_5386:
    jr c, @+$3a

    jr c, @+$3a

    ld a, a
    ld a, a
    ld a, a
    ld a, a
    inc sp

jr_006_538f:
    jr c, jr_006_53c9

jr_006_5391:
    jr c, jr_006_53c5

jr_006_5393:
    ld [hl], $7f

jr_006_5395:
    ld a, a
    scf

jr_006_5397:
    dec [hl]
    jr c, jr_006_53d2

    jr c, jr_006_53d4

    ld [hl-], a
    ld [hl], $7f
    ld a, a
    ld a, a
    ld a, a
    ld a, a

jr_006_53a3:
    inc sp
    jr c, jr_006_53de

    inc [hl]

jr_006_53a7:
    scf
    scf

jr_006_53a9:
    dec [hl]
    jr c, jr_006_53e4

    jr c, jr_006_53e6

    jr c, jr_006_53e2

    ld a, a
    ld a, a
    ld a, a

jr_006_53b3:
    ld a, a
    ld a, a

jr_006_53b5:
    ld a, a
    ld a, a

jr_006_53b7:
    ld a, a
    inc sp
    jr c, jr_006_53f3

    jr c, jr_006_53f5

    jr c, jr_006_53f7

    jr c, jr_006_53f3

    ld [hl], $36
    ld a, a
    ld a, a

jr_006_53c5:
    ld a, a
    ld a, a
    ld a, a
    ld a, a

jr_006_53c9:
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    inc sp
    jr c, @+$3a

    jr c, @+$3a

jr_006_53d2:
    jr c, jr_006_540c

jr_006_53d4:
    inc [hl]
    ld a, a
    ld a, a
    dec [hl]
    inc [hl]
    scf
    ld a, a
    ld a, a
    ld a, a
    ld a, a

jr_006_53de:
    ld a, a
    dec [hl]
    inc [hl]
    dec [hl]

jr_006_53e2:
    jr c, @+$3a

jr_006_53e4:
    jr c, @+$3a

jr_006_53e6:
    jr c, jr_006_5420

    jr c, jr_006_5422

    jr c, jr_006_5424

    jr c, jr_006_5426

    inc [hl]
    ld a, a
    ld a, a
    ld a, a
    dec [hl]

jr_006_53f3:
    jr c, jr_006_542d

jr_006_53f5:
    jr c, @+$3a

jr_006_53f7:
    jr c, @+$3a

    jr c, jr_006_5433

    jr c, jr_006_5435

    ld [hl-], a
    ld [hl], $33
    jr c, jr_006_543a

    ld [hl-], a
    ld a, a
    ld a, a
    ld a, a
    inc sp
    jr c, @+$3a

    jr c, @+$3a

    ld [hl-], a

jr_006_540c:
    ld a, a
    inc sp
    jr c, jr_006_5448

    ld [hl-], a
    ld a, a
    ld a, a
    ld a, a
    inc sp
    jr c, jr_006_544b

    ld a, a
    ld a, a
    ld a, a
    dec [hl]
    jr c, @+$3a

    jr c, @+$34

    ld a, a

jr_006_5420:
    ld a, a
    ld a, a

jr_006_5422:
    inc sp
    ld [hl-], a

jr_006_5424:
    ld a, a
    ld a, a

jr_006_5426:
    ld a, a
    ld a, a
    dec [hl]
    jr c, @+$3a

    inc [hl]
    scf

jr_006_542d:
    dec [hl]
    jr c, jr_006_5468

    jr c, jr_006_546a

    inc [hl]

jr_006_5433:
    ld a, a
    ld a, a

jr_006_5435:
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a

jr_006_543a:
    scf
    dec [hl]
    jr c, @+$3a

    jr c, @+$3a

    jr c, @+$3a

    jr c, @+$3a

    jr c, @+$34

    ld [hl], $7f

jr_006_5448:
    ld a, a
    ld a, a
    ld a, a

jr_006_544b:
    ld a, a
    ld a, a
    dec [hl]
    jr c, jr_006_5488

    jr c, jr_006_548a

    ld [hl], $33
    jr c, jr_006_548e

    jr c, jr_006_548a

    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    dec [hl]
    jr c, jr_006_549a

    jr c, jr_006_549c

    jr c, jr_006_549e

    jr c, jr_006_54a0

jr_006_5468:
    jr c, jr_006_54a2

jr_006_546a:
    jr c, jr_006_54a4

    ld [hl-], a
    ld [hl], $7f
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    dec [hl]
    jr c, @+$3a

    jr c, @+$3a

    jr c, @+$3a

    jr c, @+$3a

    jr c, jr_006_54b7

    jr c, jr_006_54b9

    jr c, @+$34

    ld [hl], $7f
    ld a, a
    ld a, a
    ld a, a

jr_006_5488:
    ld a, a
    dec [hl]

jr_006_548a:
    jr c, @+$3a

    jr c, @+$3a

jr_006_548e:
    jr c, @+$3a

    jr c, @+$3a

    jr c, jr_006_54cc

    jr c, jr_006_54ce

    jr c, @+$3a

    ld [hl-], a
    ld a, a

jr_006_549a:
    ld a, a
    ld a, a

jr_006_549c:
    ld [hl], $33

jr_006_549e:
    jr c, @+$3a

jr_006_54a0:
    jr c, @+$3a

jr_006_54a2:
    jr c, @+$36

jr_006_54a4:
    scf
    dec [hl]
    jr c, jr_006_54e0

    jr c, jr_006_54e2

    jr c, jr_006_54e4

    jr c, jr_006_54e0

    ld [hl], $33
    jr c, @+$3a

    jr c, @+$3a

    jr c, @+$3a

    inc [hl]

jr_006_54b7:
    ld a, a
    ld a, a

jr_006_54b9:
    ld a, a
    dec [hl]
    jr c, @+$3a

    jr c, @+$3a

    jr c, @+$3a

    jr c, jr_006_54fb

    jr c, jr_006_54fd

    jr c, jr_006_54ff

    jr c, jr_006_5501

    jr c, jr_006_54fd

    ld a, a

jr_006_54cc:
    ld a, a
    ld a, a

jr_006_54ce:
    inc sp
    jr c, @+$3a

    jr c, @+$3a

    jr c, @+$3a

    jr c, @+$3a

    jr c, @+$3a

    jr c, @+$3a

    jr c, jr_006_5515

    jr c, jr_006_5517

    ld [hl-], a

jr_006_54e0:
    ld [hl], $33

jr_006_54e2:
    jr c, jr_006_551c

jr_006_54e4:
    jr c, jr_006_551e

    inc [hl]
    scf
    dec [hl]
    jr c, @+$3a

    jr c, @+$3a

    jr c, @+$36

    scf
    scf
    dec [hl]
    jr c, jr_006_552c

    jr c, jr_006_552e

    jr c, jr_006_5530

    jr c, jr_006_5532

    ld [hl-], a

jr_006_54fb:
    ld [hl], $33

jr_006_54fd:
    jr c, jr_006_5537

jr_006_54ff:
    jr c, @+$3a

jr_006_5501:
    inc [hl]
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    scf
    dec [hl]
    jr c, jr_006_5542

    jr c, jr_006_5544

    jr c, jr_006_5546

    jr c, jr_006_5548

    jr c, jr_006_554a

    jr c, jr_006_554c

    inc [hl]

jr_006_5515:
    ld a, a
    ld a, a

jr_006_5517:
    ld a, a
    ld a, a
    ld a, a
    ld [hl], $33

jr_006_551c:
    jr c, jr_006_5556

jr_006_551e:
    jr c, jr_006_5558

    inc [hl]
    dec [hl]
    jr c, jr_006_555c

    jr c, jr_006_555e

    jr c, jr_006_5560

    ld [hl-], a
    ld a, a
    ld a, a
    ld a, a

jr_006_552c:
    ld a, a
    ld a, a

jr_006_552e:
    jr c, @+$3a

jr_006_5530:
    jr c, @+$3a

jr_006_5532:
    inc [hl]
    scf
    ld a, a
    ld a, a
    scf

jr_006_5537:
    dec [hl]
    jr c, jr_006_5572

    jr c, jr_006_5574

    jr c, @+$34

    ld [hl], $7f
    ld a, a
    ld a, a

jr_006_5542:
    jr c, jr_006_557c

jr_006_5544:
    jr c, jr_006_557e

jr_006_5546:
    ld [hl-], a
    ld a, a

jr_006_5548:
    ld a, a
    ld a, a

jr_006_554a:
    ld a, a
    ld a, a

jr_006_554c:
    dec [hl]
    jr c, @+$3a

    jr c, @+$3a

    jr c, jr_006_558b

    ld [hl-], a
    ld [hl], $33

jr_006_5556:
    jr c, @+$3a

jr_006_5558:
    jr c, @+$3a

    jr c, @+$34

jr_006_555c:
    ld [hl], $7f

jr_006_555e:
    ld a, a
    ld a, a

jr_006_5560:
    inc sp
    jr c, jr_006_559b

    jr c, jr_006_559d

    jr c, jr_006_559f

    jr c, jr_006_55a1

    jr c, jr_006_55a3

    jr c, jr_006_55a5

    jr c, jr_006_55a7

    jr c, jr_006_55a9

    ld [hl-], a

jr_006_5572:
    ld [hl], $33

jr_006_5574:
    jr c, @+$3a

    jr c, @+$3a

    jr c, @+$3a

    jr c, @+$3a

jr_006_557c:
    jr c, @+$3a

jr_006_557e:
    jr c, @+$3a

    jr c, @+$3a

    jr c, @+$3a

    jr c, @+$3a

    jr c, @+$3a

    jr c, @+$3a

    inc [hl]

jr_006_558b:
    scf
    dec [hl]
    jr c, jr_006_55c7

    jr c, jr_006_55c9

    jr c, jr_006_55cb

    jr c, jr_006_55cd

    jr c, jr_006_55cf

    jr c, @+$3a

    jr c, @+$3a

jr_006_559b:
    jr c, @+$3a

jr_006_559d:
    jr c, @+$34

jr_006_559f:
    ld [hl], $33

jr_006_55a1:
    jr c, @+$3a

jr_006_55a3:
    jr c, jr_006_55dd

jr_006_55a5:
    jr c, jr_006_55df

jr_006_55a7:
    jr c, jr_006_55e1

jr_006_55a9:
    jr c, jr_006_55e3

    jr c, jr_006_55e5

    jr c, jr_006_55e7

    jr c, jr_006_55e9

    jr c, jr_006_55eb

    jr c, jr_006_55ed

    jr c, jr_006_55ef

    jr c, jr_006_55f1

    jr c, jr_006_55f3

    jr c, jr_006_55f5

    jr c, jr_006_55f7

    jr c, jr_006_55f9

    jr c, jr_006_55fb

    jr c, jr_006_55fd

    jr c, jr_006_55ff

jr_006_55c7:
    jr c, jr_006_5601

jr_006_55c9:
    jr c, jr_006_5603

jr_006_55cb:
    inc [hl]
    scf

jr_006_55cd:
    dec [hl]
    scf

jr_006_55cf:
    dec [hl]
    jr c, jr_006_560a

    jr c, jr_006_560c

    jr c, jr_006_560e

    jr c, jr_006_5610

    jr c, @+$3a

    jr c, jr_006_5614

    inc [hl]

jr_006_55dd:
    scf
    scf

jr_006_55df:
    ld a, a
    ld a, a

jr_006_55e1:
    ld a, a
    ld a, a

jr_006_55e3:
    ld a, a
    scf

jr_006_55e5:
    scf
    dec [hl]

jr_006_55e7:
    jr c, jr_006_5621

jr_006_55e9:
    jr c, jr_006_5623

jr_006_55eb:
    jr c, @+$3a

jr_006_55ed:
    jr c, jr_006_5627

jr_006_55ef:
    jr c, jr_006_5623

jr_006_55f1:
    ld [hl], $7f

jr_006_55f3:
    ld a, a
    ld a, a

jr_006_55f5:
    ld a, a
    ld a, a

jr_006_55f7:
    ld a, a
    ld a, a

jr_006_55f9:
    ld a, a
    ld a, a

jr_006_55fb:
    scf
    dec [hl]

jr_006_55fd:
    jr c, jr_006_5637

jr_006_55ff:
    jr c, jr_006_5639

jr_006_5601:
    jr c, jr_006_563b

jr_006_5603:
    jr c, jr_006_563d

    jr c, jr_006_5639

    ld [hl], $7f
    ld a, a

jr_006_560a:
    ld a, a
    ld a, a

jr_006_560c:
    ld a, a
    ld a, a

jr_006_560e:
    ld a, a
    ld a, a

jr_006_5610:
    inc sp
    jr c, jr_006_564f

    ld b, c

jr_006_5614:
    ld b, [hl]
    ld c, e
    ld d, b
    jr c, jr_006_5651

    jr c, jr_006_5653

    jr c, jr_006_564f

    ld a, a
    ld a, a
    ld a, a
    ld a, a

jr_006_5621:
    ld [hl], $36

jr_006_5623:
    inc sp
    jr c, @+$3a

    dec sp

jr_006_5627:
    ld b, b
    ld b, l
    ld c, d
    ld c, a
    jr c, jr_006_5665

    jr c, jr_006_5667

    jr c, jr_006_5669

    ld [hl-], a
    ld a, a
    ld [hl], $33
    jr c, jr_006_566f

jr_006_5637:
    jr c, jr_006_5671

jr_006_5639:
    jr c, jr_006_5675

jr_006_563b:
    ccf
    ld b, h

jr_006_563d:
    ld c, c
    ld c, [hl]
    jr c, jr_006_5679

    jr c, jr_006_567b

    jr c, jr_006_567d

    jr c, @+$35

    jr c, jr_006_5681

    jr c, jr_006_567f

    scf
    scf
    dec [hl]
    add hl, sp

jr_006_564f:
    ld a, $43

jr_006_5651:
    ld c, b
    ld c, l

jr_006_5653:
    jr c, jr_006_568d

    jr c, @+$3a

    jr c, @+$3a

    jr c, jr_006_5693

    jr c, jr_006_5695

    jr c, @+$34

    ld [hl], $36
    inc sp
    jr c, jr_006_56a1

    ld b, d

jr_006_5665:
    ld b, a
    ld c, h

jr_006_5667:
    jr c, jr_006_56a1

jr_006_5669:
    jr c, jr_006_56a3

    jr c, jr_006_56a5

    jr c, jr_006_56a7

jr_006_566f:
    jr c, jr_006_56a9

jr_006_5671:
    jr c, @+$3a

    jr c, @+$3a

jr_006_5675:
    jr c, jr_006_56af

    jr c, jr_006_56b1

jr_006_5679:
    jr c, jr_006_56b3

jr_006_567b:
    jr c, jr_006_56b5

jr_006_567d:
    jr c, jr_006_56b3

jr_006_567f:
    scf
    scf

jr_006_5681:
    scf
    jr c, jr_006_56bc

    jr c, jr_006_56be

    jr c, jr_006_56c0

    dec hl
    inc l
    dec l
    ld [hl+], a
    ld [hl+], a

jr_006_568d:
    ld hl, $1f20
    jr c, jr_006_56ca

    ld [hl-], a

jr_006_5693:
    ld [hl], $7f

jr_006_5695:
    ld a, a
    jr c, @+$3a

    jr c, @+$3a

    jr c, jr_006_56c5

    ld a, [hl+]
    ld a, d
    ld a, d
    ld a, d
    ld a, d

jr_006_56a1:
    ld a, d
    ld a, d

jr_006_56a3:
    ld e, $1d

jr_006_56a5:
    jr c, jr_006_56df

jr_006_56a7:
    jr c, jr_006_56db

jr_006_56a9:
    ld a, a
    jr c, @+$3a

    jr c, @+$3a

    daa

jr_006_56af:
    jr z, jr_006_572b

jr_006_56b1:
    ld a, d
    ld a, d

jr_006_56b3:
    ld a, d
    ld a, d

jr_006_56b5:
    ld a, d
    ld a, d
    ld a, d
    inc c
    inc e
    jr c, jr_006_56f4

jr_006_56bc:
    jr c, jr_006_56f0

jr_006_56be:
    scf
    dec [hl]

jr_006_56c0:
    jr c, jr_006_56e7

    ld h, $7a
    ld a, d

jr_006_56c5:
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld a, d

jr_006_56ca:
    ld a, d
    ld a, d
    ld a, d
    dec de
    ld a, [de]
    jr c, @+$3a

    jr c, @+$38

    inc sp
    jr c, jr_006_56fa

    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld a, d

jr_006_56db:
    ld a, d
    ld a, d
    ld a, d
    ld a, d

jr_006_56df:
    ld a, d
    ld a, d
    ld a, d
    add hl, de
    jr c, jr_006_571d

    jr c, jr_006_571f

jr_006_56e7:
    jr c, jr_006_5721

    inc hl
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld a, d

jr_006_56f0:
    ld a, d
    ld a, d
    ld a, d
    ld a, d

jr_006_56f4:
    ld a, d
    ld a, d
    jr jr_006_5730

    jr c, jr_006_5732

jr_006_56fa:
    jr c, jr_006_5734

    jr c, @+$0d

    ld a, d
    ld a, d
    ld a, d

Jump_006_5701:
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    jr nc, @+$31

    rla
    jr c, jr_006_5745

    jr c, @+$3a

    jr c, @+$3a

    ld a, [bc]
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld a, d

jr_006_571d:
    ld l, $16

jr_006_571f:
    inc [hl]
    scf

jr_006_5721:
    dec [hl]
    jr c, @+$3a

    jr c, jr_006_572f

    ld [$7a7a], sp
    ld a, d
    ld a, d

jr_006_572b:
    ld a, d
    ld a, d
    ld a, d
    ld a, d

jr_006_572f:
    ld a, d

jr_006_5730:
    ld a, d
    inc d

jr_006_5732:
    dec d
    ld [hl-], a

jr_006_5734:
    ld [hl], $33
    jr c, jr_006_5770

    jr c, jr_006_5772

    rlca
    ld b, $7a
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld [de], a

jr_006_5745:
    inc de
    jr c, @+$3a

    jr c, @+$3a

    dec [hl]
    jr c, @+$3a

    jr c, jr_006_5787

    dec b
    inc b
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    db $10
    ld de, $3838
    jr c, jr_006_5795

    jr c, jr_006_57de

    dec [hl]
    jr c, jr_006_579a

    jr c, jr_006_579c

    inc bc
    ld [bc], a
    ld bc, $0000
    dec c
    ld c, $0f
    inc [hl]
    scf
    scf
    dec [hl]

jr_006_5770:
    jr c, jr_006_57aa

jr_006_5772:
    ld a, a
    ld a, a
    dec [hl]
    jr c, jr_006_57af

    jr c, jr_006_57b1

    jr c, jr_006_57b3

    jr c, jr_006_57b5

    jr c, jr_006_57b7

    jr c, jr_006_57b3

    ld [hl], $36
    inc sp
    jr c, jr_006_57be

    ld e, h

jr_006_5787:
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h

jr_006_5795:
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h

jr_006_579a:
    ld e, h
    ld e, l

jr_006_579c:
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l

jr_006_57aa:
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l

jr_006_57af:
    ld e, l
    ld e, [hl]

jr_006_57b1:
    ld e, [hl]
    ld e, [hl]

jr_006_57b3:
    ld e, [hl]
    ld e, [hl]

jr_006_57b5:
    ld e, [hl]
    ld e, [hl]

jr_006_57b7:
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]

jr_006_57be:
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld l, c
    ld h, e
    ld l, b
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c

jr_006_57de:
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld l, c
    ld h, c
    ld h, d
    ld [hl], d
    ld h, h
    ld h, e
    ld l, b
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld l, c
    ld h, e
    ld l, b
    ld a, c
    ld a, c
    ld a, c
    ld l, c
    ld h, c
    ld h, d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld h, h
    ld h, l
    ld h, c
    ld a, c
    ld a, c
    ld l, c
    ld h, c
    ld h, d
    ld [hl], d
    ld h, h
    ld h, l
    ld h, c
    ld h, d
    ld h, d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld l, c
    ld h, c
    ld h, d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld h, d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld l, b
    ld h, d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld l, c
    ld h, d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld h, c
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld h, e
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld h, l
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld l, b
    ld h, h
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld h, e
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld l, c
    ld h, d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld h, c
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld h, d
    ld [hl], d
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld l, b
    ld h, h
    ld [hl], d
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld h, e
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld h, e
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld l, b
    ld h, h
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld h, e
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld l, b
    ld h, h
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld h, e
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld l, c
    ld h, d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld h, c
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld l, c
    ld h, d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld h, c
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld l, c
    ld h, d
    ld [hl], d
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld h, d
    ld [hl], d
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld l, b
    ld h, h
    ld [hl], d
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld h, e
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld l, b
    ld h, h
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld h, e
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld l, c
    ld h, d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld h, c
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld h, d
    ld [hl], d
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld h, c
    ld [hl], d
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld l, b
    ld h, h
    ld [hl], d
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld h, e
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld l, b
    ld h, h
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld h, e
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld l, c
    ld h, d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld h, c
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld l, c
    ld h, d
    ld [hl], d
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld h, h
    ld [hl], d
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld h, d
    ld [hl], d
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld h, c
    ld [hl], d
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld l, c
    ld h, d
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c

Jump_006_5b00:
    ld a, c
    ld a, c
    ld h, c
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld e, a
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld e, a
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld e, a
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld h, l
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld l, b
    ld h, h
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld h, l
    ld [hl], d
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld l, b
    ld h, h
    ld [hl], d
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld h, e
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld l, c
    ld h, d
    ld [hl], d
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld h, c
    ld [hl], d
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld h, b
    ld [hl], d
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld h, e
    ld [hl], d
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld l, c
    ld [hl], c
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld [hl], b
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld e, a
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld e, a
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld e, a
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld e, a
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld e, a
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld e, a
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld e, a
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld e, a
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld [hl], e
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld e, a
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld e, a
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld e, a
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld e, a
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld [hl], e
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld [hl], e
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld e, a
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld e, a
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld e, a
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld e, a
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld e, a
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld e, a
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld e, a
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld [hl], e
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld e, a
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld e, a
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld e, a
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld l, [hl]
    ld l, a
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    db $76
    ld [hl], a
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld [hl], e
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld e, a
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld [hl], e
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld e, a
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld e, a
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld l, [hl]
    ld l, a
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    db $76
    ld [hl], a
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld [hl], e
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld l, [hl]
    ld l, a
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    db $76
    ld [hl], a
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld [hl], e
    ld [hl], l
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld l, h
    ld l, l
    ld a, b
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c

Call_006_5e00:
Jump_006_5e00:
    ld a, c
    ld a, c
    ld a, c
    ld l, d
    ld l, e
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld l, [hl]
    ld l, a
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    db $76
    ld [hl], a
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld [hl], e
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld [hl], e
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld e, a
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld e, a
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld e, a
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld e, a
    ld [hl], d
    ld e, [hl]
    ld a, c
    ld e, h
    ld e, l
    ld e, [hl]
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld e, a
    ld [hl], d
    ld e, [hl]
    ld a, c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    di
    rst $20
    db $e4
    rst $38
    ld [c], a
    pop af
    db $e4
    db $e3
    add sp, -$0d
    ld a, [c]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $e3
    add sp, -$0f
    db $e4
    ld [c], a
    di
    xor $f1
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [c], a
    rst $20
    add sp, -$1c
    push hl
    rst $38
    db $e3
    db $e4
    ld a, [c]
    add sp, -$1a
    db $ed
    db $e4
    pop af
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_006_5f00:
    rst $38
    rst $38
    rst $38
    rst $38
    db $ec
    ldh [$f2], a
    ldh [rIE], a
    ld a, [c]
    ldh [$ea], a
    db $f4
    pop af
    ldh [$e8], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [c], a
    rst $20
    add sp, -$1c
    push hl
    rst $38
    rst $28
    pop af
    xor $e6
    pop af
    ldh [$ec], a
    db $ec
    db $e4
    pop af
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [$eef8], a
    db $f4
    rst $20
    db $e4
    add sp, -$01
    db $ec
    add sp, -$08
    ldh [$e1], a
    add sp, -$01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    pop af
    xor $e6
    pop af
    ldh [$ec], a
    db $ec
    db $e4
    pop af
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [c]
    db $f4
    db $ed
    db $e3
    ldh [$f8], a
    rst $38
    pop af
    ldh [$e8], a
    db $ed
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    and $e3
    push af
    rst $38
    rst $28
    pop af
    xor $e6
    pop af
    ldh [$ec], a
    db $ec
    db $e4
    pop af
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $ec
    ldh [$ec], a
    db $ec
    ld hl, sp-$01
    rst $28
    pop af
    db $e4
    ld [c], a
    xor $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    and $e3
    push af
    rst $38
    rst $28
    pop af
    xor $e6
    pop af
    ldh [$ec], a
    db $ec
    db $e4
    pop af
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    di
    db $e4
    di
    ld a, [c]
    db $f4
    ld hl, sp-$20
    rst $38
    db $ed
    xor $f3
    xor $f8
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $e3
    db $e4
    ld a, [c]
    add sp, -$1a
    db $ed
    db $e4
    pop af
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $ec
    xor $e6
    ldh [$ec], a
    add sp, -$01
    ld [$f1f4], a
    ldh [$ed], a
    db $e3
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [c]
    xor $f4
    db $ed
    db $e3
    rst $38
    ld [c], a
    xor $ec
    rst $28
    xor $f2
    db $e4
    pop af
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jp hl


    db $f4
    db $ed
    rst $38
    add sp, -$0e
    rst $20
    add sp, -$16
    ldh [$f6], a
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [c]
    rst $28
    db $e4
    ld [c], a
    add sp, -$20
    db $eb
    rst $38
    di
    rst $20
    ldh [$ed], a
    ld_long $fff2, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop hl
    db $f4
    pop hl
    pop hl
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [c]
    rst $28
    db $e4
    ld [c], a
    add sp, -$20
    db $eb
    rst $38
    di
    rst $20
    ldh [$ed], a
    ld_long $fff2, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [c], a
    add sp, -$11
    rst $20
    db $e4
    pop af
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [c]
    db $f4
    rst $28
    db $e4
    pop af
    push af
    add sp, -$0e
    xor $f1
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop hl
    xor $f4
    rst $38
    db $ed
    ldh [$ea], a
    ldh [$e9], a
    add sp, -$14
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    pop af
    xor $e3
    db $f4
    ld [c], a
    db $e4
    pop af
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $ec
    ldh [$ea], a
    xor $f3
    xor $ff
    ld [$ede0], a
    ldh [$e8], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [$ed], a
    db $e3
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [c]
    xor $ff
    db $ec
    ldh [$ed], a
    ld hl, sp-$01
    rst $28
    db $eb
    ldh [$f8], a
    db $e4
    pop af
    ld a, [c]
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [$f1e8], a
    pop hl
    ld hl, sp-$06
    ld a, [c]
    rst $38
    db $e3
    pop af
    db $e4
    ldh [$ec], a
    rst $38
    db $eb
    ldh [$ed], a
    db $e3
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    pop af
    db $e4
    ld a, [c]
    db $e4
    db $ed
    di
    db $e4
    db $e3
    rst $38
    pop hl
    ld hl, sp-$05
    ei
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    ldh [$eb], a
    rst $38
    db $eb
    ldh [$e1], a
    xor $f1
    ldh [$f3], a
    xor $f1
    ld hl, sp-$04
    add sp, -$13
    ld [c], a
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [$ed], a
    db $e3
    rst $38
    db $ed
    add sp, -$13
    di
    db $e4
    db $ed
    db $e3
    xor $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    di
    rst $20
    ldh [$ed], a
    ld [$f8ff], a
    xor $f4
    rst $38
    push hl
    xor $f1
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    db $eb
    ldh [$f8], a
    add sp, -$13
    and $fb
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

ExecuteConfigurationModeScreen:
    call Call_000_0648
    call StartTimer
    call Call_000_231e
    call InitWindow
    xor a
    ld [$d053], a
    ld [$d055], a
    ld a, $ff
    ld [wClearAllSprites], a
    call ClearSprites
    ld hl, $4855
    ld de, $9670
    ld c, $02
    call Decompress
    ld hl, $7b0d
    ld de, $8800
    ld c, $06
    call Decompress
    ld hl, $41c7
    ld de, $8e00
    ld c, $03
    call Decompress
    ld hl, $4541
    ld de, $9800
    ld c, $03
    call Decompress
    xor a
    ld [$d06b], a
    dec a
    ld [$d050], a
    ld hl, $98eb
    ld a, [$d088]

jr_006_63db:
    ld [hl], $c5
    inc hl
    dec a
    jr nz, jr_006_63db

    call StopTimer
    call Call_000_0670
    ld a, [wMaximumLives]
    call Call_006_652f
    ld hl, $ff8c
    set 6, [hl]

jr_006_63f2:
    bit 6, [hl]
    jr nz, jr_006_63f2

    call Call_006_646b
    ld hl, $ff8c
    set 6, [hl]

jr_006_63fe:
    bit 6, [hl]
    jr nz, jr_006_63fe

    call Call_006_5098
    ld hl, $63f9
    push hl
    ld_long a, $ff8b
    bit 0, a
    jp nz, Jump_006_64c3

    bit 1, a
    jp nz, Jump_006_64f4

    bit 2, a
    jp nz, Jump_006_645a

    bit 3, a
    jp nz, Jump_006_6435

    bit 4, a
    jp nz, Jump_006_64d0

    bit 5, a
    jp nz, Jump_006_64f4

    bit 6, a
    jp nz, Jump_006_6449

    bit 7, a
    jp nz, Jump_006_6451

    ret


Jump_006_6435:
    ld a, [$d06b]
    cp $02
    jp z, Jump_006_655e

    cp $03
    ret nz

Jump_006_6440:
    pop hl
    ld a, $0c
    ld [$d050], a
    jp ExecuteTitlescreen


Jump_006_6449:
    ld a, [$d06b]
    and a
    ret z

    dec a
    jr jr_006_6463

Jump_006_6451:
    ld a, [$d06b]
    cp $03
    ret z

    inc a
    jr jr_006_6463

Jump_006_645a:
    ld a, [$d06b]
    inc a
    cp $04
    jr nz, jr_006_6463

    xor a

jr_006_6463:
    ld [$d06b], a
    ld a, $1a
    call PlaySE

Call_006_646b:
Jump_006_646b:
    ld a, $98
    ld [wTilemapCopyBuffer], a
    ld a, $e4
    ld [$cb01], a
    ld a, $c7
    ld [$cb02], a
    ld a, $99
    ld [$cb03], a
    ld a, $24
    ld [$cb04], a
    ld a, $c7
    ld [$cb05], a
    ld a, $99
    ld [$cb06], a
    ld a, $64
    ld [$cb07], a
    ld a, $c7
    ld [$cb08], a
    ld a, $99
    ld [$cb09], a
    ld a, $c4
    ld [$cb0a], a
    ld a, $c7
    ld [$cb0b], a
    xor a
    ld [$cb0c], a
    ld a, [$d06b]
    ld c, a
    add a
    add c
    ld c, a
    ld b, $00
    ld hl, $cb02
    add hl, bc
    ld [hl], $c6
    ld_long a, $ff91
    set 2, a
    ld_long $ff91, a
    ret


Jump_006_64c3:
    ld a, [$d06b]
    cp $02
    jp z, Jump_006_655e

    cp $03
    jp z, Jump_006_6440

Jump_006_64d0:
    ld a, [$d06b]
    cp $01
    jr z, jr_006_64e8

    and a
    ret nz

    ld a, [$d088]
    inc a
    cp $07
    ret z

    ld [$d088], a
    ld c, a
    ld a, $c5
    jr jr_006_6509

jr_006_64e8:
    ld a, [wMaximumLives]
    cp $09
    ret z

    inc a
    ld [wMaximumLives], a
    jr jr_006_652f

Jump_006_64f4:
    ld a, [$d06b]
    cp $01
    jr z, jr_006_6527

    and a
    ret nz

    ld a, [$d088]
    dec a
    ret z

    ld [$d088], a
    ld c, a
    inc c
    ld a, $c4

jr_006_6509:
    ld [$cb02], a
    ld b, $00
    ld hl, $98ea
    add hl, bc
    ld a, h
    ld [wTilemapCopyBuffer], a
    ld a, l
    ld [$cb01], a
    xor a
    ld [$cb03], a
    ld_long a, $ff91
    set 2, a
    ld_long $ff91, a
    ret


jr_006_6527:
    ld a, [wMaximumLives]
    dec a
    ret z

    ld [wMaximumLives], a

Call_006_652f:
jr_006_652f:
    call Call_000_1c6b
    add $72
    ld [$cb02], a
    ld a, $99
    ld [wTilemapCopyBuffer], a
    ld a, $2c
    ld [$cb01], a
    ld a, b
    add $72
    ld [$cb05], a
    ld a, $99
    ld [$cb03], a
    ld a, $2b
    ld [$cb04], a
    xor a
    ld [$cb06], a
    ld_long a, $ff91
    set 2, a
    ld_long $ff91, a
    ret


Jump_006_655e:
    pop hl
    call Call_000_0648
    call StartTimer
    ld a, $02
    call Call_000_21fb
    call InitWindow
    ld hl, $44c9
    ld de, $9800
    ld c, $03
    call Decompress
    call StopTimer
    call Call_000_0670
    xor a
    ld [$d06b], a
    ld hl, $d067
    ld [hl+], a
    ld [hl], a
    call Call_006_66cb

Jump_006_658a:
jr_006_658a:
    ld hl, $ff8c
    set 6, [hl]

jr_006_658f:
    bit 6, [hl]
    jr nz, jr_006_658f

    call Call_006_5098
    ld_long a, $ff8b
    bit 0, a
    jp nz, Jump_006_6655

    bit 1, a
    jp nz, Jump_006_6648

    bit 2, a
    jp nz, Jump_006_6633

    bit 3, a
    jp nz, Jump_006_6630

    bit 4, a
    jr nz, jr_006_6606

    bit 5, a
    jr nz, jr_006_65dc

    bit 6, a
    jr nz, jr_006_65ce

    bit 7, a
    jr nz, jr_006_65bf

    jr jr_006_658a

jr_006_65bf:
    ld a, $01
    ld [$d06b], a
    call Call_006_66cb
    ld a, $1a
    call PlaySE
    jr jr_006_658a

jr_006_65ce:
    xor a
    ld [$d06b], a
    call Call_006_66cb
    ld a, $1a
    call PlaySE
    jr jr_006_658a

jr_006_65dc:
    ld a, [$d06b]
    and a
    jr nz, jr_006_65f4

    ld a, [$d067]
    dec a
    cp $ff
    jr c, jr_006_6615

    ld a, $12
    ld [$d067], a
    call Call_006_666d
    jr jr_006_658a

jr_006_65f4:
    ld a, [$d068]
    dec a
    cp $ff
    jr c, jr_006_6627

    ld a, $20
    ld [$d068], a
    call Call_006_669c
    jr jr_006_658a

jr_006_6606:
    ld a, [$d06b]
    and a
    jr nz, jr_006_661e

    ld a, [$d067]
    inc a
    cp $13
    jr c, jr_006_6615

    xor a

jr_006_6615:
    ld [$d067], a
    call Call_006_666d
    jp Jump_006_658a


jr_006_661e:
    ld a, [$d068]
    inc a
    cp $21
    jr c, jr_006_6627

    xor a

jr_006_6627:
    ld [$d068], a
    call Call_006_669c
    jp Jump_006_658a


Jump_006_6630:
    jp ExecuteConfigurationModeScreen


Jump_006_6633:
    ld a, [$d06b]
    ld b, a
    ld a, $01
    sub b
    ld [$d06b], a
    call Call_006_66cb
    ld a, $1a
    call PlaySE
    jp Jump_006_658a


Jump_006_6648:
    ld a, $ff
    call PlaySong
    ld a, $ff
    call PlaySE
    jp Jump_006_658a


Jump_006_6655:
    ld a, [$d06b]
    and a
    jr nz, jr_006_6664

    ld a, [$d067]
    call PlaySong
    jp Jump_006_658a


jr_006_6664:
    ld a, [$d068]
    call PlaySE
    jp Jump_006_658a


Call_006_666d:
    call Call_000_1c6b
    add $72
    ld [$cb02], a
    ld a, $98
    ld [wTilemapCopyBuffer], a
    ld a, $ee
    ld [$cb01], a
    ld a, b
    add $72
    ld [$cb05], a
    ld a, $98
    ld [$cb03], a
    ld a, $ed
    ld [$cb04], a
    xor a
    ld [$cb06], a
    ld_long a, $ff91
    set 2, a
    ld_long $ff91, a
    ret


Call_006_669c:
    call Call_000_1c6b
    add $72
    ld [$cb02], a
    ld a, $99
    ld [wTilemapCopyBuffer], a
    ld a, $2e
    ld [$cb01], a
    ld a, b
    add $72
    ld [$cb05], a
    ld a, $99
    ld [$cb03], a
    ld a, $2d
    ld [$cb04], a
    xor a
    ld [$cb06], a
    ld_long a, $ff91
    set 2, a
    ld_long $ff91, a
    ret


Call_006_66cb:
    ld a, [$d06b]
    and a
    jr nz, jr_006_66fc

    ld a, $98
    ld [wTilemapCopyBuffer], a
    ld a, $e6
    ld [$cb01], a
    ld a, $c6
    ld [$cb02], a
    ld a, $99
    ld [$cb03], a
    ld a, $26
    ld [$cb04], a
    ld a, $c7
    ld [$cb05], a
    xor a
    ld [$cb06], a
    ld_long a, $ff91
    set 2, a
    ld_long $ff91, a
    ret


jr_006_66fc:
    ld a, $98
    ld [wTilemapCopyBuffer], a
    ld a, $e6
    ld [$cb01], a
    ld a, $c7
    ld [$cb02], a
    ld a, $99
    ld [$cb03], a
    ld a, $26
    ld [$cb04], a
    ld a, $c6
    ld [$cb05], a
    xor a
    ld [$cb06], a
    ld_long a, $ff91
    set 2, a
    ld_long $ff91, a
    ret

INCBIN "baserom.gb", $1a727, $1a800 - $1a727

MetatileMap_BubblyCloudsScreen7:
    INCBIN "data/stages/bubbly_clouds/screen_7.map.lz"
MetatileMap_BubblyCloudsScreen5:
    INCBIN "data/stages/bubbly_clouds/screen_5.map.lz"
MetatileMap_BubblyCloudsScreen6:
    INCBIN "data/stages/bubbly_clouds/screen_6.map.lz"
MetatileMap_BubblyCloudsScreen3:
    INCBIN "data/stages/bubbly_clouds/screen_3.map.lz"
MetatileMap_BubblyCloudsScreen8:
    INCBIN "data/stages/bubbly_clouds/screen_8.map.lz"
MetatileMap_BubblyCloudsScreen9:
    INCBIN "data/stages/bubbly_clouds/screen_9.map.lz"

MetatileMap_MtDededeScreen0:
    INCBIN "data/stages/mt_dedede/screen_0.map.lz"
MetatileMap_MtDededeScreen5:
    INCBIN "data/stages/mt_dedede/screen_5.map.lz"
MetatileMap_MtDededeScreen2:
    INCBIN "data/stages/mt_dedede/screen_2.map.lz"
MetatileMap_MtDededeScreen3:
    INCBIN "data/stages/mt_dedede/screen_3.map.lz"
MetatileMap_MtDededeScreen4:
    INCBIN "data/stages/mt_dedede/screen_4.map.lz"
MetatileMap_MtDededeScreen1:
    INCBIN "data/stages/mt_dedede/screen_1.map.lz"

INCBIN "baserom.gb", $1b77c, $1bdf0 - $1b77c

; free space padding
INCBIN "baserom.gb", $1bdf0, $1c000 - $1bdf0
