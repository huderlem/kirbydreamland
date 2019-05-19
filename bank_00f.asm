SECTION "ROM Bank $00f", ROMX[$4000], BANK[$f]

    ld a, [bc]
    ld b, b
    ld e, $40
    ld e, [hl]
    ld b, b
    ld a, [hl]
    ld b, b
    and [hl]
    ld b, b
    ld [bc], a
    ld b, d
    ret nc

    ld b, d
    ld b, l
    ld b, d
    ret nc

    ld b, d
    ld c, a
    ld b, d
    ret nc

    ld b, d
    and c
    ld b, d
    call nc, $c942
    ld b, d
    ld sp, hl
    ld b, d
    or d
    ld b, l
    cp c
    ld b, l
    ld hl, $2546
    ld b, [hl]
    sub d
    ld b, [hl]
    and d
    ld b, [hl]
    jp z, $e045

    ld b, l
    ret nc

    ld b, [hl]
    rst $10
    ld b, [hl]
    inc e
    ld b, a
    dec sp
    ld b, a

Call_00f_4036:
    or l
    ld b, a
    cp c
    ld b, a
    inc c
    ld c, b
    jr z, jr_00f_4086

    ld c, b
    ld e, l
    ld c, a
    ld e, l
    db $d3
    ld c, b
    db $dd
    ld c, b
    db $fc
    ld c, b
    inc c
    ld c, c
    ld a, l
    ld c, b
    sub e
    ld c, b
    ld a, [hl-]
    ld c, c
    ld d, e
    ld c, c
    or e
    ld c, c
    ret


    ld c, c
    ld d, [hl]
    ld e, l
    ld h, b
    ld e, l
    add hl, bc
    ld c, d
    inc de
    ld c, d
    inc l
    ld c, d
    sbc h
    ld c, d
    and b
    ld c, d
    jp c, $9c4a

    ld c, d
    inc d
    ld c, e
    ld a, [hl+]
    ld c, e
    ld h, a
    ld c, e
    ld l, e
    ld c, e
    ld [hl], l
    ld c, e
    ld a, a
    ld c, e
    add [hl]
    ld c, e
    sub b
    ld c, e
    sub a
    ld c, e
    sbc e
    ld c, e
    xor [hl]
    ld c, e
    scf
    ld c, a
    sub d
    ld c, a
    jp nz, $fc50

    ld d, b

jr_00f_4086:
    or h
    ld d, c
    cp b
    ld d, c
    ld e, b
    ld d, d
    adc c
    ld d, d
    dec bc
    ld e, l
    ld [de], a
    ld e, l
    ld c, [hl]
    ld d, e
    ld [hl], e
    ld d, e
    dec d
    ld d, h
    inc [hl]
    ld d, h
    sub h
    ld d, h
    xor l
    ld d, h
    jr nc, jr_00f_40f5

    inc [hl]
    ld d, l
    ld h, $5d
    dec l
    ld e, l
    adc b
    ld e, l
    inc [hl]
    ld e, [hl]
    adc h
    ld e, l
    inc [hl]
    ld e, [hl]
    and l
    ld e, l
    call nz, $e35d
    ld e, l
    rst $38
    ld e, l
    inc [hl]
    ld e, [hl]
    rrca
    ld e, [hl]
    jr c, jr_00f_411a

    inc [hl]
    ld e, [hl]
    ret


    ld b, d
    ld sp, hl
    ld b, d
    sbc e
    ld c, e
    xor [hl]
    ld c, e
    ld d, [hl]
    ld e, l
    ld h, b
    ld e, l
    ld h, $5d
    dec l
    ld e, l
    sbc c
    ld d, [hl]
    ld sp, hl
    ld e, e
    call nz, $f956
    ld e, e
    rlca
    ld d, a
    ld sp, hl
    ld e, e
    ld de, $f957
    ld e, e
    daa
    ld d, a
    ld sp, hl
    ld e, e
    ld l, $57
    ld sp, hl
    ld e, e
    dec sp
    ld d, a
    ld sp, hl
    ld e, e
    adc $56
    ld sp, hl
    ld e, e
    ld [$f956], a
    ld e, e
    inc bc
    ld d, a
    ld sp, hl

jr_00f_40f5:
    ld e, e
    ld c, b
    ld d, a
    ld sp, hl
    ld e, e
    add c
    ld e, b
    ld sp, hl
    ld e, e
    sub a
    ld e, b
    ld sp, hl
    ld e, e
    xor d
    ld e, b
    ld sp, hl
    ld e, e
    or h
    ld e, b
    ld sp, hl
    ld e, e
    ret nc

    ld e, b
    ld sp, hl
    ld e, e
    db $dd
    ld e, b
    ld sp, hl
    ld e, e
    di
    ld e, b
    ld sp, hl
    ld e, e
    db $fd
    ld e, b
    ld sp, hl
    ld e, e

jr_00f_411a:
    inc de
    ld e, c
    ld sp, hl
    ld e, e
    jr nz, jr_00f_4179

    ld sp, hl
    ld e, e
    jr nc, @+$5b

    ld sp, hl
    ld e, e
    ld b, e
    ld e, c
    ld sp, hl
    ld e, e
    ld d, [hl]
    ld e, c
    ld sp, hl
    ld e, e
    ld l, c
    ld e, c
    ld sp, hl
    ld e, e
    ld h, a
    ld e, e
    ld sp, hl
    ld e, e
    ld a, b
    ld e, e
    ld sp, hl
    ld e, e
    sbc l
    ld e, e
    ld sp, hl
    ld e, e
    cp c
    ld e, e
    ld sp, hl
    ld e, e
    rst $08
    ld e, e
    ld sp, hl
    ld e, e
    call c, $f95b
    ld e, e
    and $5b
    ld sp, hl
    ld e, e
    nop
    ld b, b
    ld [$2540], sp
    inc [hl]
    dec de
    ld c, d
    ld [$cd40], sp
    dec [hl]
    ld a, [de]
    ld c, d
    ld [$a640], sp
    dec [hl]
    cp [hl]
    ld b, e
    ld [$bb40], sp
    dec [hl]
    cp [hl]
    ld b, e
    ld [$c440], sp
    dec [hl]
    or d
    ld b, e
    ld [$bb40], sp
    dec [hl]
    nop
    ld b, b
    ld [$2140], sp
    inc [hl]
    nop

jr_00f_4179:
    ld c, e
    cpl
    ld c, b
    ld hl, $0b34
    ld c, c
    cp h
    ld c, h
    ld hl, $2734
    ld b, h
    ld [bc], a
    ld b, e
    and a
    dec [hl]
    ret


    ld c, e
    ld [$af40], sp
    dec [hl]
    or b
    ld c, e
    ld [$ab40], sp
    dec [hl]
    db $f4
    ld c, e
    ld a, [hl+]
    ld b, d
    or e
    dec [hl]
    ld [hl], a
    ld b, h
    ld b, h
    ld b, d
    or e
    dec [hl]
    ld [hl], h
    ld b, h
    nop
    ld b, b
    add l
    ld [hl], $69
    ld c, a
    ld [$2140], sp
    inc [hl]
    add e
    ld c, [hl]
    ld [$3e40], sp
    dec [hl]
    ld l, c
    ld c, a
    ld [$2140], sp
    inc [hl]
    ld d, [hl]
    ld e, a
    ld h, c
    ld h, c
    ld hl, $8734
    ld d, b
    ld [$2140], sp
    inc [hl]
    xor c
    ld d, c
    ld [$8f40], sp
    dec [hl]
    or e
    ld d, c
    ld [$2140], sp
    inc [hl]
    ld c, d
    ld [hl], b
    ld [$2140], sp
    inc [hl]
    call z, $085b
    ld b, b
    dec h
    inc [hl]
    ld l, $6d
    ld [$2140], sp
    inc [hl]
    ld e, d
    ld l, [hl]
    ld [$2140], sp
    inc [hl]
    ld l, l
    ld l, [hl]
    ld [$2140], sp
    inc [hl]
    add $72
    ld [$1f40], sp
    ld [hl], $4a
    ld [hl], h
    rst $10
    ld a, d
    ld hl, $d934
    ld [hl], d
    ld [$2140], sp
    inc [hl]
    nop
    nop
    nop
    rrca
    inc b
    ld b, e
    ld de, $4318
    dec d
    ld [hl+], a
    ld b, e
    ld d, $2c
    ld b, e
    jr jr_00f_4249

    ld b, e
    rra
    ld b, b
    ld b, e
    ld hl, $434a
    add hl, hl
    ld d, h
    ld b, e
    jr nc, @+$60

    ld b, e

jr_00f_4220:
    jr nc, @+$6a

    ld b, e
    ld sp, $4372
    add hl, sp
    add [hl]
    ld b, e
    dec a
    sub b
    ld b, e
    ld b, b
    sbc d
    ld b, e
    ld b, d
    and h
    ld b, e
    ld b, e
    xor [hl]
    ld b, e
    ld b, [hl]

Call_00f_4236:
    cp b
    ld b, e
    ld b, a
    jp nz, $4a43

    call z, Call_00f_4f43
    sub $43
    ld c, [hl]
    ldh [rSCX], a
    rst $38
    nop
    nop
    nop
    dec b

jr_00f_4249:
    db $eb
    ld b, e
    ld a, [bc]
    or $43
    rst $38
    nop
    nop
    nop
    ld a, [bc]
    ld e, e
    ld b, h
    rrca
    dec bc
    ld b, h
    ld [de], a
    ld bc, $1544
    dec d
    ld b, h
    add hl, de
    rra
    ld b, h
    dec de
    add hl, hl
    ld b, h
    rra
    inc sp
    ld b, h
    ld hl, $443d
    inc h
    ld b, a
    ld b, h
    ld h, $51
    ld b, h
    ld a, [hl+]
    ld [hl], b
    ld b, h
    dec hl
    ld a, d
    ld b, h
    ld a, [hl+]
    add h
    ld b, h
    cpl
    sbc b
    ld b, h
    jr nc, jr_00f_4220

jr_00f_427e:
    ld b, h
    ld [hl-], a
    xor h
    ld b, h
    jr c, @-$48

    ld b, h
    ld a, [hl-]
    ret nz

    ld b, h
    dec sp
    jp z, $3f44

    sbc $44
    ld b, c
    add sp, $44
    ld b, d
    ld a, [c]
    ld b, h
    ld b, h
    db $fc
    ld b, h
    ld b, l
    ld b, $45
    ld b, [hl]
    db $10
    ld b, l
    ld c, h
    ld a, [de]
    ld b, l
    rst $38
    nop
    nop
    nop
    ld bc, $4556
    ld [bc], a
    sub h
    ld b, l
    inc bc
    adc d
    ld b, l
    ld b, $24
    ld b, l
    ld b, $6c
    ld b, l
    rlca
    ld h, d
    ld b, l
    add hl, bc
    ld l, $45
    add hl, bc
    ld c, h
    ld b, l
    ld a, [bc]
    jr c, jr_00f_4304

    dec bc
    add b
    ld b, l
    dec bc
    ld b, d
    ld b, l
    inc c
    ld c, h
    ld b, l
    rst $38
    nop
    nop
    nop
    rlca
    sbc [hl]
    ld b, l
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    inc b
    ld l, $45
    inc b
    inc h
    ld b, l
    rlca
    jr c, jr_00f_4325

    ld c, $56
    ld b, l
    inc de
    ld h, d
    ld b, l
    inc de
    ld b, d
    ld b, l
    inc de
    ld c, h
    ld b, l
    rla
    ld l, h
    ld b, l
    inc e
    add b
    ld b, l
    jr nz, jr_00f_427e

    ld b, l
    dec h
    sub h
    ld b, l
    rst $38
    nop
    nop
    nop
    ld d, $9e
    ld b, l
    ld a, [de]
    xor b
    ld b, l
    rst $38
    rst $38

jr_00f_4304:
    rrca
    dec b
    nop
    nop
    ld l, h
    ld c, h
    ld h, b
    ld c, l
    adc h
    inc [hl]
    ld de, $f805
    nop
    cp a
    ld c, l
    or e
    ld d, d
    inc c
    scf
    ld de, $0005
    nop
    ld l, h
    ld c, h
    ld h, b
    ld c, l
    adc h
    inc [hl]
    dec d
    inc b
    nop

jr_00f_4325:
    nop
    xor [hl]
    ld b, l
    rst $38
    ld b, e
    adc h
    inc [hl]
    ld d, $02
    nop
    nop
    push de
    ld c, h
    inc c
    ld c, [hl]
    ld e, $37
    jr jr_00f_433c

    nop
    nop
    sbc $4c

jr_00f_433c:
    ld c, b
    ld c, [hl]
    ld e, $37
    rra
    ld bc, $0000
    ld b, a
    ld b, [hl]
    add $45
    call $2136
    dec b
    nop
    nop
    xor [hl]
    ld b, l
    rst $38
    ld b, e
    adc h
    inc [hl]
    add hl, hl
    dec b
    ld [$a300], sp
    ld c, l
    cp a
    ld d, d
    inc c
    scf
    jr nc, jr_00f_4362

    nop
    nop

