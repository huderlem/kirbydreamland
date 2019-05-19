SECTION "ROM Bank $002", ROMX[$4000], BANK[$2]

    dec b
    ld bc, $3601

Call_002_4004:
    scf
    ld c, e
    ld a, h
    ld b, d
    cp a
    ret nz

    ld a, [bc]
    ld e, a
    ld h, b
    ld a, a
    ld h, b
    cpl
    jr nc, jr_002_4041

    ld [hl], $29
    ccf
    ld de, $1f41
    db $10
    ldh [$28], a
    rra
    add hl, bc
    rrca
    rlca
    rlca
    inc bc
    inc bc
    dec c
    ld c, $17
    jr jr_002_4056

    jr nc, jr_002_4068

    jr nz, @+$81

    ld b, b
    cp a
    ret nz

    rst $38
    add b
    rst $30
    adc b
    or a
    ret z

    ld e, e
    ld l, h
    dec sp
    inc a

Call_002_4038:
    inc e
    rra
    inc hl
    ccf
    ld b, c
    ld a, a
    ld a, $3e
    rlca

jr_002_4041:
    rlca
    dec de
    inc e
    add e
    nop
    ld h, $15
    ld e, a
    ld h, b
    ld a, a
    ld b, b
    ld a, e
    ld b, [hl]
    ld a, a
    ld b, c
    ld e, a
    ld h, c
    ld l, a
    ld [hl], d
    rst $38
    db $fc

jr_002_4056:
    sub a
    ld hl, sp-$75
    db $fc
    adc a
    rst $38
    ld [hl], b
    ld [hl], b
    inc hl
    nop
    add l
    nop
    ld b, b
    add e
    nop
    ld c, b
    ld b, c
    rst $38

jr_002_4068:
    add b
    rrca
    rst $30
    adc b
    cp a
    ret z

    ld e, a
    ld l, b
    dec sp
    inc a
    dec e
    ld e, $13
    rra
    ld [$070f], sp
    rlca
    add l
    nop
    ld b, b
    inc bc
    ld a, a
    ld [hl], b
    or a
    ret z

    ld b, c
    rst $38
    add b
    ld de, $c0bf
    ld l, a
    ld [hl], b
    ccf
    jr nz, jr_002_40fc

    ld [hl], b
    ld d, a
    ld a, b
    ld c, l
    ld a, [hl]
    inc hl
    ccf
    ld de, $0e1f
    ld c, $a6
    nop
    add b
    dec d
    ld [de], a
    db $fd
    dec bc
    rst $38
    add hl, bc
    rst $38
    inc bc
    rst $38
    dec d
    rst $38
    add hl, bc
    db $fd
    dec bc
    cp $02
    ld a, [$ec06]
    inc e
    ldh a, [$f0]
    ld [$f822], sp
    ldh [rNR44], a
    inc e
    inc e
    cp d
    and [hl]
    cp $62
    sbc $32
    xor $1a
    cp $0a
    db $fc
    inc b
    db $fc
    ld d, h
    ld a, [$fe56]
    ld d, d
    cp $02
    cp $82
    or $4a
    cp $7a

jr_002_40d2:
    ld a, [$fc46]
    add h
    ld e, $1e
    ccf
    ld hl, $0083
    ld c, b
    and e
    nop
    or h
    add hl, bc
    ccf
    jr nz, @+$31

    jr nc, jr_002_40fd

    jr jr_002_4107

    db $10
    cpl
    jr nc, jr_002_412f

    ccf
    jr nz, jr_002_40fc

    cpl
    jr nc, jr_002_40d2

    ldh [$da], a
    ld a, [hl-]
    rst $30
    dec c
    rst $38
    dec b
    ld sp, hl
    rlca
    rst $38

jr_002_40fc:
    inc bc

jr_002_40fd:
    ld b, d
    cp $52

Call_002_4100:
    dec c
    ei
    rlca
    db $fd
    rlca
    ld sp, hl
    cpl

jr_002_4107:
    pop af
    sbc a
    and d
    cp $e4
    db $fc
    jr c, @+$3a

Jump_002_410f:
    xor c
    nop
    ld b, b
    ld bc, $56fa
    ld b, c
    rst $38

jr_002_4117:
    ld d, c
    ld b, c
    ei
    dec b
    dec bc
    db $fd
    daa
    or $0e
    db $ec
    inc e
    ld a, [c]
    cp $e1
    rst $38
    ld a, $3e
    and l
    nop
    jr nz, @+$03

    ld hl, sp+$08
    ld b, d

jr_002_412f:
    db $fc
    inc d
    and h
    nop
    or $00
    inc d
    and e
    nop
    xor $07
    call c, $e23c
    cp $42
    ld a, [hl]
    inc a
    inc a
    and e
    nop
    ld h, b
    ld bc, $30d0
    ld b, c
    ld hl, sp+$08
    ld [$54fc], sp
    cp $56
    db $fd
    ld d, a
    rst $38
    dec b
    rst $38
    add h
    ld bc, $0433
    add sp, $18
    ldh a, [$f0]
    ld d, b
    xor b
    nop
    dec e
    inc bc
    cp $0e
    rst $30
    xor l
    ld b, c
    rst $38
    and l
    ld b, $fd
    rlca
    cp $06
    db $f4
    ld c, h
    ld a, [$00a6]
    sub l
    inc bc
    jr c, jr_002_41af

    nop
    nop
    adc l
    nop
    and b
    ld bc, $06fa
    ld b, d
    db $fc
    inc b
    inc bc
    ld a, [$ee06]
    ld e, $85
    nop
    cp d
    rlca
    nop
    nop
    add b
    add b
    ldh [$60], a
    ret nc

    jr nc, jr_002_4117

    ld bc, $9344
    nop
    call z, $01ab
    ret nz

    add a
    nop
    ld b, h
    nop
    ld a, [hl]
    ld b, c
    ld b, c
    ld a, a
    ld a, [bc]
    ld b, c
    ld e, a
    ld h, d
    ccf
    inc h
    ccf
    jr c, jr_002_422b

    ld a, [hl]
    cp l

jr_002_41af:
    jp $ff4d


Call_002_41b2:
    nop
    ld bc, $302f
    and e
    ld bc, $0994
    adc e
    db $fc

Call_002_41bc:
    adc a
    cp $91
    rst $38
    sub d
    cp $6c
    ld l, h
    inc sp
    nop
    add hl, bc
    ld bc, $0601
    rlca
    dec sp
    inc a
    ld a, a
    ld b, h
    ei
    add h
    ld b, d
    rst $38
    add b
    add e
    nop
    ld a, [bc]
    ld b, e
    rst $38
    add b
    ld bc, $c0bf
    add e
    nop
    add sp, $09
    cpl
    jr nc, jr_002_421f

    inc a
    daa
    ccf
    db $10
    rra
    rrca
    rrca
    cpl
    nop
    inc bc
    cpl
    jr nc, jr_002_4210

    db $10
    and h
    ld bc, $0056
    ld a, [hl]
    ld b, c
    add c
    rst $38
    ld bc, $7e7e
    cpl
    nop

Jump_002_41ff:
    and e
    nop
    ld a, [bc]
    inc bc
    db $ec
    inc e
    ret nc

    jr nc, jr_002_424d

    ldh [rNR41], a
    inc bc
    ld h, b
    and b
    ret nz

    ret nz

    dec hl

jr_002_4210:
    nop
    and e
    ld bc, $8940
    nop
    ldh a, [$0b]
    ld l, a
    ld [hl], d
    rst $28
    or c
    rst $30
    sbc c
    cp e

jr_002_421f:
    call Call_002_477e
    ld e, a
    ld h, b
    add l
    ld [bc], a
    add b
    ld bc, $080f
    add l

jr_002_422b:
    nop
    ldh a, [$09]
    cpl

jr_002_422f:
    jr nc, jr_002_428d

    ld h, e
    ld d, e
    ld l, a
    ld c, h
    ld a, h
    ld [hl], b
    ld [hl], b
    jr z, jr_002_423a

jr_002_423a:
    adc d
    ld [bc], a
    dec b
    ld bc, $c3bd
    sub c

Jump_002_4241:
    ld [bc], a
    adc [hl]
    inc bc
    nop
    nop
    db $fc
    inc b
    and e
    ld [bc], a
    add d
    dec b
    ret nc

jr_002_424d:
    jr nc, jr_002_422f

    ld h, b
    add b
    add b
    scf
    nop
    add a
    nop
    and b
    inc bc
    cp $0a
    rst $38
    add hl, bc
    and e
    nop
    adc h
    inc bc
    jp c, $fc36

    inc c
    ld b, h
    db $fc
    inc b
    dec bc
    cp $06
    db $fd
    dec bc
    db $fd
    inc bc
    ei
    rlca
    db $fc
    db $fc
    db $10
    ldh a, [$d1]
    inc bc
    ld b, l
    dec c
    ld l, a
    ld [hl], b
    sbc a
    ldh a, [$97]
    ld hl, sp+$4b

Call_002_427f:
    ld a, h
    daa
    ld a, $11
    rra
    rrca
    rrca
    inc sp
    nop
    add h
    ld bc, $0a40
    sbc b

jr_002_428d:
    db $f4
    ld c, h
    ld a, [$fe46]
    ld c, $75
    db $db
    rst $28
    ld sp, $ff42
    ld de, $df01
    ld hl, $02a5
    ld h, b
    adc c
    inc bc
    ld b, b
    inc bc
    rst $38
    rlca
    db $fd
    rlca
    ld b, c
    rst $38
    ld d, l
    rlca
    db $fd
    ld d, a
    rst $30
    ld c, $6b
    sbc h
    rst $38
    ldh a, [rOBP0]
    rst $38
    nop
    rlca
    ccf
    ret nz

    rst $28
    ldh a, [rNR31]

Jump_002_42bd:
    inc e
    ld b, $07
    xor l
    inc bc
    ld a, [hl+]
    rrca
    ret nz

    ret nz

    ldh a, [$30]
    ld hl, sp+$48
    db $fc
    inc h
    ld a, [$fc26]
    inc b
    ld a, b
    ret z

    ld hl, sp+$28
    ld b, e
    ldh a, [rNR10]
    inc de
    ld hl, sp+$18
    db $fc
    inc h
    ld a, d
    add $01
    ld bc, $6362
    sub d
    di
    adc a
    rst $38
    sbc a
    ld hl, sp-$51
    ldh a, [$5f]
    ld h, b
    add a
    nop
    ld a, [hl+]
    add hl, bc
    cp a
    call nz, Call_002_427f
    ld e, a
    ld h, d
    ld l, $33
    ld e, $1e
    add e
    ld bc, $0162
    cp $0e
    add e
    ld bc, $0304
    rst $38
    dec b
    ei
    rlca
    add e
    nop
    or h
    inc bc
    db $fd
    rlca
    push af
    rrca
    and e
    nop
    ld d, [hl]
    inc bc
    ld a, [c]
    cp $0c
    inc c
    or e
    inc bc
    inc [hl]
    ld bc, $607f
    ld b, c
    cp a
    ret nz

    rlca
    ld d, a
    ld l, b
    ccf
    jr c, jr_002_4374

    ld a, [hl]
    ccf
    ccf
    add e
    nop
    ld h, b
    ldh [$39], a
    rra
    jr jr_002_4371

    jr nz, jr_002_4373

    ld [hl+], a
    ld a, a
    ld b, c
    ld a, a
    ld c, b
    ld a, a
    ld b, h
    rst $38
    ret nz

    rst $38
    pop bc
    rst $38
    and d
    xor a
    ret nc

    ld e, a
    ld h, c
    ld [hl], $3b
    inc c
    rrca
    inc bc
    inc bc
    jr nc, jr_002_434d

jr_002_434d:
    nop
    ld bc, $8f13
    ret z

    scf
    ld a, $0f
    scf
    ld a, b
    dec a
    ld e, $13
    inc c
    ld b, b
    cp a
    dec a
    ld a, [hl]
    inc hl
    inc e
    ld b, $0f
    add d
    ld e, a
    ld bc, $0007
    ld bc, $0287
    cp [hl]
    ld bc, $0605
    ld b, c
    dec bc

jr_002_4371:
    inc c
    ld b, c

jr_002_4373:
    rla

jr_002_4374:
    jr jr_002_437f

    scf
    jr c, jr_002_43c8

    ld a, b
    sbc a
    ldh [$60], a
    ld a, a
    dec e

jr_002_437f:
    ld e, $a5
    ld [bc], a
    or [hl]
    ldh [$29], a
    ld a, [hl+]
    ld a, $05
    ld a, e
    ld e, a
    ld h, c
    ccf
    ld b, b
    ld e, a
    ld h, d
    dec sp
    ld h, h
    rra
    db $10
    ld b, a
    ld e, b
    inc de
    inc a
    ld e, a
    ld h, b
    xor a
    ret nc

    db $fd
    add [hl]
    ld a, a
    add c
    ld a, $41
    ld e, a
    ld h, c
    ld a, [hl+]
    ld a, $e6
    and $df
    add hl, sp
    ei
    dec c
    rst $30
    dec c
    ld a, [$4206]
    cp $a2
    ld de, $06fa
    cp $0e
    pop af
    ld e, a
    pop af
    rra
    ld [c], a
    ld a, $e2
    cp $24
    inc a
    jr jr_002_43db

    add b
    add b
    ld b, c
    ld b, b
    ret nz

jr_002_43c8:
    xor c
    ld [bc], a
    call nz, $fe03
    ld b, $fd
    rlca
    ld b, d
    rst $38
    dec b
    add e
    ld bc, $0976
    ldh [$e0], a
    inc a
    inc a

jr_002_43db:
    ld e, d
    ld h, [hl]
    ld a, [hl]
    ld b, d
    cp l
    jp $ff43


    sub l
    ld b, c
    rst $38
    add c
    dec bc
    rst $38
    adc c
    cp l
    set 7, a
    jp Jump_002_667e


    ld e, d
    ld a, [hl]
    inc a
    inc a
    dec l
    nop
    add hl, de
    ldh a, [$f0]
    db $fc
    inc c
    ld_long a, $ff06
    inc bc
    rst $38
    ld d, e
    ei
    ld d, a
    cp $06
    ld sp, hl
    cpl
    cp $fe
    ldh a, [$f0]
    add sp, -$28
    db $f4
    inc l
    db $ec
    inc d
    and h
    inc b
    inc l
    inc b
    daa
    ld sp, hl
    ld c, a
    ld sp, hl
    adc a
    ld b, c
    ld sp, hl
    rrca
    dec b
    or $0e
    add sp, -$08
    db $10
    ldh a, [$8f]
    inc bc
    ld l, h
    inc h
    jr jr_002_442a

jr_002_442a:
    nop
    call z, $ac05
    inc c
    nop
    ld [hl], b
    ld [hl], b
    call z, Call_002_7afc
    add [hl]
    cp $82
    cp l
    ld b, e
    rst $38
    ld bc, $02ad
    ld e, b
    ld bc, $fc04
    add e
    ld bc, $05be
    ld e, $1e
    ld hl, $5e3f
    ld h, c
    ld b, c
    rst $18
    ldh [rTIMA], a
    ld [hl], a

jr_002_4451:
    ld a, h
    ld c, a
    ld [hl], b
    rst $18
    ldh [$83], a
    ld [bc], a
    ld h, b
    dec bc
    cp a
    call nz, $c1be
    sbc a
    ldh [$65], a
    ld a, [hl]
    inc a
    ccf
    rlca
    rlca
    push bc
    ld bc, $0161
    ld a, a
    ld b, e
    ld b, c
    rst $38
    add e
    inc bc
    rst $38
    jp Jump_002_4f7f


    ld b, d
    ld a, a
    ld c, d
    inc de
    rst $38
    jp z, $88ff

    rst $38
    add h
    rst $38
    rst $38
    ld a, a
    ld a, a
    ldh [$80], a
    ld hl, sp+$60
    cp $78
    ld a, a
    ld a, $7f
    ccf
    ld b, c
    ccf
    rra
    ld b, c
    rra
    rrca
    ld b, c
    ccf
    rra

jr_002_4495:
    ld [$3f7f], sp
    ld a, a
    ld a, $fe
    ld a, b
    ld hl, sp+$60
    ldh [$84], a
    inc bc
    dec hl
    dec b
    ld [hl], c
    ld [hl], c
    ld [hl], a
    ld c, [hl]
    ld a, a
    ld b, b
    ld b, c
    ccf
    jr nz, jr_002_4451

    ld bc, $a366
    inc bc
    ld e, a
    inc b
    ld b, b
    ld [hl], a
    ld c, h
    ld [hl], e
    ld [hl], e
    add h
    ld [bc], a
    ret nz

    ld b, $00
    rrca
    inc bc
    rra
    rrca
    inc sp
    rra
    ld b, c
    ld l, l
    inc sp
    nop
    di
    ld b, d
    ld a, a
    rst $38
    nop
    ld a, a
    ld b, c
    ld a, a
    ccf
    add e
    ld b, $2c
    ldh [rNR44], a
    rrca
    inc bc
    inc bc
    nop
    add hl, de
    add hl, de
    ld a, $27
    ld a, a
    ld h, c
    cp $83
    ld a, a
    ld b, d
    ccf
    ld hl, $2f3e
    ccf
    jr c, jr_002_4509

    dec h
    dec de
    dec d
    rra
    db $10
    cpl
    jr c, jr_002_4549

    ld l, [hl]
    xor c
    reti


    ret nc

    or b
    ld h, b
    ld h, b
    add a
    ld [bc], a
    cp [hl]
    inc de
    inc c
    rrca
    dec d
    ld a, [de]
    inc l
    inc sp
    ld d, h
    ld l, a
    db $e3
    cp a
    db $ed
    cp a

jr_002_4509:
    or $9f
    ld a, l
    ld c, a
    ccf
    inc hl
    rra
    jr jr_002_4495

    dec b
    cp $e0
    dec hl
    dec de
    nop
    cpl
    dec de
    rst $38
    rlca
    cp a
    ld a, [hl]
    rst $30
    rra
    ld h, c
    ccf
    call z, $de73
    ld l, a
    rst $08
    ld a, l
    call $cc7f
    ld a, a
    ld l, h
    ccf
    ld h, b
    ccf
    jr nc, jr_002_4551

    ld e, $0f
    rrca
    ld bc, $7e7e
    ld e, d
    ld h, [hl]
    inc a
    inc a
    db $76
    ld l, [hl]
    and c
    rst $18
    rst $38
    rst $38
    ld b, d
    rst $38
    add c
    ld bc, $ffff
    ld b, c

jr_002_4549:
    and c
    rst $18
    ld bc, $7e42
    ld b, c
    and c
    rst $18

jr_002_4551:
    ld bc, $ffff
    dec l
    nop
    inc bc
    cp $fe
    rst $38
    ld b, c
    ld b, c
    rst $38
    ld c, c
    dec b
    rst $38
    ld b, c
    rst $38
    ld c, a
    rst $38
    rst $08
    inc hl
    db $fc
    ld bc, $0101
    ld b, c
    inc bc
    ld [bc], a
    inc bc
    rlca
    inc b
    ld a, a
    ld a, h
    ld b, c
    rst $38
    add b
    ld bc, $407f
    adc d
    ld b, $4c
    ld [$7e41], sp
    ld b, [hl]
    ld a, b
    ld a, b
    ld [hl], b
    ld [hl], b
    ldh a, [$90]
    ld b, d
    ldh a, [rNR10]
    ld [bc], a
    add sp, $18
    cp $a3
    ld [bc], a
    ld d, a
    ld [bc], a
    inc bc
    db $fc
    inc c
    ld b, d
    ldh a, [rNR10]
    inc de
    ldh [rNR41], a
    ldh [$a0], a
    ld h, b
    ld h, b
    or e
    inc bc
    rst $38
    or h
    db $fc
    ret c

    sbc $ec
    rst $28
    or $f7
    ld a, [$fcfe]
    and a
    ld b, $6e
    inc b
    or $fc
    call z, $b8f8
    and e
    ld b, $7b
    and [hl]
    inc b
    add c
    inc de
    cp $e2
    cp $12
    rst $38
    add hl, bc
    cp a
    ld c, c
    rst $38
    adc c
    rst $38
    add hl, bc
    cp $12
    cp $e2
    db $fc
    inc b
    ld hl, sp+$18
    adc e
    inc bc
    ld l, [hl]
    inc de
    jp Jump_002_77c3


    push af
    cp [hl]
    jp z, $c47c

    or $ce
    rst $38
    add l
    ld [hl], a
    adc l
    rst $28
    add hl, de
    cp [hl]
    ld [hl], d
    db $fc
    call nz, $0789
    sbc b
    rlca
    rlca
    rlca
    ld [$100f], sp
    rra
    inc h
    ccf
    push bc
    ld b, $4d
    ld bc, $7f52
    call nz, $e900
    ld b, $7f
    ld b, h
    ld a, a
    sbc a
    rst $38
    ldh [$e0], a
    add e
    inc b
    call nz, $0741
    inc b
    ld de, $1417
    ccf
    inc l
    ccf
    cpl
    inc a
    cpl

jr_002_4613:
    inc l
    ccf
    scf
    ccf
    dec de
    inc e
    rrca
    rrca
    ld [bc], a
    inc bc
    and e
    ld bc, $0762
    rrca
    rrca
    rst $38
    ld a, a
    ret nz

    rst $38
    cp [hl]
    pop bc
    ld b, c
    cp l
    jp nz, $8307

    db $fc
    sbc a
    ldh [$af], a
    ret nc

    or a
    ret z

    ld b, c
    xor a
    ret nc

    add hl, bc
    sbc [hl]
    pop hl
    sbc c
    and $87
    ld hl, sp-$40
    rst $38
    rst $38
    ld a, a
    cpl
    nop
    ld [bc], a
    jr @+$1a

    ccf
    add e
    ld b, $83
    ld b, $82
    ld a, [hl]
    ld b, d
    ccf
    ld hl, $2f3f
    xor e
    inc b
    ld e, h
    inc bc
    ldh a, [$f0]
    call z, Call_002_41bc
    cp [hl]
    jp nz, $7905

    ld b, a
    ld [hl], c
    ld c, a
    ld sp, $873f
    ld [bc], a
    ld l, [hl]
    inc bc
    rst $38
    rst $38
    cp l
    jp $0685


    xor $03
    jp Jump_002_7eff


    ld a, [hl]
    scf
    nop
    rlca
    jr jr_002_46b7

    ld l, [hl]
    ld a, [hl]
    db $76
    rst $08
    xor a
    rst $18
    add e
    ld b, $e9
    inc b
    ld a, [hl]
    rst $38
    ld a, [hl]
    ld a, [hl]
    jr jr_002_4613

    dec b
    ld e, a
    add hl, bc
    pop bc
    pop bc
    ld a, [c]
    or e
    ld l, e
    ld e, d
    ld e, a
    ld h, a
    ccf
    cpl
    ld [hl+], a
    rra
    db $10
    add hl, de
    ld a, a
    ld [hl], d
    cp a
    jp nc, Jump_002_797f

    rra
    rra
    rla
    rra
    ccf
    cpl
    ld sp, $0131
    ld bc, $06c5
    cp a
    inc bc
    inc a
    ccf
    ld a, [hl]
    ld b, e
    ld b, c
    ld a, a
    ld d, c

jr_002_46b7:
    ld bc, $91ff
    ld b, c
    rst $38
    add c
    dec c
    cp [hl]
    jp Jump_002_7f7c


    ld h, b
    ld a, a
    ldh a, [$9f]
    ld hl, sp-$71
    ld a, a
    ld b, a
    jr c, jr_002_4704

    add l
    ld [$05be], sp
    ld a, $3f
    ld a, l
    ld b, e
    ld a, a
    ld l, c
    ld b, c
    rst $38
    xor b
    rrca
    rst $38
    add b
    rst $38
    add c
    ld a, a
    ld b, e
    ld a, $3f
    ld hl, $123f
    rra
    rrca
    inc c
    rlca
    rlca
    cp a
    ld [$0b00], sp
    ld [hl], a
    daa
    ld a, b
    ld e, a
    jr nz, @+$41

    ld a, b
    ld a, a
    ld a, h
    ld b, a
    cp [hl]
    di
    ld b, c

Call_002_46fb:
    cp $9b
    dec b
    cp [hl]
    di
    ld a, h
    ld h, a
    jr c, @+$41

