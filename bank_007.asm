SECTION "ROM Bank $007", ROMX[$4000], BANK[$7]

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
    add hl, hl
    ld b, a
    ld c, b
    ld b, a
    jp nz, $c647

    ld b, a
    add hl, de
    ld c, b
    dec [hl]
    ld c, b
    ld [hl], $59
    dec a
    ld e, c
    ldh [rOBP0], a
    ld [$0948], a
    ld c, c
    add hl, de
    ld c, c
    adc d
    ld c, b
    and b
    ld c, b
    ld b, a
    ld c, c
    ld h, b
    ld c, c
    ret nz

    ld c, c
    sub $49
    ld b, h
    ld e, c
    ld c, [hl]
    ld e, c
    ld d, $4a
    jr nz, jr_007_40a8

    add hl, sp
    ld c, d
    xor c
    ld c, d
    xor l
    ld c, d
    db $e4
    ld c, d
    dec de
    ld c, e
    ld sp, $474b
    ld c, e
    add h
    ld c, e
    adc b
    ld c, e
    sub d
    ld c, e
    sbc h
    ld c, e
    and e
    ld c, e
    xor l
    ld c, e
    or h
    ld c, e
    cp b
    ld c, e
    bit 1, e
    ld c, b
    ld c, a
    and e
    ld c, a
    db $d3
    ld d, b
    dec c
    ld d, c
    push bc
    ld d, c
    ret


    ld d, c
    ld l, c
    ld d, d
    sbc d
    ld d, d
    ld sp, hl
    ld e, b
    nop
    ld e, c
    ld e, a
    ld d, e
    add h
    ld d, e
    ld h, $54
    ld b, l
    ld d, h
    and l
    ld d, h
    cp [hl]
    ld d, h
    ld b, c
    ld d, l
    ld b, l
    ld d, l
    inc d
    ld e, c
    dec de
    ld e, c
    db $76
    ld e, c

jr_007_40a8:
    ld [hl+], a
    ld e, d
    ld a, d
    ld e, c
    ld [hl+], a
    ld e, d
    sub e
    ld e, c
    or d
    ld e, c
    pop de
    ld e, c
    db $ed
    ld e, c
    ld [hl+], a
    ld e, d
    db $fd
    ld e, c
    ld h, $5a
    ld [hl+], a
    ld e, d
    ret


    ld b, d
    ld sp, hl
    ld b, d
    cp b
    ld c, e
    bit 1, e
    ld b, h
    ld e, c
    ld c, [hl]
    ld e, c
    inc d
    ld e, c
    dec de
    ld e, c
    adc a
    ld d, l
    rst $20
    ld d, a
    cp d
    ld d, l
    rst $20
    ld d, a
    db $fd
    ld d, l
    rst $20
    ld d, a
    rlca
    ld d, [hl]
    rst $20
    ld d, a
    dec e
    ld d, [hl]
    rst $20
    ld d, a
    inc h
    ld d, [hl]
    rst $20
    ld d, a
    ld sp, $e756
    ld d, a
    call nz, $e755
    ld d, a
    ldh [rHDMA5], a
    rst $20
    ld d, a
    ld sp, hl
    ld d, l
    rst $20
    ld d, a
    ld a, $56
    rst $20
    ld d, a
    rst $20
    ld d, a
    rst $20
    ld d, a
    rst $20
    ld d, a
    rst $20
    ld d, a
    rst $20
    ld d, a
    rst $20
    ld d, a
    rst $20
    ld d, a
    rst $20
    ld d, a
    rst $20
    ld d, a
    rst $20
    ld d, a
    rst $20
    ld d, a
    rst $20
    ld d, a
    rst $20
    ld d, a
    rst $20
    ld d, a
    rst $20
    ld d, a
    rst $20
    ld d, a
    rst $20
    ld d, a
    rst $20
    ld d, a
    rst $20
    ld d, a
    rst $20
    ld d, a
    rst $20
    ld d, a
    rst $20
    ld d, a
    rst $20
    ld d, a
    rst $20
    ld d, a
    rst $20
    ld d, a
    rst $20
    ld d, a
    rst $20
    ld d, a
    rst $20
    ld d, a
    rst $20
    ld d, a
    rst $20
    ld d, a
    rst $20
    ld d, a
    rst $20
    ld d, a
    adc e
    ld d, a
    rst $20
    ld d, a
    and a
    ld d, a
    rst $20
    ld d, a
    cp l
    ld d, a
    rst $20
    ld d, a
    jp z, $e757

    ld d, a
    call nc, $e757
    ld d, a
    nop
    ld b, b
    ld [$2540], sp
    inc [hl]
    ld bc, $084a
    ld b, b
    call $0035
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
    and $4a
    jp $2147


    inc [hl]
    pop af
    ld c, b
    ld d, b
    ld c, h
    ld hl, $2734
    ld b, h
    ld [bc], a
    ld b, e
    and a
    dec [hl]
    xor a
    ld c, e
    ld [$af40], sp
    dec [hl]
    sub [hl]
    ld c, e
    ld [$ab40], sp
    dec [hl]
    jp c, $2a4b

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
    ld [hl], $c6
    ld c, [hl]
    ld [$2140], sp
    inc [hl]
    ldh [rKEY1], a
    ld [$3e40], sp
    dec [hl]
    add $4e
    ld [$2140], sp
    inc [hl]
    ld hl, sp+$5d
    dec h
    ld e, [hl]
    ld hl, $0434
    ld d, b
    ld [$2140], sp
    inc [hl]
    rst $20
    ld d, b
    ld [$8f40], sp
    dec [hl]
    pop af
    ld d, b
    ld [$2140], sp
    inc [hl]
    ld h, b
    ld l, e
    ld [$2140], sp
    inc [hl]
    ld a, c
    ld e, d
    ld [$2540], sp
    inc [hl]
    ld [hl], c
    ld l, b
    ld [$2140], sp
    inc [hl]
    sub a
    ld l, c
    ld [$2140], sp
    inc [hl]
    xor d
    ld l, c
    ld [$2140], sp
    inc [hl]
    call c, $086d
    ld b, b
    rra
    ld [hl], $60
    ld l, a
    dec hl
    ld [hl], h
    ld hl, $ef34
    ld l, l
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
    jr jr_007_4249

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

jr_007_4220:
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
    cp b
    ld b, e
    ld b, a
    jp nz, Jump_007_4a43

    call z, Call_007_4f43
    sub $43
    ld c, [hl]
    ldh [rSCX], a
    rst $38
    nop
    nop
    nop
    dec b

jr_007_4249:
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
    jr nc, jr_007_4220

jr_007_427e:
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
    jr c, jr_007_4304

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
    jr c, jr_007_4325

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
    jr nz, jr_007_427e

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

jr_007_4304:
    rrca
    dec b
    nop
    nop
    add a
    ld b, l
    ret z

    ld b, d
    adc h
    inc [hl]
    ld de, $f805
    nop
    add hl, de
    ld c, l
    ret c

    ld d, c
    rst $38
    inc [hl]
    ld de, $0005
    nop
    add a
    ld b, l
    ret z

    ld b, d
    adc h
    inc [hl]
    dec d
    inc b
    nop

jr_007_4325:
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
    ld d, d
    ld c, h
    ld e, l
    ld c, l
    ld a, [de]
    dec [hl]
    jr jr_007_433c

    nop
    nop
    ld e, e
    ld c, h

jr_007_433c:
    sbc c
    ld c, l
    ld a, [de]
    dec [hl]
    rra
    ld bc, $0000
    ld b, a
    ld b, [hl]
    ld [$8c45], sp
    inc [hl]
    ld hl, $0005
    nop
    xor [hl]
    ld b, l
    rst $38
    ld b, e
    adc h
    inc [hl]
    add hl, hl
    dec b
    ld [$0b00], sp
    ld c, l
    db $e4
    ld d, c
    rst $38
    inc [hl]
    jr nc, jr_007_4362

    nop
    nop

jr_007_4362:
    jr z, @+$4f

    ld a, l
    ld b, [hl]
    adc h
    inc [hl]
    jr nc, jr_007_436f

    ld hl, sp+$00
    add hl, de
    ld c, l
    ret c

jr_007_436f:
    ld d, c
    rst $38
    inc [hl]
    ld sp, $0002
    ld [$4d28], sp
    ld a, l
    ld b, [hl]
    adc h
    inc [hl]
    inc sp
    inc bc
    nop
    nop
    ld e, e
    ld c, h
    sbc c
    ld c, l
    ld a, [de]
    dec [hl]
    add hl, sp
    inc b
    nop
    nop
    ld e, e
    ld c, h
    sbc c
    ld c, l
    ld a, [de]
    dec [hl]
    dec a
    ld bc, $0000
    ld b, a
    ld b, [hl]
    ld [$8c45], sp
    inc [hl]
    ld b, b
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
    ccf
    ld c, l
    xor [hl]
    ld c, [hl]
    inc hl
    dec [hl]
    ld b, e
    dec b
    ld [$1900], sp
    ld c, l
    ret c

    ld d, c
    rst $38
    inc [hl]
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
    ld d, d
    ld c, h
    ld e, l
    ld c, l
    ld a, [de]
    dec [hl]
    ld c, d
    inc b
    nop
    nop
    ld e, e
    ld c, h
    sbc c
    ld c, l
    ld a, [de]
    dec [hl]
    ld c, a
    ld [bc], a
    nop
    nop
    ld b, a
    ld b, [hl]
    ld a, l
    ld b, [hl]
    adc h
    inc [hl]
    ld c, [hl]
    inc bc
    ld a, [$5800]
    ld c, c
    dec e
    ld b, e
    ld c, l
    inc [hl]
    ld [bc], a
    dec b
    ld b, $00
    nop
    ld l, $49
    ld [$6540], sp
    inc [hl]
    nop
    ld a, [bc]
    ld b, $00
    nop
    ld l, $49
    ld [$6540], sp
    inc [hl]
    ld bc, $0112
    nop
    nop
    ld b, a
    ld b, [hl]
    ld [$8c45], sp
    inc [hl]
    rrca
    ld b, $00
    nop
    ld e, b
    ld c, [hl]
    add h
    ld c, a
    ld h, d
    dec [hl]
    dec d
    ld b, $f8
    nop
    dec bc
    ld c, l
    db $e4
    ld d, c
    rst $38
    inc [hl]
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
    jr z, jr_007_447c

    ld a, l
    ld b, [hl]
    adc h
    inc [hl]
    rra
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
    ld [$8c45], sp
    inc [hl]
    inc h
    ld b, $00
    nop
    sub d
    ld c, l
    ld b, $4f
    dec [hl]
    dec [hl]
    ld h, $00
    ret nc

    nop
    ld b, a
    ld b, [hl]
    ld d, $4d
    adc h
    inc [hl]
    ld a, [bc]
    nop
    ldh [rP1], a
    inc d
    ld c, a
    rst $18
    ld c, a
    add hl, hl
    inc [hl]
    ld b, $37
    ld b, $f8
    nop
    dec sp
    ld b, [hl]
    db $f4
    ld c, h
    adc h
    inc [hl]
    ld a, [hl+]
    ld [bc], a
    nop
    nop
    ld d, d
    ld c, h
    ld e, l
    ld c, l
    ld a, [de]
    dec [hl]
    dec hl
    ld [bc], a