jr_00f_4362:
    push de
    ld c, l
    and h
    ld b, h
    call $3036
    dec b
    ld hl, sp+$00
    cp a
    ld c, l
    or e
    ld d, d
    inc c
    scf
    ld sp, $0002
    ld [$4dd5], sp
    and h
    ld b, h
    call $3336
    inc bc
    nop
    nop
    sbc $4c
    ld c, b
    ld c, [hl]
    ld e, $37
    add hl, sp
    inc b
    nop
    nop
    sbc $4c
    ld c, b
    ld c, [hl]
    ld e, $37
    dec a
    ld bc, $0000
    ld b, a
    ld b, [hl]
    add $45
    call Call_00f_4036
    dec b
    nop
    nop
    call z, $2f45
    ld b, h
    adc h
    inc [hl]
    ld b, d
    dec b
    nop
    nop
    db $dd
    ld c, l
    jp nc, $234f

    dec [hl]
    ld b, e
    dec b
    ld [$bf00], sp
    ld c, l
    or e
    ld d, d
    inc c
    scf
    ld b, [hl]
    dec b
    nop
    nop
    xor [hl]
    ld b, l
    rst $38
    ld b, e
    adc h
    inc [hl]
    ld b, a
    inc bc
    nop
    nop
    push de
    ld c, h
    inc c
    ld c, [hl]
    ld e, $37
    ld c, d
    inc b
    nop
    nop
    sbc $4c
    ld c, b
    ld c, [hl]
    ld e, $37
    ld c, a
    ld [bc], a
    nop
    nop
    ld b, a
    ld b, [hl]
    and h
    ld b, h
    call Call_00f_4e36
    inc bc
    ld a, [$7200]
    ld c, c
    dec e
    ld b, e
    ld c, l
    inc [hl]
    ld [bc], a
    dec b
    ld b, $00
    nop
    ld c, b
    ld c, c
    ld [$6540], sp
    inc [hl]
    nop
    ld a, [bc]
    ld b, $00
    nop
    ld c, b
    ld c, c
    ld [$6540], sp
    inc [hl]
    ld bc, $0112
    nop
    nop
    ld b, a
    ld b, [hl]
    add $45
    call $0f36
    ld b, $00
    nop
    ei
    ld c, [hl]
    xor b
    ld d, b
    ld h, d
    dec [hl]
    dec d
    ld b, $f8
    nop
    and e
    ld c, l
    cp a
    ld d, d
    inc c
    scf
    add hl, de
    inc b
    nop
    nop
    xor [hl]
    ld b, l
    rst $38
    ld b, e
    adc h
    inc [hl]
    dec de
    inc bc
    nop
    nop
    push de
    ld c, l
    and h
    ld b, h
    call $1f36
    ld b, $00
    nop
    xor [hl]
    ld b, l
    rst $38
    ld b, e
    adc h
    inc [hl]
    ld hl, $0001
    nop
    ld b, a
    ld b, [hl]
    add $45
    call $2436
    ld b, $00
    nop
    jr nc, jr_00f_449b

    ld a, [hl+]
    ld d, b
    dec [hl]
    dec [hl]
    ld h, $00
    ret nc

    nop
    ld b, a
    ld b, [hl]
    db $dd
    ld c, l
    call $0a36
    nop
    ldh [rP1], a
    cp d
    ld c, a
    inc bc
    ld d, c
    add hl, hl
    inc [hl]
    ld b, $37
    ld b, $f8
    nop
    dec sp
    ld b, [hl]
    cp d
    ld c, l
    call $2a36
    ld [bc], a
    nop
    nop
    push de
    ld c, h
    inc c
    ld c, [hl]
    ld e, $37
    dec hl
    ld [bc], a
    nop
    ld a, [bc]
    push de
    ld c, h
    and h
    ld b, h
    ld e, $37
    ld a, [hl+]
    ld b, $00
    nop
    ei
    ld c, [hl]
    xor b
    ld d, b
    ld h, d
    dec [hl]
    dec l
    ld b, $00
    nop
    sbc $4c
    ld c, b
    ld c, [hl]
    ld e, $37
    cpl
    ld b, $f8

jr_00f_449b:
    nop
    cp a
    ld c, l
    or e
    ld d, d
    inc c
    scf
    jr nc, jr_00f_44a9

    nop
    nop
    dec sp
    ld b, [hl]
    cp d

jr_00f_44a9:
    ld c, l
    call $3236
    nop
    cp d
    nop
    ld b, a
    ld b, [hl]
    db $dd
    ld c, l
    call $3836
    nop
    cp b
    nop
    ld b, a
    ld b, [hl]
    db $dd
    ld c, l
    call $3a36
    ld b, $00
    nop
    db $dd
    ld c, l
    cp d
    ld c, a
    inc hl
    dec [hl]
    dec sp
    ld [bc], a
    nop
    nop
    push de
    ld c, h
    inc c
    ld c, [hl]
    ld e, $37
    dec sp
    ld b, $f8
    nop
    and e
    ld c, l
    cp a
    ld d, d
    inc c
    scf
    ccf
    ld b, $00
    nop
    or e
    ld c, [hl]
    ld a, [hl+]
    ld d, b
    ld b, a
    dec [hl]
    ld b, c
    ld b, $f0
    nop
    dec sp
    ld b, [hl]
    cp d
    ld c, l
    call Call_00f_4236
    ld b, $08
    nop
    and e
    ld c, l
    cp a
    ld d, d
    inc c
    scf
    ld b, h
    ld bc, $0000
    ld b, a
    ld b, [hl]
    add $45
    call Call_00f_4536
    ld [bc], a
    nop
    nop
    push de
    ld c, h
    inc c
    ld c, [hl]
    ld e, $37
    ld b, [hl]
    ld b, $08
    nop
    and e
    ld c, l
    cp a
    ld d, d
    inc c
    scf
    ld c, h
    ld b, $00
    nop
    or e
    ld c, [hl]
    ld a, [hl+]
    ld d, b
    ld b, a
    dec [hl]
    ld b, $04
    nop
    nop
    sbc $4c
    ld c, b
    ld c, [hl]
    ld e, $37
    add hl, bc
    inc b
    nop
    nop
    xor [hl]
    ld b, l
    rst $38
    ld b, e

Call_00f_4536:
    adc h
    inc [hl]
    ld a, [bc]
    rlca
    nop
    nop
    call z, $2f45
    ld b, h
    adc h
    inc [hl]
    dec bc
    inc de
    ld sp, hl
    nop
    add a
    ld c, l
    ld e, a
    ld c, a
    dec d
    scf
    inc c
    inc de
    ld sp, hl
    nop
    add a
    ld c, l
    ld e, a
    ld c, a
    dec d
    scf
    ld bc, $080e
    nop
    ld c, [hl]
    ld c, c
    ld [$5940], sp
    inc [hl]
    inc b
    nop
    rlca
    inc de
    nop
    nop
    sbc $4c
    ld c, b
    ld c, [hl]
    ld e, $37
    ld b, $17
    ld [bc], a
    nop
    ld h, e
    ld c, l
    dec bc
    ld c, a
    dec d
    scf
    ld c, $17
    ld [bc], a
    nop
    ld a, l
    ld c, [hl]
    ld [$3540], sp
    dec [hl]
    dec bc
    inc e
    nop
    nop
    jr nc, jr_00f_45d4

    ld a, [hl+]
    ld d, b
    dec [hl]
    dec [hl]
    inc bc
    jr nz, jr_00f_458d

jr_00f_458d:
    nop
    ld b, d
    ld c, [hl]
    ld [hl-], a
    ld d, b
    dec [hl]
    dec [hl]
    ld [bc], a
    dec h
    nop
    nop
    ld h, e
    ld c, l
    dec bc
    ld c, a
    dec d
    scf
    rlca
    ld d, $02
    push de
    and [hl]
    ld d, b
    ld [$2140], sp
    inc [hl]
    nop
    ld a, [de]
    nop
    nop
    ld e, c
    ld d, d
    ld [$2140], sp
    inc [hl]
    nop
    nop
    nop
    ld [$45c0], sp
    rst $38
    nop
    nop
    nop
    ld bc, $45c0
    rst $38
    ld [$0002], sp
    ld b, $2b
    ld d, l
    jr nc, jr_00f_461e

    add e
    inc [hl]
    nop
    nop
    nop
    ld a, [bc]
    inc bc
    ld b, [hl]
    dec bc
    db $e4
    ld b, l
    dec bc

jr_00f_45d4:
    ld hl, sp+$45
    inc d
    dec c
    ld b, [hl]
    dec d
    xor $45
    ld d, $17
    ld b, [hl]
    rst $38
    nop
    nop
    nop
    rst $38
    dec bc
    nop
    ret nz

    nop
    ld [hl+], a
    ld d, e
    ld b, h
    ld d, e
    adc h
    inc [hl]
    dec d
    nop
    ret nz

    nop
    ld [hl+], a
    ld d, e
    ld b, h
    ld d, e
    adc h
    inc [hl]
    dec bc
    ld b, $00
    nop
    ld c, $49
    ld [$3540], sp
    inc [hl]
    rst $38
    ld a, [bc]
    ld b, $e0
    nop
    add hl, sp
    ld d, h
    push de
    ld d, h
    call $1436
    ld b, $e0
    nop
    add hl, sp
    ld d, h
    push de
    ld d, h
    call $1636
    ld b, $00
    nop
    dec hl
    ld d, l
    adc c

jr_00f_461e:
    ld d, [hl]
    adc h
    inc [hl]
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    ld bc, $464c
    ld bc, $4656
    rlca
    ld h, b
    ld b, [hl]
    dec bc
    ld l, d
    ld b, [hl]
    dec bc
    ld b, c
    ld b, [hl]
    ld c, $74
    ld b, [hl]
    ld c, $7e
    ld b, [hl]
    ld c, $88
    ld b, [hl]
    rst $38
    inc b
    dec bc
    ld [$3f00], sp
    ld c, c
    ld [$3b40], sp
    inc [hl]
    rlca
    nop
    inc bc
    nop
    nop
    call nz, $e053
    ld b, d
    call $0736
    ld bc, $0008
    ld d, $56
    ld [$db40], sp
    inc [hl]
    dec b
    ld a, [bc]
    nop
    nop
    ld [hl], d
    ld b, l
    add a
    ld c, l
    ret nz

    inc [hl]
    ld [bc], a
    dec bc
    nop
    nop
    ld d, b
    ld b, [hl]
    sbc l
    ld d, a
    call $0336
    ld c, $00
    nop
    push de
    ld d, a
    inc sp
    ld e, b
    adc h
    inc [hl]
    inc b
    ld c, $00
    nop
    xor [hl]
    ld d, a
    ld b, l
    ld e, b
    adc h
    inc [hl]
    rlca
    ld c, $06
    nop
    push de
    ld d, a
    inc sp
    ld e, b
    adc h
    inc [hl]
    nop
    nop
    nop
    nop
    and [hl]
    ld b, [hl]
    ld [bc], a
    push bc
    ld b, [hl]
    rlca
    cp d
    ld b, [hl]
    add hl, bc
    or b
    ld b, [hl]
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    inc bc
    nop
    nop
    adc [hl]
    ld d, e
    jr c, jr_00f_4702

    call $0936
    inc bc
    nop
    nop
    ld h, h
    ld d, e
    rst $38
    ld d, e
    call $0736
    ld b, $00
    nop
    ld c, b
    ld c, c
    ld [$6540], sp
    inc [hl]
    nop
    ld [bc], a
    ld b, $00
    nop
    ld c, b
    ld c, c
    ld [$6540], sp
    inc [hl]
    ld bc, $0000
    nop
    add hl, bc
    ld [$ff47], sp
    nop
    nop
    nop
    ld bc, $46ea
    ld b, $fe
    ld b, [hl]
    ld b, $12
    ld b, a
    add hl, bc
    db $f4
    ld b, [hl]
    ld [bc], a
    ld [$ff47], sp
    rlca
    ld bc, $0000
    ld l, e
    ld d, l
    ld [$2140], sp
    inc [hl]
    ld de, $0009
    nop
    ld l, e
    ld d, l
    ld [$2140], sp
    inc [hl]
    inc b
    ld b, $00
    nop