jr_002_4704:
    add a
    ld [$83d6], sp
    ld bc, $015e
    rst $30
    and a
    sub e
    add hl, bc
    ld [hl+], a
    inc e
    inc hl
    ccf
    dec d
    ld e, $0d
    ld c, $07
    rlca
    ld d, a
    ld d, a
    inc a
    ccf
    ld l, $3b
    ld e, a
    ld h, l
    ld a, a
    ld l, l
    ei
    db $dd
    rst $38
    pop bc
    cp [hl]
    db $e3
    cp h
    rst $38
    ld h, b
    ld a, a
    jr nz, @-$74

    add hl, bc
    dec [hl]
    and e
    ld b, $a6
    dec b
    ld [$0ef8], sp
    cp $11
    rst $38
    and l
    ld [bc], a
    ld c, l
    inc bc
    ld [bc], a
    cp $0e
    cp $83
    add hl, bc
    sub b
    rlca
    rla
    ld sp, hl

jr_002_4749:
    ccf
    pop hl
    rst $38
    pop af
    ld c, $0e
    rst $00
    rlca

jr_002_4751:
    sbc l
    and e
    rlca
    adc $00
    add d
    ld b, c
    cp $86
    ld a, [de]
    cp $4e
    cp $32
    cp $04
    db $fc
    db $ec
    db $fc
    add sp, $38
    ret nc

    jr nc, jr_002_4749

    ldh [$60], a
    ld h, b
    rst $10
    or a
    ld hl, sp-$61
    ldh [$bf], a
    ld b, b
    ld a, a
    ld h, e
    ld a, a
    ld b, c
    or a
    call c, $23e0
    or a
    ret z

    add b

Call_002_477e:
    rst $38

Call_002_477f:
    ld c, b
    ld a, a
    ld b, b
    ld a, a
    jr nc, @+$41

    rra
    rra
    ld a, [bc]
    dec c
    rlca
    rlca
    ld c, $0e
    db $dd
    db $d3
    cpl
    pop af
    ccf
    pop hl
    ld e, a
    pop hl
    ld a, [hl]
    jp nz, $ce76

    ccf
    ld sp, hl
    rra
    pop af
    ld c, $fe
    jp $cd00


    rlca
    ld e, $f2
    cp $e2
    call c, $38e4
    jr c, jr_002_4751

    add hl, bc
    and d
    sub e
    add hl, bc
    ret z

    inc bc
    dec b
    ld b, $03
    inc bc
    and l
    ld b, $a4
    add hl, de
    ld [$1cf8], sp
    db $fc
    ld a, [hl+]
    or $5e
    ld [c], a
    ld a, l
    jp $e13f


    ccf
    pop af
    dec a
    db $eb
    ld e, $f6
    ld e, $fe
    ld a, [$5ce6]
    db $e4
    cp b
    cp b
    and e
    dec b
    ld l, h
    ld b, c
    dec c
    ld c, $05
    rlca
    ld b, $03
    inc bc
    ld b, $07
    ld b, c
    dec c
    ld c, $02
    ld c, $3f
    ccf
    ld b, c
    ccf
    cpl
    rla
    ccf
    ld a, a
    ld a, a
    or a
    rst $38
    db $db
    cp a
    call c, $04bc
    inc b
    ld a, [bc]
    ld c, $16
    ld a, [de]
    ld a, [hl+]
    ld a, $76
    ld a, a
    cp $ff
    ld a, h
    ld a, a
    rlca
    ld h, $0f
    add hl, bc
    inc bc
    rrca
    dec a
    ccf
    ld b, [hl]
    ld a, a
    or e
    rst $08
    xor a
    rst $18
    adc c
    dec b
    ld h, [hl]
    ld [$3cd8], sp
    ld a, h
    db $fc
    db $fc
    cp $e6
    sbc [hl]
    cp d
    ld b, c
    ld a, [hl]
    cp [hl]
    ld b, $7e
    cp h
    ld a, [hl]
    db $fc
    db $fc
    cp $fe
    add [hl]
    ld b, $fe
    add hl, bc
    ld bc, $e7e3
    sub a
    db $f4
    xor $9d
    db $fd
    rst $38
    adc a
    ld [hl+], a
    rst $38
    ld b, $f7
    rst $30
    db $e3
    rst $20
    ld bc, $7d03
    add [hl]
    ld a, [bc]
    ld a, c
    adc e
    ld a, [bc]
    add h
    inc hl
    cp $03
    and $9e
    cp b
    ld a, [hl]
    ld b, d
    cp h
    ld a, h
    add l
    ld a, [bc]
    sbc d
    rst $38
    dec b
    inc a
    inc a
    ld b, d
    ld b, d
    add c
    add c
    inc hl
    xor c

jr_002_485e:
    add hl, bc
    add d
    add d
    rst $00
    ld b, l
    rst $38
    rst $38
    nop
    nop
    ld a, h
    ld a, h
    ld b, c
    sbc [hl]
    add d
    ld b, c
    cp $82
    jp $1300


    inc b
    nop
    nop
    ld a, [hl]
    rst $38
    rst $38
    inc h
    add c
    inc bc
    rst $38
    add c
    ld a, [hl]
    rst $38
    inc hl
    nop
    ld [bc], a
    ld [hl+], a
    ld [hl+], a
    ld a, $22
    ld a, a
    dec c
    ld c, c
    ld c, c
    ld a, [hl+]
    ld a, a
    ld a, $3e
    ld [$0008], sp
    nop
    ld b, d
    ld b, d
    inc h
    inc h
    inc hl
    jr jr_002_485e

    nop
    ld b, l
    dec c
    nop
    nop
    ld [hl], b
    ld [hl], b
    ret


    ret


    ld h, d
    ld h, d
    ld [hl-], a
    ld [hl-], a
    sbc d
    sbc d
    ld [hl], c
    ld [hl], c
    dec h
    nop
    inc b
    add e
    add e
    ld b, e
    ld b, e
    nop
    jp z, $6800

    ld bc, $0000
    inc hl
    jr jr_002_48e2

    nop
    inc bc
    call z, $d9cc
    reti


    inc hl
    ldh a, [$03]
    ret c

    ret c

    call $25cd
    nop
    add hl, bc
    call c, $92dc
    sub d
    sbc h
    sbc h
    sub h
    sub h
    jp nc, $25d2

    nop
    add hl, bc
    push hl
    push hl
    sub l
    sub l
    ld [c], a
    ld [c], a
    sub d
    sub d
    ld [c], a
    ld [c], a

jr_002_48e2:
    inc hl
    nop
    ld bc, $3e3e
    add hl, hl
    ld h, e
    and e
    nop
    inc e
    inc bc
    inc c
    inc c
    inc e
    inc e
    daa
    inc c
    ld bc, $1e1e
    add l
    nop
    or b
    add hl, bc
    inc bc
    inc bc
    ld c, $0e
    jr jr_002_4918

    jr nc, jr_002_4932

    ld a, a
    ld a, a
    adc c
    nop
    ret nc

    rst $00
    nop
    rst $10
    add hl, bc
    ld c, $0e
    ld e, $1e
    ld [hl], $36
    ld h, [hl]
    ld h, [hl]
    ld a, a
    ld a, a
    inc hl
    ld b, $c3

jr_002_4918:
    nop
    pop hl
    inc hl
    ld h, b
    ld bc, $7e7e
    add a
    nop
    ld [$0083], a
    or d
    add e
    ld bc, $8706
    nop
    cp d
    rlca
    ld a, a
    ld a, a
    inc bc
    inc bc
    ld b, $06

jr_002_4932:
    inc c
    inc c
    dec h
    jr @-$77

    nop
    or b
    add l
    nop
    or d
    add a
    ld bc, $030e
    ld h, e
    ld h, e
    ccf
    ccf
    add l
    nop
    ld_long $ff2f, a
    ld b, a
    nop
    rst $38
    ld b, a
    rst $38
    nop
    cpl
    nop

jr_002_4951:
    rst $38
    dec h
    nop
    inc bc
    ld e, $1e
    dec l
    inc sp
    ld b, c
    ccf
    ld hl, $2d01
    inc sp
    rst $00
    nop
    rlca
    daa
    nop
    db $10
    rlca
    rlca
    inc e
    rra
    ld a, a
    ld a, a
    cp a
    ret nz

    rst $38
    add b
    cp a
    rst $38
    ld e, a
    ldh [$bf], a
    db $ec
    ei
    ld b, c
    xor h
    rst $38
    inc c
    add b
    cp a
    rst $38
    ld a, a
    ld e, a
    ld e, a
    ld l, [hl]
    ld l, $31
    rra
    rra
    rrca
    rrca
    add e
    nop
    ld [hl+], a
    ld a, [bc]
    cp l
    jp $80ff


    db $fd
    cp [hl]
    ld e, e
    rst $20
    cp [hl]
    pop af
    rst $28
    ld b, c
    or b
    rst $38
    ldh [$28], a
    add b
    rst $38
    db $fc
    ld a, a
    ld a, b
    ld e, a
    ld [hl], b

jr_002_49a2:
    inc l
    inc sp

jr_002_49a4:
    rra
    rra
    ldh [$e0], a
    jr jr_002_49a2

    call z, Call_002_76fc
    cp $fe
    ld a, $be
    sbc $5f
    xor $ed
    dec sp
    rst $18
    add hl, sp
    rst $28

jr_002_49b9:
    add hl, de
    db $ed
    dec de
    xor $9e
    ret z

    jr c, jr_002_4951

jr_002_49c1:
    ld [hl], b
    jr nz, jr_002_49a4

    inc hl
    ret nz

    dec e
    jr nc, jr_002_49b9

    ret z

    ld hl, sp-$0c
    db $fc
    ld a, h
    db $fc
    cp [hl]
    ld a, [hl]
    ld e, [hl]
    cp [hl]
    cp h
    sbc $7e
    sbc $df
    ld [hl], c
    cp a
    ld [hl], c
    sbc a
    ld [hl], c
    sbc [hl]
    ld a, [hl]
    jr nz, jr_002_49c1

    ld b, b
    ret nz

    add b
    add b
    daa
    nop
    add hl, bc
    ld a, a
    ld a, a
    inc sp
    ld a, a
    add hl, sp
    ccf
    ld e, $3f
    dec de
    rla
    ld b, c
    dec e
    inc de
    dec b
    ld e, $12
    ld a, [de]
    ld d, $0c
    inc c
    dec hl
    nop
    rrca
    ld a, a
    ld a, a
    add hl, sp
    ld a, a
    dec a
    ccf
    ld [hl], $2f
    ld a, e
    ld b, a
    cp $86
    db $ec
    sbc h
    ld hl, sp-$08
    add hl, hl
    nop
    dec c
    ld c, $0e
    ld [hl], a
    ld a, c
    rst $38
    pop hl
    cp $e2
    db $e4
    db $fc
    ld hl, sp-$08
    ldh [$e0], a
    adc c
    nop
    sbc [hl]
    dec h
    nop
    ldh [$29], a
    rrca
    rra
    ccf
    jr nc, jr_002_4a8b

    ld l, a
    ld e, a
    ld [hl], b
    ld a, a
    ld l, d
    ld a, a
    ld c, d
    ld a, a
    ld b, b
    ld a, a
    ld e, a
    ccf
    ld l, [hl]
    ld a, $31
    ccf
    ccf
    rra
    dec e
    rrca
    rrca
    rlca
    inc b
    dec bc
    inc c
    rrca
    rrca
    inc bc
    rlca
    rra
    rra
    cpl
    jr nc, @+$61

    ld a, a
    ld l, a
    ld [hl], b
    ld b, c
    ld a, a
    ld d, h
    add h
    ld bc, $1f0c
    inc l
    ld a, [hl]
    ld [hl], c
    rst $38
    cp a
    rst $30
    sbc e
    ld a, a
    ld c, a

jr_002_4a61:
    jr c, jr_002_4a9b

    nop

jr_002_4a64:
    nop
    ret nz

    ldh [rSVBK], a
    ldh a, [$f8]
    jr c, jr_002_4ac8

    db $fc
    cp $32
    sbc $32
    call c, $d03c
    or b
    or b
    ld a, b
    ld a, b
    inc h
    ld hl, sp+$12
    ldh a, [$f8]
    ret nc

    jr nc, @-$0e

    db $10
    ldh [$f0], a
    add $e6
    rst $38
    ld sp, hl
    ld a, a
    ld sp, hl
    sbc $3e

jr_002_4a8b:
    ld e, b
    ld hl, sp-$08
    ld b, c
    jr c, jr_002_4a61

    ld [bc], a
    jr nc, jr_002_4a64

    jr nc, @-$7b

    ld bc, $0750
    db $fc
    db $fc

jr_002_4a9b:
    cp $fa
    rst $38
    pop af
    dec de
    dec e
    rst $00
    nop
    ld hl, $0713
    rlca
    dec de
    inc e
    cpl
    jr nc, jr_002_4aeb

    jr z, jr_002_4b2d

    ld l, b
    rst $18
    xor b
    ld a, a
    ld h, b
    cpl
    jr nc, jr_002_4ac7

    rra
    rrca
    ld c, $a5
    nop
    ld a, d
    sub b
    ld bc, $0e86
    ld e, $0f
    ld c, $08
    rrca
    dec b

jr_002_4ac6:
    rlca

jr_002_4ac7:
    dec bc

jr_002_4ac8:
    rrca
    dec c
    dec bc
    rrca
    add hl, bc
    ld b, $06
    rst $00
    nop
    and l
    ld bc, $e060
    add e
    ld bc, $075a
    ldh a, [rNR10]
    ret nc

    jr nc, jr_002_4ac6

    jr @-$0a

    inc c
    ld b, d
    ld a, [$e006]
    inc hl
    db $e4
    inc e
    ld hl, sp-$08
    ld l, [hl]

jr_002_4aeb:
    ld l, [hl]
    cp [hl]
    jp nc, $93fd

    rst $28
    pop af
    xor a
    ld [hl], c
    rst $38
    ld hl, $23fd
    sbc d

jr_002_4af9:
    ld h, [hl]
    cp l
    ld b, a
    rst $38
    add hl, bc
    push af
    dec bc
    cp $02
    ld a, [$f406]

jr_002_4b05:
    inc c
    ret z

    jr c, jr_002_4af9

    ldh a, [$87]
    ld bc, $19c6
    cp $1e
    pop af
    rra
    rst $28
    ld de, $03fd
    ld a, [hl]
    adc d
    or $8e
    db $f4
    adc h
    ld a, b
    adc b
    ld hl, sp+$08
    add sp, $18
    ret nc

    jr nc, jr_002_4b05

    ldh [rIF], a
    rrca
    and e
    ld bc, $19d2
    cpl

jr_002_4b2d:
    jr nc, jr_002_4b9e

    ld a, e
    rst $28
    cp c
    rst $38
    sub l
    xor a
    ret nc

    ld e, a
    ld [hl], c
    scf
    add hl, sp
    inc de
    inc e
    rla
    jr jr_002_4b66

    jr c, jr_002_4bb2

    ld a, a
    ld e, a
    ld h, b
    ccf
    ccf
    and [hl]
    ld bc, $14c6
    ld a, [bc]
    rla
    ld e, $1e
    dec d
    rra
    db $10
    cpl
    jr nc, @+$61

    ld h, d
    xor a
    jp nc, $d0bf

    sub a
    ld hl, sp+$73
    ld a, h
    inc e
    rra
    and a
    ld [bc], a
    inc e
    dec c
    ld hl, sp+$08
    or [hl]

jr_002_4b66:
    adc $f9
    rst $08
    rst $30
    sbc c
    db $dd
    inc hl
    cp $02
    db $ec
    inc e
    add a
    ld bc, $01cc
    ld e, h
    db $fc
    add e
    ld bc, $87dc
    ld bc, $13c6
    add sp, $18
    add sp, -$68
    db $f4
    adc h
    ld a, [$fd06]
    inc de
    rst $30
    add hl, de
    rst $28
    add hl, de
    xor $1e
    add sp, $18
    ld [hl], b
    ldh a, [$83]
    nop
    ld a, h
    and e
    nop
    add b
    ld de, $1e11
    inc hl
    inc a
    ld b, e

jr_002_4b9e:
    ld a, h
    and c
    sbc $f0
    adc a
    and b
    rst $18
    add l
    cp $4a
    ld a, a
    dec sp
    dec a
    ld b, c
    rla
    jr jr_002_4bb4

    jr c, jr_002_4bf0

    cpl

jr_002_4bb2:
    jr nc, jr_002_4bd3

jr_002_4bb4:
    rra
    xor c
    ld [bc], a
    and b
    dec bc
    adc d
    db $76
    dec e
    db $e3
    adc c
    ld [hl], a
    pop bc
    ccf
    sub d
    ld a, [hl]
    db $ec
    db $fc
    ld b, c
    add sp, $18
    inc bc
    or b
    ldh a, [$90]
    ld [hl], b
    and a
    ld bc, $057e
    nop
    nop

jr_002_4bd3:
    inc bc
    inc bc
    inc e
    rra
    ld b, c
    ld hl, $0d3e
    ld b, b
    ld a, a
    sub b
    rst $28
    cp c
    add $93
    db $ec
    add e
    db $fc
    ld b, c
    ld a, [hl]
    jr c, @+$41

    inc hl
    rlca
    ld [de], a
    ld c, h
    ld e, a
    ld [hl-], a
    ccf

jr_002_4bf0:
    inc [hl]
    ld a, a
    ld c, h
    ld a, a
    reti


    cp $a3
    db $fc
    add a
    ld hl, sp-$22
    and c
    sub b
    rst $28
    add b
    ld b, c
    rst $38
    ld b, b
    rrca
    ld a, a
    jr nz, jr_002_4c85

    jr jr_002_4c27

    rlca
    rrca
    ldh [$f0], a
    sbc b
    ld a, h
    inc b
    db $fc
    jp nz, $823e

    ld b, c
    ld a, a
    add c
    nop
    ld a, a
    ld b, c
    ld bc, $41ff
    inc bc
    db $fd
    dec de
    ld b, $fa
    ld c, $f2
    inc e
    db $e4
    ld a, b
    sbc b

jr_002_4c27:
    ldh [$e0], a
    jr c, jr_002_4c63

    ld d, h
    ld l, h
    ld e, e
    ld [hl], a
    ld a, l
    db $76
    daa
    jr c, jr_002_4c69

    ccf
    ld e, a
    ld h, b
    db $eb
    rst $38
    cp a
    ret nz

    ld b, d
    rst $38
    adc c
    rlca
    cp a
    ret nz

    ld e, a
    ld l, h
    cpl
    jr nc, jr_002_4c85

    ccf
    add e
    inc bc
    ld b, b
    ld [$f6fa], sp
    cp e
    ld [hl], a
    or $0f
    db $e3
    rst $38
    dec sp
    ld [hl+], a

jr_002_4c55:
    rst $38
    ld bc, $07f9
    ld b, c
    db $fd
    inc bc
    add hl, bc
    cp $03
    ei
    ld b, $e7
    inc e

jr_002_4c63:
    sbc [hl]
    ld a, c
    db $fc
    db $e3
    and a
    ld [bc], a

jr_002_4c69:
    ld [c], a
    ldh [rNR51], a
    jr nc, @-$0e

    ret z

    jr c, jr_002_4c55

    inc e
    call nz, $9a3c
    ld h, [hl]
    ld [hl+], a
    sbc $41
    cp a
    adc l
    ld [hl], e
    sbc l
    ld h, e
    dec a
    jp $867a


    ld a, [$4f06]

jr_002_4c85:
    ld [hl], b
    sbc [hl]
    db $e3
    call c, $eee7
    rst $30
    ld [hl], a
    ld a, a
    inc sp
    ccf
    dec e
    dec e
    ld sp, $0100
    di
    inc c
    ld b, c
    rst $38
    nop
    rlca
    rst $20
    jr jr_002_4cee

    cp a
    sbc a
    rst $38
    and c
    pop hl
    adc c
    ld [bc], a
    sbc $a8
    nop
    and b
    ld c, $02
    db $fd
    inc bc
    db $ed
    inc de
    db $dd
    inc sp
    dec a
    di
    ld [$e2f6], a
    cp $dc
    call c, $002f
    rrca
    ld sp, hl
    ld b, $c7
    jr c, @+$01

    nop
    or $09
    ld [hl], l
    adc a
    or a
    rst $08
    rst $08
    rst $38
    cp e
    cp e
    cpl
    nop
    ld b, c
    cpl
    jr nc, jr_002_4cd9

    rra
    db $10
    rla
    add hl, de
    ld c, $09
    dec bc

jr_002_4cd9:
    inc c
    add e
    ld bc, $339c
    nop
    inc b
    ld [$3e1c], sp
    inc e
    inc e
    ld b, l
    ld a, $7f
    ld b, $3e
    inc e
    ld a, $3e
    inc e

jr_002_4cee:
    ld [$291c], sp
    nop
    ld b, $1c
    nop
    ld a, [hl+]
    inc e
    ld a, $1c
    ld e, h
    add h
    inc b
    ld c, c
    inc b
    ld e, l
    ld a, $3e
    inc e
    ld a, [hl+]
    and e
    ld bc, $2c3c
    nop
    rlca
    adc $00
    ld sp, hl
    ld b, $be
    pop bc
    rst $28
    ldh a, [$63]
    ei
    inc bc
    db $ed
    ld e, $ff
    nop
    adc l
    nop
    ld de, $7b08
    ld a, h
    rst $08
    ldh a, [rIE]
    add b
    cp a
    ret nz

    ld e, a
    ld b, d
    ld h, b
    ld a, a
    dec b
    ld h, b
    cp a
    ret nz

    ld h, a
    ld a, b
    dec de
    add a
    inc b
    ld e, e
    ld b, d
    ld [$0000], sp
    ld [$0841], sp
    inc d
    ld bc, $3608
    ld b, c
    inc e
    ld [hl+], a
    rlca
    ld a, $41
    ld a, a
    ld b, c
    inc e
    ld h, e
    ld [hl+], a
    ld a, $90
    inc b
    ld [hl], a
    ld [bc], a
    nop
    ld a, [hl]
    rst $38
    cpl
    nop
    add hl, bc
    ld [bc], a
    inc c
    ld [$1010], sp
    jr nz, jr_002_4d7a

    ld b, b
    nop
    ld b, b
    ld b, h
    ld b, b
    add b
    dec bc
    ld h, b
    add b
    jr nz, jr_002_4da5

    jr nc, jr_002_4da7

    jr jr_002_4d89

    inc c
    db $10
    ld [bc], a
    inc c
    and h
    inc bc
    add l
    ld [bc], a
    db $10
    ld de, $4120
    ld hl, $0b40
    ld h, e
    add b

jr_002_4d7a:
    ld a, a
    add b
    nop
    rst $38
    inc bc
    db $fc
    rrca
    ldh a, [rNR11]
    ldh [rSTAT], a
    ld hl, $84c0
    dec b

jr_002_4d89:
    inc l
    and h
    dec b
    ld hl, $f801
    inc b
    ld b, c
    db $fc
    ld [bc], a
    ld b, c
    cp $01
    and l
    dec b
    jr nc, @+$03

    ld hl, sp+$07
    ld b, c
    db $fc
    inc bc
    ld b, c

jr_002_4da0:
    cp $01
    ld b, c
    ld a, a
    add b

jr_002_4da5:
    ld b, c
    ccf

jr_002_4da7:
    ld b, b
    rlca
    rra
    jr nz, @+$11

    db $10
    inc bc
    inc c
    nop
    inc bc
    ld b, d
    ld a, a
    add b
    add hl, bc

jr_002_4db5:
    ccf
    ret nz

    rra
    ldh [rIF], a
    ldh a, [$03]
    db $fc
    nop
    rst $38
    ld b, c
    add b
    ld a, a
    ld b, c
    ld b, b
    ccf
    ld bc, $1f20
    push bc
    dec b
    dec h
    dec bc
    ld a, [$f205]
    dec c
    db $f4
    ld a, [bc]
    db $e4
    ld a, [de]
    adc b
    ld [hl], h
    jr nc, jr_002_4da0

    and e
    dec b
    ld l, h
    add h
    dec b
    sub b
    ld b, $0b
    db $e4
    dec de
    adc b
    ld [hl], a
    jr nc, jr_002_4db5

    or e
    dec b
    ld a, h
    dec b
    db $fd
    ld [bc], a
    ld [hl], d
    adc l
    inc a
    jp $0045


    rst $38
    inc b
    add c
    ld a, [hl]
    ld b, d
    inc a
    inc a
    xor c
    inc b
    rst $30
    add hl, bc
    inc h
    ld [bc], a
    ld b, h
    add h
    ld b, d
    ld bc, $0082

