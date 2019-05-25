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
    ld hl, $cb00
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
    call $231e
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
    call $19c9
    call $19f9
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
    call $1964
    xor a
    ld [wClearSpritesOffset], a
    call Call_000_21fb
    call $139b
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
    call $319d
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
    call $21e6
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
    call $21e6
    pop hl
    pop af
    ret


Call_006_4485:
    push af
    ld a, [hl+]
    ld [wCurStageScreen], a
    push hl
    call $19c9
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
    call $19f9
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
    call $1964
    ld a, $ff
    ld [wClearAllSprites], a
    call Call_006_444f
    xor a
    call Call_000_21fb
    call ClearSprites
    call $2e9c
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
    call $1062
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
    call $0643
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
    call $12b4
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
    call $2e9c
    call $139b
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
    call $21e6
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
    ld hl, $3a43
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
    call $19c9
    call Call_000_0648
    call $19f9
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
    call $139b
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
    call $2e9c
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
    call $231e
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
    call $1964
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
    ld bc, $cb00

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
    call $1ce0
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
    ld hl, $cb00
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
    ld bc, $cb00
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
    call $231e
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
    call $2e9c
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
    call $231e
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
    ld [$cb00], a
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
    ld [$cb00], a
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
    call $1c6b
    add $72
    ld [$cb02], a
    ld a, $99
    ld [$cb00], a
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
    call $1c6b
    add $72
    ld [$cb02], a
    ld a, $98
    ld [$cb00], a
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
    call $1c6b
    add $72
    ld [$cb02], a
    ld a, $99
    ld [$cb00], a
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
    ld [$cb00], a
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
    ld [$cb00], a
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


    rst $10
    ld_long $ff91, a
    ret


    rst $10
    ld_long $ff91, a
    ret


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $1a03
    ld [hl+], a
    inc bc
    ld [bc], a
    add hl, de
    inc bc
    inc e
    inc hl
    inc bc
    add h
    nop
    rlca
    add h
    nop
    ld b, $00
    ld e, $23
    inc bc
    inc bc
    add hl, de
    dec e
    inc bc
    ld c, $86
    nop
    dec bc
    nop
    ld c, $83
    nop
    inc bc
    ld bc, $4a1a
    ld h, $0a
    dec b
    ld c, d
    dec de
    dec e
    inc bc
    add hl, de
    inc bc
    ld h, d
    ld c, d
    dec b
    ld a, [hl+]
    ld e, e
    cpl
    ld c, [hl]
    ld c, d
    ld c, d
    add e
    nop
    ld a, [bc]
    ld a, [bc]
    inc e
    ld c, d
    ld c, e
    jr z, jr_006_6869

    inc bc
    ld l, $2d
    ld c, d
    ld c, d
    ld a, [de]
    add e
    nop
    inc h
    ld [bc], a
    dec c
    daa
    nop
    ld [hl+], a
    xor b
    ld b, $00
    inc l
    dec c
    inc bc
    ld c, $1a
    ld c, d
    ld a, [hl+]
    cp e
    ld b, $4a
    inc bc
    dec c
    inc h
    dec sp
    dec sp
    ld c, d
    ld [hl+], a
    or c
    add hl, bc
    ld c, d
    inc h
    dec sp
    dec sp
    dec c

jr_006_6869:
    inc e
    cp b
    cp c
    ld e, [hl]
    ld e, [hl]
    add e
    nop
    ld a, b
    ld [de], a
    ld c, d
    ld e, a
    ld e, [hl]
    cp b
    cp c
    dec e
    inc e
    cp b
    cp b
    cp c
    dec c
    ld e, a
    ld e, [hl]
    ld e, [hl]
    dec c
    cp b
    cp c
    cp c
    inc e
    ld h, d
    dec de
    ld b, $1b
    inc e
    cp b
    cp b
    cp d
    cp c
    cp c
    add e
    nop
    sbc d
    inc bc
    dec e
    dec de
    inc e
    xor b
    add h
    nop
    sbc c
    add l
    nop
    and h
    ld [bc], a
    dec e
    xor b
    or c
    adc e
    nop
    xor d
    add hl, bc
    or c
    inc bc
    or c
    dec de
    dec de
    inc bc
    dec e
    inc bc
    dec de
    dec de
    inc hl
    inc bc
    inc bc
    dec de
    dec de
    inc bc
    ld a, [de]
    add l
    nop
    call $1c41
    ld a, [de]
    nop
    inc bc
    add e
    nop
    adc $05
    add hl, de
    inc e
    add hl, de
    inc bc
    ld a, [de]
    add hl, de
    call nz, $1b00
    add e
    nop
    db $eb
    inc b
    add hl, de
    inc bc
    inc bc
    ld a, [de]
    dec de
    add e
    nop
    ld a, [bc]
    nop
    dec de
    jp $e400


    ld bc, $1b03
    add e
    nop
    and $84
    nop
    ld sp, hl
    nop
    inc bc
    jp $e100


    add h
    nop
    ld [bc], a
    add a
    nop
    ld [$1907], sp
    inc bc
    xor b
    add hl, de
    xor b
    inc bc
    inc e
    dec de
    add h
    nop
    ld [$1c08], a
    ld a, [de]
    add hl, de
    or c
    xor b
    or c
    inc bc
    inc bc
    inc e
    add e
    nop
    rlca
    add h
    nop
    adc $03
    or c
    add hl, de
    inc bc
    dec e
    add e
    nop
    inc bc
    add h
    nop
    and $c5
    nop
    db $dd
    nop
    inc e
    add [hl]
    nop
    ld a, [bc]
    jp $e200


    inc bc
    inc e
    inc bc
    xor b
    inc e
    ld b, c
    inc bc
    ld a, [de]
    ld bc, $1c03
    add e
    nop
    dec b
    add e
    nop
    or [hl]
    add e
    nop
    rlca
    add h
    ld bc, $000c
    inc bc
    ld b, c
    inc e
    or c
    add e
    ld bc, $0002
    inc bc
    jp $0501


    ld [bc], a
    inc bc
    inc bc
    dec e
    ld [hl+], a
    inc e
    add h
    ld bc, $8307
    ld bc, $0182
    ld a, [de]
    inc e
    add e
    nop
    sbc d
    nop
    inc e
    add e
    ld bc, $8376
    nop
    nop
    nop
    dec e
    add e
    ld bc, $4188
    dec de
    inc bc
    dec b
    xor b
    dec de
    xor b
    inc e
    inc e
    inc bc
    jp $9d00


    ld [bc], a
    dec e
    dec de
    dec e
    jp $3301


    add e
    nop
    db $e4
    inc bc
    inc e
    inc bc
    dec de
    dec de
    add e
    ld bc, $c411
    ld bc, $833f
    ld bc, $0286
    scf
    dec de
    dec e
    add h
    nop
    adc $01
    inc bc
    ld [de], a
    add e
    ld bc, $0c33
    nop
    inc bc
    dec e
    ld a, [de]
    inc e
    ld [de], a
    dec de
    inc bc
    inc bc
    dec d
    inc bc
    ld [de], a
    inc bc
    ld [hl+], a
    xor b
    dec b
    inc e
    ld [de], a
    dec e
    dec d
    dec e
    dec de
    ld b, c
    inc a
    ld d, $00
    inc a
    ld [hl+], a
    xor l
    add h
    ld bc, $05f8
    inc a
    nop
    rla
    nop
    jr jr_006_69bf

jr_006_69bf:
    ld [hl+], a
    xor l
    call nz, $0a02
    ld [bc], a
    nop
    nop
    jr jr_006_69eb

    nop
    add e
    ld [bc], a
    dec bc
    add h
    ld [bc], a
    inc de
    inc h
    inc sp
    ld [hl+], a
    xor l
    dec h
    inc sp
    rst $38
    add hl, bc
    ld a, [de]
    inc bc
    dec e
    inc bc
    inc e
    dec de
    ld a, [de]
    inc bc
    inc e
    dec e
    jp $0700


    nop
    ld a, [de]
    add e
    nop
    add hl, bc
    nop