jr_00f_4702:
    ld e, b
    ld d, l
    or e
    ld d, [hl]
    ld hl, $0f34
    ld [bc], a
    nop
    nop
    ld e, b
    ld d, l
    or e
    ld d, [hl]
    ld hl, $1134
    ld b, $00
    nop
    ld e, b
    ld d, l
    or e
    ld d, [hl]
    ld hl, $0034
    nop
    nop
    ld [bc], a
    ld h, l
    ld b, a
    dec b
    sub a
    ld b, a
    ld [$475a], sp
    add hl, bc
    add e
    ld b, a
    add hl, bc
    and c
    ld b, a
    dec bc
    xor e
    ld b, a
    dec c
    ld l, a
    ld b, a
    ld c, $8d
    ld b, a
    rrca
    ld a, c
    ld b, a
    rst $38
    nop
    nop
    nop
    ld bc, $4783
    ld bc, $478d
    ld [bc], a
    xor e
    ld b, a
    inc bc
    and c
    ld b, a
    dec b
    ld h, l
    ld b, a
    ld b, $79
    ld b, a
    rlca
    ld e, d
    ld b, a
    add hl, bc
    ld l, a
    ld b, a
    rlca
    sub a
    ld b, a
    rst $38
    ld [$0007], sp
    nop
    ld c, b
    ld c, c
    ld [$6540], sp
    inc [hl]
    ld [$0502], sp
    nop
    nop
    adc $52
    ld [$5840], sp
    ld [hl], $0d
    add hl, bc
    nop
    nop
    adc $52
    ld [$5840], sp
    ld [hl], $0f
    ld b, $00
    nop
    adc $52
    ld [$5840], sp
    ld [hl], $09
    ld bc, $00e0
    xor l
    ld d, d
    inc [hl]
    ld d, e
    ld e, b
    ld [hl], $0e
    ld bc, $00e0
    xor l
    ld d, d
    inc [hl]
    ld d, e
    ld e, b
    ld [hl], $05
    rlca
    nop
    nop
    ld [hl], d
    ld b, l
    add $45
    cp c
    inc [hl]
    add hl, bc
    inc bc
    inc b
    nop
    ld [hl], d
    ld b, l
    and d
    ld d, l
    cp c
    inc [hl]
    dec bc
    ld [bc], a
    nop
    nop
    ld b, a
    ld b, [hl]
    adc $42
    call $0036
    nop
    nop
    rst $38
    nop
    nop
    nop
    dec b
    rst $08
    ld b, a
    ld b, $e3
    ld b, a
    rlca
    db $ed
    ld b, a
    ld [$47f7], sp
    dec bc
    ld bc, $1248
    reti


    ld b, a
    rst $38
    add hl, bc
    dec b
    nop
    nop
    rst $20
    ld d, h
    ld [hl], $56
    adc h
    inc [hl]
    ld bc, $0012
    nop
    adc $52
    ld [$5840], sp
    ld [hl], $01
    rlca
    nop
    ldh a, [$50]
    ld b, [hl]
    and [hl]
    ld d, a
    call $0436
    rlca
    nop
    nop
    ld d, b
    ld b, [hl]
    xor h
    ld d, a
    call $0836
    ld [$0000], sp
    ld d, $56
    ld [$0340], sp
    scf
    ld [$000b], sp
    nop
    inc h
    ld c, c
    ld [$2f40], sp
    inc [hl]
    ld [bc], a
    nop
    nop
    nop
    rlca
    scf
    ld c, b
    ld a, [bc]
    ld e, a
    ld c, b
    dec bc
    ld b, c
    ld c, b
    rrca
    ld l, c
    ld c, b
    rrca
    ld c, e
    ld c, b
    ld de, $4855
    inc d
    ld [hl], e
    ld c, b
    add hl, de
    inc l
    ld c, b
    rst $38
    nop
    nop
    nop
    rst $38
    add hl, de
    ld b, $f8
    nop
    ld [hl], d
    ld c, c
    dec e
    ld b, e
    ld d, e
    inc [hl]
    inc bc
    rlca
    ld bc, $0000
    adc [hl]
    ld d, h
    ld [de], a
    ld d, l
    ld b, d
    scf
    dec bc
    inc bc
    nop
    nop
    nop
    ld b, b
    ld d, c
    ld d, l
    ld b, d
    scf
    rrca
    dec b
    nop
    nop
    adc [hl]
    ld d, h
    jr nc, jr_00f_48a8

    ld b, d
    scf
    ld de, $0001
    nop
    adc [hl]
    ld d, h
    ld [de], a
    ld d, l
    ld b, d
    scf
    ld a, [bc]
    inc b
    nop
    nop
    cp e
    ld d, e
    call z, $cd53
    ld [hl], $0f
    dec b
    ld d, $ee
    cp e
    ld d, e
    di
    ld d, e
    call $1436
    inc b
    nop
    nop
    cp e
    ld d, e
    call z, $cd53
    ld [hl], $00
    nop
    nop
    ld b, $ab
    ld c, b
    ld [$48b5], sp
    ld a, [bc]
    cp a
    ld c, b
    dec bc
    sub a
    ld c, b
    rrca
    ret


    ld c, b
    rrca
    and c
    ld c, b
    rst $38
    nop
    nop
    nop
    rst $38
    dec bc
    ld [$0000], sp
    add hl, de
    ld d, e
    ld e, e
    ld d, a
    adc h
    inc [hl]
    rrca
    ld [$0000], sp
    add hl, de
    ld d, e
    ld e, e

jr_00f_48a8:
    ld d, a
    adc h
    inc [hl]
    ld b, $00
    nop
    nop
    jr nz, jr_00f_4906

    add c
    ld d, [hl]
    add e
    inc [hl]
    ld [$0000], sp
    nop
    jr nz, jr_00f_4910

    add c
    ld d, [hl]
    add e
    inc [hl]
    ld a, [bc]
    nop
    nop
    nop
    jr nz, @+$57

    add c
    ld d, [hl]
    add e
    inc [hl]
    rrca
    nop
    nop
    nop
    jr nz, @+$57

    add c
    ld d, [hl]
    add e
    inc [hl]
    nop
    nop
    nop
    dec bc
    ld a, [c]
    ld c, b
    dec bc
    rst $20
    ld c, b
    rst $38
    nop
    nop
    nop
    inc bc
    ld a, [c]
    ld c, b
    add hl, bc
    rst $20
    ld c, b
    rst $38
    dec bc
    add hl, bc
    nop
    nop
    ld l, l
    ld d, a
    ld [$5940], sp
    inc [hl]
    ld a, [bc]
    dec bc
    inc bc
    nop
    nop
    adc d
    ld d, [hl]
    ld [$2140], sp
    inc [hl]
    nop
    nop
    nop
    ld bc, $4924
    ld bc, $4910
    rlca

jr_00f_4906:
    cpl
    ld c, c
    ld [$491a], sp
    rst $38
    nop
    nop
    nop
    rst $38

jr_00f_4910:
    ld bc, $0801
    ld [$53f7], sp
    adc c
    ld d, h
    call $0836
    ld bc, $08f8
    call Call_00f_7453
    ld d, h
    call $0136
    ld bc, $0008
    dec l
    ld c, c
    ld [$4740], sp
    inc [hl]
    inc b
    rlca
    inc bc
    ld [$4800], sp
    ld c, c
    ld [$6540], sp
    inc [hl]
    dec b
    nop
    nop
    nop
    nop
    ld l, h
    ld c, c
    inc bc
    xor c
    ld c, c
    ld b, $95
    ld c, c
    ld [$499f], sp
    ld a, [bc]
    ld [hl], a
    ld c, c
    dec bc
    add c
    ld c, c
    inc c
    adc e
    ld c, c
    rst $38
    nop
    nop
    nop
    inc bc
    sub l
    ld c, c
    inc b
    add c
    ld c, c
    dec b
    xor c
    ld c, c
    rlca
    adc e
    ld c, c
    ld [$499f], sp
    ld a, [bc]
    ld l, h
    ld c, c
    ld c, $77
    ld c, c
    rst $38
    nop
    ld a, [bc]
    nop
    nop
    ld c, b
    ld c, c
    ld [$6540], sp
    inc [hl]
    ld b, $0a
    ld c, $00
    nop
    ld b, h
    ld d, l
    rst $38
    ld b, e
    adc h
    inc [hl]
    dec bc
    inc b
    nop
    nop
    ld l, e
    ld d, l
    ld [$2140], sp
    inc [hl]
    inc c
    rlca
    nop
    nop
    nop
    ld b, b
    ld e, b
    ld d, e
    ld hl, $0634
    inc bc
    nop
    nop
    ld [hl], d
    ld b, l
    and d
    ld d, l
    cp c
    inc [hl]
    ld [$0008], sp
    nop
    ld [hl], d
    ld b, l
    add $45
    cp c
    inc [hl]
    inc bc
    dec b
    nop
    nop
    ld [hl], d
    ld b, l
    and d
    ld d, l
    cp c
    inc [hl]
    nop
    nop
    nop
    ld bc, $49cd
    ld b, $e1
    ld c, c
    rlca
    db $eb
    ld c, c
    ld a, [bc]
    push af
    ld c, c
    inc c
    rst $38
    ld c, c
    dec c
    rst $10
    ld c, c
    rst $38
    nop
    nop
    nop
    rst $38
    ld bc, $0003
    nop
    inc h
    ld d, h
    add hl, bc
    ld e, b
    adc h
    inc [hl]
    dec c
    inc bc
    nop
    nop
    jr nz, jr_00f_4a32

    or l
    ld d, a
    adc h
    inc [hl]
    ld b, $04
    nop
    nop
    add a
    ld b, l
    jp c, $8342

    inc [hl]
    rlca
    inc bc
    nop
    nop
    add a
    ld b, l
    jp c, $8342

    inc [hl]
    ld a, [bc]
    dec b
    nop
    nop
    ld [hl+], a
    ld d, e
    ld b, h
    ld d, e
    adc h
    inc [hl]
    inc c
    dec b
    nop
    nop
    ld [hl+], a
    ld d, e
    ld b, h
    ld d, e
    adc h
    inc [hl]
    nop
    nop
    nop
    ld bc, $4a17
    dec b
    ld hl, $ff4a
    nop
    nop
    nop
    rst $38
    ld bc, $0001
    nop
    nop
    ld b, b
    ld [$2540], sp
    inc [hl]
    dec b
    inc bc
    ld hl, sp+$00
    add c
    ld c, c
    dec l
    ld b, e
    ld hl, $1f34
    nop
    nop
    nop
    db $10
    or d
    ld c, e

jr_00f_4a32:
    ld [de], a
    cp h
    ld c, e
    inc de
    add $4b
    inc d
    ret nc

    ld c, e
    ld d, $da
    ld c, e

jr_00f_4a3e:
    add hl, de
    db $e4
    ld c, e
    dec de
    xor $4b
    jr nz, jr_00f_4a3e

    ld c, e
    jr nz, jr_00f_4a4b

    ld c, h

jr_00f_4a4a:
    ld [hl+], a

jr_00f_4a4b:
    inc c
    ld c, h
    dec h
    ld d, $4c
    dec l
    jr nz, jr_00f_4a9f

    ld l, $2a
    ld c, h
    ld [hl], $34
    ld c, h
    jr c, jr_00f_4a99

    ld c, h
    inc a
    ld c, b
    ld c, h
    dec a
    ld d, d
    ld c, h
    ld b, e
    ld e, h
    ld c, h
    ld b, l
    ld h, [hl]
    ld c, h
    ld d, b
    ld [hl], b
    ld c, h
    ld d, b
    ld a, d
    ld c, h
    ld d, b
    add h
    ld c, h
    ld d, e
    adc [hl]
    ld c, h
    ld d, a
    sbc b
    ld c, h

jr_00f_4a77:
    ld e, d
    and d
    ld c, h
    ld e, d
    xor h
    ld c, h
    ld e, h
    or a
    ld c, h
    ld h, c
    pop bc
    ld c, h
    ld h, c
    bit 1, h
    ld h, a
    push de
    ld c, h
    ld l, b
    rst $18
    ld c, h
    ld l, d
    jp hl


    ld c, h
    ld l, e
    di
    ld c, h
    ld l, a
    db $fd
    ld c, h
    ld l, a
    rlca
    ld c, l
    ld l, a

jr_00f_4a99:
    ld de, $ff4d
    nop
    nop
    nop

jr_00f_4a9f:
    rst $38
    nop
    nop
    nop
    ld bc, $4d1b
    ld bc, $4d26
    inc bc
    ld a, [hl-]
    ld c, l
    dec b
    jr nc, jr_00f_4afc

    ld a, [bc]
    ld b, h
    ld c, l
    rrca
    ld c, [hl]
    ld c, l
    db $10
    ld e, b
    ld c, l
    dec d
    add b
    ld c, l
    rla
    ld h, d
    ld c, l
    jr jr_00f_4a4a

    ld c, l
    ld a, [de]
    ld l, h
    ld c, l
    ld e, $76
    ld c, l
    inc hl
    sub h
    ld c, l
    inc hl
    sbc [hl]
    ld c, l
    jr z, jr_00f_4a77

    ld c, l
    add hl, hl
    or d
    ld c, l
    dec hl
    cp h
    ld c, l
    ld l, $c6
    ld c, l
    rst $38
    nop
    nop
    nop
    ld bc, $4da8
    ld [bc], a
    add $4d
    ld [bc], a
    ld c, [hl]
    ld c, l
    ld [bc], a
    db $76
    ld c, l
    inc bc
    ld l, h
    ld c, l
    inc bc
    ld h, d
    ld c, l
    dec b
    or d
    ld c, l
    dec b
    ld b, h
    ld c, l
    ld [$4d94], sp
    ld [$4d9e], sp
    add hl, bc

jr_00f_4afc:
    ld h, $4d
    add hl, bc
    ld a, [hl-]
    ld c, l
    add hl, bc
    cp h
    ld c, l
    inc c
    ld e, b
    ld c, l
    dec c
    adc d
    ld c, l
    dec c
    dec de
    ld c, l
    ld c, $80
    ld c, l
    ld c, $30
    ld c, l
    rst $38
    nop
    nop
    nop
    ld bc, $4def
    ld [bc], a
    pop de
    ld c, l
    inc bc
    db $db
    ld c, l
    inc bc
    push hl
    ld c, l
    dec c
    ld sp, hl
    ld c, l
    ld d, $05
    ld c, [hl]
    rst $38
    nop
    nop
    nop
    ld a, [bc]
    db $10
    ld c, [hl]
    ld c, $1a
    ld c, [hl]
    rrca
    inc h
    ld c, [hl]

Call_00f_4b36:
    ld [de], a
    cpl
    ld c, [hl]
    inc d
    add hl, sp
    ld c, [hl]
    inc e
    ld b, e
    ld c, [hl]
    dec e
    ld c, l
    ld c, [hl]
    ld e, $57
    ld c, [hl]
    ld h, $61
    ld c, [hl]
    ld h, $6b
    ld c, [hl]
    daa
    ld [hl], l
    ld c, [hl]
    inc l
    ld a, a
    ld c, [hl]
    ld l, $89
    ld c, [hl]
    ld sp, $4e93
    ld sp, $4e9d
    inc sp
    and a
    ld c, [hl]
    ld [hl], $b1
    ld c, [hl]
    inc a
    cp e
    ld c, [hl]
    ld b, h
    push bc
    ld c, [hl]
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    ld bc, $4ecf
    ld [bc], a
    jp c, $ff4e

    nop
    nop
    nop
    inc b
    rst $08
    ld c, [hl]
    inc b
    jp c, $ff4e

    nop
    nop
    nop
    ld b, $e5
    ld c, [hl]
    rst $38
    nop
    nop
    nop
    ld [bc], a
    push hl
    ld c, [hl]
    dec d
    rst $28
    ld c, [hl]
    rst $38
    nop
    nop
    nop
    dec b
    ld_long a, $ff4e
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    ld a, [bc]
    jr jr_00f_4bf0

    dec c
    inc b
    ld c, a
    ld c, $0e
    ld c, a
    jr jr_00f_4bcb

    ld c, a
    ld h, $2d
    ld c, a
    rst $38
    nop
    nop
    nop
    rst $38
    db $10
    dec b
    nop
    nop
    ei
    ld e, c
    add d
    ld e, d
    call $1236
    ld bc, $0000
    ld b, a
    ld b, [hl]
    and h
    ld b, h
    call $1336
    inc bc
    nop
    ld hl, sp+$47