jr_007_447c:
    nop
    ld a, [bc]
    ld d, d
    ld c, h
    ld e, l
    ld c, l
    ld a, [de]
    dec [hl]
    ld a, [hl+]
    ld b, $00
    nop
    ld e, b
    ld c, [hl]
    add h
    ld c, a
    ld h, d
    dec [hl]
    dec l
    ld b, $00
    nop
    ld e, e
    ld c, h
    sbc c
    ld c, l
    ld a, [de]
    dec [hl]
    cpl
    ld b, $f8
    nop
    add hl, de
    ld c, l
    ret c

    ld d, c
    rst $38
    inc [hl]
    jr nc, jr_007_44a9

    nop
    nop
    dec sp
    ld b, [hl]
    db $f4

jr_007_44a9:
    ld c, h
    adc h
    inc [hl]
    ld [hl-], a
    nop
    cp d
    nop
    ld b, a
    ld b, [hl]
    ld d, $4d
    adc h
    inc [hl]
    jr c, jr_007_44b8

jr_007_44b8:
    cp b
    nop
    ld b, a
    ld b, [hl]
    ld d, $4d
    adc h
    inc [hl]
    ld a, [hl-]
    ld b, $00
    nop
    ccf
    ld c, l
    sub [hl]
    ld c, [hl]
    inc hl
    dec [hl]
    dec sp
    ld [bc], a
    nop
    nop
    ld d, d
    ld c, h
    ld e, l
    ld c, l
    ld a, [de]
    dec [hl]
    dec sp
    ld b, $f8
    nop
    dec bc
    ld c, l
    db $e4
    ld d, c
    rst $38
    inc [hl]
    ccf
    ld b, $00
    nop
    db $10
    ld c, [hl]
    ld b, $4f
    ld b, a
    dec [hl]
    ld b, c
    ld b, $f0
    nop
    dec sp
    ld b, [hl]
    db $f4
    ld c, h
    adc h
    inc [hl]
    ld b, d
    ld b, $08
    nop
    dec bc
    ld c, l
    db $e4
    ld d, c
    rst $38
    inc [hl]
    ld b, h
    ld bc, $0000
    ld b, a
    ld b, [hl]
    ld [$8c45], sp
    inc [hl]
    ld b, l
    ld [bc], a
    nop
    nop
    ld d, d
    ld c, h
    ld e, l
    ld c, l
    ld a, [de]
    dec [hl]
    ld b, [hl]
    ld b, $08
    nop
    dec bc
    ld c, l
    db $e4
    ld d, c
    rst $38
    inc [hl]
    ld c, h
    ld b, $00
    nop
    db $10
    ld c, [hl]
    ld b, $4f
    ld b, a
    dec [hl]
    ld b, $04
    nop
    nop
    ld e, e
    ld c, h
    sbc c
    ld c, l
    ld a, [de]
    dec [hl]
    add hl, bc
    inc b
    nop
    nop
    xor [hl]
    ld b, l
    rst $38
    ld b, e
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
    rst $28
    ld c, h
    dec sp
    ld c, [hl]
    ld [$0c35], sp
    inc de
    ld sp, hl
    nop
    rst $28
    ld c, h
    dec sp
    ld c, [hl]
    ld [$0135], sp
    ld c, $08
    nop
    inc [hl]
    ld c, c
    ld [$5940], sp
    inc [hl]
    inc b
    nop
    rlca
    inc de
    nop
    nop
    ld e, e
    ld c, h
    sbc c
    ld c, l
    ld a, [de]
    dec [hl]
    ld b, $17
    ld [bc], a
    nop
    bit 1, h
    rst $20
    ld c, l
    ld [$0e35], sp
    rla
    ld [bc], a
    nop
    jp c, $084d

    ld b, b
    ld [$0b35], sp
    inc e
    nop
    nop
    sub d
    ld c, l
    ld b, $4f
    dec [hl]
    dec [hl]
    inc bc
    jr nz, jr_007_458d

jr_007_458d:
    nop
    and h
    ld c, l
    ld c, $4f
    dec [hl]
    dec [hl]
    ld [bc], a
    dec h
    nop
    nop
    bit 1, h
    rst $20
    ld c, l
    ld [$0735], sp
    ld d, $02
    push de
    inc hl
    ld d, b
    ld [$2140], sp
    inc [hl]
    nop
    ld a, [de]
    nop
    nop
    add c
    ld d, c
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
    ld [$0001], sp
    nop
    ld a, $54
    ld c, l
    ld d, l
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
    jr c, jr_007_463c

    ld d, c
    ld d, d
    adc h
    inc [hl]
    dec d
    nop
    ret nz

    nop
    jr c, jr_007_4646

    ld d, c
    ld d, d
    adc h
    inc [hl]
    dec bc
    ld b, $00
    nop
    db $f4
    ld c, b
    ld [$3540], sp
    inc [hl]
    rst $38
    ld a, [bc]
    ld b, $e0
    nop
    ld c, a
    ld d, e
    ld [c], a
    ld d, e
    adc h
    inc [hl]
    inc d
    ld b, $e0
    nop
    ld c, a
    ld d, e
    ld [c], a
    ld d, e
    adc h
    inc [hl]
    ld d, $06
    nop
    nop
    ld a, $54
    ld c, l
    ld d, l
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

jr_007_463c:
    ld b, [hl]
    ld c, $88
    ld b, [hl]
    rst $38
    inc b
    dec bc
    ld [$2500], sp

jr_007_4646:
    ld c, c
    ld [$3b40], sp
    inc [hl]
    rlca
    nop
    inc bc
    nop
    nop
    jp c, $d152

    ld b, d
    adc h
    inc [hl]
    rlca
    ld bc, $0008
    ld sp, $085c
    ld b, b
    db $db
    inc [hl]
    nop
    rlca
    nop
    nop
    ld d, b
    ld b, [hl]
    ld a, h
    ld d, [hl]
    adc h
    inc [hl]
    ld [bc], a
    dec bc
    nop
    nop
    ld d, b
    ld b, [hl]
    ld a, c
    ld d, [hl]
    adc h
    inc [hl]
    inc bc
    ld c, $00
    nop
    xor [hl]
    ld b, l
    rst $38
    ld b, e
    adc h
    inc [hl]
    dec b
    ld c, $00
    nop
    dec e
    ld b, [hl]
    rst $38
    ld b, e
    adc h
    inc [hl]
    rlca
    ld c, $00
    nop
    xor [hl]
    ld b, l
    rst $38
    ld b, e
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
    and h
    ld d, d
    ld b, l
    ld d, e
    adc h
    inc [hl]
    add hl, bc
    inc bc
    nop
    nop
    ld a, d
    ld d, d
    inc c
    ld d, e
    adc h
    inc [hl]
    rlca
    ld b, $00
    nop
    ld l, $49
    ld [$6540], sp
    inc [hl]
    nop
    ld [bc], a
    ld b, $00
    nop
    ld l, $49
    ld [$6540], sp
    inc [hl]
    ld bc, $0000
    nop
    add hl, bc
    dec d
    ld b, a
    rst $38
    nop
    nop
    nop
    ld bc, $46ed
    ld b, $01
    ld b, a
    ld b, $1f
    ld b, a
    add hl, bc
    rst $30
    ld b, [hl]
    ld a, [bc]
    dec bc
    ld b, a
    ld a, [bc]
    dec d
    ld b, a
    rst $38
    rlca
    ld bc, $0000
    ld a, [hl]
    ld d, h
    ld [$2140], sp
    inc [hl]
    ld de, $0009
    nop
    ld a, [hl]
    ld d, h
    ld [$2140], sp