jr_006_69eb:
    add hl, de
    ld [hl+], a
    ld a, [hl-]
    nop
    ld c, e
    add hl, hl
    or d
    ld [bc], a
    dec b
    ld c, e
    dec b
    ld h, $a7
    nop
    inc h
    inc hl
    dec sp
    ld [bc], a
    and a
    inc bc
    dec de
    jp $0a00


    db $10
    dec e
    inc bc
    inc bc
    ld a, [de]
    dec de
    inc bc
    ld a, [de]
    dec de
    inc bc
    inc bc
    dec de
    dec e
    inc e
    inc bc
    dec de
    inc e
    inc bc
    adc b
    nop
    rla
    ld [hl+], a
    dec b
    ld [bc], a
    ld c, e
    dec b
    ld a, $24
    dec sp
    db $10
    and a
    inc hl
    dec b
    ld [hl], $05
    dec b
    and a
    ld c, $1c
    ld a, [de]
    inc bc
    inc bc
    ld a, [de]
    inc bc
    inc bc
    ld c, $03
    add l
    nop
    inc [hl]
    add e
    nop
    dec sp
    ld [bc], a
    inc e
    dec de
    dec de
    adc l
    nop
    ld c, c
    dec h
    dec b
    rrca
    and a
    inc hl
    dec b
    inc bc
    dec b
    dec b
    and a
    ld c, d
    ld a, [hl-]
    ld a, [hl-]
    ld sp, $3230
    ld a, [hl-]
    ld a, [hl-]
    ld c, d
    jp $3c00


    nop
    ld a, [de]
    add e
    nop
    ld b, l
    nop
    dec de
    inc hl
    inc bc
    adc c
    nop
    ld c, c
    inc hl
    and a
    rlca
    dec h
    dec b
    dec b
    and a
    and a
    dec h
    and a
    inc hl
    ld [hl+], a
    xor b
    ld b, $25
    and a
    ld c, d
    dec de
    inc e
    dec de
    add hl, bc
    ld h, d
    ld a, [de]
    inc b
    ld c, d
    add hl, de
    inc bc
    inc bc
    add hl, de
    ld [hl+], a
    inc bc
    nop
    add hl, de
    ld b, c
    inc bc
    ld a, [de]
    ld bc, $1919
    add h
    nop
    rla
    nop
    nop
    add h
    nop
    or e
    ld a, [bc]
    inc h
    dec sp
    dec sp
    ld h, $05
    dec b
    ld a, $3b
    ld h, $a7
    inc hl
    ld [hl+], a
    xor l
    inc b
    inc hl
    and a
    ld c, d
    inc bc
    inc bc
    jp $cd00


    ld bc, $4a03
    add hl, hl
    inc bc
    nop
    ld [de], a
    adc l
    nop
    xor d
    nop
    inc hl
    add e
    nop
    cp h
    add h
    nop
    cp d
    add [hl]
    nop
    db $f4
    ld [hl+], a
    inc a
    nop
    add hl, bc
    jp $2f01


    jr z, jr_006_6b01

    ld bc, $163d
    ld [hl+], a
    inc a
    adc l
    ld bc, $0011
    ld a, $84
    nop
    db $eb
    adc c
    nop
    di
    ld bc, $0903
    call nz, $0501
    daa
    inc bc
    nop
    dec d
    jp Jump_006_7001


    adc e
    ld bc, $2811
    and a
    sub [hl]
    ld bc, $0126
    dec a
    ld d, $89
    ld bc, $003f
    nop
    add h
    ld bc, $8518
    nop
    ld d, a
    add e
    nop
    ld e, e
    add h
    nop
    push af
    inc b
    xor b
    xor b

jr_006_6b01:
    nop

Jump_006_6b02:
    nop
    add hl, bc
    jp $c501


    add e
    ld bc, $23c2
    nop
    ld [hl+], a
    inc de
    ld [hl+], a
    nop
    adc a
    nop
    xor l
    adc d
    ld bc, $0185
    xor l
    xor l
    inc h
    or h
    inc hl
    xor l
    add l
    ld bc, $05cc
    inc de
    inc de
    jr jr_006_6b25

jr_006_6b25:
    ld a, b
    ld a, b
    add a
    nop
    rla
    nop
    nop
    add [hl]
    nop
    add sp, -$7c
    nop
    ld d, a
    nop
    ld h, $84
    nop
    push af
    ld bc, $adb7
    inc h
    or l
    ld bc, $b7ad
    add h
    ld bc, $06fc
    ld a, b
    nop
    nop
    jr jr_006_6b60

    nop
    ld [hl], b
    adc h
    ld bc, $00d7
    inc hl
    add hl, hl
    dec b
    add l
    ld bc, $62ef
    xor c
    ld h, d
    xor c
    nop
    xor c
    jp $3002


    inc bc
    xor l
    xor b

jr_006_6b60:
    nop
    ld [hl], d
    ld [hl+], a
    nop
    ld bc, $0070
    add [hl]
    ld [bc], a
    ld e, c
    add e
    ld [bc], a
    ld e, d
    nop
    xor [hl]
    add l
    ld [bc], a
    ld [hl], e
    dec h
    xor [hl]
    add l
    ld bc, $26ef
    inc sp
    inc b
    xor l
    xor e
    xor l
    xor d
    or a
    add a
    ld [bc], a
    ld l, a
    ld a, [hl+]
    or [hl]
    nop
    jp nz, $02c5

    and e
    dec b
    xor d
    xor c
    xor e
    xor c
    xor d
    xor c
    add h
    nop
    push af
    rst $38
    inc bc
    inc e
    inc bc
    inc bc
    ld a, [de]
    inc h
    inc bc
    ld [bc], a
    add hl, de
    inc bc
    add hl, de
    ld [hl+], a
    xor l
    rla
    inc bc
    ld [$1b03], sp
    ld a, [de]
    inc bc
    inc e
    ld a, [de]
    add hl, de
    inc bc
    ld a, [de]
    ld a, [de]
    dec de
    inc bc
    ld a, [de]
    inc bc
    dec de
    inc e
    dec de
    inc bc
    inc e
    ld a, [de]
    ld a, [de]
    dec de
    ld b, c
    ld a, [de]
    inc bc
    add e
    nop
    jr @+$07

    add hl, de
    ld a, [de]
    inc bc
    ld [$a708], sp
    inc h
    cp [hl]
    inc bc
    and a
    dec de
    inc bc
    ld c, $83
    nop
    ld b, $04
    ld c, $03
    dec de
    inc bc
    add hl, de
    jp $0f00


    ld [bc], a
    dec de
    xor l
    dec de
    inc hl
    inc bc
    inc bc
    dec c
    inc bc
    dec de
    inc bc
    jp $1400


    ld [bc], a
    inc bc
    add hl, de
    ld [de], a
    ld [hl+], a
    add hl, de
    ld [bc], a
    inc bc
    inc bc
    dec c
    ld [hl+], a
    ld a, [hl-]
    nop
    dec c
    jp $5600


    ld bc, $0e1b
    add e
    nop
    ld sp, $2400
    inc hl
    dec sp
    inc bc
    and a
    inc bc
    add hl, de
    ld c, d
    inc hl
    ld a, [hl-]
    nop
    ld c, d
    call nz, $0700
    add hl, bc
    or c
    xor l
    xor l
    add hl, de
    xor l
    ld a, [de]
    inc bc
    ld [de], a
    inc bc
    inc bc
    jp $3200


    ld bc, $1c12
    ld b, c
    inc bc
    add hl, de
    ld a, [bc]
    dec d
    add hl, de
    dec de
    add hl, de
    add hl, de
    inc bc
    ld [$3b24], sp
    dec sp
    ld [$0084], sp
    dec h
    dec c
    ld c, d
    add hl, de
    ld [$a708], sp
    inc hl
    ld b, $38
    rlca
    dec b
    and a
    dec de
    inc bc
    ld c, d
    add e
    nop
    ld [hl], c
    nop
    ld c, d
    add h
    nop
    ld c, l
    nop
    inc bc
    ld [hl+], a
    and a
    ccf
    cp [hl]
    ld c, $0d
    cp [hl]
    cp [hl]
    and a
    inc h
    ld h, $06
    add hl, sp
    rlca
    dec b
    and a
    cp [hl]
    dec de
    ld c, d
    inc hl
    ld [hl+], a
    dec b
    nop
    ld c, d
    add h
    nop
    ld [bc], a
    ld [bc], a
    add hl, de
    inc bc
    add hl, de
    db $e4
    inc hl
    or e
    ld h, $05
    ld [bc], a
    and a
    or e
    inc bc
    add l
    nop
    pop af
    jp Jump_006_5b00


    add e
    nop
    ret nz

    sub h
    nop
    jp $0300


    add a
    ld bc, $c649
    nop
    ret


    ld [hl+], a
    dec b
    nop
    ld [hl], $c3
    ld bc, $0161
    inc a
    dec c
    add e
    nop
    ld a, [c]
    nop
    dec c
    inc hl
    inc a
    nop
    xor b
    ld [hl+], a
    xor l
    rlca
    inc a
    ld [$3c3c], sp
    ld d, $3c
    inc a
    ld c, d
    ld [hl+], a
    inc a
    nop
    ld d, $24
    inc a
    add l
    ld bc, $8482
    nop
    sbc [hl]
    add l
    ld bc, $0a89
    inc a
    ld [$a708], sp
    dec h
    dec b
    inc bc
    dec b
    dec b
    and a

Jump_006_6cbf:
    inc a
    ld b, h
    xor c
    xor e
    add e
    ld bc, $8373
    nop
    ld c, $03
    ld [de], a
    dec d
    inc bc
    inc bc
    add e
    nop
    ld a, [hl]
    nop
    dec d
    inc h
    inc bc
    add l
    ld bc, $03be
    ld [$0523], sp
    dec b
    push bc
    ld bc, $00ca
    ld [$0089], sp
    ld sp, $0300
    rst $38
    nop
    inc e
    ld [hl+], a
    inc bc
    inc bc
    ld a, [de]
    inc bc
    inc bc
    dec e
    inc h
    inc bc
    inc bc
    dec e
    add hl, de
    inc bc
    dec de
    add e
    nop
    ld a, [bc]
    ld bc, $1d1c
    jp $1200


    ld b, $1d
    inc bc
    dec de
    ld a, [de]
    dec e
    inc bc
    inc e
    add h
    nop
    jr jr_006_6d0d

jr_006_6d0d:
    inc e
    push bc
    nop
    inc e
    add a
    nop
    dec b
    add l
    nop
    ld [$1a0b], sp
    ld a, [de]
    inc e
    inc bc
    inc e
    inc e
    inc bc
    dec de
    dec e
    inc bc
    add hl, de
    inc bc
    add e
    nop
    ccf
    nop
    dec e
    call nz, Call_006_4b00
    ld bc, $1a03
    add h
    nop
    ld c, d
    call nz, $2f00
    dec b
    inc e
    dec e
    dec de
    dec e
    inc e
    ld a, [de]
    jp $0400


    jr z, jr_006_6d44

    inc b
    ld a, [de]
    inc bc