jr_00f_4bcb:
    ld b, [hl]
    and h
    ld b, h
    call $1436
    nop
    nop
    nop
    dec c
    ld e, d
    ret nz

    ld e, d
    call $1636
    dec b
    nop
    nop
    ld e, h
    ld e, b
    ld [$5840], sp
    ld [hl], $19
    ld bc, $0000
    ld d, h
    ld e, d
    ld [$6140], sp
    ld [hl], $1b
    inc b

jr_00f_4bf0:
    nop
    nop
    ld c, $49
    ld [$3540], sp
    inc [hl]
    jr nz, jr_00f_4bfe

    nop
    nop
    xor [hl]
    ld b, l

jr_00f_4bfe:
    rst $38
    ld b, e
    adc h
    inc [hl]
    jr nz, jr_00f_4c08

    inc d
    nop
    xor [hl]
    ld b, l

jr_00f_4c08:
    rst $38
    ld b, e
    adc h
    inc [hl]
    ld [hl+], a
    ld bc, $0800
    ld b, a
    ld b, [hl]
    and h
    ld b, h
    call $2536
    rlca
    nop
    nop
    push bc
    ld e, c
    ldh [$58], a
    ld c, a
    ld [hl], $2d
    rlca
    nop
    nop
    push bc
    ld e, c
    dec h
    ld e, c
    ld c, a
    ld [hl], $2e
    inc b
    nop
    nop
    xor a
    ld h, c
    ld [$8c40], sp
    inc [hl]
    ld [hl], $07

Call_00f_4c36:
    call c, Entry
    ld b, a
    ld e, c
    ld b, h
    inc bc
    scf
    jr c, jr_00f_4c47

    nop
    nop
    push bc
    ld e, c
    dec h
    ld e, c
    ld c, a

jr_00f_4c47:
    ld [hl], $3c
    nop
    call nz, $4700
    ld b, [hl]
    sub c
    ld b, [hl]
    call $3d36
    inc b
    nop
    nop
    ldh a, [$57]
    ld e, d
    ld e, b
    xor c
    ld [hl], $43
    inc b
    nop
    nop
    inc b
    ld e, d
    reti


    ld e, d
    call Call_00f_4536
    nop
    adc b
    nop
    ld d, b
    ld b, [hl]
    sub c
    ld b, [hl]
    call Call_00f_5036
    rlca
    sub d
    db $10
    inc de
    ld e, d
    inc bc
    ld e, e
    call Call_00f_5036
    rlca
    or b
    jr z, jr_00f_4c92

    ld e, d
    inc bc
    ld e, e
    call Call_00f_5036
    rlca
    adc $10
    inc de
    ld e, d
    inc bc
    ld e, e
    call Call_00f_5336
    inc bc
    nop
    nop

jr_00f_4c92:
    ei
    ld e, c
    pop de
    ld e, d
    call Call_00f_5736
    rlca
    nop
    nop
    push bc
    ld e, c
    dec h
    ld e, c
    ld c, a
    ld [hl], $5a
    rlca
    ret nz

    nop
    ld bc, $5947
    ld b, h
    inc bc
    scf
    ld e, d
    inc b
    nop
    nop
    ccf
    ld c, c
    ld [$3b40], sp
    inc [hl]
    nop
    ld e, h
    inc b
    nop
    nop
    ld b, a
    ld b, [hl]
    ret nc

    ld b, [hl]
    call Call_00f_6136
    inc b
    db $ec
    or $87
    ld b, l
    sbc b
    ld c, l
    add e
    inc [hl]
    ld h, c
    inc b
    nop
    or $e1
    ld b, l
    and b
    ld c, l
    add e
    inc [hl]
    ld h, a
    ld [bc], a
    nop
    nop
    ld d, h
    ld e, d
    ld [$6140], sp
    ld [hl], $68
    nop
    nop
    nop
    ld d, h
    ld e, d
    ld [$6140], sp
    ld [hl], $6a
    inc bc
    nop
    nop
    ld d, h
    ld e, d
    ld [$6140], sp
    ld [hl], $6b
    ld bc, $0000
    ld d, h
    ld e, d
    ld [$6140], sp
    ld [hl], $6f
    inc bc
    nop
    nop
    ldh a, [$57]
    ld e, d
    ld e, b
    xor c
    ld [hl], $6f
    inc bc
    inc d
    nop
    ldh a, [$57]
    ld e, d
    ld e, b
    xor c
    ld [hl], $6f
    inc bc
    jr z, jr_00f_4d15

jr_00f_4d15:
    ldh a, [$57]
    ld e, d
    ld e, b
    xor c
    ld [hl], $01
    dec c
    ld [$4800], sp
    ld c, c
    ld [$6540], sp
    inc [hl]
    ld bc, $0901
    stop
    ld sp, hl
    ld e, b
    or l
    ld e, l
    call $0536
    inc c
    nop
    nop
    sub $58
    ld [$5840], sp
    ld [hl], $03
    add hl, bc
    jr nz, jr_00f_4d3e

jr_00f_4d3e:
    ld sp, hl
    ld e, b
    or l
    ld e, l
    call $0a36
    dec b
    nop
    nop
    or b
    ld e, c
    ld [hl], b
    ld b, [hl]
    call $1036
    ld [bc], a
    nop
    nop
    ld d, h
    ld e, d
    ld [$6140], sp
    ld [hl], $10
    inc c
    nop
    nop
    ld [$2f59], sp
    ld b, h
    call $1736
    inc b
    nop
    nop
    ld a, $59
    ld b, h
    ld b, h
    call $1a36
    inc bc
    nop
    nop
    ld a, $59
    ld b, h
    ld b, h
    call $1e36
    ld [bc], a
    ld [$3e03], sp
    ld e, c
    ld b, h
    ld b, h
    call $1536
    inc c
    nop
    nop
    ld [hl], d
    ld b, l
    push af
    ld e, l
    cp c
    inc [hl]
    jr @+$0d

    nop
    nop
    ld [hl], d
    ld b, l
    push af
    ld e, l
    cp c
    inc [hl]
    inc hl
    ld [$0000], sp
    ld [hl], d
    ld b, l
    adc a
    ld b, h
    cp c
    inc [hl]
    inc hl
    ld [$5000], sp
    ld [hl], d
    ld b, l
    sbc b
    ld b, h
    cp c
    inc [hl]
    jr z, @+$03

    ld [$3e08], sp
    ld e, c
    ld b, h
    ld b, h
    call $2936
    dec b
    ld [$2800], sp
    ld e, d
    rst $38
    ld b, e
    call $2b36
    add hl, bc
    nop
    nop
    ld e, h
    ld e, b
    ld [$5840], sp
    ld [hl], $2e
    ld [bc], a
    ld [$4800], sp
    ld c, c
    ld [$6540], sp
    inc [hl]
    ld [bc], a
    ld bc, $0002
    nop
    ld e, a
    ld e, d
    ld [$6140], sp
    ld [hl], $02
    inc bc
    nop
    nop
    ld e, a
    ld e, d
    ld [$6140], sp
    ld [hl], $06
    inc bc
    nop
    nop
    ld e, a
    ld e, d
    ld [$6140], sp
    ld [hl], $07
    ld bc, $0000
    ld e, a
    ld e, d
    ld [$6140], sp
    ld [hl], $03
    dec c
    ld [$7200], sp
    ld b, l
    inc h
    ld e, [hl]
    cp c
    inc [hl]
    ld c, a
    ld [hl], $06
    inc de
    ld [$6000], sp
    ld c, c
    ld [$7740], sp
    inc [hl]
    inc bc
    ld a, [bc]
    rlca
    nop
    nop
    push bc
    ld e, c
    jp hl


    ld e, b
    ld c, a
    ld [hl], $0e
    rlca
    nop
    nop
    push bc
    ld e, c
    ld a, [c]
    ld e, b
    ld c, a
    ld [hl], $0f
    ld [bc], a
    ld [$2d00], sp
    ld c, c
    ld [$4740], sp
    inc [hl]
    ld [$0212], sp
    nop
    nop
    jr z, jr_00f_4e8f

    rst $38

Call_00f_4e36:
    ld b, e
    call $1436
    ld [bc], a
    nop
    nop
    add h
    ld e, l
    ld [$0340], sp
    scf
    inc e
    ld bc, $0000
    ei
    ld e, c
    pop de
    ld e, d
    call $1d36
    ld [bc], a
    inc bc
    nop
    ei
    ld e, c
    pop de
    ld e, d
    call $1e36
    rlca
    nop
    nop
    push bc
    ld e, c
    jp hl


    ld e, b
    ld c, a
    ld [hl], $26
    nop
    ret nc

    rlca
    ld b, a
    ld b, [hl]
    sub c
    ld b, [hl]
    call $2636
    nop
    adc b
    rlca
    ld d, b
    ld b, [hl]
    add $46
    call $2736
    dec b
    nop
    nop
    ld [hl], c
    ld b, [hl]
    ld [$0340], sp
    scf
    inc l
    inc bc
    nop
    nop
    dec sp
    ld b, [hl]
    ret nc

    ld b, [hl]
    call $2e36
    rlca
    nop
    nop
    push bc
    ld e, c

jr_00f_4e8f:
    dec h
    ld e, c
    ld c, a
    ld [hl], $31
    rlca
    ld hl, sp+$07
    ld b, e
    ld e, d
    inc h
    ld e, e
    call $3136
    rlca
    add b
    rlca
    ld b, e
    ld e, d
    inc a
    ld e, e
    call $3336
    dec b
    nop
    nop
    or b
    ld e, c
    ld [hl], b
    ld b, [hl]
    call $3636
    inc b
    nop
    nop
    ld [hl], c
    ld b, [hl]
    ld [$0340], sp
    scf
    inc a
    inc b
    nop
    nop
    ld [bc], a
    ld e, b
    ld [hl], d
    ld e, b
    ld c, a
    ld [hl], $44
    ld [bc], a
    nop
    nop
    add [hl]
    ld b, [hl]
    ld [$0340], sp
    scf
    ld bc, $0004
    nop
    ld d, c
    ld c, c
    ld [$7740], sp
    inc [hl]
    inc b
    ld [bc], a
    inc b
    nop
    nop
    ld b, l
    ld c, c
    ld [$6540], sp
    inc [hl]
    dec b
    ld b, $02
    ld [$7c00], sp
    ld e, d
    ld [$2140], sp
    inc [hl]
    dec b
    dec d
    ld [$7200], sp
    ld c, c
    dec e
    ld b, e
    ld c, l
    inc [hl]
    ld b, $04
    inc bc
    ld [$91f8], sp
    ld e, d
    ld [$2140], sp
    inc [hl]
    dec c
    dec b
    nop
    nop
    ldh a, [$57]
    ld e, d
    ld e, b
    xor c
    ld [hl], $0e
    ld [bc], a
    nop
    nop
    rla
    ld e, c
    inc d
    ld b, h
    call $0a36
    inc bc
    nop
    nop
    rla
    ld e, c
    inc d
    ld b, h
    call $1836
    inc b
    ld [$3600], sp
    ld c, c
    ld b, h
    ld b, h
    ld b, c
    inc [hl]
    rlca
    ld h, $01
    nop
    ei
    xor h

jr_00f_4f32:
    ld e, d
    ld e, d
    ld e, e
    adc $35
    nop
    nop
    nop
    dec bc
    ld [hl+], a
    ld d, b
    ld c, $b8
    ld d, b
    inc de
    ldh a, [rVBK]

Call_00f_4f43:
    rla
    and $4f
    dec de
    inc l
    ld d, b
    dec de
    ld b, b
    ld d, b
    inc hl
    ld [hl], $50
    inc h
    ld [hl], d
    ld d, b
    dec h
    ld a, [$2c4f]
    or h
    ld c, a
    dec l
    cp [hl]
    ld c, a
    cpl
    ret z

    ld c, a
    jr nc, jr_00f_4f32

    ld c, a
    ld [hl-], a
    call c, $364f
    sub [hl]
    ld c, a
    inc a
    and b
    ld c, a
    inc a
    xor d
    ld c, a
    ld b, c
    sub b
    ld d, b
    ld b, a
    add [hl]
    ld d, b
    ld c, e
    ld a, h
    ld d, b
    ld c, a
    and h
    ld d, b
    ld d, e
    xor [hl]
    ld d, b
    ld d, e
    ld c, d
    ld d, b
    ld d, l
    sbc d
    ld d, b
    ld e, a
    inc b
    ld d, b
    ld h, d
    ld c, $50
    ld e, a
    ld d, h
    ld d, b
    ld h, b
    ld e, [hl]
    ld d, b
    ld h, b
    ld l, b
    ld d, b
    rst $38
    nop
    nop
    nop
    rst $38
    ld [hl], $00
    nop
    nop
    cp e
    ld e, a
    scf
    ld h, d
    call $3a36
    ld [bc], a
    nop
    nop
    cp e
    ld e, a
    scf
    ld h, d
    call $3c36
    nop
    nop
    nop
    cp e
    ld e, a
    inc b
    ld h, d
    call $2c36
    rlca
    ret nz

    nop
    xor $5c
    ret nc

    ld e, a
    db $e4
    inc [hl]
    dec l
    ld bc, $00c8
    xor $5c
    rst $18
    ld e, a
    db $e4
    inc [hl]
    cpl
    rlca
    ret nz

    nop
    xor $5c
    ret nc

    ld e, a
    db $e4
    inc [hl]
    jr nc, jr_00f_4fda

    nop
    nop
    xor $5c
    ret nc

    ld e, a