Call_007_4700:
    inc [hl]
    inc b
    ld b, $00
    nop
    ld l, e
    ld d, h
    add l
    ld d, l
    ld hl, $0534
    ld a, [bc]
    nop
    nop
    ld l, e
    ld d, h
    add l
    ld d, l
    ld hl, $0934
    ld a, [bc]
    nop
    nop
    ld l, e
    ld d, h
    add l
    ld d, l
    ld hl, $1134
    ld b, $00
    nop
    ld l, e
    ld d, h
    add l
    ld d, l
    ld hl, $0034
    nop
    nop
    ld [bc], a
    ld [hl], d
    ld b, a
    dec b
    and h
    ld b, a
    ld [$4767], sp
    add hl, bc
    sub b
    ld b, a
    add hl, bc
    xor [hl]
    ld b, a
    dec bc
    cp b
    ld b, a
    dec c
    ld a, h
    ld b, a
    ld c, $9a
    ld b, a
    rrca
    add [hl]
    ld b, a
    rst $38
    nop
    nop
    nop
    ld bc, $4790
    ld bc, $479a
    ld [bc], a
    cp b
    ld b, a
    inc bc
    xor [hl]
    ld b, a
    dec b
    ld [hl], d
    ld b, a
    ld b, $86
    ld b, a
    rlca
    ld h, a
    ld b, a
    add hl, bc
    ld a, h
    ld b, a
    rlca
    and h
    ld b, a
    rst $38
    ld [$0007], sp
    nop
    ld l, $49
    ld [$6540], sp
    inc [hl]
    ld [$0502], sp
    nop
    nop
    db $e4
    ld d, c
    ld [$5840], sp
    ld [hl], $0d
    add hl, bc
    nop
    nop
    db $e4
    ld d, c
    ld [$5840], sp
    ld [hl], $0f
    ld b, $00
    nop
    db $e4
    ld d, c
    ld [$5840], sp
    ld [hl], $09
    ld bc, $00e0
    jp $4151


    ld d, d
    ld e, b
    ld [hl], $0e
    ld bc, $00e0
    jp $4151


    ld d, d
    ld e, b
    ld [hl], $05
    rlca
    nop
    nop
    ld [hl], d
    ld b, l
    ld [$b945], sp
    inc [hl]
    add hl, bc
    inc bc
    nop
    nop
    ld [hl], d
    ld b, l
    or d
    ld d, h
    cp c
    inc [hl]
    dec bc
    ld [bc], a
    nop
    nop
    ld b, a
    ld b, [hl]
    adc $42
    adc h
    inc [hl]
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    dec b
    call c, $0647
    ldh a, [rBGP]
    rlca
    ld a, [$0847]
    inc b
    ld c, b
    dec bc
    ld c, $48
    ld [de], a
    and $47
    rst $38
    add hl, bc
    dec b
    nop
    nop
    ld a, [$fa53]
    ld d, h
    adc h
    inc [hl]
    ld bc, $0012
    nop
    db $e4
    ld d, c
    ld [$5840], sp
    ld [hl], $01
    rlca
    nop
    ldh a, [$50]
    ld b, [hl]
    add d
    ld d, [hl]
    adc h
    inc [hl]
    inc b
    rlca
    nop
    nop
    ld d, b
    ld b, [hl]
    adc b
    ld d, [hl]
    adc h
    inc [hl]
    ld [$0008], sp
    nop
    inc h
    ld d, l
    ld [$db40], sp
    inc [hl]
    ld [$000b], sp
    nop
    ld a, [bc]
    ld c, c
    ld [$2f40], sp
    inc [hl]
    ld [bc], a
    nop
    nop
    nop
    rlca
    ld b, h
    ld c, b
    ld a, [bc]
    ld l, h
    ld c, b
    dec bc
    ld c, [hl]
    ld c, b
    rrca
    db $76
    ld c, b
    rrca
    ld e, b
    ld c, b
    ld de, $4862
    inc d
    add b
    ld c, b
    add hl, de
    add hl, sp
    ld c, b
    rst $38
    nop
    nop
    nop
    rst $38
    add hl, de
    ld b, $f8
    nop
    ld e, b
    ld c, c
    dec e
    ld b, e
    ld d, e
    inc [hl]
    inc bc
    rlca
    nop
    nop
    nop
    and c
    ld d, e
    dec h
    ld d, h
    sub a
    ld [hl], $0b
    inc bc
    nop
    nop
    nop
    ld b, b
    ld h, c
    ld d, h
    sub a
    ld [hl], $0f
    dec b
    nop
    nop
    and c
    ld d, e
    ld b, e
    ld d, h
    sub a
    ld [hl], $11
    nop
    nop
    nop
    and c
    ld d, e
    dec h
    ld d, h
    sub a
    ld [hl], $0a
    inc b
    nop
    nop
    pop de
    ld d, d
    reti


    ld d, d
    adc h
    inc [hl]
    rrca
    dec b
    ld d, $ee
    pop de
    ld d, d
    nop
    ld d, e
    adc h
    inc [hl]
    inc d
    inc b
    nop
    nop
    pop de
    ld d, d
    reti


    ld d, d
    adc h
    inc [hl]
    nop
    nop
    nop
    ld b, $b8
    ld c, b
    ld [$48c2], sp
    ld a, [bc]
    call z, $0b48
    and h
    ld c, b
    rrca
    sub $48
    rrca
    xor [hl]
    ld c, b
    rst $38
    nop
    nop
    nop
    rst $38
    dec bc
    ld [$0000], sp
    cpl
    ld d, d
    scf
    ld d, [hl]
    adc h
    inc [hl]
    rrca
    ld [$0000], sp
    cpl
    ld d, d
    scf
    ld d, [hl]
    adc h
    inc [hl]
    ld b, $00
    nop
    nop
    inc sp
    ld d, h
    ld b, l
    ld d, l
    add e
    inc [hl]
    ld [$0000], sp
    nop
    inc sp
    ld d, h
    ld b, l
    ld d, l
    add e
    inc [hl]
    ld a, [bc]
    nop
    nop
    nop
    inc sp
    ld d, h
    ld b, l
    ld d, l
    add e
    inc [hl]
    rrca
    nop
    nop
    nop
    inc sp
    ld d, h
    ld b, l
    ld d, l
    add e
    inc [hl]
    nop
    nop
    nop
    dec bc
    rst $38
    ld c, b
    dec bc
    db $f4
    ld c, b
    rst $38
    nop
    nop
    nop
    inc bc
    rst $38
    ld c, b
    add hl, bc
    db $f4
    ld c, b
    rst $38
    dec bc
    add hl, bc
    nop
    nop
    ld a, e
    ld d, [hl]
    ld [$5940], sp
    inc [hl]
    ld a, [bc]
    dec bc
    inc bc
    nop
    nop
    sbc b
    ld d, l
    ld [$2140], sp
    inc [hl]
    nop
    nop
    nop
    ld bc, $4931
    ld bc, $491d
    rlca
    inc a
    ld c, c
    ld [$4927], sp
    rst $38
    nop
    nop
    nop
    rst $38
    ld bc, $0801
    ld [$530d], sp
    sub [hl]
    ld d, e
    adc h
    inc [hl]
    ld [$f801], sp
    ld [$52e3], sp
    add c
    ld d, e
    adc h
    inc [hl]
    ld bc, $0801
    nop
    inc de
    ld c, c
    ld [$4740], sp
    inc [hl]
    inc b
    rlca
    inc bc
    ld [$2e00], sp
    ld c, c
    ld [$6540], sp
    inc [hl]
    dec b
    nop
    nop
    nop
    nop
    ld a, c
    ld c, c
    inc bc
    or [hl]
    ld c, c
    ld b, $a2
    ld c, c
    ld [$49ac], sp
    ld a, [bc]
    add h
    ld c, c
    dec bc
    adc [hl]
    ld c, c
    inc c
    sbc b
    ld c, c
    rst $38
    nop
    nop
    nop
    inc bc
    and d
    ld c, c
    inc b
    adc [hl]
    ld c, c
    dec b
    or [hl]
    ld c, c
    rlca
    sbc b
    ld c, c
    ld [$49ac], sp
    ld a, [bc]
    ld a, c
    ld c, c
    ld c, $84
    ld c, c
    rst $38
    nop
    ld a, [bc]
    nop
    nop
    ld l, $49
    ld [$6540], sp
    inc [hl]
    ld b, $0a
    ld c, $00
    nop
    ld d, a
    ld d, h
    rst $38
    ld b, e
    adc h
    inc [hl]
    dec bc
    inc b
    nop
    nop
    ld a, [hl]
    ld d, h
    ld [$2140], sp
    inc [hl]
    inc c
    rlca
    nop
    nop
    nop
    ld b, b
    ld h, l
    ld d, d
    ld hl, $0634
    inc bc
    nop
    nop
    ld [hl], d
    ld b, l
    or d
    ld d, h
    cp c
    inc [hl]
    ld [$0008], sp
    nop
    ld [hl], d
    ld b, l
    ld [$b945], sp
    inc [hl]
    inc bc
    dec b
    nop
    nop
    ld [hl], d
    ld b, l
    or d
    ld d, h
    cp c
    inc [hl]
    nop
    nop
    nop
    ld bc, $49da
    ld b, $ee
    ld c, c
    rlca
    ld hl, sp+$49
    ld a, [bc]
    ld [bc], a
    ld c, d
    inc c
    inc c
    ld c, d
    dec c
    db $e4
    ld c, c
    rst $38
    nop
    nop
    nop
    rst $38
    ld bc, $0003
    nop
    ld a, [hl-]
    ld d, e
    push hl
    ld d, [hl]
    adc h
    inc [hl]
    dec c
    inc bc
    nop
    nop
    inc sp
    ld d, h
    sub c
    ld d, [hl]
    adc h
    inc [hl]
    ld b, $04
    nop
    nop
    add a
    ld b, l
    adc $42
    add e
    inc [hl]
    rlca
    inc bc
    nop
    nop
    add a
    ld b, l
    adc $42
    add e
    inc [hl]
    ld a, [bc]
    dec b
    nop
    nop
    jr c, jr_007_4a5a

    ld d, c
    ld d, d
    adc h
    inc [hl]
    inc c
    dec b
    nop
    nop
    jr c, @+$54

    ld d, c
    ld d, d
    adc h
    inc [hl]
    nop
    nop
    nop
    ld bc, $4a24
    dec b
    ld l, $4a
    rst $38
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
    ld h, a
    ld c, c
    dec l
    ld b, e
    ld hl, $1f34
    nop
    nop
    nop
    db $10
    rst $08
    ld c, e
    ld [de], a
    reti


    ld c, e
    inc de

Jump_007_4a43:
    db $e3
    ld c, e
    inc d
    db $ed
    ld c, e
    ld d, $f7
    ld c, e
    add hl, de
    ld bc, $1b4c
    dec bc
    ld c, h
    jr nz, jr_007_4a68

    ld c, h
    jr nz, jr_007_4a75

    ld c, h
    ld [hl+], a
    add hl, hl
    ld c, h

jr_007_4a5a:
    dec h
    inc sp
    ld c, h
    dec l
    dec a
    ld c, h
    ld l, $47
    ld c, h
    ld [hl], $51
    ld c, h
    jr c, jr_007_4ac3

jr_007_4a68:
    ld c, h
    inc a
    ld h, l
    ld c, h
    dec a
    ld l, a
    ld c, h
    ld b, e
    ld a, c
    ld c, h
    ld b, l
    add e

jr_007_4a74:
    ld c, h

jr_007_4a75:
    ld d, b
    adc l
    ld c, h
    ld d, b
    sub a
    ld c, h
    ld d, b
    and c
    ld c, h
    ld d, e
    xor e
    ld c, h
    ld d, a
    or l
    ld c, h
    ld e, d
    cp a
    ld c, h
    ld e, d
    ret


    ld c, h
    ld e, h
    call nc, Call_007_614c
    sbc $4c
    ld h, c
    add sp, $4c
    ld h, a

jr_007_4a94:
    ld a, [c]
    ld c, h
    ld l, b
    db $fc
    ld c, h
    ld l, d
    ld b, $4d
    ld l, e
    db $10
    ld c, l
    ld l, a
    ld a, [de]
    ld c, l
    ld l, a
    inc h
    ld c, l
    ld l, a
    ld l, $4d
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    ld bc, $4d38
    ld [bc], a
    ld b, e
    ld c, l
    dec b
    ld c, l
    ld c, l
    dec b
    ld d, a
    ld c, l
    ld a, [bc]
    ld h, c
    ld c, l
    rrca
    ld l, e
    ld c, l
    db $10

jr_007_4ac3:
    ld [hl], l
    ld c, l
    dec d
    sbc l
    ld c, l
    rla
    ld a, a
    ld c, l
    jr jr_007_4a74

    ld c, l
    ld a, [de]
    adc c
    ld c, l
    ld e, $93
    ld c, l
    inc hl
    or c
    ld c, l
    jr z, jr_007_4a94

    ld c, l
    add hl, hl
    push bc
    ld c, l
    dec hl
    rst $08
    ld c, l
    ld l, $d9
    ld c, l
    rst $38
    nop
    nop
    nop
    ld bc, $4dbb
    ld [bc], a
    reti


    ld c, l
    ld [bc], a
    ld l, e
    ld c, l
    ld [bc], a
    sub e
    ld c, l
    inc bc
    adc c
    ld c, l
    inc bc
    ld a, a
    ld c, l
    dec b
    push bc
    ld c, l
    dec b
    ld h, c
    ld c, l
    ld [$4db1], sp
    add hl, bc
    ld b, e
    ld c, l
    add hl, bc
    ld d, a
    ld c, l
    add hl, bc
    rst $08
    ld c, l
    inc c
    ld [hl], l
    ld c, l
    dec c
    and a
    ld c, l
    dec c
    jr c, jr_007_4b61

    ld c, $9d
    ld c, l
    ld c, $4d
    ld c, l
    rst $38
    nop
    nop
    nop
    ld bc, $4de4
    ld [bc], a
    xor $4d
    ld b, $f8
    ld c, l
    dec b
    ld d, $4e
    rlca
    ld [bc], a
    ld c, [hl]
    rrca
    inc c
    ld c, [hl]
    rst $38
    nop
    nop
    nop
    ld bc, $4e02
    ld [bc], a
    db $e4
    ld c, l
    inc bc
    xor $4d
    inc bc
    ld hl, sp+$4d
    rlca
    inc c
    ld c, [hl]
    ld d, $16
    ld c, [hl]
    rst $38
    nop
    nop
    nop
    ld a, [bc]
    ld hl, $0e4e
    dec hl
    ld c, [hl]
    rrca
    dec [hl]
    ld c, [hl]
    ld [de], a
    ld b, b
    ld c, [hl]
    inc d
    ld c, d
    ld c, [hl]
    inc e
    ld d, h
    ld c, [hl]
    dec e
    ld e, [hl]
    ld c, [hl]
    ld e, $68