jr_002_4e05:
    add e
    ld [bc], a
    ld b, h
    add c
    nop
    ld b, c
    add c
    ld [bc], a
    ldh [rLCDC], a
    add c
    add h
    ld b, d
    ld e, h
    ld [hl+], a
    nop
    inc a
    db $10
    ld [$0870], sp
    add h
    ld a, b
    ld [$0384], sp
    inc b
    nop
    rlca
    ld [$7804], sp
    add h
    nop
    ld hl, sp+$00
    sub b
    ld bc, $1310
    ld [$0b04], sp
    ld [bc], a
    inc c
    inc b
    ld [$0810], sp
    nop
    nop
    inc b
    nop
    add hl, de
    nop
    inc sp
    ld [$106f], sp
    ld e, a
    jr nz, jr_002_4e05

    dec a
    and l
    ld b, d
    add b
    ld a, a
    sbc b
    ld h, [hl]
    sub c
    ld c, h
    or e
    ld [$906f], sp
    add l
    ld b, $2a
    ldh [$37], a
    ld [hl+], a
    nop
    call z, $9800
    ld b, h
    or b
    ld [$a851], sp
    ld l, d
    sub c
    and l
    ld d, d
    ld l, l
    sub d
    inc c
    or e
    adc c
    ld b, [hl]
    ld de, $0c8e
    di
    ld l, h
    sub e
    ld l, d
    sub l
    db $db
    inc h
    rst $38
    nop
    ld a, [bc]
    db $f4
    ld d, e
    adc h
    and e
    ld b, h
    dec d
    ld [bc], a
    sub c
    ld a, [bc]
    ld h, c
    add [hl]
    add e
    ld a, h
    rst $38
    nop
    db $ec
    inc bc
    ld hl, sp+$07
    or b
    dec bc
    push hl
    ld [de], a
    ld b, c
    call $1822
    sbc h
    ld b, e
    sbc b
    ld b, [hl]
    rst $28
    nop
    ei
    nop
    cp a
    nop
    sbc $20
    sbc a
    ld h, b
    ld de, $4bae
    inc [hl]
    reti


    inc h
    jp $a53c


    ld b, d
    ld b, d
    add h
    dec b
    db $eb
    dec c
    ld b, d
    add c
    and l
    ld b, d
    jp $323c


    adc l
    dec b
    ld a, [c]
    ld h, l
    sub d
    ld h, [hl]
    sub c
    ld b, c
    adc $21
    ld b, c
    sbc h
    ld b, d
    ldh [rNR50], a
    reti


    ld h, $b2
    ld c, l
    ld l, h
    sub d
    ld l, d
    sub h
    ret z

    inc [hl]
    or l
    ld c, b
    ld [bc], a
    ld sp, hl
    adc d
    dec b
    dec b
    jp nz, $0231

    ld [bc], a
    add hl, bc
    ld [bc], a
    dec b
    ld [bc], a
    add l
    inc h
    ld b, e
    add c
    ld a, [hl]
    sbc l
    ld h, d
    rst $38
    nop
    sbc a
    nop
    sub c
    ld b, d
    nop
    ldh [$0e], a
    nop
    pop af
    nop
    rst $38
    nop
    adc l
    ld [hl], b
    nop
    adc b
    dec b
    adc b
    rlca
    adc b
    adc a
    ld [hl], b
    ld b, c
    di
    nop
    ld [bc], a
    rst $38
    nop
    xor $84
    dec b
    add $02
    rst $10
    nop
    xor e
    add [hl]
    dec b
    add $09
    jr c, jr_002_4f10

jr_002_4f10:
    dec a
    ld b, b
    ld e, a
    add b
    sub l
    nop
    cp d
    nop
    add e
    dec b
    ld [hl], h
    jp $8105


    ld b, $7f
    add b
    ld [hl], $c9
    add c
    ld a, [hl]
    ld c, c
    ld b, c
    inc h
    add hl, bc
    ldh [rNR51], a
    inc h
    sla h
    ld d, d
    nop
    sbc [hl]
    nop
    sub e
    nop
    ld [de], a
    nop
    inc e
    nop
    sub l
    nop
    sub d
    nop
    ld h, d
    nop
    ld [hl-], a
    ret nz

    ld [hl], d
    add b
    dec a
    ret nz

    ld [hl], d
    add b
    inc a
    ret nz

    ld [hl], l
    add b
    ld [hl-], a
    ret nz

    ld h, d
    add b

jr_002_4f4e:
    ccf
    nop
    ld c, b
    ld b, c
    nop
    add b
    dec bc
    nop
    add h
    nop
    ld c, $80
    cp e
    ld b, h
    ld b, b
    ccf
    db $fc
    nop
    sub d
    and h
    rlca
    ld b, e
    rlca
    ld de, $3a00
    ld bc, $12ed
    ld [bc], a
    db $fc
    add [hl]
    inc b
    ld a, $07
    ldh a, [$f0]
    inc c
    inc e
    ld [bc], a
    ld b, $01
    ld [bc], a
    and [hl]
    nop
    sbc a
    xor c
    rlca
    ld h, [hl]

Jump_002_4f7f:
    rrca
    add b
    nop
    ret nz

    nop
    ldh [rP1], a
    ld hl, sp+$00
    ccf
    ret nz

    sbc a
    ld h, b
    ld b, b
    ccf
    db $10
    rrca
    and l
    rlca
    add b
    dec b
    ld e, $01
    db $fc
    inc bc
    pop af
    ld c, $a3
    rlca
    adc h
    ld [$021c], sp
    ld hl, sp+$06
    ldh [rNR32], a
    add b
    ld a, b
    jr nz, jr_002_4f4e

    inc b
    cpl
    dec b
    inc b
    ld [bc], a
    ld de, $040e
    inc bc
    add e
    rlca
    ld l, h
    ld b, c
    ld b, $01
    add hl, bc
    dec c
    ld [bc], a
    db $10
    ldh [$e0], a
    jr jr_002_4ff7

    inc b
    ld a, [bc]
    inc b
    ld b, e
    inc b
    ld [bc], a
    and l
    rlca
    ret nz

    ld [bc], a
    jr nc, jr_002_500b

    and b
    add h
    rlca
    ld a, e
    add e
    dec b
    ld [de], a
    ld b, $bf
    ld b, b
    ld c, a
    jr nc, jr_002_4ff8

    rra
    ld [$0186], sp

jr_002_4fdc:
    ld a, a
    rrca
    ld [bc], a
    ld bc, $1e21
    sbc [hl]
    ld h, b
    ld b, b
    add b
    sbc b
    ld h, b
    inc h
    jr jr_002_4ff5

    inc b
    inc b
    inc bc
    ld b, c
    inc [hl]
    ret nz

    inc bc
    add hl, sp
    ret nz

    add hl, de

jr_002_4ff5:
    ldh [rSTAT], a

jr_002_4ff7:
    ld e, b

jr_002_4ff8:
    and b
    ld b, c
    ld [hl], h
    add b
    ld b, c
    ld l, $01
    ld b, c
    ld a, [de]
    dec b
    ld [bc], a
    sbc b
    rlca
    sbc h
    ld b, c
    inc bc
    inc l
    ld [bc], a
    inc bc

jr_002_500b:
    jr nz, jr_002_506c

    ld b, c
    nop
    and b
    dec b
    db $10
    and b
    ld e, [hl]
    and b
    jr nz, @+$61

    push bc
    inc b
    db $f4
    ret z

    dec b
    sbc $06
    ret nz

    nop
    rst $38
    ld a, [hl]
    add c
    inc b
    ld hl, sp-$79
    rlca
    add $01
    inc c
    ld [bc], a
    add e
    ld b, $0e
    rrca
    ld [$2807], sp
    db $10
    ld b, b
    jr nz, jr_002_503a

    ld b, e
    jp $140c


jr_002_503a:
    adc b
    ld [$2890], sp
    sub b
    xor c
    ld [$0550], sp
    ld a, [bc]
    ld de, $0912
    ld [bc], a
    add hl, bc
    ld b, a
    jr z, jr_002_4fdc

    ld b, a
    ld [bc], a
    add hl, bc
    dec b
    jr nz, @+$21

    rra
    ldh [rIE], a
    nop
    adc e
    inc bc
    rst $08
    add hl, bc
    ld [bc], a
    ld bc, $0e11
    adc a
    ld [hl], b
    ld a, [hl]
    add b
    ldh a, [rP1]
    xor h
    inc b
    cpl
    ld [bc], a
    ld bc, $0205
    add e

jr_002_506c:
    dec b
    ld [hl+], a
    dec b
    inc e
    jr nz, @+$3a

    ld b, b
    ld [hl], b
    add b
    call nz, $8407
    adc h
    ld [$63ad], sp
    ld bc, $0b08
    inc b
    rlca
    ld [$100e], sp
    inc l
    db $10
    inc e
    ld b, c
    jr nz, jr_002_50e2

    nop
    jr nz, jr_002_50ce

    jr nc, jr_002_50cf

    ld bc, $40b0
    ld b, a
    ld h, b
    add b
    db $f4
    add hl, sp
    ld [$a390], sp
    ld [$a8c8], sp
    nop
    sbc a
    xor b
    ld [$13d7], sp
    ldh a, [$08]
    db $f4
    ld [$0478], sp
    ld a, [$7a04]
    inc b
    cp h
    ld [bc], a
    ld a, h
    ld [bc], a
    cp l
    ld [bc], a
    ld e, [hl]
    ld bc, $01be
    add e
    add hl, bc
    ld h, b
    add a
    add hl, bc
    ld h, b
    ld b, d
    ldh [rP1], a
    inc b
    ld h, b
    nop
    and b
    nop
    ld b, b
    add e
    add hl, bc
    ld [hl], a
    dec c
    nop
    ld e, a
    nop
    cp a

jr_002_50ce:
    nop

jr_002_50cf:
    ld e, a
    nop
    xor a
    nop
    ld d, l
    nop
    ld a, [bc]
    nop
    dec d
    ld a, [hl+]
    nop
    ld [bc], a
    ld d, l
    nop
    xor d
    add h
    dec b
    add $85

jr_002_50e2:
    ld b, $80
    ldh [rNR50], a
    cp $00
    rst $18
    nop
    rst $30
    nop
    ld a, a
    nop
    db $fd
    nop
    db $ec
    inc bc
    cp d
    ld b, $f0
    ld c, $64
    sbc h
    ld [$90f8], sp
    ldh a, [$a0]
    ldh [$c0], a
    ret nz

    ccf
    ld a, a
    ld b, b
    rst $38
    cp a
    ret nz

    or b
    ret nz

    ret nc

    add b
    xor d
    ld b, c
    ret nz

    cp a
    inc b
    ret nz

    rst $38
    rst $38
    nop
    rst $38
    add l
    inc b
    rst $28
    add l
    add hl, bc
    sbc d
    xor c
    add hl, bc
    ret nz

    nop
    xor c
    and h
    add hl, bc
    rl h
    db $ed
    inc bc
    db $fd
    inc bc
    cp l
    inc bc
    db $fd
    inc bc
    db $dd
    inc bc
    push af
    inc bc
    ld a, l
    inc bc
    db $fd
    inc bc
    xor a
    ret nz

    cp e
    ret nz

    cp a
    and h
    add hl, bc
    ei
    and l
    add hl, bc
    ldh a, [rNR12]
    rst $28
    nop
    cp e
    nop
    cp $01
    ld a, l
    add e
    add hl, sp
    rst $00
    add d
    rst $38
    add $ff
    ld a, l
    cp $00
    ld a, a
    ld b, b
    add h
    dec b
    ld [hl], c
    rlca
    ld l, a
    sub b
    ld b, $f9
    nop
    rst $38
    sub c
    ld l, [hl]
    add e
    ld [$8430], sp
    add hl, bc
    sbc h
    ld c, $10
    add $39
    nop
    rst $38
    db $10
    rst $28
    swap a
    sub d
    ld c, a
    sub e
    ld l, a
    add hl, bc
    sub a
    ld b, c
    sub l
    dec bc
    ld b, $45
    sbc e
    xor c
    ld d, a
    add h
    ei
    xor d
    ld b, c
    pop de
    xor b
    inc c
    pop de
    or [hl]
    ret


    pop bc
    or $4d
    ld a, [c]
    jp $f1fc


    cp $c3
    db $fc
    ld b, c
    cp l
    jp nz, $6401

    add e
    add l
    ld b, $94
    ldh [$31], a
    or e
    db $fc
    rst $20
    ld hl, sp-$14
    ldh a, [$81]
    ld hl, sp+$14
    db $eb
    ld [hl], d
    adc h
    db $f4
    ld [$08f0], sp
    jr @+$01

    ld [$0cff], sp
    rst $38
    call nz, $e4ff
    rst $38
    or $ff
    ld [hl-], a
    rst $38
    ld a, [de]
    rst $38
    inc e
    ei
    ld d, b
    cp a
    jr nc, @+$01

    inc sp
    rst $28
    scf
    rst $28
    ld l, a
    rst $38
    ld l, h
    rst $18
    ld a, d
    db $dd
    rst $38
    rst $38
    add e
    rlca
    ld a, [hl]
    ld [$0080], sp
    ld b, b
    add b
    rst $38
    rst $38
    rst $08
    ldh a, [$fc]
    ld [hl+], a
    rst $38
    xor l
    ld a, [bc]
    and d
    rst $00
    add hl, bc
    ret c

    dec b
    adc a
    ld [hl], b
    pop af
    ld c, $1e
    pop hl
    ld b, c
    rst $00
    jr c, @+$03

    ld e, $e1
    and e
    ld a, [bc]
    ret z

    ld bc, $837c
    ld [hl+], a
    rst $38
    rlca
    nop
    nop
    rst $38
    adc h
    ld hl, sp-$44
    ret z

    cp a
    ld b, c
    add a
    add h
    dec d
    adc a
    adc c
    adc [hl]
    cp b
    adc a
    or l
    adc [hl]
    cp l
    add [hl]
    or l
    adc [hl]
    adc b
    cp a
    cp e
    adc h
    call nz, $c7bf
    cp a
    add l
    cp $88
    cp a
    ld a, [bc]
    rst $18
    add [hl]
    inc b
    rst $28
    ld bc, $01fe
    ld b, c
    ld bc, $0581
    ld h, a
    rst $20
    inc b
    inc h
    dec b
    inc h
    ld b, d
    inc b
    dec h
    ld bc, $27c6
    ld b, c
    nop
    add c
    ld d, $7e
    rst $38
    adc $21
    add hl, sp
    ld de, $0919
    add hl, bc
    ld bc, $0121
    ld sp, $3921
    ld sp, $efef
    add sp, -$10
    ldh [$c0], a
    ret nz

    jp $a60a


    ld h, $00
    xor a
    dec bc
    ld d, b
    ld bc, $0f17
    and e
    ld bc, $0275
    rst $38
    ld a, a
    ld a, a
    ld h, $ff
    xor a
    dec bc
    ld [hl], b
    rst $38
    rlca
    inc bc
    inc bc
    rra
    inc e
    ccf
    ld [hl+], a
    ld a, l
    ld c, e
    ld b, c
    db $fd
    add e
    add hl, de
    jp $fffe


    cp h
    rst $38
    add b
    ld a, a
    ld c, a
    ld a, d
    ld c, a
    inc [hl]
    ccf
    ld hl, $223f
    ccf
    inc de
    rra
    inc c
    inc c
    ret nz

    ret nz

    ld hl, sp+$78
    db $fc
    add h
    ld b, c
    ld a, [$e006]
    ld sp, $26fa

jr_002_5294:
    add l
    rst $38
    db $fd
    ld a, e
    db $fd
    inc bc
    ld a, [$7af6]
    add $74
    call z, $b8c8
    jr nc, jr_002_5294

    ret nz

    ret nz

    nop
    nop
    ldh [$e0], a
    db $10
    ld [hl], b
    ld [$0438], sp
    inc a
    inc b
    inc e
    ld [bc], a
    ld e, $0e
    ld e, $13
    rra
    dec h
    ccf
    ld c, c
    ld a, a
    adc b
    rst $38
    ld [$080f], sp
    ld c, $04
    ld b, $23
    inc b
    dec h
    nop
    nop
    ld bc, $0162
    ld [$0303], sp
    ld b, $07
    dec b
    rlca
    ld d, h
    ld d, a
    db $fc
    ld b, c
    rst $38
    ld hl, sp+$04
    xor a
    ld hl, sp-$05
    ld [hl], b
    ld [hl], c
    inc hl
    ld bc, $0f17
    rrca
    jr nc, jr_002_5324

    ret nz

    db $fc
    add b
    ld hl, sp+$00
    ld hl, sp-$80
    ld hl, sp+$60
    ld hl, sp+$10
    ld hl, sp-$78
    db $fc
    ld b, h
    db $fc
    ld b, d
    cp $41
    pop bc
    inc hl
    add b
    inc hl
    nop
    ld bc, $0202
    inc hl
    rlca
    ld [de], a
    rrca
    dec c

Jump_002_5306:
    rra

Jump_002_5307:
    rra
    inc sp
    ccf
    jr nz, jr_002_5348

    jr nc, jr_002_5346

    jr z, jr_002_5348

    jr nz, jr_002_534a

    jr nc, jr_002_5344

    jr nz, jr_002_5346

jr_002_5316:
    nop
    inc h
    db $10
    ld d, $08
    ld [$8080], sp
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp+$78

jr_002_5324:
    db $fc
    db $fc
    sbc b
    sbc h
    ld d, $1e
    ld a, $3e
    ld e, [hl]
    ld a, [hl]
    ld [hl], $3e
    jr jr_002_5354

    inc e
    inc hl
    jr jr_002_5316

    inc [hl]
    jr nc, jr_002_5369

    jr nz, jr_002_535b

    rra
    rra
    add hl, sp
    scf
    ld a, c
    ld d, a
    ld sp, hl
    sub a
    db $fd

jr_002_5344:
    and a
    db $fd

jr_002_5346:
    xor a
    db $fd

jr_002_5348:
    sbc a
    ld sp, hl

jr_002_534a:
    cp a
    ld sp, hl
    and a
    db $fd
    add a
    db $fd
    rst $28
    ld sp, hl
    rst $38
    ld a, c

jr_002_5354:
    ld [hl], a
    add hl, sp
    daa
    add hl, de
    rra
    rlca
    rlca

jr_002_535b:
    rrca
    rrca
    rra
    jr @+$40

    ld sp, $6f74
    ld a, d
    ld c, a
    ld a, c
    ld c, a
    ld [hl], a
    ld c, a

jr_002_5369:
    ld a, a
    ld a, a
    ld [hl], c
    ld b, c
    ld c, a
    ld [hl], d
    ld [$7c4f], sp
    ld h, a
    ld a, $31
    rra
    jr jr_002_5387

    inc c
    inc hl
    inc bc
    ldh [$39], a
    dec c
    ld c, $11
    rra
    ld a, $3f
    ld b, e
    ld a, h
    ld c, a
    ld [hl], b

jr_002_5387:
    rst $38
    rst $38
    sbc a
    ei
    adc a
    cp $f3
    db $ec
    ld e, a
    ld [hl], e
    ld c, a
    ld a, h
    daa
    jr c, jr_002_53a7

    rra
    ld c, $0f
    inc bc
    inc bc
    ret nz

    ret nz

    ldh a, [rSVBK]
    ld hl, sp-$38
    db $fc
    inc c
    or $1a
    and $7a

jr_002_53a7:
    rst $08
    pop af
    rst $38
    ld hl, $79df
    cp a
    rst $00
    cp $1a
    xor $32
    call c, $f864
    adc b
    and e
    ld bc, $0b1c
    inc sp
    inc sp
    dec l
    ld a, $d1
    rst $18
    xor [hl]
    xor $9f
    rst $38
    ld c, a
    ld [hl], b
    ld [hl+], a
    ccf
    ldh [$30], a
    dec sp
    ld a, a
    ld a, a
    cp a
    cp $9f
    db $ec
    ld c, a
    ld [hl], e
    ld a, a
    ld a, h
    add c
    rst $38
    ld c, [hl]
    ld a, [hl]
    ld [hl], b
    ld [hl], b
    call z, $decc
    ld d, d
    ld a, a
    ld h, c
    rst $38
    adc l
    ld a, [$e61a]
    ld a, [hl]
    rst $28
    pop af
    rst $38
    db $fd
    sbc $3e
    cp $62
    rst $38
    add c
    cp $1e
    rst $38
    ld a, l
    db $e3
    db $fd
    cp [hl]
    jp nz, Jump_002_7c7c

    daa
    nop
    rla
    rrca
    rrca
    scf
    jr c, jr_002_5483

    ld b, b
    cp a
    db $db
    or [hl]
    db $db
    rst $38
    sbc e
    rst $38
    add b
    rst $38
    sbc a
    cp a
    ret nz

    ld e, a
    ld h, b
    ld sp, $0e3f
    ld c, $27
    nop
    rlca
    add b
    add b
    ld h, b
    ldh [$f0], a
    db $10
    ld hl, sp+$08
    ld b, d
    db $f4
    inc c
    rlca
    ld a, [$fe06]
    ld [bc], a
    dec c
    di
    rst $38
    rst $38
    add l
    ld bc, $01a6
    ld e, a
    ld h, b
    adc d
    ld bc, $0aac
    cp a
    or l
    rst $18
    ld [hl], l
    ld e, a
    ld d, c
    ld a, a
    ld l, $3f
    db $10
    rra
    jp $a901


    and e
    ld bc, $0120
    add sp, $18
    add a
    ld bc, $05ce
    db $fc
    inc b
    db $fc
    call nz, $04fc
    add e
    ld bc, $07d6
    adc $32
    ld [hl], $fa
    ret


    rst $08
    ld b, $06
    adc c
    ld [bc], a
    nop
    add hl, bc
    or $0e
    rst $30
    dec c
    rst $38
    dec b
    rst $38
    pop bc
    rst $38
    ld bc, $01a3
    cp b
    ld bc, $3ccc
    add e
    nop
    ld a, [hl-]
    add hl, hl
    nop
    ld bc, $0a0a
    ld b, c
    rra
    dec d
    add hl, bc
    rrca

jr_002_5483:
    dec bc
    inc d
    rra
    db $10
    rra
    jr nz, jr_002_54c9

    ld e, [hl]
    ld a, a
    ld b, d
    add b
    rst $38
    ld bc, $7f7f
    sub c
    ld [bc], a
    ld b, h
    inc b
    inc a
    ccf
    inc a
    dec hl
    ld e, h
    adc b
    ld [bc], a
    ld d, a
    ld d, $08
    ld [$545c], sp
    db $fc
    or h
    rst $38
    cp e
    db $f4
    rst $18
    and b
    rst $38
    ld e, h
    ld a, a
    ld a, $23
    ld a, $2b
    ld a, $23
    ld e, h
    ld a, a
    ld b, b
    adc b
    ld [bc], a
    ld d, a
    ld de, $0707
    dec c
    rrca
    dec e
    rra
    ld d, $1f
    ld a, $3f
    ld a, a
    ld a, a
    rst $38
    ld hl, sp+$3f

jr_002_54c9:
    jr nc, jr_002_5509

    ld hl, $3c41
    inc hl
    ld b, c
    ccf
    jr nz, @+$07

    rra
    db $10
    ccf
    ccf
    ld a, $3e
    and h
    nop
    cp $1a
    ld hl, sp-$78
    ld hl, sp-$02
    cp $ff
    cp a
    cp $9e
    ld hl, sp-$38
    ld a, b
    add sp, $7c
    db $fc
    ld c, h
    db $fc
    db $fc
    inc a
    call nz, $c27c
    ld a, [hl]
    jp nz, $84fe

    db $fc
    and e
    nop
    jp nz, $1011

    rra
    rst $38
    rst $38
    ld a, a
    ld a, a
    add hl, sp
    ld a, $17
    jr jr_002_5526

    rra
    add hl, sp

jr_002_5509:
    ccf
    inc h
    ccf
    ld b, e
    ld a, a
    ld b, c
    add e
    cp $1b
    adc a
    db $fc
    rst $00
    rst $38
    ld a, a
    ld a, a
    or $f6
    ld a, [$f6fe]
    cp $28
    ld hl, sp-$28
    ld hl, sp-$04
    ld a, h
    cp $ce

jr_002_5526:
    rst $38
    add a
    cp [hl]
    add $bc
    call nz, $c23e
    ld b, c
    ld a, a
    inc bc
    ld de, $077f
    rst $38
    rst $38
    add [hl]
    add [hl]
    rrca
    rrca
    rra
    inc e
    scf
    jr c, jr_002_55a6

    ld a, h
    ld c, a
    ld [hl], b
    ld e, a
    ld a, [hl]
    ld b, c
    ld e, a
    ld l, h
    ld b, e
    ld c, a
    ld [hl], b
    dec b
    daa
    add hl, sp
    inc de
    inc e
    dec c
    ld c, $a4
    nop
    jp nz, $1c05

    scf
    inc a
    ld h, a
    ld a, h
    ld d, a
    ld b, c
    ld a, d
    ld e, a
    db $10
    ld a, h
    ld c, a
    ld a, [hl]
    ld c, a
    ld [hl], d
    ld e, a
    ld [hl], b
    ld e, a
    ld a, e
    ld c, a
    ld a, a
    daa
    ccf
    inc de
    rra
    dec c
    ld c, $a9
    ld [bc], a
    inc a
    nop
    ld c, $41
    nop
    rra
    dec b
    inc bc
    rra
    inc bc
    ld e, $01
    ld c, $2e
    nop
    jr @+$81

    ld a, a
    cp a
    ret nz

    db $fd
    sbc a
    rst $30
    xor b
    ld a, [c]
    cp l
    rst $38
    add b
    rst $18
    cp a
    pop hl
    cp [hl]
    push hl
    cp d
    db $eb
    or h
    rst $20
    cp b
    db $eb
    or h
    ei
    ld h, d
    cp [hl]
    ret nc

    inc bc
    add e
    ld b, $00
    rlca
    rrca
    jr c, @+$41