jr_00f_4fda:
    db $e4
    inc [hl]
    ld [hl-], a
    nop
    ret nz

    nop
    xor $5c
    ld [c], a
    ld e, a
    db $e4
    inc [hl]
    rla
    inc bc
    ld [$8400], sp
    ld e, l
    ld [$0340], sp
    scf
    inc de
    nop
    ret nz

    nop
    db $76
    ld e, h
    ld h, a
    ld d, a
    call $2536
    inc b
    ldh [$f8], a
    ld l, l
    ld e, h
    rra
    ld e, a
    call Call_00f_5f36
    ld [$0090], sp
    db $76
    ld e, h
    ld l, d
    ld d, a
    call Call_00f_6236
    ld [$00a0], sp
    db $76
    ld e, h
    ld l, d
    ld d, a
    call Call_00f_4c36
    inc bc
    nop
    nop
    pop hl
    ld b, l
    jp c, $8342

    inc [hl]
    inc c
    ld [bc], a
    nop
    nop
    pop hl
    ld b, l
    jp c, $8342

    inc [hl]
    dec de
    inc bc
    ld [$ae00], sp
    ld b, l
    rst $38
    ld b, e
    adc h
    inc [hl]

Call_00f_5036:
    inc hl
    ld b, $00
    nop
    inc a
    ld e, l
    ld h, c
    ld e, a
    adc h
    inc [hl]
    dec de
    ld bc, $0000
    ld b, a
    ld b, [hl]
    and h
    ld b, h
    call Call_00f_5336
    ld bc, $0000
    ld b, a
    ld b, [hl]
    or d
    ld b, [hl]
    call Call_00f_5f36
    inc bc
    nop
    nop
    ld b, a
    ld b, [hl]
    and h
    ld b, h
    call Call_00f_6036
    ld bc, $0000
    ld b, a
    ld b, [hl]
    and h
    ld b, h
    call Call_00f_6036
    dec b
    nop
    nop

jr_00f_506c:
    ld b, a
    ld b, [hl]
    and h
    ld b, h
    call $2436
    nop
    ret nz

    nop
    ld d, b
    ld b, [hl]
    sub c
    ld b, [hl]
    call Call_00f_4b36
    nop
    nop
    nop
    rst $08
    ld e, [hl]
    ld de, $f661
    inc [hl]
    ld b, a
    ld bc, $0000
    jp nc, $395e

    ld h, c
    or $34
    ld b, c
    ld bc, $0000
    rst $08
    ld e, [hl]
    ld de, $f661
    inc [hl]
    ld d, l
    ld bc, $0000
    add a
    ld d, [hl]
    cp b
    ld h, c
    inc bc
    scf
    ld c, a
    nop
    nop
    nop
    jp nc, $395e

    ld h, c
    or $34
    ld d, e
    ld bc, $0000
    rst $08
    ld e, [hl]
    ld de, $f661
    inc [hl]
    ld c, $00
    ld [$7200], sp
    ld b, l
    add $45
    cp c
    inc [hl]
    nop
    nop
    nop
    add hl, bc
    add d
    ld d, c
    dec bc
    xor d
    ld d, c
    db $10
    adc h
    ld d, c
    inc d
    ld e, d
    ld d, c
    add hl, de
    ld h, h
    ld d, c
    jr nz, jr_00f_506c

    ld d, c
    ld a, [hl+]
    inc d
    ld d, c
    dec hl
    jr z, jr_00f_512e

    inc l
    ld e, $51
    inc l
    ld [hl-], a
    ld d, c
    inc l
    inc a
    ld d, c
    inc [hl]
    nop
    ld d, c
    ld [hl], $0a
    ld d, c
    scf
    ld l, [hl]
    ld d, c
    add hl, sp
    ld a, b
    ld d, c
    inc a
    ld b, [hl]
    ld d, c
    ld a, $50
    ld d, c
    ld b, d
    and b
    ld d, c
    rst $38
    nop
    nop
    nop
    rst $38
    inc [hl]
    rlca
    ret nc

    nop
    xor $5c
    call $e45f
    inc [hl]
    ld [hl], $07
    ret nc

    nop
    xor $5c
    call $e45f
    inc [hl]
    ld a, [hl+]
    nop
    nop
    nop
    ld e, e
    ld e, h
    and $5e
    daa
    scf
    inc l
    nop
    nop
    nop
    ld e, e
    ld e, h
    and $5e
    daa
    scf
    dec hl
    inc b
    jr nz, jr_00f_512c

jr_00f_512c:
    sub a
    ld e, h

jr_00f_512e:
    ld [$cd40], sp
    ld [hl], $2c
    ld [bc], a
    jr nz, jr_00f_513e

    and d
    ld e, h
    ld [$cd40], sp
    ld [hl], $2c
    dec b

jr_00f_513e:
    jr nz, @+$0a

    or b
    ld e, h
    ld [$cd40], sp
    ld [hl], $3c
    ld bc, $0000
    ret nz

    ld d, h
    add $55
    call $3e36
    inc bc
    nop
    nop
    ret nz

    ld d, h
    add $55
    call $1436
    inc b
    nop
    nop
    ld h, a
    ld h, c
    ld [$8c40], sp
    inc [hl]
    add hl, de
    dec b
    nop
    nop
    ld h, a
    ld h, c
    ld [$8c40], sp
    inc [hl]
    scf
    dec b
    nop
    nop
    ret nc

    ld e, h
    adc $42
    adc h
    inc [hl]
    add hl, sp
    dec b
    nop
    nop
    ret nc

    ld e, h
    adc $42
    adc h
    inc [hl]
    add hl, bc
    ld b, $00
    nop
    ld bc, $0860
    ld b, b
    jr nc, jr_00f_51c3

    db $10
    ld b, $00
    nop
    inc c
    ld h, b
    ld [$3040], sp
    scf
    jr nz, @+$07

    nop
    nop
    rst $28
    ld e, a
    ld [$3040], sp
    scf
    ld b, d
    inc bc
    ld hl, sp+$00
    rst $28
    ld e, a
    ld [$3040], sp
    scf
    dec bc
    inc b
    nop
    nop
    rst $28
    ld e, a
    ld [$3040], sp
    scf
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    inc b
    ldh [rHDMA1], a
    ld b, $26
    ld d, d
    rlca
    ld c, [hl]

jr_00f_51c3:
    ld d, d
    ld [$5244], sp
    dec bc
    cp $51
    ld c, $08
    ld d, d
    ld [de], a
    ld [de], a
    ld d, d
    ld [de], a
    inc e
    ld d, d
    inc d
    db $f4
    ld d, c
    dec d
    ld [$1951], a
    ld a, [hl-]
    ld d, d
    dec e
    jr nc, @+$54

    rst $38
    inc bc
    inc b
    nop
    nop
    rst $28
    ld e, a
    ld [$3040], sp
    scf
    ld c, $15
    nop
    nop
    cp e
    ld e, a
    db $dd
    ld h, c
    call $0a36
    inc d
    nop
    nop
    cp e
    ld e, a
    db $dd
    ld h, c
    call $0f36
    dec bc
    ld [$bb00], sp
    ld e, a
    inc b
    ld h, d
    call $0a36
    ld c, $fe
    rlca
    cp e
    ld e, a
    ldh [$61], a
    call $0f36
    ld [de], a
    ld [$bb00], sp
    ld e, a
    ld c, a
    ld h, d
    call $0836
    ld [de], a
    nop
    nop
    inc a
    ld e, l
    ld h, c
    ld e, a
    adc h
    inc [hl]
    ld [$0006], sp
    nop
    add l
    ld e, h
    scf
    ld e, a
    cp c
    inc [hl]
    ld [$001d], sp
    nop
    inc a
    ld e, l
    ld h, c
    ld e, a
    adc h
    inc [hl]
    ld b, $19
    nop
    nop
    db $76
    ld e, h
    dec hl
    ld e, a
    call $0f36
    ld [$0000], sp
    db $76
    ld e, h
    dec hl
    ld e, a
    call $1136
    rlca
    nop
    nop
    xor $5c
    ret nc

    ld e, a
    db $e4
    inc [hl]
    nop
    nop
    nop
    inc bc
    ld [hl+], a
    ld d, e
    rrca
    jr c, jr_00f_52b4

    ld [de], a
    inc b
    ld d, e
    rla
    ld c, $53
    inc e
    dec l
    ld d, e
    inc e
    jr jr_00f_52c0

    ld h, $b4
    ld d, d
    jr z, @+$45

    ld d, e
    add hl, hl
    cp [hl]
    ld d, d
    inc l
    and $52
    inc l
    ldh a, [rHDMA2]
    inc l
    ld a, [$3152]
    jp nc, $3152

    ret z

    ld d, d
    ld sp, $52dc
    rst $38
    nop
    nop
    nop
    nop
    or h
    ld d, d
    ld bc, $530e
    inc bc
    ret z

    ld d, d
    inc bc
    dec l
    ld d, e
    dec b
    jp nc, $0452

    inc b
    ld d, e
    dec b
    jr c, jr_00f_52f4

    rlca
    call c, $0752
    jr @+$55

    ld [$5343], sp
    add hl, bc
    ld [hl+], a
    ld d, e
    ld a, [bc]
    cp [hl]
    ld d, d
    ld a, [bc]
    ld c, $53
    rst $38

jr_00f_52b4:
    ld h, $00
    ret nz

    nop
    ld e, e
    ld e, h
    sbc [hl]
    ld e, [hl]
    daa
    scf
    add hl, hl
    ld a, [bc]

jr_00f_52c0:
    ret nz

    nop
    ld e, e
    ld e, h
    sub l
    ld e, [hl]
    daa
    scf
    ld sp, $0003
    nop
    ld b, a
    ld b, [hl]
    and h
    ld b, h
    call $3136
    dec b
    ldh [rP1], a
    ld b, a
    ld b, [hl]
    and h
    ld b, h
    call $3136
    rlca
    nop
    nop
    ld b, a
    ld b, [hl]
    and h
    ld b, h
    call $2c36
    ld bc, $0000
    db $76
    ld e, h
    db $10
    ld e, a
    call $2c36
    inc bc
    nop
    nop

jr_00f_52f4:
    db $76
    ld e, h
    db $10
    ld e, a
    call $2c36
    dec b
    nop
    nop
    db $76
    ld e, h
    db $10
    ld e, a
    call $1236
    inc b
    nop
    nop
    cp e
    ld e, a
    scf
    ld h, d
    call $1736
    ld bc, $0000
    cp e
    ld e, a
    inc b
    ld h, d
    call $1c36
    rlca
    nop
    nop
    cp e
    ld e, a
    scf
    ld h, d
    call $0336
    add hl, bc
    nop
    nop
    ld [hl], $49
    ld [$4140], sp
    inc [hl]
    nop
    inc e
    inc bc
    nop
    nop
    ld c, [hl]
    ld c, c
    ld [$5940], sp

Call_00f_5336:
    inc [hl]
    ld bc, $050f
    nop
    nop
    ld c, b
    ld c, c
    ld [$6540], sp
    inc [hl]
    ld [bc], a
    jr z, jr_00f_534d

    nop
    nop
    ld h, b
    ld c, c
    ld [$7740], sp
    inc [hl]

jr_00f_534d:
    inc bc
    nop
    nop
    nop
    ld bc, $53e2
    inc b
    xor [hl]
    ld d, e
    ld a, [de]
    ret c

    ld d, e
    inc e
    jp $1d53


    adc $53
    dec e
    and e
    ld d, e
    rra
    sbc b
    ld d, e
    inc h
    rst $30
    ld d, e
    ld h, $01
    ld d, h
    ld a, [hl+]
    db $ed
    ld d, e
    jr nc, @-$45

    ld d, e
    rst $38
    nop
    nop
    nop
    nop
    cp c
    ld d, e
    inc b
    ld bc, $0454
    xor [hl]
    ld d, e
    inc b
    jp $0553


    adc $53
    dec b
    ret c

    ld d, e
    ld b, $ed
    ld d, e
    ld b, $f7
    ld d, e
    ld [$53a3], sp
    ld [$53e2], sp
    ld a, [bc]
    sbc b
    ld d, e
    rst $38
    rra
    ld a, [bc]
    nop
    nop
    ld c, [hl]
    ld c, c
    ld [$5940], sp
    inc [hl]
    inc b
    dec e
    ld [$0000], sp
    ld b, l
    ld c, c
    ld [$6540], sp
    inc [hl]
    dec b
    inc b
    inc b
    nop
    ld hl, sp+$16
    ld h, c
    inc c
    ld h, e
    ld hl, $0634
    cpl
    nop
    nop
    nop
    xor $5c
    ld [c], a
    ld e, a
    db $e4
    inc [hl]
    inc e
    inc b
    nop
    nop
    ld b, l
    ld c, c
    ld [$6540], sp
    inc [hl]
    ld [hl-], a
    dec e
    dec b
    ld a, [bc]
    ld c, $72
    ld b, l
    ld l, c
    ld h, e
    cp c
    inc [hl]
    ld a, [de]
    dec b
    ld a, [bc]
    ld c, $72
    ld b, l
    ld l, c
    ld h, e
    cp c
    inc [hl]
    ld bc, $0008
    nop
    ld [hl], $49
    ld [$4140], sp
    inc [hl]
    rlca
    ld a, [hl+]
    ld b, $00
    nop
    xor [hl]
    ld b, l
    rst $38
    ld b, e
    adc h
    inc [hl]
    inc h
    ld b, $00
    nop
    xor [hl]
    ld b, l
    rst $38
    ld b, e
    adc h
    inc [hl]
    ld h, $04
    ld [$ae00], sp
    ld b, l
    rst $38
    ld b, e
    adc h
    inc [hl]
    ld [de], a
    inc bc
    ld [$7900], sp
    ld d, [hl]
    ld [$0340], sp
    scf
    nop
    nop
    nop
    ld a, [bc]
    ld a, [hl]
    ld d, h
    db $10
    adc c
    ld d, h
    inc de
    jr c, jr_00f_5475

    dec e
    ld b, d
    ld d, h
    daa
    ld c, h
    ld d, h
    ld sp, $5456
    dec sp
    ld h, b
    ld d, h
    ld b, l
    ld l, d
    ld d, h
    ld c, a
    ld [hl], h
    ld d, h
    rst $38
    nop
    nop
    nop
    rst $38
    inc de
    nop
    nop
    nop
    inc [hl]
    ld h, c
    ld [$2140], sp
    inc [hl]
    dec e
    nop
    nop
    nop
    inc [hl]
    ld h, c
    ld [$2140], sp
    inc [hl]
    daa
    nop
    nop
    nop
    inc [hl]
    ld h, c
    ld [$2140], sp
    inc [hl]
    ld sp, $0000
    nop
    inc [hl]
    ld h, c
    ld [$2140], sp
    inc [hl]
    dec sp
    nop
    nop
    nop
    inc [hl]
    ld h, c
    ld [$2140], sp
    inc [hl]
    ld b, l
    nop
    nop
    nop
    inc [hl]
    ld h, c
    ld [$2140], sp
    inc [hl]
    ld c, a