jr_006_6d44:
    inc e
    inc bc
    ld a, [de]
    ld b, c
    inc bc
    dec de
    ld [bc], a
    inc e
    inc bc
    inc e
    add e
    nop
    add hl, de
    ld bc, $1903
    adc b
    nop
    ld a, c
    rlca
    dec de
    dec de
    add hl, de
    dec e
    scf
    dec de
    dec e
    inc bc
    jp $8d00


    inc bc
    inc bc
    ld bc, $5655
    add e
    nop
    rla
    nop
    ld a, [de]
    add e
    nop
    ld hl, $0083
    dec b
    dec b
    add hl, de
    ld [de], a
    inc bc
    inc bc
    ld a, [de]
    add hl, de
    jp Jump_006_5f00


    nop
    dec de
    jp $0700


    add e
    nop
    xor [hl]
    jp Jump_006_5e00


    dec b
    dec e
    dec de
    nop
    dec e
    inc e
    ld [de], a
    call nz, Call_006_5e00
    ld [bc], a
    ld h, d
    ld d, a
    ld e, c
    jp Jump_006_4800


    add [hl]
    nop
    ld [bc], a
    inc bc
    dec de
    add hl, de
    inc bc
    dec d
    add e
    nop
    ret nc

    ld b, $1b
    inc bc
    inc bc
    or a
    inc bc
    dec de
    ld a, [de]
    add h
    nop
    jr z, jr_006_6db3

    ld [de], a
    inc bc
    add hl, de

jr_006_6db3:
    ld a, [de]
    ld h, e
    ld a, [de]
    ld [bc], a
    inc e
    dec e
    dec d
    add h
    nop
    rst $08
    call $3a00
    inc b
    ld a, [de]
    inc bc
    dec de
    dec d
    dec de
    add e
    nop
    xor d
    inc bc
    inc bc
    dec e
    xor l
    add hl, de
    add e
    nop
    or e
    ld a, [bc]
    inc bc
    ld [de], a
    inc bc
    dec d
    inc e
    ld a, [de]
    inc bc
    inc e
    dec e
    dec de
    dec de
    add h
    ld bc, $871d
    nop
    ld sp, hl
    add e
    nop
    db $eb
    nop
    ld [de], a
    add e
    nop
    ld [c], a
    ld bc, $191c
    ld b, c
    add hl, de
    dec d

jr_006_6df1:
    nop
    inc e
    jp $1d01


    dec c
    xor l
    dec e
    inc bc
    inc e
    add hl, de
    ld [de], a
    add hl, de
    dec d
    inc e
    dec d
    inc bc
    inc e
    dec e
    ld a, [de]
    add [hl]
    ld bc, $004c
    inc bc
    add hl, hl
    inc a
    ld b, c
    ld d, $3c
    ld bc, $ad3c
    add a
    ld bc, $c364
    ld bc, $8c68
    ld bc, $886d
    ld bc, $2970
    nop
    ld b, c
    rla
    nop
    ld bc, $ad00
    add a
    ld bc, $0096
    jr jr_006_6df1

    ld bc, $caa2
    ld bc, $89aa
    ld bc, $27b0
    nop
    add e
    ld bc, $87b1
    ld bc, $c59e
    ld bc, $84bb
    ld bc, $869f
    ld bc, $00ca
    or a
    jp z, $dc01

    nop
    nop
    ld [hl+], a
    or a
    add a
    ld bc, $87c6
    ld bc, $cbab
    ld bc, $8ae4
    ld bc, $84fd
    ld bc, $22fe
    inc sp
    ld [hl+], a
    xor l
    jr z, jr_006_6e96

    adc c
    ld [bc], a
    dec hl
    adc h
    ld [bc], a
    ld [hl-], a
    adc e
    ld [bc], a
    inc sp
    rst $38
    ld bc, $031d
    ld b, c
    inc bc
    add hl, de
    ld b, c
    dec de
    add hl, de
    ld a, [bc]
    inc bc
    dec de
    dec e
    add hl, de
    add hl, de
    dec e
    add hl, de
    add hl, de
    ld a, [de]
    add hl, de
    add hl, de
    ld [hl+], a
    inc bc
    ld [$031e], sp
    inc e
    inc bc
    dec e
    dec de
    dec de
    add hl, de
    dec de
    call nz, $1700
    ld [hl+], a
    inc bc
    add hl, bc
    dec e
    inc bc

jr_006_6e96:
    add hl, de
    dec e
    dec de
    inc e
    inc e
    inc bc
    dec de
    ld a, [de]
    jp $2200


    jp $2b00


    dec b
    ld a, [de]
    inc bc
    dec de
    dec e
    inc bc
    inc bc
    jp $3500


    nop
    inc e
    jp $2900


    ld bc, $031b
    add e
    nop
    ld [$0303], sp
    inc e
    add hl, de
    inc e
    call nz, ExecuteTitlescreen
    nop
    inc e
    add e
    nop
    dec a
    jp $0400


    add e
    nop
    jr nz, jr_006_6ece

    inc bc

jr_006_6ece:
    dec e
    add e
    nop
    ld b, b
    dec b
    inc e
    inc e
    dec de
    inc e
    add hl, de
    inc bc
    add e
    nop
    add hl, de
    add h
    nop
    ld h, e
    nop
    ld a, [de]
    add e
    nop
    inc d
    nop
    inc bc
    jp $6d00


    add e
    nop
    ld [hl], e
    jp $8100


    jp $6c00


    ld b, c
    dec de
    inc bc
    ld bc, $1d1d
    jp Jump_006_5100


    ld [bc], a
    inc e
    inc bc
    dec de
    add h
    nop
    adc c
    add e
    nop
    ld d, e
    jp $a000


    nop
    dec e
    add e
    nop
    ld b, d
    call nz, $9c00
    nop
    inc bc
    add e
    nop
    ld b, l
    nop
    ld a, [de]
    push bc
    nop
    and c
    push bc
    nop
    ld l, e
    db $c3, $00, $41


    ld b, d
    inc bc
    inc e
    add h
    nop
    jr nc, @-$79

    nop
    ld [hl], h
    add l
    nop
    adc d
    ld bc, $1b1a
    jp $b800


    add h
    nop
    add d
    push bc
    nop
    cp l
    add l
    nop
    rst $20
    add h
    nop
    cp a
    nop
    ld a, [de]
    push bc
    nop
    sub b
    nop
    inc e
    push bc
    nop
    pop af
    add e
    nop
    ld c, e
    nop
    inc bc
    jp $3d00


    add $00
    ldh [$85], a
    ld bc, $0007
    add hl, de
    add l
    ld bc, $8606
    ld bc, $2522
    inc bc
    inc sp
    ld [bc], a
    ld [hl], $01
    nop
    ld d, c
    ld [hl], $01
    ld [bc], a
    ld d, l
    ld d, [hl]
    nop
    ld h, $01
    inc bc
    ld d, a
    ld e, b
    ld e, d
    ld d, d
    adc l
    ld bc, $876d
    ld bc, $0186
    ld d, a
    ld e, c
    inc h
    ld bc, $5d01
    ld d, e
    daa
    ld bc, $0001
    nop
    add l
    ld bc, $0186
    ld d, l
    ld d, [hl]
    add l
    ld bc, $069e
    ld d, l
    ld d, [hl]
    nop
    nop
    ld bc, $8560
    add h
    ld bc, $0780
    nop
    nop
    ld bc, $8786
    ld bc, $5250
    adc b
    ld bc, $879b
    ld bc, $0073
    ld d, h
    add h
    ld bc, $0aa5
    ld h, b
    ld bc, $0058
    nop
    ld [hl], b
    adc b
    adc b
    ld h, d
    ld bc, $8364
    ld bc, $059b
    ld h, h
    adc e
    adc e
    ld h, [hl]
    ld bc, $8601
    ld bc, $02a5
    ld d, l
    ld e, l
    ld d, e
    add h
    ld bc, $83ae
    ld bc, $01be
    ld [hl], b
    ld e, d
    add e
    ld bc, $039e
    ld d, a
    ld e, b
    ld [hl], b
    adc b
    add e
    ld bc, $037b
    ld d, l
    ld d, [hl]
    ld [hl], b
    adc b
    ld [hl+], a
    nop
    nop
    ld h, d
    add e
    ld bc, $0581
    ld [hl], h
    nop
    nop
    adc e
    nop
    nop
    add e
    ld bc, $83c4
    ld bc, $03cc
    add [hl]
    nop
    halt
    add h
    ld bc, $02e3

Jump_006_7001:
    ld d, l
    ld d, e
    nop
    ld [hl+], a
    adc b
    dec b
    ld [hl], d
    nop
    ld d, d
    ld bc, $5957
    ld [hl+], a
    nop
    rlca
    adc e
    ld h, [hl]
    ld e, c
    ld bc, $8584
    ld bc, $8374
    ld bc, $05fa
    ld bc, $8601
    nop
    add l
    db $76
    add e

