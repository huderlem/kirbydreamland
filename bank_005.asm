SECTION "ROM Bank $005", ROMX[$4000], BANK[$5]

    ld a, [$d3f4]
    ld l, a
    ld a, [$d3f3]
    ld h, a
    ld a, [$d056]
    ld c, a
    ld a, [$d055]
    ld b, a
    add hl, bc
    ld a, l
    ld [$d056], a
    ld a, h
    ld [$d055], a
    ret


    ld hl, $d1a0
    add hl, bc
    bit 7, [hl]
    ret z

    ld hl, $d140
    ld e, [hl]
    add hl, bc
    ld a, [hl]
    sub e
    ld de, $ffe2
    jr nc, jr_005_4032

    cpl
    inc a
    ld de, $001e

jr_005_4032:
    cp $0a
    jr c, jr_005_405d

    ld hl, wEntityHorizontalVelocities
    add hl, bc
    add hl, bc
    ld a, [hl]
    add e
    ld [hl+], a
    ld a, [hl]
    adc d
    ld [hl], a
    ld d, $03
    ld hl, $d150
    ld e, [hl]
    add hl, bc
    ld a, [hl]
    inc a
    sub e
    cpl
    inc a
    ld e, a
    xor a

jr_005_404f:
    sra e
    rra
    dec d
    jr nz, jr_005_404f

    ld hl, wEntityVerticalVelocities
    add hl, bc
    add hl, bc
    ld [hl+], a
    ld [hl], e
    ret


jr_005_405d:
    ld hl, $d190
    add hl, bc
    bit 6, [hl]
    jr z, jr_005_406c

    ld a, $01
    call Call_005_4600
    jr jr_005_407f

jr_005_406c:
    ld hl, $d3f7
    inc [hl]
    ld d, [hl]
    call Call_005_48dc
    inc hl

jr_005_4075:
    ld a, [hl]
    call Call_3168
    dec d
    jr nz, jr_005_4075

    call Call_000_21ce

jr_005_407f:
    ld hl, $ff8e
    set 3, [hl]
    ld hl, $ff93
    bit 5, [hl]
    jr nz, jr_005_4090

    ld hl, $ff94
    set 6, [hl]

jr_005_4090:
    ld hl, $d3f6
    dec [hl]
    jr nz, jr_005_40c1

    xor a
    ld [$d3f7], a
    ld hl, $ff94
    res 7, [hl]
    ld hl, $ff8e
    res 4, [hl]
    ld hl, $ff93
    set 1, [hl]
    ld a, $02
    call PlaySE
    ld hl, $d3be
    bit 0, [hl]
    jp nz, Jump_005_4761

    bit 4, [hl]
    jr z, jr_005_40c1

    res 4, [hl]
    ld hl, $ff93
    set 4, [hl]

jr_005_40c1:
    ret


    call Call_005_40d5
    ret c

    ld hl, $ff94
    set 7, [hl]
    jp Jump_005_415e


    call Call_005_40d5
    ret c

    jp Jump_005_415e


Call_005_40d5:
    ld hl, $d1b0
    add hl, bc
    set 5, [hl]
    ld hl, $d1a0
    add hl, bc
    bit 0, [hl]
    jr nz, jr_005_40e7

    res 3, [hl]

jr_005_40e5:
    scf
    ret


jr_005_40e7:
    res 0, [hl]
    bit 3, [hl]
    jr nz, jr_005_40e5

    set 3, [hl]
    xor a
    ret


    ld hl, $d1a0
    add hl, bc
    bit 0, [hl]
    jr z, jr_005_40fe

    res 0, [hl]
    set 3, [hl]
    ret


jr_005_40fe:
    bit 3, [hl]
    ret z

    res 3, [hl]
    jr jr_005_415e

    ld hl, $d1b0
    add hl, bc
    res 1, [hl]
    ld hl, $d1a0
    add hl, bc
    bit 0, [hl]
    ret z

    res 0, [hl]
    ld hl, $d1b0
    add hl, bc
    set 1, [hl]
    ld hl, $d0a0
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [$d034]
    and $06
    add $40
    ld e, a
    ld a, $41
    adc $00
    ld d, a
    ld a, [de]
    add [hl]
    ld [hl+], a
    inc de
    ld a, [de]
    ld d, $00
    bit 7, a
    jr z, jr_005_413a

    ld d, $ff

jr_005_413a:
    adc [hl]
    ld [hl+], a
    ld a, [hl]
    adc d
    ld [hl], a
    ret


    ret nz

    rst $38
    nop
    rst $38
    ld b, b
    nop
    nop
    ld bc, $4021
    pop de
    ld a, [hl]
    add hl, bc
    sub [hl]
    bit 7, a
    jr z, jr_005_4154

    cpl
    inc a

jr_005_4154:
    cp $03
    ret nc

    ld hl, $d150
    ld a, [hl]
    add hl, bc
    cp [hl]
    ret nc

Jump_005_415e:
jr_005_415e:
    ld hl, $d2ba
    add hl, bc
    add hl, bc
    ld d, h
    ld e, l
    ld hl, $d37a
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    jp $241f


    ld hl, $d1b0
    add hl, bc
    bit 7, [hl]
    ret z

    res 7, [hl]
    ld a, [$d3cd]
    and a
    ret z

jr_005_4180:
    ld hl, $d37a
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call $2708
    push bc
    jr c, jr_005_4195

    ld a, [$d3ba]
    ld c, a
    call $21d5

jr_005_4195:
    pop bc
    ret


    ld hl, $d1b0
    add hl, bc
    set 5, [hl]
    ld hl, $d1a0
    add hl, bc
    bit 0, [hl]
    jr nz, jr_005_41a8

    res 3, [hl]
    ret


jr_005_41a8:
    res 0, [hl]
    bit 3, [hl]
    ret nz

    set 3, [hl]
    jr jr_005_4180

    ld hl, $d1b0
    add hl, bc
    bit 6, [hl]
    ret z

    jp Jump_005_415e


    ld a, [$d3bc]
    add $28
    ld e, a
    ld hl, $d140
    add hl, bc
    ld a, [hl]
    add $28
    sub e
    jr nc, jr_005_41cd

    cpl
    inc a

jr_005_41cd:
    cp $18
    ret nc

    jp Jump_005_415e


    ld a, [$d3cf]
    ld hl, $ff8b
    bit 2, [hl]
    jr z, jr_005_41e1

    xor $01
    jr jr_005_41ee

jr_005_41e1:
    bit 7, [hl]
    jr z, jr_005_41e9

    ld a, $01
    jr jr_005_41ee

jr_005_41e9:
    bit 6, [hl]
    jr z, jr_005_41f4

    xor a

jr_005_41ee:
    ld [$d3cf], a
    jp Jump_005_415e


jr_005_41f4:
    ld a, [hl]
    and $09
    ret z

    ld a, $01
    ld [$d3ce], a
    jp Jump_005_415e


    ld a, [$d3ce]
    and a
    ret z

    jp Jump_005_415e


    ld hl, $d1a0
    add hl, bc
    bit 7, [hl]
    ret z

    ld de, $0014
    ld hl, $d140
    ld a, [hl]
    add hl, bc
    cp [hl]
    jr nc, jr_005_421d

    ld de, $ffec

jr_005_421d:
    ld hl, wEntityHorizontalVelocities
    call Call_005_4234
    ld de, $0014
    ld hl, $d150
    ld a, [hl]
    add hl, bc
    cp [hl]
    jr nc, jr_005_4231

    ld de, $ffec

jr_005_4231:
    ld hl, wEntityVerticalVelocities

Call_005_4234:
    add hl, bc
    add hl, bc
    ld a, [hl]
    add e
    ld [hl+], a
    ld a, [hl]
    adc d
    ld [hl], a
    bit 7, a
    jr nz, jr_005_4248

    cp $02
    jr c, jr_005_4251

    ld a, $02
    jr jr_005_424e

jr_005_4248:
    cp $fe
    jr nc, jr_005_4251

    ld a, $fe

jr_005_424e:
    ld [hl-], a
    xor a
    ld [hl], a

jr_005_4251:
    ret


    ld hl, $d1a0
    add hl, bc
    bit 7, [hl]
    ret z

    ld hl, $d140
    ld a, [hl]
    add hl, bc
    sub [hl]
    jr nc, jr_005_4263

    cpl
    inc a

jr_005_4263:
    cp $18
    ret nc

    ld hl, $d150
    ld a, [hl]
    add hl, bc
    sub [hl]
    jr nc, jr_005_4270

    cpl
    inc a

jr_005_4270:
    cp $18
    ret nc

    jp Jump_005_415e


    ld hl, $d140
    ld a, [hl]
    add $28
    ld e, a
    add hl, bc
    ld a, [hl]
    add $28
    sub e
    jr nc, jr_005_4286

    cpl
    inc a

jr_005_4286:
    cp $18
    ret nc

    jp Jump_005_415e


    push bc
    ld a, [$d3ba]
    ld c, a
    ld hl, $d140
    add hl, bc
    ld a, [hl]
    ld [$d053], a
    ld hl, $d150
    add hl, bc
    ld a, [hl]
    ld [$d055], a
    pop bc
    ret


    ld hl, $d140
    ld a, [hl]
    ld hl, $d0a1
    add hl, bc
    add hl, bc
    add hl, bc
    ld [hl], a
    ld hl, $d150
    ld a, [hl]
    ld hl, $d0d1
    add hl, bc
    add hl, bc
    add hl, bc
    ld [hl], a
    ld hl, $ff92
    bit 3, [hl]
    jp z, Call_000_21ce

    ret


    ld hl, $d37a
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    or d
    ret z

    dec de
    ld a, d
    ld [hl-], a
    ld [hl], e
    or e
    ret nz

    ld hl, $43b6
    ld de, $4008
    call Call_000_21e6
    ret


    push bc
    ld a, [$d3d3]
    ld c, a
    ld hl, $d140
    ld e, [hl]
    add hl, bc
    ld a, [hl]
    sub e
    ld de, $001e
    jr nc, jr_005_42f2

    cpl
    inc a
    ld de, $ffe2

jr_005_42f2:
    cp $0a
    jr c, jr_005_4318

    ld hl, wEntityHorizontalVelocities
    ld a, [hl]
    add e
    ld [hl+], a
    ld a, [hl]
    adc d
    ld [hl], a
    ld d, $03
    ld hl, $d150
    ld e, [hl]
    add hl, bc
    ld a, [hl]
    inc a
    sub e
    ld e, a
    xor a

jr_005_430b:
    sra e
    rra
    dec d
    jr nz, jr_005_430b

    ld hl, wEntityVerticalVelocities
    ld [hl+], a
    ld [hl], e
    pop bc
    ret


jr_005_4318:
    ld a, $ff
    ld [$d3d2], a
    ld c, $00
    ld hl, $4000
    ld de, $4008
    call Call_000_21e6
    pop bc
    jp $241f


Call_005_432c:
    call Call_005_4336
    call Call_005_4379
    call Call_005_43a4
    ret


Call_005_4336:
    ld c, $fc
    ld de, $0505
    ld_long a, $ff8e
    and $98
    jr nz, jr_005_4353

    ld c, $00
    ld de, $0303
    ld hl, $ff92
    bit 4, [hl]
    jr z, jr_005_4353

    ld c, $06
    ld de, $0201

jr_005_4353:
    ld a, [$d140]
    ld [$d412], a
    ld a, [$d150]
    add c
    ld [$d413], a
    ld bc, $0001

jr_005_4363:
    push de
    call Call_005_45b0
    jr c, jr_005_4371

    call Call_005_45d1
    jr nc, jr_005_4371

    call Call_005_43ef

jr_005_4371:
    pop de
    inc c
    ld a, c
    cp $0d
    jr nz, jr_005_4363

    ret


Call_005_4379:
    ld hl, $d16d
    ld a, [hl]
    and a
    ret z

    ld hl, $d1ad
    bit 7, [hl]
    ret z

    ld a, [$d1bd]
    bit 2, a
    ret nz

    ld [$d410], a
    ld a, [$d14d]
    ld [$d412], a
    ld a, [$d15d]
    ld [$d413], a
    ld a, $0d
    ld [$d411], a
    ld hl, $d1fa
    jr jr_005_43cd

Call_005_43a4:
    ld hl, $d16e
    ld a, [hl]
    and a
    ret z

    ld hl, $d1ae
    bit 7, [hl]
    ret z

    ld a, [$d1be]
    bit 2, a
    ret nz

    ld [$d410], a
    ld a, [$d14e]
    ld [$d412], a
    ld a, [$d15e]
    ld [$d413], a
    ld a, $0e
    ld [$d411], a
    ld hl, $d1fc

jr_005_43cd:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc hl
    ld d, [hl]
    inc hl
    ld e, [hl]
    ld bc, $0001

jr_005_43d7:
    push de
    call Call_005_45b0
    jr c, jr_005_43e7

    call Call_005_45d1
    jr nc, jr_005_43e7

    push bc
    call Call_005_448a
    pop bc

jr_005_43e7:
    pop de
    inc c
    ld a, c
    cp $0d
    jr nz, jr_005_43d7

    ret


Call_005_43ef:
    ld hl, $d190
    add hl, bc
    bit 6, [hl]
    jr z, jr_005_43fe

    push bc
    xor a
    call Call_005_4600
    pop bc
    ret


jr_005_43fe:
    call Call_005_48dc
    dec hl
    dec hl
    ld a, [hl+]
    ld [$d40b], a
    inc hl

Call_005_4408:
    ld a, [hl+]
    ld [$d40f], a
    ld a, [hl+]
    ld [$d40c], a
    ld a, [hl+]
    ld [$d40d], a
    ld a, [hl+]
    ld [$d40e], a
    ld hl, $d3e1
    ld a, [$d3f5]
    or [hl]
    inc hl
    or [hl]
    jr nz, jr_005_4466

    ld a, $5a
    ld [$d3f5], a
    ld hl, $d1a0
    set 5, [hl]
    ld_long a, $ff91
    bit 0, a
    jr nz, jr_005_4453

    ld hl, $ff94
    set 3, [hl]
    res 4, [hl]
    ld hl, $d140
    ld a, [hl]
    add hl, bc
    cp [hl]
    jr nc, jr_005_4448

    ld hl, $ff94
    set 4, [hl]

jr_005_4448:
    xor a
    ld [$d069], a
    ld a, $06
    call PlaySE
    jr jr_005_4458

jr_005_4453:
    ld a, $08
    call PlaySE

jr_005_4458:
    ld a, [$d40b]
    ld e, a
    ld a, [$d086]
    sub e
    jr nc, jr_005_4463

    xor a

jr_005_4463:
    ld [$d086], a

jr_005_4466:
    ld a, [$d40f]
    bit 3, a
    ret nz

    bit 0, a
    ret z

    call Call_005_456d
    ret nz

    ld a, [$d40c]
    add a
    call Call_3168
    ld a, [$d086]
    and a
    ret z

    ld a, [$d40d]
    ld e, a
    ld a, [$d40e]
    ld d, a
    jp Call_000_23af


Call_005_448a:
    ld hl, $d190
    add hl, bc
    bit 6, [hl]
    ret nz

    call Call_005_48dc
    dec hl
    dec hl
    ld a, [hl+]
    ld [$d40b], a
    inc hl
    ld a, [hl+]
    ld [$d40f], a
    ld a, [hl+]
    ld [$d40c], a
    ld a, [hl+]
    ld [$d40d], a
    ld a, [hl+]
    ld [$d40e], a
    ld a, [$d40f]
    bit 4, a
    ret nz

    bit 3, a
    jr z, jr_005_44f5

    ld a, [$d410]
    bit 0, a
    jr nz, jr_005_44ee

    bit 3, a
    jr z, jr_005_44c5

    ld hl, $403c
    jr jr_005_44e4

jr_005_44c5:
    call Call_005_4579
    call Call_005_456d
    jr nz, jr_005_44e1

    ld a, [$d40c]
    add a
    call Call_3168
    ld a, [$d40d]
    ld e, a
    ld a, [$d40e]
    ld d, a
    call Call_000_23af
    jr jr_005_44ee

jr_005_44e1:
    ld hl, $4026

jr_005_44e4:
    ld de, $4008
    ld a, [$d411]
    ld c, a
    jp Call_000_21e6


jr_005_44ee:
    ld a, [$d411]
    ld c, a
    jp Call_000_21ce


jr_005_44f5:
    bit 0, a
    jr nz, jr_005_451e

jr_005_44f9:
    ld a, [$d411]
    ld c, a
    ld a, [$d410]
    bit 0, a
    jr nz, jr_005_451b

    ld hl, $403c
    bit 3, a
    jr nz, jr_005_4515

    ld hl, $4017
    bit 4, a
    jr nz, jr_005_4515

    ld hl, $4026

jr_005_4515:
    ld de, $4008
    jp Call_000_21e6


jr_005_451b:
    jp Call_000_21ce


jr_005_451e:
    ld hl, $d410
    bit 0, [hl]
    jr z, jr_005_453b

    bit 1, [hl]
    jr nz, jr_005_453b

    ld_long a, $ff92
    and $20
    push af
    call Call_000_3d48
    pop af
    ld_long $ff92, a
    ld hl, $ff90
    set 3, [hl]

jr_005_453b:
    call Call_005_456d
    jr nz, jr_005_44f9

    ld a, [$d40c]
    add a
    call Call_3168
    ld a, [$d40d]
    ld e, a
    ld a, [$d40e]
    ld d, a
    call Call_000_23af
    ld a, [$d410]
    bit 4, a
    jr nz, jr_005_4560

    ld a, [$d411]
    ld c, a
    jp Call_000_21ce


jr_005_4560:
    ld a, [$d411]
    ld c, a
    ld hl, $4005
    ld de, $4008
    jp Call_000_21e6


Call_005_456d:
    ld hl, $d1b0
    add hl, bc
    set 7, [hl]
    ld hl, $d39a
    add hl, bc
    dec [hl]
    ret


Call_005_4579:
    ld a, [$d3c1]
    ld e, a
    ld a, [$d3c2]
    inc a
    cp e
    jr nz, jr_005_458e

    xor a
    ld hl, $d093
    dec [hl]
    ld hl, $ff8f
    set 0, [hl]

jr_005_458e:
    ld [$d3c2], a
    ld a, c
    ld [$d3d5], a
    ld hl, $ff91
    bit 1, [hl]
    jr z, jr_005_45aa

    ld hl, $d190
    ld b, $00
    add hl, bc
    set 4, [hl]
    ld a, $05
    ld [$d3d4], a
    ret


jr_005_45aa:
    ld a, $1e
    ld [$d3d4], a
    ret


Call_005_45b0:
    ld hl, wActiveEntities
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_005_45cf

    ld hl, $d1a0
    add hl, bc
    ld a, [hl]
    bit 7, a
    jr z, jr_005_45cf

    bit 0, a
    jr nz, jr_005_45cf

    ld hl, $d190
    add hl, bc
    bit 2, [hl]
    jr nz, jr_005_45cf

    xor a
    ret


jr_005_45cf:
    scf
    ret


Call_005_45d1:
    ld hl, $d1e0
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc hl
    ld a, [hl+]
    add d
    ld d, a
    push hl
    ld hl, $d140
    add hl, bc
    ld a, [$d412]
    sub [hl]
    jr nc, jr_005_45ea

    cpl
    inc a

jr_005_45ea:
    cp d
    pop hl
    ret nc

    ld a, [hl+]
    add e
    ld e, a
    push hl
    ld hl, $d150
    add hl, bc
    ld a, [$d413]
    sub [hl]
    jr nc, jr_005_45fd

    cpl
    inc a

jr_005_45fd:
    cp e
    pop hl
    ret


Call_005_4600:
    ld [wTemp], a
    ld hl, $d1e0
    add hl, bc
    add hl, bc
    ld a, [hl+]
    add $03
    ld h, [hl]
    jr nc, jr_005_460f

    inc h

jr_005_460f:
    ld l, a
    ld a, [hl]
    and a
    jr z, jr_005_4667

    dec a
    jp z, Jump_005_4711

    dec a
    jp z, Jump_005_471b

    dec a
    jp z, Jump_005_474f

    dec a
    jr z, jr_005_4684

    dec a
    jp z, Jump_005_46de

    dec a
    jp z, Jump_005_46ad

    dec a
    jp z, Jump_005_46ca

    dec a
    jp z, Jump_005_4704

    dec a
    jp z, Jump_005_4647

    call Call_005_47c0
    ld a, $81
    ld [$d3bf], a
    ld a, $20
    call PlaySE
    jp Call_000_21ce


Jump_005_4647:
    call Call_005_47c0
    call Call_005_47b5
    ld hl, $ff8f
    set 4, [hl]
    ld a, [wRemainingLives]
    inc a
    cp 99
    jr c, .storedNewLives
    ld a, 99
.storedNewLives:
    ld [wRemainingLives], a
    ld a, $16
    call PlaySE
    jp Call_000_21ce


jr_005_4667:
    call Call_005_47c0
    call Call_005_47b5
    ld a, $84
    ld [$d3e1], a
    ld a, $03
    ld [$d3e2], a
    ld hl, $d1a0
    set 4, [hl]
    ld a, $02
    call PlaySong
    jp Jump_005_470e


jr_005_4684:
    call Call_005_47c0
    call Call_005_47b5
    ld hl, $ff95
    set 5, [hl]
    res 6, [hl]
    ld a, $09
    call PlaySE
    ld hl, $d1a0
    set 4, [hl]
    ld a, $fc
    ld [$d3df], a
    ld a, $03
    ld [$d3e0], a
    ld a, $09
    call PlaySong
    jp Jump_005_470e


Jump_005_46ad:
    call Call_005_47c0
    ld a, $09
    call PlaySE
    call Call_005_47b5
    call Call_005_470e
    ld a, [$d086]
    ld e, a
    ld a, $88
    sub e
    ld e, a

jr_005_46c3:
    call Call_005_479c
    dec e
    jr nz, jr_005_46c3

    ret


Jump_005_46ca:
    call Call_005_47c0
    ld a, $09
    call PlaySE
    call Call_005_47b5
    call Call_005_470e
    call Call_005_479c
    jp Jump_005_479c


Jump_005_46de:
    ld hl, $ff94
    set 2, [hl]
    ld a, $0c
    call PlaySE
    ld hl, $d140
    add hl, bc
    ld a, [hl]
    ld [$d0a1], a
    sub $08
    ld [wPlayerScreenXCoord], a
    ld hl, $d150
    add hl, bc
    ld a, [hl]
    ld [$d0d1], a
    sub $08
    ld [wPlayerScreenYCoord], a
    jr jr_005_470e

Jump_005_4704:
    ld hl, $ff94
    set 2, [hl]
    ld a, $09
    call PlaySE

Call_005_470e:
Jump_005_470e:
jr_005_470e:
    jp Call_000_21ce


Jump_005_4711:
    call Call_005_47c0
    ld hl, $d3be
    set 2, [hl]
    jr jr_005_4723

Jump_005_471b:
    call Call_005_47c0
    ld hl, $d3be
    set 1, [hl]

jr_005_4723:
    ld a, $09
    call PlaySE
    ld a, [wTemp]
    and a
    jr z, jr_005_4730

    jr jr_005_470e

jr_005_4730:
    ld_long a, $ff8e
    bit 7, a
    jr z, jr_005_4748

    ld_long a, $ff92
    and $20
    push af
    call Call_000_3d48
    pop af
    ld_long $ff92, a
    xor a
    ld [$d094], a

jr_005_4748:
    ld a, $08
    ld_long $ff8e, a
    jr jr_005_470e

Jump_005_474f:
    call Call_005_47c0
    ld a, [wTemp]
    and a
    jr z, jr_005_4761

    ld a, $01
    ld a, $01
    ld [$d3be], a
    jr jr_005_470e

Jump_005_4761:
jr_005_4761:
    ld hl, $d3be
    res 0, [hl]
    ld a, $52
    ld [$d3df], a
    ld a, $03
    ld [$d3e0], a
    ld a, [wCurStageScreen]
    cp $07
    jr nz, jr_005_4791

    ld a, [wCurStage]
    cp $02
    jr z, jr_005_4782

    cp $04
    jr nz, jr_005_4791

jr_005_4782:
    ld_long a, $ff91
    and $bf
    or $03
    ld_long $ff91, a
    ld hl, $ff90
    set 5, [hl]

jr_005_4791:
    call Call_000_3768
    ld a, $09
    call PlaySong
    jp Call_000_21ce


Call_005_479c:
Jump_005_479c:
    ld a, [$d087]
    ld l, a
    ld a, [$d086]
    cp l
    ret z

    inc a
    ld [$d086], a
    push de
    ld a, $0b
    call PlaySE
    pop de
    ld a, $0a
    jp Call_000_1de0