jr_00f_5475:
    nop
    nop
    nop
    inc [hl]
    ld h, c
    ld [$2140], sp
    inc [hl]
    ld a, [bc]
    ld b, $00
    nop
    dec l
    ld c, c
    ld [$4740], sp
    inc [hl]
    ld [$0210], sp
    nop
    nop
    and b
    ld h, d
    ld [$7740], sp
    inc [hl]

jr_00f_5493:
    inc a
    nop
    nop
    nop
    inc b
    db $f4
    ld d, h
    inc b
    ld [$0654], a
    cp $54
    ld b, $12
    ld d, l
    add hl, bc
    ld [$0a55], sp
    inc e
    ld d, l
    ld a, [bc]
    ld h, $55
    rst $38
    nop
    nop
    nop
    ld [bc], a
    ld [$0255], sp
    ld [$0554], a
    ld [de], a
    ld d, l
    ld c, $e0
    ld d, h
    rrca
    db $f4
    ld d, h
    db $10
    ld h, $55
    ld de, $54fe
    jr jr_00f_5493

    ld d, h
    dec e
    inc e
    ld d, l

jr_00f_54cb:
    rst $38
    ld [bc], a
    jr jr_00f_54cf

jr_00f_54cf:
    nop
    ld h, h
    ld e, h
    push bc
    ld e, [hl]
    daa
    scf
    ld c, $0a
    nop
    nop
    ld e, e
    ld e, h
    and $5e
    daa
    scf
    nop
    ld c, $00
    nop
    ld h, h
    ld e, h
    ei
    ld e, [hl]
    daa
    scf
    inc b
    ld [bc], a
    nop
    nop
    rst $08
    ld e, [hl]
    dec h
    ld h, c
    or $34
    inc b
    rrca
    nop
    nop
    rst $08
    ld e, [hl]
    ld de, $f661
    inc [hl]
    ld b, $11
    nop
    nop
    rst $08
    ld e, [hl]
    ld de, $f661
    inc [hl]
    add hl, bc
    ld [bc], a
    nop
    nop
    jp nc, $4d5e

    ld h, c
    or $34
    ld b, $05
    ld [$d200], sp
    ld e, [hl]
    ld c, l
    ld h, c
    or $34
    ld a, [bc]
    dec e
    nop
    nop
    ei
    ld e, a
    ld [$3040], sp
    scf
    ld a, [bc]
    stop
    ld l, $97
    ld e, h
    ld [$cd40], sp
    ld [hl], $00
    nop
    nop
    rst $38
    nop
    nop
    nop
    ld b, $ba
    ld d, l
    add hl, bc
    push bc
    ld d, l
    ld [de], a
    ret nc

    ld d, l
    ld a, [de]
    call c, $1d55
    rst $20
    ld d, l
    jr nz, jr_00f_54cb

    ld d, l
    inc hl
    ld a, [c]
    ld d, l
    ld h, $fd
    ld d, l
    add hl, hl
    ld [$2e56], sp
    inc de
    ld d, [hl]
    ld sp, $561f
    inc [hl]
    ld a, [hl+]
    ld d, [hl]
    scf
    adc [hl]
    ld d, l
    ld a, [hl-]
    and h
    ld d, l
    dec a
    dec [hl]
    ld d, [hl]
    ld b, d
    ld b, b
    ld d, [hl]
    ld b, l
    ld c, e
    ld d, [hl]
    ld c, b
    ld d, [hl]
    ld d, [hl]
    ld c, e
    ld h, d
    ld d, [hl]
    ld c, [hl]
    ld l, l
    ld d, [hl]
    ld d, c
    sbc c
    ld d, l
    ld d, l
    xor a
    ld d, l
    ld d, [hl]
    ld a, b
    ld d, [hl]
    ld e, c
    add e
    ld d, [hl]
    ld e, h
    adc [hl]
    ld d, [hl]
    rst $38
    inc bc
    jr nz, jr_00f_5586

jr_00f_5586:
    nop
    ld c, [hl]
    ld c, c
    inc a
    ld h, e
    ld e, c
    inc [hl]
    ld de, $3705
    nop
    nop
    ld [hl], d
    ld b, l
    inc a
    ld h, e
    cp c
    inc [hl]
    jr jr_00f_559b

    ld d, c

jr_00f_559b:
    nop
    nop
    ld c, [hl]
    ld c, c
    inc a
    ld h, e
    ld e, c
    inc [hl]
    jr nz, jr_00f_55a7

    ld a, [hl-]
    nop

jr_00f_55a7:
    nop
    ld h, b
    ld c, c
    ld d, b
    ld h, e
    ld [hl], a
    inc [hl]
    add hl, de
    ld [$0055], sp
    nop
    add a
    ld b, l
    ld d, b
    ld h, e
    adc h
    inc [hl]
    inc h
    ld b, $06
    nop
    nop
    ld [hl], d
    ld b, l
    inc a
    ld h, e
    cp c
    inc [hl]
    ld a, [bc]
    inc bc
    add hl, bc
    nop
    nop
    ld [hl], d
    ld b, l
    inc a
    ld h, e
    cp c
    inc [hl]
    dec bc
    ld bc, $0012
    nop
    ld [hl], d
    ld b, l
    inc a
    ld h, e
    cp c
    inc [hl]
    ld c, $ff
    ld [bc], a
    ld a, [de]
    nop
    nop
    ld [hl], d
    ld b, l
    inc a
    ld h, e
    cp c
    inc [hl]
    rrca
    ld b, $1d
    nop
    nop
    ld [hl], d
    ld b, l
    inc a
    ld h, e
    cp c
    inc [hl]
    db $10
    ld [$0023], sp
    nop
    ld [hl], d
    ld b, l
    inc a
    ld h, e
    cp c
    inc [hl]
    ld [de], a
    inc b
    ld h, $00
    nop
    ld [hl], d
    ld b, l
    inc a
    ld h, e
    cp c
    inc [hl]
    inc de
    ld bc, $0029
    nop
    ld [hl], d
    ld b, l
    inc a
    ld h, e
    cp c
    inc [hl]
    inc d
    ld [bc], a
    ld l, $00
    nop
    ld [hl], d
    ld b, l
    inc a
    ld h, e
    cp c
    inc [hl]
    dec d
    rst $38
    ld b, $31
    nop
    nop
    ld [hl], d
    ld b, l
    inc a
    ld h, e
    cp c
    inc [hl]
    ld d, $03
    inc [hl]
    nop
    nop
    ld [hl], d
    ld b, l
    inc a
    ld h, e
    cp c
    inc [hl]
    rla
    ld bc, $003d
    nop
    ld [hl], d
    ld b, l
    inc a
    ld h, e
    cp c
    inc [hl]
    ld a, [de]
    ld [bc], a
    ld b, d
    nop
    nop
    ld [hl], d
    ld b, l
    inc a
    ld h, e
    cp c
    inc [hl]
    dec de
    ld b, $45
    nop
    nop
    ld [hl], d
    ld b, l
    inc a
    ld h, e
    cp c
    inc [hl]
    inc e
    inc bc
    ld c, b
    nop
    nop
    ld [hl], d
    ld b, l
    inc a
    ld h, e
    cp c
    inc [hl]
    dec e
    rst $38
    ld [$004b], sp
    nop
    ld [hl], d
    ld b, l
    inc a
    ld h, e
    cp c
    inc [hl]
    ld e, $04
    ld c, [hl]
    nop
    nop
    ld [hl], d
    ld b, l
    inc a
    ld h, e
    cp c
    inc [hl]
    rra
    ld [bc], a
    ld d, [hl]
    nop
    nop
    ld [hl], d
    ld b, l
    inc a
    ld h, e
    cp c
    inc [hl]
    ld hl, $5906
    nop
    nop
    ld [hl], d
    ld b, l
    inc a
    ld h, e
    cp c
    inc [hl]
    ld [hl+], a
    inc bc
    ld e, h
    nop
    nop
    ld [hl], d
    ld b, l
    inc a
    ld h, e
    cp c
    inc [hl]
    inc hl
    nop
    nop
    nop
    nop
    cp d
    ld d, [hl]
    nop
    or b
    ld d, [hl]
    inc b
    and [hl]
    ld d, [hl]
    rst $38
    inc b
    inc bc
    ld a, [bc]
    ld a, [$62db]
    xor l
    ld h, e
    dec h
    inc [hl]
    nop
    rlca
    ldh a, [$f8]
    nop
    ld h, e
    ld [$2540], sp
    inc [hl]
    nop
    nop
    nop
    nop
    add b
    ld h, e
    ld [$2540], sp
    inc [hl]
    nop
    nop
    nop
    ld b, $89
    ld e, e
    rlca
    sub e
    ld e, e
    rst $38
    nop
    nop
    nop
    dec b
    db $eb
    ld d, a
    dec b
    push af
    ld d, a
    dec b
    rst $38
    ld d, a
    dec b
    add hl, bc
    ld e, b
    dec b
    inc de
    ld e, b
    dec b
    dec e
    ld e, b
    dec b
    daa
    ld e, b
    dec b
    ld sp, $ff58
    nop
    nop
    nop
    ld bc, $586d
    inc bc
    ld [hl], a
    ld e, b
    inc b
    dec sp
    ld e, b
    inc b
    ld b, l
    ld e, b
    dec b
    ld c, a
    ld e, b
    rlca
    ld e, c
    ld e, b
    add hl, bc
    ld h, e
    ld e, b
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    dec b
    ld e, a
    ld d, a
    ld b, $55
    ld d, a
    rst $38
    nop
    nop
    nop
    ld bc, $5791
    ld [bc], a
    add a
    ld d, a
    inc b
    sbc e
    ld d, a
    inc b
    ld l, c
    ld d, a
    ld b, $7d
    ld d, a
    rlca
    ld [hl], e
    ld d, a
    rst $38
    nop
    nop
    nop
    dec b
    and l
    ld d, a
    rst $38
    nop
    nop
    nop
    inc bc
    xor a
    ld d, a
    dec b
    cp c