jr_002_55a6:
    ld b, b
    ld a, a
    ld b, c
    ret nz

    cp a
    ld de, $615e
    ld hl, sp-$41
    ld [hl], a
    rst $38
    ld h, a
    ld h, a
    ret c

    cp a
    ldh [$bf], a
    and b
    rst $38
    ld c, [hl]
    pop af
    ld e, a
    ld h, b
    ld b, c
    ld e, a
    ld h, e
    dec bc
    ld e, [hl]
    ld h, c

jr_002_55c4:
    ld c, [hl]
    ld [hl], c
    and b
    rst $38
    ldh [$bf], a
    ld hl, sp-$61
    ld l, a
    ld a, a
    push bc
    ld [bc], a
    ld b, c
    ld [bc], a
    jr nc, jr_002_55c4

    ld [$02a4], sp
    ld d, c
    ld b, c
    add [hl]
    ld a, h
    ld e, $82
    ld a, [hl]
    ld h, c
    sbc a
    pop af
    rra
    ld [hl], d
    sbc a
    ld [hl], $ff
    rrca
    ld sp, hl
    ccf
    pop af
    cp $e2
    inc e

jr_002_55ed:
    inc e
    cp b
    ld hl, sp+$78
    call z, $c47c
    ld [de], a
    ld a, [$f21e]
    adc h
    ld a, h
    add d
    adc h
    inc bc
    db $ed
    add hl, bc
    dec sp
    pop af
    xor $e2
    inc e
    inc e
    rrca
    rrca
    jr nc, jr_002_5648

    ld b, c
    ld b, b
    ld a, a
    inc bc
    rst $00
    cp b
    rst $28
    sub b
    ld b, c
    rst $28
    call c, $ef12
    sub b
    rst $00
    cp b
    ld b, b
    ld a, a
    ret nz

    rst $38
    ldh [$bf], a
    cp b
    rst $18
    ld e, a
    ld h, a
    jr c, @+$3a

    rlca
    rlca
    jr jr_002_55ed

    ld [bc], a
    cp d
    inc bc
    ld c, [hl]
    ld [hl], c
    ld e, a
    ld h, b
    ld b, c
    rst $18
    and e
    ld [$a1de], sp
    ld c, [hl]
    ld [hl], c
    ld b, b
    ld a, a
    jr nz, jr_002_567b

    jr jr_002_567f

    rra
    rla
    dec c
    add hl, de
    ld c, $0e
    db $ec

jr_002_5645:
    db $ec
    ld e, $f2

jr_002_5648:
    ld a, [de]
    or $0b
    db $fd
    ld a, a
    adc c
    cp $b4
    inc b
    ld c, e
    dec e
    jr nc, jr_002_5645

    ld hl, sp-$78
    add sp, -$68
    inc l
    db $f4
    inc a
    call nz, $fc18
    ld a, h
    adc h
    ld a, [hl]
    adc [hl]
    ld a, d
    adc [hl]
    ld sp, $01ff
    rst $38
    jp nz, $ecfe

    inc a
    ldh a, [$30]
    and b
    ld h, b
    inc hl
    ret nz

    inc bc
    jr nc, @-$0e

    db $10
    ld hl, sp-$7b
    inc bc
    db $e4

jr_002_567b:
    nop
    ld [hl], h
    sub d
    inc b

jr_002_567f:
    adc l
    add a
    inc b
    jr nz, jr_002_5687

    cp b
    rst $00
    db $fc

jr_002_5687:
    add e
    ld b, c
    db $fc
    db $e3
    rrca
    db $fc
    add e
    cp b
    rst $00
    add b
    rst $38
    ld b, c
    ld a, a
    ld b, [hl]
    ld a, a
    add hl, sp
    ld a, $1b
    inc e
    rlca
    rrca
    add a
    inc b
    ld b, b
    ld bc, $7f40
    add l
    inc bc
    or h
    inc bc
    pop bc
    cp a
    ld b, d
    ld a, a
    ld b, c
    jr nz, jr_002_56ec

    inc bc
    ld e, $1f
    dec d
    dec de
    add e
    inc b
    ld e, h
    and a
    inc b
    ld h, b
    ld [bc], a
    ldh a, [$9f]
    ld h, b
    sub h
    inc b
    db $eb
    rrca
    ld bc, $0300
    nop
    rlca
    nop
    rrca
    nop
    rra
    nop
    ccf
    nop
    ld a, a
    nop
    rst $38
    nop
    adc $05
    ld l, $00
    nop
    cp a
    dec b
    jr nz, jr_002_56e5

    cp $01
    db $fc
    inc bc
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a
    ret nz

    ccf

jr_002_56e5:
    add b
    add h
    dec b
    inc l
    dec c
    add b
    ld a, a

jr_002_56ec:
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    inc bc
    cp $01
    cp a
    dec b
    ld h, b
    nop
    ld d, l
    ld [hl+], a
    rst $38
    inc b
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    and h
    dec b
    and e
    ld [bc], a
    nop
    rst $38
    xor d
    ld b, e
    rst $38
    nop
    ld [bc], a
    rst $38
    xor d
    ld d, l
    and e
    dec b
    cp b
    ld bc, $55aa

jr_002_5719:
    call $c105
    nop
    ld d, l
    and e
    dec b
    call $0001
    ld d, l
    add e
    dec b
    db $d3
    ld bc, $0000
    and e
    dec b
    reti


    dec bc
    db $ec
    nop
    xor d
    nop
    ld bc, $2310
    ld [$2010], sp
    dec bc
    ld b, b
    add e
    dec b
    jr nz, jr_002_5747

    inc bc
    ld b, b
    ld bc, $0b20
    ld [$1010], sp
    inc hl

jr_002_5747:
    nop

jr_002_5748:
    call nz, $e505
    cp a
    dec b
    ldh [rSC], a
    ld [$1000], sp
    ld b, e
    nop
    jr nc, jr_002_5719

    ld b, $23
    nop
    nop
    xor a
    ld b, $20
    inc hl
    nop
    inc b
    inc a
    nop
    ld a, [hl]
    nop
    add c
    ld h, $00
    rst $08
    ld b, $4e
    dec b
    rst $38
    rst $38
    add sp, -$10
    and b
    ret nz

    ret z

    ld bc, $05c8
    nop
    rst $38
    rst $38
    rra
    rrca
    rlca
    xor d
    ld b, $65
    add hl, bc
    ret nc

    ldh [$e0], a

jr_002_5782:
    ret nz

    and b
    ret nz

    ret nz

    add b
    ld b, b
    add b
    ld b, d
    add b
    nop
    ld bc, $070f
    ld b, c
    rlca
    inc bc
    ld [bc], a
    inc bc
    ld bc, $a603
    ld b, $89
    dec h
    rst $38
    add hl, bc
    cp $ff
    db $fd
    cp $fa
    db $fc
    db $f4
    ld hl, sp-$18
    ldh a, [$28]
    rst $38
    ld b, $7f
    ld a, a
    ccf
    ccf
    rra
    rra
    rrca
    ld b, a
    cp a
    ld a, a
    rlca
    db $fd
    cp $f9
    cp $fd
    cp $f9
    cp $87
    ld b, $d0
    ld b, a
    jr z, jr_002_5782

    ld b, a
    ld d, h
    dec bc
    ld b, a
    jr nz, jr_002_5748

    ld b, a
    ld a, [bc]
    dec b
    inc c
    nop
    nop
    ld b, $01

jr_002_57d0:
    add hl, sp
    ld b, $c4
    jr c, @+$29

    ret nz

    jr c, jr_002_57d8

jr_002_57d8:
    ldh [$a5], a
    inc bc
    ld h, e
    ld [$8e80], sp
    ld [hl], b
    ld de, $e20e
    ld bc, $001e
    add e
    inc bc
    ld e, a
    nop
    call z, $0041
    inc sp
    add l
    ld b, $5b
    dec b
    nop
    ld b, b
    nop
    rst $38
    nop
    ld [$0783], sp
    ld c, c
    jp z, Jump_002_5307

    ld a, [bc]
    inc b
    inc bc
    ld [de], a
    inc c
    ld [$2030], sp
    ld b, b
    add b
    ld b, b
    ld b, b
    add h
    ld b, $8a
    ld a, [bc]
    jr nz, jr_002_57d0

    ld b, b
    jr nc, jr_002_5823

    ld [$0804], sp
    ld [$0a06], sp
    ld b, d
    ld bc, $4100
    add b
    ld b, b
    ldh [rNR44], a
    add b
    and b

jr_002_5823:
    ld b, b
    jr c, jr_002_5866

    ld e, a
    jr nz, jr_002_5858

    db $10
    db $10
    rrca
    ld h, c
    nop
    stop
    ld de, $1200
    ld bc, $033c
    ld sp, hl
    ld b, $74
    adc b
    adc b
    ld [hl], b
    inc c
    ldh a, [$99]
    ld b, $e6
    jr jr_002_585b

    ldh [rLCDC], a
    add a
    ld b, $66
    inc bc
    ccf
    rrca
    ld b, b
    rrca
    ld b, e
    ld b, b
    ccf
    inc b
    ld b, b
    nop
    nop
    ld a, a
    ccf
    ld b, c
    ld [hl], b

jr_002_5858:
    ld c, a
    ld b, e
    ld b, b

jr_002_585b:
    ld a, a
    add e
    ld b, $5d
    ld b, h
    rst $38
    nop
    nop
    rst $38
    adc [hl]
    rlca

jr_002_5866:
    adc $85
    rlca
    db $db
    ld b, l
    dec h
    jp c, Jump_002_6002

    add b
    rst $38
    ld b, l
    rst $38
    jp c, $ff02

    sbc d
    ldh [$bf], a
    rlca
    ldh a, [rP1]
    nop
    and h
    dec b
    ccf
    nop
    rrca
    add h
    dec b
    dec h
    add e
    dec b
    inc l
    nop
    dec c
    add h
    dec b
    daa
    ld [bc], a
    ccf
    nop
    ld a, a
    add h
    dec b
    dec hl
    ret


    ld b, $70
    ld c, $0c
    nop
    ld e, $00
    ld a, [hl]
    nop
    rst $38
    nop
    add b

jr_002_58a1:
    nop
    pop bc
    nop
    di
    nop
    ei
    adc d
    rlca
    push de
    ld [bc], a
    add b
    nop
    ret nz

    adc d
    dec b
    ld b, l
    inc b
    nop
    rst $38
    nop
    nop
    rst $38
    ld [hl-], a
    nop
    nop
    rst $38
    add e
    rlca
    rst $08
    nop

jr_002_58bf:
    nop
    add a
    rlca
    reti


    ld [de], a
    jr z, jr_002_590a

    db $10
    jr z, jr_002_590d

    jr z, jr_002_58f3

    ld b, h
    nop
    ld b, h
    ld [$2844], sp
    ld b, h
    nop
    ld l, h
    ld b, h
    jr z, jr_002_58e7

    add e
    ld [$e0ab], sp
    dec h
    rst $38
    nop
    nop
    jr nc, jr_002_58a1

    ld d, b
    add b
    ld d, c
    add b
    ld d, a
    add b

jr_002_58e7:
    ld c, a
    sub b
    cpl
    ret nc

    ld l, $d0
    jr z, jr_002_58bf

    inc d
    dec bc
    ld [hl], h
    dec bc

jr_002_58f3:
    db $f4
    dec bc
    or $09
    ld [$8a01], a
    ld bc, $010a
    inc c
    inc bc
    rst $38
    rst $38
    and b
    and h
    ld b, $95
    rlca
    and b

Jump_002_5907:
    ret nz

    rst $38
    rst $38

jr_002_590a:
    or b
    ret nz

    rst $38

jr_002_590d:
    rst $38
    xor a
    ld [$03e0], sp
    nop
    inc a
    nop
    ld b, d
    ld b, c
    nop
    add c
    ld [bc], a
    inc b
    add c
    inc c
    call nz, $0509
    adc c
    dec b
    adc $c5
    dec b
    ldh [$e0], a
    daa
    rst $38
    ld a, a
    add b
    add b
    adc [hl]
    add b
    sbc a
    adc a
    cp b
    sbc b
    cp c
    sbc b
    cp e
    sbc b
    add a
    add c
    adc a
    add e
    sbc a
    add e
    cp b
    add b
    or e
    add e
    and e
    add e
    jp $bf80


    ret nz

    rst $38
    ld a, a
    rst $38
    cp $11
    rrca
    add hl, sp
    rlca
    di
    push bc
    ld b, c
    db $e3
    ld h, l
    rla
    pop hl
    ld h, a
    ret


    rst $00
    add hl, de
    rlca
    dec sp
    dec b
    ld [hl], e
    dec b
    db $e3
    dec b
    pop bc
    rlca
    adc c
    rlca
    pop af
    rrca
    rst $38
    cp $c0
    nop
    ret nz

    rra
    ld b, e
    rst $08
    db $10
    rlca
    rrca
    db $10
    rrca
    ldh a, [rTAC]
    ld [$f807], sp
    ld b, e
    rst $20
    jr jr_002_5996

    ldh [rNR23], a
    ldh [$1f], a
    jp nz, $6230

    add b
    adc h
    ld [hl], b
    ld d, c
    adc [hl]
    ld [c], a
    ld bc, $000e
    ld h, e
    add b
    ld b, b
    sbc [hl]
    ld de, $424e
    ld bc, $0619

jr_002_5996:
    push bc
    add h
    rlca
    daa
    dec b
    and $01
    nop
    ld a, a
    rst $38
    rst $38
    add $08
    ld d, d
    nop
    rst $38
    add e
    dec b
    sbc d
    ld bc, $0080
    adc c
    add hl, bc
    and b
    add e
    dec b
    ld l, d
    ld bc, $00ff
    add h
    dec b
    and h
    nop
    xor d
    and h
    add hl, bc
    inc e
    dec bc
    nop
    ei
    nop
    rst $18
    nop
    db $fd
    nop
    cp a
    nop
    rst $30
    nop
    cp $a3
    add hl, bc
    db $d3
    add e
    add hl, bc
    rlc b

jr_002_59d1:
    nop
    add a
    rlca
    db $db
    ld c, $00
    nop
    sbc [hl]
    nop
    jp nc, $ca00

    nop
    xor d
    nop
    and [hl]
    nop
    sub [hl]
    nop
    ld a, [c]
    ret z

    ld [$0687], sp
    sbc $de
    sub d
    jp nc, $f3bb

    and b
    ld b, d
    ret nz

    xor b
    ld [bc], a
    ret nz

    rst $38
    rst $38
    and l
    ld a, [bc]
    nop
    ld bc, $030d
    ld b, d
    ld e, c
    rlca
    ldh [$29], a
    rst $38
    rst $38
    ld a, [c]
    or b
    ld a, [c]
    ld [c], a
    db $e3
    and e
    db $fc
    cp h
    ret z

    adc b
    add sp, -$38
    ld sp, hl
    or c
    sbc $9e
    ld b, d
    or b
    db $10
    ld [c], a
    ld b, b
    and e
    ld b, b
    cp h
    ld b, b
    adc b
    jr nz, @-$36

    ld c, b
    or c
    ld b, b
    sbc [hl]
    ld e, a
    ld c, a
    ld e, l
    ld c, e
    rst $30
    rst $28
    ld a, a
    ccf
    ld b, c
    dec [hl]
    inc de
    ld de, $9fef
    ld a, a
    ld a, a
    db $10
    ld c, a
    ld [bc], a
    ld c, c
    ld [$40e7], sp
    ccf
    ld [hl+], a
    ld de, $1102
    jr nc, jr_002_59d1

    add a
    add hl, bc
    sbc [hl]
    add e
    ld b, $9f
    ld bc, $5500
    add h
    ld [$009b], sp
    rst $38
    ld b, c
    sbc d
    ldh [rP1], a
    add b
    ld [hl+], a
    rst $38
    ld bc, $75ca
    add e
    ld a, [bc]
    ld [hl], b
    ld bc, $ffff
    ld b, c
    or l
    dec bc
    and e
    ld a, [bc]
    db $76
    ld bc, $562b
    add e
    ld a, [bc]
    add b
    ld bc, $ffff
    ld b, c
    ld h, [hl]
    ld [hl+], a
    ld [bc], a
    rst $38
    rst $38
    jr jr_002_5ab8

    ld [$00fb], sp
    ld [$ff23], sp
    ld b, $e6
    ld [hl], d
    xor $72
    rst $38
    rst $38
    call nc, $e441
    db $dd
    nop
    db $e4
    inc hl
    rst $38
    ld b, c
    ld [hl], a
    ld l, $06
    rst $38
    rst $38
    ld a, e
    rla
    ei
    rla
    di
    add e
    ld [bc], a
    push hl
    inc c
    rst $38
    add b
    add b
    sbc a
    sbc a
    and c
    cp a
    cp l
    and d
    cp b
    and l
    or b
    xor d
    ld b, c
    and b
    or h
    inc c
    or b
    xor d
    or b
    and l
    or b
    and d
    cp [hl]
    and c
    cp a
    sbc a
    ret nz

    cp a

jr_002_5ab8:
    ld a, a
    and e
    ld a, [bc]
    cp a
    dec c
    inc bc
    ei
    db $fd
    add a
    db $fd
    cp a
    ld b, l
    rrca
    and l
    rlca
    ld d, l
    rlca
    dec l
    rlca
    call nz, $ef0a
    add hl, bc
    rlca
    ld b, l
    ld a, a
    add l
    ei
    db $fd
    ld bc, $feff
    rst $38
    add l
    ld a, [bc]
    ld l, h
    ld a, [bc]
    nop
    rst $38
    cp l
    ld b, d
    nop
    and l
    nop
    ld e, d
    nop
    inc h
    nop
    add $0b
    rrca
    ld bc, $817e
    add e
    rlca
    pop de
    ld bc, $ffff
    add a
    ld a, [bc]
    ret nc

    nop
    or b
    call nz, $d70a
    ld bc, $b4a0
    add a
    ld a, [bc]
    ldh a, [rP1]
    rlca
    add $0a
    rst $30
    inc h
    nop
    ret z

    add hl, bc
    dec de
    inc bc
    rst $38
    nop
    add sp, -$10
    and e
    ld b, $94
    nop
    nop
    rst $00
    ld bc, $afc9
    dec bc
    ld c, a
    ld [bc], a
    nop
    rla
    rrca
    jp $bd06


    nop
    rst $38
    ret z

    ld b, $ba
    xor a
    dec bc
    ld [hl], b
    rst $38
    dec h
    nop
    add hl, de
    inc bc
    inc bc
    dec b
    rlca
    ld [$0e0f], sp
    rrca
    rra
    inc de
    cpl
    dec a
    ccf
    dec h
    dec a
    daa
    cpl
    ccf
    ld a, [de]
    dec e
    rra
    db $10
    rla
    jr @+$11

    rrca
    inc hl
    nop
    dec b
    dec e
    dec e
    ccf
    inc hl
    ld e, a
    ld a, c
    ld b, c
    ld a, a
    ld c, l
    ld de, $795f
    ccf
    inc hl
    ld e, [hl]
    ld a, a
    cp l
    db $d3
    cp $a1
    ld a, a
    ld h, b
    ld a, [hl]
    ld b, c
    ld e, l
    ld h, e
    ld a, $3e
    add a
    nop
    nop
    inc de
    dec c
    rrca
    dec bc
    inc c
    rla
    jr jr_002_5b87

    rra
    rla
    rra
    dec e
    ld e, $1e
    rra
    inc de
    rra
    dec bc
    rrca
    dec b
    rlca
    jp $0700


    rra
    add hl, bc
    add hl, bc
    ld e, [hl]

jr_002_5b87:
    ld e, [hl]
    xor $f2
    ld a, a
    sub e
    cp d
    adc $7e
    add $ff
    inc hl
    db $fd
    inc de
    ld a, c
    adc a
    db $fd
    add a
    jp c, Jump_002_6de6

    or e
    or l
    ei
    sbc c
    rst $28
    add $fe
    ld a, b
    ld a, b
    dec h
    nop
    inc de
    rlca
    rlca
    ld [$170f], sp
    inc e
    rla
    ld a, [de]
    ld d, $19
    rla
    jr jr_002_5bbf

    inc c
    add hl, bc
    ld c, $06
    rlca
    ld bc, $3301
    nop
    ld a, [bc]
    ccf

jr_002_5bbf:
    ccf
    ld c, a
    ld [hl], b
    sbc a
    cp $bf
    cp $9f
    db $e3
    add b
    ld [hl+], a
    rst $38
    dec c
    pop bc
    cp $7f
    ld a, a
    rlca
    rlca
    jr @+$21

    inc hl
    inc a
    cpl
    jr nc, jr_002_5c07

    ccf
    ld b, c
    ld e, a
    ld a, [hl]
    rlca
    ld c, a
    ld a, [hl]
    ld c, a
    ld [hl], c
    ld c, a
    ld [hl], b
    ld b, a
    ld a, c
    ld b, d
    ld b, e
    ld a, a
    inc bc
    ld b, b
    ld a, a
    ccf
    ccf
    add l
    nop
    ret nz

    dec d
    jr nz, jr_002_5c33

    inc e

jr_002_5bf5:
    rra
    ld a, $3f
    ld e, [hl]
    ld a, a
    cp l
    sbc $e1
    cp $43
    ld a, h
    ld b, a
    ld a, b
    inc hl
    inc a
    ld sp, $713e

jr_002_5c07:
    ld a, [hl]
    add e
    nop
    call c, $00a4
    add [hl]
    inc b
    jr jr_002_5bf5

    inc e
    db $f4
    inc c
    ld c, b
    ld a, [c]
    ld c, $09
    db $e4
    inc e
    ld hl, sp-$08
    inc bc
    inc bc
    dec c
    ld c, $17
    jr jr_002_5c64

    cpl
    jr nc, jr_002_5c3b

    dec h
    ld a, $1f
    jr jr_002_5ca2

    ld a, d
    rst $38
    sub d
    rst $18
    or b
    ld [hl], e
    ld e, h
    rst $38

jr_002_5c33:
    adc a
    cp l
    bit 2, [hl]
    ld a, e
    scf
    ld a, [hl-]
    dec c

jr_002_5c3b:
    dec c
    dec l
    nop
    ldh [$39], a
    rrca
    rrca
    scf
    jr c, jr_002_5c94

    ld [hl], b
    ld e, a
    ld h, b
    inc a
    ccf
    ld [hl], a
    ld a, b
    rst $38
    sbc a
    or a
    jp c, Jump_002_6d6d

    ld h, b
    ld h, b
    pop af
    sub c
    ld [$bd9b], a
    adc $7b
    ld c, h
    ld l, h
    ld e, a
    ld a, e
    ld e, h
    ld [hl], a
    ld e, b
    or a
    db $dd

jr_002_5c64:
    rst $30
    sbc l
    rst $30
    sbc b
    cp [hl]
    rst $18
    ld l, l
    ld [hl], a
    ccf
    inc l
    ccf
    add hl, sp
    rlca
    rlca
    ld a, b
    ld a, b
    cp h
    call nz, $06fa
    cp $02
    ld b, c
    db $fd
    inc bc
    inc de
    sbc c
    ld [hl], a
    rst $28
    rra
    or $0e
    ei
    dec c
    rst $38
    add hl, bc
    ld e, $fa
    cp $f2
    or h
    call c, $dcbc
    ld h, b
    ld h, b
    add h
    nop

jr_002_5c94:
    inc b
    ldh [$2b], a
    ld b, $0b
    inc c
    ld a, e
    ld a, h
    cp h
    rst $08
    cp e
    call z, Call_002_7877