Call_005_47b5:
    ld a, [wTemp]
    and a
    ret z

    ld hl, $d3be
    set 4, [hl]
    ret


Call_005_47c0:
    push bc
    ld hl, $d3aa
    add hl, bc
    ld a, [hl]
    cp $ff
    jr z, jr_005_47e2

    ld e, a
    and $07
    ld c, a
    xor a
    ld b, a
    ld d, a
    srl e
    srl e
    srl e
    ld hl, $3408
    add hl, bc
    ld a, [hl]
    ld hl, $d3c4
    add hl, de
    or [hl]
    ld [hl], a

jr_005_47e2:
    pop bc
    ret


Call_005_47e4:
    call Call_005_489b
    ld_long a, $ff8e
    bit 4, a
    ret z

    bit 2, a
    ret nz

    call Call_005_4993
    ld hl, $ff94
    bit 7, [hl]
    call z, Call_005_48ea
    ld bc, $0001

Jump_005_47fe:
    ld hl, wActiveEntities
    add hl, bc
    ld a, [hl]
    and a
    jp z, Jump_005_488d

    ld hl, $d1a0
    add hl, bc
    bit 7, [hl]
    jr z, jr_005_488d

    bit 0, [hl]
    jr nz, jr_005_488d

    ld hl, $d190
    add hl, bc
    bit 2, [hl]
    jr nz, jr_005_488d

    ld hl, $d190
    add hl, bc
    bit 6, [hl]
    jr z, jr_005_483d

    ld hl, $d1e0
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc hl
    inc hl
    inc hl
    ld a, [hl]
    cp $05
    jr z, jr_005_488d

    cp $08
    jr z, jr_005_488d

    cp $0a
    jr z, jr_005_488d

    jr jr_005_4844

jr_005_483d:
    call Call_005_48dc
    bit 1, [hl]
    jr z, jr_005_488d

jr_005_4844:
    ld hl, $d150
    ld a, [hl]
    add hl, bc
    sub [hl]
    bit 7, a
    jr z, jr_005_4850

    cpl
    inc a

jr_005_4850:
    cp $14
    jr nc, jr_005_488d

    ld_long a, $ff92
    ld e, a
    ld hl, $d140
    ld a, [hl]
    add hl, bc
    sub [hl]
    bit 5, e
    jr nz, jr_005_4864

    cpl
    inc a

jr_005_4864:
    cp $2a
    jr nc, jr_005_488d

    ld hl, $d1a0
    add hl, bc
    set 0, [hl]
    bit 1, [hl]
    jr nz, jr_005_488d

    ld hl, $d1b0
    add hl, bc
    ld a, [hl]
    and $22
    jr nz, jr_005_488d

    ld hl, $4003
    ld de, $4000
    call Call_000_21e6
    ld hl, $ff94
    set 7, [hl]
    ld hl, $d3f6
    inc [hl]

Jump_005_488d:
jr_005_488d:
    inc c
    ld a, c
    cp $0d
    jr nz, jr_005_4895

    inc c
    inc c

jr_005_4895:
    cp $10
    jp nz, Jump_005_47fe

    ret


Call_005_489b:
    ld hl, $ff94
    bit 7, [hl]
    jr z, jr_005_48d7

    ld bc, $0001

jr_005_48a5:
    ld hl, wActiveEntities
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_005_48bc

    ld hl, $d35a
    add hl, bc
    add hl, bc
    ld a, [hl+]
    cp $1a
    jr nz, jr_005_48bc

    ld a, [hl]
    cp $40
    jr z, jr_005_48d7

jr_005_48bc:
    inc c
    ld a, c
    cp $10
    jr nz, jr_005_48a5

    ld a, [$d3f8]
    inc a
    cp $0a
    jr nz, jr_005_48d3

    ld hl, $ff94
    res 7, [hl]
    xor a
    ld [$d3f6], a

jr_005_48d3:
    ld [$d3f8], a
    ret


jr_005_48d7:
    xor a
    ld [$d3f8], a
    ret


Call_005_48dc:
    ld hl, $d1e0
    add hl, bc
    add hl, bc
    ld a, [hl+]
    add $05
    ld h, [hl]
    jr nc, jr_005_48e8

    inc h

jr_005_48e8:
    ld l, a
    ret


Call_005_48ea:
    ld a, [$d053]
    and $0f
    ld l, a
    ld a, [$d140]
    add l
    sub $08
    ld l, a
    ld h, $00
    call Call_000_2e96
    ld hl, wStageScrollTileX
    add [hl]
    dec a
    ld d, a
    ld a, [$d055]
    and $0f
    ld l, a
    ld a, [$d150]
    add l
    sub $10
    ld l, a
    ld h, $00
    call Call_000_2e96
    ld hl, wStageScrollTileY
    add [hl]
    dec a
    ld e, a
    push de
    call Call_000_2e7f
    pop bc
    push bc
    ld c, $03
    ld_long a, $ff92
    bit 5, a
    jr nz, jr_005_494a

    jr jr_005_4933

jr_005_492b:
    inc b
    ld a, [$d03f]
    cp b
    jr z, jr_005_4991

    inc hl

jr_005_4933:
    ld a, $00
    add [hl]
    ld e, a
    ld a, $ca
    adc $00
    ld d, a
    ld a, [de]
    cp $04
    jr z, jr_005_4969

    cp $05
    jr z, jr_005_496e

    dec c
    jr nz, jr_005_492b

    jr jr_005_4991

jr_005_494a:
    ld a, b
    and a
    jr z, jr_005_4991

jr_005_494e:
    dec b
    jr z, jr_005_4991

    dec hl
    ld a, $00
    add [hl]
    ld e, a
    ld a, $ca
    adc $00
    ld d, a
    ld a, [de]
    cp $04
    jr z, jr_005_4969

    cp $05
    jr z, jr_005_496e

    dec c
    jr nz, jr_005_494e

    jr jr_005_4991

jr_005_4969:
    xor a
    ld c, $7f
    jr jr_005_4972

jr_005_496e:
    ld a, $03
    ld c, $7c

jr_005_4972:
    ld [hl], a
    pop de
    ld d, b
    push bc
    push de
    ld hl, $41a2
    call Call_000_234a
    ld hl, $d1a0
    add hl, bc
    set 0, [hl]
    ld hl, $ff94
    set 7, [hl]
    ld hl, $d3f6
    inc [hl]
    pop de
    pop bc
    jp $3076


jr_005_4991:
    pop bc
    ret


Call_005_4993:
    ld bc, $0000

jr_005_4996:
    ld hl, $d3f9
    add hl, bc
    ld a, [hl+]
    or [hl]
    jr nz, jr_005_49a1

    call Call_005_49ae

jr_005_49a1:
    push bc
    call Call_005_49fb
    pop bc
    inc c
    inc c
    ld a, c
    cp $06
    jr nz, jr_005_4996

    ret


Call_005_49ae:
    call Call_000_1d01
    and $1e
    add $db
    ld e, a
    ld a, $49
    adc $00
    ld d, a
    ld hl, $d3fa
    add hl, bc
    push hl
    ld a, [de]
    ld hl, $ff92
    bit 5, [hl]
    jr z, jr_005_49ca

    cpl
    inc a

jr_005_49ca:
    pop hl
    ld [hl], a
    inc de
    ld hl, $d406
    add hl, bc
    ld a, [de]
    ld [hl], a

jr_005_49d3:
    xor a
    ld hl, $d3ff
    add hl, bc
    ld [hl+], a
    ld [hl], a
    ret


    rrca
    db $ec
    inc d
    db $ec
    add hl, de
    db $ec
    ld e, $ec
    inc hl
    db $ec
    jr z, jr_005_49d3

    inc l
    db $f4
    inc l
    ei
    inc l
    dec b
    inc l
    inc c
    jr z, jr_005_4a05

    inc hl
    inc d
    ld e, $14
    add hl, de
    inc d
    inc d
    inc d
    rrca
    inc d

Call_005_49fb:
    ld hl, $d3fa
    add hl, bc
    ld a, [hl]
    ld de, $ffc4
    bit 7, a

jr_005_4a05:
    jr z, jr_005_4a0c

    cpl
    inc a
    ld de, $003c

jr_005_4a0c:
    cp $0a
    jr c, jr_005_4a5b

    ld hl, $d3ff
    add hl, bc
    ld a, [hl]
    add e
    ld e, a
    ld [hl+], a
    ld a, [hl]
    adc d
    ld d, a
    ld [hl], a
    ld hl, $d3f9
    add hl, bc
    ld a, [hl]
    add e
    ld [hl+], a
    ld a, [hl]
    adc d
    ld [hl], a
    push af
    bit 7, a
    jr z, jr_005_4a2d

    cpl
    inc a

jr_005_4a2d:
    swap a
    and $0f
    inc a
    inc a
    ld d, a
    ld hl, $d406
    add hl, bc
    ld a, [hl-]
    cpl
    inc a
    ld e, a
    xor a

jr_005_4a3d:
    sra e
    rra
    dec d
    jr nz, jr_005_4a3d

    add [hl]
    ld [hl+], a
    ld a, [hl]
    adc e
    ld [hl], a
    ld hl, $d150
    add [hl]
    dec a
    ld c, a
    pop af
    ld hl, $d140
    add [hl]
    ld b, a
    ld hl, $5c19
    xor a
    jp $18ff


jr_005_4a5b:
    xor a
    ld [hl-], a
    ld [hl], a
    ret


    ld hl, $d1a0
    add hl, bc
    set 2, [hl]
    push bc
    ld hl, $d0a1
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $0a
    ld_long a, $ff92
    bit 5, a
    jr z, jr_005_4a77

    ld c, $f6

jr_005_4a77:
    ld a, [$d140]
    add c
    ld c, a
    ld a, [$d053]
    and $0f
    ld b, a
    ld a, [wStageScrollTileX]
    dec a
    swap a
    ld d, a
    and $0f
    ld e, a
    ld a, d
    and $f0
    add b
    add c
    ld [hl+], a
    ld a, e
    adc $00
    ld [hl], a
    pop bc
    ld hl, $d0d1
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [$d150]
    sub $05
    ld c, a
    ld a, [$d055]
    and $0f
    ld b, a
    ld a, [wStageScrollTileY]
    dec a
    swap a
    ld d, a
    and $0f
    ld e, a
    ld a, d
    and $f0
    add b
    add c
    ld [hl+], a
    ld a, e
    adc $00
    ld [hl], a
    ret

WriteDMACodeToHRAM: ; 0x5f7
; Initializes registers hPushOAM - hFarCallTempA
    ld c, $80
    ld b, $a  ; number of bytes to load
    ld hl, DMARoutine
.loop
    ld a, [hli]
    ld [$ff00+c], a  ; add register c to $ff00, and store register a into the resulting address
    inc c
    dec b
    jr nz, .loop
    ret

DMARoutine:
; This routine is initially loaded into hPushOAM - hFarCallTempA by WriteDMACodeToHRAM.
    ld a, wOAMBuffer >> 8
    ld [rDMA], a   ; start DMA
    ld a, $28
.waitLoop               ; wait for DMA to finish
    dec a
    jr nz, .waitLoop
    ret

InitRAM:
    ld hl, wRAMStart
.clearWRAMLoop:
    xor a
    ld [hl+], a
    ld a, $e0
    cp h
    jr nz, .clearWRAMLoop
    ld hl, hLCDC
.clearHRAMLoop:
    xor a
    ld [hl+], a
    ld a, l
    cp (hRam96 + 1) & $ff
    jr nz, .clearHRAMLoop
    ld a, $01
    ld [wStageScrollTileX], a
    ld [wStageScrollTileY], a
    ld [$d074], a
    ld a, $30
    ld [wPlayerScreenXCoord], a
    ld a, $00
    ld [wPlayerScreenYCoord], a
    ld a, $ff
    ld [$d096], a
    ld [$d03d], a
    xor a
    ld [hl], a
    ld a, $e4
    ld [$d080], a
    ld a, $d0
    ld [$d081], a
    ld a, $c0
    ld_long $ff8c, a
    ld a, $00
    ld_long $ff8d, a
    ld a, $0c
    ld [$d050], a
    ld a, $01
    ld [$d048], a
    ld hl, $d02f
    ld [hl+], a
    inc a
    ld [hl+], a
    inc a
    ld [hl], a
    ret

Call_005_4b30:
; TODO: nop-ing this function results in title-screen music alterations.
    ld hl, $4b3a
    ld de, wdc00
    call HAL_Decompress
    ret


    ldh [$80], a
    nop
    nop
    ld [bc], a
    inc b
    ld [$120c], sp
    jr jr_005_4b65

    jr z, @+$34

    inc a
    ld c, b
    ld d, h
    ld h, d
    ld [hl], b
    add b
    sub b

jr_005_4b4e:
    and d
    or h
    ret z

    call c, $08f2
    jr nz, jr_005_4b8e

    ld d, d
    ld l, h
    adc b
    and h
    jp nz, $00e0

    jr nz, jr_005_4ba1

    ld h, h
    adc b
    xor h
    jp nc, $20f8

jr_005_4b65:
    ld c, b
    ld [hl], d
    sbc h
    ret z

    db $f4
    ld [hl+], a
    ld d, b
    add b
    or b
    ld [c], a
    inc d
    ld c, b
    ld a, h
    or d
    add sp, $20
    ld e, b
    sub d
    call z, Call_005_4408
    add d
    ret nz

    nop
    ld b, b
    add d
    call nz, $4c08
    sub d
    ret c

    jr nz, jr_005_4bee

    or d
    db $fc
    ld c, b
    sub h
    ld [c], a
    jr nc, @-$7e

    ret nc

jr_005_4b8e:
    ld [hl+], a
    ld [hl], h
    ret z

    inc e
    ld [hl], d
    ret z

    jr nz, jr_005_4c0e

    jp nc, $882c

    db $e4
    ld b, d
    and b
    nop
    ld h, b
    jp nz, $8824

jr_005_4ba1:
    db $ec
    ld d, d
    cp b
    db $20
    db $88

    ld a, [c]
    ld e, h
    ret z

    inc [hl]
    and d
    db $10
    add b
    ldh a, [$62]
    call nc, $bc48
    ld [hl-], a
    xor b
    jr nz, jr_005_4b4e

    ld [de], a
    adc h
    ld [$0284], sp
    add b
    nop
    ld hl, sp+$7f
    nop
    ld a, a
    dec [hl]
    nop
    jr z, jr_005_4bc6

    daa

jr_005_4bc6:
    ld [bc], a
    dec h
    inc bc
    inc h
    inc b
    inc h
    dec b
    inc hl
    ld b, $23
    rlca
    inc hl
    ld [$0923], sp
    inc hl
    ld a, [bc]
    ld [hl+], a
    dec bc
    ld [hl+], a
    inc c
    ld [hl+], a
    dec c
    ld [hl+], a
    ld c, $22
    rrca
    ld [hl+], a
    db $10
    ld bc, $1111
    ld [hl+], a
    ld [de], a
    ld [hl+], a
    inc de
    ld bc, $1414
    ld [hl+], a

jr_005_4bee:
    dec d
    inc bc
    ld d, $16
    rla
    rla
    ld [hl+], a
    jr jr_005_4c13

    add hl, de
    add hl, de
    ld a, [de]
    ld a, [de]
    dec de
    dec de
    inc e
    inc e
    dec e
    dec e
    ld e, $1e
    rra
    rra
    jr nz, jr_005_4c27

    ld hl, $2221
    ld [hl+], a
    inc hl
    inc hl
    inc h

jr_005_4c0e:
    inc h
    dec h
    dec h
    ld h, $26

jr_005_4c13:
    daa
    ld h, d
    daa
    inc bc
    add hl, hl
    ld a, [hl+]
    ld a, [hl+]
    dec hl
    ld h, d
    dec hl
    ld bc, $2e2d
    ld h, d
    ld l, $62
    jr nc, jr_005_4c26

    ld [hl-], a

jr_005_4c26:
    inc sp

jr_005_4c27:
    ld h, d
    inc sp
    ld h, d
    dec [hl]
    ld h, d
    scf
    ld h, d
    add hl, sp
    ld h, d
    dec sp
    ld h, d
    dec a
    ld h, e
    ccf
    ld h, e
    ld b, d
    ld h, e
    ld b, l
    ld h, e
    ld c, b
    ld h, e
    ld c, e
    ld h, h
    ld c, [hl]
    ld h, h
    ld d, d
    ld h, l
    ld d, [hl]
    ld h, a
    ld e, e
    ld l, b
    ld h, d
    ld [hl], l
    ld l, d
    rst $38

InitSoundEngine:
    ld a, $80
    ldh [rNR52], a
    ld a, $77
    ldh [rNR50], a
    ld a, $ff
    ldh [rNR51], a
    ld a, $ff
    ld [$de01], a
    ld [$de02], a
    ld [$ded2], a
    ld hl, $de06
    ld b, $14
    ld a, $aa
jr_005_4c68:
    ld [hl+], a
    dec b
    jr nz, jr_005_4c68
    ld hl, $7aa9
    call Call_005_5305
    ld a, $ff
    call Call_005_4dc5
    ld a, $ff
    call Call_005_4c9e
    call Call_005_4e76
    ld hl, $ff14
    set 7, [hl]
    ld hl, $ff19
    set 7, [hl]
    ld hl, $ff1e
    set 7, [hl]
    ld hl, $ff23
    set 7, [hl]
    ld a, $13
    ld [$ded3], a
    ld a, $24
    ld [$ded4], a
    ret

Call_005_4c9e:
    ld e, a
    cp $ff
    jp z, Jump_005_4d2c

    ld d, $00
    ld a, [$de03]
    and a
    jr z, jr_005_4cd8

    ld hl, $7a61
    add hl, de
    and [hl]
    jr z, jr_005_4cd8

    ld bc, $0003

jr_005_4cb6:
    ld hl, $7a61
    add hl, de
    ld a, [hl]
    ld hl, $deca
    add hl, bc
    and [hl]
    jr z, jr_005_4cd3

    ld hl, $dece
    add hl, bc
    ld a, [hl]
    ld hl, $7a85
    add hl, de
    cp [hl]
    ret c

    ld hl, $de52
    add hl, bc
    ld [hl], $00

jr_005_4cd3:
    dec c
    bit 7, c
    jr z, jr_005_4cb6

jr_005_4cd8:
    ld hl, $7a61
    add hl, de
    ld a, [hl]
    ld [$de04], a
    ld hl, $7a85
    add hl, de
    ld a, [hl]
    ld c, a
    ld hl, $7a19
    add hl, de
    add hl, de
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    ld a, [de]
    ld h, a
    ld l, c
    push hl
    ld bc, $0003

jr_005_4cf5:
    ld hl, $de52
    add hl, bc
    ld a, [hl]
    and a
    jr nz, jr_005_4d15

    call Call_005_4d67
    ld hl, sp+$00
    ld a, [hl]
    ld hl, $dece
    add hl, bc
    ld [hl], a
    ld a, [$de04]
    ld hl, $deca
    add hl, bc
    ld [hl], a
    pop hl
    dec h
    push hl
    jr z, jr_005_4d1a

jr_005_4d15:
    dec c
    bit 7, c
    jr z, jr_005_4cf5

jr_005_4d1a:
    pop hl

Call_005_4d1b:
    ld a, [$deca]
    ld hl, $decb
    ld c, $03

jr_005_4d23:
    or [hl]
    inc hl
    dec c
    jr nz, jr_005_4d23

    ld [$de03], a
    ret


Jump_005_4d2c:
    ld bc, $0003

jr_005_4d2f:
    ld hl, $de52
    add hl, bc
    ld [hl], b
    ld hl, $deca
    add hl, bc
    ld [hl], b
    ld hl, $dece
    add hl, bc
    ld [hl], $ff
    dec c
    bit 7, c
    jr z, jr_005_4d2f

    ld hl, $4d53
    ld de, $de1a
    ld c, $14

jr_005_4d4c:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_005_4d4c

    ret


    ld [$0800], sp
    nop
    add b
    nop
    nop
    ld [$8000], sp
    add b
    nop
    nop
    nop
    add b
    nop
    nop
    ld [$8000], sp

Call_005_4d67:
    ld hl, $de8a
    add hl, bc
    ld [hl], $24
    xor a
    ld hl, $de92
    add hl, bc
    ld [hl], a
    ld hl, $de9a
    add hl, bc
    ld [hl], a
    ld hl, $dea2
    add hl, bc
    ld [hl], a
    ld hl, $deaa
    add hl, bc
    ld [hl], a
    ld hl, $deb2
    add hl, bc
    ld [hl], a
    ld hl, $548e
    add hl, bc
    ld a, [hl]
    ld hl, $deba
    add hl, bc
    ld [hl], a
    inc de
    ld a, [de]
    ld hl, $de5a
    add hl, bc
    ld [hl], a
    inc de
    ld a, [de]
    ld hl, $de62
    add hl, bc
    ld [hl], a
    inc de
    ld a, [de]
    sra a
    sra a
    add $c0
    ld l, a
    ld h, $4d
    jr nc, jr_005_4dad

    inc h

jr_005_4dad:
    ld a, [hl]
    ld hl, $de4a
    add hl, bc
    ld [hl], a
    ld hl, $de52
    add hl, bc
    ld [hl], $01
    ld hl, $de82
    add hl, bc
    ld [hl], $01
    ret


    nop
    dec b
    rst $38
    rrca
    ld a, [bc]

Call_005_4dc5:
    ld b, a
    ld hl, $de56
    ld c, $04
    xor a

jr_005_4dcc:
    ld [hl+], a
    dec c
    jr nz, jr_005_4dcc

    ld hl, $4d53
    ld de, $de2e
    ld c, $14

jr_005_4dd8:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_005_4dd8

    ld a, $ff
    cp b
    ret z

    ld e, b
    ld d, $00
    ld hl, $79f3
    add hl, de
    add hl, de
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    ld a, [de]
    ld h, a
    push hl
    ld bc, $0007

jr_005_4df3:
    ld hl, $de52
    add hl, bc
    ld a, [hl]
    and a
    jr nz, jr_005_4e03

    call Call_005_4d67
    pop hl
    dec h
    push hl
    jr z, jr_005_4e09

jr_005_4e03:
    dec c
    ld a, $03
    cp c
    jr nz, jr_005_4df3

jr_005_4e09:
    pop hl
    ret


HandleTimer:
    ld b, $07
.jr_005_4e0d:
    ld h, $de
    ld a, $52
    add b
    ld l, a
    ld a, [hl]
    and a
    jr z, .jr_005_4e52
    ld a, b
    cp $04
    ld a, $1a
    jr c, .jr_005_4e20
    ld a, $2e
.jr_005_4e20:
    ld [$df80], a
    ld h, $de
    ld a, $5a
    add b
    ld l, a
    push hl
    ld e, [hl]
    add $08
    ld l, a
    push hl
    ld d, [hl]
    push bc
    call Call_005_4f5d
    pop bc
    pop hl
    ld [hl], d
    pop hl
    ld [hl], e
    call Call_005_5235
    ld h, $de
    ld a, $72
    add b
    ld l, a
    push hl
    ld e, [hl]
    add $08
    ld l, a
    push hl
    ld d, [hl]
    push bc
    call Call_005_524f
    pop bc
    pop hl
    ld [hl], d
    pop hl
    ld [hl], e
.jr_005_4e52:
    dec b
    bit 7, b
    jr z, .jr_005_4e0d
    ld b, $03
.jr_005_4e59:
    ld h, $de
    ld a, $52
    add b
    ld l, a
    ld a, [hl]
    and a
    jr nz, .jr_005_4e6e
    ld a, $ce
    add b
    ld l, a
    ld [hl], $ff
    add $fc
    ld l, a
    ld [hl], $00
.jr_005_4e6e:
    dec b
    bit 7, b
    jr z, .jr_005_4e59
    call Call_005_4d1b
Call_005_4e76:
    ld de, $de2e
    ld a, [$de03]
    bit 0, a
    jr z, jr_005_4e82

    ld e, $1a

jr_005_4e82:
    ld b, $00
    ld hl, $de06
    ld c, $10

jr_005_4e89:
    ld a, [de]
    cp [hl]
    jr z, jr_005_4e95

    ld [hl], a
    ld [c], a
    ld a, c
    cp $12
    jr nz, jr_005_4e95

    inc b

jr_005_4e95:
    inc l
    inc e
    inc c
    ld a, c
    cp $15
    jr nz, jr_005_4e89

    dec b
    jr nz, jr_005_4ea7

    ld a, [$de0a]
    set 7, a
    ldh [rNR14], a

jr_005_4ea7:
    ld de, $de34
    ld a, [$de03]
    bit 1, a
    jr z, jr_005_4eb3

    ld e, $20

jr_005_4eb3:
    ld b, $00
    ld hl, $de0c
    ld c, $16