jr_007_4b61:
    ld c, [hl]
    ld h, $72
    ld c, [hl]
    ld h, $7c
    ld c, [hl]
    daa
    add [hl]
    ld c, [hl]
    inc l
    sub b
    ld c, [hl]
    ld l, $9a
    ld c, [hl]
    ld sp, $4ea4
    ld sp, $4eae
    inc sp
    cp b
    ld c, [hl]
    ld [hl], $c2
    ld c, [hl]
    inc a
    call z, $444e
    sub $4e
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    ld bc, $4ee0
    ld [bc], a
    db $eb
    ld c, [hl]
    rst $38
    nop
    nop
    nop
    inc b
    ldh [$4e], a
    inc b
    db $eb
    ld c, [hl]
    rst $38
    nop
    nop
    nop
    ld b, $f6
    ld c, [hl]
    rst $38
    nop
    nop
    nop
    ld [bc], a
    or $4e
    dec d
    nop
    ld c, a
    rst $38
    nop
    nop
    nop
    dec b
    dec bc
    ld c, a
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    ld a, [bc]
    add hl, hl
    ld c, a
    dec c
    dec d
    ld c, a
    ld c, $1f
    ld c, a
    jr jr_007_4bf9

    ld c, a
    ld h, $3e
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
    or l
    ld e, b
    pop de
    ld e, b
    adc h
    inc [hl]
    ld [de], a
    ld bc, $0000
    ld b, a
    ld b, [hl]
    xor d
    ld b, h
    adc h
    inc [hl]
    inc de
    inc bc
    nop
    ld hl, sp+$47
    ld b, [hl]
    ld a, l
    ld b, [hl]
    adc h
    inc [hl]
    inc d
    nop
    nop
    nop
    rst $00
    ld e, b
    rrca
    ld e, c
    adc h
    inc [hl]
    ld d, $05

jr_007_4bf9:
    nop
    nop
    inc e
    ld d, a
    ld [$5840], sp
    ld [hl], $19
    ld bc, $0000
    ld b, $59
    ld [$6140], sp
    ld [hl], $1b
    inc b
    nop
    nop
    db $f4
    ld c, b
    ld [$3540], sp
    inc [hl]
    jr nz, jr_007_4c1b

    nop
    nop
    xor [hl]
    ld b, l

jr_007_4c1b:
    rst $38
    ld b, e
    adc h
    inc [hl]
    jr nz, jr_007_4c25

    inc d
    nop
    xor [hl]
    ld b, l

jr_007_4c25:
    rst $38
    ld b, e
    adc h
    inc [hl]
    ld [hl+], a
    ld bc, $0800
    ld b, a
    ld b, [hl]
    ld a, l
    ld b, [hl]
    adc h
    inc [hl]
    dec h
    rlca
    nop
    nop
    ld a, a
    ld e, b
    sbc e
    ld d, a
    ld c, a
    ld [hl], $2d
    rlca
    nop
    nop
    ld a, a
    ld e, b
    db $dd
    ld d, a
    ld c, a
    ld [hl], $2e
    inc b
    nop
    nop
    rst $38
    ld e, a
    ld [$8c40], sp
    inc [hl]
    ld [hl], $07
    call c, $0700
    ld b, a
    ld e, c
    ld b, h
    db $db
    inc [hl]
    jr c, jr_007_4c64

    nop
    nop
    ld a, a
    ld e, b
    db $dd
    ld d, a
    ld c, a

jr_007_4c64:
    ld [hl], $3c
    nop
    call nz, Call_007_4700
    ld b, [hl]
    cp e
    ld b, l
    adc h
    inc [hl]
    dec a
    inc b
    nop
    nop
    or b
    ld d, [hl]
    rrca
    ld d, a
    xor c
    ld [hl], $43
    inc b
    nop
    nop
    cp [hl]
    ld e, b
    ld b, l
    ld e, c
    adc h
    inc [hl]
    ld b, l
    nop
    adc b
    nop
    ld d, b
    ld b, [hl]
    cp e
    ld b, l
    adc h
    inc [hl]
    ld d, b
    rlca
    sub d
    db $10
    call Call_007_7558
    ld e, c
    adc h
    inc [hl]
    ld d, b
    rlca
    or b
    jr z, @-$31

    ld e, b
    ld [hl], l
    ld e, c
    adc h
    inc [hl]
    ld d, b
    rlca
    adc $10
    call Call_007_7558
    ld e, c
    adc h
    inc [hl]
    ld d, e
    inc bc
    nop
    nop
    or l
    ld e, b
    jr nz, jr_007_4d0c

    adc h
    inc [hl]
    ld d, a
    rlca
    nop
    nop
    ld a, a
    ld e, b
    db $dd
    ld d, a
    ld c, a
    ld [hl], $5a
    rlca
    ret nz

    nop
    rlca
    ld b, a
    ld e, c
    ld b, h
    db $db
    inc [hl]
    ld e, d
    inc b
    nop
    nop
    dec h
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
    add hl, sp
    ld b, [hl]
    adc h
    inc [hl]
    ld h, c
    inc b
    nop
    nop
    add a
    ld b, l
    adc $42
    add e
    inc [hl]
    ld h, c
    inc b
    inc d
    nop
    pop hl
    ld b, l
    adc $42
    add e
    inc [hl]
    ld h, a
    ld [bc], a
    nop
    nop
    ld b, $59
    ld [$6140], sp
    ld [hl], $68
    nop
    nop
    nop
    ld b, $59
    ld [$6140], sp
    ld [hl], $6a
    inc bc
    nop
    nop
    ld b, $59

jr_007_4d0c:
    ld [$6140], sp
    ld [hl], $6b
    ld bc, $0000
    ld b, $59
    ld [$6140], sp
    ld [hl], $6f
    inc bc
    nop
    nop
    or b
    ld d, [hl]
    rrca
    ld d, a
    xor c
    ld [hl], $6f
    inc bc
    inc d
    nop
    or b
    ld d, [hl]
    rrca
    ld d, a
    xor c
    ld [hl], $6f
    inc bc
    jr z, jr_007_4d32

jr_007_4d32:
    or b
    ld d, [hl]
    rrca
    ld d, a
    xor c
    ld [hl], $01
    dec c
    ld [$2e00], sp
    ld c, c
    ld [$6540], sp
    inc [hl]
    ld bc, $0902
    nop
    nop
    rst $10
    ld d, a
    ld [$8c40], sp
    inc [hl]
    dec b
    inc c
    nop
    nop
    sub [hl]
    ld d, a
    ld [$5840], sp
    ld [hl], $05
    add hl, bc
    nop
    nop
    ret z

    ld d, a
    ld [$8c40], sp
    inc [hl]
    ld a, [bc]
    dec b
    nop
    nop
    ld l, d
    ld e, b
    sbc d
    ld b, l
    adc h
    inc [hl]
    rrca
    ld [bc], a
    nop
    nop
    ld b, $59
    ld [$6140], sp
    ld [hl], $10
    inc c
    nop
    nop
    ret z

    ld d, a
    cpl
    ld b, h
    adc h
    inc [hl]
    rla
    inc b
    nop
    nop
    cp $57
    ld b, h
    ld b, h
    adc h
    inc [hl]
    ld a, [de]
    inc bc
    nop
    nop
    cp $57
    ld b, h
    ld b, h
    adc h
    inc [hl]
    ld e, $02
    ld [$fe03], sp
    ld d, a
    ld b, h
    ld b, h
    adc h
    inc [hl]
    dec d
    inc c
    nop
    nop
    jp hl


    ld d, a
    ld [$8c40], sp
    inc [hl]
    jr @+$0d

    nop
    nop
    jp hl


    ld d, a
    ld [$8c40], sp
    inc [hl]
    inc hl
    ld [$0000], sp
    ld [hl], d
    ld b, l
    adc a
    ld b, h
    cp c
    inc [hl]
    jr z, @+$03

    ld [$fe08], sp
    ld d, a
    ld b, h
    ld b, h
    adc h
    inc [hl]
    add hl, hl
    dec b
    ld [$e200], sp
    ld e, b
    rst $38
    ld b, e
    adc h
    inc [hl]
    dec hl
    add hl, bc
    nop
    nop
    ld sp, hl
    ld d, [hl]
    ld [$4f40], sp
    ld [hl], $2e
    ld [bc], a
    ld [$3400], sp
    ld c, c
    ld [$5940], sp
    inc [hl]
    ld [bc], a
    ld bc, $0002
    nop
    ld de, $0859
    ld b, b
    ld h, c
    ld [hl], $02
    inc bc
    nop
    nop
    ld de, $0859
    ld b, b
    ld h, c
    ld [hl], $06
    inc bc
    nop
    nop
    ld de, $0859
    ld b, b
    ld h, c
    ld [hl], $07
    ld bc, $0000
    ld de, $0859
    ld b, b
    ld h, c
    ld [hl], $0f
    rlca
    nop
    nop
    ld a, a
    ld e, b
    db $dd
    ld d, a
    ld c, a
    ld [hl], $06
    inc de
    ld [$4600], sp
    ld c, c
    ld [$7740], sp
    inc [hl]
    inc bc
    ld a, [bc]
    rlca
    nop
    nop
    ld a, a
    ld e, b
    and a
    ld d, a
    ld c, a
    ld [hl], $0e
    rlca
    nop
    nop
    ld a, a
    ld e, b
    or e
    ld d, a
    ld c, a
    ld [hl], $0f
    ld [bc], a
    ld [$1300], sp
    ld c, c
    ld [$4740], sp
    inc [hl]
    ld [$0212], sp
    nop
    nop
    ld [c], a
    ld e, b
    rst $38
    ld b, e
    adc h
    inc [hl]
    inc d
    ld [bc], a
    nop
    nop
    ld sp, $085c
    ld b, b
    db $db
    inc [hl]
    inc e
    ld bc, $0000
    or l
    ld e, b
    jr nz, jr_007_4eb5

    adc h
    inc [hl]
    dec e
    ld [bc], a
    inc bc
    nop
    or l
    ld e, b
    jr nz, jr_007_4ebf

    adc h
    inc [hl]
    ld e, $07
    nop
    nop
    ld a, a
    ld e, b
    and a
    ld d, a
    ld c, a
    ld [hl], $26
    nop
    ret nc

    rlca
    ld b, a
    ld b, [hl]
    cp e
    ld b, l
    adc h
    inc [hl]
    ld h, $00
    add b
    rlca
    ld d, b
    ld b, [hl]
    ld [bc], a
    ld b, [hl]
    adc h
    inc [hl]
    daa
    dec b
    nop
    nop
    ld [hl], c
    ld b, [hl]
    ld [$db40], sp
    inc [hl]
    inc l
    inc bc
    nop
    nop
    dec sp
    ld b, [hl]
    add hl, sp
    ld b, [hl]
    adc h
    inc [hl]
    ld l, $07
    nop
    nop
    ld a, a
    ld e, b
    db $dd
    ld d, a
    ld c, a
    ld [hl], $31
    rlca
    ld hl, sp+$07
    db $fd
    ld e, b
    add a
    ld e, c
    adc h
    inc [hl]
    ld sp, $8007
    rlca
    db $fd
    ld e, b
    add a