Call_00f_5736:
    ld d, a
    dec b
    jp $ff57


    nop
    nop
    nop
    ld bc, $57cd
    inc b
    rst $10
    ld d, a
    rlca
    pop hl
    ld d, a
    rst $38
    nop
    nop
    nop
    ld [bc], a
    rst $30
    ld e, h
    inc bc
    ld bc, $045d
    db $ed
    ld e, h
    rst $38
    ld b, $06
    ld hl, sp+$00
    xor e
    ld h, [hl]
    and b
    ld l, b
    dec h
    inc [hl]
    dec b
    ld b, $fb
    ld hl, sp+$76
    ld h, [hl]
    ld a, b
    ld l, b
    dec h
    inc [hl]
    inc b
    nop
    ld [$b108], sp
    ld h, [hl]
    xor h
    ld l, b
    dec h
    inc [hl]
    rlca
    ld bc, $0b0c
    cp c
    ld h, [hl]
    or d
    ld l, b
    dec h
    inc [hl]
    ld b, $03
    ld [$c108], sp
    ld h, [hl]
    cp b
    ld l, b
    dec h
    inc [hl]
    ld [bc], a
    inc bc
    ld [$c908], sp
    ld h, [hl]
    cp [hl]
    ld l, b
    dec h
    inc [hl]
    ld bc, $0401
    dec bc
    pop de
    ld h, [hl]
    and [hl]
    ld l, b
    dec h
    inc [hl]
    inc b
    ld b, $08
    nop
    rrca
    ld h, a
    ld a, b
    ld l, c
    dec h
    inc [hl]
    dec b
    ld b, $fb
    ld hl, sp-$7a
    ld h, [hl]
    add a
    ld l, b
    dec h
    inc [hl]
    inc bc
    nop
    db $fc
    nop
    scf
    ld h, a
    sbc h
    ld l, c
    dec h
    inc [hl]
    dec b
    nop
    db $fc
    nop
    ld b, b
    ld h, a
    sbc h
    ld l, c
    dec h
    inc [hl]
    dec b
    nop
    db $fc
    nop
    ld c, c
    ld h, a
    ld [$2540], sp
    inc [hl]
    ld bc, $0001
    nop
    dec b
    ld l, c
    ld [$2540], sp
    inc [hl]
    inc b
    inc b
    nop
    inc b
    jp c, $0867

    ld b, b
    dec h
    inc [hl]
    rlca
    inc bc
    nop
    nop
    rst $10
    ld h, a
    or h
    ld l, d
    dec h
    inc [hl]
    dec b
    inc bc
    ld hl, sp+$08
    db $dd
    ld h, a
    adc $6a
    dec h
    inc [hl]
    dec b
    ld [bc], a
    ld hl, sp+$00
    rst $20
    ld h, a
    db $e3
    ld l, d
    dec h
    inc [hl]
    dec b
    ld [bc], a
    ld hl, sp+$00
    inc c
    ld l, b
    db $fc
    ld l, d
    dec h
    inc [hl]
    dec b
    ld [bc], a
    ld hl, sp+$00
    inc c
    ld l, b
    inc d
    ld l, e
    dec h
    inc [hl]
    dec b
    ld [bc], a
    ld hl, sp+$00
    inc c
    ld l, b
    inc l
    ld l, e
    dec h
    inc [hl]
    dec b
    ld [bc], a
    ld hl, sp+$00
    inc c
    ld l, b
    ld b, h
    ld l, e
    dec h
    inc [hl]
    dec b
    ld [bc], a
    ld hl, sp+$00
    inc c
    ld l, b
    ld d, [hl]
    ld l, e
    dec h
    inc [hl]
    dec b
    dec b
    ld hl, sp+$08
    ld [de], a
    ld l, b
    ld l, b
    ld l, e
    dec h
    inc [hl]
    inc b
    nop
    inc b
    nop
    ld h, $68
    ret nz

    ld l, e
    dec h
    inc [hl]
    inc b
    nop
    ld [$4f00], sp
    ld l, b
    ld [$2540], sp
    inc [hl]
    dec b
    rlca
    ld hl, sp+$07
    dec d
    ld l, b
    xor b
    ld l, e
    dec h
    inc [hl]
    rlca
    rlca
    ld hl, sp+$07
    jr jr_00f_58c7

    xor e
    ld l, e
    dec h
    inc [hl]
    add hl, bc
    rlca
    ld hl, sp+$07
    dec de
    ld l, b
    or c
    ld l, e
    dec h
    inc [hl]
    ld bc, $f807
    rlca
    ld e, $68
    or h
    ld l, e
    dec h
    inc [hl]
    inc bc
    rlca
    ld hl, sp+$07
    ld hl, $b768
    ld l, e
    dec h
    inc [hl]
    nop
    nop
    nop
    ld bc, $5973
    ld [bc], a
    ld a, l
    ld e, c
    inc bc
    sub c
    ld e, c
    dec b
    and l
    ld e, c
    ld b, $9b
    ld e, c
    ld [$5987], sp
    rst $38
    nop
    nop
    nop
    ld bc, $5973
    ld [bc], a
    jp $0359


    xor a
    ld e, c
    dec b
    call $0759
    cp c
    ld e, c
    rst $38
    nop
    nop
    nop
    ld [bc], a
    rst $10
    ld e, c
    ld b, $e1
    ld e, c
    rst $38
    nop
    nop
    nop
    ld bc, $5973
    ld [bc], a
    push af
    ld e, c
    inc bc
    dec e
    ld e, d
    inc b
    db $eb
    ld e, c
    dec b
    rst $38
    ld e, c
    rlca

jr_00f_58c7:
    add hl, bc
    ld e, d
    ld [$5a13], sp
    ld [$5a27], sp
    rst $38
    nop
    nop
    nop
    ld bc, $5973
    inc bc
    ld sp, $075a
    dec sp
    ld e, d
    rst $38
    nop
    nop
    nop
    ld bc, $5973
    ld [bc], a
    ld b, l
    ld e, d
    ld [bc], a
    ld l, l
    ld e, d
    dec b
    ld h, e
    ld e, d
    ld b, $4f
    ld e, d
    ld [$5a59], sp
    rst $38
    nop
    nop
    nop
    ld bc, $5973
    ld b, $77
    ld e, d
    rst $38
    nop
    nop
    nop
    ld bc, $5973
    inc bc
    adc e
    ld e, d
    inc b
    xor c
    ld e, d
    dec b
    sbc a
    ld e, d
    rlca
    sub l
    ld e, d
    rlca
    add c
    ld e, d
    rst $38
    nop
    nop
    nop
    ld bc, $5973
    inc bc
    cp l
    ld e, d
    rlca
    or e
    ld e, d
    rst $38
    nop
    nop
    nop
    ld bc, $5973
    dec b
    rst $00
    ld e, d
    dec b
    pop de
    ld e, d
    rlca
    db $db
    ld e, d
    rst $38
    nop
    nop
    nop
    ld bc, $5973
    ld [bc], a
    rst $28
    ld e, d
    ld [bc], a
    ld sp, hl
    ld e, d
    rlca
    push hl
    ld e, d
    rlca
    inc bc
    ld e, e
    rst $38
    nop
    nop
    nop
    ld bc, $5973
    ld [bc], a
    ld hl, $035b
    dec c
    ld e, e
    rlca
    rla
    ld e, e
    rlca
    dec hl
    ld e, e
    rst $38
    nop
    nop
    nop
    ld bc, $5973
    inc bc
    ld d, e
    ld e, e
    dec b
    ld c, c
    ld e, e
    ld b, $3f
    ld e, e
    ld [$5b35], sp
    rst $38
    nop
    nop
    nop
    ld bc, $5973
    dec b
    ld e, l
    ld e, e
    rst $38
    ld bc, $0001
    nop
    dec l
    ld l, c
    ld [$2540], sp
    inc [hl]
    ld [bc], a
    ld [bc], a
    ld hl, sp-$08
    ld [hl], d
    ld b, l
    ld [$2540], sp
    inc [hl]
    ld [$f802], sp
    nop
    add a
    ld b, l
    ld [$2540], sp
    inc [hl]
    inc bc
    inc b
    ld hl, sp+$00
    ld [$0845], a
    ld b, b
    dec h
    inc [hl]
    ld b, $05
    ld hl, sp+$00
    rst $08
    ld c, h
    ld [$2540], sp
    inc [hl]
    dec b
    inc bc
    ld hl, sp-$08
    ld b, a
    ld b, [hl]
    ld [$2540], sp
    inc [hl]
    inc bc
    ld [bc], a
    ld hl, sp+$00
    push de
    ld c, h
    ld [$2540], sp
    inc [hl]
    rlca
    inc bc
    ld hl, sp+$08
    ld c, a
    ld c, [hl]
    ld [$2540], sp
    inc [hl]
    ld [bc], a
    dec b
    ld hl, sp+$08
    inc bc
    ld c, a
    ld [$2540], sp
    inc [hl]
    dec b
    inc b
    ldh a, [$08]
    cp a
    ld c, l
    ld [$2540], sp
    inc [hl]
    ld [bc], a
    inc b
    nop
    nop
    or a
    ld c, a
    ld [$2540], sp
    inc [hl]
    ld b, $04
    ld [bc], a
    inc b
    ld e, c
    ld d, c
    ld [$2540], sp
    inc [hl]
    inc b
    inc bc
    nop
    nop
    ld c, l
    ld d, h
    ld [$2540], sp
    inc [hl]
    ld [bc], a
    inc b
    ld hl, sp+$00
    dec hl
    ld d, l
    ld [$2540], sp
    inc [hl]
    dec b
    dec b
    ld hl, sp+$00
    ld e, b
    ld d, l
    ld [$2540], sp
    inc [hl]
    rlca
    ld b, $00
    nop
    cp e
    ld d, e
    ld [$2540], sp
    inc [hl]
    ld [$f804], sp
    nop
    sbc e
    ld d, l
    ld [$2540], sp
    inc [hl]
    inc bc
    ld [bc], a
    ld hl, sp-$08
    add hl, de
    ld d, e
    ld [$2540], sp
    inc [hl]
    ld [$f802], sp
    nop
    jp nz, $0852

    ld b, b
    dec h
    inc [hl]
    inc bc
    ld [bc], a
    nop
    nop
    dec l
    ld [hl], b
    ld [$2540], sp
    inc [hl]
    rlca
    inc b
    nop
    nop
    dec [hl]
    ld [hl], b
    ld [$2540], sp
    inc [hl]
    ld [bc], a
    dec b
    nop
    nop
    db $fc
    ld d, a
    ld [$2540], sp
    inc [hl]
    ld b, $05
    nop
    nop
    ld d, [hl]
    ld e, b
    ld [$2540], sp
    inc [hl]
    ld [$f803], sp
    nop
    ld b, e
    ld e, d
    ld [$2540], sp
    inc [hl]
    dec b
    ld [bc], a
    nop
    ld hl, sp-$29
    ld e, c
    ld [$2540], sp
    inc [hl]
    ld [bc], a
    inc bc
    nop
    ld hl, sp-$07
    ld e, b
    ld [$2540], sp
    inc [hl]
    ld b, $03
    or $00
    sub a
    ld e, e
    ld [$2540], sp
    inc [hl]
    rlca
    inc b
    nop
    nop
    di
    ld e, h
    ld [$2540], sp
    inc [hl]
    inc bc
    dec b
    ld hl, sp-$08
    ld [hl], e
    ld e, h
    ld [$2540], sp
    inc [hl]
    rlca
    ld [bc], a
    ld hl, sp+$00
    ld c, c
    ld e, h
    ld [$2540], sp
    inc [hl]
    dec b
    dec b
    nop
    ld [$6072], sp
    ld [$2540], sp
    inc [hl]
    inc b
    inc bc
    ld hl, sp-$08
    cp e
    ld e, a
    ld [$2540], sp
    inc [hl]
    inc bc
    inc bc
    ld b, $f8
    ld h, a
    ld l, l
    ld [$2540], sp
    inc [hl]
    rlca
    dec b
    ld hl, sp-$08
    inc bc
    ld l, l
    ld [$2540], sp
    inc [hl]
    inc bc
    inc b
    nop
    nop
    ld d, b
    ld b, [hl]
    ld [$2540], sp
    inc [hl]
    dec b
    ld [bc], a
    ld hl, sp-$08
    push de
    ld c, h
    ld [$2540], sp
    inc [hl]
    rlca
    ld b, $00
    ld hl, sp-$41
    ld c, l
    ld [$2540], sp
    inc [hl]
    rlca
    rlca
    ld hl, sp-$08
    ld c, l
    ld d, h
    ld [$2540], sp
    inc [hl]
    inc bc
    dec b
    ld hl, sp+$00
    ld e, b
    ld d, l
    ld [$2540], sp
    inc [hl]
    ld [bc], a
    inc bc
    ld hl, sp+$00
    call nz, $0853
    ld b, b
    dec h
    inc [hl]
    rlca
    inc bc
    nop
    ld hl, sp-$65
    ld d, l
    ld [$2540], sp
    inc [hl]
    inc bc
    inc b
    nop
    ld hl, sp+$56
    ld e, b
    ld [$2540], sp
    inc [hl]
    rlca
    ld [bc], a
    ld hl, sp+$00
    ld sp, hl
    ld e, b
    ld [$2540], sp
    inc [hl]
    ld [bc], a
    ld [bc], a
    nop
    ld hl, sp+$43
    ld e, d
    ld [$2540], sp
    inc [hl]
    rlca
    dec b
    ld hl, sp-$08
    jp nc, $084c

    ld b, b
    dec h
    inc [hl]
    ld [$f805], sp
    ld hl, sp+$73
    ld e, h
    ld [$2540], sp
    inc [hl]
    ld b, $02
    nop
    ld hl, sp+$49
    ld e, h
    ld [$2540], sp
    inc [hl]
    dec b
    dec b
    ld hl, sp+$00
    rst $28
    ld e, a
    ld [$2540], sp
    inc [hl]
    inc bc
    inc bc
    ld hl, sp+$00
    cp e
    ld e, a
    ld [$2540], sp
    inc [hl]
    dec b
    ld b, $f8
    ld hl, sp-$43
    ld [hl], b
    ld [$2540], sp
    inc [hl]
    nop
    nop
    nop
    inc bc
    ld l, [hl]
    ld e, e
    rst $38
    dec b
    ld bc, $e2ca
    add c
    ld l, d
    rst $28
    ld l, h
    dec h
    inc [hl]
    nop
    nop
    nop
    dec b
    ld a, a
    ld e, e
    rst $38
    dec b
    ld bc, $e2c0
    ld a, h
    ld l, c
    db $ed
    ld l, e
    dec h
    inc [hl]
    ld b, $06
    nop
    nop
    cpl
    ld h, h
    add e
    ld h, h
    dec h
    inc [hl]
    ld [$f007], sp
    ld hl, sp+$56
    ld h, h
    ld [$2540], sp
    inc [hl]
    nop
    nop
    nop
    ld bc, $5bfd
    dec b
    rlca
    ld e, h
    ld [$5c43], sp
    add hl, bc
    ld de, $0a5c
    dec de
    ld e, h
    dec bc
    cpl
    ld e, h
    dec bc
    add hl, sp
    ld e, h
    inc c
    dec h
    ld e, h
    rst $38
    nop
    nop
    nop
    ld bc, $5c4d
    ld [bc], a
    ld d, a
    ld e, h
    inc bc
    ld h, c
    ld e, h
    inc b
    ld l, e
    ld e, h
    dec b
    ld [hl], l
    ld e, h
    dec b
    ld a, a
    ld e, h
    rst $38
    nop
    nop
    nop
    ld bc, $5c89
    ld b, $93
    ld e, h
    ld b, $9d
    ld e, h
    rst $38
    nop
    nop
    nop
    dec b
    and a
    ld e, h
    dec b
    or c
    ld e, h
    rst $38
    nop
    nop
    nop
    nop
    cp e
    ld e, h
    nop
    db $e3
    ld e, h
    inc b
    push bc
    ld e, h
    inc b
    rst $08
    ld e, h
    rlca
    reti


    ld e, h
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    inc bc
    ld [$6b06], sp
    ld h, h
    xor l
    ld h, h
    ld hl, $0534
    dec b
    nop
    nop
    sbc h
    ld h, h
    rst $20
    ld h, h
    ld hl, $0834
    inc bc
    nop
    ld [$64c4], sp
    ld [$2140], sp
    inc [hl]
    add hl, bc
    inc b
    nop
    ld hl, sp-$34
    ld h, h
    ld [$2140], sp
    inc [hl]
    ld a, [bc]
    inc bc
    nop
    nop
    call nc, $0864
    ld b, b
    ld hl, $0b34
    inc b
    nop
    nop
    call c, $0864
    ld b, b
    ld hl, $0c34
    dec b
    nop
    ld hl, sp-$1c
    ld h, h
    ld [$2140], sp
    inc [hl]
    dec c
    inc bc
    nop
    nop
    db $ec
    ld h, h
    ld [$2140], sp
    inc [hl]
    ld bc, $0002
    dec b
    ld a, [$2364]
    ld h, l
    ld hl, $0234
    inc bc
    nop
    dec b
    ld a, [$3a64]
    ld h, l
    ld hl, $0334
    ld [bc], a
    nop
    or $fa
    ld h, h
    ld c, [hl]
    ld h, l
    ld hl, $0434
    ld [bc], a
    nop
    nop
    ld a, [$6564]
    ld h, l
    ld hl, $0534
    dec b
    nop
    ld bc, $6504
    adc c
    ld h, l
    ld hl, $0534
    nop
    nop
    cp $1e
    ld h, l
    and [hl]
    ld h, l
    ld hl, $0534
    ld b, $fe
    ld a, [c]
    daa
    ld h, l
    cp [hl]
    ld h, l
    ld hl, $0734
    rlca
    nop
    ldh a, [$63]
    ld h, l
    db $d3
    ld h, l
    ld hl, $0734
    rlca
    nop
    ldh a, [$6f]
    ld h, l
    ld bc, $2166
    inc [hl]
    dec b
    nop
    ld hl, sp-$0a
    add a
    ld h, l
    dec [hl]
    ld h, [hl]
    ld hl, $0534
    ld b, $f8
    ld hl, sp-$24
    ld h, l
    ccf
    ld h, [hl]
    ld hl, $0034
    dec b
    db $fd
    nop
    pop af
    ld h, l
    xor c
    ld h, a
    dec h
    inc [hl]
    dec b
    dec b
    nop
    nop
    jr nz, jr_00f_5d31

    ld b, c
    ld h, a
    dec h
    inc [hl]
    inc b
    nop
    db $fd
    ld [bc], a
    rlca
    ld h, [hl]
    daa
    ld h, a
    dec h
    inc [hl]
    add hl, bc
    rlca
    stop
    inc d
    ld h, [hl]
    cp a
    ld h, a
    dec h
    inc [hl]
    nop
    nop
    nop
    nop
    nop
    ld b, b
    pop de
    ld h, a
    dec h
    inc [hl]
    inc b
    ld b, $08
    ld hl, sp+$30
    ld l, h
    ld [$2140], sp
    inc [hl]
    ld [bc], a
    ld [bc], a
    ld [bc], a
    cp $23
    ld l, h
    ret nz

    ld l, [hl]
    ld hl, $0334
    dec b
    ld c, $02
    xor a
    ld l, h
    or b
    ld l, a
    ld hl, $0034
    nop
    nop
    ld [$5d34], sp
    rst $38
    nop
    nop
    nop
    ld de, $5d34
    ld a, [de]
    inc e
    ld e, l
    rst $38
    nop
    ld a, [de]
    nop
    nop
    ld l, c
    ld d, d
    ld [$2140], sp
    inc [hl]
    nop
    nop
    nop
    ld a, [bc]
    ld a, $5d
    rst $38
    nop
    nop
    nop
    inc b