jr_005_4eba:
    ld a, [de]
    cp [hl]
    jr z, jr_005_4ec6

    ld [hl], a
    ld [c], a
    ld a, c
    cp $17
    jr nz, jr_005_4ec6

    inc b

jr_005_4ec6:
    inc l
    inc e
    inc c
    ld a, c
    cp $1a
    jr nz, jr_005_4eba

    dec b
    jr nz, jr_005_4ed8

    ld a, [$de0f]
    set 7, a
    ldh [rNR24], a

jr_005_4ed8:
    ld de, $de38
    ld a, [$de03]
    bit 4, a
    jr z, jr_005_4ee4

    ld e, $24

jr_005_4ee4:
    ld hl, $de10
    ld c, $1a

jr_005_4ee9:
    ld a, [de]
    cp [hl]
    jr z, jr_005_4eef

    ld [hl], a
    ld [c], a

jr_005_4eef:
    inc l
    inc e
    inc c
    ld a, c
    cp $1f
    jr nz, jr_005_4ee9

    ld de, $de3e
    ld a, [$de03]
    bit 3, a
    jr z, jr_005_4f03

    ld e, $2a

jr_005_4f03:
    ld b, $00
    ld hl, $de16
    ld c, $20

jr_005_4f0a:
    ld a, [de]
    cp [hl]
    jr z, jr_005_4f16

    ld [hl], a
    ld [c], a
    ld a, c
    cp $21
    jr nz, jr_005_4f16

    inc b

jr_005_4f16:
    inc l
    inc e
    inc c
    ld a, c
    cp $24
    jr nz, jr_005_4f0a

    dec b
    jr nz, jr_005_4f28

    ld a, [$de19]
    set 7, a
    ldh [rNR44], a

jr_005_4f28:
    ld a, [$de03]
    ld c, a
    ld a, [$de46]
    bit 0, c
    jr z, jr_005_4f36

    ld a, [$de42]

jr_005_4f36:
    ld b, a
    ld a, [$de47]
    bit 1, c
    jr z, jr_005_4f41

    ld a, [$de43]

jr_005_4f41:
    or b
    ld b, a
    ld a, [$de48]
    bit 4, c
    jr z, jr_005_4f4d

    ld a, [$de44]

jr_005_4f4d:
    or b
    ld b, a
    ld a, [$de49]
    bit 3, c
    jr z, jr_005_4f59

    ld a, [$de45]

jr_005_4f59:
    or b
    ldh [rNR51], a
    ret


Call_005_4f5d:
    ld h, $de
    ld a, $52
    add b
    ld l, a
    dec [hl]
    jr z, jr_005_4f68

    ret


Jump_005_4f67:
    inc de

Jump_005_4f68:
jr_005_4f68:
    ld h, $de
    ld a, [de]
    ld c, a
    and $e0
    cp $e0
    jp z, Jump_005_5064

    ld a, $4a
    add b
    ld l, a
    ld a, [hl]
    cp $0f
    jr nz, jr_005_4f9a

    bit 4, c
    jp nz, Jump_005_4fcd

    ld a, c
    and $0f
    cp $0f
    jr z, jr_005_4fb6

    add $a0
    ld l, a
    ld h, $54
    jr nc, jr_005_4f90

    inc h

jr_005_4f90:
    ld c, [hl]
    ld a, $12
    call Call_005_53cb
    ld [hl], c
    jp Jump_005_4fcd


jr_005_4f9a:
    ld a, c
    and $1f
    cp $10
    jr z, jr_005_4fb6

    bit 4, a
    jr z, jr_005_4fa7

    or $e0

jr_005_4fa7:
    ld c, a
    ld a, $8a
    add b
    ld l, a
    ld a, [hl]
    add c
    push de
    call Call_005_51f9
    pop de
    jp Jump_005_4fcd


jr_005_4fb6:
    call Call_005_5038
    ld c, a
    ld h, $de
    ld a, $82
    add b
    ld l, a
    ld a, [hl]
    and a
    jr z, jr_005_4fc6

    ld [hl], $01

Jump_005_4fc6:
jr_005_4fc6:
    ld a, c
    and a
    jp z, Jump_005_4f67

    inc de
    ret


Jump_005_4fcd:
    call Call_005_5038
    ld c, a
    ld h, $de
    ld a, $82
    add b
    ld l, a
    ld [hl], $ff
    add $10
    ld l, a
    ld a, [hl]
    and a
    jr z, jr_005_4ff3

    push bc
    push de
    ld e, a
    ld h, $de
    ld a, $82
    add b
    ld l, a
    push hl
    ld a, c
    call Call_005_53d3
    ld b, h
    pop hl
    ld [hl], b
    pop de
    pop bc

jr_005_4ff3:
    push bc
    call Call_005_4ffb
    pop bc
    jp Jump_005_4fc6


Call_005_4ffb:
    ld h, $de
    ld a, $a2
    add b
    ld l, a
    ld a, [hl]
    bit 7, a
    jr nz, jr_005_5037

Call_005_5006:
    add a
    add a

Jump_005_5008:
    push de
    add $d3
    ld e, a
    ld d, $78
    jr nc, jr_005_5011

    inc d

jr_005_5011:
    ld h, $de
    ld a, $72
    add b
    ld l, a
    ld a, [de]
    ld [hl], a
    ld a, $7a
    add b
    ld l, a
    inc de
    ld a, [de]
    ld [hl], a
    ld h, $54
    ld a, $96
    add b
    ld l, a
    jr nc, jr_005_5029

    inc h

jr_005_5029:
    ld c, [hl]
    ld h, $de
    ld a, $c2
    add b
    ld l, a
    ld [hl], c
    add $a8
    ld l, a
    ld [hl], $01
    pop de

jr_005_5037:
    ret


Call_005_5038:
    ld a, [de]
    and $e0
    cp $c0
    jr nz, .jr_005_5043
    inc de
    ld a, [de]
    jr .jr_005_505a
.jr_005_5043:
    ld h, $de
    ld a, $aa
    add b
    ld l, a
    ld a, [de]
    and $e0
    swap a
    srl a
    add [hl]
    add $ab
    ld l, a
    ld a, $00
    adc $79
    ld h, a
    ld a, [hl]
.jr_005_505a:
    ld c, a
    ld h, $de
    ld a, $52
    add b
    ld l, a
    ld a, c
    ld [hl], a
    ret


Jump_005_5064:
    ld a, c
    cp $f0
    jr nz, jr_005_5081

    inc de
    ld h, $de
    ld a, $9a
    add b
    ld l, a
    ld a, [de]

jr_005_5071:
    swap a
    and $f0
    ld c, a
    ld a, [hl]
    and $0f
    or c
    ld [hl], a
    call Call_005_5347
    jp Jump_005_4f67


jr_005_5081:
    cp $f1
    jr nz, jr_005_50a5

    inc de
    ld a, [de]
    ld c, a
    ld h, $de
    ld a, $9a
    add b
    ld l, a
    ld a, [hl]
    swap a
    and $0f
    add c
    bit 7, c
    jr nz, jr_005_50a0

    cp $10
    jr c, jr_005_50a3

    ld a, $0f
    jr jr_005_50a3

jr_005_50a0:
    jr c, jr_005_50a3

    xor a

jr_005_50a3:
    jr jr_005_5071

jr_005_50a5:
    cp $f2
    jr nz, jr_005_50ba

    inc de
    ld a, [de]
    add a
    ld c, a
    add a
    add c
    ld hl, $deaa

Jump_005_50b2:
    ld c, a
    ld a, l
    add b
    ld l, a
    ld [hl], c
    jp Jump_005_4f67


jr_005_50ba:
    cp $f3
    jr nz, jr_005_50cf

    inc de
    ld h, $de
    ld a, $52
    add b
    ld l, a
    ld a, [de]
    ld [hl], a
    ld a, $82
    add b
    ld l, a
    ld [hl], $ff
    inc de
    ret


jr_005_50cf:
    cp $f4
    jr nz, jr_005_50db

    inc de
    ld a, [de]
    ld hl, $de92
    jp Jump_005_50b2


jr_005_50db:
    cp $f5
    jr nz, jr_005_50e7

    inc de
    ld a, [de]
    ld hl, $de8a
    jp Jump_005_50b2


jr_005_50e7:
    cp $f6
    jr nz, jr_005_50fc

    inc de
    ld h, $de
    ld a, $a2
    add b
    ld l, a
    ld a, [de]
    ld [hl], a
    bit 7, a
    call nz, Call_005_5006
    jp Jump_005_4f67


jr_005_50fc:
    cp $f7
    jr nz, jr_005_5108

    inc de
    ld a, [de]
    ld hl, $deb2
    jp Jump_005_50b2


jr_005_5108:
    cp $e2
    jr nz, jr_005_511e

    inc de
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    push de
    ld d, a
    ld e, c
    call Call_005_5215
    call Call_005_4ffb
    pop de
    jp Jump_005_4f67


jr_005_511e:
    cp $e3
    jr nz, jr_005_5135

    inc de
    ld a, [de]
    push de
    cpl
    inc a
    ld e, a
    ld d, $00
    rla
    jr nc, jr_005_512e

    dec d

jr_005_512e:
    call Call_005_53b6
    pop de
    jp Jump_005_4f67


jr_005_5135:
    cp $fe
    jr nz, jr_005_516f

    inc de
    ld a, [de]
    ld c, a
    push de
    ld h, $de
    ld a, $4a
    add b
    ld l, a
    ld e, [hl]
    srl e
    srl e
    ld d, $00
    ld hl, $de42
    add hl, de
    ld a, c
    rra
    jr nc, jr_005_5154

    set 4, d

jr_005_5154:
    rra
    jr nc, jr_005_5158

    inc d

jr_005_5158:
    inc e
    dec e
    jr z, jr_005_5161

jr_005_515c:
    rlc d
    dec e
    jr nz, jr_005_515c

jr_005_5161:
    ld a, b
    cp $04
    jr c, jr_005_516a

    inc l
    inc l
    inc l
    inc l

jr_005_516a:
    ld [hl], d
    pop de
    jp Jump_005_4f67


jr_005_516f:
    cp $e1
    jr nz, jr_005_517b

    inc de
    ld a, [de]
    ld [$de00], a
    jp Jump_005_4f67


jr_005_517b:
    cp $ff
    jr nz, jr_005_518f

    ld h, $de
    ld a, $52
    add b
    ld l, a
    ld [hl], $00
    add $18
    ld l, a
    xor a
    ld [hl], a
    jp Jump_005_533b


jr_005_518f:
    ld hl, $deba
    call Call_005_5198
    jp Jump_005_4f68


Call_005_5198:
    ld a, l
    add b
    ld l, a
    push hl
    ld a, $00
    add [hl]
    ld l, a
    ld a, $df
    adc $00
    ld h, a
    call Call_005_51ae
    ld a, l
    sub $00
    pop hl
    ld [hl], a
    ret


Call_005_51ae:
    ld a, [de]
    cp $f8
    jr nz, jr_005_51bb

    inc de
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld d, a
    ld e, c
    ret


jr_005_51bb:
    cp $fa
    jr nz, jr_005_51ce

    inc de
    inc de
    inc de
    dec hl
    ld [hl], d
    dec hl
    ld [hl], e
    dec de
    ld a, [de]
    ld c, a
    dec de
    ld a, [de]
    ld e, a
    ld d, c
    ret


jr_005_51ce:
    cp $fb
    jr nz, jr_005_51d7

    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ret


jr_005_51d7:
    cp $fc
    jr nz, jr_005_51e6

    inc de
    ld a, [de]
    ld c, a
    inc de
    dec hl
    ld [hl], d
    dec hl
    ld [hl], e
    dec hl
    ld [hl], c
    ret


jr_005_51e6:
    cp $fd
    jr nz, jr_005_51f8

    dec [hl]
    jr z, jr_005_51f4

    inc hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    dec hl
    dec hl
    ret


jr_005_51f4:
    inc hl
    inc hl
    inc hl
    inc de

jr_005_51f8:
    ret


Call_005_51f9:
    ld e, a
    ld a, $b2
    add b
    ld l, a
    ld a, [hl]
    add a
    add $9e
    ld l, a
    ld a, $00
    adc $54
    ld h, a
    ld a, [hl+]
    rlc e
    add e
    ld e, a
    ld a, [hl]
    adc $00
    ld h, a
    ld l, e
    ld a, [hl+]
    ld d, a
    ld e, [hl]

Call_005_5215:
    ld h, $de
    ld a, $4a
    add b
    ld l, a
    ld a, [hl]
    cp $0a
    jr z, jr_005_5227

    ld a, $03
    call Call_005_53ca
    jr jr_005_5231

jr_005_5227:
    ld a, $00
    call Call_005_53ca
    ld [hl], $80
    inc l
    inc l
    inc l

jr_005_5231:
    ld a, e
    ld [hl+], a
    ld [hl], d
    ret


Call_005_5235:
    ld h, $de
    ld a, $82
    add b
    ld l, a
    ld a, [hl]
    and a
    ret z

    cp $ff
    ret z

    dec [hl]
    ret nz

    ld a, $a2
    add b
    ld l, a
    ld a, [hl]
    add a
    add a
    add $02
    jp Jump_005_5008


Call_005_524f:
    ld h, $de
    ld a, $6a
    add b
    ld l, a
    dec [hl]
    jr z, jr_005_525a

    ret


Jump_005_5259:
jr_005_5259:
    inc de

Jump_005_525a:
jr_005_525a:
    ld h, $de
    ld a, [de]
    ld c, a
    and $e0
    jr nz, jr_005_526d

    ld a, c
    and $1f
    ld c, a
    ld a, $6a
    add b
    ld l, a
    ld [hl], c
    inc de
    ret


jr_005_526d:
    cp $20
    jr nz, jr_005_528a

    push bc
    push de
    call Call_005_53a8
    call Call_005_53b6
    pop de
    pop bc

Jump_005_527b:
    ld a, [de]
    and $10
    jr z, jr_005_5259

    ld h, $de
    ld a, $6a
    add b
    ld l, a
    ld [hl], $01
    inc de
    ret


jr_005_528a:
    cp $40
    jr nz, jr_005_5294

    ld a, c
    and $0f
    jp Jump_005_52b2


jr_005_5294:
    cp $60
    jr nz, jr_005_52ba

    push de
    call Call_005_53a8
    ld h, $de
    ld a, $9a
    add b
    ld l, a
    ld a, [hl]
    and $0f
    add e
    bit 7, a
    jr z, jr_005_52ab

    xor a

jr_005_52ab:
    cp $10
    jr c, jr_005_52b1

    ld a, $0f

jr_005_52b1:
    pop de

Jump_005_52b2:
    push de
    call Call_005_533b
    pop de
    jp Jump_005_527b


jr_005_52ba:
    cp $80
    jr nz, jr_005_5311

    ld h, $de
    ld a, $4a
    add b
    ld l, a
    ld a, [hl]
    cp $0a
    jr z, jr_005_52dc

    ld a, $01
    call Call_005_53ca
    ld a, c
    rrca
    rrca
    and $c0
    ld c, a
    ld a, [hl]
    and $3f
    or c
    ld [hl], a
    jp Jump_005_527b


jr_005_52dc:
    ld a, c
    and $0f
    ld hl, $ded2
    cp [hl]
    jr z, jr_005_5302

    push de
    ld [hl], a
    swap a
    ld e, a
    ld d, $00
    ld hl, $54af
    add hl, de
    xor a
    ldh [rNR30], a
    call Call_005_5305
    ld a, $80
    ldh [rNR30], a
    ld a, [$de14]
    set 7, a
    ldh [rNR34], a
    pop de

jr_005_5302:
    jp Jump_005_527b


Call_005_5305:
    ld de, $ff30
    ld c, $10

jr_005_530a:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_005_530a

    ret


jr_005_5311:
    cp $e0
    jr nz, jr_005_533a

    ld a, c
    cp $f0
    jr nz, jr_005_5326

    inc de
    ld a, [de]
    ld c, a
    ld a, $00
    call Call_005_53c2
    ld [hl], c
    jp Jump_005_5259


jr_005_5326:
    cp $ff
    jr nz, jr_005_5331

    ld a, $6a
    add b
    ld l, a
    ld [hl], $00
    ret


jr_005_5331:
    ld hl, $dec2
    call Call_005_5198
    jp Jump_005_525a


jr_005_533a:
    ret


Call_005_533b:
Jump_005_533b:
    ld c, a
    ld h, $de
    ld a, $9a
    add b
    ld l, a
    ld a, [hl]
    and $f0
    or c
    ld [hl], a

Call_005_5347:
    push de
    ld a, $ff
    sub [hl]
    swap a
    and $0f
    ld e, a
    ld a, [hl]
    and $0f
    sub e
    ld e, a
    jr nc, jr_005_5359

    ld e, $00

jr_005_5359:
    push hl
    ld hl, $de01
    ld a, b
    cp $04
    jr c, jr_005_5363

    inc l

jr_005_5363:
    ld a, $ff
    sub [hl]
    swap a
    and $0f
    ld d, a
    pop hl
    ld a, e
    sub d
    jr nc, jr_005_5371

    xor a

jr_005_5371:
    ld e, a
    ld a, $4a
    add b
    ld l, a
    ld a, [hl]
    cp $0a
    jr z, jr_005_5389

    ld a, $02
    call Call_005_53ca
    swap e
    ld a, [hl]
    and $0f
    or e
    ld [hl], a
    pop de
    ret


jr_005_5389:
    ld d, $00
    ld hl, $5398
    add hl, de
    ld e, [hl]
    ld a, $02
    call Call_005_53c2
    ld [hl], e
    pop de
    ret


    nop
    ld h, b
    ld h, b
    ld h, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    jr nz, jr_005_53c2

    jr nz, @+$22

    jr nz, @+$22

    jr nz, jr_005_53c8

Call_005_53a8:
    ld a, c
    and $0f
    ld d, $00
    bit 3, a
    jr z, jr_005_53b4

    or $f0
    dec d

jr_005_53b4:
    ld e, a
    ret


Call_005_53b6:
    ld a, $03
    call Call_005_53c2
    ld a, e
    add [hl]
    ld [hl+], a
    ld a, d
    adc [hl]
    ld [hl], a
    ret


Call_005_53c2:
jr_005_53c2:
    push af
    ld h, $de
    ld a, $4a
    add b

jr_005_53c8:
    ld l, a
    pop af

Call_005_53ca:
    add [hl]

Call_005_53cb:
    ld hl, $df80
    add [hl]
    ld l, a
    ld h, $de
    ret


Call_005_53d3:
    push bc
    push de
    ld d, wdc00 >> 8
    ld l, a
    ld h, d
    and e
    rra
    ld a, [de]
    adc [hl]
    ld c, a
    inc d
    ld h, d
    ld a, [de]
    adc [hl]
    ld b, a
    ld a, l
    sub e
    jr nc, .jr_005_53e9
    cpl
    inc a
.jr_005_53e9:
    ld l, a
    dec h
    ld a, c
    sub [hl]
    ld e, a
    inc h
    ld a, b
    sbc [hl]
    ld h, a
    ld l, e
    pop de
    pop bc
    ret


    nop
    dec sp
    nop
    xor d
    ld bc, $0112
    ld [hl], l
    ld bc, $02d3
    dec hl
    ld [bc], a
    ld a, [hl]
    ld [bc], a
    call $1703
    inc bc
    ld e, l
    inc bc
    and b
    inc bc
    sbc $04
    add hl, de
    inc b
    ld d, c
    inc b
    add [hl]
    inc b
    cp b
    inc b
    rst $20
    dec b
    inc de
    dec b
    dec a
    dec b
    ld h, h
    dec b
    adc d
    dec b
    xor l
    dec b
    adc $05
    xor $06
    dec bc
    ld b, $27
    ld b, $42
    ld b, $5b
    ld b, $72
    ld b, $89
    ld b, $9e
    ld b, $b2
    ld b, $c4
    ld b, $d6
    ld b, $e7
    ld b, $f6
    rlca
    dec b
    rlca
    inc de
    rlca
    ld hl, $2d07
    rlca
    add hl, sp
    rlca
    ld b, h
    rlca
    ld c, [hl]
    rlca
    ld e, b
    rlca
    ld h, d
    rlca
    ld l, e
    rlca
    ld [hl], e
    rlca
    ld a, e
    rlca
    add d
    rlca
    adc c
    rlca
    sub b
    rlca
    sub [hl]
    rlca
    sbc h
    rlca
    and d
    rlca
    and a
    rlca
    xor h
    rlca
    or c
    rlca
    or l
    rlca
    cp c
    rlca
    cp l
    rlca
    pop bc
    rlca
    call nz, $c807
    rlca
    rlc a
    adc $07
    pop de
    rlca
    db $d3
    rlca
    sub $07
    ret c

    rlca
    jp c, $dc07

    rlca
    sbc $1a
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld l, $2e
    ld l, $2e
    db $10
    jr nz, jr_005_54c1

    ld b, b
    ld d, b
    ld h, b
    ld [hl], b
    add b
    ld b, $16
    ld h, $36
    ld b, [hl]
    ld d, [hl]
    ld h, [hl]
    db $76
    ldh a, [rHDMA3]
    nop
    db $10
    jr nz, jr_005_54d4

    rlca
    inc hl
    ld d, b
    inc sp
    ld h, b
    ld b, e
    ld [hl], b
    ld b, l
    ld b, a
    ld d, l
    ld h, l
    ld [hl+], a
    ld h, [hl]
    xor d
    xor $ff
    rst $38
    cp $ea
    and [hl]
    ld h, [hl]
    adc d
    rst $08
    cp $ec
    and [hl]
    inc sp
    rst $38
    rst $38

jr_005_54c1:
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    inc de
    ld d, a
    sbc e
    rst $18
    db $db

jr_005_54d4:
    sub a
    ld d, e
    db $10
    inc de
    ld d, a
    sbc e
    rst $18
    db $db
    sub a
    ld d, e
    db $10
    inc b
    call $0055
    xor h
    ld d, [hl]
    inc b
    add b
    ld d, a
    db $10
    ld d, d
    ld e, b
    inc c
    inc b
    ld a, e
    ld e, b
    db $10
    ld c, c
    ld e, c
    nop
    ld [hl+], a
    ld e, d
    inc b
    dec bc
    ld e, e
    inc c
    inc b
    ld e, c
    ld e, e
    nop
    sub c
    ld e, e
    db $10
    ret


    ld e, e
    inc b
    or $5b
    inc c
    inc b
    rra
    ld e, h
    nop
    ld b, a
    ld e, h
    db $10
    ld [hl], l
    ld e, h
    inc b
    sbc c
    ld e, h
    inc c
    ld [bc], a
    cp h
    ld e, h
    nop
    pop de
    ld e, h
    inc b
    inc b
    pop hl
    ld e, h
    nop
    ld d, l
    ld e, l
    db $10
    ld [c], a
    ld e, l
    inc b
    ld e, [hl]
    ld e, [hl]
    inc c
    inc b
    sub e
    ld e, [hl]
    db $10
    ld [hl], $5f
    nop
    ld c, $60
    inc b
    ld bc, $0c61
    inc bc
    ld h, b
    ld h, c
    nop
    add b
    ld h, c
    inc b
    adc c
    ld h, c
    db $10
    inc b
    and e
    ld h, c
    db $10
    jr jr_005_55a6

    nop
    and b
    ld h, d
    inc b
    ld [hl+], a
    ld h, e
    inc c
    inc b
    sbc l
    ld h, e
    db $10
    jr jr_005_55b5

    nop
    add h
    ld h, h
    inc b
    rst $38
    ld h, h
    inc c
    inc b
    ld l, c
    ld h, l
    nop
    sbc b
    ld h, l
    inc b
    ret


    ld h, l
    db $10
    ld hl, sp+$65
    inc c
    inc b
    ld [de], a
    ld h, [hl]
    db $10
    add hl, hl
    ld h, a
    nop
    daa
    ld l, b
    inc b
    ld e, b
    ld l, c
    inc c
    inc b
    db $f4
    ld l, c
    db $10
    ld [hl], c
    ld l, d
    nop
    ld l, a
    ld l, e
    inc b
    ld c, a
    ld l, h
    inc c
    inc b
    rst $20
    ld l, h
    nop
    rst $28
    ld l, h
    inc b
    inc bc
    ld l, l
    db $10
    rst $30
    ld l, h
    inc c
    inc b
    ld a, [bc]
    ld l, l
    nop
    ld de, $046d
    jr @+$6f

    db $10
    daa
    ld l, l
    inc c
    inc b
    inc [hl]
    ld l, l
    nop
    dec a
    ld l, l
    inc b
    ld b, h
    ld l, l
    db $10
    ld d, d
    ld e, b
    inc c