jr_007_4eb5:
    ld e, c
    adc h
    inc [hl]
    inc sp
    dec b
    nop
    nop
    ld l, d
    ld e, b
    sbc d

jr_007_4ebf:
    ld b, l
    adc h
    inc [hl]
    ld [hl], $04
    nop
    nop
    ld [hl], c
    ld b, [hl]
    ld [$db40], sp
    inc [hl]
    inc a
    inc b
    nop
    nop
    jp nz, $2d56

    ld d, a
    ld c, a
    ld [hl], $44
    ld [bc], a
    nop
    nop
    adc h
    ld b, [hl]
    ld [$db40], sp
    inc [hl]
    ld bc, $0004
    nop
    scf
    ld c, c
    ld [$7740], sp
    inc [hl]
    inc b
    ld [bc], a
    inc b
    nop
    nop
    dec hl
    ld c, c
    ld [$6540], sp
    inc [hl]
    dec b
    ld b, $02
    ld [$2e00], sp
    ld e, c
    ld [$2140], sp
    inc [hl]
    dec b
    dec d
    ld [$5800], sp
    ld c, c
    dec e
    ld b, e
    ld c, l
    inc [hl]
    ld b, $04
    inc bc
    ld [$43f8], sp
    ld e, c
    ld [$2140], sp
    inc [hl]
    dec c
    dec b
    nop
    nop
    or b
    ld d, [hl]
    rrca
    ld d, a
    xor c
    ld [hl], $0e
    ld [bc], a
    nop
    nop
    rst $10
    ld d, a
    inc d
    ld b, h
    adc h
    inc [hl]
    ld a, [bc]
    inc bc
    nop
    nop
    rst $10
    ld d, a
    inc d
    ld b, h
    adc h
    inc [hl]
    jr jr_007_4f39

    ld [$1c00], sp
    ld c, c

jr_007_4f39:
    ld b, h
    ld b, h
    ld b, c
    inc [hl]
    rlca
    ld h, $01
    nop
    ei
    ld e, [hl]

Call_007_4f43:
    ld e, c
    and l
    ld e, c
    adc $35
    nop
    nop
    nop
    dec bc
    inc sp
    ld d, b
    ld c, $c9
    ld d, b
    inc de
    ld bc, $1750
    rst $30
    ld c, a
    dec de
    dec a
    ld d, b
    dec de
    ld d, c
    ld d, b
    inc hl
    ld b, a
    ld d, b
    inc h
    add e
    ld d, b
    dec h
    dec bc
    ld d, b
    inc l
    push bc
    ld c, a
    dec l
    rst $08
    ld c, a
    cpl
    reti


    ld c, a
    jr nc, @-$1b

    ld c, a
    ld [hl-], a
    db $ed
    ld c, a
    ld [hl], $a7
    ld c, a
    inc a
    or c
    ld c, a
    inc a
    cp e
    ld c, a
    ld b, c
    and c
    ld d, b
    ld b, a
    sub a
    ld d, b
    ld c, e
    adc l
    ld d, b
    ld c, a
    or l
    ld d, b
    ld d, e
    cp a
    ld d, b
    ld d, e
    ld e, e
    ld d, b
    ld d, l
    xor e
    ld d, b
    ld e, a
    dec d
    ld d, b
    ld h, d
    rra
    ld d, b
    ld e, a
    ld h, l
    ld d, b
    ld h, b
    ld l, a
    ld d, b
    ld h, b
    ld a, c
    ld d, b
    rst $38
    nop
    nop
    nop
    rst $38
    ld [hl], $00
    nop
    nop
    ld e, l
    ld e, [hl]
    reti


    ld e, [hl]
    adc h
    inc [hl]
    ld a, [hl-]
    ld [bc], a
    nop
    nop
    ld e, l
    ld e, [hl]
    reti


    ld e, [hl]
    adc h
    inc [hl]
    inc a
    nop
    nop
    nop
    ld e, l
    ld e, [hl]
    and [hl]
    ld e, [hl]
    adc h
    inc [hl]
    inc l
    rlca
    ret nz

    nop
    sbc e
    ld e, e
    sub h
    ld e, h
    db $e4
    inc [hl]
    dec l
    ld bc, $00c8
    sbc e
    ld e, e
    and e
    ld e, h
    db $e4
    inc [hl]
    cpl
    rlca
    ret nz

    nop
    sbc e
    ld e, e
    sub h
    ld e, h
    db $e4
    inc [hl]
    jr nc, jr_007_4feb

    nop
    nop
    sbc e
    ld e, e
    sub h
    ld e, h

jr_007_4feb:
    db $e4
    inc [hl]
    ld [hl-], a
    nop
    ret nz

    nop
    sbc e
    ld e, e
    and [hl]
    ld e, h
    db $e4
    inc [hl]
    rla
    inc bc
    ld [$3100], sp
    ld e, h
    ld [$db40], sp
    inc [hl]
    inc de
    nop
    ret nz

    nop
    inc hl
    ld e, e
    ld b, e
    ld d, [hl]
    adc h
    inc [hl]
    dec h
    inc b
    ldh [$f8], a
    ld a, [de]
    ld e, e
    db $e3
    ld e, e
    adc h
    inc [hl]
    ld e, a
    ld [$0090], sp
    inc hl
    ld e, e
    ld b, [hl]
    ld d, [hl]
    adc h
    inc [hl]
    ld h, d
    ld [$00a0], sp
    inc hl
    ld e, e
    ld b, [hl]
    ld d, [hl]
    adc h
    inc [hl]
    ld c, h
    inc bc
    nop
    nop
    pop hl
    ld b, l
    adc $42
    add e
    inc [hl]
    inc c
    ld [bc], a
    nop
    nop
    pop hl
    ld b, l
    adc $42
    add e
    inc [hl]
    dec de
    inc bc
    ld [$ae00], sp
    ld b, l
    rst $38
    ld b, e
    adc h
    inc [hl]
    inc hl
    ld b, $00
    nop
    jp hl


    ld e, e
    dec h
    ld e, h
    adc h
    inc [hl]
    dec de
    ld bc, $0000
    ld b, a
    ld b, [hl]
    xor d
    ld b, h
    adc h
    inc [hl]
    ld d, e
    ld bc, $0000
    ld b, a
    ld b, [hl]
    push hl
    ld b, l
    adc h
    inc [hl]
    ld e, a
    inc bc
    nop
    nop
    ld b, a
    ld b, [hl]
    ld a, l
    ld b, [hl]
    adc h
    inc [hl]
    ld h, b
    ld bc, $0000
    ld b, a
    ld b, [hl]
    ld a, l
    ld b, [hl]
    adc h
    inc [hl]
    ld h, b
    dec b
    nop
    nop
    ld b, a
    ld b, [hl]
    ld a, l
    ld b, [hl]
    adc h
    inc [hl]
    inc h
    nop
    ret nz

    nop
    ld d, b
    ld b, [hl]
    cp e
    ld b, l
    adc h
    inc [hl]
    ld c, e

jr_007_508e:
    nop
    nop
    nop
    ld a, h
    ld e, l
    push de
    ld e, l
    or $34
    ld b, a
    ld bc, $0000
    ld a, a
    ld e, l
    db $fd
    ld e, l
    or $34
    ld b, c
    ld bc, $0000
    ld a, h
    ld e, l
    push de
    ld e, l
    or $34
    ld d, l
    ld bc, $0000
    sub l
    ld d, l
    ld e, d
    ld e, [hl]
    db $db
    inc [hl]
    ld c, a
    nop
    nop
    nop
    ld a, a
    ld e, l
    db $fd
    ld e, l
    or $34
    ld d, e
    ld bc, $0000
    ld a, h
    ld e, l
    push de
    ld e, l
    or $34
    ld c, $00
    ld [$7200], sp
    ld b, l
    ld [$b945], sp
    inc [hl]
    nop
    nop
    nop
    add hl, bc
    sub e
    ld d, c
    dec bc
    cp e
    ld d, c
    db $10
    sbc l
    ld d, c
    inc d
    ld l, e
    ld d, c
    add hl, de
    ld [hl], l
    ld d, c
    jr nz, jr_007_508e

    ld d, c
    ld a, [hl+]
    dec h
    ld d, c
    dec hl
    add hl, sp
    ld d, c
    inc l
    cpl
    ld d, c
    inc l
    ld b, e
    ld d, c
    inc l
    ld c, l
    ld d, c
    inc [hl]
    ld de, $3651
    dec de
    ld d, c
    scf
    ld a, a
    ld d, c
    add hl, sp
    adc c
    ld d, c
    inc a
    ld d, a
    ld d, c
    ld a, $61
    ld d, c
    ld b, d
    or c
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
    sbc e
    ld e, e
    sub c
    ld e, h
    db $e4
    inc [hl]
    ld [hl], $07
    ret nc

    nop
    sbc e
    ld e, e
    sub c
    ld e, h
    db $e4
    inc [hl]
    ld a, [hl+]
    nop
    nop
    nop
    ld [$aa5b], sp
    ld e, e
    ld c, a
    ld [hl], $2c
    nop
    nop
    nop
    ld [$aa5b], sp
    ld e, e
    ld c, a
    ld [hl], $2b
    inc b
    jr nz, jr_007_513d

jr_007_513d:
    ld b, h
    ld e, e
    ld [$8c40], sp
    inc [hl]
    inc l
    ld [bc], a
    jr nz, jr_007_514f

    ld c, a
    ld e, e
    ld [$8c40], sp
    inc [hl]
    inc l
    dec b