jr_00f_5d31:
    ld a, $5d
    rst $38
    ld [$0011], sp
    nop
    jr nz, jr_00f_5da7

    cp b
    ld l, a
    ld hl, $0a34
    inc b
    nop
    nop
    ld l, d
    ld l, l
    xor d
    ld [hl], c
    ld hl, $0034
    nop
    nop
    ld bc, $5d6a
    rst $38
    nop
    nop
    nop
    ld bc, $5d6a
    rst $38
    nop
    nop
    nop
    ld bc, $5d74
    add hl, bc
    ld a, [hl]
    ld e, l
    rst $38
    nop
    nop
    nop
    ld bc, $5d74
    add hl, bc
    ld a, [hl]
    ld e, l
    rst $38
    ld bc, $0001
    nop
    or $6e
    call z, $f276
    dec [hl]
    ld bc, $0001
    nop
    or $6e
    and e
    ld [hl], h
    ld a, [c]
    dec [hl]
    add hl, bc
    add hl, bc
    nop
    nop
    or $6e
    db $f4
    ld [hl], l
    ld a, [c]
    dec [hl]
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    ld [$5e80], sp
    rrca
    ld l, h
    ld e, [hl]
    inc d
    db $76
    ld e, [hl]
    dec e
    ld h, d
    ld e, [hl]
    jr nz, jr_00f_5df5

    ld e, [hl]
    inc hl
    ld c, l
    ld e, [hl]
    ld h, $42
    ld e, [hl]
    rst $38
    nop
    nop

jr_00f_5da7:
    nop
    inc bc
    cp [hl]
    ld e, [hl]
    rlca
    and b
    ld e, [hl]
    ld a, [bc]
    jp nc, $105e

    xor d
    ld e, [hl]
    ld [de], a
    ret z

    ld e, [hl]
    dec d
    call c, $185e
    or h
    ld e, [hl]
    ld a, [de]
    adc d
    ld e, [hl]
    dec de
    sub l
    ld e, [hl]
    rst $38
    nop
    nop
    nop
    ld bc, $5ebe
    ld [bc], a
    jp nc, $025e

    sub l
    ld e, [hl]
    inc bc
    ret z

    ld e, [hl]
    dec b
    adc d
    ld e, [hl]
    rlca
    xor d
    ld e, [hl]
    add hl, bc
    call c, $095e
    and b
    ld e, [hl]
    ld a, [bc]
    or h
    ld e, [hl]
    rst $38
    nop
    nop
    nop
    ld bc, $5ee6
    inc bc
    pop af
    ld e, [hl]
    dec b
    ld a, [de]
    ld e, a
    rlca
    db $10
    ld e, a
    dec bc
    ld l, $5f

jr_00f_5df5:
    ld [de], a
    ld b, $5f
    inc de
    db $fc
    ld e, [hl]
    inc de
    inc h
    ld e, a
    rst $38
    nop
    nop
    nop
    inc bc
    inc h
    ld e, a
    inc c
    pop af
    ld e, [hl]
    inc c
    db $fc
    ld e, [hl]
    inc c
    ld b, $5f
    rst $38
    nop
    nop
    nop
    nop
    ld h, d
    ld e, a
    nop
    ld l, h
    ld e, a
    dec b
    db $76
    ld e, a
    inc c
    sub h
    ld e, a
    dec d
    sbc [hl]
    ld e, a
    ld hl, $5f80
    add hl, hl
    adc d
    ld e, a
    ld l, $38
    ld e, a
    cpl
    ld b, e
    ld e, a
    cpl
    ld c, [hl]
    ld e, a
    cpl
    ld e, b
    ld e, a
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    dec bc
    xor b
    ld e, a
    rst $38
    nop
    nop
    nop
    ld h, $03
    inc bc
    nop
    dec l
    ld c, h
    ld [hl], $4d
    ld a, l
    inc [hl]
    nop
    inc hl
    inc bc
    nop
    rst $38
    ld [hl], a
    ld [hl], h
    ld d, c
    ld c, l
    add hl, hl
    inc [hl]
    nop
    jr nz, jr_00f_5e5e

    nop
    nop
    add a
    ld c, l

jr_00f_5e5e:
    ld [$0840], sp
    dec [hl]
    dec e
    inc b
    nop
    nop
    db $dd
    ld c, l
    cp d
    ld c, a
    inc hl
    dec [hl]
    rrca
    inc b
    ld hl, sp+$00
    ld l, b
    ld c, [hl]
    ld a, [hl]
    ld d, b
    dec [hl]
    dec [hl]
    inc d
    ld [bc], a
    nop
    nop
    sbc b
    ld d, d
    add $45
    ld a, [de]
    dec [hl]
    ld [$0006], sp
    nop
    and e
    ld c, l
    cp a
    ld d, d
    rst $38
    inc [hl]
    ld a, [de]
    dec b
    or $00
    inc a
    ld c, h
    ld [hl], $4d
    ld a, l
    inc [hl]
    ld [bc], a
    dec de
    ld [bc], a
    nop
    rst $38
    ld [hl], a
    ld [hl], h
    ld d, c
    ld c, l
    add hl, hl
    inc [hl]
    ld [bc], a
    rlca
    add hl, bc
    ld [$7500], sp
    ld d, h
    ld b, h
    ld b, h
    sub a
    ld [hl], $10
    rlca
    nop
    nop
    adc $52
    ld [$5840], sp
    ld [hl], $18
    ld a, [bc]
    nop
    nop
    ld e, b
    ld d, l
    sbc [hl]
    ld d, [hl]
    ld hl, $0334
    ld bc, $0000
    ld l, e
    ld d, l
    ld [$2140], sp
    inc [hl]
    ld [de], a
    inc bc
    nop
    nop
    cp e
    ld d, e
    ld b, h
    ld b, h
    adc h
    inc [hl]
    ld a, [bc]
    ld [bc], a
    nop
    nop
    rst $20
    ld d, h
    ld [hl], $56
    adc h
    inc [hl]
    dec d
    add hl, bc
    nop
    nop
    ld b, [hl]
    ld d, e
    ld [$8c40], sp
    inc [hl]
    ld bc, $080b
    nop
    ld c, e
    ld c, h
    ld [$7d40], sp
    inc [hl]
    inc b
    inc bc
    dec bc
    nop
    rst $38
    ld [hl], a
    ld [hl], h
    ld d, c
    ld c, l
    add hl, hl
    inc [hl]
    inc b
    inc de
    inc c
    nop
    nop
    or b
    ld e, c
    ld [hl], b
    ld b, [hl]
    adc h
    inc [hl]
    ld [de], a
    inc c
    rlca
    nop
    ldh a, [$57]
    xor c
    ld e, b
    ld c, a
    ld [hl], $07
    ld b, $00
    nop
    push bc
    ld e, c
    ldh [$58], a
    ld c, a
    ld [hl], $05
    ld bc, $0000
    ld d, h
    ld e, d
    ld [$6140], sp
    ld [hl], $13
    inc bc
    nop
    nop
    ld e, h
    ld e, b
    ld [$5840], sp
    ld [hl], $0b
    ld [bc], a
    nop
    nop
    ei
    ld e, c
    and c
    ld e, d

Call_00f_5f36:
    adc h
    inc [hl]
    ld b, $2d
    ld [bc], a
    ld [bc], a
    ld h, e
    ld c, h
    ccf
    ld c, l
    ld a, l
    inc [hl]
    ld b, $02
    cpl
    nop
    rst $38
    ld [hl], a
    ld [hl], h
    ld d, c
    ld c, l
    add hl, hl
    inc [hl]
    ld b, $08
    cpl
    db $fc
    nop
    db $e3
    ld e, [hl]
    rst $38
    ld b, e
    or $34
    add hl, bc
    cpl
    nop
    nop
    dec b
    ld e, a
    rst $38
    ld b, e
    or $34
    ld [bc], a
    nop
    ld [$3400], sp
    ld h, c
    ld [$2140], sp
    inc [hl]
    rlca
    nop
    ld hl, sp+$00
    inc [hl]
    ld h, c
    ld [$2140], sp
    inc [hl]
    nop
    dec b
    nop
    nop
    add hl, bc
    ld e, h
    ld [$4f40], sp
    ld [hl], $06
    ld hl, $0000
    rst $28
    ld e, a
    ld [$5840], sp
    ld [hl], $03
    add hl, hl
    nop
    nop
    db $76
    ld e, h
    and d
    ld d, l
    adc h
    inc [hl]
    ld [$080c], sp
    ldh [$bb], a
    ld e, a
    db $dd
    ld h, c
    adc h
    inc [hl]
    rlca
    dec d
    nop
    nop
    xor $5c
    ret nc

    ld e, a
    db $e4
    inc [hl]
    dec bc
    dec b
    nop
    nop
    and b
    ld [hl], b
    cp e
    ld [hl], a
    inc b
    ld [hl], $00
    nop
    nop
    nop
    nop
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

Call_00f_6036:
    nop
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

Call_00f_6136:
    nop
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

Call_00f_6236:
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [$ffff], sp
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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

Call_00f_7453:
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

jr_00f_7f69:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr jr_00f_7f69

    nop
    nop
    ld hl, $0009
    nop
    ld b, c
    inc sp
    nop
    nop
    add e
    ld c, h
    nop
    nop
    ret c

    ld d, c
    nop
    nop
    inc sp
    ld [bc], a
    nop
    nop
    sub b
    ld [hl], h
    nop
    nop
    inc d
    nop