jr_006_7023:
    ld bc, $0b86
    ld d, l
    ld d, [hl]
    ld [hl], b
    nop
    nop
    ld e, c
    ld d, l
    ld d, e
    ld bc, $0050
    ld a, c
    jp Jump_006_6b02


    stop
    nop
    ld d, h
    ld d, e
    ld d, a
    ld e, c
    add [hl]
    nop
    ld [hl], h
    ld [hl], d
    nop
    nop
    ld [hl], b
    ld [hl], d
    ld [hl], b
    add l
    ld h, b
    ld [hl+], a
    nop
    ld [bc], a
    ld [hl], d
    nop
    ld [hl], h
    inc hl
    nop
    inc b
    ld [hl], b
    ld [hl], d
    nop
    nop
    ld a, d
    ret z

    ld [bc], a
    sub d
    nop
    adc b
    add e
    ld [bc], a
    add c
    nop
    ld a, b
    jp $8302


    call nz, $8502
    inc bc
    ld [hl], b
    nop
    ld [hl], b
    ld a, h
    add h
    ld [bc], a
    adc a
    ld b, c
    ld [hl], b
    nop
    add l
    ld [bc], a
    and e
    rst $00
    ld [bc], a
    sub l
    add e
    ld [bc], a
    or d
    rlca
    ld a, b
    ld a, b
    ld [hl], e
    ld [hl], b
    ld [hl], d
    ld a, b
    nop
    nop
    add e
    ld [bc], a
    and l
    nop
    ld a, c
    adc b
    ld [bc], a
    pop bc
    inc hl
    nop
    add e
    ld [bc], a
    jp c, $0024

    nop
    db $10
    jr z, jr_006_7095

jr_006_7095:
    nop
    jr jr_006_7023

    ld [bc], a
    ldh a, [$8d]
    ld [bc], a
    jp hl


    ld [bc], a
    stop
    ld c, $83
    inc bc
    ld b, $05
    ld c, $10
    nop
    rla
    nop
    ld c, $23
    rrca
    ld bc, $170e
    jp $1b03


    nop
    inc h
    ld [hl+], a
    dec sp
    nop
    ld c, $83
    inc bc
    rlca
    ld bc, $5f0e
    ld [hl+], a
    ld e, [hl]
    and e
    ld [bc], a
    sub a
    ld bc, $2121
    inc hl
    rra
    ld [bc], a
    ld [hl+], a
    ld [hl+], a
    nop
    add hl, hl
    rrca
    ld b, h
    inc h
    ld c, d
    add hl, hl
    rrca
    inc bc
    ld c, d
    inc h
    dec sp
    dec sp
    add e
    inc bc
    ld h, [hl]
    dec b
    ld c, d
    inc h
    dec c
    ld e, a
    ld e, [hl]
    ld e, [hl]
    add e
    inc bc
    ld [hl], b
    ld bc, $5f0d
    add hl, hl
    rrca
    ld bc, $3b3b
    add l
    inc bc
    inc l
    dec b
    inc h
    dec sp
    dec b
    dec b
    ld c, d
    inc hl
    ld [hl+], a
    dec b
    ld [bc], a
    ld c, d
    inc hl
    dec b
    add l
    inc bc
    ld [hl], d
    add e
    inc bc
    ld [hl], e
    adc d
    inc bc
    ld a, d
    add h
    inc bc
    inc l
    add e
    inc bc
    add h
    add l
    inc bc
    adc a
    add h
    inc bc
    adc [hl]
    add e
    inc bc
    sub b
    nop
    ld [hl], $83
    inc bc
    adc [hl]
    add h
    inc bc
    ld [hl], e
    nop
    inc bc
    add e
    inc bc
    ld [hl], d
    ld h, d
    xor c
    ld h, d
    xor c
    add e
    inc bc
    call nc, $0029
    rst $38
    add hl, hl
    rrca
    ld bc, $0d3b
    dec h
    dec sp
    ld [de], a
    dec c
    dec sp
    dec b
    jr nz, jr_006_713f

    ld b, $38
    jr c, @+$09

    dec b

jr_006_713f:
    jr nz, jr_006_7146

    dec b
    add hl, bc
    dec b
    ld b, $04

jr_006_7146:
    inc b
    rlca
    jp $2000


    inc b
    add hl, bc
    dec b
    ld b, $39
    add hl, sp
    add e
    nop
    inc h
    ld bc, $205e
    dec h
    ld e, [hl]
    dec bc
    jr nz, jr_006_71ba

    dec b
    dec c
    dec b
    ld hl, $1f1f
    ld [hl+], a
    dec b
    dec c
    dec b
    ld h, d
    xor c
    ld h, d
    xor c
    add e
    nop
    ld b, [hl]
    rst $38
    db $e4
    cpl
    daa
    nop
    ld l, $2a
    add hl, de
    ldh a, [$32]
    nop
    nop
    ld bc, $0705
    inc hl
    add hl, de
    ld bc, $1311
    sub l
    nop
    dec sp
    add hl, sp
    ld a, [hl+]
    add e
    nop
    cpl
    rlca
    ld b, $08
    add hl, de
    ld bc, $1903
    ld [de], a
    inc d
    sub h
    nop
    dec sp
    adc e
    nop
    jr nc, @+$30

    add hl, de
    ld bc, $2a2c
    ld [hl+], a
    jr z, @+$09

    ld h, $19
    ld [bc], a
    inc b
    add hl, de
    dec h
    jr z, @+$2a

    inc sp
    ld a, [hl+]
    ld bc, $192b
    add e
    nop
    xor l
    add e
    nop
    xor l
    add a
    ld bc, $8806
    ld bc, $e406

jr_006_71ba:
    inc hl
    add hl, de
    ld bc, $0402
    add e
    ld bc, $8741
    ld bc, $8941
    ld bc, $2341
    add hl, de
    ld bc, $0b09
    inc hl
    add hl, de
    ld bc, $0f0d
    db $e4
    inc sp
    add hl, de
    ld bc, $0c0a
    inc hl
    add hl, de
    ld [bc], a
    ld c, $10
    add hl, de
    db $e4
    dec sp
    add hl, hl
    rst $38
    inc hl
    nop
    ld [bc], a
    inc h
    inc h
    ld a, [de]
    inc hl
    nop
    nop
    dec de
    push bc
    nop
    dec b
    add h
    nop
    nop
    add h
    nop
    ld b, $83
    nop
    add hl, bc
    daa
    nop
    add e
    nop
    ld b, $01
    ld bc, $8303
    nop
    ld [$002b], sp
    ld bc, $0402
    dec hl
    nop
    nop
    rra
    daa
    nop
    nop
    inc e
    daa
    nop
    nop
    jr nz, jr_006_723c

    ld [hl+], a
    nop
    dec e
    daa
    nop
    nop
    ld hl, $2327
    nop
    ld e, $23
    nop
    ld sp, $ff29
    inc b
    inc bc
    inc bc
    rla
    dec d
    jr jr_006_728e

    inc sp
    ld a, [bc]
    nop
    nop
    inc hl
    nop
    nop
    inc sp
    inc [hl]
    nop
    nop
    ld [hl], $37
    add e
    nop
    inc c

jr_006_723c:
    ld b, $36
    scf
    nop
    rla
    inc e
    dec d
    add hl, de
    add h
    nop
    nop
    add h
    nop
    rrca
    nop
    inc hl
    add e
    nop
    inc c
    inc bc
    inc sp
    inc [hl]
    nop
    dec [hl]
    ld [hl+], a
    nop
    add e
    nop
    ld a, [hl+]
    ld [bc], a
    ld e, h
    ld c, b
    inc e
    add l
    nop
    dec e
    inc h
    inc h
    nop
    inc hl
    inc h
    nop
    nop
    dec [hl]
    add e
    nop
    db $10
    inc h
    nop
    ld [$0317], sp

Jump_006_7270:
    dec d
    inc e
    sub l
    inc bc
    rla
    dec d
    sub h
    dec h
    sub e
    nop
    sub l
    inc hl
    nop
    add h
    nop
    ld c, [hl]
    add e
    nop
    dec c
    inc b
    nop
    sub h
    sub e
    sub l
    dec d
    add h
    nop
    nop
    inc h
    inc bc

jr_006_728e:
    nop
    sbc l
    add l
    nop
    dec bc
    push bc
    nop
    ld c, h
    add hl, bc
    nop
    inc sp
    inc [hl]
    ld e, l
    ld a, [de]
    add hl, de
    ld a, [de]
    inc bc
    sub h
    sub l
    add [hl]
    nop
    ld a, e
    nop
    sub b
    add l
    nop
    adc h
    add l
    nop
    ld de, $0022
    inc bc
    ld e, h
    dec d
    dec d
    inc e
    adc c
    nop
    ld a, b
    ld bc, $2490
    dec hl
    nop
    ld b, $94
    sub l
    rla
    add hl, de
    ld a, [de]
    inc e
    daa
    add e
    nop
    ld e, e
    ld b, $95
    inc bc
    ld h, $27
    inc bc
    sub b
    dec d
    adc d
    nop
    cp a
    rlca
    ld a, [hl+]
    ld e, b
    ld e, c
    ld e, h
    dec d
    add hl, de
    ld a, [de]
    nop
    add l
    nop
    ld a, c
    ld b, $00
    nop
    inc bc
    sub b
    dec d
    dec d
    inc h
    add e
    nop
    ld [hl], e
    add e
    nop
    and $08
    dec l
    ld e, b
    ld bc, $1701
    inc e
    dec d
    inc e
    ld e, d
    add l
    nop
    sub a
    add e
    nop
    rst $30
    nop
    dec bc
    add e
    nop
    ei
    dec b
    sbc l
    ld a, [hl+]
    dec hl
    nop
    ld e, d
    ld e, b
    inc hl
    ld bc, $1704
    sub h
    sub l
    dec d
    ld bc, $0085
    ld a, c
    inc b
    add hl, hl
    ld e, d
    inc bc
    sub b
    dec bc
    add e
    ld bc, $0319
    sub b
    ld e, b
    ld e, c
    ld e, e
    dec h
    ld bc, $5c04
    dec d
    inc e
    add hl, de
    ld l, $85
    nop
    db $d3
    ld bc, $2e2e
    add e
    ld bc, $0335
    dec bc
    dec d
    dec d
    sub b
    ld h, $2e
    ld a, [bc]
    adc [hl]
    ld l, $5d
    ld a, [de]
    inc e
    dec d
    ld e, $1e
    rla
    dec d
    jr jr_006_7369

    ld e, $01
    sub b
    ld e, $83
    ld bc, $8555
    nop
    cp [hl]
    add e
    nop
    ld e, [hl]
    inc b
    sub l
    sub h
    sub e
    sub e
    rra
    add e
    nop
    sub a
    inc h
    rra
    ld [bc], a
    sub b
    rra
    rra
    jp Jump_006_5701


    add l
    nop
    db $dd
    ld [bc], a
    daa