jr_007_514f:
    jr nz, @+$0a

    ld e, l
    ld e, e
    ld [$8c40], sp
    inc [hl]
    inc a
    ld bc, $0000
    db $d3
    ld d, e
    call $8c54
    inc [hl]
    ld a, $03
    nop
    nop
    db $d3
    ld d, e
    call $8c54
    inc [hl]
    inc d
    inc b
    nop
    nop
    or a
    ld e, a
    ld [$8c40], sp
    inc [hl]
    add hl, de
    dec b
    nop
    nop
    or a
    ld e, a
    ld [$8c40], sp
    inc [hl]
    scf
    dec b
    nop
    nop
    ld a, l
    ld e, e
    adc $42
    adc h
    inc [hl]
    add hl, sp
    dec b
    nop
    nop
    ld a, l
    ld e, e
    adc $42
    adc h
    inc [hl]
    add hl, bc
    ld b, $00
    nop
    and e
    ld e, [hl]
    ld [$5840], sp
    ld [hl], $10
    ld b, $00
    nop
    xor [hl]
    ld e, [hl]
    ld [$5840], sp
    ld [hl], $20
    dec b
    nop
    nop
    sub c
    ld e, [hl]
    ld [$5840], sp
    ld [hl], $42
    inc bc
    ld hl, sp+$00
    sub c
    ld e, [hl]
    ld [$5840], sp
    ld [hl], $0b
    inc b
    nop
    nop
    sub c
    ld e, [hl]
    ld [$5840], sp
    ld [hl], $00
    nop
    nop
    rst $38
    nop
    nop
    nop
    inc b
    pop af
    ld d, c
    ld b, $37
    ld d, d
    rlca
    ld e, a
    ld d, d
    ld [$5255], sp
    dec bc
    rrca
    ld d, d
    ld c, $19
    ld d, d
    ld [de], a
    inc hl
    ld d, d
    ld [de], a
    dec l
    ld d, d
    inc d
    dec b
    ld d, d
    dec d
    ei
    ld d, c
    add hl, de
    ld c, e
    ld d, d
    dec e
    ld b, c
    ld d, d
    rst $38
    inc bc
    inc b
    nop
    nop
    sub c
    ld e, [hl]
    ld [$5840], sp
    ld [hl], $0e
    dec d
    nop
    nop
    ld e, l
    ld e, [hl]
    ld a, a
    ld e, [hl]
    adc h
    inc [hl]
    ld a, [bc]
    inc d
    nop
    nop
    ld e, l
    ld e, [hl]
    ld a, a
    ld e, [hl]
    adc h
    inc [hl]
    rrca
    dec bc
    ld [$5d00], sp
    ld e, [hl]
    and [hl]
    ld e, [hl]
    adc h
    inc [hl]
    ld a, [bc]
    ld c, $fe
    rlca
    ld e, l
    ld e, [hl]
    add d
    ld e, [hl]
    adc h
    inc [hl]
    rrca
    ld [de], a
    ld [$5d00], sp
    ld e, [hl]
    pop af
    ld e, [hl]
    adc h
    inc [hl]
    ld [$0012], sp
    nop
    jp hl


    ld e, e
    dec h
    ld e, h
    adc h
    inc [hl]
    ld [$0006], sp
    nop
    ld [hl-], a
    ld e, e
    ei
    ld e, e
    cp c
    inc [hl]
    ld [$001d], sp
    nop
    jp hl


    ld e, e
    dec h
    ld e, h
    adc h
    inc [hl]
    ld b, $19
    nop
    nop
    inc hl
    ld e, e
    rst $28
    ld e, e
    adc h
    inc [hl]
    rrca
    ld [$0000], sp
    inc hl
    ld e, e
    rst $28
    ld e, e
    adc h
    inc [hl]
    ld de, $0007
    nop
    sbc e
    ld e, e
    sub h
    ld e, h
    db $e4
    inc [hl]
    nop
    nop
    nop
    inc bc
    inc sp
    ld d, e
    rrca
    ld c, c
    ld d, e
    ld [de], a
    dec d
    ld d, e
    rla
    rra
    ld d, e
    inc e
    ld a, $53
    inc e
    add hl, hl
    ld d, e
    ld h, $c5
    ld d, d
    jr z, jr_007_52d7

    ld d, e
    add hl, hl
    rst $08
    ld d, d
    inc l
    rst $30
    ld d, d
    inc l
    ld bc, $2c53
    dec bc
    ld d, e
    ld sp, $52e3
    ld sp, $52d9
    ld sp, $52ed
    rst $38
    nop
    nop
    nop
    nop
    push bc
    ld d, d
    ld bc, $531f
    inc bc
    reti


    ld d, d
    inc bc
    ld a, $53
    dec b
    db $e3
    ld d, d
    inc b
    dec d
    ld d, e
    dec b
    ld c, c
    ld d, e
    rlca
    db $ed
    ld d, d
    rlca
    add hl, hl
    ld d, e
    ld [$5354], sp
    add hl, bc
    inc sp
    ld d, e
    ld a, [bc]
    rst $08
    ld d, d
    ld a, [bc]
    rra
    ld d, e
    rst $38
    ld h, $00
    ret nz

    nop
    ld [$6c5b], sp
    ld e, e
    ld c, a
    ld [hl], $29
    ld a, [bc]
    ret nz

    nop
    ld [$635b], sp
    ld e, e

jr_007_52d7:
    ld c, a
    ld [hl], $31
    inc bc
    nop
    nop
    ld b, a
    ld b, [hl]
    xor d
    ld b, h
    adc h
    inc [hl]
    ld sp, $e005
    nop
    ld b, a
    ld b, [hl]
    xor d
    ld b, h
    adc h
    inc [hl]
    ld sp, $0007
    nop
    ld b, a
    ld b, [hl]
    xor d
    ld b, h
    adc h
    inc [hl]
    inc l
    ld bc, $0000
    inc hl
    ld e, e
    call nc, $8c5b
    inc [hl]
    inc l
    inc bc
    nop
    nop
    inc hl
    ld e, e
    call nc, $8c5b
    inc [hl]
    inc l
    dec b
    nop
    nop
    inc hl
    ld e, e
    call nc, $8c5b
    inc [hl]
    ld [de], a
    inc b
    nop
    nop
    ld e, l
    ld e, [hl]
    reti


    ld e, [hl]
    adc h
    inc [hl]
    rla
    ld bc, $0000
    ld e, l
    ld e, [hl]
    and [hl]
    ld e, [hl]
    adc h
    inc [hl]
    inc e
    rlca
    nop
    nop
    ld e, l
    ld e, [hl]
    reti


    ld e, [hl]
    adc h
    inc [hl]
    inc bc
    add hl, bc
    nop
    nop
    inc e
    ld c, c
    ld [$4140], sp
    inc [hl]
    nop
    inc e
    inc bc
    nop
    nop
    inc [hl]
    ld c, c
    ld [$5940], sp
    inc [hl]
    ld bc, $050f
    nop

jr_007_534c:
    nop
    ld l, $49
    ld [$6540], sp
    inc [hl]
    ld [bc], a
    jr z, jr_007_535e

    nop
    nop
    ld b, [hl]
    ld c, c
    ld [$7740], sp
    inc [hl]

jr_007_535e:
    inc bc
    nop
    nop
    nop
    ld bc, $53f3
    inc b
    cp a
    ld d, e
    add hl, de
    jp hl


    ld d, e
    inc e
    rst $18
    ld d, e
    inc e
    call nc, $1d53
    or h
    ld d, e
    rra
    xor c
    ld d, e
    inc h
    ld [$2654], sp
    ld [de], a
    ld d, h
    ld a, [hl+]
    cp $53
    jr nc, jr_007_534c

    ld d, e
    rst $38
    nop
    nop
    nop
    nop
    jp z, $0453

    ld [de], a
    ld d, h
    inc b
    cp a
    ld d, e
    inc b
    call nc, $0553
    rst $18
    ld d, e
    dec b
    jp hl


    ld d, e
    ld b, $fe
    ld d, e
    ld b, $08
    ld d, h
    ld [$53b4], sp
    ld [$53f3], sp
    ld a, [bc]
    xor c
    ld d, e
    rst $38
    rra
    ld a, [bc]
    nop
    nop
    inc [hl]
    ld c, c
    ld [$5940], sp
    inc [hl]
    inc b
    dec e
    ld [$0000], sp
    dec hl
    ld c, c
    ld [$6540], sp
    inc [hl]
    dec b
    inc b
    inc b
    nop
    ld hl, sp+$71
    ld e, a
    ld l, c
    ld e, a
    ld hl, $0634
    cpl
    nop
    nop
    nop
    sbc e
    ld e, e
    and [hl]
    ld e, h
    db $e4
    inc [hl]
    inc e
    inc b
    nop
    nop
    dec hl
    ld c, c
    ld [$6540], sp
    inc [hl]
    ld [hl-], a
    inc e
    dec b
    ld a, [bc]
    or $72
    ld b, l
    adc a
    ld b, h
    cp c
    inc [hl]
    add hl, de
    dec b
    ld a, [bc]
    or $72
    ld b, l
    adc a
    ld b, h
    cp c
    inc [hl]
    ld bc, $0008
    nop
    inc e
    ld c, c
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
    ld [$8700], sp
    ld d, l
    ld [$db40], sp
    inc [hl]
    nop
    nop
    nop
    ld a, [bc]
    adc a
    ld d, h
    db $10
    sbc d
    ld d, h
    inc de
    ld c, c
    ld d, h
    dec e
    ld d, e
    ld d, h
    daa
    ld e, l
    ld d, h
    ld sp, $5467
    dec sp
    ld [hl], c
    ld d, h
    ld b, l
    ld a, e
    ld d, h
    ld c, a
    add l
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
    adc a
    ld e, a
    ld [$2140], sp
    inc [hl]
    dec e
    nop
    nop
    nop
    adc a
    ld e, a
    ld [$2140], sp
    inc [hl]
    daa
    nop
    nop
    nop
    adc a
    ld e, a
    ld [$2140], sp
    inc [hl]
    ld sp, $0000
    nop
    adc a
    ld e, a
    ld [$2140], sp
    inc [hl]
    dec sp
    nop
    nop
    nop
    adc a
    ld e, a
    ld [$2140], sp
    inc [hl]
    ld b, l
    nop
    nop
    nop
    adc a
    ld e, a
    ld [$2140], sp
    inc [hl]
    ld c, a
    nop
    nop
    nop
    adc a
    ld e, a
    ld [$2140], sp
    inc [hl]
    ld a, [bc]
    ld b, $00
    nop
    inc de
    ld c, c
    ld [$4740], sp
    inc [hl]
    ld [$0210], sp
    nop
    nop
    ldh a, [$60]
    ld [$7740], sp
    inc [hl]
    inc a
    nop
    nop
    nop
    inc b
    dec b
    ld d, l
    inc b
    ei
    ld d, h
    ld b, $0f
    ld d, l
    ld b, $23
    ld d, l
    add hl, bc

jr_007_54b5:
    add hl, de
    ld d, l
    ld a, [bc]
    dec l
    ld d, l
    ld a, [bc]
    scf
    ld d, l
    rst $38
    nop
    nop
    nop
    ld [bc], a
    add hl, de
    ld d, l
    ld [bc], a
    ei
    ld d, h
    dec b
    inc hl
    ld d, l
    ld c, $f1
    ld d, h
    rrca
    dec b
    ld d, l
    db $10
    scf
    ld d, l
    ld de, $550f
    jr jr_007_54b5

    ld d, h
    dec e
    dec l
    ld d, l
    rst $38
    ld [bc], a
    jr jr_007_54e0

jr_007_54e0:
    nop
    ld de, $935b
    ld e, e
    ld c, a
    ld [hl], $0e
    ld a, [bc]
    nop
    nop
    ld [$aa5b], sp
    ld e, e
    ld c, a
    ld [hl], $00
    ld c, $00
    nop
    ld de, $bf5b
    ld e, e
    ld c, a
    ld [hl], $04
    ld [bc], a
    nop
    nop
    ld a, h
    ld e, l
    jp hl


    ld e, l
    or $34
    inc b
    rrca
    nop
    nop
    ld a, h
    ld e, l
    push de
    ld e, l
    or $34
    ld b, $11
    nop
    nop
    ld a, h
    ld e, l
    push de
    ld e, l
    or $34
    add hl, bc
    ld [bc], a
    nop
    nop
    ld a, a
    ld e, l
    ld de, $f65e
    inc [hl]
    ld b, $05
    ld [$7f00], sp
    ld e, l
    ld de, $f65e
    inc [hl]
    ld a, [bc]
    dec e
    nop
    nop
    sbc l
    ld e, [hl]
    ld [$5840], sp
    ld [hl], $0a
    stop
    ld l, $44
    ld e, e
    ld [$8c40], sp
    inc [hl]
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    jr nz, jr_007_55a2

    ld d, l
    scf
    ld h, e
    ld d, l
    ld a, [hl-]
    ld a, c
    ld d, l
    ld d, c
    ld l, [hl]
    ld d, l
    ld d, l
    add h
    ld d, l
    rst $38
    inc bc
    jr nz, jr_007_555b