jr_005_55a6:
    inc b
    ld d, e
    ld l, l
    nop
    ld e, d
    ld l, l
    inc b
    ld e, a
    ld l, l
    db $10
    ld l, h
    ld l, l
    inc c
    inc b
    ld [hl], a

jr_005_55b5:
    ld l, l
    db $10
    jp c, $006d

    ld c, a
    ld l, [hl]
    inc b
    cp a
    ld l, [hl]
    inc c
    inc b
    db $ec
    ld l, [hl]
    db $10
    db $10
    ld l, a
    nop
    inc [hl]
    ld l, a
    inc b
    ld d, h
    ld l, a
    inc c
    ld a, [c]
    ld [bc], a
    cp $03
    push af
    inc sp
    or $05
    ldh a, [$0b]
    db $f4
    add b
    ld a, [$5622]
    ld a, [$562c]
    ld a, [$5622]
    ld a, [$5634]
    or $0d
    ldh a, [$0a]
    db $f4
    nop
    ld a, [$5646]
    ld a, [$5652]
    ld a, [$5646]
    ld a, [$5660]
    or $0f
    ld a, [$5669]
    ldh a, [$09]
    cp $03
    ld a, [$5681]
    cp $03
    ld a, [$5615]
    or $0e
    ldh a, [$09]
    ld a, [$5695]
    ld a, [$5615]
    ld hl, sp-$1b
    ld d, l
    db $f4
    add b
    or $05
    ldh a, [$08]
    db $fc
    ld b, $07
    pop af
    ld bc, $fbfd
    jr nc, @-$0a

    add b
    rra
    rra
    rra
    ld d, b
    ccf
    ccf
    ei
    jr nc, jr_005_562e

jr_005_562e:
    nop
    dec a
    jr nc, jr_005_566f

    ccf
    ei
    jr nc, jr_005_5636

jr_005_5636:
    nop
    dec a
    or $0c
    db $f4
    ret z

    db $fc
    inc bc
    rlca
    pop af
    rst $38
    rlca
    pop af
    ld [bc], a
    db $fd
    ei
    ld b, h
    dec b
    inc b
    dec b
    rlca
    db $10
    ld c, h
    db $10
    ld l, e
    add hl, hl
    xor c
    ei
    jr nc, jr_005_5656

    inc b
    ld [bc], a

jr_005_5656:
    inc b
    dec b
    db $10
    ld c, e
    add hl, bc
    rst $00
    ld [hl], $c2
    ld [hl], $fb
    inc l
    ld a, [hl+]
    jr z, jr_005_5690

    ld c, d
    inc c
    rst $00
    ld l, h
    ei
    ld h, d
    ld [bc], a
    inc b
    dec h
    ld [hl+], a
    dec h

jr_005_566f:
    ld h, h
    inc b
    dec b
    daa
    dec h
    inc h
    ld [hl+], a
    ld [hl+], a
    ld [bc], a
    inc b
    dec h
    ld [hl+], a
    dec h
    daa
    inc h
    daa
    xor h
    ei
    ld l, [hl]
    inc c
    ld a, [bc]
    add hl, hl
    ld a, [hl+]
    inc l
    ld h, a
    inc b
    dec b
    daa
    inc h
    dec h
    ld h, h
    ld [bc], a
    inc b

jr_005_5690:
    ld h, d
    nop
    ld [bc], a
    and d
    ei
    db $fc
    ld b, $f4
    nop
    rra
    dec de
    db $fd
    db $fc
    ld b, $00
    dec e
    db $fd
    db $fc
    ld b, $1f
    dec de
    db $fd
    db $fc
    inc bc
    nop
    dec e
    db $fd
    ei
    ld a, [c]
    ld [bc], a
    cp $03
    or $05
    db $f4
    add b
    ldh a, [$0b]
    push af
    inc sp
    ld a, [$5707]
    ld a, [$5714]
    ld a, [$5707]
    ld a, [$5718]
    cp $03
    or $0d
    ldh a, [$0a]
    db $f4
    nop
    ld a, [$573b]
    ld a, [$5748]
    ld a, [$573b]
    ld a, [$5757]
    or $05
    db $f4
    adc h
    ldh a, [$08]
    push af
    daa
    ld a, [$5760]
    ld a, [$5760]
    or $0e
    db $f4
    rst $38
    ldh a, [$0a]
    cp $03
    ld a, [$5681]
    ld a, [$5718]
    push af
    daa
    cp $03
    or $0e
    db $f4
    nop
    ldh a, [$09]
    ld a, [$576b]
    ld a, [$5718]
    ld hl, sp-$3c
    ld d, [hl]
    jr nc, @+$1d

    dec de
    dec de
    ld d, b
    dec sp
    dec sp
    jr nc, @+$1b

    add hl, de
    add hl, de
    db $10
    ei
    jr nc, jr_005_574e

    ld [hl], $fb
    or $0c
    push af
    inc sp
    db $f4
    ret z

    cp $01
    rlca
    pop af
    rst $38
    cp $02
    ld b, $f1
    ld [bc], a
    cp $01
    dec b
    pop af
    rst $38
    cp $02
    inc b
    pop af
    ld [bc], a
    cp $01
    inc bc
    pop af
    rst $38
    cp $02
    ld [bc], a
    ei
    ld b, b
    ld [bc], a
    nop
    ld [bc], a
    inc b
    db $10
    ld b, h
    db $10
    ld h, d
    nop
    db $10
    and b
    ei
    jr nc, @+$21

    nop
    rra
    nop
    ld [bc], a

jr_005_574e:
    db $10
    ld b, a
    dec b
    call nz, $3f36
    dec a
    dec sp
    ei
    jr z, jr_005_5780

    dec h
    jr z, jr_005_57a3

    ld [$6cc4], sp
    ei
    db $fc
    ld b, $19
    ld d, $fd
    db $fc
    ld b, $1b
    jr @-$01

    ei
    db $fc
    ld b, $1b
    jr @-$01

    db $fc
    ld b, $1d
    add hl, de
    db $fd
    db $fc
    ld b, $1b
    jr @-$01

    db $fc
    inc bc
    dec e
    add hl, de
    db $fd
    ei

jr_005_5780:
    ld a, [c]
    ld [bc], a
    cp $03
    ldh a, [rIF]
    or $07
    push af
    daa
    ld a, [$57d3]
    ld a, [$57e8]
    ld a, [$57d3]
    ld a, [$57f5]

jr_005_5796:
    ld a, [$5803]
    push af
    jr nz, jr_005_5796

    inc bc
    ld e, b
    push af
    ld [hl+], a
    ld a, [$5803]

jr_005_57a3:
    push af
    daa
    ld a, [$580d]

jr_005_57a8:
    ld a, [$5803]
    push af
    jr nz, jr_005_57a8

    inc bc
    ld e, b
    push af
    dec de
    ld a, [$581a]
    ld a, [$5803]
    push af
    daa
    or $0b
    db $f4
    adc h
    ld a, [$5827]
    ld a, [$5827]
    push af
    dec de
    db $f4
    ret z

    ld a, [$5827]
    db $f4
    nop
    ld a, [$583a]
    ld hl, sp-$80
    ld d, a
    db $f4
    call c, $27f5
    inc d
    dec de
    db $f4
    ret z

    ld [bc], a
    ld [bc], a
    nop
    db $10
    db $f4
    call c, $1b14

jr_005_57e3:
    db $f4
    ret z

    ld [hl+], a
    jr nz, jr_005_57e3

    ld d, $1d
    inc b
    inc b
    ld [bc], a
    db $10
    push af
    dec de
    dec de
    ld [bc], a
    daa
    daa
    ei
    ld d, $1d
    inc b
    inc b
    ld [hl+], a
    db $f4
    and b
    dec de
    dec de
    dec de
    dec de
    dec e
    rra
    ei
    db $fc
    ld [bc], a
    inc d
    dec de
    ld [bc], a
    inc b
    nop
    db $10
    db $fd
    ei
    inc d
    dec de
    ld [bc], a
    inc b
    nop
    db $10
    dec de
    rlca
    rlca
    dec de
    rlca
    rlca
    ei
    inc e
    inc e
    ld [$081c], sp
    rla
    ld e, $1e
    ld a, [bc]
    ld e, $0a
    add hl, de
    ei
    db $fc
    ld [bc], a
    ld [de], a
    add hl, de
    ld [bc], a
    ld e, $02
    ld e, $fd
    db $fc
    ld [bc], a
    inc d
    dec de
    inc b
    nop
    inc b
    nop
    db $fd
    ei
    db $fc
    ld [bc], a
    ld d, $1d
    dec b
    ld [bc], a
    add hl, bc
    dec b
    db $fd
    dec de
    ld [bc], a
    dec bc
    rlca
    dec bc
    dec b
    db $f4
    and b
    dec de
    dec de
    dec de
    dec de
    dec e
    rra
    ei
    ld a, [c]
    ld [bc], a
    cp $03
    ldh a, [$0a]
    or $10
    db $f4
    nop
    ld [bc], a
    pop af
    ei
    inc b
    pop af
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    pop af
    ei
    inc b
    pop af
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    pop af
    ei
    inc b
    pop af
    dec b
    ld [bc], a
    pop af
    ei
    inc b
    pop af
    dec b
    ld hl, sp+$5c
    ld e, b
    ld a, [c]
    ld bc, $03fe
    ldh a, [rIF]
    or $02
    db $f4
    ldh a, [$f5]
    dec de
    dec de
    dec de
    db $10
    dec de
    db $f4
    add b
    dec sp
    dec sp
    dec sp
    push af
    inc sp
    db $f4
    or h
    ld [bc], a
    ld [bc], a
    ld [bc], a
    db $10
    db $f4
    nop
    push af
    rrca
    db $db
    inc bc
    db $dd
    inc b
    rst $18
    inc bc
    db $f4
    ld [hl-], a
    push af
    dec de
    or h
    or h
    or [hl]

jr_005_58a9:
    db $f4
    add d
    or $11
    jr nc, jr_005_58ea

    dec sp
    dec sp
    dec sp
    jr nc, jr_005_58a9

    inc sp
    ldh a, [rIF]
    or $11
    ld a, [$58dc]
    ld a, [$58dc]
    di
    inc d
    ld a, [$5900]
    push af
    dec de
    or $02
    db $f4
    ld [hl-], a
    or h
    or h
    push af
    rrca
    db $f4
    ldh a, [$fc]
    inc bc
    ld a, [$590c]
    db $fd
    ld a, [$592d]
    ld hl, sp-$4d
    ld e, b
    db $f4
    sub [hl]
    ld e, e
    db $f4
    rst $38
    dec de
    ret nz

    add hl, sp
    ret nc

    inc bc
    ld b, b
    inc b
    daa
    db $f4

jr_005_58ea:
    adc h
    inc l
    dec hl
    add hl, hl
    db $f4
    rst $38
    ld h, a
    ld b, h
    rlca
    db $f4
    ldh a, [$65]
    ld b, d
    inc b
    ld h, d
    ld b, h
    ld [bc], a
    db $f4
    and $c0
    inc a
    ei
    db $f4
    and $40
    nop
    ld [bc], a
    db $10
    ld h, h

jr_005_5907:
    nop
    db $10
    ld [hl+], a
    jr nz, jr_005_5907

    add hl, de
    nop
    ld [$0805], sp
    dec b
    ld [$1e05], sp
    dec b
    ld a, [bc]
    dec b
    ld a, [bc]
    dec b
    ld a, [bc]
    dec b
    rla
    ld e, $07
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    inc e
    inc bc
    ld [$0803], sp
    inc bc
    ld [$fb03], sp
    add hl, de
    nop
    dec b
    nop
    dec b
    nop
    dec b
    nop
    ld e, $05
    ld a, [bc]
    dec b
    ld a, [bc]
    dec b
    ld a, [bc]
    dec b
    db $fc
    ld [bc], a
    db $f4
    ldh a, [rNR31]
    db $10
    dec de
    ld [bc], a
    db $fd
    rlca
    ld d, b
    ei
    ld a, [c]
    ld bc, $32d0
    cp $03
    ldh a, [$0a]
    or $08
    push af
    daa
    db $f4
    ldh a, [rTIMA]
    dec b
    dec b
    ld d, b
    push af
    dec de
    ld a, [$599b]
    ld a, [$599b]
    ld a, [$59a3]
    or $08
    ldh a, [$0a]
    push af
    dec de
    ld a, [$59b1]
    ld a, [$59c6]
    ld a, [$59b1]
    ld a, [$59d8]
    ld a, [$59f5]
    ld a, [$599b]
    ld a, [$599b]
    push af
    daa
    or $12
    ldh a, [$0c]
    db $f4
    nop
    ld a, [$59fe]
    ld a, [$5a11]
    ldh a, [$0b]

jr_005_5991:
    ld a, [$59fe]
    ld a, [$5a1e]
    ld [hl], b
    ld hl, sp+$66
    ld e, c
    jr nc, jr_005_5991

    adc h
    db $fc
    rlca

jr_005_59a0:
    dec sp

jr_005_59a1:
    db $fd
    ei
    jr nc, jr_005_59a1

    rlca
    dec a
    db $fd
    jr nc, jr_005_59a0

    inc b
    add hl, hl
    add hl, hl
    add hl, hl
    dec hl
    sub b
    ei
    db $fc
    ld [bc], a
    db $f4
    nop
    inc [hl]
    db $f4
    add d
    db $fc
    rlca
    dec sp
    db $fd
    db $fd
    db $f4
    nop
    ld [hl], $f4
    adc h
    dec a
    dec a
    dec a
    ei
    db $f4
    nop
    ld [hl], $f4
    adc h
    dec sp
    dec sp
    dec sp
    db $f4
    nop

jr_005_59d0:
    inc [hl]
    db $fc
    rlca
    db $f4
    adc h
    dec sp
    db $fd
    ei
    db $f4
    nop
    jr c, jr_005_59d0

    adc h
    ccf
    ccf
    ccf
    db $f4
    nop
    cp $01
    dec a
    db $f4
    adc h
    add hl, hl
    add hl, hl
    add hl, hl
    db $f4
    nop
    dec sp
    db $f4
    adc h
    daa
    daa
    daa
    cp $03
    ei
    db $f4
    sub [hl]
    ld e, l
    dec a
    ld d, b
    ccf
    ccf
    ld [hl], b
    ei
    ld h, e
    ld b, d
    inc bc
    ld h, l
    ld b, e
    dec b
    ld h, a
    ld b, l
    rlca
    ld h, b
    ld b, b
    ld [bc], a
    ld h, e
    ld b, d

jr_005_5a0c:
    inc bc
    ld h, l
    ld b, e
    dec b
    ei
    rst $00
    jr z, jr_005_5a40

    jr nc, jr_005_5a0c

    dec c
    push af
    inc sp
    db $f4
    and $40
    ld [bc], a
    ei
    jp nz, Jump_005_6728

    ei
    ld a, [c]
    ld bc, $03fe
    ldh a, [$0a]
    or $08
    push af
    rrca
    db $f4
    ldh a, [rNR31]
    dec de
    db $10
    dec de
    db $f4
    add b
    dec sp
    dec sp
    dec sp
    db $f4
    or h
    push af
    daa
    rlca
    rlca
    rlca
    db $10
    db $f4

jr_005_5a40:
    nop
    push af
    rrca
    ldh a, [$0d]
    db $db
    inc bc
    db $dd
    inc b
    rst $18
    inc bc
    push af
    daa
    ldh a, [$0a]
    db $f4
    adc h
    ld a, [$5a8f]
    ld a, [$5a8f]
    ld a, [$5a95]
    or $08
    ldh a, [$0a]
    push af
    dec de
    ld a, [$5aa3]
    ld a, [$5ab8]
    ld a, [$5aa3]
    ld a, [$5aca]
    ld a, [$5ade]
    ld a, [$5a8f]
    ld a, [$5a8f]
    push af
    daa
    or $12
    ldh a, [$0c]
    db $f4
    nop
    ld a, [$5ae7]
    ld a, [$5afa]
    ldh a, [$0b]
    ld a, [$5ae7]
    ld a, [$5b07]
    ld [hl], b
    ld hl, sp+$5a
    ld e, d
    jr nc, @-$02

jr_005_5a91:
    rlca
    jr c, jr_005_5a91

    ei
    jr nc, @-$02

    rlca
    add hl, sp
    db $fd
    or $04
    jr nc, jr_005_5ac3

    dec h
    daa
    daa
    sub b
    ei
    db $fc
    ld [bc], a
    db $f4
    nop
    dec sp
    db $f4
    adc h
    db $fc
    rlca
    inc h
    db $fd
    db $fd
    db $f4
    nop
    dec a
    db $f4

jr_005_5ab3:
    adc h
    jr nz, jr_005_5ad6

    jr nz, jr_005_5ab3

    db $f4
    nop
    dec sp
    db $f4
    adc h
    ccf
    ccf
    ccf
    db $f4
    nop
    dec sp

jr_005_5ac3:
    db $f4
    adc h
    db $fc
    rlca
    inc h
    db $fd
    ei
    db $f4
    nop
    inc a
    db $f4
    adc h
    inc h
    inc h
    inc h
    db $f4
    rst $38
    cp $02

jr_005_5ad6:
    db $fc
    ld [$0400], sp
    db $fd
    cp $03
    ei
    db $f4
    sub [hl]
    ld b, l
    dec h
    ld d, b
    daa
    daa
    ld [hl], b
    ei
    ld a, h
    ld e, h
    inc e
    ld h, d
    ld b, b
    ld [bc], a
    ld h, e
    ld b, d
    inc bc
    ld a, h
    ld e, h
    ld e, $7c
    ld e, h
    inc e
    ld h, d
    ld b, b
    ld [bc], a
    ei
    jp $2728


    jr nc, @-$0a

    and $f5
    inc sp
    or $0d
    ld e, h
    ld e, $fb
    rst $18
    jr z, @+$81

    ei
    ld a, [c]
    ld bc, $03fe
    ldh a, [$0a]
    or $10
    db $f4
    ldh a, [$af]
    rst $08
    ld a, [$2222]
    ld [hl+], a
    ld [hl+], a
    adc a
    db $fc
    ld [$08f0], sp
    ld a, [$5b36]
    db $fd
    ld a, [$5b41]
    ldh a, [rTAC]
    db $fc
    add hl, bc
    ld a, [$5b36]
    db $fd
    ld a, [$5b4f]
    ld hl, sp+$1d
    ld e, e
    db $fc
    inc bc
    inc hl
    inc b
    inc b
    db $fd
    inc bc
    inc b
    inc b
    inc b
    ei
    inc hl
    inc b
    inc b
    inc hl
    inc b
    inc b
    pop af
    ld bc, $2424
    pop af
    rst $38
    ld l, a
    ei
    inc hl
    inc b
    inc b
    inc hl
    inc b
    inc b
    ld [hl+], a
    cpl
    ld l, a
    ei
    ld a, [c]
    ld bc, $03fe
    ldh a, [$0c]
    or $13
    push af
    inc l
    db $f4
    rst $38
    jp nz, $2019

    ld [bc], a
    ld h, h
    ld a, e
    ld [bc], a
    db $10
    ld b, d
    jr nz, jr_005_5b72

    ld h, h
    ld a, e

jr_005_5b72:
    rlca
    dec b
    inc b
    rlca

jr_005_5b76:
    dec b
    inc b
    ld [bc], a
    dec b
    inc b
    ld [bc], a
    nop
    inc b
    ld [bc], a
    nop
    ld [bc], a
    inc b
    ret nz

    jr z, jr_005_5b76

    rst $38
    db $f4
    nop
    rlc d
    db $f4
    rst $38
    call z, $f826
    ld e, c
    ld e, e
    ld a, [c]
    ld bc, $03fe
    or $07
    ldh a, [rIF]
    db $f4
    ret z

    push af
    jr nz, jr_005_5bf7

    add hl, de
    dec b
    add hl, sp
    dec b
    inc d
    db $10
    ld d, h
    dec sp
    inc d
    ld [de], a
    db $10
    ld [hl-], a
    ld e, $32
    ld e, $54
    inc d
    nop
    inc [hl]
    nop
    db $fc
    ld [bc], a
    add hl, sp
    dec h
    add hl, de
    dec h
    add hl, de
    db $fd
    ld [de], a
    db $10
    ld [hl-], a
    ld e, $32
    ld e, $12
    ld e, $32
    ld e, $32
    ld e, $f8
    sub c
    ld e, e
    ld a, [c]
    ld bc, $03fe
    push af
    ld sp, $09f0
    or $05
    db $f4
    rst $38
    db $fc
    inc b

jr_005_5bd7:
    inc d
    jr jr_005_5bd7

    db $fc
    inc b
    inc de
    ld d, $fd
    db $fc
    inc b
    inc d
    add hl, de
    db $fd
    db $fc
    inc b
    inc de
    dec de
    db $fd
    db $fc
    ld [$1814], sp
    db $fd
    db $fc
    ld [$1914], sp
    db $fd
    ld hl, sp-$37
    ld e, e
    ld a, [c]

jr_005_5bf7:
    ld bc, $03fe
    ldh a, [$0a]
    or $10
    db $f4
    rst $38
    ld b, $f1
    db $fc
    cp $01
    rlca
    cp $02
    rlca
    cp $01
    rlca
    cp $03
    pop af
    inc b
    dec b
    pop af
    db $fc
    cp $02
    rlca
    cp $01
    rlca
    cp $02
    rlca
    ld hl, sp-$0a
    ld e, e
    ld a, [c]
    inc bc
    cp $03
    ldh a, [$0a]
    or $14
    db $f4
    ld a, [$27f5]
    dec a
    inc e
    dec e
    db $10
    ld b, a
    dec b
    inc h
    dec b
    ld b, h
    ld b, d
    ld b, b
    ld [hl+], a
    db $f4
    nop
    pop bc
    inc bc
    ret nz

    inc b
    rst $18
    ld c, e
    db $fc
    inc c
    pop af
    rst $38
    di
    ld [bc], a
    db $fd
    rst $38
    ld a, [c]
    inc bc
    cp $03
    or $07
    ldh a, [rIF]
    push af
    daa
    db $f4
    ldh a, [rNR21]
    db $10
    ld [bc], a
    nop
    db $10
    ld d, [hl]
    ld [bc], a
    nop
    db $10
    dec e
    dec h
    dec de
    dec h
    dec de
    ld [hl+], a
    dec de
    dec h
    dec de
    pop af
    rst $38
    db $f4
    nop
    or $00
    call nc, $fc4b
    inc c
    pop af
    rst $38
    di
    ld [bc], a
    db $fd
    rst $38
    ld a, [c]
    inc bc
    cp $03
    or $14
    ldh a, [$0a]
    db $f4
    ld a, [$1bf5]
    dec h
    dec b
    dec b
    db $10
    ld c, [hl]
    ld c, $2c
    inc c
    ld c, c
    ld c, c
    ld b, a
    ld b, a
    db $f4
    nop
    call nz, $fc4b
    inc c
    pop af
    rst $38
    di
    ld [bc], a
    db $fd
    rst $38
    ld a, [c]
    inc bc
    cp $03
    ldh a, [$09]
    db $f4
    rst $38
    or $10
    dec h
    rlca
    daa
    rlca
    dec h
    rlca
    ld b, $07
    rlca
    dec h
    rlca
    dec h
    rlca
    dec b
    rlca
    rlca
    dec h
    rlca
    pop af
    ld [bc], a
    or $07
    push bc
    ld b, [hl]
    rst $38
    ld a, [c]
    inc b
    cp $03
    ldh a, [$0b]
    db $f4
    nop
    or $0e
    push af
    jr c, jr_005_5ceb

    daa
    dec hl
    add hl, hl
    daa
    inc h
    ld hl, sp-$38
    ld e, h
    ld a, [c]
    inc b
    cp $03
    ldh a, [$0b]

jr_005_5cd7:
    ld d, b
    db $f4
    nop
    or $0e
    push af
    jr c, jr_005_5cd7

    ret z

    ld e, h
    ld a, [c]
    inc b
    cp $03
    ldh a, [$0c]
    db $f4
    rst $38
    push af
    daa

jr_005_5ceb:
    ld a, [$5d11]
    rlca
    rlca
    rlca
    ldh a, [$0c]
    db $10
    ld a, [$5d11]
    jr nc, @-$0a

    nop
    rst $00
    inc c
    db $fc
    ld b, $e3
    ld [bc], a
    di
    ld [bc], a
    db $fd
    or $0d
    push af
    inc sp
    ldh a, [$0b]
    db $f4
    ret z

    ld a, [$5d33]
    ld hl, sp-$1f
    ld e, h
    or $13
    ret c

    inc b