jr_002_5ca2:
    scf
    ld a, [hl-]
    ld d, a
    ld a, d
    ld [hl], a
    ld e, b
    ld a, e
    ld e, h
    ld e, a
    ld a, a
    ld e, a
    ld [hl], d
    dec sp
    ld [hl], $0d
    dec c
    ldh a, [$f0]
    ld a, b
    adc b
    cp $06
    db $fd
    dec bc
    rst $38
    add hl, bc
    sbc a
    ld a, c
    rst $28
    add hl, de
    rst $38
    add hl, bc
    xor $41
    sbc d
    or $0a
    ld a, [de]
    and [hl]
    ld a, d
    ld a, [c]
    cp $5c
    db $ec
    ld [hl], h
    db $ec
    sbc b
    sbc b
    adc c
    ld bc, $0146
    jr nc, jr_002_5d17

    add e
    ld bc, $0152
    adc [hl]
    pop af
    ld b, c
    sbc l
    ld [c], a
    dec b

jr_002_5ce2:
    ld l, e
    db $76
    ld e, a
    ld a, a
    ld c, [hl]
    ld [hl], c
    and e
    ld bc, $271c
    nop
    rlca
    ret nz

    ret nz

    jr nc, jr_002_5ce2

    jp z, $e53a

    rra
    ld b, c
    rst $30
    dec c
    dec b
    push af
    rrca
    rst $28
    rra
    ld a, [$a3fe]
    nop
    and $01
    ldh [$e0], a
    add e
    ld bc, $0be8
    ld b, a
    ld a, b
    ld e, a
    ld [hl], b
    ld [hl], $39
    dec de
    ld e, $3e
    ccf
    ld a, $23
    ld b, c

jr_002_5d17:
    ld a, a
    ld e, c
    dec c
    ld a, a
    ld b, c
    cp a
    db $e3
    cp a
    rst $18
    cp a
    ret nz

    ld e, h
    ld h, e
    ccf
    ccf
    add b
    add b
    and l
    ld bc, $1da2
    ld [hl], b
    sub b
    add sp, $18
    db $fc
    inc c
    ld [hl], h
    adc h
    db $76
    adc [hl]
    or a
    call $ffc5
    di
    rst $38
    ld c, l
    cp a
    add hl, bc
    rst $38
    db $76
    or $80
    add b
    rlca
    rlca
    ld a, h
    ld a, a
    or a
    rst $08
    ld b, c
    rst $30
    adc a
    db $10
    or $8f
    sbc a
    ld sp, hl
    ld a, a
    ld h, c
    ld e, a
    ld [hl], b
    ld e, a
    ld h, b
    ccf
    ld h, b
    cpl
    jr nc, jr_002_5d75

    rra
    rlca
    add h
    nop
    rra
    dec bc
    jp $35c3


    rst $30
    sbc c
    rst $38
    push hl
    rst $38
    add [hl]
    cp $f5
    rst $38
    ld b, c
    ld [hl], l
    sbc a
    dec bc
    rst $20
    rst $38

jr_002_5d75:
    db $e4
    inc e
    ret z

    inc a
    adc b
    ld a, b
    jr nc, @-$0e

    ret nz

    ldh [$85], a
    ld bc, $154a
    inc [hl]
    ccf
    ld e, e
    ld h, a
    rst $38
    add e
    cp e
    rst $00
    xor l
    sbc $df
    ldh a, [$7f]
    ld h, b
    ld e, a
    ld l, b
    ld e, a
    ld h, b
    ccf
    jr nz, jr_002_5dc6

    ld sp, $0287
    ld a, b
    ld bc, $8080
    and e
    nop
    inc c
    dec b
    db $fc
    call nz, Call_002_6cb4
    sbc h
    ld a, h
    ld b, d
    jp z, $093e

    jp nc, $943e

    ld a, h
    inc h
    db $fc
    ld a, h
    db $e4
    sbc b
    ret c

    add l
    nop
    add d
    ldh [$29], a
    jr jr_002_5ddd

    cpl
    jr nc, jr_002_5e40

    ld b, b
    ld e, a
    ld h, e
    ld d, [hl]
    ld l, a

jr_002_5dc6:
    ld l, a
    ld a, b
    rst $38
    ld a, [c]
    rst $38
    and b
    xor a
    ldh a, [rPCM34]
    ld a, b
    jr @+$21

    rrca
    rrca
    inc b
    rlca
    inc c
    dec bc
    rlca
    rlca
    ret nz

    ret nz

    or [hl]

jr_002_5ddd:
    or $fb
    db $fd
    adc e
    db $fd
    res 7, l
    push hl
    rra
    ld b, d
    ld [c], a

jr_002_5de8:
    ld e, $0a
    call nz, $843c
    ld a, h
    jr jr_002_5de8

    add sp, -$08
    db $10
    ldh a, [$e0]
    add h
    ld [bc], a
    sbc e
    and e
    ld [bc], a
    cp l
    dec d
    inc bc
    inc bc
    inc b
    rrca
    add hl, bc
    ld c, $13
    inc e
    inc d
    dec sp
    ld hl, $233e
    inc a
    inc h
    ld a, e
    ld b, c
    ld a, [hl]
    ld b, a
    ld a, b
    add sp, -$09
    and e
    ld [bc], a
    ld c, $1e
    nop
    nop
    ld e, $1e
    ld hl, $ffbf
    pop bc
    cpl
    pop af
    rra
    pop af
    rst $10
    add hl, sp
    ld l, a
    sbc c
    adc c
    ld a, a
    rst $08
    ccf
    dec h
    rst $18
    sub $2e
    ld h, [hl]
    sbc [hl]
    sub [hl]
    ld l, a
    rst $20
    rra
    rst $38
    and l
    inc bc
    dec e
    and h
    inc bc
    dec h
    inc bc
    db $10
    ldh a, [$fe]
    ld a, [hl]

jr_002_5e40:
    ld b, c
    rst $38
    add c
    ld a, [bc]
    pop hl
    ld a, a
    ld sp, $d9df
    cpl
    ld l, c
    sbc a
    sub l
    ld l, a
    and $8e
    inc bc
    ld e, l
    ld c, $d0
    jr nc, jr_002_5ec4

    sbc [hl]
    adc c
    ld a, a
    call $253f
    rst $18
    push de
    cpl
    ld h, a
    sbc a
    sub a
    add [hl]
    inc bc
    ld a, e
    dec e
    rra
    ccf
    ldh [rIE], a
    nop
    rst $38
    rra
    ldh [$f0], a
    rrca
    rrca
    ldh a, [rIE]
    nop
    ldh [$1f], a
    rra
    ldh [rIE], a
    ld bc, $3fff
    rst $38
    ld [hl], b
    rst $38
    ld h, a
    ei
    inc c
    rst $38
    ld hl, sp-$7d
    inc bc
    and b
    dec bc
    ei
    db $fc
    dec sp
    db $fc
    rst $38
    rst $20
    rst $30
    ld a, b
    rra
    rst $38
    rst $38
    ld bc, $0384
    or b
    inc b
    nop
    rst $38
    nop
    nop
    rst $38
    ld b, d
    rst $38
    nop
    inc c
    ei
    rst $00
    rst $30
    rst $28
    sbc l
    cp $eb
    sbc h
    sbc e
    db $fd
    ei
    rst $38
    sbc a
    inc h
    rst $38
    ld a, [bc]
    cp $ef
    rst $38
    add $ff
    ld [bc], a
    inc bc
    cp $fd
    inc bc
    db $fc
    ld b, c
    nop

jr_002_5ebe:
    rst $38
    ld b, $f8
    ccf
    db $fc
    cp a

jr_002_5ec4:
    ld a, a
    ld a, [hl]
    rst $38
    ld b, c
    rst $38
    cp $12
    cp $ff
    rst $38
    cp $6f
    sbc [hl]
    ld [hl], h
    rst $38
    push af
    cp $67
    db $fc
    ld [hl], a
    adc h
    ld a, e
    adc h
    ld l, a
    ldh a, [rIE]
    add [hl]
    inc bc
    rra
    ld [$e7e3], sp
    sub a
    db $f4
    xor $9d
    db $fd
    rst $38
    adc a
    jr z, @+$01

    inc bc
    rst $30
    rst $30
    db $e3
    db $e3
    inc hl
    ld bc, $0023
    inc b
    ld hl, sp-$08
    call c, Call_002_7e3c
    push bc
    inc bc
    ld a, [c]
    ld a, [bc]
    rst $38
    rst $20
    rst $18
    ei
    cp a
    ei
    ld a, a
    rst $38
    ld a, a
    cp d
    ld a, [hl]
    ld b, d
    cp d
    ld b, [hl]
    ld l, $00
    ld e, $1c
    inc d
    ld [hl+], a
    ld [hl+], a
    ld b, c
    nop
    ld b, c
    inc d
    ld b, c
    inc e
    ld h, e
    ld [$0055], sp
    dec d
    dec c
    ld d, b
    nop
    inc d
    ld [$1014], sp
    inc b
    ld [$0414], sp
    db $10
    ld [$1814], sp
    inc b
    add e
    inc b
    add b
    ld [bc], a
    nop
    inc d
    jr jr_002_5ebe

    inc b
    add l
    add e
    inc b
    add h
    cpl
    nop
    add e
    inc bc
    reti


    inc bc
    add a
    rra

jr_002_5f45:
    cp a
    ld a, a
    ld b, c
    ld a, a
    rst $38
    ldh [rNR44], a
    ccf
    ld a, a
    rlca
    rra
    ld b, h
    jr c, jr_002_5f7d

    ld [hl], b
    ld c, b
    jr nc, jr_002_5fb9

    ld d, b
    ld c, b
    jr nc, @+$1a

    ld h, b
    ld l, l
    jr nc, jr_002_5fc9

    ld d, h
    ld c, h
    jr nc, jr_002_5f77

    ld l, b
    ld e, b
    jr nz, jr_002_5f9b

    jr z, jr_002_5fbd

    jr z, jr_002_5f76

    jr nc, jr_002_5fdb

    jr nc, jr_002_5f88

    inc l
    add [hl]
    ld bc, $0348
    rra
    rra

jr_002_5f76:
    ccf

jr_002_5f77:
    ccf
    ld [hl+], a
    ld a, a
    and e
    inc b
    ld a, [bc]

jr_002_5f7d:
    ld bc, $ffbf
    ld b, e
    rst $38
    cp a
    inc hl
    rst $38
    dec h
    nop
    inc bc

jr_002_5f88:
    ld b, b
    add b
    ret nz

    ldh [rSTAT], a
    ldh [$f0], a
    ld b, $f0
    ld sp, hl
    pop af
    ld sp, hl
    rst $38
    ei
    ei
    ld h, $ff
    and h
    inc b

jr_002_5f9b:
    cp b
    ld a, [bc]
    inc bc
    di
    rrca
    rst $38
    inc e
    db $e4
    jr c, jr_002_5f45

    ld [hl], b
    or b
    ld h, b
    ld b, e
    ld h, b
    ret nz

    ld c, $b0
    ld h, b
    and b
    ld [hl], b
    db $e4
    jr c, @+$01

    inc e
    di
    rrca
    db $fc
    inc bc
    ret nz

jr_002_5fb9:
    rst $38
    ret nz

    ld b, c
    add b

jr_002_5fbd:
    nop
    ld b, $80
    inc bc
    add b
    rlca
    add e
    ld c, $87
    ld b, c
    dec c
    add [hl]

jr_002_5fc9:
    inc bc
    ld c, $87
    rlca
    add e
    add $05
    ld c, b
    ld bc, $c080
    add h
    inc bc
    call nc, $0023
    dec b
    inc a

jr_002_5fdb:
    nop
    rst $38
    inc a
    jp Jump_002_41ff


    inc a
    jp $c303


    rst $38
    rst $38
    inc a
    add $05
    ld l, b
    push bc
    dec b
    ld bc, $0002
    ld e, d
    and l
    ld b, d
    and h
    ld e, e
    ld bc, $ad52
    call nz, $ff04
    ld [bc], a
    ret nz

    adc d
    push af
    ld b, d

Jump_002_6000:
    sub h
    db $eb

Jump_002_6002:
    rrca
    adc d
    push af
    rst $38
    rst $38
    rra
    ld c, $11
    rra
    ld h, [hl]
    add hl, sp
    ld c, b
    ld [hl], b
    ret nc

    ld h, b
    ld d, b
    ldh [rSCX], a
    and b
    ret nz

    ld [de], a
    sub b
    ldh [$5a], a
    ldh [$cd], a
    ld [hl], d
    ld h, e
    ld a, [hl]
    ccf
    ccf
    ld a, [bc]
    rlca
    rst $38
    ld a, [hl]
    db $dd
    db $e3
    and d
    pop bc
    ld b, b
    xor [hl]
    nop
    sbc b
    ld e, $04
    nop
    ld a, [bc]
    inc b
    push af
    ld c, $0c
    rst $38
    ei
    rst $38
    inc bc
    rlca
    inc e
    rra
    daa
    jr c, jr_002_608f

    ld h, b
    ld b, b
    ld h, b
    ld h, e
    ret nz

    rst $28
    ret nz

    rst $38
    ret nz

    nop
    ldh [$e0], a
    inc e
    inc e
    rst $00
    nop
    rlca
    add hl, hl
    nop
    inc b
    ret nz

    ret nz

    jr nz, jr_002_6077

    db $10
    ld b, c
    db $10
    ld [$0841], sp
    inc b
    ld b, d
    inc b
    ld [bc], a
    ld b, d
    ld [bc], a
    ld bc, $3ff4
    dec b
    jr nz, jr_002_60aa

    ld b, $83
    ld b, e
    dec c
    add [hl]
    ld b, c
    ld b, $83
    xor a
    ld b, $60
    inc hl
    rst $38
    ld b, e

jr_002_6077:
    add d
    ld bc, $ff25
    inc bc
    db $fd
    inc bc
    ld e, c
    and a
    ld b, d
    and l
    ld e, e
    and e
    dec b
    sbc h
    ld [$7078], sp
    adc h
    db $fc
    ld h, d
    sbc [hl]
    dec bc
    add [hl]

jr_002_608f:
    adc d
    xor b
    dec b
    xor e
    ld b, c
    dec b
    inc bc
    dec c
    dec c
    inc bc
    ld a, [hl-]
    rlca
    and $1e
    ld hl, sp-$04
    ld l, b
    ldh a, [rIE]
    nop
    db $10
    rst $28
    ld b, e
    jr z, jr_002_60ac

    ld b, $24

jr_002_60aa:
    jr jr_002_60e4

jr_002_60ac:
    inc b
    add sp, -$21
    call nz, $bf41

jr_002_60b2:
    rst $00
    nop
    cp h
    ld b, c
    ld c, h
    ei
    ld b, c
    jr c, jr_002_60b2

    add e

jr_002_60bc:
    inc bc
    reti


    add l
    inc b
    ld e, $42
    rst $38
    nop
    and e
    dec b
    ldh [rTAC], a
    call nz, Call_002_723c
    ld c, $3a
    ld b, $fa
    rlca
    ld b, c
    rst $38

jr_002_60d2:
    inc bc

jr_002_60d3:
    inc c
    nop
    inc bc
    nop
    inc c
    nop
    db $10
    ld bc, $0720
    ld b, b
    rra
    add b
    ccf
    ld b, d
    add b
    ld a, a

jr_002_60e4:
    inc c
    add b
    dec a
    jp nz, Jump_002_42bd

    jr c, jr_002_6133

    jr c, jr_002_6132

    jr jr_002_6114

    nop
    jr jr_002_60bc

    dec b
    ret nc

    inc b
    ret nz

    ld b, b
    or b
    ld [hl], b
    ld c, a
    add e
    inc b

jr_002_60fd:
    ei
    adc b

jr_002_60ff:
    ld b, $e5
    ldh [rNR44], a
    xor d

Call_002_6104:
    ld d, l
    ld d, l
    xor d
    rst $38
    ld a, a
    add b
    ret nz

    sbc a
    sbc a
    cp a
    cp a
    or b
    cp a
    and a
    cp b
    xor a

jr_002_6114:
    or c
    xor a
    or d
    xor a
    or h
    xor a
    cp b
    cp a
    or b
    xor a
    or c
    xor [hl]
    or e
    cp a
    sbc a
    add b
    cp a
    rst $38
    ld a, a
    and e
    ld [bc], a
    cp a
    and e
    ld b, $0e
    rra
    jr jr_002_6150

    nop
    ld a, a

jr_002_6132:
    ld b, b

jr_002_6133:
    add b
    nop
    rst $38
    nop
    ldh a, [rNR10]
    pop hl
    jr nz, jr_002_60ff

    ld h, b
    add a
    ld h, b
    adc a
    ld h, b
    sbc [hl]
    ld b, b
    cp h
    nop
    ld hl, sp+$17
    ret z

    dec sp
    add h
    jr c, jr_002_60d3

    jr c, jr_002_60d2

    ld b, c
    or e

jr_002_6150:
    ld c, b
    ld b, c
    rst $00
    jr nc, jr_002_60fd

    ld [bc], a
    nop
    dec b
    nop
    inc e
    inc bc
    ldh [rNR32], a
    nop
    add a
    inc bc
    dec e
    cp b
    ld b, $07
    ld b, d
    ld b, b
    add b
    ld b, d
    jr nz, jr_002_61aa

    ld b, c
    db $10
    jr nz, jr_002_61af

    ld [$0310], sp
    inc b
    ld [$0403], sp
    rst $00
    rlca
    sbc c
    dec d
    ld [hl+], a
    pop bc
    ld b, d
    add c
    ld c, b
    add a
    ld [bc], a
    pop bc
    ld b, b
    add e
    ld [de], a
    pop hl
    ld b, d
    add c
    ld b, h
    add e
    nop
    ld e, $00
    ld h, c
    ld e, $40
    ld b, e
    ld a, a
    add b
    dec bc
    ld l, a
    sub b
    dec b
    ld a, [$0e01]
    nop
    ld bc, $00f8
    rst $38
    nop
    ld b, d
    cp $01
    ld b, c
    call c, $0822
    adc c
    db $76
    add c
    ld e, d

jr_002_61aa:
    ld bc, $0182
    ld [bc], a
    nop

jr_002_61af:
    adc d
    nop
    sbc c
    and e
    rlca
    jr z, jr_002_61b9

    inc c
    rrca
    push af

jr_002_61b9:
    ld a, [$0042]
    rst $38
    ld [bc], a
    xor d
    rst $38
    ld d, l
    add e
    ld [$8435], sp
    inc bc
    xor $1b
    inc bc

jr_002_61c9:
    ld bc, $f9ff
    rst $38
    db $fd
    ld b, a
    db $fd
    rst $30
    adc l
    rst $38
    dec c
    rst $30
    dec e
    rst $28
    dec [hl]
    rst $18
    ld h, l
    cp a
    push bc
    ld a, a
    add l
    rst $30
    dec c
    rst $38
    ld sp, hl

jr_002_61e2:
    inc bc
    rst $38
    and l
    rlca
    ld e, [hl]
    dec de
    jr nc, @+$0a

    jr @+$06

    jr c, @+$06

    nop
    cp $0e
    ld bc, $ff00
    ld c, $f1
    ld c, $e1
    inc c
    jp $8708


    nop
    rrca
    nop
    rra
    ld [bc], a
    dec a
    ld b, $79
    ret


    dec b
    add c
    add h
    ld b, $e0
    ret z

    inc b
    or b
    ld bc, $0055
    add $07
    inc a
    ld [bc], a
    rlca
    rlca
    jr c, jr_002_61e2

    ld [bc], a
    ld a, [bc]
    nop
    nop
    cp a
    rlca
    ret nz

    xor c
    rlca
    sub b
    nop
    jr nc, jr_002_61c9

    rlca
    sbc e
    dec b
    rst $30
    nop
    ld a, a
    nop
    db $fd
    nop
    and l
    ld [$02e0], sp
    ei
    nop
    rst $18
    inc hl
    nop
    add hl, bc
    add c
    nop
    ld b, d
    nop
    inc h
    add c
    inc h
    jp $e718


    ld b, c
    ld [$07c3], sp
    inc a
    add c
    ld h, [hl]
    nop
    jp $8118


    inc a
    ld b, c
    add c
    ld a, [hl]
    ld bc, $7e00
    ld b, l
    nop
    rst $38
    ld c, $00
    jp $003c


    jp $24c3


    sbc e
    ld b, h
    sbc l
    ld b, d
    dec a
    add d
    inc a
    add e
    ld b, h
    ld a, $81
    ld b, c
    ld a, [hl]
    add c
    rlca
    ld a, $c1
    cp h
    ld b, d
    call c, $c122
    inc a
    ld b, d
    rst $38
    ret nz

    add hl, bc
    rst $28
    ret nc

    rst $28
    reti


    db $dd
    rst $38
    rst $28
    rst $38
    ld h, a
    ld l, a
    xor a
    add hl, bc
    ld b, b
    inc bc
    nop
    ld a, [hl]
    inc h
    jp Jump_002_4241


    add c
    rlca
    inc h
    jp Jump_002_7e00


    ld [$2c66], sp
    ld b, d
    jp $1e08


    ld [$0400], sp
    nop
    ld [$1000], sp

jr_002_62a2:
    nop
    jr nz, jr_002_62a5

jr_002_62a5:
    and e
    ld [$001b], sp
    rst $38
    add l
    ld [$889a], sp
    add hl, bc
    db $10
    ld d, $ff
    cp $03
    dec c
    cp $33
    db $fc
    adc $f0
    add hl, sp
    ret nz

    rst $20
    nop
    rra
    nop
    jp hl


    rst $18
    add $bf

jr_002_62c4:
    call $f3be
    cp h
    add l
    add hl, bc
    sbc b
    ld [bc], a
    rlca
    db $10

jr_002_62ce:
    ld bc, $0162
    ld b, $0d
    ld c, $33
    inc a
    adc $f0
    jr c, @-$7a

    ld [bc], a
    sbc d
    ld b, c
    inc [hl]
    ret nz

    inc bc
    jr c, jr_002_62a2

    jr jr_002_62c4

    ld b, c
    ld e, b
    and b
    ld b, c
    ld [hl], h
    add b
    dec b
    ld bc, $23fe
    call c, $d42b
    ld b, c
    dec bc
    db $f4
    add hl, bc
    jr z, jr_002_62ce

    dec h
    jp c, $fb04

    ld a, a
    ld a, a
    rst $38

Jump_002_62fe:
    ret nz

    ld b, d
    ret nz

    add b
    ld [bc], a
    rst $38
    rst $38

Jump_002_6305:
    ld b, b
    ld [hl+], a
    ld a, a
    db $f4
    cpl
    rlca
    ldh a, [rSTAT]
    di
    ld [$8717], sp
    ld a, b
    scf
    adc b
    ld a, e
    inc b
    ld a, b
    rlca
    ld sp, hl
    inc b
    ld a, c
    add h
    inc bc
    ld hl, sp+$27
    sub b
    ld h, a
    db $10
    ld [hl], a
    ld [$0b74], sp
    ldh a, [$0c]
    ld b, c
    di
    ld [$ff42], sp
    nop
    dec c

jr_002_632f:
    ld a, l
    add e
    cp e
    rst $00
    rst $00
    rst $38
    cp $ff
    ld a, h
    rst $38
    ld h, d
    add c
    ld b, [hl]
    add c
    add e
    ld a, [bc]
    ld d, b
    add a
    ld a, [bc]
    ld d, b
    nop
    rst $38
    daa
    rst $28
    ld [bc], a
    rst $00
    rst $10

jr_002_634a:
    rst $00
    ld b, c
    rst $00
    rst $10
    ld de, $83d7
    cp e
    add e
    add e
    xor e
    and e
    add hl, bc
    ld c, l
    ld bc, $4509
    ld c, c
    dec b
    add hl, bc
    inc b
    nop
    rra
    add h
    add hl, bc
    ld a, d
    ld b, $40
    dec [hl]
    ld b, b
    rrca
    jr nc, jr_002_636b

jr_002_636b:
    rrca
    add e
    inc bc
    rst $10
    xor l
    add hl, bc
    sub d
    rlca
    add sp, -$21
    ld b, h
    rst $38
    or a
    ld a, a
    rst $08
    inc a
    add e
    ld a, [bc]
    sbc b
    inc bc
    rst $00
    jr nz, jr_002_634a

    jr nc, jr_002_632f

    add hl, bc
    or b
    add e
    dec b
    or $03
    ld e, [hl]
    ld bc, $013e
    ld b, c
    inc a
    inc bc
    inc bc
    ld a, h
    inc bc
    ld e, b
    rlca
    ld b, c
    ld e, d
    dec b
    cp a
    add hl, bc
    ret nc

    push bc
    ld [$029c], sp
    sbc c
    nop
    ld b, h
    adc d
    ld [$bbd0], sp
    rlca
    inc b
    ld b, e
    ld [$1710], sp
    nop
    jr c, jr_002_63b8

    ld d, h
    ld [$0893], sp
    db $10
    add hl, bc
    inc b
    ld c, c