jr_006_7369:
    sbc l
    ld h, $83
    nop
    ld a, [de]
    add l
    ld bc, $c47d
    nop
    and h
    ld [hl+], a
    nop
    add e
    ld bc, $8594
    nop
    db $dd
    ld a, [bc]
    sub b
    nop
    ld e, h
    add hl, de
    ld a, [de]
    add hl, de
    dec h
    dec h
    rla
    dec d
    jr jr_006_73ad

    dec h
    nop
    sub b
    inc hl
    dec h
    nop
    dec bc
    add l
    ld bc, $8318
    ld bc, $03ac
    ld e, l
    ld a, [de]
    dec d
    dec d
    rst $38
    inc d
    ld a, [hl+]
    jr z, jr_006_73a0

jr_006_73a0:
    daa
    db $10
    ld de, $2814
    nop
    daa
    nop
    ld a, [de]
    ld a, [de]
    nop
    jr z, @+$21

jr_006_73ad:
    nop
    nop
    ld a, [hl+]
    nop
    ld h, $24
    nop
    rlca
    jr z, jr_006_73c7

    ld de, $1215
    inc de
    dec c
    add hl, hl
    add l
    nop
    add hl, bc
    ld bc, $1f00
    add h
    nop
    inc d
    ld a, [de]

jr_006_73c7:
    ld h, $00
    nop
    ld a, [hl+]
    jr z, jr_006_73cd

jr_006_73cd:
    ld [de], a
    inc de
    dec c
    ld h, $16
    nop
    nop
    rla
    ld a, [de]
    ld a, [de]
    ld a, [hl+]
    jr z, jr_006_73da

jr_006_73da:
    nop
    ld c, b
    ld c, b
    ld h, $00
    ld l, b
    ld l, c
    ld h, a
    add e
    nop
    ld b, l
    rlca
    ld hl, $3021
    ld hl, $3021
    ld hl, $226d
    ld e, c
    ld [bc], a
    ld l, a
    ld hl, $2221
    ld c, b
    ld [hl+], a
    ld hl, $4f00
    inc hl
    ld hl, $4f01
    ld l, b
    inc h
    ld l, c
    inc b
    ld h, a
    nop
    nop
    ld l, e
    ld d, h
    jr z, jr_006_7462

    ld b, $4f
    nop
    nop
    ld l, b
    ld l, c
    ld l, c
    dec bc
    inc h
    ld c, c
    inc hl
    dec bc
    nop
    ld l, d
    dec h
    ld e, e
    add e
    nop
    ld l, b
    dec b
    ld h, a
    nop
    nop
    ld c, a
    ld c, a
    ld a, e
    inc h
    ld c, [hl]
    inc h
    ld a, e
    nop
    ld l, h
    dec h
    ld d, l
    ld [hl+], a
    ld c, a
    ld [hl+], a
    nop
    ld bc, $4f4f
    inc [hl]
    ld h, b
    dec b
    ld d, d
    nop
    ld d, b
    ld h, b
    ld h, b
    ld e, h
    daa
    ld h, c
    ld b, c
    ld [hl], b
    ld h, c
    daa
    ld h, c
    dec b
    ld d, e
    nop
    ld d, c
    ld h, c
    ld e, [hl]
    ld d, d
    daa
    inc bc
    ld b, c
    ld a, h
    inc bc
    daa
    inc bc
    ld [$0014], sp
    nop
    inc bc
    ld h, d
    ld d, e
    inc bc
    inc bc
    cpl
    jr nc, jr_006_745f

    ld [$1109], sp

jr_006_745f:
    inc d
    inc bc
    ld h, d

jr_006_7462:
    ld d, d
    inc bc
    inc bc
    nop
    jr nc, jr_006_746b

    dec b
    ld [de], a
    inc de

jr_006_746b:
    add hl, bc
    inc bc
    ld h, d
    ld d, e
    ld b, c
    ld a, [hl-]
    dec sp
    ld [bc], a
    ld a, [hl-]
    ld d, b
    ld d, d
    ld b, c
    ld a, [hl]
    ld a, a
    ld bc, $507e
    add [hl]
    nop
    ld [$1105], a
    ld c, $11
    inc bc
    ld h, d
    ld e, l
    inc h
    ld h, b
    ld bc, $5d5f
    inc h
    ld [hl], c
    nop
    ld e, a
    add l
    ld bc, $2452
    ld c, b
    nop
    ld e, a
    rst $38
    nop
    dec e
    ld b, c
    inc bc
    add hl, de
    dec bc
    inc bc
    dec de
    inc bc
    inc e
    inc bc
    inc bc
    inc e
    inc bc
    add hl, de
    scf
    inc bc
    ld a, [de]
    ld h, $03
    ld a, [bc]
    nop
    add hl, de
    inc bc
    ld e, $19
    dec e
    inc bc
    inc e
    dec e
    add hl, de
    or a
    add h
    nop
    ld bc, $0323
    dec bc
    ld c, d
    inc bc
    dec e
    add hl, de
    inc bc
    add hl, de
    add hl, de
    inc bc
    inc bc
    inc e
    ld c, d
    add hl, de
    jp $1200


    ld [bc], a
    inc e
    inc bc
    add hl, de
    add e
    nop
    dec hl
    push bc
    nop
    dec hl
    nop
    add hl, de
    add e
    nop
    ld [hl], $01
    dec de
    add hl, de
    add e
    nop
    rrca
    jp $2c00


    add e
    nop
    ld h, $08
    add hl, de
    inc e
    ld c, d
    inc bc
    dec de
    ld a, [de]
    inc bc
    add hl, de
    inc e
    push bc
    nop
    ld d, a
    push bc
    nop
    ld b, [hl]
    add l
    nop
    ld c, c
    add h
    nop
    rrca
    nop
    ld c, $83
    nop
    dec h
    nop
    dec e
    inc hl
    inc a
    dec b
    ld c, d
    inc a
    inc a
    dec a
    dec a
    inc a
    inc hl
    nop
    rrca
    ld c, d
    nop
    nop
    rla
    rla
    nop
    ld a, b
    nop
    nop
    ld [hl], b
    ld c, d
    ld a, b
    ld a, b
    jr jr_006_7537

    nop
    ld b, c
    ld [hl], b
    ld [hl], d
    inc bc
    ld c, d
    nop
    nop
    ld [hl], d
    ld [hl+], a
    nop
    dec c
    sub b
    sub h
    sub d
    ld c, d
    nop
    nop
    ld [hl], b
    ld [hl], d
    ld a, b
    nop
    and b
    pop bc

jr_006_7537:
    and d
    ld c, d
    jp $b200


    rlca
    ld [hl], d
    ld a, b
    nop
    jp nz, $4a00

    nop
    ld a, e
    ld [hl+], a
    nop
    ld [bc], a
    ld [hl], b
    ld [hl], d
    jp $00c5


    sub c
    dec b
    ld [hl], c
    nop
    nop
    call nz, Call_006_4a78
    add e
    nop
    xor d
    jr jr_006_75cf

    nop
    nop
    xor a
    nop
    ld c, d
    ld [hl], d
    and b
    and h
    and d
    ld a, b
    sub h
    sub d
    nop
    nop
    ld c, $76
    nop
    nop
    ld [hl], b
    pop bc
    and h
    and d
    nop
    db $76
    add e
    nop
    xor [hl]
    dec bc
    nop
    jp nz, Jump_006_646b

    ld h, [hl]
    ld l, e
    ld c, d
    ld h, h
    pop bc
    ld l, e
    ld l, e
    jp $0123


    ld b, $4a
    ld bc, $01c2
    add h
    call nz, $8351
    ld bc, $1a05
    ld d, c
    jp $0084


    xor a
    ld bc, $6c01
    ld bc, $014A
    call nz, $0000
    ld [hl], b
    ld bc, $01c1
    ld bc, $694a
    xor a
    nop
    nop
    ld [hl], h
    ld d, b
    jp nz, $0183

    ld b, $05
    ld h, h
    adc e
    adc e
    nop
    add l
    jp $0183


    ld b, $05
    ld l, h
    ld bc, $64c1
    ld [hl], b
    call nz, $0183
    ld b, $e0
    ld hl, $0101
    jp nz, $0001

    xor a
    ld h, d
    ld bc, $500e
    ld d, d