jr_005_5d15:
    db $db
    inc b
    ret nz

    inc b
    db $f4
    ld l, h
    inc h
    ld [hl+], a
    jr nz, jr_005_5d5e

    jr nz, jr_005_5d15

    rst $38
    dec e
    nop
    dec de
    db $10
    dec de
    inc e
    dec e
    db $10
    ld h, l
    inc h
    ld [bc], a
    ldh a, [$0d]
    or $07
    db $10
    ei
    ld b, b
    nop
    ld [bc], a
    db $10
    ld h, h
    nop
    db $10
    ld [bc], a
    db $10
    ret nz

    ld l, h
    ld b, b
    nop
    ld [bc], a
    db $10
    ld h, a
    nop
    db $10
    ld [bc], a
    db $10
    ret nz

    inc a
    ldh a, [$0d]
    db $f4
    ret z

    or $07
    ld [bc], a
    ld [bc], a
    db $10
    inc b
    ld [hl+], a
    ei
    ld a, [c]
    inc b
    cp $03
    or $07

jr_005_5d5b:
    ldh a, [rIF]
    db $f4

jr_005_5d5e:
    rst $38
    jr nc, jr_005_5d5b

    sub e

jr_005_5d62:
    ld e, l
    add hl, bc
    add hl, bc
    dec hl
    dec sp
    ld a, [$5d93]
    jr nc, jr_005_5d62

    nop
    db $f4
    nop
    rrc h
    db $fc
    ld b, $e3
    ld [bc], a
    di
    ld [bc], a
    pop af
    cp $fd
    or $07
    db $f4
    ld a, [$0ff0]
    push af
    dec de
    ld a, [$5dab]
    ld a, [$5dd3]
    ld a, [$5dab]
    push af
    daa
    ld a, [$5ddc]
    ld hl, sp+$55
    ld e, l
    db $fc
    inc bc
    push af
    dec de
    inc d

jr_005_5d98:
    db $10
    jr nz, jr_005_5d98

    inc d
    stop
    nop
    db $fc
    ld [bc], a
    add hl, de
    db $10
    dec b
    dec b
    db $fd
    dec de
    db $10
    push af
    daa
    ei
    dec e
    db $10
    pop af
    ei
    add hl, bc
    pop af
    dec b
    add hl, bc
    dec e
    db $10
    pop af
    ei
    add hl, bc
    pop af
    dec b
    add hl, bc
    dec de
    db $10
    pop af
    ei
    rlca
    pop af
    dec b
    rlca
    dec de
    pop af
    ld a, [$f11b]
    ld b, $07
    rlca
    db $fc
    ld [bc], a
    add hl, de
    db $10
    dec b
    nop
    db $fd
    ei
    add hl, de
    add hl, de
    dec b
    add hl, de
    dec de
    dec de
    rlca
    dec de
    ei

jr_005_5ddc:
    ld [bc], a
    rlca
    db $10
    dec de
    daa
    ei
    ld a, [c]
    inc b
    cp $03
    jr nc, jr_005_5ddc

    sub [hl]
    push af
    inc sp

jr_005_5deb:
    ld a, [$5e26]
    ld d, $16
    ld [hl], $30
    ld a, [$5e26]
    jr nc, jr_005_5deb

    nop
    sub $0c
    db $fc
    ld b, $e3
    ld [bc], a
    di
    ld [bc], a
    db $fd
    or $09
    db $f4
    and b
    ldh a, [$08]
    db $fc
    rlca
    ld a, [$5e46]
    db $fd
    ld a, [$5e4f]
    db $fc
    ld b, $fa
    ld b, [hl]
    ld e, [hl]
    db $fd
    ldh a, [$0c]
    or $07
    db $f4
    or h
    push af
    inc sp
    cp $03
    ld a, [$5e58]
    ld hl, sp-$1e
    ld e, l
    db $fc
    inc b
    or $0f
    ldh a, [$0a]

jr_005_5e2c:
    jr nc, jr_005_5e2c

    ld bc, $fe1b
    ld [bc], a
    dec de
    db $fd
    db $fc
    ld [bc], a

jr_005_5e36:
    jr nc, jr_005_5e36

    ld bc, $fe1d
    ld [bc], a
    dec e
    db $fd

jr_005_5e3e:
    jr nc, jr_005_5e3e

    inc bc
    or $07
    ldh a, [$0d]
    ei
    cp $01
    dec de
    dec e
    cp $02
    dec de
    dec e
    ei
    cp $01
    rra
    nop
    cp $02
    rra
    dec de
    ei
    add hl, de
    add hl, de
    db $10
    add hl, de
    add hl, sp
    ei
    ld a, [c]
    inc b
    cp $03
    db $f4
    rst $38
    or $10
    ldh a, [$09]
    cpl
    db $fc
    ld [bc], a
    db $fc
    inc bc
    ld [hl+], a
    inc b
    inc b
    db $fd
    ld bc, $0401
    inc b
    jr nz, jr_005_5e7b

    inc b
    ld bc, $0401

jr_005_5e7b:
    inc b
    pop af
    ld [bc], a
    jp $f130


    cp $fd
    db $fc
    ld c, $03
    pop af
    db $fd
    inc b
    pop af
    inc bc
    inc b

jr_005_5e8c:
    ld [bc], a
    db $fd
    jp $f830


    ld l, c
    ld e, [hl]
    ld a, [c]
    inc bc
    cp $03
    or $07
    push af
    jr nz, jr_005_5e8c

    rrca
    db $f4
    rst $38
    ld a, [$5ec4]
    ld a, [$5edc]
    ld a, [$5ec4]
    ld a, [$5ee5]
    db $fc
    inc b
    ld a, [$5eec]
    db $fd
    ld a, [$5f06]
    ld a, [$5f06]
    push af
    inc hl

jr_005_5eb9:
    ld a, [$5f06]
    push af
    jr nz, jr_005_5eb9

    dec e
    ld e, a
    ld hl, sp-$55
    ld e, [hl]
    inc d
    dec de
    nop
    db $10
    inc d
    nop
    db $10
    ld [hl], $1d
    ld [bc], a
    db $10
    ld d, $02
    db $10
    dec e
    jr @+$21

    inc b
    db $10
    jr @+$06

    db $10
    rra
    ei
    ld d, $1d
    ld [bc], a
    db $10
    ld d, $02
    db $10
    dec e
    ei
    ld [bc], a
    ld [bc], a

jr_005_5ee7:
    jr nc, jr_005_5ef0

    rlca
    jr nc, jr_005_5ee7

    inc d
    db $10
    inc d
    db $10

jr_005_5ef0:
    ld e, e
    ld d, $10
    ld d, $10
    ld d, $3d
    ld d, $17
    jr jr_005_5f0b

    jr jr_005_5f0d

    ld e, a
    ld d, $10
    ld d, $10
    ld d, $3d
    ld [hl], $fb
    add hl, de
    db $10
    ld e, c
    dec h
    add hl, de

jr_005_5f0b:
    db $10
    add hl, de

jr_005_5f0d:
    stop
    add hl, hl
    jr nz, jr_005_5f2a

    db $10
    ld e, b
    inc h
    jr @+$12

    jr jr_005_5f29

    rra
    daa
    ccf
    ei
    inc e
    db $10
    ld e, h
    inc hl
    inc e
    db $10
    inc e
    db $10
    inc bc
    jr z, jr_005_5f4b

    dec de

jr_005_5f29:
    db $10

jr_005_5f2a:
    daa
    dec de
    rlca
    db $10
    dec de
    db $10
    dec de
    db $10
    dec b
    daa
    dec sp
    ei
    ld a, [c]
    inc bc
    cp $03
    or $15
    db $f4
    ld a, [$0bf0]
    push af
    inc l
    ld a, [$5f76]
    ld a, [$5f8c]
    ld a, [$5f76]

jr_005_5f4b:
    ld a, [$5f96]
    db $f4
    nop
    or $0d
    ldh a, [$0a]
    push af
    inc l
    ld a, [$5fa1]
    ldh a, [$0d]
    or $15
    ld b, h
    pop af
    ld a, [$befa]
    ld e, a
    nop
    ld [bc], a
    db $10
    inc h
    or $11
    pop af
    ld a, [$041d]
    ld a, [$5fbe]
    ld a, [$5fdd]
    ld hl, sp+$4e
    ld e, a
    jr nc, @+$41

    db $10
    pop af
    ld bc, $f13f
    rst $38
    ld d, b
    jr nz, jr_005_5f91

    pop af
    ld bc, $5020
    ld [hl+], a
    db $10
    pop af
    rst $38
    ld [hl+], a
    db $10
    ei
    jr nc, jr_005_5fae

    db $10
    pop af
    rst $38

jr_005_5f91:
    jr nz, @-$0d

    ld bc, $fb10
    nop
    pop af
    cp $00
    pop af
    ld [bc], a

jr_005_5f9c:
    jr nc, jr_005_5f9e

jr_005_5f9e:
    nop
    jr nc, jr_005_5f9c

    add $02
    rst $00
    jp nz, $0425

    ld b, a
    rst $18
    ld [bc], a
    ret nz

    or h
    dec sp
    nop

jr_005_5fae:
    add $02
    rst $00
    ret


    inc h
    dec b
    ld b, a
    call z, $c561
    ld bc, $02c6
    rst $00
    ld l, [hl]
    ei
    or $11
    db $fc
    inc b
    dec e
    inc b
    db $fd
    dec e
    or $15
    pop af
    ld b, $02
    stop
    ld [hl+], a
    pop af
    ld a, [$11f6]
    db $fc
    dec b
    dec de
    ld [bc], a
    db $fd
    dec de
    or $15
    pop af
    ld b, $fb
    inc b
    db $10
    dec b
    daa
    pop af
    ld a, [$11f6]
    db $fc
    dec b
    nop
    rlca
    db $fd
    nop
    pop af
    ld b, $f6
    dec d
    dec b
    db $10
    inc bc
    dec h
    pop af
    ld a, [$11f6]
    db $fc
    dec b
    ld e, $05
    db $fd
    or $0e
    pop af
    ld b, $1e
    inc bc
    dec b
    db $10
    rst $00
    ld e, e
    ld c, h
    add $02
    rst $00
    ld e, c
    dec de
    ld b, b
    ei
    ld a, [c]
    inc bc
    cp $03
    ldh a, [$0b]
    or $15
    db $f4
    rst $38
    push af
    inc l
    ld a, [$6054]
    ld a, [$606a]
    ld a, [$6054]
    ld a, [$6074]
    or $0b
    db $f4
    cp [hl]
    ldh a, [$0a]
    db $fc
    inc b
    ld a, [$607f]
    db $fd
    ldh a, [$0c]
    cp $03
    or $15
    ld b, b

jr_005_6039:
    pop af
    ld a, [$acfa]
    ld h, b
    dec e
    rra
    db $10
    jr nz, jr_005_6039

    ld de, $faf1
    add hl, de
    nop
    ld a, [$60ac]
    rra
    db $10
    ld [bc], a
    ld a, [$60cb]
    ld hl, sp+$26
    ld h, b
    jr nc, jr_005_608e

    db $10
    pop af
    ld bc, $f138
    rst $38
    ld d, b
    add hl, sp
    db $10
    pop af
    ld bc, $5039
    dec sp
    pop af
    rst $38
    db $10
    dec sp
    db $10
    ei
    jr nc, jr_005_60a5

    db $10
    pop af
    rst $38
    add hl, sp
    pop af
    ld bc, $fb10
    add hl, de
    pop af
    cp $19
    pop af
    ld [bc], a

jr_005_607a:
    jr nc, jr_005_6095

    add hl, de
    jr nc, jr_005_607a

    cp $01
    jr @+$1d

    rra
    dec de
    jr jr_005_60a2

    rra
    dec de
    cp $02
    add hl, de
    dec e
    nop

jr_005_608e:
    dec e
    add hl, de
    dec e
    nop
    dec e
    cp $01

jr_005_6095:
    dec de
    rra
    ld [bc], a
    rra
    dec de
    rra
    ld [bc], a
    rra
    cp $02
    add hl, de
    dec e
    nop

jr_005_60a2:
    cp $01
    add hl, de

jr_005_60a5:
    dec e
    nop
    cp $02
    add hl, de
    dec e
    ei
    db $fc
    inc b
    or $11
    add hl, de
    nop
    db $fd
    add hl, de
    or $15
    pop af
    ld b, $1f
    db $10
    dec e
    ccf
    or $11
    pop af
    ld a, [$fc18]
    dec b

jr_005_60c3:
    rra
    jr jr_005_60c3

    or $15
    pop af
    ld b, $fb
    inc hl
    pop af
    ld a, [$11f6]
    db $fc
    dec b
    inc e
    inc bc
    db $fd
    inc e
    pop af
    ld b, $f6
    dec d
    ld [bc], a
    stop
    ld [hl+], a
    pop af
    ld a, [$11f6]
    db $fc
    rlca
    dec de
    ld [bc], a
    db $fd
    pop af
    ld bc, $f11b
    ld bc, $05fc
    inc e
    nop
    inc bc
    db $fd
    inc e
    dec b
    ld [bc], a
    rra
    ld [bc], a
    rra
    dec de
    rra
    dec de
    db $fc
    inc b
    add hl, de
    dec de
    db $fd
    ei
    ld a, [c]
    inc bc
    cp $03
    ldh a, [$09]
    db $f4
    rst $38
    or $10
    db $fc
    rlca
    ld a, [$613a]
    db $fd
    ld a, [$6135]
    db $fc
    ld [bc], a
    db $fc
    inc c
    ld a, [$612c]
    db $fd
    ld a, [$614b]
    db $fd
    db $fc
    ld c, $fa
    ld a, [hl-]
    ld h, c
    db $fd
    ld a, [$614b]
    ld hl, sp+$14
    ld h, c
    ld b, $f1
    db $fd
    ld b, $f1
    inc bc
    dec b
    ld b, $fb
    dec b
    ld b, l
    dec b
    ld b, l
    ei
    ld b, $f1
    cp $07
    rlca
    rlca
    pop af
    ld [bc], a
    inc b
    pop af
    cp $07
    rlca
    rlca
    pop af
    ld [bc], a
    ei
    dec b
    rlca
    dec b
    rlca
    dec b
    rlca
    rlca
    pop af
    ld bc, $0705
    inc b
    inc b
    rlca
    inc b
    dec b
    ld b, $07
    pop af
    rst $38
    ei
    ld a, [c]
    inc bc
    cp $01
    or $14
    db $f4
    ldh a, [$f5]
    inc sp
    ldh a, [$0b]
    nop
    db $10
    rra
    ld e, $10
    dec e
    inc e
    db $10
    ld d, a
    inc e
    dec de
    sub b
    db $f4
    nop
    add $02
    rst $00
    ld b, $10
    rst $38
    ld a, [c]
    inc bc
    cp $02
    or $16
    ld hl, sp+$66
    ld h, c
    ld a, [c]
    inc bc
    cp $03
    or $07

jr_005_618f:
    ldh a, [rIF]
    db $f4
    rst $38
    push af
    inc sp
    inc d
    db $10
    dec de
    inc b
    stop
    inc e
    rla
    inc e
    jr nz, jr_005_61bc

    dec de
    db $10
    rst $38
    ld a, [c]
    ld bc, $03fe
    or $00
    db $f4
    nop
    ldh a, [rP1]
    push af
    jr nz, jr_005_618f

    ld a, [bc]
    db $fc
    ld c, $f1
    ld bc, $05f3
    db $fd
    db $f4
    ld a, [$0ff0]

jr_005_61bc:
    or $07
    dec de
    dec de
    ld [hl], b
    dec de
    dec de
    ld [hl], b

jr_005_61c4:
    dec de
    dec de
    jr nc, jr_005_61c4

    ld [bc], a
    or $07
    db $f4
    rst $38
    push af
    jr nz, jr_005_622d

    dec e
    dec a
    dec a
    jr nc, jr_005_61fe

    jr nc, jr_005_623e

    dec sp
    dec de
    rlca
    daa
    db $db
    jr z, jr_005_6238

    ld b, $3a
    ld h, $30
    ld b, $10
    ld a, [hl-]
    ld h, $19
    dec b
    add hl, de
    dec b
    add hl, sp
    dec h

jr_005_61ec:
    jr nc, jr_005_6207

    db $10
    ld a, e
    db $fd
    db $fc
    inc b
    jr jr_005_620d

    inc b
    rra
    db $fd
    db $fc
    inc b
    ld d, $16
    ld [bc], a
    dec e

jr_005_61fe:
    db $fd
    db $fc
    inc b
    jr @+$1a

    inc b
    rra
    db $fd
    db $fc

jr_005_6207:
    ld [bc], a
    ld d, $16
    ld [bc], a
    dec e
    db $fd

jr_005_620d:
    jr jr_005_6227

    inc b
    jr @+$1a

    inc b
    jr jr_005_6230

    ld hl, sp-$39
    ld h, c
    ld a, [c]
    ld bc, $03fe
    db $f4
    nop
    or $14
    ldh a, [rSB]
    push af
    jr nz, jr_005_61ec

    ld a, [bc]
    db $fc

jr_005_6227:
    ld c, $f1
    ld bc, $05f3
    db $fd

jr_005_622d:
    or $15
    db $f4

jr_005_6230:
    ld a, [$0b0b]
    ld [hl], b
    dec bc
    dec bc
    ld [hl], b

jr_005_6237:
    dec bc

jr_005_6238:
    dec bc
    jr nc, jr_005_6237

    ld [bc], a
    or $13

jr_005_623e:
    db $f4
    rst $38
    ldh a, [$0c]
    push af
    inc l
    db $fc
    ld [$1800], sp
    pop af
    db $fd
    nop
    jr jr_005_623e

    inc bc
    db $fd
    db $fc
    inc b
    nop
    ld a, [de]
    pop af
    db $fd
    nop
    ld a, [de]
    pop af
    inc bc
    db $fd
    or $19
    ldh a, [$0d]
    db $fc
    inc b
    nop
    add hl, de
    db $fd
    db $10
    ldh a, [$0c]
    db $f4
    push af
    or $13
    add hl, de
    db $fc
    inc bc
    nop
    add hl, de
    db $fd
    pop af
    rst $38
    db $fd
    db $fc
    inc b
    ld [bc], a
    rra
    dec de
    rra
    db $fd
    db $fc
    inc b
    nop
    dec e
    add hl, de
    dec e
    db $fd
    db $fc
    inc b
    ld [bc], a
    rra
    dec de
    rra
    db $fd
    db $fc
    ld [bc], a
    ld [bc], a
    dec e
    add hl, de
    dec e
    db $fd
    pop af
    ld bc, $18f6
    jr jr_005_629a

    inc b
    ld [bc], a
    nop
    rra
    nop

jr_005_629a:
    ld [bc], a
    pop af
    rst $38

jr_005_629d:
    ld hl, sp+$3a
    ld h, d
    ld a, [c]
    ld bc, $03fe
    ldh a, [rSB]
    push af
    jr nz, jr_005_629d

    nop
    or $14
    jp nz, $fc0a

    ld c, $f1
    ld bc, $05f3
    db $fd
    db $f4
    ld a, [$15f6]
    inc b
    inc b
    ld [hl], b
    inc b
    inc b
    ld [hl], b

jr_005_62bf:
    inc b
    inc b
    jr nc, jr_005_62bf

    ld [bc], a
    or $13
    ldh a, [$0c]
    db $f4
    rst $38
    push af
    inc l
    db $fc
    ld [$141b], sp
    pop af
    db $fd
    dec de
    inc d
    pop af
    inc bc
    db $fd
    db $fc
    inc b
    dec e
    ld d, $f1
    db $fd
    dec e
    ld d, $f1
    inc bc
    db $fd
    or $19
    ldh a, [$0d]
    db $fc
    inc b
    dec e
    inc d
    db $fd
    ldh a, [$0c]
    db $10
    or $13
    db $f4
    push af
    inc d
    db $fc
    inc bc
    dec e
    inc d
    db $fd
    pop af
    rst $38
    db $fd
    db $fc
    inc b
    rra
    dec de
    jr jr_005_631c

    db $fd
    db $fc
    inc b
    dec e
    add hl, de
    ld d, $19
    db $fd
    db $fc
    inc b
    rra
    dec de
    jr jr_005_632a

    db $fd
    db $fc
    ld [bc], a
    dec e
    add hl, de
    ld d, $19
    db $fd
    inc de
    dec b
    inc b
    ld [bc], a
    nop

jr_005_631c:
    rra
    nop
    ld [bc], a
    ld hl, sp-$3e
    ld h, d
    ld a, [c]
    ld bc, $03fe
    ldh a, [$03]
    or $10

jr_005_632a:
    db $f4
    xor d
    db $fc
    ld [bc], a
    inc b
    ld b, $06
    ld b, $fd
    ldh a, [$09]
    db $fc
    inc b
    ld b, $06
    db $fd
    cp $03
    inc b
    inc b
    ld l, a
    inc b
    inc b
    ld l, a
    inc b
    inc b
    cpl
    db $fc
    db $10
    db $f4
    pop hl
    ldh a, [$0a]
    or $10
    cp $01
    ldh a, [$0b]
    ld [bc], a
    pop af
    db $fd
    ld [bc], a
    pop af
    inc b
    dec b
    pop af
    cp $02
    cp $02
    pop af
    ld bc, $f102
    db $fd
    ld [bc], a
    pop af
    inc b
    dec b
    pop af
    cp $02
    pop af
    ld bc, $fefd
    inc bc
    db $fc
    rlca
    or $1a
    ld [bc], a
    pop af
    cp $02
    pop af
    cp $f6
    nop
    ld [hl+], a
    pop af
    ld b, $f6
    db $10
    ld b, $f1
    db $fc
    or $1a
    ld [bc], a
    pop af
    cp $f6
    nop
    ld [hl+], a
    pop af
    inc b
    db $fd
    or $1a
    db $fc
    ld b, $07
    db $fd
    or $10
    pop af
    inc b
    ld a, [hl+]
    pop af
    db $fc
    ld hl, sp+$45
    ld h, e
    ld a, [c]
    ld bc, $03fe
    or $07
    ldh a, [rIF]
    db $f4
    ld a, a
    push af
    rla
    db $fc
    inc bc
    ld a, [$63cb]
    db $fd
    ld a, [$63d4]
    ld a, [$63cb]
    ld a, [$63e6]
    ld a, [$63f5]
    push af
    dec d
    ld a, [$63f5]
    push af
    rla
    ld a, [$63f5]
    ld a, [$6407]
    ld hl, sp-$63
    ld h, e
    dec a
    dec a
    inc h
    dec a

jr_005_63cf:
    ld h, $27
    dec sp
    jr c, jr_005_63cf

    dec a
    db $f4
    jp nc, $f11d

    cp $1d
    pop af
    ld [bc], a
    db $f4
    ld a, a
    inc h
    dec a

jr_005_63e1:
    ld h, $27
    dec sp
    jr c, jr_005_63e1

    add hl, sp
    add hl, sp
    dec h
    add hl, sp
    db $f4
    ld a, [$0524]

jr_005_63ee:
    db $10
    ccf
    nop
    db $10
    db $f4
    ld a, a
    ei
    jr c, jr_005_642f

    inc h
    jr c, jr_005_63ee

    ld a, [$f118]
    db $fd
    inc b
    pop af
    inc bc
    db $f4

jr_005_6402:
    ld a, a
    jr c, @+$26

    jr c, jr_005_6402

    db $f4

jr_005_6408:
    ld e, d
    dec sp
    db $f4
    ld a, [$f427]
    ld a, b
    ld h, $25
    inc hl
    jr nz, jr_005_6408

    ldh a, [$3b]
    ld a, $fb
    ld a, [c]
    ld bc, $03fe
    ldh a, [$0c]
    or $17
    push af
    rla
    db $f4
    ld a, a
    ld a, [$63cb]
    ld a, [$63cb]
    push af
    inc hl
    ld a, [$6455]

jr_005_642f:
    db $dd
    rlca
    ret nc

    dec hl
    ld a, [$6455]
    jp nz, $d007

    dec hl
    or $13
    ldh a, [$0d]
    ld a, [$6475]
    push af
    ld hl, $75fa
    ld h, h
    push af
    inc hl
    ld a, [$6475]

jr_005_644b:
    or $17
    ldh a, [$0c]
    ld a, [$6407]
    ld hl, sp+$18
    ld h, h
    jr nc, jr_005_644b

    nop
    jp nz, $f403

    and $c3
    rlca
    db $f4
    ld a, a
    inc h
    daa
    db $f4
    db $f4
    inc h
    inc bc
    db $10
    db $f4
    ld a, a
    ld [hl+], a
    db $f4
    ld a, [$f43b]
    ld a, b
    dec a
    dec a
    db $f4