jr_002_63b8:
    dec b
    add hl, bc
    ld b, l
    ld c, l
    ld bc, $09a3
    add e
    xor e
    cp e
    add e
    rst $10
    add e
    add h
    ld a, [bc]
    ld l, h
    ld b, c
    rst $00
    rst $28
    push bc
    ld a, [bc]
    ld h, l
    dec b
    rst $28
    rst $30
    rrca
    rst $18
    ccf
    cp a
    and l
    inc b
    add hl, bc
    and l
    inc b
    inc sp
    xor [hl]
    dec bc
    ld d, c
    dec b
    db $fc
    ld hl, sp-$40
    ldh [$80], a
    ret nz

    inc h
    add b
    add l
    nop
    xor c
    xor [hl]
    dec bc
    ld [hl], c
    rst $38
    dec bc
    ld bc, $4500
    nop
    ld b, h
    ld bc, $4104
    inc d
    ld b, c
    db $10
    ld b, l
    ld b, c
    nop
    ld d, l
    add hl, bc
    ld bc, $4054
    inc d
    ld b, h
    db $10
    inc b
    stop
    db $10
    ld b, c
    stop
    ldh [$3f], a
    nop
    nop
    inc bc
    inc bc
    ld b, $05
    rlca
    rlca
    rrca
    ld [$111f], sp
    ld e, $13
    ld a, $23
    ccf
    cpl
    ccf
    jr nz, @+$21

    ld [de], a
    rra
    db $10
    rrca
    add hl, bc
    ld b, $07
    inc bc
    ld [bc], a
    ld bc, $0001
    nop
    ld h, b
    ld h, b
    ret nc

    or b
    ldh a, [$f0]
    add sp, $18
    db $f4
    call z, $ec34
    cp d
    and $fa
    cp $fa
    ld b, $f4
    inc l
    db $f4
    inc c
    add sp, -$28
    jr nc, @-$0e

    ldh [rNR41], a
    ld b, b
    ret nz

    and e
    nop
    inc a
    jp $3f00


    inc de
    rlca
    ld b, $0f
    ld [$101f], sp
    ccf

Jump_002_645c:
    ld [hl-], a
    ld l, a
    ld e, b
    xor a
    ret c

    ld l, a
    ld e, b
    ccf
    ld [hl-], a
    rla
    jr @+$0b

    ld c, $c7
    nop
    ld h, a
    and e
    nop
    ld e, $13
    ldh a, [$30]
    cp $8e
    rst $38
    add l
    db $fd
    rst $20
    sbc [hl]
    or $dc
    db $f4
    sbc [hl]
    or $ff
    push hl
    push af
    adc a
    adc $be
    ret


    nop
    add a
    dec b
    rra
    rra
    cpl
    jr nc, jr_002_650c

    ld b, b
    inc h
    rst $38
    ld a, [bc]
    db $dd
    rst $38
    rst $20
    cp a
    ret nz

    ld a, a
    ret nc

    ld e, a
    ld h, b
    ld l, $31
    rst $00
    nop
    and l
    dec d
    nop
    nop
    ldh [$e0], a
    or b
    ld [hl], b
    add sp, $18
    ld a, h
    adc h
    db $f4
    call z, $8e76
    push af
    dec bc
    and [hl]
    ld e, [hl]
    call nz, $883c
    ld a, b
    add a
    nop
    sbc d
    dec b
    rrca
    rrca
    scf
    jr c, jr_002_653e

    ld a, a
    ld [hl+], a
    rst $38
    ld [$ffde], sp
    rst $20
    rst $18
    rst $20
    rst $38
    add b
    call Call_002_41b2
    ei
    or h
    add hl, de
    cp c
    sub $7c
    ld b, e
    ld e, a
    ld h, b
    inc sp
    inc a
    rrca
    rrca
    ldh a, [$f0]
    call z, Call_002_7a3c
    add [hl]
    cp a
    jp $e3dd


    rst $38
    and c
    ld a, a
    add c
    rst $38
    ld bc, $fd42
    inc bc
    rrca
    ld sp, hl
    rlca
    jp nc, $e22e

    ld e, $8c
    ld a, h
    ldh a, [$f0]
    ld [hl], b
    ld [hl], b
    ld e, h
    ld a, h
    ld b, e
    ld a, a
    ld b, c
    jr nz, jr_002_6540

    ld b, c
    ld c, c
    ld a, a
    dec b
    adc c
    rst $38
    ldh [$9f], a
    xor a
    rst $18
    ld b, c

jr_002_650c:
    adc a
    ld sp, hl
    db $10
    ld b, [hl]
    ld a, a
    jr nz, jr_002_6552

    jr jr_002_6534

    rrca
    rrca
    rlca
    rlca
    ld a, l
    ld a, a
    add c
    rst $38
    ld b, $fe
    ld c, $a4
    ld bc, $0125
    inc b
    db $fc
    ld b, c
    ld h, h
    sbc h
    ld b, c
    inc b
    db $fc
    inc b
    inc c
    db $fc
    ld [$70f8], sp
    adc b
    nop

jr_002_6534:
    sbc e
    db $10
    inc e
    inc e
    inc hl
    ccf
    ld b, b
    ld a, a
    and b
    rst $38

jr_002_653e:
    jp hl


    rst $38

jr_002_6540:
    ld c, c
    ld a, a
    jp hl


    sbc a
    ldh [$9f], a
    adc a
    ld b, c
    rst $38
    add b
    inc b
    rst $38
    ld b, b
    ld a, a
    ccf
    ccf
    dec h
    nop

jr_002_6552:
    dec bc
    ldh a, [$f0]
    ld [$04f8], sp
    db $fc
    ld [bc], a
    cp $09
    rst $38
    rlca
    rst $38
    ld b, c
    ld h, d
    sbc [hl]
    ld b, d
    ld [bc], a
    cp $01
    inc b
    db $fc
    and l
    nop
    cp d
    ld [hl+], a
    rrca
    ld b, $08
    add hl, bc
    rrca
    rra
    ld e, $2d
    inc sp
    ld b, d
    ld e, a
    ld h, b
    ld bc, $7f7e
    ld b, c
    rst $18
    ldh [rTIMA], a
    xor a
    ldh a, [$5f]
    ld a, a
    jr c, jr_002_65bd

    and l
    nop
    ret nz

    rlca
    add hl, bc
    ld c, $17
    jr jr_002_65bd

    jr nc, jr_002_65bf

    ld a, $23
    rra
    ld bc, $3827
    ld b, c
    cpl
    jr nc, jr_002_65a0

    rla
    jr jr_002_65ac

    rrca
    ld [de], a
    rra

jr_002_65a0:
    dec e
    adc b
    nop
    cp e
    add e
    nop
    sbc $13
    rla
    ld a, [de]
    dec l
    inc sp

jr_002_65ac:
    ld l, $3f
    ld [hl], b
    ld a, a
    and b
    rst $38
    and c
    rst $38
    rst $38
    cp $3b
    inc a
    ld b, a
    ld a, a
    ld a, [hl]
    ld a, [hl]
    cpl

jr_002_65bd:
    nop
    dec bc

jr_002_65bf:
    ld [bc], a
    ld b, $0d
    dec bc
    rra
    db $10
    ccf
    jr nz, @+$61

    ld h, b
    ccf
    jr nc, @-$3b

    nop
    pop hl
    dec bc
    ld bc, $0701
    rlca
    add hl, de
    ld e, $23
    inc a
    ld [hl], a
    ld c, b
    cp a
    ret nz

    ld b, c
    xor a
    ret nc

    ld b, $ff
    rst $30
    adc c
    adc c
    ld bc, $0001
    inc h
    ld bc, $00a3
    ld e, h
    add e
    ld [bc], a
    jr nz, jr_002_65f4

    ld a, [bc]
    dec c
    inc c
    dec bc
    add hl, de

jr_002_65f4:
    ld d, $43
    dec de
    inc d
    dec b
    add hl, de
    ld d, $0b
    rrca
    dec b
    dec b
    add e
    ld [bc], a
    ld [hl], $a7
    nop
    ld e, h
    add l
    nop
    call c, $3510
    dec sp
    ld e, [hl]
    ld h, d
    cp d
    add $fd
    add e
    rst $38
    add c
    cp [hl]
    jp nz, Jump_002_645c

    jr z, jr_002_6651

    db $10
    add e
    nop
    inc e
    ld [bc], a
    nop
    ld hl, sp-$08
    ld b, c
    db $e4
    cp h
    rla
    ld [c], a
    cp $e2
    ld a, [hl]
    ld [c], a
    ld a, $c2
    ld a, [hl]
    add [hl]
    cp $da
    ld a, [hl]
    cp $7a
    and a
    ld e, l
    rst $08
    ccf
    ret nc

    jr nc, @-$06

    ld hl, sp+$08
    ld hl, sp-$3b
    ld bc, $e087
    inc sp
    ret nz

    ret nz

    or b
    ld [hl], b
    add sp, -$68
    ret c

    ld l, b
    xor $b6
    db $76
    ld a, [$3ede]
    ld c, h

jr_002_6651:
    cp h
    cp h
    db $fc
    or [hl]
    ld c, [hl]
    ret


    ccf
    sub c
    ld a, a
    di
    rst $38
    ld e, $1e
    ldh a, [$f0]
    add sp, -$68
    db $f4
    adc h
    ld a, [$dae6]
    db $76
    ld a, [$ba2e]
    ld e, [hl]
    ld a, [$fb9e]
    ld l, l
    cp a
    ld c, a
    and h
    ld e, h
    ret z

    jr c, @-$73

    ld [bc], a
    sbc b
    add a
    nop
    ld a, [hl]
    rrca
    or b

Jump_002_667e:
    ld [hl], b
    ret z

    ld hl, sp+$3a
    ld_long a, $ff1d
    ld a, c
    rst $38
    cp c
    rst $08
    ret


    ccf
    or $36
    rlc d
    db $eb
    jr z, jr_002_6692

jr_002_6692:
    dec bc
    ld bc, $8380
    add hl, sp
    rst $38
    ld a, [c]
    ld c, $fc
    inc c
    ld [hl], b
    ldh a, [rP1]
    add h
    nop
    ld e, a
    dec c
    ld [$1408], sp
    inc e
    ccf
    scf
    ld e, h
    ld a, a
    ld b, b
    ld a, a
    ld e, h
    ld a, a
    ld a, [hl]
    ld a, e
    push bc
    inc bc
    ld l, $02
    ld c, a
    ld a, e
    ld b, a
    and [hl]
    ld bc, $069b
    dec b
    dec b
    ld a, [bc]
    rrca
    ld c, $0b
    inc c
    ld b, [hl]
    rrca
    ld a, [bc]
    ld b, d
    rrca
    add hl, bc
    ld [bc], a
    rrca
    inc b
    rlca
    xor c
    ld [bc], a
    db $fc
    ld de, $2020
    ld e, a
    ld a, a
    ld [hl], b
    ld e, a
    and b
    rst $38
    cp $ff
    add b
    rst $38
    cp a
    rst $18
    add b
    rst $38
    ld a, a
    ld a, a
    cpl
    nop
    nop
    jr c, jr_002_672a

    nop
    ld a, h
    pop de
    inc bc
    adc e
    adc b
    ld bc, $0a63
    sbc h
    rst $38
    cp $eb
    ld a, a
    ld c, c
    cp [hl]
    db $eb
    sbc h
    rst $38
    add b
    ld [hl+], a
    rst $38
    dec d
    ret nz

    rst $38
    ld h, b
    ld a, a
    rra

jr_002_6704:
    rra
    ld h, b
    ld h, b
    ld d, b
    ld [hl], b
    ld c, b
    ld a, b
    ld b, a
    ld a, a
    ld a, h
    ld a, a
    ld a, $2b
    ld a, a
    ld c, c
    ld a, a
    ld a, a
    add e
    inc bc
    or [hl]
    ld [$2b7f], sp
    ld a, a
    ccf
    ld a, a
    ld a, a
    ld e, [hl]
    ld a, a
    ld h, b
    adc b
    ld bc, $107d
    nop
    nop
    inc l
    ld a, [hl]

jr_002_672a:
    ld b, d
    rst $38
    cp l
    jp $c3bc


    dec a
    jp $c3bd


    ld b, d
    rst $38
    inc [hl]
    adc h
    ld bc, $07ff
    inc bc
    inc bc
    inc b
    rlca
    add hl, bc
    ld c, $0b
    inc e
    ld b, c
    rla
    jr jr_002_6750

    ld a, a
    ld [hl], b
    ccf
    ld [hl], b
    ld c, a
    ld [hl], b
    ld e, a
    ld h, b
    sbc a

jr_002_6750:
    ldh [rSCY], a
    cp a
    ret nz

    dec hl
    nop
    dec c
    rrca
    adc a
    cp b
    rst $38
    ld l, h
    di
    sbc a
    pop hl
    cp [hl]
    pop bc
    rst $38
    add b
    ld a, a
    add b
    ld b, d
    rst $38
    nop
    jp Jump_002_6000


    dec c
    ret nz

    ret nz

    and b
    ldh [$e3], a
    or e
    ld a, h
    rst $38
    or c
    cp $cf
    ldh a, [$bf]
    ret nz

    add a
    inc b
    jr c, jr_002_6704

    inc b
    ld a, [hl-]
    adc e
    inc bc
    ld b, $09
    ld bc, $0303
    ld a, d
    rst $38
    ld a, h
    ld b, a
    scf
    inc a
    rrca
    ld b, e
    inc c
    dec bc
    nop
    inc c
    xor a
    inc b
    ld e, a
    dec c
    ld h, b
    ldh [rSVBK], a
    ld d, b
    jr c, jr_002_6805

    ccf
    ccf
    ld h, b
    ld a, a
    ld e, a
    ld h, c
    cp a
    ret nz

    adc c
    inc b
    ld a, $0f
    ldh [$b0], a
    ld [hl], b
    ret nc

    ld [hl], b
    ld e, b
    ld a, b
    ld c, b
    ld e, b
    ld l, b
    ld a, $3e
    ld h, c
    ld a, a
    rst $18
    ldh [$83], a
    inc b
    ld d, b
    add e
    inc b
    jr c, jr_002_67cf

    rst $30
    rrca
    db $db
    inc a
    xor a
    ld [hl], b
    rst $18
    ld h, b
    ld a, a
    ret nz

    rst $28
    sbc a
    rst $18
    cp a
    cp a

jr_002_67cf:
    db $e3
    ld b, d
    rst $38
    pop bc
    add hl, bc
    ld a, a
    ld [c], a
    rst $38
    ld a, a
    or l
    ld a, a
    rst $18
    ccf
    rst $30
    rrca
    xor c
    inc b
    ret nz

    inc b
    ld a, l
    add e
    cp a
    pop bc

jr_002_67e6:
    rst $18
    ld b, c
    pop hl
    rst $38
    inc c
    pop hl
    db $fd
    ld h, e
    cp $23
    db $db
    ld h, [hl]
    or l
    adc $5b
    cp h
    rst $28
    ldh a, [rVBK]
    rst $38
    nop
    dec b
    nop
    rlca
    rlca
    jr jr_002_6819

    jr nz, jr_002_6844

    jr nz, jr_002_6845

jr_002_6805:
    ld b, d
    ld b, b
    add b
    dec b
    ld hl, sp+$07
    rst $20
    jr jr_002_67e6

    jr nz, jr_002_6851

jr_002_6810:
    and b
    ld b, b
    ld b, l
    ld b, b
    add b
    ld b, c
    jr nz, jr_002_6858

    dec b

jr_002_6819:
    jr jr_002_683b

    rlca
    jr jr_002_681e

jr_002_681e:
    rlca
    ld b, d
    ld b, b
    add b
    ld b, c

jr_002_6823:
    and b
    ld b, b
    dec b
    ret c

    jr nz, jr_002_6810

    jr jr_002_6823

    rlca
    db $f4
    ccf
    dec b
    jr nz, jr_002_6835

jr_002_6831:
    ldh [$1f], a
    sbc a
    ld h, b

jr_002_6835:
    ld h, b
    jp z, $8e04

    xor a
    dec b

jr_002_683b:
    and b
    adc b
    inc b
    add l
    dec b
    nop
    ld h, b
    add b
    sbc a

jr_002_6844:
    ld h, b

jr_002_6845:
    ldh [$88], a
    nop
    cp e
    and a
    dec b
    ret z

    nop
    ret nc

    adc [hl]
    dec b
    dec [hl]

jr_002_6851:
    xor a
    dec b
    ldh [rLY], a
    ld b, b
    add b
    ld b, c

jr_002_6858:
    and b
    ld b, b
    ld bc, $20d0
    xor a
    ld b, $00
    ld b, c
    rst $38
    nop
    add hl, bc
    cp $01
    db $fd
    ld [bc], a
    ld a, [$f404]
    ld [$10e8], sp
    xor a
    ld b, $1e
    dec bc
    dec bc
    inc b
    ret nc

    jr nz, @-$16

    db $10
    db $f4
    ld [$04fa], sp
    db $fd
    ld [bc], a
    and l
    inc b
    jr c, jr_002_6831

    ld b, $40
    ld c, $ff
    nop
    db $fd
    nop
    ld [$f000], a
    nop
    ret z

    nop
    and d
    nop
    ret nc

    nop

jr_002_6893:
    ld b, b
    xor a
    ld b, $5f
    ret nc

    ld b, $6f
    xor a
    ld b, $80
    ld b, $fd
    ld a, [hl]
    add d
    rst $38
    ld a, l
    add e
    add e
    add e
    ld [bc], a
    inc [hl]
    add [hl]
    dec b
    jp Jump_002_410f


jr_002_68ad:
    add b
    cp [hl]
    ld b, c
    pop bc
    ld a, $fe
    add c
    cp l
    jp $ff43


    cp a
    ld a, [hl]
    ret nc

    ld h, b
    ld b, e
    and b
    ret nz

    dec b
    or b
    ret nz

    sub b
    ldh [$c8], a
    ld [hl], b
    xor a

jr_002_68c7:
    ld b, $c0
    add e
    dec b
    sub $0b
    inc bc
    rlca
    ld [$170f], sp
    jr @+$0b

    jr nc, jr_002_68f6

    jr nc, @+$62

    jr nc, jr_002_691b

    rst $38
    nop
    ld b, $fb
    rlca
    ld hl, sp+$0f
    rst $30
    jr jr_002_68ad

    ld b, c
    jr nc, jr_002_68c7

    nop
    jr nc, jr_002_6893

    ld b, $e0
    nop
    db $10
    xor [hl]
    ld b, $eb
    nop
    inc de
    and h
    ld b, $fb

jr_002_68f6:
    dec bc
    ld h, l
    jr c, jr_002_6924

    dec [hl]
    inc c
    inc sp
    rla
    jr jr_002_6908

    rrca
    inc bc
    rlca
    add e
    nop
    ld a, l
    dec bc
    db $e4

jr_002_6908:
    jr c, @-$13

    inc [hl]
    db $ec
    inc sp
    rst $30
    jr jr_002_6908

    rrca
    rst $38
    rlca
    ld b, c
    rst $38
    nop
    xor a
    rlca
    jr nz, jr_002_691e

    and a

jr_002_691b:
    inc e
    ld d, a
    xor h

jr_002_691e:
    inc sp
    and h
    rlca
    dec [hl]
    nop
    rst $18

jr_002_6924:
    and h
    rlca
    dec sp
    ld b, a
    ld d, b
    add b
    ld b, a
    ld a, [bc]
    ld bc, $7406
    add e
    nop
    sbc b
    nop
    ld h, b
    ld [$8041], sp
    jr z, @+$0a

    add b
    ld [$0040], sp
    jr nc, jr_002_693f

jr_002_693f:
    ld [$0430], sp
    ld b, d
    inc [hl]
    ld [bc], a
    ld b, $30
    inc b
    nop
    ld [$f000], sp
    ld h, $a4
    rlca
    add c
    nop
    ld d, b
    ld b, c
    ld bc, $0854
    ld bc, $0250
    ld b, b
    inc c
    ld b, e
    db $10
    dec bc
    jr nz, jr_002_69a1

    dec de
    ld b, b
    add hl, bc
    dec bc
    ld b, b
    inc bc
    jr nz, jr_002_6968

jr_002_6968:
    jr jr_002_696a

jr_002_696a:
    rlca
    nop
    inc bc
    and e
    rlca
    adc [hl]
    ld bc, $1000
    ld b, c
    nop
    ld [$0001], sp
    jr nc, @+$43

    nop
    ret nz

    xor l
    rlca
    jp nz, $1041

    nop
    ld b, $2c
    nop
    inc hl
    nop
    call nz, $3400
    add h
    rlca
    ret z

    ld b, c
    rst $28
    db $10
    rlca
    db $d3
    inc l
    call c, $3b23
    call nz, $34cb
    ld b, c
    rst $30
    ld [$0009], sp
    rst $38
    ld b, d
    add c

jr_002_69a1:
    nop
    rst $38
    inc h
    jp $ff00


    ld b, c
    ld b, [hl]
    add c
    ld bc, $ff00
    ld b, a
    ld c, d
    add l
    call nz, Call_002_6104
    add hl, bc
    nop
    ld c, c
    or [hl]
    inc d
    ld h, e
    ld [$2214], sp
    inc d
    inc b
    ld b, c
    ld [hl+], a
    nop
    ld a, [bc]
    ld [hl+], a
    inc d
    ld [hl+], a
    ld [hl+], a
    inc d
    ld [$1414], sp
    ld [hl+], a
    ld [hl+], a
    db $dd
    add $04

jr_002_69cf:
    ld h, e
    add hl, bc
    nop
    ld c, c
    or [hl]
    sub h
    ld h, e
    db $eb
    inc d
    db $e3
    inc d
    push bc
    ld b, c
    ld [hl+], a
    pop bc
    rlca
    ld [hl+], a
    push de
    ld [hl+], a
    db $e3
    inc d
    db $eb
    inc d
    push de
    add h
    ld [$153b], sp
    ld hl, $00de
    rst $38
    ld e, [hl]
    and c
    dec h
    ret nz

    ld e, b
    add b
    ld d, b
    add b
    ld d, l
    add b
    ld d, d
    add b
    ld bc, $04fe
    ei
    ld a, b
    add a
    xor c
    ld [$4766], sp
    ld d, h
    and b
    ld b, a
    sbc d
    dec b
    dec b
    nop
    rst $38
    ld l, b
    add b
    nop
    rst $38
    ld b, c
    or c
    ld b, b
    add l
    ld [$05a0], sp
    nop
    rst $38
    or h
    dec bc
    nop
    rst $38
    ld b, c
    ld l, c
    ld d, $85
    ld [$c3b0], sp
    ld [$08b0], sp
    ld hl, $279e
    sbc b
    ld h, $99
    jr nz, jr_002_69cf

    ccf
    push bc
    ld [$17c3], sp
    ld bc, $7d82
    ld [hl-], a
    call $8d72
    jp nz, $fe3d

    ld bc, $ff00
    ld [hl], a

jr_002_6a43:
    ld [hl], $45

jr_002_6a45:
    ld h, e
    inc h
    ld b, e
    ld b, l
    ld [hl+], a
    ld h, a
    ld [hl+], a
    ld [hl], $84
    ld [$0233], sp
    ld [hl], $14
    inc e
    add e
    ld [$0137], sp
    ld [$4114], sp
    ld [$a500], sp
    nop
    add hl, de
    push bc
    ld [$83fb], sp
    inc bc
    ld [hl+], a
    jp $f108


    nop
    inc d
    add $08
    db $ec
    ld [de], a
    ld [hl+], a
    inc h
    ld b, e
    ld b, l

jr_002_6a73:
    ld h, e
    ld [hl], a
    ld [hl], $18
    rst $20
    ld d, b
    add b
    jr z, jr_002_6abc

    ld e, a
    jr nz, jr_002_6abf

    ccf
    sub b
    ld h, b
    ld b, c
    jr nz, jr_002_6a45

    and e
    ld [$00a0], sp
    inc l
    and h
    add hl, bc
    dec h
    ld bc, $0659
    ld b, c
    inc l
    inc bc
    rrca
    sbc a
    ld h, b
    ld b, b
    ccf
    inc b
    jr c, jr_002_6a43

    ld d, h
    ld de, $40e6
    and l
    ld c, b
    and l
    jr nz, jr_002_6a73

    xor a
    add hl, bc
    ld b, b
    add l
    inc b
    ld e, l
    nop
    rst $38
    rst $00
    ld [$8445], sp
    add hl, bc
    ld h, l
    ld d, $24
    jr jr_002_6ace

    inc h
    nop
    rst $20
    nop
    inc h
    ld b, d

jr_002_6abc:
    inc h
    inc h
    ld b, d

jr_002_6abf:
    adc $01
    ld c, a
    add b
    call nz, $8101
    nop
    dec b
    nop
    add c
    add h
    dec b
    push de
    ld b, d