jr_006_75cf:
    ld bc, $01c3
    nop
    nop
    ld h, [hl]
    ld bc, $014A
    pop bc
    ld bc, $62c4
    adc e
    ld h, [hl]
    ld bc, $4a51
    ld bc, $60c2
    xor a
    nop
    ld [hl+], a
    ld bc, $600d
    ld c, d
    ld h, b
    jp Jump_006_7270


    nop
    ld d, d
    ld bc, $7069
    ld c, d
    ld [hl], d
    call nz, $0022
    inc bc
    ld bc, $8401
    nop
    call nz, $e000
    ld [bc], a
    nop
    pop bc
    ld l, c
    add e
    nop
    adc [hl]
    rrca
    adc e
    adc e
    nop
    nop
    jp nz, $8601

    adc e
    ld c, d
    ld h, [hl]
    ld l, h
    ld bc, $00c1
    jp $8662


    ld bc, $0242
    ld h, h
    call nz, $8700
    ld bc, $004c
    xor a
    add h
    ld bc, $0155
    ld bc, $8484
    ld bc, $065c
    ld bc, $014A
    add h
    nop
    xor a
    nop
    inc hl
    inc c
    ld bc, $0c4a
    inc hl
    ld a, [bc]
    inc b
    dec b
    dec b
    ld [hl], $05
    ld c, d
    ld h, $05
    nop
    inc bc
    add [hl]
    ld bc, $29cf
    xor b
    ld [bc], a
    rrca
    ld a, [hl-]
    ld a, [hl-]
    ld h, $0f
    rst $38
    ldh [$2b], a
    ld b, $04
    ld d, [hl]
    inc sp
    inc h
    ld h, $01
    ld h, $24
    ld bc, $2426
    dec h
    ld bc, $0126
    ld bc, $0831
    ld b, $04
    nop

jr_006_766b:
    nop
    ld a, a
    nop
    ld d, [hl]
    nop
    ld [de], a
    db $10
    ld de, $0013
    nop
    inc [hl]
    ld [hl], $32
    ld [hl-], a
    inc [hl]
    ld [hl], $56
    rlca
    dec b
    jr nc, jr_006_76a5

    add e
    nop
    dec c
    ld bc, $0126
    add l
    nop
    dec bc
    ld c, $01
    ld sp, $0709
    dec b
    ld d, [hl]
    ld [$047f], sp
    ld [$1406], sp
    nop
    nop
    dec d
    ld [hl+], a
    nop
    ld [$5d0a], sp
    nop
    dec bc
    ld [$0006], sp
    nop

jr_006_76a5:
    jr nc, jr_006_766b

    nop
    jr c, jr_006_76cd

    ld bc, $360f
    inc [hl]
    dec a
    dec a
    ld [hl], $00
    nop
    ld [$0406], sp
    add hl, bc
    ld a, a
    dec b
    add hl, bc
    rlca
    ld d, $84
    nop
    ld a, [de]
    rrca
    cpl
    add e
    ld e, a
    nop
    dec bc
    add hl, bc
    rlca
    ld [$0406], sp
    inc [hl]
    inc a
    dec sp

jr_006_76cd:
    scf
    dec a
    inc a
    ld [hl+], a
    add hl, sp
    inc bc
    ld a, [bc]
    dec bc
    ld c, c
    ld c, e
    add e
    nop
    ld h, e
    ld [$0507], sp
    nop
    ld a, a
    ld [$0406], sp
    ld d, $00
    add h
    nop
    ld b, e
    dec b
    ld a, [bc]
    inc bc
    nop
    dec bc
    nop
    nop
    add e
    nop
    adc e
    ld c, $44
    ld c, d
    ld e, e
    ld b, a
    ld c, d
    ld c, c
    ld c, h
    ld c, b
    ld a, [bc]
    dec bc
    jr nz, jr_006_7720

    ld a, d
    ld a, h
    ld l, e
    inc hl
    nop
    ld a, [bc]
    ld a, a
    add hl, bc
    rlca
    dec b
    ld d, $00
    rla
    nop
    nop
    add hl, de
    ld a, d
    inc h
    ld a, h
    inc de
    ld l, e
    nop
    ld a, [de]
    nop
    ld d, [hl]
    nop
    ld c, e
    ld e, e
    nop
    ld c, e
    ld a, [de]
    ld d, b
    nop
    ld a, [bc]

jr_006_7720:
    ld a, d
    ld a, h
    ld a, h
    ld [hl], d
    ld [hl], c
    ld d, c
    add e
    nop
    ld h, d
    add hl, bc
    ld a, a
    nop
    nop
    ld [$7a16], sp
    ld a, e
    ld c, $00
    ld a, d
    inc hl
    ld l, h
    add e
    nop
    ret c

    db $10
    dec de
    ld c, $0e
    jr nz, jr_006_7761

    ld e, e
    ld c, $22
    dec de
    inc hl
    ld a, d
    ld a, h
    ld h, l
    ld l, h
    ld l, c
    ld l, l
    ld l, a
    add l
    nop
    sbc [hl]
    rlca
    nop
    ld d, [hl]
    add hl, bc
    rla
    ld h, h
    ld l, h
    ld h, [hl]
    ld h, [hl]
    inc hl
    ld l, h
    inc b
    ld l, c
    ld l, l
    ld l, a
    ld d, [hl]
    ld a, h
    ld [hl+], a
    ld h, [hl]

jr_006_7761:
    ld [hl+], a
    ld a, h
    rlca
    ld a, e
    ld h, [hl]
    ld a, h
    ld a, h
    ld l, h
    ld l, b
    ld h, a
    ld l, c
    ld h, d
    ld l, l
    add hl, hl
    ld l, $06
    ld h, h
    ld l, b
    ld h, a
    ld h, a
    ld l, b
    ld l, b
    ld h, l
    add h
    ld bc, $ff26
    inc hl
    rst $38
    ldh [$6f], a
    nop
    inc b
    ld bc, $0205
    ld b, $03
    rlca
    ld [$090c], sp
    dec c
    ld a, [bc]
    ld c, $0b
    rrca
    db $10
    inc d
    jr jr_006_77ad

    ld d, $1a
    ld d, $1b
    dec d
    inc de
    inc e
    rra
    dec e
    rla
    ld e, $17
    db $10
    ld de, $3735
    ld [hl], $38
    ld d, $39
    ld [de], a
    inc de
    ld a, [hl-]
    dec a
    dec sp

jr_006_77ad:
    ld a, $3c
    ccf
    db $10
    ld de, $2d2a
    dec hl
    ld l, $2c
    cpl
    ld [de], a
    inc de
    jr nc, @+$19

    ld sp, $3233
    rla
    db $10
    ld de, $2220
    ld hl, $1623
    inc h
    ld [de], a
    inc de
    dec h
    jr z, jr_006_77f3

    add hl, hl
    daa
    rla
    ld c, e
    ld de, $4340
    ld b, c
    ld b, h
    ld b, d
    ld b, l
    ld [de], a
    ld c, d
    ld b, [hl]
    rla
    ld b, a
    ld c, c
    ld c, b
    rla
    ld d, b
    ld d, d
    ld d, c
    ld d, e
    ld a, l
    ld h, l
    ld h, l
    rst $38
    ld h, [hl]
    ld a, l
    rst $38
    ld h, [hl]
    rst $38
    rst $38
    ld h, b
    ld c, [hl]
    ld b, d
    ld h, c
    ld c, h

jr_006_77f3:
    dec b
    ld h, e
    ld e, a
    rst $38
    rst $38
    ld c, a
    ld h, b
    ld b, d
    ld c, l
    ld h, c
    ld bc, $625e
    dec h
    ld h, h
    ld bc, $ffff
    inc hl
    ld a, l
    rlca
    ld d, l
    ld e, d
    ld d, a
    ld e, c
    ld e, d
    ld d, [hl]
    ld e, c