jr_007_555b:
    nop
    inc [hl]
    ld c, c
    sbc c
    ld e, a
    ld e, c
    inc [hl]
    ld de, $3708
    nop
    nop
    inc [hl]
    ld c, c
    sbc c
    ld e, a
    ld e, c
    inc [hl]
    jr jr_007_5570

    ld d, c

jr_007_5570:
    nop
    nop
    inc [hl]
    ld c, c
    sbc c
    ld e, a
    ld e, c
    inc [hl]
    jr nz, jr_007_557c

    ld a, [hl-]
    nop

jr_007_557c:
    nop
    ld b, [hl]
    ld c, c
    xor l
    ld e, a
    ld [hl], a
    inc [hl]
    add hl, de
    ld [$0055], sp
    nop
    ld b, [hl]
    ld c, c
    xor l
    ld e, a
    ld [hl], a
    inc [hl]
    inc h
    nop
    nop
    nop
    nop
    or b
    ld d, l
    nop
    and [hl]
    ld d, l
    inc b
    sbc h
    ld d, l
    rst $38
    inc b
    inc bc
    ld a, [bc]
    and $14
    ld h, c

jr_007_55a2:
    add $5f
    dec h
    inc [hl]
    nop
    rlca
    ldh a, [$f8]
    add hl, sp
    ld h, c
    ld [$2540], sp
    inc [hl]
    nop
    nop
    nop
    nop
    cp c
    ld h, c
    ld [$2540], sp
    inc [hl]
    nop
    nop
    nop
    ld b, $77
    ld d, a
    rlca
    add c
    ld d, a
    rst $38
    nop
    nop
    nop
    dec b
    pop hl
    ld d, [hl]
    dec b
    db $eb
    ld d, [hl]
    dec b
    push af
    ld d, [hl]
    dec b
    rst $38
    ld d, [hl]
    dec b
    add hl, bc
    ld d, a
    dec b
    inc de
    ld d, a
    dec b
    dec e
    ld d, a
    dec b
    daa
    ld d, a
    rst $38
    nop
    nop
    nop
    ld bc, $5763
    inc bc
    ld l, l
    ld d, a
    inc b
    ld sp, $0457
    dec sp
    ld d, a
    dec b
    ld b, l
    ld d, a
    rlca
    ld c, a
    ld d, a
    add hl, bc
    ld e, c
    ld d, a
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    dec b
    ld d, l
    ld d, [hl]
    ld b, $4b
    ld d, [hl]
    rst $38
    nop
    nop
    nop
    ld bc, $5687
    ld [bc], a
    ld a, l
    ld d, [hl]
    inc b
    sub c
    ld d, [hl]
    inc b
    ld e, a
    ld d, [hl]
    ld b, $73
    ld d, [hl]
    rlca
    ld l, c
    ld d, [hl]
    rst $38
    nop
    nop
    nop
    dec b
    sbc e
    ld d, [hl]
    rst $38
    nop
    nop
    nop
    inc bc
    and l
    ld d, [hl]
    dec b
    xor a
    ld d, [hl]
    dec b
    cp c
    ld d, [hl]
    rst $38
    nop
    nop
    nop
    ld bc, $56c3
    inc b
    call $0756
    rst $10
    ld d, [hl]
    rst $38
    nop
    nop
    nop
    ld [bc], a
    push hl
    ld e, b
    inc bc
    rst $28
    ld e, b
    inc b
    db $db
    ld e, b
    rst $38
    ld b, $06
    ld hl, sp+$00
    db $e4
    ld h, h
    cp c
    ld h, h
    dec h
    inc [hl]
    dec b
    ld b, $fb
    ld hl, sp-$51
    ld h, h
    sub c
    ld h, h
    dec h
    inc [hl]
    inc b
    nop
    ld [$ea08], sp
    ld h, h
    push bc
    ld h, h
    dec h
    inc [hl]
    rlca
    ld bc, $0b0c
    ld a, [c]
    ld h, h
    bit 4, h
    dec h
    inc [hl]
    ld b, $03
    ld [$fa08], sp
    ld h, h
    pop de
    ld h, h
    dec h
    inc [hl]
    ld [bc], a
    inc bc
    ld [$0208], sp
    ld h, l
    rst $10
    ld h, h
    dec h
    inc [hl]
    ld bc, $0401
    dec bc
    ld a, [bc]
    ld h, l
    cp a
    ld h, h
    dec h
    inc [hl]
    inc b
    ld b, $08
    nop
    ld c, b
    ld h, l
    sub c
    ld h, l
    dec h
    inc [hl]
    dec b
    ld b, $fb
    ld hl, sp-$41
    ld h, h
    and b
    ld h, h
    dec h
    inc [hl]
    inc bc
    nop
    db $fc
    nop
    ld [hl], b
    ld h, l
    or l
    ld h, l
    dec h
    inc [hl]
    dec b
    nop
    db $fc
    nop
    ld a, c
    ld h, l
    or l
    ld h, l
    dec h
    inc [hl]
    dec b
    nop
    db $fc
    nop
    add d
    ld h, l
    ld [$2540], sp
    inc [hl]
    ld bc, $0001
    nop
    ld a, $67
    ld [$2540], sp
    inc [hl]
    inc b
    inc b
    nop
    inc b
    inc de
    ld h, [hl]
    ld [$2540], sp
    inc [hl]
    rlca
    inc bc
    nop
    nop
    db $10
    ld h, [hl]
    call $2566
    inc [hl]
    dec b
    inc bc
    ld hl, sp+$08
    ld d, $66
    rst $20
    ld h, [hl]
    dec h
    inc [hl]
    dec b
    ld [bc], a
    ld hl, sp+$00
    jr nz, @+$68

    db $fc
    ld h, [hl]
    dec h
    inc [hl]
    dec b
    ld [bc], a
    ld hl, sp+$00
    ld b, l
    ld h, [hl]
    dec d
    ld h, a
    dec h
    inc [hl]
    dec b
    ld [bc], a
    ld hl, sp+$00
    ld b, l
    ld h, [hl]
    dec l
    ld h, a
    dec h
    inc [hl]
    dec b
    ld [bc], a
    ld hl, sp+$00
    ld b, l
    ld h, [hl]
    ld b, l
    ld h, a
    dec h
    inc [hl]
    dec b
    ld [bc], a
    ld hl, sp+$00
    ld b, l
    ld h, [hl]
    ld e, l
    ld h, a
    dec h
    inc [hl]
    dec b
    ld [bc], a
    ld hl, sp+$00
    ld b, l
    ld h, [hl]
    ld l, a
    ld h, a
    dec h
    inc [hl]
    dec b
    dec b
    ld hl, sp+$08
    ld c, e
    ld h, [hl]
    add c
    ld h, a
    dec h
    inc [hl]
    inc b
    nop
    inc b
    nop
    ld e, a
    ld h, [hl]
    reti


    ld h, a
    dec h
    inc [hl]
    inc b
    nop
    ld [$8800], sp
    ld h, [hl]
    ld [$2540], sp
    inc [hl]
    dec b
    rlca
    ld hl, sp+$07
    ld c, [hl]
    ld h, [hl]
    pop bc
    ld h, a
    dec h
    inc [hl]
    rlca
    rlca
    ld hl, sp+$07
    ld d, c
    ld h, [hl]
    call nz, $2567
    inc [hl]
    add hl, bc
    rlca
    ld hl, sp+$07
    ld d, h
    ld h, [hl]
    jp z, $2567

    inc [hl]
    ld bc, $f807
    rlca
    ld d, a
    ld h, [hl]
    call $2567
    inc [hl]
    inc bc
    rlca
    ld hl, sp+$07
    ld e, d
    ld h, [hl]
    ret nc

    ld h, a
    dec h
    inc [hl]
    ld b, $06
    nop
    nop
    ld l, b
    ld h, d
    sbc h
    ld h, b
    dec h
    inc [hl]
    ld [$f007], sp
    ld hl, sp-$71
    ld h, d
    ld [$2540], sp
    inc [hl]
    nop
    nop
    nop
    ld bc, $57eb
    dec b
    push af
    ld d, a
    ld [$5831], sp
    add hl, bc
    rst $38
    ld d, a
    ld a, [bc]
    add hl, bc
    ld e, b
    dec bc
    dec e
    ld e, b
    dec bc
    daa
    ld e, b
    inc c
    inc de
    ld e, b
    rst $38
    nop
    nop
    nop
    ld bc, $583b
    ld [bc], a
    ld b, l
    ld e, b
    inc bc
    ld c, a
    ld e, b
    inc b
    ld e, c
    ld e, b
    dec b
    ld h, e
    ld e, b
    dec b
    ld l, l
    ld e, b
    rst $38
    nop
    nop
    nop
    ld bc, $5877
    ld b, $81
    ld e, b
    ld b, $8b
    ld e, b
    rst $38
    nop
    nop
    nop
    dec b
    sub l
    ld e, b
    dec b
    sbc a
    ld e, b
    rst $38
    nop
    nop
    nop
    nop
    xor c
    ld e, b
    nop
    pop de
    ld e, b
    inc b
    or e
    ld e, b
    inc b
    cp l
    ld e, b
    rlca
    rst $00
    ld e, b
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    inc bc
    ld [$a406], sp
    ld h, d
    add $60
    ld hl, $0534
    dec b
    nop
    nop
    push de
    ld h, d
    nop
    ld h, c
    ld hl, $0834
    inc bc
    nop
    ld [$62fd], sp
    ld [$2140], sp
    inc [hl]
    add hl, bc
    inc b
    nop
    ld hl, sp+$05
    ld h, e
    ld [$2140], sp
    inc [hl]
    ld a, [bc]
    inc bc
    nop
    nop
    dec c
    ld h, e
    ld [$2140], sp
    inc [hl]
    dec bc
    inc b
    nop
    nop
    dec d
    ld h, e
    ld [$2140], sp
    inc [hl]
    inc c
    dec b
    nop
    ld hl, sp+$1d
    ld h, e
    ld [$2140], sp
    inc [hl]
    dec c
    inc bc
    nop
    nop
    dec h
    ld h, e
    ld [$2140], sp
    inc [hl]
    ld bc, $0002
    dec b
    inc sp
    ld h, e
    inc a
    ld h, c
    ld hl, $0234
    inc bc
    nop
    dec b
    inc sp
    ld h, e
    ld d, e
    ld h, c
    ld hl, $0334
    ld [bc], a
    nop
    or $33
    ld h, e
    ld h, a
    ld h, c
    ld hl, $0434
    ld [bc], a
    nop
    nop
    inc sp
    ld h, e
    ld a, [hl]
    ld h, c
    ld hl, $0534
    dec b
    nop
    ld bc, $633d
    and d
    ld h, c
    ld hl, $0534
    nop
    nop
    cp $57
    ld h, e
    cp a
    ld h, c
    ld hl, $0534
    ld b, $fe
    ld a, [c]
    ld h, b
    ld h, e
    rst $10
    ld h, c
    ld hl, $0734
    rlca
    nop
    ldh a, [$9c]
    ld h, e
    db $ec
    ld h, c
    ld hl, $0734
    rlca
    nop
    ldh a, [$a8]
    ld h, e
    ld a, [de]
    ld h, d
    ld hl, $0534
    nop
    ld hl, sp-$0a
    ret nz

    ld h, e
    ld c, [hl]
    ld h, d
    ld hl, $0534
    ld b, $f8
    ld hl, sp+$15
    ld h, h
    ld e, b
    ld h, d
    ld hl, $0034
    dec b
    db $fd
    nop
    ld a, [hl+]
    ld h, h
    jp nz, $2563

    inc [hl]
    dec b
    dec b
    nop
    nop
    ld e, c
    ld h, h
    ld e, d
    ld h, e
    dec h
    inc [hl]
    inc b
    nop
    db $fd
    ld [bc], a
    ld b, b
    ld h, h
    ld b, b
    ld h, e
    dec h
    inc [hl]
    add hl, bc
    rlca
    stop
    ld c, l
    ld h, h
    ret c

    ld h, e
    dec h
    inc [hl]
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ld [$2563], a
    inc [hl]
    inc b
    ld b, $08
    ld hl, sp+$73
    ld h, a
    ld [$2140], sp
    inc [hl]
    ld [bc], a
    ld [bc], a
    ld [bc], a
    cp $66
    ld h, a
    ld b, $68
    ld hl, $0334
    dec b
    ld c, $02
    ld a, [c]
    ld h, a
    or $68
    ld hl, $0034
    nop
    nop
    ld [$5922], sp
    rst $38
    nop
    nop
    nop
    ld de, $5922
    ld a, [de]
    ld a, [bc]
    ld e, c
    rst $38
    nop
    ld a, [de]
    nop
    nop
    sub c
    ld d, c
    ld [$2140], sp
    inc [hl]
    nop
    nop
    nop
    ld a, [bc]
    inc l
    ld e, c
    rst $38
    nop
    nop
    nop
    inc b
    inc l
    ld e, c
    rst $38
    ld [$0011], sp
    nop
    ld h, e
    ld l, b
    cp $68
    ld hl, $0a34
    inc b
    nop
    nop
    xor d
    ld l, b
    dec l
    ld l, e
    ld hl, $0034
    nop
    nop
    ld bc, $5958
    rst $38
    nop
    nop
    nop
    ld bc, $5958
    rst $38
    nop
    nop
    nop
    ld bc, $5962
    add hl, bc
    ld l, h
    ld e, c
    rst $38
    nop
    nop
    nop
    ld bc, $5962
    add hl, bc
    ld l, h
    ld e, c
    rst $38
    ld bc, $0001
    nop
    inc sp
    ld l, d
    jr c, jr_007_59d0

    ld a, [c]
    dec [hl]
    ld bc, $0001
    nop
    inc sp
    ld l, d
    add hl, bc
    ld l, [hl]
    ld a, [c]
    dec [hl]
    add hl, bc
    add hl, bc
    nop
    nop
    inc sp
    ld l, d
    ld e, d
    ld l, a
    ld a, [c]
    dec [hl]
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    ld [$5a6e], sp
    rrca
    ld e, d
    ld e, d
    inc d
    ld h, h
    ld e, d
    dec e
    ld d, b
    ld e, d
    jr nz, jr_007_59d1

    ld e, d
    inc hl
    dec sp
    ld e, d
    ld h, $30
    ld e, d
    rst $38
    nop
    nop
    nop
    inc bc
    xor h
    ld e, d
    rlca
    adc [hl]
    ld e, d
    ld a, [bc]
    ret nz

    ld e, d
    db $10
    sbc b
    ld e, d
    ld [de], a
    or [hl]
    ld e, d
    dec d
    jp z, $185a

    and d
    ld e, d
    ld a, [de]
    ld a, b
    ld e, d
    dec de
    add e
    ld e, d
    rst $38
    nop
    nop
    nop
    ld bc, $5aac
    ld [bc], a
    ret nz

    ld e, d
    ld [bc], a
    add e
    ld e, d
    inc bc
    or [hl]
    ld e, d
    dec b
    ld a, b
    ld e, d
    rlca
    sbc b
    ld e, d
    add hl, bc
    jp z, $095a

    adc [hl]
    ld e, d
    ld a, [bc]
    and d
    ld e, d