jr_005_6472:
    ld a, [$fb20]
    db $f4
    sub [hl]
    ld [hl+], a
    daa
    jr nc, @+$24

    daa
    jr nc, jr_005_6472

    call c, $f422
    add d
    daa
    ei
    ld a, [c]
    ld bc, $03fe
    db $f4
    ld a, b
    ldh a, [rTIMA]
    or $05
    push af
    dec sp
    ld a, [$64c1]
    ld a, [$64c1]
    or $17
    ldh a, [$0a]
    push af
    cpl
    cp $03
    ld a, [$6455]
    db $dd
    rlca
    ret nc

    dec hl
    ld a, [$6455]
    jp nz, $d007

    dec hl
    or $13
    ldh a, [$0c]
    push af
    inc hl
    ld a, [$64d4]
    push af
    dec sp
    or $17
    ldh a, [$0a]
    ld a, [$6407]
    ld hl, sp-$7c
    ld h, h

jr_005_64c1:
    jr nc, jr_005_64c1

    ld bc, $fe27
    ld [bc], a
    daa

jr_005_64c8:
    jr nc, jr_005_64c8

    ld bc, $fe26
    ld [bc], a
    daa

jr_005_64cf:
    jr nc, jr_005_64cf

jr_005_64d1:
    inc bc
    daa
    ei
    db $f4
    sub [hl]
    ccf
    ld [hl+], a
    jr nc, @+$41

    ld [hl+], a
    jr nc, jr_005_64d1

    call c, $f43f
    add d
    ld [hl+], a
    db $f4
    sub [hl]
    dec a

jr_005_64e5:
    jr nz, jr_005_6517

    dec a
    jr nz, jr_005_651a

    db $f4
    call c, $f43d
    add d
    jr nz, jr_005_64e5

    sub [hl]
    inc a
    inc a
    jr nc, @+$3e

    inc a
    jr nc, @-$0a

    call c, $f43c
    add d
    inc a
    ei
    ld a, [c]
    ld bc, $10f6
    ldh a, [$09]
    db $f4
    rst $38
    db $fc
    inc b
    db $fc
    inc bc
    cp $01
    inc hl
    pop af
    db $fd
    inc hl
    pop af
    ld b, $fe
    inc bc
    ld h, $fe

jr_005_6517:
    ld bc, $fcf1

jr_005_651a:
    inc hl
    pop af
    ld bc, $fefd
    ld bc, $f103
    db $fd
    inc bc
    inc hl
    pop af
    ld b, $fe
    inc bc
    ld h, $f1
    db $fc
    cp $01
    inc hl
    pop af
    ld bc, $fefd
    ld bc, $f123
    db $fd
    inc hl
    pop af
    ld b, $fe
    inc bc
    ld h, $f1
    db $fc
    cp $01
    inc hl
    pop af
    ld bc, $f103
    db $fd
    inc bc
    inc bc
    inc bc
    pop af
    ld b, $fe
    inc bc
    ld h, $f1
    db $fc
    cp $01
    inc bc
    inc bc
    pop af
    inc b
    cp $03
    cpl
    ld h, $26
    ld h, $f1
    db $fd
    db $fc
    inc b
    ld b, $06
    pop af
    ld bc, $f8fd
    rst $38
    ld h, h
    ld a, [c]
    inc bc
    cp $03
    or $0a
    ldh a, [$0c]
    db $f4
    rst $38
    push af
    inc sp
    ld a, [$6591]
    jr nz, jr_005_6595

    ld e, b
    ld a, [$6591]
    ld b, b
    ld e, b
    ld a, [$6591]
    jr nz, jr_005_65a0

    jr c, @+$09

    dec h
    inc b
    ld [hl+], a
    inc b
    ld b, b
    call z, $d00a
    dec bc
    rst $38
    add hl, de
    dec de
    dec e
    rra

jr_005_6595:
    dec e
    rra
    ei
    ld a, [c]
    inc bc
    or $0a
    cp $03
    db $f4
    rst $38

jr_005_65a0:
    ldh a, [$0b]
    push af
    inc sp
    ld a, [$65c2]
    ld e, b
    inc [hl]
    dec de
    ld a, [$65c2]
    jr c, jr_005_65c8

    dec sp
    inc d
    ld a, [$65c2]
    ld e, b
    inc [hl]
    inc b
    ld [hl+], a
    rra
    dec de
    dec e
    rra
    ld e, b
    call nz, $d00a
    dec bc
    rst $38
    inc d
    ld d, $19
    add hl, de
    add hl, de
    add hl, de

jr_005_65c8:
    ei
    ld a, [c]
    inc bc
    or $07
    cp $03
    ldh a, [rIF]
    db $f4
    rst $38
    push af
    daa
    ld [hl+], a
    ld [bc], a
    daa
    rlca
    ld b, b
    jr nz, jr_005_65e3

    dec h
    dec b
    daa
    rlca
    jr nz, jr_005_65e9

    ld b, b

jr_005_65e3:
    ld [hl+], a
    ld [bc], a
    daa
    rlca
    jr nz, @+$16

jr_005_65e9:
    inc [hl]
    nop
    add hl, de
    dec de
    dec e
    rra
    dec e
    rra
    jr nz, @-$09

    dec de
    dec de
    inc d
    jr nc, @+$01

    ld a, [c]
    inc bc
    ldh a, [$0a]
    or $10
    db $f4
    db $eb
    db $fc
    rlca
    ld h, $06
    ld b, $f1
    db $fc
    inc bc
    pop af
    inc b
    ld b, $fd
    inc bc
    inc bc
    inc bc
    inc bc
    cpl
    rst $38
    ld a, [c]
    inc b
    ldh a, [rIF]
    or $07
    cp $03
    db $f4
    rst $38
    push af
    dec de
    ld a, [$6657]
    ld a, [$6668]
    ld a, [$6671]
    ld a, [$6668]
    ld a, [$667a]
    ld a, [$6683]
    ld a, [$6694]
    ld a, [$6668]
    ld a, [$6671]
    ld a, [$6668]
    ld a, [$667a]
    ld a, [$6683]
    ld a, [$66a6]
    ld a, [$66b8]
    ld a, [$6700]
    ld a, [$6715]
    ld a, [$6700]
    ld a, [$671e]
    ld hl, sp+$21
    ld h, [hl]
    ld [hl], $3d
    ld [hl], $22
    jr c, jr_005_669c

    jr c, jr_005_6683

    add hl, sp
    jr nz, jr_005_669b

    dec h
    dec de
    ld d, b
    dec de
    ld d, b
    ei
    jr nz, jr_005_6696

    jr nz, jr_005_6698

    ccf
    dec hl
    ccf
    dec hl
    ei
    dec a
    add hl, hl
    dec a
    add hl, hl
    add hl, sp
    dec h
    dec sp
    daa
    ei
    ld a, $2a
    ld a, $2a
    dec a
    add hl, hl
    dec a
    add hl, hl
    ei

jr_005_6683:
    ld [hl], $22
    ld [hl], $22
    dec sp
    daa
    dec sp
    daa
    inc [hl]
    jr nz, jr_005_66c2

    jr nz, jr_005_66c9

    dec h
    add hl, sp
    dec h
    ei
    db $fc
    inc b

jr_005_6696:
    ld [hl], $22

jr_005_6698:
    db $fd
    dec sp
    daa

jr_005_669b:
    dec sp

jr_005_669c:
    daa
    db $f4
    ld a, b
    daa
    ld [hl+], a
    ccf
    dec a
    db $f4
    rst $38
    ei
    db $fc
    inc bc
    inc a
    inc e
    ld [$1cfd], sp
    inc e
    ld [$fc1c], sp
    inc b
    dec de
    dec de
    rlca
    dec de
    db $fd
    ei
    dec a
    add hl, bc
    inc b
    dec e
    dec e
    add hl, bc
    inc b
    dec sp
    rlca
    ld [bc], a

jr_005_66c2:
    dec de
    dec de
    rlca
    ld [bc], a
    ld a, [hl-]
    ld b, $1a

jr_005_66c9:
    ld a, [de]
    ld a, [de]
    ld b, $1a
    dec sp
    rlca
    ld [bc], a
    dec de
    rlca
    ld [bc], a
    rlca
    dec e
    dec e
    add hl, bc
    inc b
    dec e
    dec e
    add hl, bc
    inc b
    jr jr_005_66f6

    inc b
    rra
    jr jr_005_66fa

    inc b
    rra
    db $fc
    inc b
    ld d, $f1
    db $fd
    ld d, $f1
    inc bc
    ld [bc], a
    pop af
    cp $1d
    pop af
    ld [bc], a
    db $fd
    or $00
    db $dd

jr_005_66f6:
    sub b
    or $07
    rlca

jr_005_66fa:
    rlca
    jr nc, @+$09

    rlca
    daa
    ei
    ld [hl], $02
    dec e
    ld [hl], $02
    dec e
    jr c, jr_005_670c

    rra
    jr jr_005_6723

    inc b

jr_005_670c:
    rra
    add hl, sp
    dec b
    nop
    add hl, de
    add hl, de
    dec b
    nop
    ei
    jr @+$1a

    inc b
    rra
    jr jr_005_6733

    inc b
    rra
    ei
    db $f4
    and b
    rst $00
    db $10
    rst $00

jr_005_6723:
    db $10
    rst $00
    db $10
    db $f4
    rst $38

Jump_005_6728:
    ei
    ld a, [c]
    inc b
    cp $03
    ld a, [$6765]
    ld a, [$6777]

jr_005_6733:
    ldh a, [$0c]
    or $13
    push af
    daa
    ld a, [$678d]
    ld a, [$67b8]
    ld e, l
    db $10
    ld a, [$67ca]
    ld a, [$678d]
    ld a, [$67b8]
    ld e, l
    nop
    ld a, [$67e9]
    ldh a, [$0d]
    or $12
    ld a, [$67f9]
    ld a, [$6765]
    ld a, [$681a]
    ld a, [$6765]
    ld a, [$681e]
    ld hl, sp+$33
    ld h, a
    db $f4
    push af
    push af
    dec de
    ldh a, [$0d]
    or $19
    ld h, d
    ld b, b
    ld [bc], a
    ld h, h
    ld b, d
    inc b
    ld h, l
    ld b, h
    dec b
    ei
    db $f4
    nop
    rst $00
    inc c
    pop af
    db $fd
    db $fc
    ld b, $e3
    inc bc
    di
    ld bc, $04e3
    di
    ld bc, $f1fd
    inc bc
    dec de
    ld d, b
    ei
    db $f4
    push af
    ld a, e
    ld b, b
    ld [bc], a
    db $f4
    ld a, b
    inc h
    ld [hl+], a
    inc h
    dec h
    db $f4
    push af
    ld h, a
    ld b, h
    rlca
    db $f4
    rst $38
    ld h, b
    ld h, d
    db $f4
    push af
    ld a, e
    ld b, b
    ld [bc], a
    db $f4
    ld a, b
    inc h
    ld [hl+], a
    inc h
    dec h
    db $f4
    ld a, [$4967]
    rlca
    db $f4
    call c, $2425
    ld [hl+], a
    inc h
    ei
    db $f4
    ld a, [$4465]
    dec b
    db $f4
    adc h
    daa
    dec h
    inc h
    daa
    db $f4
    or $64
    ld b, b
    ld [bc], a

jr_005_67c8:
    ld h, h
    ei
    ld h, d
    ld b, h
    ld [bc], a
    db $f4
    add b
    ld [hl+], a
    jr nz, jr_005_6811

    jr nz, jr_005_67c8

    nop
    jp nz, $f118

    ei
    db $fc
    inc c
    db $e3
    cp $f3
    ld [bc], a
    db $fd
    pop af
    dec b
    db $f4
    add b
    daa
    ld [hl+], a
    ccf
    dec a
    ei
    db $f4
    db $fd
    ld h, a
    ld b, a
    rlca
    db $f4
    add d
    daa
    dec h
    inc hl
    dec h
    db $f4
    nop
    rst $00
    ld h, b
    ei
    ld l, c
    ld b, c
    ld [bc], a
    and h
    ld bc, $6402
    ld b, c
    ld [bc], a
    ld h, c
    ccf
    dec e
    rra
    ld h, c
    ld b, h
    ld bc, $7f61
    db $dd
    ld h, b
    db $dd
    sub b
    or $17

jr_005_6811:
    ldh a, [$0d]
    ld [bc], a
    ld [bc], a
    jr nc, jr_005_6819

    ld [bc], a
    ld [hl+], a

jr_005_6819:
    ei
    ld h, h
    ld b, d
    inc b
    ei
    db $f4
    and b
    rst $00
    db $10
    rst $00
    db $10
    rst $00
    db $10
    ei
    ld a, [c]
    inc b
    cp $03
    push af
    dec de
    ldh a, [$0b]
    ld a, [$6893]
    ld a, [$68a1]
    or $0a
    push af
    dec de
    ldh a, [$09]
    db $f4
    rst $38
    db $fc
    inc bc
    ld a, [$68b7]
    db $fd
    ld a, [$68c0]
    ld a, [$68b7]
    ld a, [$68b7]
    ld a, [$68c9]
    push af
    daa
    or $06
    ld a, [$68da]
    ld a, [$68fb]
    or $0a
    push af
    dec de
    db $fc
    inc bc
    ld a, [$68b7]
    db $fd
    ld a, [$68c0]
    ld a, [$68b7]
    ld a, [$68b7]
    ld a, [$68c9]
    push af
    daa
    or $06
    ld a, [$68da]
    or $13
    ld a, [$6913]
    or $12
    ldh a, [$0b]
    ld a, [$6926]
    ldh a, [$0b]
    ld a, [$6893]
    ld a, [$694b]
    ld a, [$6893]
    ld a, [$694f]
    ld hl, sp+$35
    ld l, b
    db $f4
    push af
    or $19
    ld a, c
    ld e, c
    add hl, de
    ld a, e
    ld e, e
    dec de
    ld a, l
    ld e, l
    dec e
    ei
    db $f4
    nop
    rst $18
    inc c
    pop af
    db $fd
    db $fc
    ld b, $e3
    inc bc
    di
    ld bc, $04e3
    di
    ld bc, $f1fd
    inc bc
    inc de
    ld d, b
    ei
    dec de
    nop
    inc b
    nop
    dec de
    nop
    inc b
    nop
    ei
    add hl, de
    dec e
    nop
    dec e
    dec de
    rra
    ld [bc], a
    rra
    ei
    dec de
    ld [bc], a
    dec b
    ld [bc], a
    dec de
    ld [bc], a
    dec b
    ld [bc], a
    dec de
    ld bc, $0104
    dec de
    ld bc, $0104
    ei
    ld d, $19
    nop
    add hl, de
    ld d, $19
    nop
    add hl, de
    ld d, $1b
    rra
    dec de
    ld d, $1b
    rra
    dec de
    inc d
    jr jr_005_690c

    dec de
    inc d
    jr jr_005_690c

    rra
    inc d
    add hl, de
    dec e
    add hl, de
    inc d
    add hl, de
    ld de, $fb14
    db $fc
    inc b
    ld d, $19
    dec e
    add hl, de
    db $fd
    ld d, $19
    rra
    add hl, de
    ld d, $19
    rra
    add hl, de
    db $f4
    ld a, b

jr_005_690c:
    dec sp
    ld [hl], $33
    ld sp, $fff4
    ei
    db $f4

jr_005_6914:
    db $fd
    ld h, e
    ld b, e
    inc bc
    db $f4
    add d
    inc hl
    ld [hl+], a
    jr nz, @+$24

    db $f4
    ld a, [$4260]
    nop
    ld a, a
    ld a, e
    ei
    ld h, c
    ld e, l
    rra
    and c
    dec e
    rra
    ld h, c
    ld e, l
    rra
    ld a, c
    ld a, c
    ld a, l
    ld b, c
    dec e
    ld a, b
    ld a, b
    jp c, $d930

    jr nc, @-$28

    jr nc, @-$2b

    jr nc, jr_005_6914

    jr nc, @-$08

    rla
    ldh a, [$0d]
    add hl, de
    add hl, de
    jr nc, jr_005_6961

    add hl, de
    add hl, sp
    ei
    ld a, e
    ld e, e
    dec de
    ei
    db $f4
    and b
    rst $18
    db $10
    rst $18
    db $10
    rst $18
    db $10
    ei
    ld a, [c]
    inc b
    ldh a, [$08]
    db $f4
    rst $38
    cp $03
    db $fc

jr_005_6961:
    ld b, $fa
    sub b
    ld l, c
    db $fd
    ld a, [$69a1]
    db $fc
    ld e, $fa
    sub b
    ld l, c
    db $fd
    ld a, [$69a9]
    db $fc
    ld e, $fa
    sub b
    ld l, c
    db $fd
    ld a, [$69c6]
    db $fc
    db $10
    ld a, [$69b7]
    db $fd
    ld a, [$69d6]
    db $fc
    ld c, $fa
    sub b
    ld l, c
    db $fd
    ld a, [$69e7]
    ld hl, sp+$69
    ld l, c
    or $1a
    inc bc
    pop af
    cp $03
    or $10
    pop af
    inc b
    ld b, $f1
    cp $f6
    ld a, [de]
    inc bc
    ei
    pop af
    ld [bc], a
    ld b, $46
    ld h, [hl]
    pop af
    cp $fb
    pop af
    ld [bc], a
    ld h, $26
    ld b, $f1
    ei
    ld b, $f1
    dec b
    ld h, $f1
    cp $fb
    or $1a
    ld [bc], a
    pop af
    cp $02
    pop af
    ld [bc], a
    ld b, $f1
    cp $02
    pop af
    ld [bc], a
    ei
    or $1a
    inc bc
    pop af
    rst $38
    inc bc
    db $fc
    inc bc
    pop af
    ld bc, $0606
    db $fd
    pop af
    cp $fb
    or $04
    call nz, $f190
    inc bc
    or $10
    dec b
    ld b, l
    dec b
    dec b
    dec b
    pop af
    db $fd
    ld b, $fb
    or $10
    pop af
    ld [bc], a
    push bc
    db $10
    push bc
    db $10
    push bc
    db $10
    pop af
    cp $fb
    ld a, [c]
    inc b
    ldh a, [rIF]
    or $07
    cp $03
    db $f4
    rst $38
    push af
    jr nz, @-$04

    cpl
    ld l, d
    push af
    rra

jr_005_6a05:
    ld a, [$6a2f]
    push af
    jr nz, jr_005_6a05

    cpl
    ld l, d
    ld a, [$6a36]
    db $fc
    ld [bc], a
    push af
    jr nz, @-$04

    ld b, l
    ld l, d
    push af
    ld hl, $45fa
    ld l, d
    db $fd
    push af
    dec e
    ld a, [$6a45]
    push af
    inc e
    ld a, [$6a45]
    push af
    inc d
    ld a, [$6a4c]
    ld hl, sp+$10
    ld l, d
    db $fc
    inc b
    inc d

jr_005_6a32:
    db $10
    jr nz, jr_005_6a32

    ei
    inc de
    db $10
    ccf
    inc de
    db $10
    ccf
    rra
    db $10
    rra
    db $10
    rra
    rra
    rra
    db $10
    ei
    db $fc
    ld [$0034], sp
    inc d
    db $fd
    ei
    db $fc
    ld [bc], a
    dec sp
    rlca
    dec de
    db $fd
    db $fc
    ld [bc], a
    add hl, sp
    dec b
    add hl, de
    db $fd
    db $fc
    ld [bc], a
    scf
    inc bc
    rla
    db $fd
    db $fc
    ld [bc], a
    inc a
    ld [$fd1c], sp
    db $fc
    ld b, $3e
    ld a, [bc]
    ld e, $fd
    rra
    rra
    jr nc, jr_005_6a8d

    rra
    ccf
    ei
    ld a, [c]
    inc b
    or $04
    db $f4

jr_005_6a76:
    sbc $f0
    add hl, bc
    push af
    jr nz, jr_005_6a76

    ret


    ld l, d
    push af
    rra

jr_005_6a80:
    ld a, [$6ac9]
    push af
    jr nz, jr_005_6a80

    ret


    ld l, d
    ld a, [$6ad3]
    or $19

jr_005_6a8d:
    ldh a, [$0c]
    push af
    inc l
    cp $03
    ld a, [$6aea]
    ld a, [$6afb]
    ld a, [$6aea]
    ld a, [$6b12]
    or $13
    ldh a, [$0d]
    db $f4
    ldh a, [$fa]
    ld l, $6b
    push af
    dec hl

jr_005_6aaa:
    ld a, [$6b2e]
    push af
    jr nz, jr_005_6aaa

    ccf
    ld l, e
    push af
    inc l
    cp $03
    or $13
    ldh a, [$0d]
    ld a, [$6aea]
    ld a, [$6afb]
    ld a, [$6aea]
    ld a, [$6b12]
    ld hl, sp-$61
    ld l, d
    db $fc
    ld [$01fe], sp
    inc b
    cp $02
    rlca
    db $fd
    ei
    db $fc
    inc b
    cp $01
    inc bc
    cp $02
    ld b, $fd
    or $15
    ldh a, [$0c]
    cp $01
    ld b, $10
    ld b, $10
    ld b, $06
    ld h, $fb
    jr nc, @+$1d

    dec e
    rra
    db $10
    ld [bc], a
    db $10
    cp a
    dec de
    dec e
    rra
    ld [bc], a
    rra
    ld [bc], a
    db $dd
    inc a
    ei
    db $db
    inc b
    db $dd
    inc b
    rst $18
    inc b
    nop
    db $10
    ld e, $10
    call c, $003c
    ld e, $00
    db $10
    ld e, $10
    cp h
    ld e, $10
    ld a, h
    ei
    db $db
    inc b
    db $dd
    inc b
    rst $18
    inc b
    nop
    db $10
    ld e, $10
    call c, $003c
    ld e, $00
    db $10
    ld e, $10
    inc e
    ld e, $5c
    db $10
    ld e, $10
    nop
    ld bc, $fb23
    inc b
    db $10
    ld [$c110], sp
    inc a
    inc b
    inc bc
    inc b
    db $10
    ld [$a110], sp
    inc bc
    db $10
    ld h, c
    ei
    jr nc, @+$09

    add hl, bc
    ld a, [hl+]
    ld c, $10
    rrca
    db $10
    ld c, $10
    ld l, h
    jr nc, jr_005_6b56

    inc c
    ld c, $10
    ld a, [bc]
    db $10
    daa
    dec b
    db $10
    rlca
    db $10

jr_005_6b56:
    dec b
    rlca
    add hl, bc
    db $10
    rlca
    add hl, bc
    jp nz, $f678

    rla
    db $f4
    sbc $f0
    dec c
    cp $01
    ld b, $06
    jr nc, jr_005_6b70

    ld b, $26
    ei
    ldh a, [$de]
    ld a, [c]

jr_005_6b70:
    inc b
    or $02
    ldh a, [rTMA]
    db $f4
    sub [hl]
    push af
    ld b, h
    cp $03
    ld a, [$6bd2]
    push af
    ld b, e
    ld a, [$6bd2]
    push af
    ld b, h
    ld a, [$6bd2]
    ld a, [$6bd9]
    push af
    inc l
    db $f4
    ld a, [$0cf0]
    or $16
    cp $03
    ld a, [$6aea]
    ld a, [$6afb]
    ld a, [$6aea]
    ld a, [$6b12]
    push af
    inc l
    or $13
    ldh a, [$0c]
    db $f4

jr_005_6ba8:
    ldh a, [$fa]
    pop af
    ld l, e
    push af
    dec hl
    ld a, [$6bf1]
    push af
    jr nz, jr_005_6ba8

    nop
    or $06
    ldh a, [rTAC]
    ld a, [$6c02]
    or $18
    cp $03
    ldh a, [$0b]
    db $fc
    ld [bc], a
    push af
    jr nz, @-$04

    ld c, b
    ld l, h
    push af
    ld hl, $48fa
    ld l, h
    db $fd
    ld hl, sp-$5f
    ld l, e
    db $fc
    inc b
    jr nc, @+$06

    inc b
    db $fd
    ei
    jr nc, jr_005_6bde

    inc bc
    jr nc, @+$05

jr_005_6bde:
    inc bc
    push af

jr_005_6be0:
    jr nz, jr_005_6be0

    ld [bc], a
    or $15
    db $f4
    sbc $f0
    inc c
    inc bc
    db $10
    inc bc
    db $10
    inc bc
    inc bc
    inc hl
    ei
    ld bc, $0410
    db $10
    db $dd
    inc a
    ld bc, $011f
    db $10
    inc b
    db $10
    cp l
    rra
    db $10
    ld a, l
    ei
    db $fc
    ld [bc], a
    cp $01
    dec b
    ld [bc], a
    cp $02
    ld e, $02
    db $fd
    db $fc
    ld [bc], a
    cp $01
    dec b
    nop
    cp $02
    inc e
    nop
    db $fd
    db $fc
    ld [bc], a
    cp $01
    rlca
    inc bc
    cp $02
    ld e, $03
    db $fd
    db $fc
    ld [bc], a
    cp $01
    inc bc
    nop
    cp $02
    inc e
    nop
    db $fd
    db $fc
    ld b, $fe
    ld bc, $0205
    cp $02
    ld e, $02
    db $fd
    or $17
    ldh a, [$0d]
    cp $02
    db $f4
    sbc $03
    inc bc
    jr nc, jr_005_6c48

    inc bc
    inc hl
    ei