jr_006_780f:
    ld e, b
    inc hl
    ld e, e
    ld [bc], a
    ld e, d
    ld e, d
    ld e, c
    add $00
    and d
    add hl, bc
    ld e, c
    ld e, c
    ld e, e
    ld e, l
    ld e, c
    ld e, b
    ld e, h
    ld e, e
    ld d, a
    ld e, c
    ld b, c
    ld e, h
    ld e, e
    ld b, c
    ld e, e
    ld e, l
    rst $20
    ld b, e
    rst $38
    db $e4
    inc h
    nop
    ld a, [hl+]
    ld [bc], a
    nop
    call $e4ff
    ld b, c
    ld a, a
    nop
    dec l
    ld [hl+], a
    ld a, a
    ld b, $f1
    ld a, [c]
    ldh [$e6], a
    db $e4
    ld a, a
    push af
    push de
    nop
    ld b, l
    nop
    inc l
    ld h, d
    ld h, $02
    ld a, a
    dec h
    inc h
    ld [hl+], a
    ld a, a
    inc b
    ld [hl+], a
    inc hl
    ld a, a
    ld a, a
    inc l
    inc [hl]
    ld a, a
    ld [$7f2b], sp
    ld a, a
    ld a, [hl+]
    ld a, a
    ld a, a
    ld a, a
    dec h
    inc h
    ld sp, $067f
    ld a, [hl+]
    ld a, a
    and $f0
    db $e4
    db $e4
    db $ed
    add l
    nop
    and e
    nop
    pop af
    pop de
    nop
    and d
    nop
    add hl, hl
    adc b
    nop
    ld e, a
    nop
    dec l
    call nc, $c500
    nop
    jr z, jr_006_780f

    nop
    ld e, c
    nop
    ld [hl+], a
    cpl
    ld a, a
    inc bc
    inc hl
    ld a, a
    inc sp
    inc [hl]
    dec a
    ld a, a
    ld [bc], a
    dec [hl]
    ld [hl], $7f
    add e
    nop
    ld l, d
    nop
    inc hl
    sbc b
    ld bc, $9e0c
    ld bc, $0204
    dec [hl]
    dec [hl]
    ld [hl], $26
    ld a, a
    ld b, c
    db $10
    ld [de], a
    sbc c
    ld bc, $0152
    db $10
    ld [de], a
    ld b, c
    inc de
    inc d
    cpl
    ld a, a
    daa
    ld c, e
    rst $10
    ld bc, $41a9
    dec d
    ld d, $26
    ld c, b
    dec b
    dec d
    ld d, $16
    jp nc, $d8d5

    ld l, $7f
    inc bc
    inc de
    add hl, de
    rla
    add hl, de
    add l
    ld bc, $06c4
    dec d
    rla
    rla
    add hl, de
    db $d3
    sub $d9
    inc a
    ld a, a
    ld [bc], a
    call nc, $dad7
    db $e4
    inc l
    ld a, a
    rst $38
    db $e4
    ld b, l
    ld a, a
    dec bc
    pop af
    ld a, [c]
    ldh [$e6], a
    db $e4
    ld a, a
    ld a, [$7f7f]
    ld a, [hl-]
    dec sp
    inc hl
    ld a, [hl-]
    ld a, a
    sbc a
    nop
    ld c, l
    sub [hl]
    nop
    ld c, l
    ld b, $e2
    ldh [$f1], a
    ld a, [c]
    db $eb
    db $e4
    ld a, a
    ld b, d
    db $eb
    xor $9c
    nop
    ld d, c
    nop
    inc sp
    sbc l
    nop
    ld c, a
    ld bc, $7e31
    sub d
    nop
    ld c, a
    ld bc, $3531
    add e
    ld bc, $0500
    inc sp
    ld [hl-], a
    inc [hl]
    dec [hl]
    ld sp, $937e
    nop
    xor $03
    ld a, [hl]
    ld a, [hl]
    dec [hl]
    ld [hl-], a
    ld h, $7e
    sub h
    ld bc, $2c0d
    ccf
    ldh a, [$3a]
    nop
    ld c, a
    nop
    ld d, l
    ld h, $54
    scf
    ld a, a
    nop
    ld e, b
    ld h, $57
    jr c, jr_006_79bb

    ld b, c
    ld d, b
    ld d, d
    inc bc
    ld d, b
    jp nc, $d8d5

    ld l, $7f
    ld b, e
    jr nz, jr_006_796a

    nop
    jr nz, @+$43

    ld b, [hl]
    ld b, a
    inc bc
    ld b, [hl]
    db $d3
    sub $d9
    inc a
    ld a, a
    ld [bc], a
    call nc, $dad7
    db $e4
    inc l
    ld a, a
    rst $38
    inc sp
    ld a, a
    dec h
    cp l
    push bc
    nop
    add hl, de
    sbc a
    nop
    nop
    inc c
    ld a, a
    ld a, a

jr_006_796a:
    dec l
    dec a
    ld c, l
    ld a, a
    pop af
    ld a, [c]
    ldh [$e6], a
    db $e4
    ld a, a
    ei
    sub h
    nop
    dec c
    inc bc
    ld l, $3e
    ld c, [hl]
    ld e, [hl]
    sbc e
    nop
    ld b, $03
    cpl
    ccf
    ld c, a
    ld e, a
    sbc h
    nop
    ld b, $0d
    inc l
    push hl
    db $eb
    xor $e0
    ld a, [c]
    ld a, a
    add sp, -$0f
    db $eb
    ldh [$ed], a
    db $e3
    pop af
    sub d
    nop
    sub c
    sbc [hl]
    nop
    inc b
    nop
    inc l
    add h
    nop
    ld b, b
    sbc e
    nop
    ret


    nop
    ld e, $83
    nop
    ld h, d
    sub a
    nop
    ld a, [bc]
    inc bc
    ld e, l
    inc l
    ld e, l
    rra
    add e
    nop
    add d
    ld h, $5d
    nop
    ld e, l
    sub h
    nop

jr_006_79bb:
    or d
    nop
    inc l
    adc c
    nop
    ret z

    sbc a
    ld bc, $8f32
    nop
    ld [de], a
    jr z, jr_006_79e5

    nop
    dec e
    sub l
    nop
    inc c
    jr z, jr_006_7a22

    nop
    ld b, e
    sub l
    nop

jr_006_79d4:
    inc c
    jr z, @+$1d

    inc h
    ld a, a
    ld [bc], a
    jp nc, $d8d5

    adc [hl]
    nop
    inc de
    ld b, e
    ld c, b
    ld e, b
    nop
    ld c, b

jr_006_79e5:
    ld b, c
    ld e, c
    ld c, c
    inc bc
    ld e, c
    db $d3
    sub $d9
    sbc h
    nop
    inc de
    ld [bc], a
    call nc, $dad7
    ldh a, [$2c]
    nop
    inc de
    rst $38
    inc sp
    ld a, a
    dec h
    cp l
    push bc
    nop
    add hl, de
    sbc a
    nop
    nop
    dec h
    ld a, a
    add hl, bc
    pop af
    ld a, [c]
    ldh [$e6], a
    db $e4
    ld a, a
    db $fc
    ld a, a
    ld a, a
    ld [bc], a
    sbc a
    nop
    db $10
    ld bc, $0602
    ldh a, [$31]
    nop
    ld [de], a
    inc c
    pop hl
    di
    pop hl
    pop hl
    db $eb
    db $f4
    ld a, a

jr_006_7a22:
    ld [c], a
    db $eb
    xor $f3
    db $e3
    pop af
    ldh a, [$32]
    nop
    ld de, $0001
    inc b
    ld [hl+], a
    ld a, a
    add l
    nop
    ldh [$93], a
    nop
    rrca
    ld [bc], a
    nop
    ld a, a
    ld b, $86
    nop
    rst $20
    inc b
    ld a, a
    ld a, a
    inc b
    inc e
    jr jr_006_79d4

    nop
    ld [de], a
    dec b
    jr jr_006_7a62

    ld e, $04
    nop
    inc b
    add l
    ld bc, $0309
    ld a, a
    ld b, $20
    add hl, de
    adc a
    nop
    ld [de], a
    inc b
    add hl, de
    add hl, de
    ld [hl+], a
    ld a, a
    inc e
    dec h
    jr jr_006_7a64

jr_006_7a62:
    ld e, $7f

jr_006_7a64:
    inc b
    sub l
    nop
    stop
    ld a, [de]
    dec h
    ld a, a
    inc bc
    dec de
    ld a, a
    ld a, a
    inc b
    sbc [hl]
    ld bc, $0151
    ld a, a
    inc b
    sub b
    ld bc, $0312
    ld e, $7f
    ld a, a
    jr nz, jr_006_7aa5

    add hl, de
    ld [bc], a
    ld [hl+], a
    ld a, a
    ld a, a
    sub c
    ld bc, $0410
    ld a, a
    dec de
    ld a, a
    ld a, a
    ld a, a
    ret z

    ld bc, $020e
    jp nc, $d8d5

    adc a
    ld bc, $0133
    ld [hl+], a
    nop
    ret


    ld bc, $030f
    ld a, a
    db $d3
    sub $d9
    sbc h
    nop

jr_006_7aa5:
    inc de
    ld [bc], a
    call nc, $dad7
    ldh a, [$2c]
    nop
    inc de
    rst $38
    db $e4
    ld h, [hl]
    ld a, a
    ld h, h
    ldh a, [rSB]
    ld a, a
    push af
    db $e4
    scf
    ld a, a
    ld [bc], a
    or $f7
    ld a, a
    ld b, d
    ld hl, sp-$07
    and $50
    ld a, a
    nop
    ld a, [$7f2a]
    nop
    ei
    pop de
    inc bc
    nop
    ld [bc], a
    ei

jr_006_7acf:
    ld a, [hl]
    ld a, [$0388]
    dec bc
    inc b
    ei
    ld a, [hl]
    ld a, [hl]
    db $fc
    ld a, [$038a]
    ld a, [bc]
    ld bc, $fafb
    add e
    inc bc
    ld a, [hl+]
    inc bc
    ld a, [hl]
    db $fc
    ld a, [hl]
    ld a, [hl]
    add e
    inc bc
    cpl
    nop
    db $fc
    jp Jump_006_4203


    inc bc
    ld a, [hl]
    ld a, [hl]
    ld a, [$85fb]
    inc bc
    ld b, e
    add h
    inc bc
    inc a
    add l
    inc bc
    ld c, d
    add [hl]
    inc bc
    ld c, l
    ld a, [hl+]
    ld a, [hl]
    add e
    inc bc
    ld d, b
    adc b
    inc bc
    ld e, l
    db $e4
    dec a
    ld a, [hl]
    rst $38
    daa
    nop
    inc bc
    ld bc, $0f03
    rlca
    ld [hl+], a
    inc c
    ldh [rLCDC], a
    inc e
    ld e, $1f
    inc a
    ld a, $7e
    ld e, h
    ld e, b
    adc h
    adc h
    adc b
    add b
    adc b
    adc b
    add b
    ret nz

    adc b
    ld a, b
    ret z

    ld hl, sp+$78
    xor h
    ret c

    db $f4
    adc h
    cp $84
    cp [hl]
    jp nz, Jump_006_43fc

    ld e, a
    ld h, c
    ccf
    ld h, b
    cpl
    jr nc, @+$21

    jr nc, jr_006_7b57

    jr @+$51

    jr c, jr_006_7acf

    ld a, h
    ld h, l
    ld e, $1b
    rlca
    nop
    nop
    rla
    rrca
    jr @+$32

    or e
    ld h, a
    rst $38
    rst $18
    ld hl, sp-$10
    ldh [$c0], a