jr_007_59d0:
    rst $38

jr_007_59d1:
    nop
    nop
    nop
    ld bc, $5ad4
    inc bc
    rst $18
    ld e, d
    dec b
    ld [$075b], sp
    cp $5a
    dec bc
    inc e
    ld e, e
    ld [de], a
    db $f4
    ld e, d
    inc de
    ld [$135a], a
    ld [de], a
    ld e, e
    rst $38
    nop
    nop
    nop
    inc bc
    ld [de], a
    ld e, e
    inc c
    rst $18
    ld e, d
    inc c
    ld [$0c5a], a
    db $f4
    ld e, d
    rst $38
    nop
    nop
    nop
    nop
    ld d, b
    ld e, e
    nop
    ld e, d
    ld e, e
    dec b
    ld h, h
    ld e, e
    inc c
    add d
    ld e, e
    dec d
    adc h
    ld e, e
    ld hl, $5b6e
    add hl, hl
    ld a, b
    ld e, e
    ld l, $26
    ld e, e
    cpl
    ld sp, $2f5b
    inc a
    ld e, e
    cpl
    ld b, [hl]
    ld e, e
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    dec bc
    sub [hl]
    ld e, e
    rst $38
    nop
    nop
    nop
    ld h, $03
    inc bc
    nop
    inc de
    ld c, h
    jp z, Jump_007_7d4c

    inc [hl]
    nop
    inc hl
    inc bc
    nop
    rst $38
    adc l
    ld l, a
    push hl
    ld c, h
    add hl, hl
    inc [hl]
    nop
    jr nz, jr_007_5a4c

    nop
    nop
    rst $28
    ld c, h

jr_007_5a4c:
    ld [$0840], sp
    dec [hl]
    dec e
    inc b
    nop
    nop
    ccf
    ld c, l
    sub [hl]
    ld c, [hl]
    inc hl
    dec [hl]
    rrca
    inc b
    ld hl, sp+$00
    push bc
    ld c, l
    ld e, d
    ld c, a
    dec [hl]
    dec [hl]
    inc d
    ld [bc], a
    nop
    nop
    ld d, d
    ld c, h
    ld [$1a45], sp
    dec [hl]
    ld [$0006], sp
    nop
    dec bc
    ld c, l
    db $e4
    ld d, c
    rst $38
    inc [hl]
    ld a, [de]
    dec b
    or $00
    ld [hl+], a
    ld c, h
    jp z, Jump_007_7d4c

    inc [hl]
    ld [bc], a
    dec de
    ld [bc], a
    nop
    rst $38
    adc l
    ld l, a
    push hl
    ld c, h
    add hl, hl
    inc [hl]
    ld [bc], a
    rlca
    add hl, bc
    ld [$8800], sp
    ld d, e
    ld b, h
    ld b, h
    sub a
    ld [hl], $10
    rlca
    nop
    nop
    db $e4
    ld d, c
    ld [$5840], sp
    ld [hl], $18
    ld a, [bc]
    nop
    nop
    ld l, e
    ld d, h
    ld h, d
    ld d, l
    ld hl, $0334
    ld bc, $0000
    ld a, [hl]
    ld d, h
    ld [$2140], sp
    inc [hl]
    ld [de], a
    inc bc
    nop
    nop
    pop de
    ld d, d
    ld b, h
    ld b, h
    adc h
    inc [hl]
    ld a, [bc]
    ld [bc], a
    nop
    nop
    ld a, [$fa53]
    ld d, h
    adc h
    inc [hl]
    dec d
    add hl, bc
    nop
    nop
    ld e, h
    ld d, d
    ld [$8c40], sp
    inc [hl]
    ld bc, $080b
    nop
    ld sp, $084c
    ld b, b
    ld a, l
    inc [hl]
    inc b
    inc bc
    dec bc
    nop
    rst $38
    adc l
    ld l, a
    push hl
    ld c, h
    add hl, hl
    inc [hl]
    inc b
    inc de
    inc c
    nop
    nop
    ld l, d
    ld e, b
    sbc d
    ld b, l
    adc h
    inc [hl]
    ld [de], a
    inc c
    rlca
    nop
    or b
    ld d, [hl]
    ld h, h
    ld d, a
    ld c, a
    ld [hl], $07
    ld b, $00
    nop
    ld a, a
    ld e, b
    sbc e
    ld d, a
    ld c, a
    ld [hl], $05
    ld bc, $0000
    ld b, $59
    ld [$6140], sp
    ld [hl], $13
    inc bc
    nop
    nop
    inc e
    ld d, a
    ld [$5840], sp
    ld [hl], $0b
    ld [bc], a
    nop
    nop
    or l
    ld e, b
    ldh a, [$58]
    adc h
    inc [hl]
    ld b, $2d
    ld [bc], a
    ld [bc], a
    ld c, c
    ld c, h
    db $d3
    ld c, h
    ld a, l
    inc [hl]
    ld b, $02
    cpl
    nop
    rst $38
    adc l
    ld l, a
    push hl
    ld c, h
    add hl, hl
    inc [hl]
    ld b, $08
    cpl
    db $fc
    nop
    add l
    ld e, l
    rst $38
    ld b, e
    or $34
    add hl, bc
    cpl
    nop
    nop
    and a
    ld e, l
    rst $38
    ld b, e
    or $34
    ld [bc], a
    nop
    ld [$8f00], sp
    ld e, a
    ld [$2140], sp
    inc [hl]
    rlca
    nop
    ld hl, sp+$00
    adc a
    ld e, a
    ld [$2140], sp
    inc [hl]
    nop
    dec b
    nop
    nop
    or [hl]
    ld e, d
    ld [$4f40], sp
    ld [hl], $06
    ld hl, $0000
    sub c
    ld e, [hl]
    ld [$5840], sp
    ld [hl], $03
    add hl, hl
    nop
    nop
    inc hl
    ld e, e
    or d
    ld d, h
    adc h
    inc [hl]
    ld [$080c], sp
    ldh [$5d], a
    ld e, [hl]
    ld a, a
    ld e, [hl]
    adc h
    inc [hl]
    rlca
    dec d
    nop
    nop
    sbc e
    ld e, e
    sub h
    ld e, h
    db $e4
    inc [hl]
    dec bc
    dec b
    nop
    nop
    or [hl]
    ld l, e
    add hl, bc
    ld [hl], c
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

Call_007_614c:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $18
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
    stop
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
    add b
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, a
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
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

Call_007_7558:
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
    db $10
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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

Jump_007_7d4c:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    add b
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