jr_002_6ace:
    add c
    ld a, [hl]
    ld b, c
    add c
    ld h, [hl]
    ld b, d
    add c
    ld a, [hl]
    nop
    sbc c
    ld b, c
    nop
    ld h, [hl]
    ld b, c
    nop
    sbc c
    add [hl]
    add hl, bc
    and c
    add [hl]
    inc b
    ld e, l
    rlca
    rst $38
    sbc c
    ld b, h
    nop
    rst $38
    jp $0000


    dec h
    rst $38
    inc bc
    rst $10
    rst $28
    rst $28
    rst $38
    add $09
    push bc
    ld [de], a
    rst $38
    rst $08
    rst $00
    ret nz

    and c
    pop bc
    jp $c381


    ld bc, $c0e1
    rst $28
    ret nz

    rst $38
    rst $08
    rst $30
    ld sp, hl
    ld sp, hl
    ld b, c
    ldh a, [$f8]
    inc b
    ldh a, [$e8]
    ldh a, [$d0]
    ldh [$a3], a
    nop
    ld a, e
    inc b
    ld b, b
    add b
    ldh [$c0], a
    ldh [$84], a
    add hl, bc
    db $e3
    dec b
    ldh a, [$f8]
    pop af
    ld hl, sp-$01
    ld sp, hl
    inc hl
    rst $38
    ld bc, $6799
    ld b, c
    ld bc, $0803
    rlca
    inc bc
    inc bc
    rlca
    dec bc
    rlca
    inc bc
    rlca
    rlca
    ld [hl+], a
    inc bc
    inc b
    ld bc, $6303
    ld bc, $8389
    nop
    push hl
    ld a, [bc]
    rst $38
    rst $38
    ld a, a
    add b
    add b
    sbc a
    sbc a
    and b
    cp a
    xor [hl]
    or c
    ld b, c
    xor a
    or b
    inc bc
    and [hl]
    cp c
    and b
    or [hl]
    ld b, c
    and b
    or b
    ldh [$29], a
    and b
    cp b
    and b
    cp h
    cp a
    sbc a
    ret nz

    cp a
    rst $38
    ld a, a
    rst $38
    cp $03
    ld bc, $f9ff
    rlca
    db $fd
    rlca
    dec e
    rlca
    adc l
    daa
    add l
    rlca
    dec h
    ld b, a
    dec h
    rlca
    dec b
    rrca
    dec b
    rlca
    dec c
    daa
    dec e
    rst $38
    db $fd
    inc bc
    rst $38
    rst $38
    cp $c3
    add hl, bc
    ret nz

    add e
    add hl, bc
    cp l
    ld bc, $e718
    ld b, c
    jp $0200


    rst $20
    nop
    db $db
    ld b, c
    nop
    and l
    inc b
    nop
    rst $30
    nop
    rst $38
    rst $38
    ld b, c
    add b
    nop
    ld [$ffff], sp
    db $f4
    ld hl, sp-$30
    ldh [$80], a
    ret nz

    ret nz

    and e
    ld [bc], a
    dec [hl]
    inc h
    nop
    xor a
    ld a, [bc]
    add b
    add l
    dec b
    call nz, $0008
    add b
    ret nz

    add b
    add b
    ret nz

    ret nc

    ldh [$f4], a
    add h
    ld bc, $ab9f
    ld a, [bc]
    and h
    rlca
    cp $ff
    rst $38
    cp $7c
    cp $54
    cp b
    add a
    ld a, [bc]
    xor b
    add l
    ld a, [bc]
    ld a, b
    ld bc, $0080
    add e
    inc bc
    rst $08
    inc bc
    ldh a, [$9f]
    sub b
    sbc a
    add l
    ld a, [bc]
    ld h, b
    call nz, Call_002_4004
    rla
    rst $38
    nop
    rst $38
    xor d
    ld d, l
    sub e
    sbc h
    sub [hl]
    sbc b
    ld b, $f8
    ld l, c
    sub [hl]
    ld l, [hl]
    sub c
    adc c
    db $10
    adc b
    db $10
    sub b
    nop
    ld d, l
    nop
    xor d
    inc h
    nop
    rlca
    add hl, bc
    add [hl]
    adc a
    ld d, b
    ld d, b
    jr nz, jr_002_6c0b

jr_002_6c0b:
    jr nz, @-$79

    dec bc
    nop
    inc c
    inc b
    inc bc
    inc bc
    inc c
    inc c
    sub b
    ret c

    jr nz, jr_002_6c39

    ld b, b
    xor d
    rst $38
    ld d, l
    add h
    ld a, [bc]
    db $eb
    jp $ef0a


    and h
    dec bc
    nop
    add h
    ld a, [bc]
    ld h, b
    ret z

    add hl, bc
    or a
    ld a, [hl+]
    nop
    call nz, $2e0b
    ld bc, $b600
    inc a
    nop
    ld [$006d], sp

jr_002_6c39:
    rla
    rrca
    rra
    ccf
    ccf
    ld a, a
    rst $38
    add h
    nop
    db $e4
    inc hl
    rst $38
    xor a
    dec bc

jr_002_6c47:
    ld [hl], b
    rst $38
    db $e4
    cpl
    nop
    dec d
    jr jr_002_6c67

    ccf
    daa
    ld a, a
    ld h, c
    cp $82
    ld a, [hl]
    ld b, d
    ccf
    ld hl, $2f3f
    jr nc, @+$32

    inc bc
    inc bc
    dec b
    ld b, $0b
    inc c
    ld b, c
    rla
    jr jr_002_6c47

jr_002_6c67:
    ccf
    inc de
    inc e
    rrca
    rrca
    dec c
    dec bc
    rra
    ld [de], a
    ld a, a
    ld [hl], a
    cp a
    push de
    cp a
    call Call_002_477f
    scf
    jr c, jr_002_6c88

    ld c, $02
    inc bc
    add b
    add b
    ld c, a
    rst $18
    rst $30
    ld hl, sp-$01
    ldh [$df], a
    ld h, b

jr_002_6c88:
    rst $28
    jr nc, @-$03

    inc e
    cp $c7
    cp l
    ld h, e
    rst $18
    cp h
    di
    sbc a
    db $dd
    or e
    cp l
    ld h, e
    db $db
    rst $20
    db $eb
    ld [hl], a
    rst $38
    ld e, $1c
    inc e
    xor d
    or [hl]
    ld a, [hl]
    ld [c], a
    xor d
    db $76
    call c, $413c
    add sp, $18
    ldh [$2d], a
    cp h
    ld a, h
    ld a, [$9dfe]
    ld a, a
    rst $38

Call_002_6cb4:
    db $fd
    db $fd
    ei
    push af
    ei
    jp c, Jump_002_6ee6

    sbc [hl]
    ld sp, hl
    rra
    dec b
    ld b, $7b
    ld a, h
    ld e, l
    ld h, e
    ccf
    ccf
    ld a, h
    ld c, a
    ld a, c
    ld c, [hl]
    ld [hl], e
    ld e, h
    jr nc, jr_002_6d0e

    rla
    jr jr_002_6ce2

    rra
    dec hl
    inc a
    ld d, [hl]
    ld l, a
    ld e, l
    ld h, e
    ld a, a
    ld a, a
    inc hl
    nop
    dec de
    or e
    ld a, h
    ld l, a
    di

jr_002_6ce2:
    rst $18
    db $e4
    cp a
    ret z

    rst $38
    adc b
    ld l, a
    sbc h
    ld l, e
    sbc a
    ld [$b99f], a
    rst $08
    ld e, a
    rst $20
    xor e
    ld a, h
    rla
    ld hl, sp-$09
    ld hl, sp-$61
    sbc a
    inc hl
    nop
    nop
    ld h, c
    ld b, c
    rst $38
    pop bc
    ld d, $7f
    pop hl
    ccf
    ld [c], a
    ld a, $c4
    ld a, h
    add $fe
    jp nz, Jump_002_62fe

jr_002_6d0e:
    cp $a1
    rst $38
    ld b, c
    rst $38
    and c
    ld a, a
    sbc $3e
    db $fc
    db $fc
    dec h
    nop
    inc bc
    rlca
    rlca
    ld a, [bc]
    dec c
    ld b, c
    rla
    add hl, de
    dec d
    cpl
    jr nc, jr_002_6d4e

    jr c, @+$3f

    ld a, $17
    rra
    rra
    ld d, $3f

jr_002_6d2f:
    cpl
    ccf
    dec hl
    ccf
    dec sp
    ld a, a
    cp $bd
    jp $f8f7


    inc hl
    nop
    inc bc
    adc a
    sbc a
    or a
    ld hl, sp+$41
    rst $18
    ldh [$e0], a
    daa
    rst $28
    ld [hl], b
    ei
    inc e
    cp l
    jp $fc7b


jr_002_6d4e:
    cp a
    ld a, a
    db $e3
    ccf
    cp e
    ld h, a
    ld a, d
    rst $00
    rst $18
    rst $20
    ccf
    cp $38
    jr c, @+$56

    ld l, h
    db $fc
    call nz, $ec54
    cp b
    ld a, b
    ret nc

    jr c, jr_002_6d2f

    jr c, jr_002_6de1

    ld hl, sp-$04
    db $fc
    cp [hl]

Jump_002_6d6d:
    ld a, [hl]
    adc e
    nop
    sub h
    ld d, $56
    rst $28
    ld e, a
    ld h, b
    ccf
    ccf
    ld a, $3f
    ld [hl], l
    ld c, [hl]
    ld a, l
    ld c, [hl]
    ld a, e
    ld c, h
    jr c, jr_002_6dc1

    dec bc
    inc e
    jr jr_002_6da5

    dec l
    ld a, $57
    adc b
    nop
    or a
    ld de, $7f3f
    ld [hl], a
    ld c, a
    dec hl
    ld a, l
    rra
    add hl, sp
    rrca
    add hl, bc
    dec bc
    dec c
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $2501
    nop
    dec h
    ld bc, $0006

jr_002_6da5:
    nop
    rst $28
    ldh a, [$bf]
    rst $18
    ld h, b
    ld b, d
    rst $38
    nop
    ld e, $ff
    ld bc, $02ff
    rst $38
    add l
    rst $38
    db $fd
    cp $5f
    ld h, a
    cp l
    jp $87fb


    ld [hl], h
    adc h
    ld e, b

jr_002_6dc1:
    cp b
    ldh [$e0], a
    ld l, a
    pop af
    sub e
    db $ec
    ld sp, $19ce
    and $0e
    pop af
    add e
    ld bc, $0baa
    ld bc, $03ff
    cp $8f
    db $fd
    cp $72
    db $ec
    sbc h
    ld [hl], b
    ld [hl], b
    and a
    nop

jr_002_6de0:
    db $fc

jr_002_6de1:
    ld de, $f818
    adc h
    ld a, h

Jump_002_6de6:
    jr c, jr_002_6de0

    ld h, h
    db $fc
    cp d
    and $dd
    ld h, e
    ld e, a
    pop hl
    or l
    ei
    ld c, $1e
    dec hl
    nop
    nop
    ld bc, $0162
    ld h, d
    dec b
    ld [$0b04], sp
    inc c
    rla
    dec de
    rra
    rra
    ld c, $0f
    ld b, c
    rlca
    ld b, $e0
    ld e, d
    ld c, $0f
    dec d
    dec de
    rla
    jr jr_002_6e91

    ld a, a
    jp hl


    sbc c
    db $eb
    sbc e
    ldh [$e0], a
    xor a
    ld a, a
    or a
    ld a, b
    rst $18
    jr nc, @+$01

    ld [$ee97], sp
    db $fd
    ei
    push af
    adc $fb
    rst $30
    cp $b3
    ei
    or [hl]
    rst $30
    db $ec
    db $db
    inc a
    cp b
    rst $08
    rst $38
    rst $30
    rst $18
    and $3c
    inc a
    ld [$bef6], a
    ld [hl], d
    jp c, $ee3e

    ld e, $f4
    inc c
    db $ec
    call c, $fe7a
    sbc [hl]
    ld a, [hl]
    rst $38
    db $fd
    ld a, e
    db $fd
    ld a, l
    ei
    ld [hl], a
    ei
    jp c, Jump_002_6ee7

    sbc a
    rst $18
    ccf
    rst $30
    sbc a
    rst $30
    ld hl, sp+$6f
    ld a, a
    ld b, c
    ld a, a
    ld h, c
    ld a, a
    ld hl, $193f
    rra
    ld b, $c6
    ld bc, $2902
    nop
    ldh [rNR51], a
    cp a
    call c, $75ae
    cp $c5
    ld [hl], $cd
    ld a, [hl]
    add l
    daa
    call c, $e29f
    or c
    rst $08
    rst $08
    ldh a, [$f8]
    ld a, a
    ccf
    ccf
    ld l, $33
    ld e, $13
    ld c, $0f
    ld [bc], a
    inc bc
    ld bc, $6101
    rst $38
    ld hl, sp-$01

jr_002_6e91:
    cp [hl]
    rst $00
    ld b, c
    ei
    add a
    dec bc
    cp a
    rst $00
    ld a, h
    rst $38
    rst $38
    ccf
    rst $30
    rst $08
    ld [hl], l
    ei
    cp $fe
    ld b, c
    add sp, $18
    dec b
    ret nc

    jr nc, @+$22

    ldh [$c0], a
    ret nz

    add hl, hl
    nop
    dec bc
    jp nz, $3fe6

    db $fd
    rlca
    db $fd
    adc d
    cp $6e
    ld a, [$fc1c]
    ld b, c
    adc b
    ld hl, sp+$03
    jr nc, @-$0e

    ldh [$e0], a
    and a
    ld bc, $c690
    ld bc, $02f9
    ld e, $1f
    ld de, $3f41
    jr nz, jr_002_6ed4

    ld e, a
    ld [hl], c

jr_002_6ed4:
    ld e, a
    ld b, c
    ld a, a
    ld e, l
    ld b, c
    ld a, a
    ld e, h
    inc e
    ld a, a
    inc bc
    inc bc
    ld e, $1f
    dec l
    ld [hl], $3b
    inc a
    ld l, a

Jump_002_6ee6:
    ld [hl], b

Jump_002_6ee7:
    rst $18
    rst $28
    cp l
    cp $ff
    ld [c], a
    sbc $ef
    rst $38
    rst $08
    rst $38
    bit 7, a
    xor $ff
    ldh a, [$f3]
    rst $08
    ld [hl+], a
    rst $38
    ld d, $c7
    ld e, b
    ld a, a
    ld b, c
    ld a, a
    ld hl, $233f
    ccf
    inc de
    rra
    call c, $a0ff
    rst $38
    pop hl
    rst $38
    ld a, a
    ld e, [hl]
    ccf
    ld hl, $1f1e
    daa
    ld bc, $0007
    nop
    rst $38
    di
    rst $38

jr_002_6f1b:
    cp h
    rst $38
    rst $10
    ld b, c
    ld a, a
    ret z

    ldh [rNR50], a
    rst $28
    ret c

    ei
    sbc h
    rst $10
    jr c, jr_002_6f1b

    cp $f8
    rst $18
    xor h
    rst $18
    ld [hl], a
    adc a
    ld a, h
    add h
    ld a, b
    adc b
    ld [hl], b
    sub b
    ldh [$e0], a
    rrca
    inc c
    inc de
    ld e, $23
    ccf
    ld hl, $413f
    ld a, a
    ld b, b
    ld a, a
    add b
    rst $38
    adc [hl]
    ld b, c
    rst $38
    sbc a
    ld a, [de]
    rst $38
    rst $18
    pop af
    ld a, a
    ld h, b
    ccf
    jr nz, jr_002_6f93

    ld sp, $6e5f
    ld a, a
    ld a, a
    rra
    inc bc
    dec a
    ld a, $c7
    db $fc
    dec e
    cp $2f
    di
    ld e, a
    ldh [$df], a
    ldh [rSTAT], a
    cp a
    ret nz

    dec c
    cp l
    jp $c6bb


    cp a
    db $fc
    rst $08
    ldh a, [$67]
    ld a, b
    jr jr_002_6fb6

    rst $38
    rst $20
    add e
    nop
    ld b, b
    add hl, de
    rrca
    inc c
    dec d
    ld e, $2f
    inc sp
    cpl
    jr nc, jr_002_6fe5

    ld h, b
    ld a, a
    ld c, b
    ld d, a
    ld a, h
    ld l, a
    ld [hl], d
    ld e, a
    ld h, c
    rst $28
    ldh a, [$ef]
    or b

jr_002_6f93:
    rst $30
    cp b
    cp b
    rst $18
    add l
    nop
    cp d
    inc hl
    nop
    add e
    nop
    ld b, b
    add e
    nop
    ld b, d
    add hl, de
    rrca
    rrca
    ccf
    jr nc, jr_002_7027

    ld c, a
    ret nc

    cp a
    and b
    rst $38
    ld b, b
    ld a, a
    ld e, b
    ld a, a
    ld l, l
    db $76
    set 7, l
    db $76

jr_002_6fb6:
    call Call_002_46fb
    ld a, e
    add $fd
    add e
    ld b, e
    db $fd
    inc bc
    inc e
    ld sp, hl
    rlca
    rst $20
    rra
    db $fd
    cp $8b
    ld a, h
    srl h
    dec c
    cp $f3
    di
    sub a
    ld l, [hl]
    adc c
    rst $30
    ld c, b
    rst $30
    ret c

    ld h, a
    ldh a, [rVBK]
    ldh [$5f], a
    ld c, a
    rst $38
    ld d, b
    and h
    ld bc, $0bcb
    adc [hl]
    rst $38
    ld a, [hl]

jr_002_6fe5:
    rst $38
    cp h

Jump_002_6fe7:
    ld a, a
    cp b
    ld a, a
    ld h, a
    rst $38
    ld hl, sp-$08
    and e
    nop
    ld b, b
    rrca
    ldh [$b0], a
    ld d, b
    ldh a, [$7c]
    call c, $de72
    ld a, a
    pop de
    db $dd
    di
    ld [hl], d
    cp $6c
    db $fc
    and l
    ld [bc], a

jr_002_7004:
    sbc d
    adc l
    ld [bc], a
    sbc $c3
    inc b
    add hl, sp
    add hl, bc
    ret nz

    ld h, b
    and b
    ld h, b
    ldh [$e0], a
    and b
    ld [hl], b
    ret nc

    or b
    ld b, c
    ld [hl], b
    ret nc

    rla
    jr c, jr_002_7004

    ld l, $f6
    rst $18
    add hl, sp
    nop
    nop
    ld a, [de]
    ccf
    xor l
    rst $30
    ld a, a

jr_002_7027:
    push hl
    sbc e
    ld [hl], l
    rst $28
    add hl, de
    rst $30
    rrca
    ld a, [$fb07]
    ld b, $41
    db $fd
    inc bc
    ld b, d
    cp $01
    ld [bc], a
    db $fc
    inc bc
    rst $20
    and h
    ld bc, $831f
    ld bc, $16de
    ld [hl], b
    sub b
    ld hl, sp-$38
    xor $be
    db $fd
    ei
    rst $38
    ld sp, hl
    rst $38
    add hl, de
    push af
    dec sp
    xor $fe
    cp a
    db $dd
    ei
    db $fd
    rst $18
    db $e3
    db $fd
    add [hl]
    inc b
    ld a, a
    add a
    ld bc, $41fe
    dec bc
    inc c
    ld b, d
    rla
    jr jr_002_70aa

    cpl
    jr nc, jr_002_708d

    nop
    rlca
    rrca
    rrca
    ld [hl], b
    ld a, a
    adc a
    ldh a, [$7f]
    add b
    ld c, c
    rst $38
    nop
    add e
    ld [bc], a
    nop
    inc d
    inc b
    rlca
    dec b
    ld b, $02
    inc bc
    rlca
    rlca
    ccf
    ccf
    ld l, a
    ld e, a
    ld a, [hl]
    ld b, a
    ld a, a
    ld h, [hl]
    rra
    inc de

jr_002_708d:
    rrca
    add hl, bc
    rlca
    ld h, d
    inc b
    add hl, bc
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ldh a, [$f0]
    ld l, a
    sbc a
    rst $30
    jr c, jr_002_70df

    rst $38
    jr nz, jr_002_70b0

    ld e, a
    or b
    ei
    sbc h
    cp $e7
    db $fd
    ld a, e
    rst $18

jr_002_70aa:
    db $fc
    di
    rra
    db $dd
    inc sp
    cp l

jr_002_70b0:
    db $e3
    add h
    nop
    ld a, d
    nop
    ld a, $27
    ld bc, $020c
    inc bc
    inc bc
    ld [bc], a
    rlca
    inc b
    ld c, $09
    dec d
    dec de
    ld e, $12
    inc c
    and h
    inc b

jr_002_70c8:
    cp a
    add [hl]
    inc bc
    ld a, [hl-]
    ld [bc], a
    ld hl, sp-$49
    rst $08
    ld b, c
    db $fc
    add a
    ld a, [bc]
    or h
    rst $08
    cp $ff
    cp [hl]
    rst $38
    call c, $e1ff
    rst $38

jr_002_70de:
    rst $38

jr_002_70df:
    adc h
    ld bc, $a5b3
    inc b
    ldh [rSB], a
    jr nz, jr_002_70c8

    ld b, c
    db $10
    ldh a, [rTIMA]
    jr nc, jr_002_70de

    ld [hl], b
    ret nc

    ldh [$a0], a
    jp Jump_002_6305


    adc l
    ld bc, $83f6
    inc b
    db $e4
    dec c
    inc bc
    inc bc
    ld b, $07
    dec a
    ld a, $6f
    ld e, h
    ld [hl], a
    ld c, h
    ld a, a
    ld h, h
    dec e
    ld d, $a3
    dec b
    ld l, [hl]

jr_002_710d:
    adc [hl]
    inc b
    ld a, [$32e0]
    ldh a, [$ef]
    jr jr_002_710d

    inc c
    cp $c7
    db $fd
    rst $00
    rst $38
    inc b
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    pop af
    rst $18
    jp hl


    rst $28
    ld [hl], a
    rst $38
    ld a, $07
    rlca
    dec de
    inc e
    dec l
    inc sp
    rla
    rra
    ld c, $0f
    ld e, $1f
    dec e
    inc de
    cpl
    ld sp, $313f
    ld a, l
    ld c, e
    rst $38
    sub a
    ldh [rNR41], a
    pop bc
    ld b, c
    add c
    add c
    add e
    ld bc, $1b90
    ld bc, $3301
    inc sp
    ld l, h
    ld e, a
    ld e, c
    ld l, [hl]
    ld [hl-], a
    dec a
    dec h
    ld a, [hl-]
    ld c, e
    ld [hl], h
    rst $10
    add sp, -$51
    ldh a, [$9f]
    ldh a, [$7f]
    ld c, b
    ccf
    inc h
    ld e, $13
    dec c
    dec bc
    and h
    ld [bc], a
    cp h
    ld [$0701], sp
    rrca
    ccf
    jr c, jr_002_71ce

    ld h, a
    ld a, a
    ld a, b
    ld b, c
    ld c, e
    ld [hl], h
    ldh [$2e], a
    dec hl
    ld [hl], h
    dec h
    ld a, [hl-]
    ld h, l
    ld a, [$dab5]
    ld [hl], d
    db $fd
    ld [de], a
    dec e
    rrca
    rra
    dec bc
    inc c
    rrca
    rlca
    inc b
    ld c, $0a
    ld c, $0f
    dec bc
    inc e
    ccf
    ldh [$7f], a
    and a
    ld hl, sp-$08
    and a
    rst $20
    cp b
    ld a, a
    ret nc

    ld a, a
    ld d, b
    ld a, b
    ld d, a
    ccf
    ld l, b

jr_002_71a1:
    jr c, @+$31

    add hl, hl
    ccf
    ld e, $86
    inc b
    ld a, a
    add hl, bc
    ldh a, [$f0]

jr_002_71ac:
    ld l, b
    sbc b
    ld hl, sp+$08
    ld hl, sp-$38
    jr c, jr_002_71ac

    ld b, c
    db $10
    ldh a, [rSTAT]
    ld [$41f8], sp
    db $10
    ldh a, [$e0]
    ld b, h
    jr nz, jr_002_71a1

    ld b, b
    ret nz

    add b
    ret nz

    ld [hl], b
    ld [hl], b
    xor b
    ret c

    ld hl, sp-$78
    xor l
    db $dd
    db $fd