jr_005_6c48:
    db $fc
    ld [$043b], sp
    inc b
    db $fd
    ei
    ld a, [c]
    inc b
    db $f4
    rst $38
    ldh a, [$08]
    cp $03
    db $fc
    ld c, $fa
    ld a, [hl]
    ld l, h
    db $fd
    ld a, [$6cc3]
    db $fc
    ld [bc], a
    db $fc
    ld c, $fa
    ld a, [hl]
    ld l, h
    db $fd
    ld a, [$6c91]
    db $fd
    db $fc
    ld [$a3fa], sp
    ld l, h
    db $fd
    db $fc
    ld c, $fa
    ld a, [hl]
    ld l, h
    db $fd
    ld a, [$6cd5]
    ld hl, sp+$60
    ld l, h
    or $1a
    inc b
    pop af
    db $fd
    inc b
    pop af
    ld b, $f6
    db $10
    ld b, $f6
    ld a, [de]
    pop af
    cp $05
    pop af
    rst $38
    ei
    or $1a
    inc b
    pop af
    db $fd
    inc b
    pop af
    ld b, $fc
    inc bc
    ld b, $06
    pop af
    ld bc, $f1fd
    ld a, [$f6fb]
    ld a, [de]
    inc b
    pop af
    db $fd
    inc b
    pop af
    ld b, $f6
    db $10
    ld b, $f1
    ld a, [$00f6]
    ld [bc], a
    pop af
    inc bc
    db $fc
    ld [bc], a
    or $1a
    inc b
    or $10
    pop af
    inc bc
    ld b, $f1
    db $fd
    db $fd
    ei
    or $10
    pop af
    dec b
    daa
    daa
    rlca
    pop af
    db $fd
    rlca
    pop af
    inc bc
    or $07
    add hl, hl
    pop af
    ei
    ei
    pop af

jr_005_6cd6:
    inc bc
    or $10
    ld b, $46
    ld b, $f1
    cp $06
    pop af
    ld [bc], a
    or $07
    jr z, jr_005_6cd6

    db $fd
    ei
    ld a, [c]
    ld bc, $fe70
    inc bc
    ld hl, sp+$66
    ld e, c
    ld a, [c]
    ld bc, $fe70
    inc bc
    ld hl, sp+$5a
    ld e, d
    ld a, [c]
    ld bc, $fe6f
    inc bc
    or $10
    db $f4
    ldh a, [$f8]
    dec e
    ld e, e
    ld a, [c]
    ld bc, $03fe
    ld hl, sp-$4d
    ld e, b
    ld a, [c]
    inc bc
    cp $03
    ld hl, sp+$4e
    ld e, a
    ld a, [c]
    inc bc
    push af
    inc l

jr_005_6d15:
    ld hl, sp+$26
    ld h, b
    ld a, [c]
    inc bc
    cp $03
    push af
    jr nz, jr_005_6d15

    rlca
    ldh a, [rIF]
    db $f4
    rst $38
    ld hl, sp-$55
    ld e, [hl]
    ld a, [c]
    inc bc
    cp $03
    db $f4
    rst $38
    or $10
    ldh a, [$09]
    ld hl, sp+$14
    ld h, c
    ld a, [c]
    ld [bc], a
    cp $03
    push af
    inc sp
    ld hl, sp-$1b
    ld d, l
    ld a, [c]
    ld [bc], a
    push af
    inc sp
    ld hl, sp-$3c
    ld d, [hl]
    ld a, [c]
    ld [bc], a
    db $f4
    and b
    cp $03
    push af
    daa
    or $07
    ldh a, [rIF]
    ld hl, sp-$6a
    ld d, a
    ld a, [c]
    inc b
    db $f4
    sbc $f8
    adc e
    ld l, d
    ld a, [c]
    inc b
    ld hl, sp-$75
    ld l, e
    ld a, [c]
    inc b
    ldh a, [rIF]
    or $07
    cp $03
    db $f4
    rst $38
    ld hl, sp+$10
    ld l, d
    ld a, [c]
    inc b
    ldh a, [$08]
    db $f4
    rst $38
    cp $03
    ld hl, sp+$60

jr_005_6d76:
    ld l, h
    ld a, [c]
    ld bc, $00f6
    ldh a, [$0a]
    cp $03
    db $f4

jr_005_6d80:
    nop
    push af
    ld [de], a
    db $db
    jr z, jr_005_6d76

    rrca
    db $db
    jr z, jr_005_6d80

    rlca
    push af
    ld a, [hl+]
    db $f4
    ld h, h
    ld [hl+], a
    ccf
    jr nc, jr_005_6db5

    ccf
    jr nc, jr_005_6db8

    ccf
    push af
    ld e, $f0
    rrca
    db $f4
    add d
    db $fc
    inc bc
    jr nz, jr_005_6dc1

    dec sp
    ld a, $fd
    jr nz, jr_005_6dc6

    db $f4

jr_005_6da7:
    and $1b
    dec de
    db $f4
    add d
    ld a, $fa

jr_005_6dae:
    or h
    ld l, l
    ld hl, sp-$53
    ld l, l
    rst $38
    db $fc

jr_005_6db5:
    inc b
    jr nz, jr_005_6dd8

jr_005_6db8:
    dec sp

jr_005_6db9:
    ld a, $fd
    db $fc
    inc b
    ld a, $3e
    add hl, sp
    inc a

jr_005_6dc1:
    db $fd
    db $fc
    inc b
    inc a
    inc a

jr_005_6dc6:
    scf
    inc hl
    db $fd
    dec sp
    dec sp
    ld [hl+], a
    dec sp
    dec sp
    ld [hl+], a
    dec sp
    dec sp
    ld [hl+], a
    dec sp
    dec sp
    ld [hl], $27
    dec sp
    daa

jr_005_6dd8:
    dec sp
    ei
    ld a, [c]
    ld bc, $00f4
    or $02
    cp $03
    push af
    ld [de], a
    ldh a, [rTAC]
    db $db
    jr z, @-$02

    ld [$01f1], sp
    di
    dec b
    db $fd
    push af
    ld e, $f4
    ld h, h
    ld a, [hl+]
    daa
    jr nc, jr_005_6e21

    daa
    jr nc, jr_005_6e24

    daa
    ldh a, [rP1]
    ret nc

    and b
    or $13
    push af
    ld e, $f0
    inc c
    ld a, [$6e10]
    push af
    ld a, [hl+]
    ld a, [$6e10]
    ld hl, sp-$01
    ld l, l
    db $f4
    rst $38
    inc hl
    db $f4
    ret z

    jr nz, jr_005_6da7

    ld a, $20
    db $f4
    rst $38
    ld h, e
    jr nz, jr_005_6dae

    db $f4
    ret z

    dec h

jr_005_6e21:
    daa
    jr nc, @-$0a

jr_005_6e24:
    nop
    inc bc
    ld [bc], a
    jr nz, jr_005_6db9

    db $f4
    adc h
    dec sp
    inc hl
    db $f4
    rst $38
    db $fc
    inc bc
    ld h, b
    ld e, $10
    db $fd
    dec h
    inc hl
    sub b
    dec h
    inc hl
    jr nc, jr_005_6e5c

    inc hl
    jr nc, @+$22

    inc hl
    dec h
    ld h, $27
    ld a, [hl+]
    daa
    ret nc

    jr z, jr_005_6e72

    daa
    ret nc

    jr z, @+$2c

    daa
    ld [hl], b
    ei
    ld a, [c]
    ld bc, $00f4
    or $03
    ldh a, [rTAC]
    push af
    ld [de], a
    cp $03
    db $db

jr_005_6e5c:
    jr z, @-$02

    ld [$01f1], sp
    di
    dec b
    db $fd
    push af
    ld e, $f4
    ld h, h
    or $02
    dec h
    ld [hl+], a
    jr nc, jr_005_6e93

    ld [hl+], a
    jr nc, jr_005_6e96

    ld [hl+], a

jr_005_6e72:
    ldh a, [$0c]
    push af
    ld b, $f4
    add d
    db $fc
    inc b
    jr nz, jr_005_6e9c

    daa
    ld a, $fd
    db $f4
    rst $38
    push af
    ld e, $f6
    nop
    ldh a, [$08]
    ld a, [$6e92]
    push af
    ld a, [hl+]
    ld a, [$6e92]
    ld hl, sp+$7f
    ld l, [hl]
    db $fc

jr_005_6e93:
    ld [$02fe], sp

jr_005_6e96:
    rla
    dec de
    cp $01
    nop
    dec de

jr_005_6e9c:
    db $fd
    db $fc
    ld [$02fe], sp
    ld d, $19
    cp $01
    ld e, $19
    db $fd
    db $fc
    ld [$02fe], sp
    rla
    inc e
    cp $01
    nop
    inc e
    db $fd
    db $fc
    ld [$02fe], sp
    add hl, de
    dec de
    cp $01
    rra
    dec de
    db $fd
    ei
    ld a, [c]
    ld bc, $10f6
    db $f4
    rst $38
    cp $03
    ldh a, [$0c]
    rst $08
    ld d, b
    daa
    daa
    cpl
    daa
    daa
    cpl
    daa
    daa
    or $10
    inc bc
    pop af
    db $fd
    inc bc
    or $00
    ld hl, $03f1
    or $10
    ld b, $f1
    db $fd
    inc bc
    or $00
    ld hl, $03f1
    ld hl, sp-$2d
    ld l, [hl]
    ld a, [c]
    inc bc
    or $07
    cp $03
    ldh a, [rIF]
    db $f4
    ld a, [$20f5]
    ld d, [hl]
    ld d, [hl]
    ld d, $18
    add hl, de
    db $10
    add hl, de
    db $10
    add hl, de
    add hl, de
    add hl, sp
    ld e, e
    ld e, e
    dec sp
    ld c, $10
    ld c, $10
    dec c
    dec c
    daa
    ld hl, sp-$14
    ld l, [hl]
    ld a, [c]
    inc bc
    cp $03
    ldh a, [$0b]
    db $f4
    push af
    or $17
    push af
    inc l
    ld b, b
    ld b, b
    dec e
    ld [bc], a
    nop
    stop
    stop
    nop
    jr nz, jr_005_6f87

    ld e, a
    ccf
    dec e
    db $10
    dec e
    db $10
    dec e
    dec e
    dec a
    ld hl, sp+$10
    ld l, a
    ld a, [c]
    inc bc
    or $18
    db $f4
    push af
    ldh a, [$0b]
    cp $03
    push af
    jr nz, @-$02

    ld [$0905], sp
    db $fd
    db $fc
    inc b
    ld [bc], a
    dec b
    db $fd
    inc b
    db $10
    inc b
    db $10
    inc b
    inc b
    ld hl, $34f8
    ld l, a
    ld a, [c]
    inc bc
    or $10
    cp $01
    ldh a, [$0b]
    db $f4
    rst $38
    ld bc, $fff1
    ld [bc], a
    pop af
    ld [bc], a
    ld b, $f1
    cp $08
    pop af
    ld bc, $5ef8
    ld l, a
    add b
    ld c, a
    rst $38
    add c
    ld c, a
    rst $38
    add d
    ld c, a
    rst $38
    add e
    ld c, a
    rst $38
    ld b, h
    ld [$ff40], sp
    add c
    ld c, a
    db $fc
    rrca
    ld l, a
    ld [$fffd], sp
    add d
    ld e, a

jr_005_6f87:
    db $fc
    ld [$6e03], sp
    db $fd
    rst $38
    add c
    ld hl, sp-$7a
    ld l, a
    add b
    ld c, a
    ld [bc], a
    ld c, l
    ld [bc], a
    ld hl, sp-$79
    ld l, a
    add d
    ld hl, sp+$7e
    ld l, a
    add d
    ld c, a
    ld [bc], a
    ld c, [hl]
    db $fc
    inc c
    ld l, a
    inc bc
    db $fd
    rst $38
    add c
    ld hl, sp-$62
    ld l, a
    add b
    ld a, [$6fb2]
    ld hl, sp-$5f
    ld l, a
    ld e, a
    ld e, e
    ei
    add c
    ld e, a
    ld e, h
    add b
    db $fc
    ld [$7e71], sp
    db $fd
    ld [hl], c
    ld a, a
    ld hl, sp-$42
    ld l, a
    add d
    ld d, a
    ld e, l
    ld e, a
    ld e, h
    ld b, [hl]
    ld b, $fc
    inc b
    ld h, c
    inc bc
    ld h, c
    inc bc
    db $fd
    ld hl, $2f03
    inc bc
    ld hl, sp-$2f
    ld l, a
    ld c, b
    dec b
    ld b, a
    ld [bc], a
    ld b, [hl]
    ld [bc], a
    db $fc
    dec b
    ld b, l
    inc b
    ld b, h
    inc bc
    db $fd
    ld b, d
    dec b
    ld b, b
    rst $38
    add c
    ld hl, sp-$3c
    ld l, a
    add d
    ld c, a
    ld [bc], a
    add c
    ld e, l
    add b
    db $fc
    ld b, $6f
    ld [bc], a
    db $fd
    ld b, [hl]
    inc bc
    ld b, a
    inc bc
    ld hl, sp-$08
    ld l, a
    add e
    ld e, a
    ld e, h
    db $fc
    dec b
    ld a, [hl]
    db $fd
    ld b, b
    rst $38
    add d
    ld c, a
    ld [bc], a
    ld c, [hl]
    dec b
    ld c, l
    dec b
    cpl
    ld [bc], a
    cpl
    inc bc
    ld hl, $2102
    inc bc
    ld hl, sp+$0f
    ld [hl], b
    add b
    ld hl, sp-$3b
    ld l, a
    add e
    ld e, a
    add d
    ld c, h
    ld [bc], a
    cpl
    inc bc
    ld hl, $f803
    inc hl
    ld [hl], b
    ld b, h
    ld [bc], a
    ld b, b
    rst $38
    add d
    ld e, e
    ld c, h
    ld [bc], a
    ld c, l
    ld b, $4e
    ld hl, $2f03
    inc bc
    ld hl, sp+$35
    ld [hl], b
    add e
    ld e, a
    add b
    ld c, [hl]
    ld [bc], a
    add c
    ld c, d
    db $fc
    dec b
    ld a, a
    db $fd
    ld l, a
    inc bc
    cpl
    inc b
    ld hl, $f804
    ld c, c
    ld [hl], b
    cpl
    ld hl, sp+$2e
    ld [hl], b
    add e
    ld e, a
    add c
    ld c, h
    ld [bc], a
    ld hl, $2f03
    inc bc
    ld hl, sp+$59
    ld [hl], b
    add b
    ld e, a
    add e
    ld e, l
    db $fc
    dec b
    ld a, a
    db $fd
    rst $38
    add b
    ld e, a
    add d
    ld e, [hl]
    add c
    ld e, l
    ld e, h
    ld e, e
    ld e, d
    ld e, c
    rst $38
    ld e, a
    db $fc
    dec b
    ld a, [hl]
    db $fd
    ld d, e
    ld d, d
    ld d, c
    ld d, b
    rst $38
    ld [bc], a
    ld b, h
    ld [hl], c
    nop
    jp c, $0471

    ld [bc], a
    ldh [$71], a
    inc b
    dec de
    ld [hl], d
    inc c
    ld bc, $723b
    inc b
    ld bc, $725c
    inc b
    ld bc, $728d
    inc b
    ld bc, $72b0
    inc b
    ld [bc], a
    call $0c72
    or $72
    inc b
    ld [bc], a
    rla
    ld [hl], e
    inc b
    ld d, [hl]
    ld [hl], e
    nop
    ld bc, $735f
    inc b
    ld bc, $7378
    inc b
    ld bc, $7394
    inc c
    ld bc, $73ba
    inc b
    ld [bc], a
    call nc, $0473
    dec a
    ld [hl], h
    nop
    ld [bc], a
    ld c, d
    ld [hl], h
    inc b
    call c, $0074
    ld bc, $74e4
    inc c
    ld bc, $74f8
    inc b
    ld bc, $7515
    inc b
    ld bc, $7544
    inc c
    ld bc, $7559
    inc b
    ld bc, $757e
    inc c
    ld bc, $7597
    inc c
    ld bc, $75b6
    inc c
    ld [bc], a
    rst $08
    ld [hl], l
    nop
    rst $20
    ld [hl], l
    inc b
    inc bc
    xor $75
    inc c
    ld [bc], a
    db $76
    inc b
    jr @+$78

    nop
    inc b
    ld l, $76
    inc b
    ld c, c
    halt
    nop
    ld a, b
    db $76
    db $10
    ld a, e
    db $76
    inc c
    ld bc, $767e
    inc c
    ld bc, $76a2
    inc b
    ld bc, $76b0
    inc b
    ld bc, $76c1
    inc c
    inc bc
    sub $76
    inc c
    ld a, [$0476]
    rla
    ld [hl], a
    nop
    ld bc, $7734
    inc b
    ld bc, $7747
    inc b
    ld bc, $7768
    inc c
    inc b
    sbc b
    ld [hl], a
    inc b
    and b
    ld [hl], a
    nop
    xor b
    ld [hl], a
    db $10
    xor l
    ld [hl], a
    inc c
    ld [bc], a
    or d
    ld [hl], a
    inc b
    dec de
    ld [hl], d
    inc c
    ld bc, $77b7
    inc b
    ld a, [c]
    ld b, $fe
    inc bc
    ldh a, [rIF]
    or $1b
    db $f4
    nop
    push af
    daa
    dec b
    db $fc
    ld b, $e3
    pop af
    di
    ld bc, $0be3
    di
    ld bc, $f5fd
    inc l
    ld c, $0f
    ld c, $0f
    ld [hl], b
    rst $08
    nop
    db $fc
    inc bc
    db $e3
    ld a, [$01f3]
    db $e3
    ld [$01f3], sp
    db $e3
    ld hl, sp-$0d
    ld bc, $06e3
    di
    ld bc, $d0fd
    ld [$00cf], sp
    db $fc
    inc bc
    db $e3
    ld sp, hl
    di
    ld bc, $fbe3
    di
    ld bc, $07e3
    di
    ld bc, $05e3
    di
    ld bc, $fcfd
    ld [bc], a
    rst $08
    nop
    db $fc
    inc bc
    db $e3
    ld a, [$01f3]
    db $e3
    dec b
    di
    ld bc, $fbe3
    di
    ld bc, $06e3
    di
    ld bc, $e3fd
    ld b, $f3
    ld bc, $fbe3
    di
    ld bc, $fff1
    db $e3
    add hl, bc
    di
    ld bc, $f9e3
    di
    ld bc, $fff1
    db $e3
    ld [$01f3], sp
    db $e3
    rst $30
    di
    ld bc, $fff1
    db $e3
    rlca
    di
    ld bc, $fbe3
    di
    ld bc, $fff1
    db $e3
    add hl, bc
    di
    ld bc, $f9e3
    di
    ld bc, $04f0
    db $fd
    rst $38
    ld a, [c]
    ld b, $30
    ld hl, sp+$44
    ld [hl], c
    push af
    daa
    ld a, [c]
    ld b, $f6
    inc e
    db $f4
    nop
    cp $03
    ldh a, [rDIV]
    inc b
    db $fc
    dec b
    db $e3
    ld sp, hl
    di
    ld bc, $f8e3
    di
    ld bc, $04e3
    di
    ld bc, $f9e3
    di
    ld bc, $01f1
    db $e3
    dec b
    di
    ld bc, $f8e3
    di
    ld bc, $f1fd
    cp $e3
    ld bc, $01f3
    db $e3
    cp $f3
    ld bc, $02e3
    di
    ld bc, $10f8
    ld [hl], d
    ld a, [c]
    add hl, bc
    cp $03
    or $1b
    db $f4
    nop
    ldh a, [$03]
    ld b, $f1
    inc bc
    dec b
    pop af
    inc bc
    inc b
    pop af
    ld [bc], a
    inc bc
    pop af
    ld [bc], a
    ld [bc], a
    pop af
    ld [bc], a
    pop bc
    ld bc, $01c0
    ld hl, sp+$34
    ld [hl], d
    push af
    ld d, $fa
    ld b, [hl]
    ld [hl], d
    push af
    add hl, de
    ld a, [$7256]
    rst $38
    ld a, [c]
    ld b, $f6
    ld e, $fe
    inc bc
    ldh a, [rIF]
    db $f4
    nop
    push af
    jr jr_005_725a

    ld [$fb1d], sp
    ldh a, [$0b]
    ld a, [bc]
    dec bc

jr_005_725a:
    rrca
    ei
    ld a, [c]
    ld b, $f6
    dec e
    db $f4
    nop
    push af

jr_005_7263:
    jr jr_005_7263

    inc bc
    ldh a, [$09]
    ld [bc], a
    ldh a, [rIF]
    db $db
    nop
    db $fc
    ld [bc], a
    db $e3
    ld e, b
    di
    ld bc, $dfe3
    di
    ld bc, $f5fd
    inc l
    ldh a, [rP1]
    db $10
    ldh a, [rTMA]
    or $1d
    adc $00
    db $fc
    dec b
    db $e3
    rst $38
    di
    ld bc, $01f1
    db $fd
    rst $38
    ld a, [c]
    ld b, $f6
    dec e
    db $f4
    nop
    push af
    inc sp
    cp $03
    ldh a, [rTMA]
    ret nz

    nop
    db $fc
    inc bc
    db $e3
    ld hl, sp-$0d
    ld bc, $03f1
    db $fd
    pop af
    ld a, [$02fc]
    db $e3
    rst $30
    di
    ld bc, $fbf1
    db $fd
    rst $38
    ld a, [c]
    ld b, $f4
    nop
    cp $03
    or $1c
    ldh a, [$0e]
    push af
    ld h, $34
    pop af
    rst $38
    inc de
    pop af
    db $fd
    ld a, [de]
    pop af
    rst $38
    dec de
    pop af
    rst $38
    inc e
    pop af
    rst $38
    ld e, $ff
    ld a, [c]
    ld b, $f4
    nop
    or $1b
    ldh a, [rIF]
    add hl, hl
    dec bc
    inc c
    dec c
    ld c, $2f
    ldh a, [$03]
    add $00
    db $fc
    inc bc
    ld bc, $02f1
    ld [bc], a
    pop af
    ld [bc], a
    db $fd
    ret nz

    nop
    db $fc
    ld b, $f1
    rst $38
    di
    ld [bc], a
    pop af
    rst $38
    di
    ld bc, $fffd
    ld a, [c]
    ld b, $f4
    nop
    or $1c
    ldh a, [rIF]
    cp $03
    push af
    rrca
    rst $00
    nop
    db $fc
    ld b, $e3
    ld d, l
    di
    ld [bc], a
    pop af
    rst $38
    db $fd
    ldh a, [$08]
    db $fc
    ld b, $11
    ld [de], a
    pop af
    rst $38
    db $fd
    rst $38
    ld a, [c]
    ld b, $f6
    dec e
    ldh a, [rTIMA]
    db $f4
    nop
    push af
    scf
    cp $03
    inc l
    ldh a, [$08]
    add hl, hl
    ldh a, [rIF]
    ld a, [hl+]
    ldh a, [$0e]
    daa
    pop af
    rst $38
    jr z, @-$0d

    cp $25
    pop af
    cp $26
    pop af
    cp $23
    pop af
    cp $24
    or $1d
    ldh a, [$03]
    ld hl, $fef1
    ld b, d
    ldh a, [$03]
    inc l
    add hl, hl
    ld a, [hl+]
    ldh a, [rSC]
    daa
    jr z, jr_005_7373

    ld h, $f0
    ld bc, $2423
    ld hl, $ff22
    ld a, [c]
    ld b, $d0
    ld [bc], a
    or $1b
    ld hl, sp+$1b
    ld [hl], e
    ld a, [c]
    ld b, $f6
    dec de
    db $f4
    nop
    push af
    daa
    ldh a, [rIF]
    cp $03
    dec e
    ld e, $1c
    ldh a, [rP1]
    db $10
    ldh a, [rIF]