jr_006_7b57:
    nop
    add b
    inc h
    nop
    ld [bc], a
    ld de, $1132
    inc hl
    ld [hl+], a
    ld bc, $2200
    dec h
    nop
    inc b
    stop
    db $10
    stop

jr_006_7b6c:
    rst $00
    nop
    ld d, h
    ld c, $80
    ld h, b
    ret nz

    rst $18
    ld h, b
    xor a
    ld [hl], b
    or b
    ld a, a
    cp a
    ld a, a
    ld h, b
    rst $38
    rst $08
    ldh a, [$a3]
    nop
    ld b, b
    ld c, $10
    inc c
    rst $20
    jp $ffff


    rra
    rrca
    inc c
    ld b, $0e
    inc b
    rlca
    ld b, $07
    ld [hl+], a
    inc bc
    ld bc, $0101
    add hl, hl
    nop
    dec e
    ld bc, $0703
    ld [bc], a
    rrca
    inc b
    dec bc
    inc c
    rra
    ld [$1817], sp
    ccf
    db $10
    cpl
    jr nc, @+$01

    jr nz, jr_006_7b6c

    ld h, b
    rst $18
    ld h, b
    ld e, a
    ldh [$df], a
    ldh [$ee], a
    pop af
    sbc a
    ld a, a
    dec h
    nop
    ld d, $40
    add b
    ldh [$e0], a
    ldh a, [$f0]
    ld a, b
    ld e, b
    ld a, h
    ld c, b
    db $fc
    ld l, h
    db $fc
    db $f4
    cp $fc
    rst $00
    ld [c], a
    jp $41c1


    ld bc, $4101
    ld bc, $e003
    jr z, jr_006_7bd9

    rst $00

jr_006_7bd9:
    add c
    ld a, [hl]
    jp nz, Jump_006_6cbf

    rst $38
    inc a
    rst $28
    inc h
    db $fc
    inc h
    rst $30
    inc l
    ld hl, sp+$2c
    and h
    ld a, b
    or b
    ld a, b
    ld hl, sp+$70
    ld b, [hl]
    ld hl, sp+$41
    cp $86
    ld hl, sp+$38
    ret nz

    ld b, b
    ld b, b
    ld [hl], b
    ld [hl], b
    jr c, jr_006_7c74

    inc a
    inc a
    inc d
    inc [hl]
    inc hl
    ld [de], a
    dec b
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    ld [$2308], sp
    inc b
    dec c
    inc e
    inc a
    ld a, h
    ld a, h
    cp b
    cp b
    ld [hl], b
    ld [hl], b
    nop
    jr nz, jr_006_7c37

    jr nc, jr_006_7c29

    jr nc, jr_006_7c3f

    db $10
    ld [bc], a
    jr jr_006_7c27

    jr @+$28

    ld [$0c00], sp
    ld b, c
    inc c
    inc e

jr_006_7c27:
    inc bc
    inc c

jr_006_7c29:
    inc c
    inc b
    inc c
    dec [hl]
    nop
    ld [bc], a
    ld de, $3300
    ld b, c
    nop
    ld [hl+], a
    inc bc
    ld [hl], a

jr_006_7c37:
    ld [hl+], a
    nop
    nop
    ld b, a
    nop
    cp l
    inc bc
    nop

jr_006_7c3f:
    rst $38
    nop
    nop
    ld b, d
    nop
    rst $38
    adc b
    ld bc, $006f
    add b
    ld b, e
    nop
    cp a
    inc bc
    nop
    cp h
    nop

jr_006_7c51:
    cp l
    xor a
    ld bc, $d07f
    ld bc, $af8f
    ld bc, $0fa0
    nop
    nop
    ld a, b
    jr nc, jr_006_7c9d

    jr jr_006_7c81

    inc e
    rra
    ld e, $1e
    inc e
    inc a
    jr jr_006_7ce3

    jr nc, jr_006_7c51

    cpl
    nop
    ld b, $10
    nop
    jr nz, jr_006_7c74

jr_006_7c74:
    ld b, b
    nop
    add c
    ld b, c
    nop
    ld bc, $0007
    add hl, de
    nop
    inc h
    nop
    ld b, d

jr_006_7c81:
    nop
    ld b, c
    jp $0302


    and [hl]
    ld bc, $00ff
    ld bc, $0042
    ld b, b
    add [hl]
    nop
    ld c, [hl]
    nop
    ld bc, $02a6
    rra
    nop
    pop hl
    ld b, c
    nop
    db $10
    ld b, c
    nop

jr_006_7c9d:
    ld de, $0001
    adc c
    ld b, d
    nop
    adc b
    ld bc, $0f00
    ld h, $00
    ld [bc], a
    rlca
    nop
    add d
    add [hl]
    ld [bc], a
    ld de, $0902
    nop
    ld b, $a5
    nop
    pop bc
    ld c, $00
    ld [bc], a
    nop
    dec e
    nop
    ld [hl+], a
    nop
    ld b, c
    nop
    add b
    nop
    inc c
    nop
    inc d
    nop
    and e
    nop
    ld h, a
    ld d, $c0
    nop
    ld hl, $d000
    nop
    jr z, jr_006_7cd3

jr_006_7cd3:
    inc d
    nop
    ld a, [bc]
    nop
    add l
    nop
    ld b, d
    nop
    ld hl, $1100
    nop
    ei
    nop
    ld c, $a4

jr_006_7ce3:
    ld [bc], a
    dec [hl]
    nop
    ldh a, [$83]
    nop
    ld l, e
    adc b
    ld [bc], a
    dec h
    nop
    ld bc, $02c6
    ld e, e
    inc c
    ld [$3c00], sp
    nop
    add $00
    inc bc
    nop
    ld de, $2900
    nop
    add hl, de
    add h
    nop
    ld l, e
    inc d
    ld b, c
    nop
    and c
    nop
    ld d, b
    nop
    ld c, b
    nop
    ld h, h
    nop
    ld a, [de]
    nop
    rlca
    nop
    add c
    nop
    pop hl
    nop
    ld e, d
    nop
    inc l
    add h
    ld [bc], a
    dec [hl]
    inc b
    ldh [rP1], a
    nop
    nop
    add b
    jr nc, jr_006_7d24

jr_006_7d24:
    ld [bc], a
    ld b, b
    nop
    and b
    add h
    ld [bc], a
    dec d
    ld b, $84
    nop
    ld b, h
    nop
    and d
    nop
    ld h, d
    add h
    ld [bc], a
    dec l
    db $10
    add c
    nop
    ld [hl], b
    nop
    ld [$c400], sp
    nop
    ld [hl+], a
    nop
    ld de, $8800
    nop
    ld c, b
    nop
    adc b
    ret nc

    ld [bc], a
    ld bc, $3810
    nop
    daa
    nop
    pop hl
    nop
    add d
    nop
    jp nz, MBC1RomBank

    nop
    cpl
    nop
    jr nc, jr_006_7d5c

jr_006_7d5c:
    add b
    inc a
    nop
    ld [bc], a
    ld bc, $0200
    ld [hl-], a
    nop
    inc hl
    ld h, e
    inc bc
    ld [hl], a
    ld [hl], a
    ld a, $3e
    dec h
    inc e
    rrca
    nop
    nop
    ld a, a
    ld a, a
    rlca
    rlca
    ld c, $0e
    inc e
    inc e
    jr c, jr_006_7db3

    ld [hl], b
    ld [hl], b
    ld a, a
    ld a, a
    sbc a

jr_006_7d80:
    inc bc
    ld h, b
    sbc a
    inc bc
    ld h, b
    ldh a, [rSTAT]
    inc bc
    ld h, b
    adc e
    inc bc
    inc d
    ld [bc], a
    inc h
    nop
    add b
    adc h
    inc bc
    ld b, e
    add e
    inc bc
    ld c, [hl]
    ld bc, $7c7c
    ld b, c
    sbc [hl]
    add d
    ld b, c
    cp $82
    ld bc, $7c7c
    dec h
    nop
    inc hl
    jr jr_006_7da7

jr_006_7da7:
    nop
    jp z, $3804

    nop
    jr c, jr_006_7def

jr_006_7dae:
    nop
    ld b, h
    push bc
    inc b
    ld b, a

jr_006_7db3:
    sub d
    inc b
    rra
    nop
    add b
    jp $4d00


    ld [$fefc], sp
    rst $38
    ld hl, sp-$04
    ldh [$f0], a
    add b
    ret nz

    and l
    ld [bc], a
    ld c, d
    ld [bc], a
    sbc b
    nop
    add [hl]
    add $04
    ld [hl], a
    ld bc, $0002
    ld b, c
    ld h, d
    ld h, b
    inc b
    ld [c], a
    ld h, b
    db $e4
    ld h, b
    ld h, h
    ld [hl+], a
    ld h, b
    add e
    inc bc
    ld a, [hl]
    ld b, $3c
    inc a
    db $18, $18

    sbc c
    jr jr_006_7d80

    ld [hl+], a
    jr jr_006_7dae

    inc b
    sub l
    db $e4
    ld e, a

jr_006_7def:
    nop

; free space padding
INCBIN "baserom.gb", $1bdf0, $1c000 - $1bdf0