jr_002_71ce:
    ld a, l
    db $ed
    dec e
    xor $1f
    sbc [hl]
    ld a, a
    ld a, [$bdff]
    ld a, a
    rst $38
    db $fd
    ei
    db $fd
    push af
    ei
    jp c, Jump_002_6fe7

    sbc a
    ret c

    ccf
    pop af
    rst $38
    db $ed
    di
    dec hl
    rst $30
    ld h, h
    cp a
    xor a
    ld a, h
    jr z, @+$01

    jr c, @+$01

    ld l, b
    rst $38
    ld [hl], h
    rst $08
    add l
    rst $38
    add $bf
    add h
    rst $38
    ld b, h
    rst $38
    inc l
    rst $38
    inc d
    rst $38
    inc de
    add e
    inc b
    sbc $22
    inc bc
    rlca
    ld [bc], a
    rlca
    dec b
    ld c, $0a
    dec c
    ld a, [bc]
    dec e
    ld b, c
    inc d
    dec de
    rrca
    dec e
    rra
    inc de
    ccf
    dec hl
    ld [hl], a
    ld d, d
    ld l, a
    ld d, l
    xor $a5
    sbc $a4
    rst $18
    and d
    rst $18
    add e
    ld bc, $41ae
    ld c, d
    db $fd
    ldh [rSTAT], a
    ld [hl], h
    rst $38
    ld b, d
    rst $38
    or c
    rst $08
    pop hl
    sbc a
    ld b, e
    cp a
    ld b, l
    cp a
    ld b, $fd

Call_002_723c:
    sbc d
    db $fd
    ld a, h
    rst $38
    ld d, d
    rst $28
    ld d, c
    rst $28
    nop
    nop
    rla
    ld a, $2f
    add hl, sp
    dec a
    cpl
    ccf
    jr z, jr_002_728c

    ld l, $2f
    ld a, [hl-]
    rst $38
    ld hl, sp-$45
    call c, $bfdf
    or a
    ret c

    rst $10
    cp c
    or e
    db $dd
    rst $10
    cp c
    or a
    reti


    rst $38
    rst $38
    nop
    nop
    ld a, $3e
    ld h, e
    ld h, e
    ld h, b
    ld h, b
    ld a, $3e
    inc bc
    inc bc
    push bc
    rlca
    dec b
    ld bc, $7e7e
    dec hl
    jr jr_002_727e

    nop
    nop
    inc e
    inc e
    ld [hl+], a

jr_002_727e:
    ld [hl+], a
    inc hl
    ld h, e
    nop
    ld a, a
    call nz, $2a07
    add a
    rlca
    nop
    ld bc, $6f6f

jr_002_728c:
    inc hl
    ld h, e
    add e
    rlca
    ld c, $01
    ld a, a
    ld a, a
    inc hl
    ld h, b
    nop
    ld a, h
    ret z

    rlca
    ld c, b
    add l
    rlca
    ld b, d
    ld bc, $7e7e
    add a
    rlca
    ld a, [bc]
    rlca
    ld h, e
    ld h, e
    ld [hl], a
    ld [hl], a
    ld a, a
    ld a, a
    ld l, e
    ld l, e
    dec h
    ld h, e
    dec b
    nop
    nop
    jr nc, jr_002_72e4

    ld a, b
    ld a, b
    dec h
    jr nc, jr_002_72bc

    dec sp
    dec sp
    dec de

jr_002_72bc:
    dec de
    add e
    rlca
    db $10
    add hl, hl
    ld h, e
    jp $1307


    inc bc
    nop
    nop
    inc a
    inc a
    inc hl
    ld h, [hl]
    jp Jump_002_5907


    ld b, $3e
    ld a, $80
    nop
    ret nz

    nop
    ldh a, [rSTAT]
    nop
    ld hl, sp+$03
    nop
    db $fc
    nop
    cp $83
    inc b
    db $dd
    xor a
    rlca

jr_002_72e4:
    and c
    ld b, c
    nop
    pop bc
    inc bc
    nop
    db $e3
    nop
    rst $30
    add [hl]
    inc b
    call $35e4
    nop
    rrca
    jr nz, jr_002_7315

    ld e, a
    jr nz, jr_002_7329

    ld c, a
    ld hl, $2058

jr_002_72fd:
    ld d, e
    dec h
    ld d, d
    ld a, [hl+]
    ld d, h
    inc h
    ld e, c
    ld b, c
    dec h
    ld e, d
    ldh [$3b], a
    ld hl, $225e
    ld e, l
    ld a, [hl+]
    ld d, l
    ld [hl+], a
    ld d, l
    ld hl, $2a56
    ld d, h

jr_002_7315:
    ld [hl+], a
    ld e, h
    ld hl, $005e
    ld a, a
    jr jr_002_737d

    and c

jr_002_731e:
    ld b, b
    nop
    pop bc
    ld b, d
    add c
    ld b, b
    add c
    nop
    ret nz

    and b
    ld b, b

jr_002_7329:
    db $10
    ld h, c
    inc c
    inc sp
    ld de, $000e
    ld b, $00
    rrca
    ld [bc], a
    add hl, de
    add hl, bc
    ldh a, [$d0]
    ld hl, $e001
    jr nz, jr_002_72fd

    nop
    add b
    nop
    nop
    db $10
    db $e3
    ld a, [bc]
    inc [hl]
    ld b, c
    nop
    ld e, c
    ldh [$63], a
    jr jr_002_73ad

    add b
    inc a
    inc h
    jp nz, $0182

    nop
    nop
    adc b
    ld [hl], b
    adc b
    inc b
    ld bc, $0002
    add b
    jr nz, jr_002_731e

    ld e, $e1
    nop
    cp a
    adc b
    jr nc, jr_002_73b6

    and b
    db $10
    pop hl
    ld bc, $7cfe
    add d
    ld bc, $04fe
    inc bc
    add h
    ld a, b
    ld c, b
    add [hl]
    add hl, bc
    or $10
    rrca
    add d
    ld bc, $8041
    sub b

jr_002_737d:
    ld h, b
    inc h
    jr jr_002_738a

    ld b, $02
    pop bc
    db $10
    ldh [rSC], a
    ld a, h
    inc c
    ld [hl], e

jr_002_738a:
    ld [bc], a
    pop af
    ld [hl+], a
    pop de
    ld [bc], a
    ld hl, $c23d
    add b
    ld a, h
    nop
    ld bc, $0104
    jr nz, @+$1b

    ld [hl+], a
    pop bc
    ld [$0407], sp
    ei
    and c
    ld b, d
    ld b, d
    add h
    ld [bc], a
    adc h
    ld [bc], a
    inc e
    ld [bc], a
    inc a
    dec c
    ld [hl], d
    nop

jr_002_73ad:
    rst $38
    add e
    ld [$a560], sp
    ld [$e002], sp
    add hl, hl

jr_002_73b6:
    ld a, d
    add h
    inc c
    ld a, [c]
    inc h
    jp c, $4a84

    add h
    ld l, d
    inc d
    ld [$3a44], a
    inc h
    ld a, [de]
    db $e4
    ld a, [de]
    inc b
    ld a, [$ca24]
    inc b
    ld [$7e81], a
    nop
    sbc c
    add b
    ld de, $1100
    ld [de], a
    ld bc, $0231
    inc b
    ld [hl+], a
    inc h
    ld [bc], a
    ld bc, $4202
    ld [bc], a
    ld bc, $27e0
    dec b
    ld [bc], a
    inc c
    ld [bc], a
    ldh a, [$0c]
    ld [$00f0], sp
    jr nc, jr_002_7420

    ld c, b
    ld a, [de]
    add l
    jr @-$78

    ld a, d
    add h
    ld a, d
    add l
    ld sp, $42ce
    cp h
    db $10
    rrca
    adc b
    ld [hl], b
    ld b, b
    add b
    db $10
    rrca
    ld e, $61
    ld [hl], c
    add b
    add c
    nop
    ld bc, $a500
    add hl, bc
    db $10
    inc b
    adc b
    ld [hl], b
    ld hl, sp+$06
    ld b, $c8
    dec b
    dec sp
    ld [bc], a
    ld b, [hl]
    and c
    ld b, $a6
    add hl, bc
    rlca

jr_002_7420:
    ld bc, $1de2
    adc c
    add hl, bc
    db $10
    ld bc, $817e
    ld b, c
    cp $01
    adc c
    add hl, bc
    jr nz, jr_002_7431

    ld a, [hl]

jr_002_7431:
    ld bc, $7f41
    nop
    rlca
    inc b
    sbc b
    inc h
    sbc b
    ld [hl], h
    adc b
    ld d, h
    adc b
    add a
    add hl, bc
    ld h, b
    rlca
    nop
    inc de
    inc b
    inc de
    ld c, $11
    ld a, [bc]
    ld de, $0987
    ld [hl], b
    rlca
    inc bc
    sbc h
    ld hl, $709e
    adc a
    ld d, [hl]
    adc c
    add a
    add hl, bc
    ld h, b
    ld a, [bc]
    or $09
    rst $30
    ld [$16e9], sp
    ld e, c
    and b
    ld de, $50e0
    ld b, e
    inc hl
    db $10
    ld bc, $1021
    ld c, b
    jr nz, jr_002_747f

    inc de
    jr nz, jr_002_7492

    ld b, b
    ld b, c
    add b
    ld l, e
    sub b
    add b
    ld l, [hl]
    rst $18
    jr nz, @+$10

    pop af
    ld hl, $189e

jr_002_747f:
    rlca
    jr z, @+$09

    sbc d
    ld b, d
    inc h
    sbc b
    ld a, [bc]
    inc h
    jr z, @+$06

    ld hl, $021e
    ld hl, $1e21
    jr jr_002_7496

jr_002_7492:
    and [hl]
    add hl, bc
    sbc h
    ld b, c

jr_002_7496:
    inc b
    ld [$0411], sp
    inc b
    ld [bc], a
    ld [bc], a
    ld bc, $8956
    add c
    db $76
    ret nz

    inc sp
    add h
    ld [hl], e
    xor [hl]
    ld d, c
    ld c, d
    sub c
    add b
    add [hl]
    add hl, bc
    ld [hl], c
    add [hl]
    add hl, bc
    ld h, b
    ld a, [bc]
    adc c
    inc b
    sbc c
    dec h
    sbc d
    ld [hl], l
    adc d
    ld d, l
    adc d
    inc b
    sbc e
    add [hl]
    ld a, [bc]
    ld a, [bc]
    ld [bc], a
    sbc c
    inc h
    sbc c
    add e
    add hl, bc
    ld h, h
    dec b
    ld bc, $191e
    ld h, b
    ld h, c
    add b
    ld b, c
    add c
    nop
    ld b, c
    ld bc, $0500
    ld bc, $9360
    ld l, h
    ld bc, $c460
    ld a, [bc]
    ld a, [hl+]
    dec bc
    nop
    pop bc
    nop
    ld [hl], c
    add b
    ccf
    ld b, b
    rrca
    jr nc, @+$13

    ld c, $0a
    ld b, c
    ld de, $0a00
    ld de, $110a
    inc d
    dec bc
    add hl, bc
    ld b, $80
    ld [hl], b
    ld sp, $c30c
    inc b
    db $e4
    and e
    ld [$e04d], sp
    ld hl, $0601
    ld d, $09
    ld c, b
    ld [bc], a
    add hl, bc
    ld [bc], a
    ld d, $09
    nop
    rlca
    inc bc
    nop
    ld b, $01
    ld e, $01
    ld a, l
    ld [bc], a
    ld h, d
    inc e
    inc b
    ld a, b
    and b
    ld e, h
    ld b, b
    inc a
    call nz, Call_002_4038
    jr c, jr_002_7533

    ld h, b
    ld [hl+], a
    nop
    ld c, $13
    inc b
    sub e
    adc [hl]
    ld d, c
    ld a, [bc]
    ld d, c
    nop
    db $d3
    inc b
    db $d3
    ld c, [hl]

jr_002_7533:
    sub c
    ld a, [bc]
    pop de
    add a
    ld a, [bc]
    adc b
    rlca
    nop
    db $d3
    inc b
    ld d, e
    adc [hl]
    ld d, c
    ld a, [bc]
    sub c
    add a
    add hl, bc
    ld h, b
    nop
    dec b
    add e
    add hl, bc
    ld h, c
    dec c
    adc c
    ld d, l
    adc d
    dec b
    sbc d
    inc h
    sbc d
    ld [hl], h

jr_002_7553:
    adc d
    ld d, [hl]
    adc c
    inc b
    sbc d
    inc h
    add h
    ld a, [bc]
    dec bc
    nop
    ld b, $84
    ld a, [bc]
    add hl, de
    nop
    ld d, l
    adc b
    add hl, bc
    ld h, a
    ld b, c
    ld bc, $1100
    ld de, $1010
    rrca
    ld l, $11
    ld de, $41e0
    and b
    ld b, c
    nop
    nop
    rrca
    ld bc, $0110
    ld a, $41
    nop

jr_002_757e:
    daa
    ld de, $3d00
    ld [bc], a
    add hl, de
    nop
    rrca
    pop bc

jr_002_7587:
    nop
    or c
    ld b, b
    ld e, $e1
    ld l, $11
    db $10
    rrca
    ld bc, $c308
    ld a, [bc]
    call nc, $0023
    rrca
    stop
    ret nz

    jr nz, jr_002_75be

    ld b, b
    ld b, d
    inc a
    ld [$0c16], sp
    ld [bc], a
    ld [bc], a
    ld bc, $0182
    ld b, c
    nop
    ld b, c
    inc de
    ld bc, $0240
    ld b, b
    add b
    nop
    rlca
    nop
    inc c
    inc bc
    add hl, hl
    ld d, $40
    jr c, jr_002_75cf

    ld h, b
    and b
    ld b, b

jr_002_75be:
    ld b, b
    nop
    call nz, $0608
    rlca
    inc de
    inc h
    inc de
    adc $31
    adc d
    ld [hl], c
    jr nz, jr_002_7553

    ld a, [bc]
    sbc c

jr_002_75cf:
    or b
    rlca
    or $84
    ld a, [bc]
    xor c
    rlca
    ld d, h
    adc d
    inc b
    sbc d
    inc h
    sbc c
    ld [hl], h
    adc d
    add h
    dec bc
    ld d, [hl]
    jr jr_002_757e

    ld [hl], l
    adc b
    ld d, h
    adc e
    nop

jr_002_75e8:
    sbc h
    jr nz, jr_002_7587

    ld [hl], h
    adc e
    ld d, h
    adc b
    ld bc, $0060
    sbc a

jr_002_75f3:
    ld e, $a1
    ld a, $41
    ld a, a
    add b
    call nz, Call_002_4100
    add h
    dec de
    rla
    rlca
    add b
    push bc
    ld [bc], a
    ld a, c
    add [hl]
    ld [hl], d
    adc b
    ld [de], a
    ld l, b
    add b
    ld e, d
    inc bc
    adc h
    dec b
    ld [bc], a
    ld bc, $000e
    ld de, $1102
    ld bc, $430e
    ld bc, $a300
    add hl, bc
    ld l, $0b
    jr nz, jr_002_75e8

    ret nz

    jr z, jr_002_75f3

    jr z, jr_002_7685

    stop
    ld a, h
    ld a, h
    add e
    ld b, c
    rst $38
    nop
    ld bc, $0011
    ld b, c
    db $10
    ld l, h
    add $0b
    or [hl]
    add hl, bc
    nop
    ld a, h
    add e
    add b
    ld a, l
    ld bc, $0008
    inc b
    nop
    and l
    ld [bc], a
    cp a
    adc e
    add hl, bc
    ld [hl], c
    dec c
    pop de
    adc d
    ld sp, $b300
    ld b, h
    or e
    adc [hl]
    ld [hl], c
    adc d
    ld d, c
    add b
    ld d, e
    add h
    add l
    dec bc
    dec sp
    nop
    sub e
    add h
    add hl, bc
    ld [hl], d
    inc bc
    sub c
    nop
    sub e
    add h
    adc e
    add hl, bc
    ei
    ld b, $88
    inc b
    sbc b
    ld h, $99
    ld [hl], h
    adc e
    add h
    dec bc
    ld d, [hl]
    nop
    sbc d
    add a
    dec bc
    ld e, h
    ld bc, $8b74
    add l
    add hl, bc
    add [hl]
    dec b
    ld [hl], b
    adc a
    ld d, h
    adc b
    ld bc, $899e
    ld a, [bc]

jr_002_7685:
    jp z, $0b86

    sbc b
    ld b, c
    ret nz

    ld bc, $0bc3
    ld l, $02
    ld [hl+], a
    nop
    daa
    ld b, c
    nop
    dec h
    dec b
    ld b, b
    and l
    ld b, h
    cp e
    ld b, b
    cp d
    ld b, c
    ld bc, $0500
    cp a
    ld b, b
    ld bc, $7800
    add b
    adc b
    dec bc
    sbc d
    add hl, bc
    nop
    inc c
    nop
    rrca
    nop
    ld e, $00
    rrca
    nop
    ld [$0025], sp
    ld b, c
    halt
    inc b

jr_002_76bb:
    ld b, h
    nop
    halt
    inc d
    rst $00
    inc c
    halt
    jp hl


    dec hl
    nop
    ld e, $13
    inc b
    db $d3
    ld c, $f1
    ld a, [bc]
    or c
    nop
    or e
    inc b
    or e
    ld c, $f1
    ld a, [bc]
    pop de
    nop
    inc c
    nop
    ld e, $58
    and a
    jr jr_002_7746

    ld b, b
    ccf
    ld b, b
    cp a
    add b
    ld a, a
    ld h, d
    dec e
    and e
    inc c
    and b
    inc bc
    ld h, d
    sbc l
    ld h, b
    sbc [hl]
    and l
    inc c
    xor b
    rlca
    ld b, d
    cp h
    jr z, jr_002_76bb

    inc hl
    call z, $f000
    and h

Call_002_76fc:
    ld a, [bc]
    add hl, hl
    inc b
    ldh a, [rNR44]
    call z, $c428
    xor a
    inc c
    ret nz

    jr z, jr_002_7709

jr_002_7709:
    ld [bc], a
    ld hl, sp+$50
    adc h
    ld b, c
    jr z, @-$3a

    xor a
    inc c
    ldh [rDIV], a
    ret nz

    nop
    jr nc, jr_002_7718

jr_002_7718:
    inc c
    call nz, $cc0b
    nop
    inc b
    ld b, c
    nop
    ld [$0041], sp
    db $10
    inc bc
    nop
    inc l
    nop
    inc hl
    ld b, c
    nop
    ld b, b
    add h
    inc c
    add $41
    ld bc, $4100
    ld [bc], a
    nop
    ld [bc], a
    call nz, $3400
    adc b
    dec c
    dec bc
    ld b, c
    jr nz, jr_002_773f

jr_002_773f:
    add a
    dec c
    nop
    ret nc

    rlca
    sbc $0e

jr_002_7746:
    ld a, a
    add b
    rst $38
    sbc a
    ldh [$b0], a
    ret nz

    and a
    ret nz

    xor l
    ret nz

    xor e
    ret nz

    xor a
    ret nz

    xor a
    dec c
    ld d, b
    ret z

    dec c
    ld e, [hl]
    ld b, $c0
    sbc a
    ldh [$80], a
    rst $38
    rst $38
    ld a, a
    xor a
    dec c
    ld [hl], b
    inc c
    pop hl
    nop
    jp $8700


    nop
    ldh a, [rIF]
    ld e, $00
    jp Jump_002_783c


    inc h
    rst $38
    ld [$ffc3], sp
    ld a, b
    add a
    rrca
    nop
    pop hl
    ld e, $3c
    and h
    inc c
    ld h, a
    add l
    dec c
    sub b
    add e
    inc c
    ld h, [hl]
    add l
    dec c
    xor d
    rra
    ret


    ldh [$eb], a
    ret nz

    xor a
    ret nz

    and a
    ret z

    or [hl]
    ret z

    sub h
    add sp, -$30
    add sp, -$28
    ldh [$f5], a
    inc bc
    rst $10
    inc bc
    sub e
    rlca
    dec de
    rlca
    dec bc
    rla
    add hl, hl
    rla
    ld l, l
    inc de
    push hl
    inc de
    ld b, a
    inc d
    inc hl
    ld b, a
    jr z, @-$3a

    dec h
    nop
    dec b
    inc h
    jr jr_002_77d1

    ld h, [hl]
    and l
    ld b, d
    ld b, c
    ld [hl], d
    add c
    ld c, c
    ld a, [hl]
    add c
    dec b

Jump_002_77c3:
    dec a
    jp nz, $e618

    ld b, h
    cp b
    ld b, d
    ld b, b
    and b
    xor a
    ld c, $20
    rst $00
    rlca

jr_002_77d1:
    call nc, $0e83
    ld b, h
    add h
    ld bc, $0394
    cp $02
    db $fc
    inc b
    jp Jump_002_5306


    push bc
    dec b
    ld h, l
    xor a
    ld c, $4f
    nop
    nop
    rst $38
    dec b
    nop
    nop
    inc e
    inc e
    ld [hl+], a
    ld [hl+], a
    inc hl
    ld h, e
    nop
    ld a, a
    call nz, $0a00
    inc bc
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    inc hl
    ld h, e
    add l

jr_002_77ff:
    nop
    ld [de], a
    jp $1300


    ld bc, $3e3e
    inc hl
    ld h, e
    nop
    ld h, b
    adc $00
    jr z, jr_002_7834

    ld h, e
    add e
    nop
    ld e, $01
    ld a, a
    ld a, a
    inc hl
    ld h, b
    nop
    ld a, h
    ret z

jr_002_781b:
    nop
    ld c, b
    adc e
    nop
    ld b, d
    ld bc, $6060
    add l
    nop
    jr nz, jr_002_782a

    ld h, b
    ld h, b
    ld l, a

jr_002_782a:
    ld l, a
    add a
    nop
    ld a, [hl+]
    dec h
    ld h, e
    add l
    nop
    ld a, [bc]
    add e

jr_002_7834:
    nop
    ld c, $01
    inc a
    inc a
    add hl, hl
    jr jr_002_77ff

Jump_002_783c:
    nop
    add e
    ld bc, $0f0f
    dec h
    ld b, $23
    ld h, [hl]
    push bc
    nop
    add e
    inc b
    ld h, a
    ld h, a
    ld l, h
    ld l, h
    ld a, b
    ret z

    nop
    xor b
    dec hl
    ld h, b
    add e
    nop
    ld c, [hl]
    rlca
    ld h, e
    ld h, e
    ld [hl], a
    ld [hl], a
    ld a, a
    ld a, a
    ld l, e
    ld l, e
    add a
    nop
    ld a, d
    rlca
    ld h, e
    ld h, e
    ld [hl], e
    ld [hl], e
    ld a, e
    ld a, e
    ld l, a
    ld l, a
    add e
    nop
    xor h
    ret


    nop
    ld [hl], e
    dec h
    ld h, e
    adc e
    nop
    ld l, $01

Call_002_7877:
    ld a, [hl]
    ld a, [hl]
    add l
    nop
    ld e, h
    add a
    nop
    ld [de], a
    inc bc
    ld l, h
    ld l, h
    ld h, [hl]
    ld h, [hl]
    add a
    nop
    sbc $05
    ld h, b
    ld h, b
    ld a, $3e
    inc bc
    inc bc
    add a
    nop
    inc l
    dec hl
    jr jr_002_781b

    nop
    ld [hl], b
    adc c
    nop
    add sp, $25
    ld h, [hl]
    add a
    nop
    add d
    jp $3101


    ld bc, $3838
    adc e
    nop
    add [hl]
    add l
    nop
    ld [hl+], a
    ld bc, $3f3f
    add a
    ld bc, $831a
    nop
    ld [bc], a
    ld [bc], a
    ld e, l
    ld e, l
    ld d, c
    ret z

    ld bc, $2978
    nop
    add l
    nop
    ld e, h
    adc e
    ld bc, $0182
    ret nz

    ret nz

    rlc c
    ld hl, $0085
    ld c, h
    add l
    ld bc, $00a2
    ld e, $c8
    ld bc, $09b8
    ld c, $0e
    ld d, $16
    ld h, $26
    ld b, [hl]
    ld b, [hl]
    ld a, a
    ld a, a
    and l
    nop
    ld e, h
    add l
    nop
    ld b, d
    ld bc, $7e7e
    inc hl
    inc bc
    add e
    nop
    ld e, $05
    nop
    nop
    jr nc, jr_002_7921

    ld a, b
    ld a, b
    inc hl
    jr nc, jr_002_78f9

    inc sp
    inc sp
    dec de

jr_002_78f9:
    dec de
    dec h
    nop
    jp $9f00


    add e
    nop
    ld a, [$3e01]
    ld a, $ff
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

jr_002_7921:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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

Jump_002_797f:
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

Call_002_7a3c:
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

Call_002_7afc:
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

Jump_002_7c7c:
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

Jump_002_7e00:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

Call_002_7e3c:
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

Jump_002_7eff:
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

Jump_002_7f7c:
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