jr_005_7373:
    dec b
    rlca
    ld b, $08
    rst $38
    ld a, [c]
    ld b, $f6
    dec e
    ldh a, [rDIV]
    cp $03
    db $f4
    ld a, b
    push af
    daa
    rst $00
    nop
    db $fc
    ld b, $e3
    xor $f3
    ld bc, $fcf1
    di
    ld bc, $06f1
    db $fd
    rst $38
    ld a, [c]
    ld b, $f0
    rrca
    db $f4
    nop
    cp $03
    or $1b
    ld c, $0c
    dec b
    ld c, $2f
    add hl, hl
    ld a, [hl+]
    dec bc
    inc c
    dec c
    ld c, $0e
    db $fc
    inc bc
    dec hl
    pop af
    rst $38
    inc l
    pop af
    rst $38
    dec l
    pop af
    cp $2e
    pop af
    rst $38
    db $fd
    rst $38
    ld a, [c]
    ld b, $f6
    inc e
    db $f4
    nop
    ldh a, [$0e]
    push af
    ccf
    cp $03
    daa
    pop af
    ld hl, sp+$3b
    pop af
    ld [$f122], sp
    ld hl, sp+$27
    pop af
    ld [$ff22], sp
    ld a, [c]
    ld b, $fa
    rst $18

jr_005_73d8:
    ld [hl], e
    cp $01
    ld a, [$7402]
    rst $38
    ldh a, [rIF]
    push af
    jr c, jr_005_73d8

    nop
    cp $03
    or $1d
    jr nz, jr_005_740f

    daa
    add hl, hl
    inc l
    db $10
    ldh a, [$0a]
    db $fc
    inc b
    jr nz, jr_005_7419

    add hl, hl
    inc l
    pop af
    cp $fd
    ldh a, [rSC]
    ld hl, $2825
    ld a, [hl+]
    dec l
    ei
    ld [hl+], a
    ld h, $29
    dec hl
    ld l, $fc
    inc b
    db $fc
    ld [bc], a
    inc hl
    daa
    ld a, [hl+]
    inc l

jr_005_740f:
    cpl
    db $fd
    pop af
    ld [bc], a
    db $fd
    ldh a, [$0a]
    db $fc
    ld a, [bc]
    db $fc

jr_005_7419:
    ld [bc], a
    jp $e300


    cp $f3
    ld [bc], a
    rst $00
    nop
    db $e3
    cp $f3
    ld [bc], a
    jp z, $e300

    cp $f3
    ld [bc], a
    call z, $e300
    cp $f3
    ld [bc], a
    rst $08
    nop
    db $e3
    cp $f3
    ld [bc], a
    db $fd
    pop af
    rst $38
    db $fd
    ei
    ret nc

    ld [bc], a
    ld a, [c]
    ld b, $fa
    rst $18
    ld [hl], e
    cp $02
    ld a, [$7402]
    rst $38
    ld a, [c]
    ld b, $fe
    ld bc, $01f0
    or $1d
    db $f4

jr_005_7453:
    nop
    push af
    jr c, jr_005_7453

    ld b, $fa
    ld a, d
    ld [hl], h
    pop af
    ld bc, $fafd
    sbc c
    ld [hl], h
    db $fc
    ld b, $fa
    sub $74
    pop af
    rst $38
    db $fd
    ldh a, [rSC]
    ld a, [$74d6]
    ld a, [$74d6]
    ldh a, [rSB]
    db $fc
    dec b
    ld a, [$74d6]
    db $fd
    rst $38
    jp $e300


    db $fd
    di
    ld [bc], a
    rst $00
    nop
    db $e3
    db $fd
    di
    ld [bc], a
    jp z, $e300

    db $fd
    di
    ld [bc], a
    call z, $e300
    db $fd
    di
    ld [bc], a
    rst $08
    nop
    db $e3
    db $fd
    di
    ld [bc], a
    ei
    jp $e300


    cp $f3
    ld [bc], a
    rst $00
    nop
    db $e3
    cp $f3
    ld [bc], a
    jp z, $e300

    cp $f3
    ld [bc], a
    call z, $e300
    cp $f3
    ld [bc], a
    rst $08
    nop
    db $e3
    cp $f3
    ld [bc], a
    jp $e300


    rst $38
    di
    ld [bc], a
    rst $00
    nop
    db $e3
    rst $38
    di
    ld [bc], a
    jp z, $e300

    rst $38
    di
    ld [bc], a
    call z, $e300
    rst $38
    di
    ld [bc], a
    rst $08
    nop
    db $e3
    rst $38
    di
    ld [bc], a
    ei
    inc hl
    daa
    ld a, [hl+]
    inc l

jr_005_74da:
    cpl
    ei
    ld a, [c]
    ld b, $fe
    ld [bc], a
    jr nc, jr_005_74da

    ld c, [hl]
    ld [hl], h
    ld a, [c]
    ld b, $f0
    rrca
    or $1b
    db $f4
    nop
    dec b
    add hl, bc
    ld b, $0f
    db $fc
    ld [$0a0e], sp
    pop af
    cp $fd
    rst $38
    ld a, [c]
    ld b, $f0
    rrca
    or $1d
    db $f4
    nop
    cp $03
    push af
    inc h
    jp z, $e300

    inc d
    di
    ld bc, $f00b
    rlca
    rlca
    inc bc
    ldh a, [rTIMA]
    nop
    dec e
    ld a, [de]
    rst $38
    ld a, [c]
    ld b, $f0
    rrca
    or $1d
    db $f4
    nop
    push af
    inc [hl]
    cp $03
    rrca
    db $10
    ld c, $10
    dec c
    pop af
    cp $0a
    pop af
    cp $07
    pop af
    cp $04
    pop af
    cp $01
    pop af
    cp $1e
    pop af
    rst $38
    dec de
    pop af
    rst $38
    add hl, de
    rla
    pop af
    rst $38
    dec d
    inc de
    ldh a, [rSB]
    ld [de], a
    rst $38
    ld a, [c]
    ld b, $f6
    dec de
    db $f4
    nop
    ldh a, [rIF]
    cp $03
    inc c
    ldh a, [rIF]
    db $fc
    ld b, $0d
    ld c, $f1
    db $fd
    db $fd
    rst $38
    ld a, [c]
    ld b, $f6
    ld e, $fe
    inc bc
    db $f4
    nop
    ldh a, [rIF]
    push af
    ld b, [hl]
    sbc $00
    db $fc
    dec b
    db $e3
    dec e
    di
    ld bc, $fef1
    db $fd
    ldh a, [rIF]
    call nz, $fc00
    dec b
    db $e3
    dec de
    di
    ld bc, $fef1
    db $fd
    rst $38
    ld a, [c]
    ld b, $f0
    rlca
    cp $03
    or $1b
    db $f4
    nop
    db $fc
    inc b
    dec bc
    ld a, [bc]
    pop af
    ld [bc], a
    db $fd
    db $fc
    ld [$0c0b], sp
    pop af
    cp $fd
    rst $38
    ld a, [c]
    ld b, $f6
    dec de
    db $f4
    nop
    ldh a, [$0d]
    cp $03
    add hl, bc
    inc bc
    pop af
    ei
    ld b, $f1
    dec b
    add hl, bc
    ld b, $03
    rrca
    ldh a, [$0a]
    db $fc
    ld a, [bc]
    ld bc, $f120
    rst $38
    db $fd
    rst $38
    ld a, [c]
    ld b, $f6
    dec de
    db $f4
    nop
    ldh a, [rIF]
    cp $03
    push af
    daa
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $2f
    rst $38
    ld a, [c]
    ld b, $f6
    dec e
    db $f4
    nop
    cp $03
    push af
    ld a, [hl-]
    ldh a, [rIF]
    sbc e
    add b
    add h
    and a
    or b
    xor h
    or b
    ld b, $c7
    inc c
    or b
    rst $38
    ld a, [c]
    ld b, $f6
    ld l, $f8
    db $d3
    ld [hl], l
    ld a, [c]
    ld b, $f6
    dec de
    ldh a, [rIF]
    db $f4
    nop
    cp $03
    db $fc
    ld [$0d0e], sp
    ld c, $0d
    pop af
    cp $fd
    rst $38
    ld a, [c]
    ld b, $f6
    dec e
    ldh a, [rIF]
    db $f4
    nop
    cp $03
    push af
    ld d, $fc
    ld [$1311], sp
    ld [de], a
    inc d
    pop af
    cp $fd
    rst $38
    ld a, [c]
    ld b, $f6
    dec e
    ldh a, [rIF]
    db $f4
    nop
    cp $03
    push af
    ld d, $fc
    ld [$1412], sp
    inc de
    dec d
    pop af
    cp $fd
    rst $38
    ld a, [$7632]
    rst $38
    ld a, [c]
    ld b, $f6
    dec e
    ldh a, [rIF]
    db $f4
    nop
    cp $03
    push af
    ccf
    db $fc
    ld [bc], a
    ld a, l
    jr nz, @+$24

    ld h, l
    jr nc, @-$0d

    db $f4
    db $fd
    ei
    ld a, [$764d]
    rst $38
    ld a, [c]
    ld b, $f6
    dec e
    ldh a, [$0e]
    db $f4
    nop
    cp $03
    push af
    ccf
    db $fc
    ld [bc], a
    db $dd
    nop
    db $e3
    ld bc, $04f3
    ret nz

    nop
    db $e3
    ld bc, $02f3
    jp nz, $e300

    ld bc, $02f3
    push bc
    nop
    db $e3
    ld bc, $04f3
    jr nc, @-$0d

    db $f4
    db $fd
    ei
    ret nc

    ld bc, $cfff
    ld bc, $f2ff
    ld b, $f0
    rrca
    db $f4
    nop
    or $1b
    cp $03
    ld [$0607], sp
    dec b
    inc b
    inc bc
    ld [bc], a
    db $fc
    ld b, $01
    nop
    ld bc, $0100
    ld [bc], a
    ld bc, $fd00
    db $fc
    rrca
    ld hl, $f120
    rst $38
    db $fd
    rst $38
    ld a, [c]
    ld b, $f0
    rrca
    or $1d
    cp $03
    db $f4
    nop
    push af
    ccf
    ld [hl+], a
    rst $38
    ld a, [c]
    ld b, $f0
    rrca
    or $1d
    cp $03
    db $f4
    nop
    push af
    ccf
    dec sp
    jr nz, jr_005_76e3

    daa
    rst $38
    ld a, [c]
    ld b, $f0
    rrca
    or $1b
    cp $03
    db $f4
    nop
    dec b
    ld c, $08
    db $fc
    inc bc
    ld [bc], a
    inc b
    pop af
    db $fc
    db $fd
    rst $38
    ld a, [c]
    ld b, $f0
    rrca
    db $f4
    nop
    or $1b
    cp $03
    dec bc
    inc c
    dec c

jr_005_76e3:
    db $fc
    inc bc
    dec c
    ld c, $fd
    inc bc
    inc h
    db $fc
    ld b, $25
    ld h, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, [hl]
    pop af
    db $fd
    db $fd
    rst $38
    ld a, [c]
    ld b, $f0
    rrca
    db $f4
    nop
    or $1d
    cp $03
    push af
    dec de
    db $fc
    inc b
    ret nz

    nop
    db $fc
    dec c
    db $e3
    ld e, d
    di
    ld bc, $f1fd
    db $fd
    di
    ld [bc], a
    db $fd
    rst $38
    ld a, [c]
    ld b, $f0
    rrca
    db $f4
    nop
    or $1e
    cp $03
    push af
    dec de
    db $fc
    inc b
    push bc
    nop
    db $fc
    dec c
    db $e3
    ld e, d
    di
    ld bc, $f1fd
    db $fd
    di
    ld [bc], a
    db $fd
    rst $38
    ld a, [c]
    ld b, $fe
    inc bc
    ldh a, [$0d]
    db $f4
    nop
    or $1d
    push af
    daa
    inc d
    inc de
    jr nc, jr_005_774f

    inc c
    ld c, $ff
    ld a, [c]
    ld b, $f0
    ld bc, $1df6
    db $f4
    nop

jr_005_774f:
    push af
    dec de
    cp $03
    rlc b
    db $fc
    ld b, $e3
    di
    di
    ld bc, $02f1
    db $fd
    db $fc
    inc c
    db $e3
    ld a, [$01f3]
    pop af
    rst $38
    db $fd
    rst $38
    ld a, [c]
    ld b, $f0
    rrca
    or $1b
    db $f4
    nop
    cp $03
    dec b
    inc bc
    ld b, $04
    ld b, $2f
    dec b
    inc bc
    ld a, [$7788]
    ldh a, [rTMA]
    db $fc
    inc bc
    ld a, [$7788]
    pop af
    cp $fd
    rst $38
    dec b
    ld b, $07
    ld [$2a09], sp
    dec bc
    inc c
    dec bc
    inc c
    dec c
    inc c
    dec c
    ld c, $0d
    ei
    ld a, [$7632]
    ret nc

    inc d
    ld hl, sp-$65
    ld [hl], a
    ld a, [$764d]
    ret nc

    inc d
    ld hl, sp-$5d
    ld [hl], a
    ret nc

    inc d
    ld hl, sp-$58
    ld [hl], a
    rst $08
    inc d
    ld hl, sp-$53
    ld [hl], a
    push af
    ld [hl+], a
    ld hl, sp-$1e
    ld [hl], c
    push af
    dec e
    ld a, [$7246]
    push af
    ld [de], a
    ld a, [$7256]
    rst $38
    add b
    ld c, a
    rst $38
    add c
    ld c, a
    rst $38
    add d
    ld c, a
    rst $38
    add e
    ld c, a
    rst $38
    ld b, h
    ld [$ff40], sp
    add c
    ld c, a
    db $fc
    rrca
    ld l, a
    ld [$fffd], sp
    add d
    ld e, a
    db $fc
    ld [$6e03], sp
    db $fd
    rst $38
    add c
    ld hl, sp-$25
    ld [hl], a
    add b
    ld c, a
    ld [bc], a
    ld c, l
    ld [bc], a
    ld hl, sp-$24
    ld [hl], a
    add d
    ld hl, sp-$2d
    ld [hl], a
    add d
    ld c, a
    ld [bc], a
    ld c, [hl]
    db $fc
    inc c
    ld l, a
    inc bc
    db $fd
    rst $38
    add c
    ld hl, sp-$0d
    ld [hl], a
    add b
    ld a, [$7807]
    ld hl, sp-$0a
    ld [hl], a
    ld e, a
    ld e, e
    ei
    add c
    ld e, a
    ld e, h
    add b
    db $fc
    ld [$7e71], sp
    db $fd
    ld [hl], c
    ld a, a
    ld hl, sp+$13
    ld a, b
    add d
    ld d, a
    ld e, l
    ld e, a
    ld e, h
    ld b, [hl]
    ld b, $fc
    inc b
    ld h, c
    inc bc
    ld h, c
    inc bc
    db $fd
    ld hl, $2f03
    inc bc
    ld hl, sp+$26
    ld a, b
    ld c, b
    dec b
    ld b, a
    ld [bc], a
    ld b, [hl]
    ld [bc], a
    db $fc
    dec b
    ld b, l
    inc b
    ld b, h
    inc bc
    db $fd
    ld b, d
    dec b
    ld b, b
    rst $38
    add c
    ld hl, sp+$19
    ld a, b
    add d
    ld c, a
    ld [bc], a
    add c
    ld e, l
    add b
    db $fc
    ld b, $6f
    ld [bc], a
    db $fd
    ld b, [hl]
    inc bc
    ld b, a
    inc bc
    ld hl, sp+$4d
    ld a, b
    add e
    ld e, a
    ld e, h
    db $fc
    dec b
    ld a, [hl]
    db $fd
    ld b, b
    rst $38
    add d
    ld c, a
    ld [bc], a
    ld c, [hl]
    dec b
    ld c, l
    dec b
    cpl
    ld [bc], a
    cpl
    inc bc
    ld hl, $2102
    inc bc
    ld hl, sp+$64
    ld a, b
    add b
    ld hl, sp+$1a
    ld a, b
    add e
    ld e, a
    add d
    ld c, h
    ld [bc], a
    cpl
    inc bc
    ld hl, $f803
    ld a, b
    ld a, b
    ld b, h
    ld [bc], a
    ld b, b
    rst $38
    add d
    ld e, e
    ld c, h
    ld [bc], a
    ld c, l
    ld b, $4e
    ld hl, $2f03
    inc bc
    ld hl, sp-$76
    ld a, b
    add e
    ld e, a
    add b
    ld c, [hl]
    ld [bc], a
    add c
    ld c, d
    db $fc
    dec b
    ld a, a
    db $fd
    ld l, a
    inc bc
    cpl
    inc b
    ld hl, $f804
    sbc [hl]
    ld a, b
    cpl
    ld hl, sp-$7d
    ld a, b
    add e
    ld e, a
    add c
    ld c, h
    ld [bc], a
    ld hl, $2f03
    inc bc
    ld hl, sp-$52
    ld a, b
    add b
    ld e, a
    add e
    ld e, l
    db $fc
    dec b
    ld a, a
    db $fd
    rst $38
    add b
    ld e, a
    add d
    ld e, [hl]
    add c
    ld e, l
    ld e, h
    ld e, e
    ld e, d
    ld e, c
    rst $38
    ld e, a
    db $fc
    dec b
    ld a, [hl]
    db $fd
    ld d, e
    ld d, d
    ld d, c
    ld d, b
    rst $38
    ld l, l
    ld l, a
    ld a, c
    ld l, a
    ld [hl], b
    ld l, a
    ld a, c
    ld l, a
    ld [hl], e
    ld l, a
    ld a, c
    ld l, a
    db $76
    ld l, a
    ld a, c
    ld l, a
    ld a, l
    ld l, a
    ld a, c
    ld l, a
    add l
    ld l, a
    ld a, c
    ld l, a
    adc l
    ld l, a
    ld a, c
    ld l, a
    sub c
    ld l, a
    ld a, c
    ld l, a
    sbc c
    ld l, a
    ld a, c
    ld l, a
    sbc l
    ld l, a
    ld a, c
    ld l, a
    and a
    ld l, a
    ld a, c
    ld l, a
    xor e
    ld l, a
    ld a, c
    ld l, a
    or l
    ld l, a
    ld a, c
    ld l, a
    jp $d86f


    ld l, a
    jp hl


    ld l, a
    ret c

    ld l, a
    db $ed
    ld l, a
    ld a, c
    ld l, a
    rst $38
    ld l, a
    ld a, c
    ld l, a
    ld [$2a70], sp
    ld [hl], b
    ld a, [de]
    ld [hl], b
    ret c

    ld l, a
    ld e, $70
    ld a, [hl+]
    ld [hl], b
    ld l, $70
    ld a, c
    ld l, a
    inc a
    ld [hl], b
    ld a, c
    ld l, a
    ld d, b
    ld [hl], b
    ld a, c
    ld l, a
    ld d, h
    ld [hl], b
    ld a, [hl+]
    ld [hl], b
    ld h, b
    ld [hl], b
    ld a, [hl+]
    ld [hl], b
    ld l, c
    ld [hl], b
    ld a, [hl+]
    ld [hl], b
    ld [hl], h
    ld [hl], b
    ld a, [hl+]
    ld [hl], b
    jp nz, $ce77

    ld [hl], a
    push bc
    ld [hl], a
    adc $77
    ret z

    ld [hl], a
    adc $77
    bit 6, a
    adc $77
    jp nc, $ce77

    ld [hl], a
    jp c, $ce77

    ld [hl], a
    ld [c], a
    ld [hl], a
    adc $77
    and $77
    adc $77
    xor $77
    adc $77
    ld a, [c]
    ld [hl], a
    adc $77
    db $fc
    ld [hl], a
    adc $77
    nop
    ld a, b
    adc $77
    ld a, [bc]
    ld a, b
    adc $77
    jr jr_005_79ed

    dec l
    ld a, b
    ld a, $78
    dec l
    ld a, b
    ld b, d
    ld a, b
    adc $77
    ld d, h
    ld a, b
    adc $77
    ld e, l
    ld a, b
    ld a, a
    ld a, b
    ld l, a
    ld a, b
    dec l
    ld a, b
    ld [hl], e
    ld a, b
    ld a, a
    ld a, b
    add e
    ld a, b
    adc $77
    sub c
    ld a, b
    adc $77
    and l
    ld a, b
    adc $77
    xor c
    ld a, b
    ld a, a
    ld a, b
    or l
    ld a, b
    ld a, a
    ld a, b
    cp [hl]
    ld a, b
    ld a, a
    ld a, b
    ret


    ld a, b
    ld a, a
    ld a, b
    ld bc, $0302
    inc b
    dec b
    ld b, $05
    ld a, [bc]
    rrca
    inc d
    ld e, $50
    add hl, bc
    ld [de], a
    dec de
    inc h
    dec l
    ld [hl], $07
    ld c, $15
    inc e
    inc hl
    ld a, [hl+]
    ld b, $0c
    ld [de], a
    jr jr_005_79e6

    inc h
    ld [$1810], sp
    jr nz, jr_005_79f6

    jr nc, jr_005_79d1

    ld [bc], a

jr_005_79d1:
    inc bc
    inc b

jr_005_79d3:
    dec b
    ld b, $05
    ld a, [bc]
    rrca
    inc d
    ld e, $50
    add hl, bc
    ld [de], a
    dec de
    inc h
    dec l
    ld [hl], $07
    ld c, $15
    inc e
    inc hl

jr_005_79e6:
    ld a, [hl+]
    ld b, $0c
    ld [de], a
    jr jr_005_7a0a

    inc h

jr_005_79ed:
    ld [$1810], sp
    jr nz, jr_005_7a1a

    jr nc, jr_005_79d3

    ld d, h
    db $ec

jr_005_79f6:
    ld d, h
    ld sp, hl
    ld d, h
    ld b, $55
    inc de
    ld d, l
    ld a, [de]
    ld d, l
    daa
    ld d, l
    inc [hl]
    ld d, l
    ld a, $55
    ld c, e
    ld d, l
    ld e, b
    ld d, l
    ld h, l

jr_005_7a0a:
    ld d, l
    ld [hl], d
    ld d, l
    ld a, a
    ld d, l
    adc h
    ld d, l
    sbc c
    ld d, l
    and [hl]
    ld d, l
    or e
    ld d, l
    ret nz

    ld d, l
    ld a, [hl]

jr_005_7a1a:
    ld [hl], b
    add l
    ld [hl], b
    adc h
    ld [hl], b
    sub b
    ld [hl], b
    sub h
    ld [hl], b
    sbc b
    ld [hl], b
    sbc h
    ld [hl], b
    and e
    ld [hl], b
    xor d
    ld [hl], b
    xor [hl]
    ld [hl], b
    or d
    ld [hl], b
    or [hl]
    ld [hl], b
    cp d
    ld [hl], b
    pop bc
    ld [hl], b
    ret z

    ld [hl], b
    call z, $d070
    ld [hl], b
    call nc, $d870
    ld [hl], b
    call c, $e070
    ld [hl], b
    db $e4
    ld [hl], b
    add sp, $70
    rst $28
    ld [hl], b
    ld sp, hl
    ld [hl], b
    ld b, $71
    ld a, [bc]
    ld [hl], c
    ld c, $71
    ld [de], a
    ld [hl], c
    ld d, $71
    jr nz, jr_005_7ac8

    inc h
    ld [hl], c
    jr z, jr_005_7acc

    inc l
    ld [hl], c
    add hl, sp
    ld [hl], c
    ld b, b
    ld [hl], c
    inc bc
    ld a, [bc]
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld a, [bc]
    inc bc
    ld [bc], a
    ld [bc], a
    ld [$0302], sp
    inc bc
    ld [$0202], sp
    ld [$0802], sp
    ld [$0308], sp
    dec bc
    dec de
    ld [$0202], sp
    ld [$0203], sp
    ld [bc], a
    ld [$0a1b], sp
    ld [bc], a
    ld a, [bc]
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    inc sp
    jr z, jr_005_7aa1

    jr z, jr_005_7abc

    inc hl
    add hl, de
    nop
    nop
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    scf
    scf
    ld [hl-], a
    ld e, $05
    nop
    inc d
    nop
    add hl, bc
    ld [hl-], a
    ld [hl-], a

jr_005_7aa1:
    ld sp, $3205
    ld [hl-], a
    inc hl
    ld bc, $3131
    ld bc, $4523
    ld h, a
    adc c
    xor e
    call $edef
    res 5, c
    add a
    ld h, l
    ld b, e
    ld hl, $0000
    nop
    nop

jr_005_7abc:
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

jr_005_7ac8:
    rst $38
    rst $38
    rst $38
    rst $38

jr_005_7acc:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    inc b
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
    inc b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld [bc], a
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
    add b
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
    ld [bc], a
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
    ld [$0000], sp
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
    cp $ff
    rst $38
    rst $38
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
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
    ld bc, $0000
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
    inc b
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
