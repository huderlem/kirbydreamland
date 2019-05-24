SECTION "ROM Bank $008", ROMX[$4000], BANK[$8]

    nop
    cp b
    ld e, b
    db $ec
    nop
    add sp, $21
    ld sp, $35b7
    xor $b1
    ld b, c
    and d
    ld c, e
    add sp, -$21
    ld c, d
    push hl
    cp [hl]
    ld b, e
    ei
    ld b, d
    add sp, $21
    ld sp, $35b7
    xor $b1
    ld b, c
    and d
    ld c, e
    push hl
    cp [hl]
    ld b, e
    ld [$f740], sp
    sub c
    rst $38
    ld bc, $4034
    db $fc
    ld bc, $084a
    ld b, b
    ld hl, $e034
    db $fc
    xor b
    ld e, d
    ld [$2540], sp
    inc [hl]
    ldh [$fc], a
    ld b, h
    ld b, b
    ld [$2140], sp
    inc [hl]
    ldh [rSC], a
    add hl, hl
    ld e, l
    ld [bc], a
    ld sp, $e05d
    push hl
    ld d, b
    ld b, b
    ld a, [hl+]
    ld c, c
    inc a
    ld bc, $065c
    ld bc, $e65c
    rrca
    ld [$5c01], sp
    db $fc
    pop af
    ld c, b
    cp h
    ld [hl], l
    dec h
    inc [hl]
    rst $20
    db $10
    cp b
    ld e, b
    jp hl


    sub [hl]
    ld e, $0d
    db $10
    cp b
    ld e, b
    add b
    dec e
    ld e, h
    pop hl
    or $49
    push hl
    ld a, b
    ld b, b
    ld l, h
    ld c, c
    inc l
    ld bc, $285c
    ld bc, $fc5c
    cp [hl]
    ld b, e
    cp h
    ld [hl], l
    dec h
    inc [hl]
    ld e, b
    ld bc, $045c
    ld bc, $fc5c
    cp [hl]
    ld b, e
    rla
    ld b, e
    dec h
    inc [hl]
    db $fc
    cp [hl]
    ld b, e
    cp h
    ld [hl], l
    dec h
    inc [hl]
    db $fc
    cp [hl]
    ld b, e
    cp h
    ld [hl], l
    dec h
    inc [hl]
    pop hl
    adc b
    ld b, b
    push hl
    xor b
    ld b, b
    and e
    ld c, c
    ld h, h
    ld bc, $8e5c
    ld bc, $145c
    cp b
    ld e, b
    nop
    dec e
    ld e, h
    push hl
    cp c
    ld b, b
    add hl, hl
    ld c, d
    ld d, b
    ld bc, $e65c
    dec d
    db $fc
    pop af
    ld c, b
    inc de
    ld c, d
    dec h
    inc [hl]
    inc b
    ld bc, $e75c
    inc d
    ld bc, $fc5c
    ld a, [c]
    ld c, d
    inc de
    ld b, a
    dec h
    inc [hl]
    db $fc
    ld a, [c]
    ld c, d
    rra
    ld b, a
    dec h
    inc [hl]
    db $fc
    ld a, [c]
    ld c, d
    dec hl
    ld b, a
    dec h
    inc [hl]
    db $fc
    ld a, [c]
    ld c, d
    scf
    ld b, a
    dec h
    inc [hl]
    db $fc
    ld a, [c]
    ld c, d
    ld b, e
    ld b, a
    dec h
    inc [hl]
    db $fc
    ld a, [c]
    ld c, d
    ld h, a
    ld b, a
    dec h
    inc [hl]
    db $fc
    ld a, [c]
    ld c, d

jr_008_40f9:
    ld c, a
    ld b, a
    dec h
    inc [hl]
    db $fc
    ld a, [c]
    ld c, d
    ld e, e
    ld b, a
    dec h
    inc [hl]
    db $fc
    jr c, jr_008_4148

    ld [$2540], sp
    inc [hl]
    ldh [rP1], a
    ld bc, $fb5c
    inc bc
    add hl, de
    ld b, c
    ld e, $41
    inc hl
    ld b, c
    inc hl
    ld b, c
    jr nc, jr_008_4184

    ld e, e
    ld [c], a
    dec d
    jr nc, jr_008_40f9

    ld e, b
    ld [c], a
    db $10
    ld a, [bc]
    pop hl
    ld e, e
    ld a, [bc]
    jp hl


    ld e, e
    ld a, [bc]
    ld sp, hl
    ld e, e
    ld a, [bc]
    pop af
    ld e, e
    ld [$58d9], sp
    db $10
    ret


    ld e, e
    nop
    cp c
    ld e, b
    and $02
    ld [bc], a
    sub c
    ld e, h
    ld [bc], a
    sbc l
    ld e, h
    ld [bc], a
    xor c
    ld e, h
    ld [bc], a
    or l
    ld e, h
    ld [bc], a
    pop bc

jr_008_4148:
    ld e, h
    ld [bc], a
    call $025c
    reti


    ld e, h
    ld [bc], a
    push hl
    ld e, h
    rst $20
    ldh [$fc], a
    ld a, [c]
    ld c, d
    inc de
    ld b, a
    dec h
    inc [hl]
    db $fc
    ld a, [c]
    ld c, d
    rra
    ld b, a
    dec h
    inc [hl]
    db $fc
    ld a, [c]
    ld c, d
    dec hl
    ld b, a
    dec h
    inc [hl]
    db $fc
    ld a, [c]
    ld c, d
    scf
    ld b, a
    dec h
    inc [hl]
    db $fc
    ld a, [c]
    ld c, d
    ld b, e
    ld b, a
    dec h
    inc [hl]
    db $fc
    ld a, [c]
    ld c, d
    ld h, a
    ld b, a
    dec h
    inc [hl]
    db $fc
    ld a, [c]
    ld c, d
    ld c, a
    ld b, a
    dec h

jr_008_4184:
    inc [hl]
    db $fc
    ld a, [c]
    ld c, d
    ld e, e
    ld b, a
    dec h
    inc [hl]
    ld [$5bf9], sp
    db $fc
    and $4a
    jp $2547


    inc [hl]
    ld [$5be9], sp

jr_008_4199:
    db $fc
    and $4a
    jp $2547


    inc [hl]
    ld [$5be1], sp
    db $fc
    and $4a
    jp $2547


    inc [hl]
    ld [$5bf1], sp
    db $fc
    and $4a
    jp $2547


    inc [hl]
    pop hl
    adc h
    ld b, c
    ld a, [c]
    add sp, $21
    ld sp, $3483
    xor $b1
    ld b, c
    inc a
    ld b, a
    ld hl, sp-$6e
    rst $38
    jr nz, jr_008_4199

    ld b, c
    push hl
    call $9241
    ld c, d
    db $e3
    bit 1, b
    ld [c], a
    db $fc
    push hl
    rst $10
    ld b, c
    cp l
    ld c, d
    db $e3
    cp b
    ld c, b
    ld [c], a
    db $fc
    db $ec
    nop
    and $0a
    inc b
    pop hl
    ld e, e
    inc b
    cp b
    ld e, b
    inc b
    jp hl


    ld e, e
    inc b
    cp b
    ld e, b
    inc b
    ld sp, hl
    ld e, e
    inc b
    cp b
    ld e, b
    inc b
    pop af
    ld e, e
    inc b
    cp b
    ld e, b
    rst $20
    ld bc, $58d9
    add sp, -$3f
    ld c, d
    ld sp, hl
    sub h
    rst $38
    rst $18

jr_008_4203:
    nop
    db $ec
    nop
    ld sp, hl
    sub c
    rst $38
    rst $38
    jr nz, jr_008_4203

    sub l
    rst $38
    add b
    ld [$e540], sp
    ld d, $42
    jp nc, $fc75

    cp [hl]
    ld b, e
    ld [$2540], sp
    inc [hl]
    inc b
    ld bc, $fc5c
    cp [hl]
    ld b, e
    ld [$2540], sp
    inc [hl]
    inc b
    ld bc, $fc5c
    cp [hl]
    ld b, e
    ld [$2540], sp
    inc [hl]
    ld [$5c01], sp
    db $fc
    cp [hl]
    ld b, e
    ld [$2540], sp
    inc [hl]
    ld d, b
    ld bc, $e65c
    inc b
    db $fc
    ld h, e
    ld l, a
    cp h
    ld [hl], l
    dec h
    inc [hl]
    jp hl


    sub [hl]
    ld e, $06
    db $ec
    inc b
    rst $20
    db $ec
    db $10
    and $08
    db $fc
    ld l, c
    ld l, a
    cp h
    ld [hl], l
    dec h
    inc [hl]
    jp hl


    sub [hl]
    ld e, $14
    db $ec
    inc b
    rst $20
    jp hl


    sub [hl]
    ld e, $07
    db $fc
    pop af
    ld c, b
    db $eb
    ld b, [hl]
    dec h
    inc [hl]
    db $fc
    pop af
    ld c, b
    push af
    ld b, [hl]
    dec h
    inc [hl]
    db $fc
    pop af
    ld c, b
    rst $38
    ld b, [hl]
    dec h
    inc [hl]
    db $fc
    pop af
    ld c, b
    add hl, bc
    ld b, a
    dec h
    inc [hl]
    ld a, [bc]
    pop hl
    ld e, e
    ld a, [bc]
    pop af
    ld e, e
    ld a, [bc]
    ld sp, hl
    ld e, e
    ld a, [bc]
    jp hl


    ld e, e
    pop hl
    add b
    ld b, d
    and $06
    db $fc
    ld h, e
    ld l, a
    cp h
    ld [hl], l
    dec h
    inc [hl]
    ld a, [bc]
    ld l, c
    ld e, e
    rst $20
    ld a, [hl-]
    ld l, c
    ld e, e
    ld [$5bc9], sp
    add sp, -$3f
    ld c, d
    ld sp, hl
    sub b
    rst $38
    rst $38
    db $10
    db $f4
    db $dd
    db $d3
    ld bc, $b3e5
    ld b, d

jr_008_42b1:
    ld [$0040], sp
    cp c
    ld e, b
    ld a, [de]
    pop bc
    ld e, b
    ld [de], a
    ret


    ld e, b
    ld [de], a
    pop de
    ld e, b
    ld [$58c9], sp
    ld [de], a
    pop bc
    ld e, b
    and $06
    ld a, [bc]
    ret


    ld e, b
    db $10
    pop de
    ld e, b
    ld a, [bc]
    ret


    ld e, b
    db $10
    pop bc
    ld e, b
    rst $20
    db $e3
    cp b
    ld c, b
    db $e3
    cp b
    ld c, b
    add b
    ld a, c
    ld e, e
    add b
    cp c
    ld e, b
    ld [$5bc9], sp
    add b
    ld l, c
    ld e, e
    jr nc, jr_008_42b1

    ld e, e
    inc b
    cp c
    ld e, b
    ld a, [bc]
    push bc
    ld e, e
    ld h, b

jr_008_42f0:
    cp c
    ld e, b
    db $10
    pop de
    ld e, e
    db $10
    db $dd
    ld e, e
    db $10
    ret


    ld e, e
    db $10
    reti


    ld e, e
    db $10
    pop de
    ld e, e
    db $e3
    cp b
    ld c, b
    db $e3
    cp b
    ld c, b
    ld bc, $58d9
    ld sp, hl
    sub h
    rst $38
    cp $01
    db $ec
    ld bc, $f11a
    ld e, b
    ld [de], a
    ld sp, hl
    ld e, b
    ld [de], a
    ld bc, $0859
    ld sp, hl
    ld e, b
    ld [de], a
    pop af
    ld e, b
    and $03
    ld a, [bc]
    ld sp, hl
    ld e, b
    db $10
    ld bc, $0a59
    ld sp, hl
    ld e, b
    db $10
    pop af
    ld e, b
    rst $20
    db $e3
    bit 1, b
    db $e3
    bit 1, b
    add b
    sub c
    ld e, e
    add b
    jp hl


    ld e, b
    ld [$5bad], sp
    add b
    ld [hl], c
    ld e, e
    jr nc, jr_008_42f0

    ld e, e
    inc b
    jp hl


    ld e, b
    ld a, [bc]
    xor c
    ld e, e
    ld h, b
    jp hl


    ld e, b
    db $10
    or l
    ld e, e
    db $10
    pop bc
    ld e, e
    db $10
    xor l
    ld e, e
    db $10
    cp l
    ld e, e
    db $10
    or l
    ld e, e
    db $e3
    bit 1, b
    db $e3
    bit 1, b
    ld bc, $5909
    ld sp, hl
    sub h
    rst $38
    rst $38
    ld bc, $01ec
    db $fc
    ld bc, $084a
    ld b, b
    ld hl, $1034
    cp b
    ld e, b
    ld sp, hl
    cp a
    db $d3
    rst $38
    ld [bc], a
    ldh [rSC], a
    sub c
    ld e, h
    ld [bc], a
    sbc l
    ld e, h
    ld [bc], a
    xor c
    ld e, h
    ld [bc], a
    or l
    ld e, h
    ld [bc], a
    pop bc
    ld e, h
    ld [bc], a
    call $025c
    reti


    ld e, h
    ld [bc], a
    push hl
    ld e, h
    ld [bc], a
    sub c
    ld e, h
    ld [bc], a
    sbc l
    ld e, h
    ld [bc], a
    xor c
    ld e, h
    ld [bc], a
    or l
    ld e, h
    ld [bc], a
    pop bc
    ld e, h
    ld [bc], a
    call $025c
    reti


    ld e, h
    ld [bc], a
    push hl
    ld e, h
    ld sp, hl
    cp a
    db $d3
    rst $38
    ld [bc], a
    ldh [rNR41], a
    cp b
    ld e, b
    ldh [$e8], a
    db $ed
    ld c, d
    add sp, $21
    ld sp, $35bb
    jp hl


    sub [hl]
    ld e, $0a
    and $02
    ld [bc], a
    add hl, sp
    ld e, l
    ld [bc], a
    ld d, c
    ld e, l
    ld [bc], a
    ld l, c
    ld e, l
    ld [bc], a
    add c
    ld e, l
    ld [bc], a
    sbc c

jr_008_43d2:
    ld e, l
    ld [bc], a
    or c
    ld e, l
    ld [bc], a
    ret


    ld e, l
    ld [bc], a
    pop hl
    ld e, l
    rst $20
    ldh [$f9], a
    sub h
    rst $38
    rst $38
    jr nz, jr_008_43d2

    call c, $0042
    nop
    ld [$5be1], sp
    ld [$5be9], sp
    ld [$5bf9], sp
    ld [$5bf1], sp
    ld [c], a
    di
    ld [$5c25], sp
    ld [$5c2d], sp
    ld [$5c3d], sp
    ld [$5c45], sp
    pop hl
    or $43
    ld hl, sp-$6e
    rst $38
    jr nz, jr_008_4423

    ld b, h
    ld b, $f1
    ld e, d
    ld b, $e9
    ld e, d
    push hl
    ld d, $44
    ld b, a
    ld c, h
    nop
    pop af
    ld e, d
    ld b, $71
    ld e, d
    ld b, $69
    ld e, d
    push hl
    inc h
    ld b, h
    ld b, a

jr_008_4423:
    ld c, h
    nop
    ld [hl], c
    ld e, d
    jp hl


    sub [hl]
    ld e, $10
    rst $30
    cp [hl]
    db $d3
    ld [bc], a
    ret


    ld c, e
    rst $30

jr_008_4432:
    cp [hl]
    db $d3
    inc b
    or a
    ld c, e
    xor $b1
    ld b, c
    sbc d
    ld c, e
    ld hl, sp-$6e
    rst $38
    jr nz, jr_008_449c

    ld b, h
    and $02
    inc b
    dec h
    ld e, h
    inc b
    ld b, l
    ld e, h
    inc b
    dec a
    ld e, h
    inc b
    dec l
    ld e, h
    rst $20
    inc b
    dec h
    ld e, h
    inc b
    ld b, l
    ld e, h
    ld [bc], a
    dec e
    ld e, h
    ldh [$e6], a
    ld [bc], a
    inc b
    dec h
    ld e, h
    inc b
    dec l
    ld e, h
    inc b
    dec a
    ld e, h
    inc b
    ld b, l
    ld e, h
    rst $20
    inc b
    dec h
    ld e, h
    inc b
    ld b, l
    ld e, h
    inc b
    dec e
    ld e, h
    ldh [rP1], a
    ld sp, hl
    ld e, l
    jp hl


    sub [hl]
    ld e, $0f
    rst $30
    cp [hl]
    db $d3
    ld [bc], a
    ret


    ld c, e
    rst $30
    cp [hl]
    db $d3
    inc b
    or a
    ld c, e
    rst $30
    sub c
    rst $38
    ld bc, $449e
    xor $b1
    ld b, c
    sbc d
    ld c, e
    ld hl, sp-$6e
    rst $38
    jr nz, jr_008_4432

    ld b, h
    nop
    ld sp, hl
    ld e, h
    nop

jr_008_449c:
    pop af
    ld e, h
    ld bc, $58b8
    di
    ld [c], a
    rst $28
    and $03
    db $fc
    ret nz

    ld c, c
    cp a
    ld b, e
    ret


    inc [hl]
    add sp, -$46
    ld c, d
    db $ec
    ld [bc], a
    add sp, -$4d
    ld c, d
    db $ec
    ld [bc], a
    rst $20
    and $03
    db $fc
    ret nz

    ld c, c
    ei
    ld b, e
    ret


    inc [hl]
    add sp, -$46
    ld c, d
    db $ec
    ld [bc], a
    add sp, -$4d
    ld c, d
    db $ec
    ld [bc], a
    rst $20
    and $03
    db $fc
    ret nz

    ld c, c
    rst $30
    ld b, e
    ret


    inc [hl]
    add sp, -$46
    ld c, d
    db $ec
    ld [bc], a
    add sp, -$4d
    ld c, d
    db $ec
    ld [bc], a
    rst $20
    and $03
    db $fc
    ret nz

    ld c, c
    di
    ld b, e
    ret


    inc [hl]
    add sp, -$46
    ld c, d
    db $ec
    ld [bc], a
    add sp, -$4d
    ld c, d
    db $ec
    ld [bc], a
    rst $20
    and $03
    db $fc
    ret nz

    ld c, c
    rst $28
    ld b, e
    ret


    inc [hl]
    add sp, -$46
    ld c, d
    db $ec
    ld [bc], a
    add sp, -$4d
    ld c, d
    db $ec
    ld [bc], a
    rst $20
    and $03
    db $fc
    ret nz

    ld c, c
    db $eb
    ld b, e
    ret


    inc [hl]
    add sp, -$46
    ld c, d
    db $ec
    ld [bc], a
    add sp, -$4d
    ld c, d
    db $ec
    ld [bc], a
    rst $20
    db $e4
    and $03
    db $fc
    ret nz

    ld c, c
    cp a
    ld b, e
    ret


    inc [hl]
    db $ec
    inc b
    rst $20
    and $03
    db $fc
    ret nz

    ld c, c
    jp $c943


    inc [hl]
    db $ec
    inc b
    rst $20
    and $03
    db $fc
    ret nz

    ld c, c
    rst $00
    ld b, e
    ret


    inc [hl]
    db $ec
    inc b
    rst $20
    and $03
    db $fc
    ret nz

    ld c, c
    bit 0, e
    ret


    inc [hl]
    db $ec
    inc b
    rst $20
    and $03
    db $fc
    ret nz

    ld c, c
    rst $08
    ld b, e
    ret


    inc [hl]
    db $ec
    inc b
    rst $20
    and $03
    db $fc
    ret nz

    ld c, c
    db $d3
    ld b, e
    ret


    inc [hl]
    db $ec
    inc b
    rst $20
    db $e4
    inc b
    add c
    ld e, e
    nop
    adc c
    ld e, e
    inc b
    sbc c
    ld e, e
    nop
    and c
    ld e, e
    and $02
    ld a, [bc]
    ld b, l
    ld e, [hl]
    ld a, [bc]
    ld c, l
    ld e, [hl]
    rst $20
    and $04
    ld b, $45
    ld e, [hl]
    ld b, $4d
    ld e, [hl]
    rst $20
    pop hl
    ld [hl], d
    ld b, l
    db $10
    ld d, l
    ld e, [hl]
    db $10
    ld e, l
    ld e, [hl]
    pop hl
    add a
    ld b, l
    db $10
    ld h, l
    ld e, [hl]
    db $10
    ld l, l
    ld e, [hl]
    pop hl
    sub b
    ld b, l
    ld [$5e5d], sp
    db $10
    ld d, l
    ld e, [hl]
    ld [$5e5d], sp
    ld [$5e6d], sp
    db $10
    ld h, l
    ld e, [hl]
    ld [$5e6d], sp
    pop hl
    sbc c
    ld b, l
    ld a, [bc]
    ld d, l
    ld e, [hl]
    ld a, [bc]
    ld e, l
    ld e, [hl]
    ld a, [bc]
    ld d, l
    ld e, [hl]
    ld a, [bc]
    ld e, l
    ld e, [hl]
    inc d
    ld h, l
    ld e, [hl]
    ld a, [bc]
    ld l, l
    ld e, [hl]
    ld a, [bc]
    ld h, l
    ld e, [hl]
    ld a, [bc]
    ld l, l
    ld e, [hl]
    ld a, [bc]
    ld d, l
    ld e, [hl]
    pop hl
    xor [hl]
    ld b, l
    ld b, b
    ld d, l
    ld e, [hl]
    ld [$5e5d], sp
    ld [$5e6d], sp
    ld b, b
    ld h, l
    ld e, [hl]
    ld [$5e6d], sp
    ld [$5e5d], sp
    pop hl
    call z, $1045
    ld [hl], l
    ld e, [hl]
    db $10
    ld a, l
    ld e, [hl]
    pop hl
    pop hl
    ld b, l
    db $10
    sbc l
    ld e, [hl]
    db $10
    and l
    ld e, [hl]
    pop hl
    ld [$0045], a
    add l
    ld e, [hl]
    nop
    xor l
    ld e, [hl]
    inc bc
    adc l
    ld e, [hl]
    inc bc
    ld [hl], l
    ld e, [hl]
    pop hl
    ld sp, hl
    ld b, l
    inc bc
    or l
    ld e, [hl]
    inc bc
    sbc l
    ld e, [hl]
    pop hl
    ld [bc], a
    ld b, [hl]
    inc bc
    sub l
    ld e, [hl]
    inc bc
    add l
    ld e, [hl]
    pop hl
    dec bc
    ld b, [hl]
    inc bc
    cp l
    ld e, [hl]
    inc bc
    xor l
    ld e, [hl]
    pop hl
    inc d
    ld b, [hl]
    ld a, [bc]
    ld [hl], l
    ld e, [hl]
    ld a, [bc]
    ld a, l
    ld e, [hl]
    ld a, [bc]
    ld [hl], l
    ld e, [hl]
    ld a, [bc]
    ld a, l
    ld e, [hl]
    inc d
    sbc l
    ld e, [hl]
    ld a, [bc]
    and l
    ld e, [hl]
    ld a, [bc]
    sbc l
    ld e, [hl]
    ld a, [bc]
    and l
    ld e, [hl]
    ld a, [bc]
    ld [hl], l
    ld e, [hl]
    pop hl
    dec e
    ld b, [hl]
    ld [$5ecd], sp
    nop
    push bc
    ld e, [hl]
    ld [$5edd], sp
    nop
    push de
    ld e, [hl]
    ld a, [bc]
    push bc
    ld e, [hl]
    ld a, [bc]
    call $e15e
    ld b, a
    ld b, [hl]
    ld a, [bc]
    push de
    ld e, [hl]
    ld a, [bc]
    db $dd
    ld e, [hl]
    pop hl
    ld d, b
    ld b, [hl]
    dec b
    push bc
    ld e, [hl]
    dec b
    call $e15e
    ld e, c
    ld b, [hl]
    dec b
    push de
    ld e, [hl]
    dec b
    db $dd
    ld e, [hl]
    pop hl
    ld h, d
    ld b, [hl]
    ld a, [bc]
    push af
    ld e, [hl]
    pop hl
    ld l, e
    ld b, [hl]
    and $03
    ld a, [bc]
    push af
    ld e, [hl]
    db $fc
    sub $49
    ld c, $43
    jp nc, $e534

    add d
    ld b, [hl]
    and h
    ld b, d
    ld a, [bc]
    push af
    ld e, [hl]
    rst $20
    ld h, b
    push af
    ld e, [hl]
    pop hl
    ld [hl], c
    ld b, [hl]
    db $fc
    sub $49
    jp hl


    ld b, d
    jp nc, $e534

    sbc b
    ld b, [hl]
    cp h
    ld b, d
    jr nz, jr_008_469f

    ld e, a
    db $fc
    sub $49
    rst $28

jr_008_469f:
    ld b, d
    jp nc, $e534

    and a
    ld b, [hl]
    or b

jr_008_46a6:
    ld b, d
    jr nz, jr_008_46a6

    ld e, [hl]
    db $fc
    sub $49

jr_008_46ad:
    db $ec
    ld b, d
    jp nc, $e534

    or [hl]
    ld b, [hl]

jr_008_46b4:
    and h
    ld b, d
    jr nz, jr_008_46ad

    ld e, [hl]
    db $fc
    sub $49
    ld a, [c]
    ld b, d
    jp nc, $e534

    push bc
    ld b, [hl]
    sbc b
    ld b, d
    jr nz, jr_008_46b4

    ld e, [hl]
    db $fc
    sub $49
    and $42
    jp nc, $e534

    call nc, $8c46
    ld b, d
    jr nz, @-$19

    ld e, [hl]
    db $fc
    sub $49
    ld a, [c]
    ld b, d
    jp nc, $e534

    db $e3
    ld b, [hl]
    sbc b
    ld b, d
    jr nz, @-$11

    ld e, [hl]
    db $fc
    sub $49

jr_008_46e9:
    db $ec
    ld b, d
    jp nc, $e534

    ld a, [c]
    ld b, [hl]
    and h
    ld b, d
    jr nz, jr_008_46e9

    ld e, [hl]
    db $fc
    sub $49
    rst $28
    ld b, d
    jp nc, $e534

    ld bc, $b047

jr_008_4700:
    ld b, d
    jr nz, jr_008_4700

    ld e, [hl]
    pop hl
    adc h
    ld b, [hl]
    ld e, $f5
    ld e, [hl]
    and $03
    ld a, [bc]
    push af
    ld e, [hl]
    db $fc
    sub $49
    db $ec
    ld b, d
    jp nc, $1434

    push af
    ld e, [hl]
    ld a, [bc]
    db $fd
    ld e, [hl]
    db $fc
    sub $49
    rst $28
    ld b, d
    jp nc, $1434

    db $fd
    ld e, [hl]
    dec b
    push af
    ld e, [hl]
    dec b
    db $ed
    ld e, [hl]
    db $fc
    sub $49
    ld a, [c]
    ld b, d
    jp nc, $1434

    db $ed
    ld e, [hl]
    ld h, h
    push af
    ld e, [hl]
    pop hl
    rlca
    ld b, a
    di
    add sp, $21
    ld sp, $3425
    add sp, -$05
    ld c, c
    ld [$d3ce], a
    nop
    ld e, [hl]
    ld b, a
    push hl
    ld d, b
    ld b, a
    add sp, $4a
    ld a, [bc]
    pop af
    ld e, b
    ld b, $f9
    ld e, b
    ld a, [bc]
    ld bc, $0659
    ld sp, hl
    ld e, b
    ld [c], a
    di
    push hl
    ld h, e
    ld b, a
    db $f4
    ld c, d
    ld a, [bc]
    pop bc
    ld e, b
    ld b, $c9
    ld e, b
    ld a, [bc]
    pop de
    ld e, b
    ld b, $c9
    ld e, b
    ld [c], a
    di
    push hl
    db $76
    ld b, a
    ld [$fc40], sp
    sbc c
    ld b, a
    ld [$2540], sp
    inc [hl]
    db $fc
    and l
    ld b, a
    ld [$2540], sp
    inc [hl]
    db $e3
    cp b
    ld c, b
    scf
    pop hl
    ld e, b
    jp hl


    or h
    ld e, $0a
    db $eb
    dec sp
    ret nc

    or c
    ld b, a
    ld hl, sp+$47
    ld c, e
    ld c, b
    add e
    ld c, b
    pop af
    ld [c], a
    nop
    db $e3
    sbc $48
    scf
    pop hl
    ld e, b
    pop hl
    adc [hl]
    ld b, a
    pop af
    ld e, $00
    db $e3
    sbc $48
    scf
    pop hl
    ld e, b
    pop hl

jr_008_47af:
    adc [hl]
    ld b, a
    push hl
    or [hl]
    ld b, a
    dec b
    ld c, e
    and $02
    ld a, [bc]
    pop de
    ld e, b
    ld b, $c9
    ld e, b
    ld a, [bc]
    pop bc
    ld e, b
    ld b, $c9
    ld e, b
    rst $20
    add hl, bc
    pop de
    ld e, b
    dec b
    ret


    ld e, b
    db $e3
    cp b
    ld c, b
    db $e3
    cp b
    ld c, b
    rra
    pop hl
    ld e, b
    jr jr_008_47af

    ld e, b
    scf
    ld l, c
    ld e, e
    ld [$5bc9], sp
    inc b
    cp c
    ld e, b
    ld [$5bc5], sp
    inc b
    cp c
    ld e, b
    ld [$5bc9], sp
    db $e3
    bit 1, b
    rla
    xor l
    ld e, e
    inc a
    ld de, $f459
    db $dd
    db $d3
    ld bc, $00ec
    push hl
    db $fd
    ld b, a
    jr c, jr_008_4848

    ld a, [bc]
    add hl, bc
    ld e, c
    ld a, [bc]
    xor c
    ld e, e
    ld a, [bc]
    reti


    ld e, b
    ld a, [bc]
    push bc
    ld e, e
    inc d
    reti


    ld e, b
    ld [de], a
    ret


    ld e, e
    inc a
    ld l, c
    ld e, e
    add hl, bc
    ret


    ld e, e
    add hl, bc
    pop hl
    ld e, b
    and $03
    ld b, $e1
    ld e, e
    ld b, $e9
    ld e, e
    ld b, $f9
    ld e, e
    ld b, $f1
    ld e, e

jr_008_4826:
    rst $20
    ld b, $c9
    ld e, e
    ld [bc], a
    ret


    ld e, b
    inc b
    pop de
    ld e, b
    and $02
    ld b, $e1
    ld e, e
    ld b, $e9
    ld e, e
    ld b, $f9
    ld e, e
    ld b, $f1
    ld e, e
    rst $20
    db $e3
    cp b
    ld c, b
    inc a
    pop hl
    ld e, b
    db $f4
    db $dd
    db $d3

jr_008_4848:
    ld bc, $00ec
    push hl
    ld d, b
    ld c, b
    sbc b
    ld c, e
    inc a
    add hl, bc
    ld e, c
    inc d
    xor l
    ld e, e
    and $02
    ld b, $e1
    ld e, e

jr_008_485b:
    ld b, $e9
    ld e, e
    ld b, $f9
    ld e, e
    ld b, $f1
    ld e, e
    rst $20
    rra
    pop hl
    ld e, b
    and $02
    ld a, [bc]
    add hl, bc
    ld e, c
    ld e, $71
    ld e, e
    rst $20
    db $e3
    cp b
    ld c, b
    db $e3
    cp b
    ld c, b
    jr nz, jr_008_4826

    ld e, e
    inc a
    ld de, $f459
    db $dd
    db $d3
    ld bc, $00ec
    push hl
    adc b
    ld c, b
    jp c, $3c4b

    push bc
    ld e, e
    inc d
    ret


    ld e, e
    db $10
    reti


    ld e, b
    jr nz, jr_008_489c

    ld e, c
    db $10
    reti


    ld e, b
    db $10
    ret


    ld e, e
    inc d
    ld [hl], c

jr_008_489c:
    ld e, e
    inc d
    xor c
    ld e, e
    inc d
    add hl, bc
    ld e, c
    inc d
    xor c
    ld e, e
    db $e3
    bit 1, b
    db $e3
    bit 1, b
    jr nz, jr_008_485b

    ld e, e
    inc a
    ld de, $f459
    db $dd
    db $d3
    ld bc, $00ec
    inc b
    pop de
    ld e, b
    inc b
    add c
    ld e, e
    inc b
    adc c
    ld e, e
    inc b
    and c
    ld e, e
    inc b
    sbc c
    ld e, e
    inc b
    ld bc, $e459
    inc b
    ld bc, $0459
    sbc c
    ld e, e
    inc b
    and c
    ld e, e
    inc b
    adc c
    ld e, e
    inc b
    add c
    ld e, e
    inc b
    pop de
    ld e, b
    db $e4
    inc b
    sub c
    ld e, h
    inc b
    sbc l
    ld e, h
    inc b
    xor c
    ld e, h
    inc b
    or l
    ld e, h
    inc b
    pop bc
    ld e, h
    inc b
    call $e45c
    nop
    dec e
    ld e, h
    add sp, -$2a
    ld c, d
    xor $c2
    ld b, d
    nop
    ld bc, $4da2
    ld e, h
    ld [bc], a
    ld d, l
    ld e, h
    ld [bc], a
    ld c, l
    ld e, h
    ld [c], a
    ld sp, hl
    nop
    ld e, l
    ld e, h
    add sp, -$2a
    ld c, d
    nop
    ld e, l
    ld e, h
    nop
    ld h, l
    ld e, h
    add sp, -$2a
    ld c, d
    nop
    ld h, l
    ld e, h
    nop
    ld l, l
    ld e, h
    add sp, -$2a
    ld c, d
    nop
    ld l, l
    ld e, h
    nop
    ld [hl], l
    ld e, h
    add sp, -$2a
    ld c, d
    nop
    ld [hl], l
    ld e, h
    nop
    ld a, l
    ld e, h
    add sp, -$2a
    ld c, d
    nop
    ld a, l
    ld e, h
    nop
    add c
    ld e, h
    db $10
    adc c
    ld e, h
    add sp, -$46
    ld c, d
    ld [$5c89], sp
    add sp, -$4d
    ld c, d
    pop hl
    scf
    ld c, c
    add sp, -$2a
    ld c, d
    db $10
    adc c
    ld e, h
    add sp, -$46
    ld c, d
    ld [$5c89], sp
    add sp, -$4d
    ld c, d
    pop hl
    ld b, [hl]
    ld c, c
    inc d
    dec h
    ld e, h
    inc d
    dec l
    ld e, h
    inc d
    dec a
    ld e, h
    inc d
    ld b, l
    ld e, h
    pop hl
    ld e, b
    ld c, c
    ld [wCurStage], a
    inc b
    adc h
    ld c, c
    jp hl


    or h
    ld e, $04
    inc b
    sub c
    ld e, h
    inc b
    sbc l
    ld e, h
    inc b
    xor c
    ld e, h
    inc b
    or l
    ld e, h
    inc b
    pop bc
    ld e, h
    inc b
    call $045c
    reti


    ld e, h
    inc b
    push hl
    ld e, h
    pop hl
    ld [hl], c
    ld c, c
    push hl
    sub c
    ld c, c
    ld [$eb40], sp
    ld a, $d0
    ld [hl], c
    ld c, c
    ld [hl], c
    ld c, c
    ld [hl], c
    ld c, c
    ld [hl], c
    ld c, c
    ld [hl], c
    ld c, c
    ld [hl], c
    ld c, c
    xor b
    ld c, c
    or d
    ld c, c
    xor l
    ld c, c
    or a
    ld c, c
    ld a, b
    cp b
    ld e, b
    ld [c], a
    ld c, $78
    cp b
    ld e, b
    ld [c], a
    add hl, bc
    ld a, b
    cp b
    ld e, b
    ld [c], a
    inc b
    ld a, b
    cp b
    ld e, b
    ld sp, hl
    sub h
    rst $38
    rst $38
    inc b
    ldh [$e9], a
    sub [hl]
    ld e, $12
    ld bc, $5e01
    ld bc, $5e05
    ld bc, $5e09
    ld bc, $5e0d
    pop hl
    ret nz

    ld c, c
    nop
    add hl, hl
    ld e, [hl]
    jp hl


    sub [hl]
    ld e, $11
    and $1e
    ld bc, $5e2d
    ld bc, $5e31
    ld bc, $5e35
    ld bc, $5e39
    ld bc, $5e3d
    ld bc, $5e41
    rst $20
    inc b
    dec e
    ld e, h
    inc b
    add hl, de
    ld e, h
    ldh [rDIV], a
    ld hl, $045d
    add hl, hl
    ld e, l
    inc b
    ld sp, $e05d
    ld a, [c]
    jp hl


    sub [hl]
    ld e, $1c
    ei
    inc bc
    rrca
    ld c, d
    dec sp
    ld c, d
    db $76
    ld c, d
    or a
    ld c, d
    db $fc
    pop af
    ld c, b
    ccf
    ld c, b
    ld hl, $fc34
    pop af
    ld c, b
    ld d, b
    ld c, b
    ld hl, $0334
    dec h
    ld e, h
    inc bc
    dec l
    ld e, h
    db $fc
    pop af
    ld c, b
    dec [hl]
    ld c, b
    ld hl, $fc34
    pop af
    ld c, b
    ld b, [hl]
    ld c, b
    ld hl, $0334
    dec a
    ld e, h
    inc bc
    ld b, l
    ld e, h
    inc bc
    dec h
    ld e, h
    ldh [$fc], a
    pop af
    ld c, b
    ld d, a
    ld c, b
    ld hl, $fc34
    pop af
    ld c, b
    ld l, e
    ld c, b
    ld hl, $fc34
    pop af
    ld c, b
    ld a, a
    ld c, b
    ld hl, $fc34
    pop af
    ld c, b
    sub e
    ld c, b
    ld hl, $ec34
    add hl, bc
    db $fc
    pop af
    ld c, b
    ld h, c
    ld c, b
    ld hl, $fc34
    pop af
    ld c, b
    ld [hl], l
    ld c, b
    ld hl, $fc34
    pop af
    ld c, b
    adc c
    ld c, b
    ld hl, $fc34
    pop af
    ld c, b
    sbc l
    ld c, b
    ld hl, $e034
    add sp, -$4e
    jr nc, jr_008_4af7

    ld c, d
    sbc d
    ld c, d
    db $fc
    pop af
    ld c, b
    and a
    ld c, b
    ld hl, $fc34
    pop af
    ld c, b
    or h
    ld c, b
    ld hl, $fc34
    pop af
    ld c, b
    pop bc
    ld c, b
    ld hl, $fc34
    pop af
    ld c, b
    adc $48
    ld hl, $e034
    db $fc
    pop af
    ld c, b
    db $db
    ld c, b
    ld hl, $fc34
    pop af
    ld c, b
    add sp, $48
    ld hl, $fc34
    pop af
    ld c, b
    push af
    ld c, b
    ld hl, $fc34
    pop af
    ld c, b
    ld [bc], a
    ld c, c
    ld hl, $e034
    db $fc
    call nc, $0f4a
    ld c, c
    ld hl, $fc34
    call nc, $154a
    ld c, c
    ld hl, $fc34
    call nc, $1b4a
    ld c, c
    ld hl, $fc34
    call nc, $214a
    ld c, c
    ld hl, $e034
    ld a, [bc]
    dec e
    ld e, h
    push hl
    call c, $084a
    ld b, b
    db $ec
    ld a, [bc]
    ldh [rDIV], a
    add hl, hl
    ld e, l
    inc b
    ld sp, $e05d
    db $f4
    inc d
    call nc, $1801
    dec e
    ld e, h
    db $f4
    inc d
    call nc, $e000
    inc b
    dec e
    ld e, h
    dec b
    dec h

jr_008_4af7:
    ld e, h
    dec b
    dec l
    ld e, h
    dec b
    dec a
    ld e, h
    dec b
    ld b, l
    ld e, h
    ld b, $1d
    ld e, h
    ldh [$e9], a
    sub [hl]
    ld e, $1d
    db $fc
    cp [hl]
    ld b, e
    ld [$2140], sp
    inc [hl]
    db $fc
    ld a, [c]
    ld c, d
    inc de
    ld b, a
    ld hl, $fc34
    ld a, [c]
    ld c, d
    rra
    ld b, a
    ld hl, $fc34
    ld a, [c]
    ld c, d
    dec hl
    ld b, a
    ld hl, $fc34
    ld a, [c]
    ld c, d
    scf
    ld b, a
    ld hl, $fc34
    ld a, [c]
    ld c, d
    ld b, e
    ld b, a
    ld hl, $fc34
    ld a, [c]
    ld c, d
    ld c, a
    ld b, a
    ld hl, $fc34
    ld a, [c]
    ld c, d
    ld e, e
    ld b, a
    ld hl, $fc34
    ld a, [c]
    ld c, d
    ld h, a
    ld b, a
    ld hl, $e434
    db $fc
    cp [hl]
    ld b, e
    ld [$2140], sp
    inc [hl]
    db $fc
    adc l
    ld c, e
    ld [hl], e
    ld b, a
    ld hl, $fc34
    adc l
    ld c, e
    add a
    ld b, a
    ld hl, $fc34
    adc l
    ld c, e
    sub c
    ld b, a
    ld hl, $fc34
    adc l
    ld c, e
    ld a, l
    ld b, a
    ld hl, $ec34
    ld [de], a
    db $fc
    adc l
    ld c, e
    xor a
    ld b, a
    ld hl, $fc34
    adc l
    ld c, e
    cp c
    ld b, a
    ld hl, $fc34
    adc l
    ld c, e
    sbc e
    ld b, a
    ld hl, $fc34
    adc l
    ld c, e
    cp c
    ld b, a
    ld hl, $ec34
    ld [de], a
    db $e4
    inc bc
    dec e
    ld e, h
    ld b, $25
    ld e, h
    nop
    dec e
    ld e, h
    ld [bc], a
    cp b
    ld e, b
    ldh [$e8], a
    inc e
    ld c, d
    push hl
    or $49
    ld [$e840], sp
    inc e
    ld c, d
    add sp, $21
    ld sp, $35b7
    push hl
    cp [hl]
    ld b, e
    ld [$ee40], sp
    and e
    ld b, d
    nop
    nop
    pop hl
    nop
    ld b, b
    ld sp, hl
    cp [hl]
    db $d3
    ld bc, $e800
    rst $18
    ld c, d
    xor $b1
    ld b, c
    and d
    ld c, e
    push hl
    db $fc
    ld c, b
    ld [bc], a
    ld b, e
    ld sp, hl
    cp [hl]
    db $d3
    ld bc, $e900
    sub [hl]
    ld e, $00
    add sp, -$1a
    ld c, d
    push hl
    dec h
    ld c, c
    ld [hl], b
    ld b, e
    pop af
    nop
    dec b
    jp hl


    sub [hl]
    ld e, $13
    xor $b1
    ld b, c
    sbc d
    ld c, e
    ld hl, sp-$6e
    rst $38
    jr nz, @-$09

    ld c, e
    ld [bc], a
    ld de, $025d
    add hl, de
    ld e, l
    pop hl
    db $ec
    ld c, e
    ld [bc], a
    ld bc, $025d
    add hl, bc
    ld e, l
    pop hl
    push af
    ld c, e
    nop
    reti


    ld e, b
    inc b
    pop hl
    ld e, e
    inc b
    pop af
    ld e, e
    inc b
    ld sp, hl
    ld e, e
    inc b
    jp hl


    ld e, e
    pop hl
    ld bc, $004c
    ld l, c
    ld e, e
    inc c
    pop af
    ld e, b
    ld [$58f9], sp
    inc c
    ld bc, $0859
    ld sp, hl
    ld e, b
    pop hl
    inc de
    ld c, h
    ld [$5ba9], sp
    dec b
    jp hl


    ld e, b
    ld [$5bad], sp
    dec b
    jp hl


    ld e, b
    pop hl
    ld [hl+], a
    ld c, h
    ld [$58d1], sp
    rlca
    add c
    ld e, e
    ld b, $89
    ld e, e
    dec b
    and c
    ld e, e
    inc b
    sbc c
    ld e, e
    inc b
    ld bc, $2f59
    pop hl
    ld e, b
    pop hl
    ld sp, $144c
    ld h, c
    ld e, c
    ld e, $49
    ld e, c
    pop hl
    ld c, c
    ld c, h
    inc c
    db $fc
    ld b, c
    jr jr_008_4c5b

    ld b, d
    pop hl
    ld d, d
    ld c, h

jr_008_4c5b:
    ld d, b
    db $f4
    ld b, c
    ld [$41fc], sp
    ld [$4204], sp
    ld [$41fc], sp
    jr z, jr_008_4c6d

    ld b, d
    pop hl
    ld e, e
    ld c, h

jr_008_4c6d:
    db $fc
    ld a, [hl]
    ld c, h
    ld [$2140], sp
    inc [hl]
    jp hl


    sub [hl]
    ld e, $1e
    ld bc, $41cc
    add sp, -$05
    ld c, d
    xor $05
    ld b, c
    nop
    nop
    add sp, -$1f
    ld c, b
    add sp, -$4e
    jr nc, @-$71

    ld c, h
    xor b
    ld c, h
    push hl
    sub d
    ld c, h
    or a
    ld c, l
    and $06
    inc b
    and h
    ld b, c
    inc b
    sbc h
    ld b, c
    rst $20
    add sp, -$18
    ld c, b
    add sp, $21
    ld sp, $34ff
    push hl
    jp $df4c


    ld c, l
    push hl
    xor l
    ld c, h
    bit 1, l
    and $06
    inc b
    or h
    ld b, c
    inc b
    xor h
    ld b, c
    rst $20
    add sp, -$18
    ld c, b
    add sp, $21
    ld sp, $34ff
    push hl
    bit 1, h
    rst $20
    ld c, l
    db $e3
    db $d3
    ld c, h
    db $e3
    db $dd
    ld c, h
    ld [c], a
    ld sp, hl
    db $e3
    db $dd
    ld c, h
    db $e3
    db $d3
    ld c, h
    ld [c], a
    ld sp, hl
    and $0c
    ld de, $419c
    ld de, $41a4
    rst $20
    db $e4
    and $0c
    ld de, $41ac
    ld de, $41b4
    rst $20
    db $e4
    db $e3
    rst $30
    ld c, h
    db $e3
    ld bc, $e24d
    ld sp, hl
    db $e3
    ld bc, $e34d
    rst $30
    ld c, h
    ld [c], a
    ld sp, hl
    and $03
    ld de, $419c
    ld de, $41a4
    rst $20
    db $e4
    and $03
    ld de, $41ac
    ld de, $41b4
    rst $20
    db $e4
    xor $c2
    ld b, b
    ld l, l
    ld c, h
    inc d
    call nz, $1441
    cp h
    ld b, c
    pop hl
    db $10
    ld c, l
    inc d
    call nz, $1441
    cp h
    ld b, c
    pop hl
    add hl, de
    ld c, l
    nop
    call nz, $0041
    cp h
    ld b, c
    and $0a
    ld a, [bc]
    push bc
    ld e, [hl]
    ld a, [bc]
    call $e75e
    push hl
    ld [hl], $4d
    add a
    ld c, [hl]
    rlca
    push bc
    ld e, [hl]
    rlca
    call $e15e
    ld [hl], $4d
    add hl, bc
    ld a, h
    ld b, c
    add hl, bc
    add h
    ld b, c
    ld [c], a
    ld sp, hl
    add hl, bc
    adc h
    ld b, c
    add hl, bc
    sub h
    ld b, c
    ld [c], a
    ld sp, hl
    pop af
    nop
    or $e8
    ld hl, $2c31
    dec [hl]
    xor $b1
    ld b, c
    ld a, c
    ld c, l
    push hl
    ld h, c
    ld c, l
    pop af
    ld c, [hl]
    nop
    ld a, h
    ld b, c
    pop af
    nop
    or $e8
    ld hl, $2c31
    dec [hl]
    xor $b1
    ld b, c
    add e
    ld c, l
    push hl
    db $76
    ld c, l
    pop af
    ld c, [hl]
    nop
    adc h
    ld b, c
    add sp, $21
    ld sp, $3523
    push hl
    ccf
    ld c, l
    sub [hl]
    ld c, [hl]
    add sp, $21
    ld sp, $3523
    push hl
    ld b, a
    ld c, l
    and c
    ld c, [hl]
    xor $c2
    ld b, b
    ldh [rKEY1], a
    push hl
    sub a
    ld c, l
    ld b, $4f
    db $e3
    or c
    ld c, l
    db $e3
    cp e
    ld c, l
    ld [c], a
    ld sp, hl
    xor $c2
    ld b, b
    ldh [rKEY1], a
    push hl
    xor c
    ld c, l
    ld c, $4f
    db $e3
    cp e
    ld c, l
    db $e3
    or c
    ld c, l
    ld [c], a
    ld sp, hl
    and $09
    inc bc
    inc h
    ld b, d
    db $10
    inc a
    ld b, d
    rst $20
    db $e4
    and $09
    inc bc
    ld l, h
    ld b, d
    db $10
    add h
    ld b, d
    rst $20
    db $e4
    and $03
    inc bc
    inc h
    ld b, d
    db $10
    inc a
    ld b, d
    rst $20
    and $03
    inc bc
    ld l, h
    ld b, d
    db $10
    add h

jr_008_4dd5:
    ld b, d
    rst $20
    pop hl
    push bc
    ld c, l
    nop
    inc h
    ld b, d
    nop
    ld l, h
    ld b, d
    add sp, $21
    ld sp, $353e
    add sp, -$4e
    jr nc, jr_008_4dd5

    ld c, l
    cp $4d
    push hl
    pop af
    ld c, l
    inc a
    ld c, a
    ld e, $54
    ld b, d
    add sp, $21
    ld sp, $3535
    push hl
    push bc
    ld c, l
    ld e, d
    ld c, a
    push hl
    inc bc
    ld c, [hl]
    ld c, e
    ld c, a
    ld e, $9c
    ld b, d
    add sp, $21
    ld sp, $3535
    push hl
    adc $4d
    ld l, a
    ld c, a
    db $e3
    jr nz, jr_008_4e61

    db $e3
    inc a
    ld c, [hl]
    ld [c], a
    ld sp, hl
    db $e3
    inc a
    ld c, [hl]
    db $e3
    jr nz, jr_008_4e6c

    ld [c], a
    ld sp, hl
    xor $c2
    ld b, b
    cpl
    ld c, [hl]
    and $09
    inc bc
    call nc, $1042
    or h
    ld b, d
    rst $20
    db $e4
    db $fc
    push hl
    ld c, l
    ld [$3e40], sp
    dec [hl]
    pop af
    nop
    ldh a, [$e1]
    adc l
    ld c, [hl]
    xor $c2
    ld b, b
    ld c, e
    ld c, [hl]
    and $09
    inc bc
    inc [hl]
    ld b, e
    db $10
    ld d, h
    ld b, e
    rst $20
    db $e4
    db $fc
    push hl
    ld c, l
    ld [$3e40], sp
    dec [hl]
    pop af
    nop
    ldh a, [$e1]
    sub d
    ld c, [hl]
    xor $c2
    ld b, b
    add e
    ld c, [hl]
    ld a, [bc]
    inc h
    ld b, e
    ld a, [bc]

jr_008_4e61:
    inc d
    ld b, e
    ld a, [bc]
    inc b
    ld b, e
    ld a, [bc]
    db $f4
    ld b, d
    ld a, [bc]
    inc h
    ld b, e

jr_008_4e6c:
    ld a, [bc]
    inc d
    ld b, e
    ld a, [bc]
    inc d
    ld b, e
    ld a, [bc]
    inc h
    ld b, e
    ld a, [bc]
    db $f4
    ld b, d
    ld a, [bc]
    inc b
    ld b, e
    ld a, [bc]
    inc d
    ld b, e
    ld a, [bc]
    inc h
    ld b, e
    ld [c], a
    db $db
    db $fc
    sbc l
    ld c, [hl]
    sbc h
    ld c, a
    ld e, c
    dec [hl]
    pop af
    nop
    ldh a, [rSB]
    ld a, h
    ld b, c
    ld [c], a
    inc b
    ld bc, $418c
    add sp, $21
    ld sp, $3523
    add sp, -$05
    ld c, d
    and $02

jr_008_4e9f:
    ld [bc], a
    call nc, $0241
    db $ec
    ld b, c
    ld [bc], a
    db $e4
    ld b, c
    ld [bc], a
    call c, $e741
    ld [bc], a
    call nc, $0841
    call c, $0841
    db $e4
    ld b, c
    ld [$41ec], sp
    ld [$41d4], sp
    inc d
    db $ec
    ld b, c
    add sp, $21
    ld sp, $3550
    nop
    db $ec
    ld b, c
    jp hl


    sub [hl]
    ld e, $1c
    add sp, -$4e
    jr nc, jr_008_4e9f

    ld c, [hl]
    db $db
    ld c, [hl]
    db $fc
    ld c, a
    ld c, l
    ld [$2340], sp
    dec [hl]
    pop hl
    rrca
    ld c, d
    db $fc
    ld h, h
    ld c, l
    ld [$2340], sp
    dec [hl]
    pop hl
    rrca
    ld c, d
    ldh [$e3], a
    or $4e
    db $e3
    dec b
    ld c, a
    ld [c], a
    ld sp, hl
    db $e3
    dec b
    ld c, a
    db $e3
    or $4e
    ld [c], a
    ld sp, hl
    ld a, [bc]
    call nc, $0a41
    db $ec
    ld b, c
    ld a, [bc]
    db $e4
    ld b, c
    ld a, [bc]
    call c, $e241
    di
    db $e4
    ld a, [bc]
    call c, $0a41
    db $e4
    ld b, c
    ld a, [bc]
    db $ec
    ld b, c
    ld a, [bc]
    call nc, $e241
    di
    db $e4
    ld [$d3f1], a
    nop
    dec de
    ld c, a
    ldh [$e8], a
    ld hl, $6b31
    dec [hl]
    add sp, -$7e
    ld c, d
    db $f4
    jp $03d3


    db $f4
    pop bc
    db $d3
    ld bc, $95fc
    ld d, c
    ld [$2140], sp
    inc [hl]
    dec l
    adc b
    ld b, b
    db $e3
    ld d, b
    ld c, a
    db $e3
    push de
    ld c, a
    db $e3
    ld d, b
    ld c, a
    db $e3
    and e
    ld c, a
    db $e3
    ld d, b
    ld c, a
    cp $03
    push de
    ld c, a
    and e
    ld c, a
    ld l, [hl]
    ld c, a
    ld l, [hl]
    ld c, a
    ld [c], a
    and $e5
    ld d, l
    ld c, a
    ld [c], a
    ld c, a
    and $02
    ld [$4088], sp
    ld [$4098], sp
    ld [$40a8], sp
    db $10
    cp b
    ld b, b
    ld [$40a8], sp
    ld [$4098], sp
    ld [$4088], sp
    rst $20
    db $e4
    push hl
    ld [hl], e
    ld c, a
    nop
    ld d, b
    inc c
    adc b
    ld b, b
    inc c
    sbc b
    ld b, b
    inc c
    cp b
    ld b, b
    jr @-$56

    ld b, b
    inc c
    cp b
    ld b, b
    inc c
    sbc b
    ld b, b
    inc c
    adc b
    ld b, b
    push hl
    adc l
    ld c, a
    ld c, e
    ld d, b
    rrca
    adc b
    ld b, b
    rrca
    sbc b
    ld b, b
    rrca
    cp b
    ld b, b
    ld e, $a8
    ld b, b
    rrca
    cp b
    ld b, b
    rrca
    sbc b
    ld b, b
    rrca
    adc b
    ld b, b
    db $e4
    push hl
    xor b
    ld c, a
    sub [hl]
    ld d, b
    ld b, $c8
    ld b, b
    ld b, $f0
    ld b, b
    ld b, $0c
    ld b, c
    ld b, $28
    ld b, c
    ld b, $44
    ld b, c
    ld [$4160], sp
    inc bc
    ld b, h
    ld b, c
    inc bc
    jr z, jr_008_5001

    jp hl


    sub [hl]
    ld e, $1c
    db $fc
    dec e
    ld d, b
    rst $10
    ld d, b
    ld [hl], h
    dec [hl]
    inc bc
    call c, $0840
    ret z

    ld b, b
    dec d
    adc b
    ld b, b
    db $e4
    push hl
    jp c, $964f

    ld d, b
    ld b, $c8
    ld b, b
    ld b, $f0
    ld b, b
    ld b, $0c
    ld b, c
    ld b, $28
    ld b, c
    ld b, $44
    ld b, c
    jr z, @+$62

    ld b, c
    inc bc
    ld b, h
    ld b, c
    inc bc
    jr z, @+$43

    jp hl


    sub [hl]
    ld e, $1c
    db $fc
    dec e
    ld d, b
    cp d
    ld d, b
    ld [hl], h
    dec [hl]
    inc bc
    call c, $0840

jr_008_5001:
    ret z

    ld b, b
    db $e4
    db $f4
    pop af
    db $d3
    ld bc, $c4f9
    db $d3
    rst $38
    ld b, b
    add sp, -$78
    ld c, d
    jp hl


    ld [hl], a
    ld c, e
    nop
    ld sp, hl
    adc a
    rst $38
    ld a, a
    inc hl
    db $e3
    ld c, c
    ld c, e
    ldh [$f1], a
    ldh a, [$08]
    nop
    ld c, l
    ld e, h
    ld [wStageScrollTileY], a
    ld de, $502f
    ld bc, $4000
    pop hl
    inc hl
    ld d, b
    add sp, $21
    ld sp, $3586
    db $f4
    jp $06d3


    db $f4
    pop bc
    db $d3
    ld bc, $95fc
    ld d, c
    ld [$2140], sp
    inc [hl]
    inc a
    nop
    ld b, b
    add sp, -$5d
    ld c, b
    db $f4
    call $01d3
    xor $72
    ld b, c
    add $41
    db $e3
    sbc d
    ld d, b
    ld a, [$7580]
    ld d, b
    and $02
    db $e3
    cp c
    ld d, b
    rst $20
    db $e3
    sbc d
    ld d, b
    ld a, [$6820]
    ld d, b
    ld [c], a
    ld c, $e6
    inc b
    db $e3
    ret nc

    ld d, b
    ld a, [bc]
    nop
    ld b, b
    rst $20
    ld a, [$5940]
    ld d, b
    and $03
    db $fc
    add hl, de
    ld d, c
    inc h
    ld d, c
    sbc l
    dec [hl]
    ld e, $00
    ld b, b
    inc b
    inc c
    ld b, b
    ld b, $18
    ld b, b
    inc b
    inc c
    ld b, b
    ld b, $00
    ld b, b
    jr z, jr_008_508f

jr_008_508f:
    ld b, b
    rst $20
    db $e3
    sbc d
    ld d, b
    ld a, [$7540]
    ld d, b
    ld [c], a
    ret nz

    inc d
    nop
    ld b, b
    inc bc
    inc c
    ld b, b
    ld b, $18
    ld b, b
    inc bc
    inc c
    ld b, b
    inc b
    nop
    ld b, b
    inc d
    nop
    ld b, b
    inc bc
    inc c
    ld b, b
    ld [$4018], sp
    inc bc
    inc c
    ld b, b
    ld a, [bc]
    nop
    ld b, b
    db $e4
    ld bc, $4068
    ld a, [bc]
    ld a, b
    ld b, b
    db $fc
    ld d, $51
    db $f4
    ld d, b
    sub [hl]
    dec [hl]
    ld c, $78
    ld b, b
    ld bc, $4068
    ld bc, $4058
    db $e4
    ld bc, $4068
    dec b
    ld a, b
    ld b, b
    db $fc
    ld d, $51
    db $f4
    ld d, b
    sub [hl]
    dec [hl]
    dec b
    ld a, b
    ld b, b
    ld bc, $4068
    ld bc, $4058
    db $e4
    ld b, $34
    ld b, b
    inc e
    inc h
    ld b, b
    add sp, -$69
    ld c, b
    ldh [$e9], a
    or h
    ld e, $ff
    jp hl


    sub [hl]
    ld e, $1d
    db $fc
    ld h, a
    ld c, c
    rst $00
    ld d, c
    ld hl, $e334
    dec b
    ld c, e
    jp hl


    ld [hl], a
    ld c, e
    ld bc, $8ff9
    rst $38
    ld a, a
    inc hl
    ld e, $b8
    ld e, b
    db $f4
    cp a
    db $d3
    add c
    nop
    ld b, h
    ld b, b
    nop
    ld sp, hl
    ld e, h
    ld bc, $41d4
    and $03
    add sp, -$46
    ld c, d
    db $ec
    inc b
    add sp, -$4d
    ld c, d
    db $ec
    inc b
    rst $20
    ld a, [hl+]
    call nc, $e041
    jp hl


    sub [hl]
    ld e, $1e
    ld a, [bc]
    db $ec
    ld b, c
    ld a, [bc]
    db $e4
    ld b, c
    ld a, [bc]
    call c, $0a41
    call nc, $0641
    db $ec
    ld b, c
    ld b, $e4
    ld b, c
    ld b, $dc
    ld b, c
    ld b, $d4
    ld b, c
    ld [$41ec], sp
    ld [$41e4], sp
    ld [$41dc], sp
    ld [$41d4], sp
    ld [c], a
    di
    jp hl


    sub [hl]
    ld e, $1e
    ld a, [bc]
    call nc, $0a41
    call c, $0a41
    db $e4
    ld b, c
    ld a, [bc]
    db $ec
    ld b, c
    ld b, $d4
    ld b, c
    ld b, $dc
    ld b, c
    ld b, $e4
    ld b, c
    ld b, $ec
    ld b, c
    ld [$41d4], sp
    ld [$41dc], sp
    ld [$41e4], sp
    ld [$41ec], sp
    ld [c], a
    di
    ld [wStageScrollTileY], a
    ld de, $518d
    ld bc, $58b8
    pop hl
    add c
    ld d, c
    add sp, -$7e
    ld c, d
    ldh [$e8], a
    add d
    ld c, d
    ldh [rSB], a
    cp b
    ld e, b
    di
    ldh a, [rNR14]
    inc d
    db $f4
    sub e
    ret nc

    nop
    ld sp, hl
    adc a
    rst $38
    rst $38
    add d
    ld a, [bc]
    cp b
    ld e, b
    push af
    sub e
    ret nc

    ld sp, hl
    adc a
    rst $38
    rst $38
    ld bc, $96e9
    ld e, $0b
    or $c3
    db $d3
    ld [$d3c3], a
    nop
    cp a
    ld d, c
    ld [c], a
    rst $20
    ldh [rP1], a
    ld a, h
    ld b, h
    ld a, [bc]
    ld a, h
    ld b, h
    ld a, [bc]
    add h
    ld b, h
    ld a, [bc]
    adc h
    ld b, h
    pop hl
    jp $2051


    add h
    ld b, h
    jr nz, @-$72

    ld b, h
    nop
    db $fc
    ld b, e
    inc d
    db $ec
    ld b, e
    inc d
    db $f4
    ld b, e
    inc d
    db $fc
    ld b, e
    pop hl
    ret c

    ld d, c
    and $06
    ld e, $ec
    ld b, e
    inc d
    db $f4
    ld b, e
    rst $20
    ld [hl-], a
    db $ec
    ld b, e
    rrca

jr_008_51f1:
    db $f4
    ld b, e
    ld a, [bc]
    db $fc
    ld b, e
    add sp, -$4e
    jr nc, jr_008_51fa

jr_008_51fa:
    ld d, d
    dec c
    ld d, d
    pop hl
    db $e4
    ld d, c
    db $fc
    jr nz, @+$54

    ld a, [hl-]
    ld d, d
    ret


    inc [hl]
    ld d, b
    db $fc
    ld b, e
    pop hl
    db $e4
    ld d, c
    db $fc
    jr nz, @+$54

    inc sp
    ld d, d
    ret


    inc [hl]
    ld d, b
    db $fc
    ld b, e
    pop hl
    db $e4
    ld d, c
    nop
    ld [$0044], sp
    inc b
    ld b, h
    ld [bc], a
    sbc c
    ld l, b
    ld [bc], a
    sbc l
    ld l, b
    ld [bc], a
    and c
    ld l, b
    ld [bc], a
    and l
    ld l, b
    pop hl
    jr nz, jr_008_5281

    ld e, $b4
    ld b, e
    inc d
    ret nz

    ld b, e
    pop hl
    cpl
    ld d, d
    ld e, $dc
    ld b, e
    jr z, jr_008_51f1

    ld b, e
    ld c, $c0
    ld b, e
    ld [$43c0], sp
    inc bc
    or h
    ld b, e
    pop hl
    cpl
    ld d, d
    ld [$43b4], sp
    ld [$43c0], sp
    pop hl
    ld c, d
    ld d, d
    ld [$43c8], sp
    ld [$43d4], sp
    pop hl
    ld d, e
    ld d, d
    push hl
    ld h, c
    ld d, d
    sub a
    ld d, d
    and $05
    ld [$43b4], sp
    ld [$43c0], sp
    rst $20
    push hl
    ld l, a
    ld d, d
    db $76
    ld d, d
    and $05
    ld [$43c8], sp
    ld [$43d4], sp
    rst $20
    ld [c], a
    db $e3
    and $02
    inc b
    ld a, h
    ld b, e
    inc b
    add h

jr_008_5281:
    ld b, e
    rst $20
    ld [bc], a
    ld a, h
    ld b, e
    ld d, l
    add h
    ld b, e
    and $02
    ld [bc], a
    add h
    ld b, e
    ld [bc], a
    ld a, h
    ld b, e
    rst $20
    ld [bc], a
    add h
    ld b, e
    and $04
    ld [$437c], sp
    ld [$4384], sp
    rst $20
    inc b
    ld a, h
    ld b, e
    inc b
    ld [hl], h
    ld b, e
    and $02
    inc b
    sub h
    ld b, e
    inc b
    sbc h
    ld b, e
    rst $20
    ld [bc], a
    sub h
    ld b, e
    ld d, l
    sbc h
    ld b, e
    and $02
    ld [bc], a
    sbc h
    ld b, e
    ld [bc], a
    sub h
    ld b, e
    rst $20
    ld [bc], a
    sbc h
    ld b, e
    and $04
    ld [$4394], sp
    ld [$439c], sp
    rst $20
    inc b
    sub h
    ld b, e
    inc b
    adc h
    ld b, e
    pop hl
    ld a, d
    ld d, d
    ld [$437c], sp
    ld [$4384], sp
    pop hl
    pop de
    ld d, d
    ld [$4394], sp
    ld [$439c], sp
    pop hl

jr_008_52e1:
    jp c, $0a52

    ld a, h
    ld b, e
    and $04
    ld [$4384], sp
    ld [$437c], sp
    rst $20
    ld [$4384], sp
    ld a, [bc]
    ld [hl], h
    ld b, e
    and $09
    ld [$4384], sp
    ld [$437c], sp
    rst $20
    ld a, [bc]
    ld [hl], h
    ld b, e
    and $04
    ld [$4384], sp
    ld [$437c], sp
    rst $20
    ld [$4384], sp
    ld a, [bc]
    sub h
    ld b, e
    and $04
    ld [$439c], sp
    ld [$4394], sp
    rst $20
    ld [$439c], sp
    ld a, [bc]
    adc h
    ld b, e
    and $09
    ld [$439c], sp

jr_008_5324:
    ld [$4394], sp
    rst $20
    ld a, [bc]
    adc h
    ld b, e
    and $04
    ld [$439c], sp
    ld [$4394], sp
    rst $20
    ld [$439c], sp
    pop hl
    db $e3
    ld d, d
    and $05
    ld [$4394], sp
    ld [$439c], sp
    rst $20
    dec b
    sub h
    ld b, e
    ld [$437c], sp
    ld [$4384], sp
    pop hl
    ld b, [hl]
    ld d, e
    jr nc, jr_008_53c5

    ld b, e
    jr nz, jr_008_53d0

    ld b, e
    jr nz, @-$7a

    ld b, e
    jr nz, @+$7e

    ld b, e
    jr nz, jr_008_52e1

    ld b, e
    jr nz, @+$7e

    ld b, e
    ld [c], a
    ld sp, hl
    xor $05
    ld b, c
    nop
    nop
    add sp, -$1f
    ld c, b
    add sp, -$4e
    jr nc, jr_008_53e1

    ld d, e
    ld a, l
    ld d, e
    and $0a
    inc b
    cp b
    ld e, b
    inc b
    inc e
    ld b, h
    rst $20
    ld [c], a
    inc c
    and $0a
    inc b
    cp b
    ld e, b
    inc b
    inc l
    ld b, h
    rst $20
    ld [c], a
    ld bc, $b2e8
    jr nc, jr_008_5324

    ld d, e
    adc a
    ld d, e
    jr jr_008_53bd

    ld b, h
    inc c
    inc [hl]
    ld b, h
    pop hl
    adc b
    ld d, e
    jr jr_008_53b6

    ld b, h
    inc c
    inc h
    ld b, h
    pop hl
    adc b
    ld d, e
    xor $05
    ld b, c
    nop
    nop
    add sp, -$1f
    ld c, b
    and $03
    db $10
    inc l
    ld b, h
    db $10
    inc [hl]
    ld b, h
    rst $20
    db $10
    inc l
    ld b, h
    db $10

jr_008_53b6:
    inc h
    ld b, h
    and $05
    db $10

jr_008_53bb:
    inc e
    ld b, h

jr_008_53bd:
    db $10
    inc h
    ld b, h
    rst $20
    db $10
    inc e
    ld b, h
    db $10

jr_008_53c5:
    inc [hl]
    ld b, h
    and $02
    db $10
    inc l
    ld b, h
    db $10
    inc [hl]
    ld b, h
    rst $20

jr_008_53d0:
    pop hl
    and c
    ld d, e
    db $10
    call $105e
    push bc
    ld e, [hl]
    db $10
    call $105e
    push bc
    ld e, [hl]
    ld h, b
    push bc

jr_008_53e1:
    ld e, [hl]
    and $05
    db $10
    call $105e
    push bc
    ld e, [hl]
    rst $20
    ld h, b
    push bc
    ld e, [hl]
    db $10
    call $105e
    push bc
    ld e, [hl]
    jr nz, jr_008_53bb

    ld e, [hl]
    pop hl
    db $d3
    ld d, e
    ld a, [bc]
    ld e, h
    ld b, h
    ld b, $64
    ld b, h
    ld b, $6c
    ld b, h
    ld a, [bc]
    ld [hl], h
    ld b, h
    inc b
    ld l, h
    ld b, h
    inc b
    ld h, h
    ld b, h
    inc b
    ld e, h
    ld b, h
    inc b
    ld h, h
    ld b, h
    inc b
    ld l, h
    ld b, h
    inc b
    ld [hl], h
    ld b, h
    inc b
    ld l, h
    ld b, h
    inc b
    ld h, h
    ld b, h
    ld a, [bc]
    ld e, h
    ld b, h
    ld b, $64
    ld b, h
    ld b, $6c
    ld b, h
    ld a, [bc]
    ld [hl], h
    ld b, h
    ld [$446c], sp
    ld [$4464], sp
    pop hl
    ld a, [$e353]
    ld b, h
    ld d, h
    pop hl
    inc sp
    ld d, h
    push hl
    inc sp
    ld d, h
    adc $42
    db $e3
    ld b, h
    ld d, h
    pop hl
    ld a, $54
    ld a, [bc]
    ld e, h
    ld b, h
    ld b, $64
    ld b, h
    ld b, $6c
    ld b, h
    ld a, [bc]
    ld [hl], h
    ld b, h
    ld b, $6c
    ld b, h
    ld b, $64
    ld b, h
    db $e4
    dec bc
    ld e, h
    ld b, h
    rlca
    ld h, h
    ld b, h
    rlca
    ld l, h
    ld b, h
    dec bc
    ld [hl], h
    ld b, h
    rlca
    ld l, h
    ld b, h
    rlca
    ld h, h
    ld b, h
    ld [c], a
    db $ed
    ld a, [bc]
    inc c
    ld b, h
    ld a, [bc]
    inc d
    ld b, h
    pop hl
    ld l, e
    ld d, h
    pop af
    nop
    ld hl, sp+$06
    add hl, hl
    ld e, l
    ld b, $31
    ld e, l
    ldh [$ee], a
    ld d, d
    ld b, d
    add [hl]
    ld d, h
    nop
    inc a
    ld b, h
    inc b
    ld c, h
    ld b, h
    ld a, [bc]
    ld d, h
    ld b, h
    ld a, [bc]
    ld d, h
    ld b, h
    inc b
    ld d, b
    ld b, h
    ld a, [bc]
    ld b, h
    ld b, h
    add sp, $21
    ld sp, $364f
    xor $08
    ld b, d
    nop
    nop
    ld a, [bc]
    ld b, h
    ld b, h
    ld a, [bc]
    ld c, h
    ld b, h
    ld a, [bc]
    ld d, h
    ld b, h
    ld a, [bc]
    ld d, b
    ld b, h
    pop hl
    sbc a
    ld d, h
    db $fc
    sub $49
    dec a
    ld d, [hl]
    jp nc, $e534

    cp d
    ld d, h
    and h
    ld b, d
    adc h
    push af
    ld e, [hl]
    db $fc
    sub $49
    ld l, $56
    jp nc, $e534

    ret


    ld d, h

jr_008_54c7:
    and h
    ld b, d
    adc h
    push af
    ld e, [hl]
    db $fc
    sub $49
    ld b, b
    ld d, [hl]
    jp nc, $e534

    ret c

    ld d, h
    and h
    ld b, d
    or h
    push af
    ld e, [hl]
    pop hl
    xor [hl]
    ld d, h
    add sp, -$4e
    jr nc, jr_008_54c7

    ld d, h
    ld a, [$4154]
    db $ed
    ld e, [hl]
    db $fc
    sub $49
    dec a
    ld d, [hl]
    jp nc, $e534

    db $f4
    ld d, h
    sbc b
    ld b, d
    ld b, c
    db $ed
    ld e, [hl]
    pop hl
    sbc $54
    ld b, c
    db $fd
    ld e, [hl]
    db $fc
    sub $49
    ld b, b
    ld d, [hl]
    jp nc, $e534

    add hl, bc
    ld d, l
    or b
    ld b, d
    ld b, c
    db $fd
    ld e, [hl]
    pop hl
    sbc $54
    ld b, c
    dec b
    ld e, a
    db $fc
    sub $49
    pop de
    ld b, d
    jp nc, $e534

    ld e, $55
    cp h
    ld b, d
    ld b, c
    dec b
    ld e, a
    pop hl
    rrca
    ld d, l
    ld b, c
    push hl
    ld e, [hl]
    db $fc
    sub $49
    jp c, $d242

    inc [hl]
    push hl
    inc sp
    ld d, l
    adc h
    ld b, d
    ld b, c
    push hl
    ld e, [hl]
    pop hl
    inc h
    ld d, l
    ld b, c
    dec b
    ld e, a
    db $fc
    sub $49
    pop de
    ld b, d
    jp nc, $e534

    ld c, b
    ld d, l
    cp h
    ld b, d
    ld b, c
    dec b
    ld e, a
    ld b, c
    db $fd
    ld e, [hl]
    db $fc
    sub $49
    ld b, b
    ld d, [hl]
    jp nc, $e534

    ld e, d
    ld d, l
    or b
    ld b, d
    ld b, c
    db $fd
    ld e, [hl]
    pop hl
    add hl, sp
    ld d, l
    ld b, c
    push hl
    ld e, [hl]
    db $fc
    sub $49
    adc $42
    jp nc, $e534

    ld l, a
    ld d, l
    adc h
    ld b, d
    ld b, c
    push hl
    ld e, [hl]
    ld b, c
    db $ed
    ld e, [hl]
    db $fc
    ld l, $5c
    dec a
    ld d, [hl]
    ret


    inc [hl]
    push hl
    add c
    ld d, l
    sbc b
    ld b, d
    ld b, c
    db $ed
    ld e, [hl]
    pop hl

jr_008_5585:
    ld h, b
    ld d, l
    push hl
    adc h
    ld d, l
    ld e, d
    ld e, [hl]
    ld b, b
    db $f4
    ld b, [hl]
    jr nc, jr_008_5585

    ld b, [hl]
    pop hl
    adc h
    ld d, l
    nop
    db $f4
    ld b, [hl]
    xor $52
    ld b, d
    and b
    ld d, l
    nop
    cp b
    ld e, b
    db $fc
    reti


    ld d, l
    ld [$2140], sp
    inc [hl]
    db $fc
    rst $20
    ld d, l
    ld [$2140], sp
    inc [hl]
    db $fc
    push af
    ld d, l
    ld [$2140], sp
    inc [hl]
    db $fc
    inc bc
    ld d, [hl]
    ld [$2140], sp
    inc [hl]
    db $fc
    ld de, $0856
    ld b, b
    ld hl, $fc34
    inc h
    ld d, [hl]
    ld [$2140], sp
    inc [hl]
    db $fc
    scf
    ld d, [hl]
    ld [$2140], sp
    inc [hl]
    db $fc
    ld c, d
    ld d, [hl]
    ld [$2140], sp
    inc [hl]
    ldh [$f1], a
    nop
    ret nc

    ld [$5d29], sp
    ld [$5d31], sp
    push hl
    ld e, l
    ld d, [hl]
    sbc d
    ld d, [hl]
    pop af
    jr nc, jr_008_55ea

jr_008_55ea:
    ld [$5d29], sp
    ld [$5d31], sp
    push hl
    ld e, l
    ld d, [hl]
    ret nc

    ld d, [hl]
    pop af
    nop
    jr nc, jr_008_5601

    add hl, hl
    ld e, l
    ld [$5d31], sp
    push hl
    ld e, l
    ld d, [hl]

jr_008_5601:
    cp [hl]
    ld d, [hl]
    pop af
    ret nc

    nop
    ld [$5d29], sp
    ld [$5d31], sp
    push hl
    ld e, l
    ld d, [hl]
    xor h
    ld d, [hl]
    pop af
    ld [hl+], a
    sbc $08
    add hl, hl
    ld e, l
    ld [$5d31], sp
    add sp, $21
    ld sp, $36a0
    push hl
    adc b
    ld d, e
    reti


    ld d, [hl]
    pop af
    ld [hl+], a
    ld [hl+], a
    ld [$5d29], sp
    ld [$5d31], sp
    add sp, $21
    ld sp, $36a0
    push hl
    adc b
    ld d, e
    rst $00
    ld d, [hl]
    pop af
    sbc $22
    ld [$5d29], sp
    ld [$5d31], sp
    add sp, $21
    ld sp, $36a0
    push hl
    adc b
    ld d, e
    or l
    ld d, [hl]

jr_008_564a:
    pop af
    sbc $de
    ld [$5d29], sp
    ld [$5d31], sp
    add sp, $21
    ld sp, $36a0
    push hl
    adc b
    ld d, e
    and e
    ld d, [hl]
    add sp, $21
    ld sp, $348c
    add sp, -$4e
    jr nc, @+$6b

    ld d, [hl]
    ld [hl], d
    ld d, [hl]
    ld [$437c], sp
    ld [$4384], sp
    pop hl
    ld h, d
    ld d, [hl]
    ld [$4394], sp
    ld [$439c], sp
    pop hl
    ld h, d
    ld d, [hl]
    ld bc, $58b8
    add sp, $21
    ld sp, $3421
    xor $52
    ld b, d
    adc e
    ld d, [hl]
    nop
    cp b
    ld e, b
    add sp, -$24
    jr nc, jr_008_570a

    ld d, [hl]
    sub h
    ld d, [hl]
    ld [c], a
    add sp, -$04
    ld [hl], h
    ld d, h
    ld [$cd40], sp
    dec [hl]
    pop af
    nop
    ldh a, [$e9]
    sub [hl]
    ld e, $0f
    add sp, $21
    ld sp, $3459
    nop
    add c
    ld e, h
    nop
    sbc l
    ld e, a
    nop
    or l
    ld e, a
    ld [$5f9d], sp
    jr z, jr_008_564a

    ld e, a
    pop hl
    or b
    ld d, [hl]
    ld [$5fb5], sp
    jr z, @-$51

    ld e, a
    pop hl
    cp c
    ld d, [hl]
    and $03
    ld [$5f9d], sp
    jr @-$69

    ld e, a
    rst $20
    and $03
    ld [$5fb5], sp
    jr @-$51

    ld e, a
    rst $20
    pop hl
    jp nz, $ee56

    dec b
    ld b, c
    nop
    nop
    add sp, -$1f
    ld c, b
    ld e, $a5
    ld e, a
    add sp, -$18
    ld c, b
    ld a, [bc]
    sbc l
    ld e, a
    jr z, @-$69

    ld e, a
    nop
    sbc l
    ld e, a
    xor $05
    ld b, c
    nop
    nop
    add sp, -$1f
    ld c, b
    nop
    and l
    ld e, a
    xor $05
    ld b, c
    nop
    nop
    add sp, -$1f
    ld c, b
    ld [hl], b
    cp l
    ld e, a

jr_008_5704:
    jr nc, @-$49

    ld e, a
    add sp, -$18
    ld c, b

jr_008_570a:
    and $03
    jr nz, @-$51

    ld e, a
    ld a, [bc]
    or l
    ld e, a
    rst $20
    pop hl
    ld sp, hl
    ld d, [hl]
    nop
    call $005f
    push hl
    ld e, a
    ld a, [bc]
    call $e85f
    or d
    jr nc, jr_008_5749

    ld d, a
    ld h, c
    ld d, a
    inc d
    call $e65f
    inc b
    inc b
    push de
    ld e, a
    inc b
    call $e75f
    db $e3
    and h
    ld b, h
    jr z, jr_008_5704

    ld e, a
    xor $05
    ld b, c
    nop
    nop
    add sp, -$1f
    ld c, b
    ld [hl-], a
    push bc
    ld e, a
    add sp, -$18
    ld c, b
    pop hl
    inc e
    ld d, a

jr_008_5749:
    xor $05
    ld b, c
    nop
    nop
    add sp, -$1f
    ld c, b
    inc a
    db $dd
    ld e, a
    add sp, -$18
    ld c, b

jr_008_5757:
    inc d
    push hl
    ld e, a
    add sp, -$4e
    jr nc, jr_008_5784

    ld d, a
    ld h, c
    ld d, a
    inc d
    push hl
    ld e, a
    and $0a
    inc b
    db $ed
    ld e, a
    inc b
    push hl
    ld e, a
    rst $20
    db $e3
    dec e
    ld b, l
    jr z, jr_008_5757

    ld e, a
    pop hl
    ld c, c
    ld d, a
    push hl
    ld a, e
    ld d, a
    adc [hl]
    ld d, a
    inc c
    call $145f
    push bc
    ld e, a
    ld a, [$8720]

jr_008_5784:
    ld d, a
    db $76
    ld d, a
    and $06
    inc b
    db $ed
    ld e, a
    inc b
    push hl
    ld e, a
    rst $20
    db $e3
    dec e
    ld b, l
    pop hl
    db $76
    ld d, a
    xor $05
    ld b, c
    nop
    nop
    add sp, -$1f
    ld c, b
    ld b, b
    db $dd
    ld e, a
    add sp, -$18
    ld c, b
    inc d
    push hl
    ld e, a
    and $0a
    inc b
    db $ed
    ld e, a
    inc b
    push hl
    ld e, a
    rst $20
    db $e3
    dec e
    ld b, l
    pop hl
    sub [hl]
    ld d, a
    nop
    ld b, l
    ld h, b
    db $10
    ld b, l
    ld h, b
    db $10
    ld c, l
    ld h, b
    db $10
    ld d, l
    ld h, b
    db $10
    ld e, l
    ld h, b
    pop hl
    cp c
    ld d, a
    ld [$6045], sp
    ld [$604d], sp
    ld [$6055], sp
    ld [$605d], sp
    pop hl
    ret z

    ld d, a
    inc b
    ld b, l
    ld h, b
    inc b
    ld c, l
    ld h, b
    inc b
    ld d, l
    ld h, b
    inc b
    ld e, l
    ld h, b
    pop hl
    rst $10
    ld d, a
    nop
    ld h, l
    ld h, b
    ld [$6065], sp
    jr nc, @+$47

    ld h, b
    inc b
    ld c, l
    ld h, b
    inc b
    ld d, l
    ld h, b
    inc b
    ld e, l
    ld h, b
    ld [$6045], sp
    pop hl
    jp hl


    ld d, a
    ei
    ld bc, $5804
    inc hl
    ld e, b
    and $03
    ld a, [bc]
    ld b, l
    ld h, b
    ld a, [bc]
    ld c, l
    ld h, b
    ld a, [bc]
    ld d, l
    ld h, b
    ld a, [bc]
    ld e, l
    ld h, b
    rst $20
    add sp, $21
    ld sp, $3495
    db $e3
    ld c, [hl]
    ld e, b
    add sp, $21
    ld sp, $349e
    ld h, h
    cp b
    ld e, b
    add sp, $21
    ld sp, $3495
    db $e3
    ld [hl-], a
    ld e, b
    add sp, $21
    ld sp, $348c
    ld [c], a
    db $d3
    and $03
    ld bc, $6045
    dec b
    cp b
    ld e, b
    rst $20
    and $03
    ld [bc], a
    ld b, l
    ld h, b
    ld [bc], a
    cp b
    ld e, b
    rst $20
    and $03
    dec b
    ld b, l
    ld h, b
    ld bc, $58b8
    rst $20
    db $e4
    and $03
    dec b
    ld b, l
    ld h, b
    ld bc, $58b8
    rst $20
    and $03
    ld [bc], a
    ld b, l
    ld h, b
    ld [bc], a
    cp b
    ld e, b
    rst $20
    and $03
    ld bc, $6045
    dec b
    cp b
    ld e, b
    rst $20
    db $e4
    ld a, [bc]
    ld b, l
    ld h, b
    ld a, [bc]
    ld c, l
    ld h, b
    ld a, [bc]
    ld d, l
    ld h, b
    ld a, [bc]
    ld e, l
    ld h, b
    ld a, [bc]
    ld h, l
    ld h, b
    ld a, [bc]
    ld b, l
    ld h, b
    pop hl
    ld l, d
    ld e, b
    db $10
    push af
    ld e, a
    ld [$5ffd], sp
    db $10
    push af
    ld e, a
    db $10
    db $fd
    ld e, a
    ld [$5ff5], sp
    pop hl
    ld a, a
    ld e, b
    ld [$6005], sp
    ld [$5ffd], sp
    pop hl
    sub c
    ld e, b
    nop
    dec c
    ld h, b
    ld [$5ffd], sp
    nop
    push af
    ld e, a
    ld [$6025], sp
    nop
    dec e
    ld h, b
    jr nz, jr_008_58d8

    ld h, b
    nop
    dec h
    ld h, b
    jr nz, jr_008_58b6

    ld h, b
    nop
    db $fd
    ld e, a
    db $10

jr_008_58b6:
    dec e
    ld h, d
    db $10
    dec h
    ld h, d
    pop hl
    or l
    ld e, b
    db $10
    dec l
    ld h, d
    db $10
    dec [hl]
    ld h, d
    pop hl
    cp [hl]
    ld e, b
    db $10
    ld b, l
    ld h, d
    nop
    dec a
    ld h, d
    db $10
    ld b, l
    ld h, d
    jr nz, jr_008_590f

    ld h, d
    pop hl
    call $0158
    ld b, l

jr_008_58d8:
    ld h, d
    pop hl
    sub $58
    ld bc, $623d
    pop hl
    call c, $0a58
    dec l
    ld h, d
    and $02
    ld a, [bc]
    dec e
    ld h, d
    ld a, [bc]
    dec h
    ld h, d
    rst $20
    ld a, [bc]
    dec e
    ld h, d
    and $02
    ld a, [bc]
    dec l
    ld h, d
    ld a, [bc]
    dec [hl]
    ld h, d
    rst $20
    pop hl
    ld [c], a
    ld e, b
    ld h, h
    dec a
    ld h, d
    inc d
    ld b, l
    ld h, d
    nop
    dec a
    ld h, d
    ld bc, $624d
    push hl
    ld c, $59
    dec hl
    ld e, e
    nop

jr_008_590f:
    ld c, l
    ld h, d
    jr z, jr_008_5960

    ld h, d
    add sp, $21
    ld sp, $366a
    xor $b1
    ld b, c
    ld hl, $0059
    ld c, l
    ld h, d
    add sp, $21
    ld sp, $3673
    push hl
    or $49
    ld [$b040], sp
    ld c, l
    ld h, d
    ld d, b
    ld d, l
    ld h, d
    inc b
    ld e, l
    ld h, d
    inc b
    ld l, c
    ld h, d
    and $08
    inc b
    ld a, c
    ld h, d
    inc b
    adc c
    ld h, d
    rst $20
    nop
    ld d, l
    ld h, d
    jr z, @-$65

    ld h, d
    inc a
    and c
    ld h, d
    inc b
    xor c
    ld h, d
    inc b
    ret


    ld h, d
    jp hl


    sub [hl]
    ld e, $19
    inc b
    pop af
    ld h, d
    inc b
    add hl, hl
    ld h, e
    inc b
    ld e, c
    ld h, e
    ld [c], a
    ld sp, hl
    nop
    ld l, l

jr_008_5960:
    ld h, b
    ld a, [bc]
    ld l, l
    ld h, b
    ld a, [$9d55]
    ld e, c
    ld a, [$a980]
    ld e, c
    pop hl
    cp e
    ld e, c
    rrca
    ld l, l
    ld h, b
    ld a, [$7bb2]
    ld e, c
    rrca
    ld l, l
    ld h, b
    ld [c], a
    ld [$0de3], a
    ld e, d
    rrca
    push de
    ld h, b
    ld a, [$d555]
    ld e, c
    ld a, [$e180]
    ld e, c
    pop hl
    di
    ld e, c
    rrca
    push de
    ld h, b
    ld a, [$98b2]
    ld e, c
    rrca
    push de
    ld h, b
    ld [c], a
    ld [$17e3], a
    ld e, d
    ld [c], a
    ret z

    db $fc
    ld [hl], e
    ld e, d
    ld [$d743], sp
    dec [hl]
    db $e3
    ld hl, $e25a
    rst $00
    and $03
    db $e3
    dec [hl]
    ld e, d
    db $fc
    ld [hl], e
    ld e, d
    ld [$d743], sp
    dec [hl]
    ld a, [bc]
    ld l, l
    ld h, b
    rst $20
    ld [c], a
    or l
    db $e3
    dec [hl]
    ld e, d
    db $fc
    ld [hl], e
    ld e, d
    reti


    ld e, d
    rst $10
    dec [hl]
    db $fc
    ld [hl], e
    ld e, d
    ld [$d743], sp
    dec [hl]
    db $fc
    ld [hl], e
    ld e, d
    call c, $d75a
    dec [hl]
    ld [c], a
    sbc e
    db $e3
    dec hl
    ld e, d
    db $fc
    ld l, l
    ld e, d
    ld [$d743], sp
    dec [hl]
    ld [c], a
    xor h
    and $03
    db $e3
    ccf
    ld e, d
    db $fc
    ld l, l
    ld e, d
    ld [$d743], sp
    dec [hl]
    ld a, [bc]
    push de
    ld h, b
    rst $20
    ld [c], a
    sbc d
    db $e3
    ccf
    ld e, d
    db $fc
    ld l, l
    ld e, d
    reti


    ld e, d
    rst $10
    dec [hl]
    db $fc
    ld l, l
    ld e, d
    ld [$d743], sp
    dec [hl]
    db $fc
    ld l, l
    ld e, d
    call c, $d75a
    dec [hl]
    ld [c], a
    add b
    inc b
    sub l
    ld h, b
    inc b
    or l
    ld h, b
    ld a, [bc]
    push de
    ld h, b
    db $e4
    inc b
    or l
    ld h, b
    inc b
    sub l
    ld h, b
    ld a, [bc]
    ld l, l
    ld h, b
    db $e4
    inc b
    db $fd
    ld h, b
    inc b
    dec l
    ld h, c
    inc b
    ld e, l
    ld h, c
    db $e4
    inc b
    adc l
    ld h, c
    inc b
    cp l
    ld h, c
    inc b
    db $ed
    ld h, c
    db $e4
    ld [bc], a
    db $fd
    ld h, b
    ld [bc], a
    dec l
    ld h, c
    ld [bc], a
    ld e, l
    ld h, c
    db $e4
    ld [bc], a
    adc l
    ld h, c
    ld [bc], a
    cp l
    ld h, c
    ld [bc], a
    db $ed
    ld h, c
    db $e4
    inc b
    ld l, l
    ld h, b
    inc b
    sub l
    ld h, b
    inc b
    or l
    ld h, b
    inc b
    push de
    ld h, b
    pop hl
    ld c, c
    ld e, d
    ld [$606d], sp
    ld [$6095], sp
    ld a, [bc]
    or l
    ld h, b
    ld a, [bc]
    push de
    ld h, b
    db $10
    or l
    ld h, b
    db $10
    sub l
    ld h, b
    nop
    ld l, l
    ld h, b
    pop af
    or $f0
    pop hl
    sub $49
    pop af
    or $10
    pop hl
    sub $49
    jp hl


    or h
    ld e, $ff
    ld sp, hl
    sub h
    rst $38
    rst $38
    jr nz, @-$05

    sub l
    rst $38
    cp a
    nop
    ld sp, hl
    sub b
    rst $38
    rst $18

jr_008_5a8b:
    db $10
    db $f4
    cp d
    jp nc, $f423

    cp e
    jp nc, $f416

    ld d, c
    ret nc

    jr nz, jr_008_5a8b

    db $fc
    ld h, a
    ld c, c
    jr nz, jr_008_5af9

    ld hl, $e334
    dec b
    ld c, e
    push hl
    nop
    ld b, b
    rst $18
    ld e, d
    jp hl


    sub [hl]
    ld e, $1c
    ld b, $21
    ld e, l
    ld [bc], a
    add hl, hl
    ld e, l
    ld [bc], a
    ld sp, $e05d
    push hl
    cp e
    ld e, d
    cp a
    ld e, e
    and $08
    inc c
    jr z, jr_008_5b05

    inc c
    jr nc, jr_008_5b08

    rst $20
    push hl
    ret


    ld e, d
    ld [$e640], sp
    ld [bc], a
    inc b
    jr nc, @+$47

    inc b
    jr z, @+$47

    rst $20
    ld a, [bc]
    jr nc, @+$47

    push hl
    jp c, $aa5a

    ld e, e
    and $08
    inc c
    jr @+$47

    inc c
    jr nz, @+$47

    rst $20
    push hl
    add sp, $5a
    ld [$e640], sp
    ld [bc], a
    inc b
    jr nz, jr_008_5b32

    inc b
    jr jr_008_5b35

    rst $20
    ld a, [bc]
    jr nz, @+$47

    ld [c], a
    pop bc
    ld [$4518], sp

jr_008_5af9:
    ld [$4520], sp
    pop hl
    or $5a
    ld [$4528], sp
    ld [$4530], sp

jr_008_5b05:
    pop hl
    rst $38
    ld e, d

jr_008_5b08:
    inc c
    jr @+$47

    ld a, [bc]
    jr nz, @+$47

    pop hl
    ld [$0c5b], sp
    jr z, jr_008_5b59

    ld a, [bc]
    jr nc, jr_008_5b5c

    pop hl
    ld de, $005b
    ld b, b
    ld b, l
    nop
    jr c, jr_008_5b65

    nop
    ld c, b
    ld b, l
    ld [$4538], sp
    ld [$4540], sp
    ld [$4548], sp
    ld [$4550], sp
    pop hl
    inc hl
    ld e, e

jr_008_5b32:
    ld b, $45
    ld e, [hl]

jr_008_5b35:
    ld b, $4d
    ld e, [hl]
    and $02
    ld a, [bc]
    ld b, l
    ld e, [hl]
    ld a, [bc]
    ld c, l
    ld e, [hl]
    rst $20
    pop hl
    ld [hl-], a
    ld e, e
    ld a, [bc]
    call $0a5e
    push bc
    ld e, [hl]
    push hl
    ld l, e
    ld e, e
    ld [c], a
    ld d, e
    and $02
    ld a, [bc]
    call $0a5e
    push bc
    ld e, [hl]
    rst $20
    push hl

jr_008_5b59:
    ld l, e
    ld e, e
    ld [c], a

jr_008_5b5c:
    ld d, e
    and $03
    ld a, [bc]
    call $0a5e
    push bc
    ld e, [hl]

jr_008_5b65:
    rst $20
    push hl
    ld l, e
    ld e, e
    ld [c], a
    ld d, e
    ld a, [bc]
    call $0a5e
    push bc
    ld e, [hl]
    ld a, [bc]
    call $085e
    call $085e
    push bc
    ld e, [hl]
    pop hl
    ld [hl], h
    ld e, e
    push hl
    add d
    ld e, e
    adc $42
    and $12
    db $10
    ld d, l
    ld e, [hl]
    db $10
    ld e, l
    ld e, [hl]
    rst $20
    push hl
    sub b
    ld e, e
    pop de
    ld b, d
    and $12
    db $10
    ld h, l
    ld e, [hl]

jr_008_5b95:
    db $10
    ld l, l
    ld e, [hl]
    rst $20
    ld [c], a
    db $e3
    xor $ce
    ld b, b
    or b
    ld e, e
    ld a, [bc]
    ld e, b
    ld b, l
    ld a, [bc]
    ld h, b
    ld b, l
    ld [c], a
    ld sp, hl
    ld a, [bc]
    add b
    ld b, l
    ld a, [bc]
    adc b
    ld b, l
    ld [c], a
    ld sp, hl
    add sp, $21
    ld sp, $34ed
    push hl
    cp d
    ld e, e
    ld a, d
    ld e, l
    inc c
    ld e, b
    ld b, l
    inc c
    ld a, b
    ld b, l
    push hl
    push bc
    ld e, e

jr_008_5bc3:
    db $e3
    ld e, h
    add sp, -$4e
    jr nc, jr_008_5b95

    ld e, e
    call nc, $085b
    ld l, b
    ld b, l
    ld a, [bc]
    ld a, b
    ld b, l
    ld [c], a
    ld a, [c]
    ld [$4590], sp
    ld a, [bc]
    and b
    ld b, l
    ld [c], a
    ld [$b2e8], a
    jr nc, jr_008_5bc3

    ld e, e
    and $5b
    nop
    ld a, b
    ld b, l
    nop
    and b
    ld b, l
    and $03
    ld a, [bc]
    ld d, l
    ld e, [hl]
    ld [$5e5d], sp
    rst $20
    and $03
    ld a, [bc]
    ld h, l
    ld e, [hl]
    ld [$5e6d], sp
    rst $20
    and $02
    ld a, [bc]
    ld d, l
    ld e, [hl]
    ld [$5e5d], sp
    rst $20
    and $02
    ld a, [bc]
    ld h, l
    ld e, [hl]
    ld [$5e6d], sp
    rst $20
    ld a, [bc]
    ld d, l
    ld e, [hl]
    ld [$5e5d], sp
    ld a, [bc]
    ld h, l
    ld e, [hl]
    ld [$5e6d], sp
    inc d
    ld e, l
    ld e, [hl]
    ld b, b
    ld d, l
    ld e, [hl]
    inc d
    ld e, l
    ld e, [hl]
    pop hl
    jp hl


    ld e, e
    pop af
    nop
    ld b, $e1
    sub $49
    nop
    xor b
    ld b, l
    nop
    xor h
    ld b, l
    pop hl
    ld e, c
    ld e, h
    ld e, $f5
    ld e, [hl]
    add sp, $5c
    ld c, c
    db $eb
    cp l
    db $d3
    ld c, l
    ld e, h
    ld a, b
    ld e, h
    sbc l
    ld e, h
    sbc l
    ld e, h
    ld [hl], d
    ld e, h
    ld h, e
    ld e, l
    ld h, e
    ld e, l
    ld a, $5d
    db $fc
    sub $49
    db $ec
    ld b, d
    jp nc, $e534

    ld e, c
    ld e, h
    and h
    ld b, d
    rrca
    push af
    ld e, [hl]
    add sp, $5c
    ld c, c
    db $eb
    cp l
    db $d3
    inc [hl]
    ld e, h
    ld a, b
    ld e, h
    sbc l
    ld e, h
    sbc l
    ld e, h
    ld [hl], d
    ld e, h
    ld h, e
    ld e, l
    ld h, e
    ld e, l
    ld a, $5d
    inc a
    push af
    ld e, [hl]
    pop hl
    ld e, h
    ld e, h
    ld e, $fd
    ld e, [hl]
    add sp, $5c
    ld c, c
    db $eb
    cp l
    db $d3
    inc [hl]
    ld e, h
    sub c
    ld e, h
    or [hl]
    ld e, h
    db $f4
    ld e, h
    ld [hl], d
    ld e, h
    ld e, c
    ld e, h
    ld e, c
    ld e, h
    ld e, c
    ld e, h
    db $fc
    sub $49
    rst $28
    ld b, d
    jp nc, $e534

    sbc l
    ld e, h
    or b
    ld b, d
    rrca
    db $fd
    ld e, [hl]
    add sp, $5c
    ld c, c
    db $eb
    cp l
    db $d3
    inc [hl]
    ld e, h
    ld a, b
    ld e, h
    or [hl]
    ld e, h
    db $f4
    ld e, h
    ld [hl], d
    ld e, h
    ld e, c
    ld e, h
    ld e, c
    ld e, h
    ld e, c
    ld e, h
    ld e, $05
    ld e, a
    add sp, $5c
    ld c, c
    db $eb
    cp l
    db $d3
    sbc l
    ld e, h
    ld a, b
    ld e, h
    rst $08
    ld e, h
    db $f4
    ld e, h
    sbc l
    ld e, h
    sbc l
    ld e, h
    sbc l
    ld e, h
    sbc l
    ld e, h
    db $fc
    sub $49
    jp hl


    ld b, d
    jp nc, $e534

    db $db
    ld e, h
    cp h
    ld b, d
    ld e, $05
    ld e, a
    add sp, $5c
    ld c, c
    db $eb
    cp l
    db $d3
    sbc l
    ld e, h
    ld a, b
    ld e, h
    or [hl]
    ld e, h
    db $f4
    ld e, h
    sbc l
    ld e, h
    sbc l
    ld e, h
    sbc l
    ld e, h
    sbc l
    ld e, h
    inc a
    dec b
    ld e, a
    pop hl
    sbc $5c
    ld e, $e5
    ld e, [hl]
    add sp, $5c
    ld c, c
    db $eb
    cp l
    db $d3
    ld h, e
    ld e, l
    ld h, e
    ld e, l
    ld h, e
    ld e, l
    ld h, e
    ld e, l
    ld h, e
    ld e, l
    jr c, jr_008_5d6c

    inc de
    ld e, l
    ld a, $5d
    db $fc
    sub $49
    and $42
    jp nc, $e534

    rra
    ld e, l
    adc h
    ld b, d
    ld e, $e5
    ld e, [hl]
    add sp, $5c
    ld c, c
    db $eb
    cp l
    db $d3
    ld h, e
    ld e, l
    ld h, e
    ld e, l
    ld h, e
    ld e, l
    ld h, e
    ld e, l
    ld h, e
    ld e, l
    jr c, jr_008_5d91

    ld a, [$3e5c]
    ld e, l
    inc a
    push hl
    ld e, [hl]
    pop hl
    ld [hl+], a
    ld e, l
    ld e, $ed
    ld e, [hl]
    add sp, $5c
    ld c, c
    db $eb
    cp l
    db $d3
    inc [hl]
    ld e, h
    ld e, c
    ld e, h
    ld e, c
    ld e, h
    ld e, c
    ld e, h
    ld [hl], d
    ld e, h
    jr c, jr_008_5db0

    ld a, [$575c]
    ld e, l
    db $fc
    sub $49
    ld a, [c]
    ld b, d
    jp nc, $e534

    ld h, e
    ld e, l
    sbc b
    ld b, d
    rrca
    db $ed
    ld e, [hl]
    add sp, $5c
    ld c, c
    db $eb
    cp l
    db $d3

jr_008_5d6c:
    inc [hl]
    ld e, h
    ld e, c
    ld e, h
    ld e, c
    ld e, h
    ld e, c
    ld e, h
    ld [hl], d
    ld e, h
    jr c, jr_008_5dd5

    ld a, [$3e5c]
    ld e, l
    nop
    and h
    ld b, [hl]
    nop
    ld h, h
    ld b, [hl]
    nop
    ld d, h
    ld b, [hl]
    xor $c2
    ld b, b
    ret


    ld e, l
    ld a, [bc]
    and h
    ld b, [hl]
    ld a, [bc]
    or h
    ld b, [hl]
    ld a, [bc]

jr_008_5d91:
    and h
    ld b, [hl]
    ld a, [bc]
    or h
    ld b, [hl]
    inc d
    call nz, $0a46
    call nc, $0a46
    call nz, $0a46
    call nc, $0a46
    and h
    ld b, [hl]
    ld [c], a
    db $e4
    xor $c2
    ld b, b
    db $db
    ld e, l
    ld a, [bc]
    ld h, h
    ld b, [hl]
    ld a, [bc]

jr_008_5db0:
    ld [hl], h
    ld b, [hl]
    ld a, [bc]
    ld h, h
    ld b, [hl]
    ld a, [bc]
    ld [hl], h
    ld b, [hl]
    inc d
    add h
    ld b, [hl]
    ld a, [bc]
    sub h
    ld b, [hl]
    ld a, [bc]
    add h
    ld b, [hl]
    ld a, [bc]
    sub h
    ld b, [hl]
    ld a, [bc]
    ld h, h
    ld b, [hl]
    ld [c], a
    db $e4
    db $fc
    add d
    ld e, l
    dec h
    ld e, [hl]
    ld hl, $e834
    ld hl, $8c31
    inc [hl]

jr_008_5dd5:
    ld bc, $5e55
    add sp, -$05
    ld c, d
    db $fc
    add d
    ld e, l
    dec h
    ld e, [hl]
    ld hl, $e834
    ld hl, $8c31
    inc [hl]
    ld bc, $5e75
    add sp, -$05
    ld c, d
    add sp, $21
    ld sp, $3421
    push hl
    add d
    ld e, l
    dec h
    ld e, [hl]
    ldh [$fc], a
    ld bc, $084a
    ld b, b
    ld hl, $0034
    ld d, h
    ld b, [hl]
    add sp, $21
    ld sp, $3483
    xor $b1
    ld b, c
    rrca
    ld e, [hl]
    nop
    ld d, l
    ld e, [hl]
    push hl
    add a
    ld b, l
    adc $42
    add sp, $21
    ld sp, $3483
    xor $b1
    ld b, c
    ld hl, $005e
    ld d, l
    ld e, [hl]
    push hl
    xor [hl]
    ld b, l
    rst $38
    ld b, e
    add sp, $21
    ld sp, $3483
    xor $b1
    ld b, c
    inc sp
    ld e, [hl]
    nop
    ld [hl], l
    ld e, [hl]
    push hl
    pop hl
    ld b, l
    adc $42
    add sp, $21
    ld sp, $3483
    xor $b1
    ld b, c
    ld b, l
    ld e, [hl]
    nop
    ld [hl], l
    ld e, [hl]
    push hl
    dec e
    ld b, [hl]
    rst $38
    ld b, e
    ld b, b
    db $f4
    ld b, [hl]
    and $03
    db $fc
    ld l, $5c
    ld h, c
    ld d, [hl]
    ret


    inc [hl]
    db $10
    db $f4
    ld b, [hl]
    rst $20
    pop hl
    ld c, d
    ld e, [hl]
    inc d
    sub h
    ld b, a
    inc d
    sbc h
    ld b, a
    inc d
    sub h
    ld b, a
    inc d
    and h
    ld b, a
    pop hl
    ld e, l
    ld e, [hl]
    jp hl


jr_008_5e6d:
    sub [hl]
    ld e, $14
    inc b
    ld h, h
    ld b, a
    inc b
    ld l, h
    ld b, a
    inc b
    ld [hl], b
    ld b, a
    inc b
    ld a, b
    ld b, a
    ld [c], a
    di
    jp hl


    sub [hl]
    ld e, $14
    inc b
    ld a, h
    ld b, a
    inc b
    add h
    ld b, a
    inc b
    adc b
    ld b, a
    inc b
    sub b
    ld b, a
    pop hl
    ld a, [hl]
    ld e, [hl]
    db $e3
    rrca
    ld e, a
    pop hl

jr_008_5e95:
    sub c
    ld e, [hl]
    db $e3
    ld d, d
    ld e, a
    pop hl
    sub a
    ld e, [hl]
    db $e3
    ld l, $5f
    pop hl
    sbc l
    ld e, [hl]
    push hl
    xor b
    ld e, [hl]
    adc $42
    db $e3

jr_008_5ea9:
    rrca
    ld e, a
    pop hl
    and e
    ld e, [hl]
    db $e3

jr_008_5eaf:
    ld a, [bc]
    ld e, a
    add sp, -$4e
    jr nc, jr_008_5e6d

    ld e, [hl]
    ld a, [$e35e]
    ld a, [bc]
    ld e, a
    add sp, -$4e
    jr nc, @-$3c

    ld e, [hl]
    ldh a, [$5e]
    db $e3
    ld a, [bc]
    ld e, a
    add sp, -$4e
    jr nc, jr_008_5e95

    ld e, [hl]
    and $5e
    db $e3
    ld a, [bc]
    ld e, a
    add sp, -$4e
    jr nc, jr_008_5ea9

    ld e, [hl]
    call c, $e35e
    rrca
    ld e, a
    pop hl
    rst $08
    ld e, [hl]
    db $e3
    ld c, l
    ld e, a
    add sp, -$4e
    jr nc, jr_008_5eaf

    ld e, [hl]
    and $5e
    db $e3
    ld c, l
    ld e, a
    add sp, -$4e
    jr nc, jr_008_5eaf

    ld e, [hl]
    ldh a, [$5e]
    db $e3
    ld c, l
    ld e, a
    add sp, -$4e
    jr nc, jr_008_5eaf

    ld e, [hl]
    ld a, [$e35e]
    ld c, l
    ld e, a
    add sp, -$4e
    jr nc, jr_008_5eaf

    ld e, [hl]
    inc b
    ld e, a
    db $e3
    ld d, d
    ld e, a
    pop hl
    db $fd
    ld e, [hl]
    push hl
    rrca
    ld e, a
    adc $42
    and $03
    ld a, [bc]
    inc h
    ld b, a
    ld a, [bc]
    inc l
    ld b, a
    rst $20
    push hl
    dec e
    ld e, a
    ld [$1440], sp
    inc [hl]
    ld b, a
    db $fc
    ld l, h
    ld e, [hl]
    inc c
    ld e, a
    ld a, h
    ld [hl], $4c
    inc a
    ld b, a
    inc d
    inc [hl]
    ld b, a
    db $e4
    and $03
    ld a, [bc]
    inc h
    ld b, a
    ld a, [bc]
    inc l
    ld b, a
    rst $20
    push hl
    inc a
    ld e, a
    ld [$1440], sp
    inc [hl]
    ld b, a
    db $fc
    ld l, h
    ld e, [hl]
    dec hl
    ld e, a
    ld a, h
    ld [hl], $70
    inc a
    ld b, a

jr_008_5f49:
    inc d
    inc [hl]
    ld b, a
    db $e4
    push hl
    ld d, d
    ld e, a
    pop de
    ld b, d
    and $03
    ld a, [bc]
    ld b, h
    ld b, a
    ld a, [bc]
    ld c, h
    ld b, a
    rst $20
    push hl
    ld h, b
    ld e, a
    ld [$1440], sp
    ld d, h
    ld b, a
    db $fc
    ld a, [hl]
    ld e, [hl]
    ld c, d
    ld e, a
    ld a, h
    ld [hl], $4c
    ld e, h
    ld b, a
    inc d
    ld d, h
    ld b, a
    db $e4
    nop
    cp b
    ld e, b
    nop
    xor h
    ld b, a
    pop af
    nop

jr_008_5f79:
    ld h, b
    ld [bc], a
    or b
    ld b, a
    ld [bc], a
    cp b
    ld b, a
    ld [bc], a
    call nz, $0247
    ret nz

    ld b, a
    ld [bc], a
    or h
    ld b, a
    ld [bc], a
    cp h
    ld b, a
    pop hl
    ld a, d
    ld e, a
    jr z, jr_008_5f49

    ld e, b
    ld a, [$a740]
    ld e, a
    inc d
    cp b
    ld e, b
    ld a, [$a780]
    ld e, a
    inc d
    cp b
    ld e, b
    ld a, [$a7c0]
    ld e, a
    inc d
    cp b
    ld e, b
    db $fc
    or c
    ld e, a
    add e
    ld e, a
    ld hl, $e134
    adc a
    ld e, a
    add sp, -$6d
    ld c, d
    pop hl
    pop af
    ld c, b
    add sp, -$4e
    jr nc, jr_008_5f79

    ld e, a
    db $db
    ld e, a
    and $06
    inc bc
    adc l
    ld e, [hl]
    inc bc
    ld [hl], l
    ld e, [hl]
    rst $20
    push hl
    call z, $105f
    ld e, h
    db $e3
    ld l, $60
    and $02
    inc b
    ld [hl], l
    ld e, [hl]
    inc b
    ld a, l
    ld e, [hl]
    rst $20
    pop hl
    or a
    ld e, a
    and $0c
    inc bc
    or l
    ld e, [hl]
    inc bc
    sbc l
    ld e, [hl]
    rst $20
    push hl
    jp hl


    ld e, a
    db $10
    ld e, h
    db $e3
    adc a
    ld h, b
    and $04
    inc b
    sbc l
    ld e, [hl]
    inc b
    and l
    ld e, [hl]
    rst $20
    pop hl
    or a
    ld e, a
    add sp, -$4e
    jr nc, @+$01

    ld e, a
    ld d, $60
    and $08
    inc bc
    adc l
    ld e, [hl]
    inc bc
    ld [hl], l
    ld e, [hl]
    rst $20
    db $e3
    ld l, $60
    and $02
    inc b
    ld [hl], l
    ld e, [hl]
    inc b
    ld a, l
    ld e, [hl]
    rst $20
    ld [c], a
    db $e3
    and $0c
    inc bc
    or l
    ld e, [hl]
    inc bc
    sbc l
    ld e, [hl]
    rst $20
    db $e3
    adc a
    ld h, b
    and $04
    inc b
    sbc l
    ld e, [hl]
    inc b
    and l
    ld e, [hl]
    rst $20
    pop hl
    rst $38
    ld e, a
    and $03
    db $fc
    ret nz

    ld c, c
    cp a
    ld b, e
    ret


    inc [hl]
    db $ec
    inc b
    rst $20
    and $03
    db $fc
    ret nz

    ld c, c
    ei
    ld b, e
    ret


    inc [hl]
    db $ec
    inc b
    rst $20
    and $03
    db $fc
    ret nz

    ld c, c
    rst $30
    ld b, e
    ret


    inc [hl]
    db $ec
    inc b
    rst $20
    and $03
    db $fc
    ret nz

    ld c, c
    di
    ld b, e
    ret


    inc [hl]
    db $ec
    inc b
    rst $20
    and $03
    db $fc
    ret nz

    ld c, c
    rst $28
    ld b, e
    ret


    inc [hl]
    db $ec
    inc b
    rst $20
    and $03
    db $fc
    ret nz

    ld c, c
    db $eb
    ld b, e
    ret


    inc [hl]
    db $ec
    inc b
    rst $20
    and $03
    db $fc
    ret nz

    ld c, c
    rst $20
    ld b, e
    ret


    inc [hl]
    db $ec
    inc b
    rst $20
    and $03
    db $fc
    ret nz

    ld c, c
    db $e3
    ld b, e
    ret


    inc [hl]
    db $ec
    inc b
    rst $20
    db $e4
    and $03
    db $fc
    ret nz

    ld c, c
    cp a
    ld b, e
    ret


    inc [hl]
    db $ec
    inc b
    rst $20
    and $03
    db $fc
    ret nz

    ld c, c
    jp $c943


    inc [hl]
    db $ec
    inc b
    rst $20
    and $03
    db $fc
    ret nz

    ld c, c
    rst $00
    ld b, e
    ret


    inc [hl]
    db $ec
    inc b
    rst $20
    and $03
    db $fc
    ret nz

    ld c, c
    bit 0, e
    ret


    inc [hl]
    db $ec
    inc b
    rst $20
    and $03
    db $fc
    ret nz

    ld c, c
    rst $08
    ld b, e
    ret


    inc [hl]
    db $ec
    inc b
    rst $20
    and $03
    db $fc

jr_008_60ce:
    ret nz

    ld c, c
    db $d3
    ld b, e
    ret


    inc [hl]
    db $ec
    inc b
    rst $20
    and $03
    db $fc
    ret nz

    ld c, c
    rst $10
    ld b, e
    ret


    inc [hl]
    db $ec
    inc b
    rst $20

jr_008_60e3:
    and $03
    db $fc
    ret nz

    ld c, c
    db $db
    ld b, e
    ret


    inc [hl]
    db $ec
    inc b
    rst $20
    db $e4
    ld bc, $58b8
    add sp, $21
    ld sp, $3421
    xor $52
    ld b, d
    nop
    ld h, c
    nop
    cp b
    ld e, b
    add sp, -$24
    jr nc, @-$0e

    ld h, b
    add hl, bc
    ld h, c
    ld [c], a
    add sp, -$0f
    ldh a, [$e0]
    add sp, $21
    ld sp, $3477
    pop hl
    scf
    ld c, c
    jr z, jr_008_60ce

    ld e, b
    db $fc
    add hl, sp
    ld h, d
    ld [$2540], sp
    inc [hl]
    and $02
    jr z, jr_008_6123

    ld e, h

jr_008_6123:
    ld a, [bc]
    dec l
    ld e, h
    ld a, [bc]
    xor b
    ld c, e
    jr z, jr_008_60e3

    ld e, b
    ld a, [bc]
    xor b
    ld c, e
    ld a, [bc]
    dec l
    ld e, h
    jr z, jr_008_6135

    ld e, h

jr_008_6135:
    rst $20
    nop
    ld bc, $aa5c
    cp b
    ld e, b
    db $fc
    ld b, l
    ld h, c
    rrca
    ld h, b
    dec h
    inc [hl]
    ld [c], a
    push af
    and $02
    ld [de], a
    pop bc
    ld e, b
    dec bc
    ret


jr_008_614c:
    ld e, b
    ld [de], a
    pop de
    ld e, b
    dec bc
    ret


    ld e, b
    rst $20
    and $02
    ld [$58d1], sp
    ld [$5b81], sp
    ld [$5b89], sp
    ld [$5ba1], sp
    ld [$5b99], sp
    ld [$5901], sp
    rst $20
    jr nz, jr_008_614c

    ld e, b
    and $02
    ld [de], a
    pop af
    ld e, b
    dec bc
    ld sp, hl
    ld e, b
    ld [de], a
    ld bc, $0b59
    ld sp, hl
    ld e, b
    rst $20
    and $02
    ld a, [bc]
    pop af
    ld e, e
    ld [$5bf9], sp
    ld [$5be9], sp
    ld a, [bc]
    pop hl
    ld e, e
    rst $20
    and $03
    ld b, $e9
    ld e, b
    ld a, [bc]
    xor c
    ld e, e
    ld b, $e9
    ld e, b
    ld a, [bc]
    xor l
    ld e, e
    rst $20
    db $10
    ret


    ld e, e
    ld b, b
    reti


    ld e, b
    ld b, b
    ld l, c
    ld e, e
    jr nz, @-$35

    ld e, e
    ld b, b
    ld bc, $0a59
    jp hl


    ld e, d
    ld a, [bc]
    pop af
    ld e, d
    ld a, [bc]
    add c
    ld e, d
    ld a, [bc]
    add hl, de
    ld e, c
    ld a, [bc]
    ld sp, $e259
    ld sp, hl
    ret z

    cp b
    ld e, b
    ld e, $b8
    ld e, b
    db $fc
    ret


    ld h, c
    ld [$2540], sp
    inc [hl]
    pop hl
    cp h
    ld h, c
    ei
    rrca
    db $eb
    ld h, c
    ldh a, [$61]
    push af
    ld h, c
    ld_long a, $ff61
    ld h, c
    inc b
    ld h, d
    add hl, bc
    ld h, d
    ld c, $62
    inc de
    ld h, d
    jr jr_008_6241

    dec e
    ld h, d
    ld [hl+], a
    ld h, d
    daa
    ld h, d
    inc l
    ld h, d
    ld sp, $3662
    ld h, d
    pop af
    inc d
    ld a, [bc]
    ld [c], a
    ld c, d
    pop af
    jr z, jr_008_6207

    ld [c], a
    ld b, l
    pop af
    inc a
    ld a, [bc]
    ld [c], a
    ld b, b
    pop af
    ld d, b
    inc d
    ld [c], a
    dec sp
    pop af
    ld h, h
    ld a, [bc]
    ld [c], a

jr_008_6203:
    ld [hl], $f1
    ld a, b
    inc d

jr_008_6207:
    ld [c], a
    ld sp, $3cf1
    inc d
    ld [c], a

jr_008_620d:
    inc l
    pop af
    inc d
    ld e, $e2
    daa
    pop af

jr_008_6214:
    jr z, jr_008_623e

    ld [c], a
    ld [hl+], a
    pop af
    inc a
    ld e, $e2
    dec e
    pop af
    ld d, b
    jr z, jr_008_6203

    jr jr_008_6214

    ld h, h
    ld e, $e2
    inc de
    pop af
    ld a, b
    jr z, jr_008_620d

    ld c, $f1
    ld a, b
    ld e, $e2
    add hl, bc
    pop af
    ld [hl-], a
    inc hl
    ld [c], a
    inc b
    pop af
    ld b, [hl]
    inc hl
    db $fc
    ld h, l
    ld h, d
    ccf
    ld c, b

jr_008_623e:
    ld hl, $fc34

jr_008_6241:
    ld h, l
    ld h, d
    ld d, b
    ld c, b
    ld hl, $0334
    dec h
    ld e, h
    inc bc
    dec l
    ld e, h
    db $fc
    ld h, l
    ld h, d
    dec [hl]
    ld c, b
    ld hl, $fc34
    ld h, l
    ld h, d
    ld b, [hl]
    ld c, b
    ld hl, $0334
    dec a
    ld e, h

jr_008_625e:
    inc bc
    ld b, l
    ld e, h
    inc bc
    dec h
    ld e, h
    ldh [rP1], a
    xor b
    ld c, e
    sub [hl]
    or b
    ld d, d
    ld [$52b4], sp
    ld [$52b8], sp
    inc d
    cp h
    ld d, d
    ld [$52b8], sp
    ld [$52b4], sp
    ret z

    or b
    ld d, d
    ld [$52b4], sp
    ld [$52b8], sp
    inc d
    cp h
    ld d, d
    ld [$52b8], sp
    ld [$52b4], sp
    pop hl
    ld l, b
    ld h, d
    ld [$52c0], sp
    or h
    cp b
    ld e, b
    ld [$52c0], sp
    ld a, [bc]
    cp b
    ld e, b
    ld [$52c0], sp
    ld a, b
    cp b
    ld e, b
    pop hl
    adc a
    ld h, d
    jr nz, jr_008_625e

    ld e, b
    jr nz, @-$25

    ld e, b
    jr jr_008_6315

    ld e, e
    ld [$5bc9], sp
    and $02
    ld [$58c1], sp
    ld [$58c9], sp
    ld [$58d1], sp
    ld [$58c9], sp
    rst $20
    jr nz, @-$46

    ld e, b
    and $05

jr_008_62c4:
    ld [$5be1], sp
    ld [$5be9], sp
    ld [$5bf9], sp
    ld [$5bf1], sp
    rst $20

jr_008_62d1:
    jr nz, jr_008_62c4

    ld e, e
    ldh [$e6], a
    inc b
    ld [$4bb4], sp
    ld [$4bb8], sp
    rst $20
    and $1e
    inc b
    xor h
    ld c, e
    inc b
    or b
    ld c, e
    rst $20
    inc b
    xor h
    ld c, e
    ldh [$b8], a
    ld e, b
    db $ec
    ld [hl], b
    ldh [$08], a
    cp b
    ld c, e
    and $64
    ld [$4bb4], sp
    ld [$4bb8], sp
    rst $20
    ldh [$e3], a
    dec l
    ld h, e
    push hl
    ldh a, [$62]
    ld hl, $e361
    dec l
    ld h, e
    push hl
    ldh a, [$62]
    daa
    ld h, c
    db $e3
    dec l
    ld h, e
    push hl
    di
    ld h, d
    ld a, [hl+]
    ld h, c

jr_008_6315:
    db $e3
    dec l
    ld h, e
    push hl
    ldh a, [$62]
    dec l
    ld h, c
    db $e3
    dec l
    ld h, e
    push hl
    ldh a, [$62]
    inc sp

jr_008_6324:
    ld h, c
    db $e3
    dec l
    ld h, e
    push hl
    di
    ld h, d
    ld [hl], $61
    ld l, b
    cp b
    ld e, b
    db $ec
    ld e, [hl]
    db $e4

jr_008_6333:
    nop
    ld hl, $085c
    ld l, h
    ld c, l
    ld [$4d78], sp
    ldh [$30], a
    jp hl


    ld e, b
    db $10
    add h
    ld c, l
    db $ec
    rrca
    db $10
    adc h
    ld c, l
    jr nc, jr_008_6333

    ld e, b
    jr nz, jr_008_62d1

    ld c, l
    db $10
    adc h
    ld c, l
    inc [hl]
    jp hl


    ld e, b
    nop
    pop hl
    ld e, e
    ld h, b
    cp b
    ld e, b
    ld h, b
    cp b
    ld e, b
    nop
    ld hl, $305c
    cp h
    ld c, e
    ld [$4bcc], sp
    db $10
    cp h
    ld c, e
    ld [$4bcc], sp
    db $10
    cp h
    ld c, e
    ld a, [bc]
    call c, $204b
    db $f4
    ld c, e
    jr nc, @+$0e

    ld c, h
    db $10
    jr @+$4e

    db $10
    inc h
    ld c, h
    jr nz, @-$7a

    ld c, h
    ld a, [bc]
    jr c, jr_008_63d0

    inc d
    ld d, h
    ld c, h
    inc d
    ld h, b
    ld c, h
    ld [$4c6c], sp
    db $10
    ld h, b
    ld c, h
    jr nz, jr_008_63fe

    ld c, h
    db $10
    ld h, b
    ld c, h
    and b
    ld l, h
    ld c, h
    nop
    ld h, b
    ld c, h
    ld h, b
    cp b
    ld e, b
    jr jr_008_641d

    ld c, h
    jr jr_008_6324

    ld c, h
    pop hl
    sbc a
    ld h, e
    ld l, b
    cp b
    ld e, b
    ld b, $a0
    ld c, h
    ld b, $a8
    ld c, h
    ld b, $a0
    ld c, h
    ld b, $a8
    ld c, h
    ld b, $b0
    ld c, h
    ld b, $b8
    ld c, h
    pop hl
    xor e
    ld h, e
    ld [hl-], a
    cp b
    ld e, b
    ld [hl-], a
    ld l, c
    ld e, e
    ld [$5d29], sp
    ld [$5d31], sp
    ldh [$fb], a
    rrca
    pop af

jr_008_63d0:
    ld h, e
    db $f4
    ld h, e
    rst $30
    ld h, e
    rst $30
    ld h, e
    ld [de], a
    ld h, h
    ld a, [$fd63]
    ld h, e
    nop
    ld h, h
    inc bc
    ld h, h
    ld b, $64
    add hl, bc
    ld h, h
    inc c
    ld h, h
    rrca
    ld h, h
    ld [de], a
    ld h, h
    ld [de], a
    ld h, h
    ld [de], a
    ld h, h
    ld [de], a
    ld h, h
    nop
    ret nz

    ld c, h
    nop
    call nz, $004c
    db $e4
    ld c, h
    nop
    ld bc, $0059

jr_008_63fe:
    pop hl
    ld e, b
    nop
    jp hl


    ld e, d
    nop
    ld [hl], c
    ld e, e
    nop
    jp hl


    ld e, e
    nop
    reti


    ld e, b
    nop
    pop af
    ld e, e
    nop
    xor l
    ld e, e
    pop hl
    or $43
    add b
    cp b
    ld e, b
    and $04
    ld b, $fc
    ld c, h

jr_008_641d:
    ld b, $1c
    ld c, l
    ld b, $3c
    ld c, l
    ld b, $5c
    ld c, l
    rst $20
    nop
    cp b
    ld e, b
    ld [$58c1], sp
    ld [$58c9], sp
    ld [$58d1], sp
    ld [$58c9], sp
    ld [$58c1], sp
    ld [$58c9], sp
    ld e, $d9
    ld e, b
    ldh [$ec], a
    ld a, b
    db $ec
    and b
    db $ec
    ld h, b
    db $ec
    ld d, b
    db $ec
    ld b, b
    pop hl
    pop af
    ld c, b
    sbc h
    cp b
    ld e, b
    db $ec
    and b
    db $ec
    ld h, b
    db $ec
    ld d, b
    nop
    jr nc, jr_008_64a4

    and $04
    inc b
    dec h
    ld e, h
    inc b
    dec l
    ld e, h
    inc b
    dec a
    ld e, h
    inc b
    ld b, l
    ld e, h
    rst $20
    dec b
    dec h
    ld e, h
    dec b
    dec l

jr_008_646d:
    ld e, h
    dec b
    dec a
    ld e, h
    db $fc
    pop af
    ld c, b
    add hl, bc
    ld b, a
    dec h
    inc [hl]
    db $fc
    pop af
    ld c, b
    rst $38
    ld b, [hl]
    dec h
    inc [hl]
    db $fc
    pop af
    ld c, b
    push af
    ld b, [hl]
    dec h
    inc [hl]
    db $fc
    pop af
    ld c, b
    db $eb
    ld b, [hl]
    dec h
    inc [hl]
    ld h, h
    ld bc, $e65c
    inc e
    db $ec
    inc b
    db $fc
    xor b
    ld h, h
    xor h
    ld h, e
    dec h
    inc [hl]
    rst $20
    db $fc
    xor b
    ld h, h
    cp h
    ld [hl], l
    dec h
    inc [hl]
    db $ec

jr_008_64a4:
    ld [$9ce1], sp
    ld h, h

jr_008_64a8:
    pop af
    ei
    inc b
    add hl, de
    dec e
    ld e, h
    ldh [$50], a
    sbc b
    ld c, l
    jp hl


    sub [hl]
    ld e, $17
    db $10
    call z, $104d
    nop
    ld c, [hl]
    nop
    inc [hl]
    ld c, [hl]
    ld d, b
    inc [hl]
    ld c, [hl]
    push hl
    rst $00
    ld h, h
    ld [$ec40], sp
    ld d, b
    push hl
    adc $64
    and b
    ld h, h
    db $ec
    add b
    jr nz, jr_008_653a

    ld c, [hl]
    jr nz, jr_008_646d

    ld c, [hl]
    jr nz, jr_008_64a8

    ld c, [hl]
    jr nz, jr_008_64fb

    ld c, a
    push hl
    pop hl
    ld h, h
    xor h
    ld h, h
    nop
    jr nz, jr_008_6533

    ld d, b
    cp b
    ld e, b
    nop
    sub b
    ld c, a
    db $e3
    ld [de], a
    ld h, l
    push hl
    ld l, $65
    inc e
    ld h, l
    db $e3
    ld [de], a
    ld h, l
    push hl
    ld l, $65
    ld c, c
    ld h, l
    db $e3

jr_008_64fb:
    ld [de], a
    ld h, l
    push hl
    ld l, $65
    ld e, a
    ld h, l
    db $e3
    ld [de], a
    ld h, l
    push hl
    ld l, $65
    dec l
    ld h, l
    db $e3
    ld [de], a
    ld h, l
    push hl
    ld l, $65
    ld a, e
    ld h, l
    and $09
    dec b
    sub c
    ld e, h
    dec b
    sbc l
    ld e, h
    dec b
    xor c
    ld e, h
    dec b
    or l
    ld e, h
    dec b
    pop bc
    ld e, h
    dec b
    call $055c
    reti


    ld e, h
    dec b
    push hl
    ld e, h
    rst $20
    db $e4
    ld [bc], a
    sub c
    ld e, h
    ld [bc], a
    sbc l

jr_008_6533:
    ld e, h
    ld [bc], a

jr_008_6535:
    xor c
    ld e, h
    ld [bc], a
    or l
    ld e, h

jr_008_653a:
    ld [bc], a
    pop bc
    ld e, h
    ld [bc], a
    call $025c
    reti


    ld e, h
    ld [bc], a
    push hl
    ld e, h
    ld [c], a
    rst $20
    jp hl


    or h
    ld e, $04
    db $e3
    cp b
    ld c, b
    inc d
    ret


    ld e, e
    jr z, jr_008_6535

    ld e, b
    and $03
    inc c
    pop bc
    ld e, b
    ld a, [bc]
    ret


    ld e, b
    inc c
    pop de
    ld e, b
    ld a, [bc]
    ret


    ld e, b
    rst $20
    db $e3
    cp b
    ld c, b
    db $e3
    bit 1, b
    db $e3
    cp b
    ld c, b
    nop
    pop hl
    ld e, b
    ret z

    cp h
    ld c, a
    dec d
    cp h
    ld c, a
    nop
    sub h
    ld c, a
    ret z

    cp h
    ld c, a
    dec d
    cp h
    ld c, a
    nop
    and h
    ld c, a
    db $fc
    xor b
    ld h, l
    add $65
    dec h
    inc [hl]
    ld [hl-], a
    cp h
    ld c, a
    db $fc
    xor b
    ld h, l
    db $ec
    ld h, l
    dec h
    inc [hl]
    ld e, d
    cp h
    ld c, a
    db $fc
    xor b
    ld h, l
    dec bc
    ld h, [hl]
    dec h
    inc [hl]
    ld b, b
    cp h
    ld c, a
    push hl
    and l
    ld h, l
    ld b, e
    ld d, [hl]
    adc b
    cp h
    ld c, a
    nop
    cp h
    ld c, a
    nop
    ret nz

    ld c, a
    inc c
    call nz, $0c4f
    call z, $0c4f
    call nc, $0c4f
    call c, $e24f
    di
    inc c
    db $e4
    ld c, a
    inc c
    db $ec
    ld c, a
    inc c
    db $f4
    ld c, a
    inc c
    db $fc
    ld c, a
    ld [c], a
    di
    dec c
    inc b
    ld d, b
    dec c
    inc c
    ld d, b
    dec c
    inc d
    ld d, b
    dec c
    inc e
    ld d, b
    ld [c], a
    di
    dec bc
    inc h
    ld d, b
    dec bc
    inc l
    ld d, b
    dec bc
    inc [hl]
    ld d, b
    dec bc
    inc a
    ld d, b
    ld [c], a
    di
    inc c
    ld b, h
    ld d, b
    inc c
    ld c, h
    ld d, b
    inc c
    ld d, h
    ld d, b
    inc c
    ld e, h
    ld d, b
    ld [c], a
    di
    ld [de], a
    ld h, h
    ld d, b
    ld [de], a
    ld l, b
    ld d, b
    ld [de], a
    ld l, h
    ld d, b
    ld [de], a
    ld [hl], b
    ld d, b
    ld [c], a
    di
    db $10
    ld [hl], h
    ld d, b
    db $10
    ld a, b
    ld d, b
    db $10
    ld a, h
    ld d, b
    db $10
    add b
    ld d, b
    ld [c], a
    di
    nop
    add h
    ld d, b
    nop
    sub h
    ld d, b
    ld b, b
    jr nz, jr_008_6668

    jp hl


    sub [hl]
    ld e, $0a
    nop
    or h
    ld d, b
    ld b, b
    cp b
    ld e, b
    and $07
    ld bc, $50e4
    ld bc, $50fc
    ld bc, $5110
    ld bc, $5128
    ld bc, $513c
    ld bc, $5154
    ld bc, $5168
    rst $20
    ld e, $94
    ld d, c
    jp hl


    sub [hl]
    ld e, $0d

jr_008_6642:
    nop
    sub h
    ld d, c
    ld b, b
    cp b
    ld e, b
    nop
    xor h
    ld d, d
    nop
    cp h
    ld c, a
    dec bc
    cp b
    ld e, b
    inc c
    sbc h
    ld d, d
    dec bc
    cp b
    ld e, b
    dec bc
    cp b
    ld e, b
    inc c
    sbc h
    ld d, d
    ld [c], a
    ldh a, [$2c]
    sbc b
    ld d, c
    jp hl


    sub [hl]
    ld e, $05
    jr nz, @-$4e

jr_008_6668:
    ld d, c
    ld d, b
    cp h
    ld d, c
    jr nz, jr_008_6642

    ld d, c
    and $03
    db $10
    call nc, $0a51
    db $ec
    ld d, c
    rst $20
    ld b, b
    db $ec
    ld d, c
    ld [$5204], sp
    ld [$5234], sp
    jp hl


    sub [hl]
    ld e, $04
    nop
    ld h, h
    ld d, d
    inc d
    cp h
    ld c, a
    db $fc
    sbc [hl]
    ld h, [hl]
    ld [$2540], sp
    inc [hl]
    inc d
    cp h
    ld c, a
    db $fc
    or d
    ld h, [hl]
    ld [$2540], sp
    inc [hl]
    ld [c], a
    db $eb
    cp $07
    cp $66
    ld [bc], a
    ld h, a
    ld b, $67
    ld a, [bc]
    ld h, a
    ld c, $67
    ld [de], a
    ld h, a
    ld d, $67
    ld a, [de]
    ld h, a
    ld [c], a
    inc de
    cp $07
    ld e, $67
    ld [hl+], a
    ld h, a
    ld h, $67
    ld a, [hl+]
    ld h, a
    ld l, $67
    ld [hl-], a
    ld h, a
    ld [hl], $67
    ld a, [hl-]
    ld h, a
    ei
    rlca
    db $db
    ld h, [hl]
    ldh [$66], a
    push hl
    ld h, [hl]
    ld [$d666], a
    ld h, [hl]
    rst $28
    ld h, [hl]
    db $f4
    ld h, [hl]
    ld sp, hl
    ld h, [hl]
    push hl
    ret c

    ld h, l
    ld a, [$e567]
    and $65
    ld a, [$e567]
    xor [hl]
    ld h, l
    ld a, [$e567]
    cp h
    ld h, l
    ld a, [$e567]
    jp z, $fa65

    ld h, a
    push hl
    db $f4
    ld h, l
    cp $67
    push hl
    ld [bc], a
    ld h, [hl]
    cp $67
    push hl
    xor e
    ld h, l
    ld [bc], a
    ld l, b
    pop af
    jp nz, $e400

    pop af
    ret z

    nop
    db $e4
    pop af
    call $e400
    pop af
    jp nc, $e400

    pop af
    rst $10
    nop
    db $e4
    pop af
    call c, $e400

jr_008_6716:
    pop af
    pop hl
    nop
    db $e4
    pop af
    and $00
    db $e4
    pop af
    ld a, [de]
    nop

jr_008_6721:
    db $e4
    pop af
    rra
    nop
    db $e4
    pop af
    inc h
    nop
    db $e4
    pop af
    add hl, hl
    nop
    db $e4

jr_008_672e:
    pop af
    ld l, $00
    db $e4
    pop af
    inc sp
    nop
    db $e4
    pop af
    jr c, jr_008_6739

jr_008_6739:
    db $e4
    pop af
    ld a, $00
    db $e4
    rrca
    cp b
    ld e, b
    and $0f
    db $ec
    inc b
    db $f4
    ld h, l
    ret nc

    ld bc, $ccec
    db $fc
    ld e, h
    ld h, a
    ld [$2540], sp
    inc [hl]
    rst $20
    db $ec

jr_008_6754:
    or h
    db $ec
    and b
    db $f4
    ld h, a
    ret nc

    ld bc, $e6e0
    jr nz, jr_008_6754

    ld e, e
    ret nc

    ld [bc], a
    cp b
    ld e, b
    rst $20
    ldh [rP1], a
    add h
    ld e, b
    push hl
    ld h, [hl]
    ld h, a
    ld a, [de]
    ld l, b
    push hl
    ld h, [hl]
    ld h, a
    add hl, hl
    ld l, b
    xor $00
    ld b, d
    add c
    ld h, a
    jr z, jr_008_6716

    ld e, b
    jr z, jr_008_6721

    ld e, b
    pop hl
    ld a, b
    ld h, a
    jp hl


    sub [hl]
    ld e, $1b
    ld [$d3cf], a
    ld bc, $67cd
    push hl
    sub b
    ld h, a
    sbc [hl]
    ld l, b
    jr z, jr_008_672e

    ld e, b
    jr z, jr_008_6739

    ld e, b
    inc l
    sbc h
    ld e, b
    inc b
    and h
    ld e, b
    jp hl


    sub [hl]
    ld e, $0f
    rlca
    xor l
    ld e, e
    rrca
    sbc h
    ld e, b
    inc b
    and h

jr_008_67a8:
    ld e, b
    jp hl


    sub [hl]
    ld e, $0f
    rlca
    xor l
    ld e, e
    ld a, [bc]

jr_008_67b1:
    and h
    ld e, b
    jp hl


    sub [hl]
    ld e, $08
    inc a
    or b
    ld e, b
    ld [$58b9], sp
    and $04
    rlca
    pop bc
    ld e, b
    dec b
    ret


    ld e, b
    rlca
    pop de
    ld e, b
    dec b
    ret


    ld e, b
    rst $20
    ldh [$e9], a
    sub [hl]
    ld e, $13
    push hl
    sub $67
    ldh a, [rBCPS]
    and $02
    inc hl
    sbc h
    ld e, b
    inc hl
    and h
    ld e, b
    rst $20
    ld a, [bc]
    sbc h
    ld e, b
    jp hl


    sub [hl]
    ld e, $06
    inc b
    pop hl
    ld e, e
    db $fc
    inc sp
    ld h, e
    jp $2547


    inc [hl]
    ld [c], a
    push af
    xor $00
    ld b, d
    rst $38
    ld h, a
    jr z, jr_008_67b1

    ld e, b
    jr z, jr_008_67a8

    ld e, b
    ld [c], a
    ld sp, hl
    ld [$d3cf], a
    nop
    ld b, $68
    ldh [$e6], a
    ld [bc], a
    inc d
    cp b
    ld e, b
    inc d
    xor h
    ld e, b
    rst $20
    ldh [$0a], a
    ld a, h
    ld e, b
    ld [hl-], a
    add h
    ld e, b
    ld a, b
    sub h
    ld e, b
    dec b
    add h
    ld e, b
    dec b
    adc h
    ld e, b
    db $ec
    sub [hl]
    db $f4
    ret nc

    db $d3
    ld bc, $95f9
    rst $38
    nop
    add b
    ldh [$0a], a
    ld a, h
    ld e, b
    ld a, [bc]
    add h
    ld e, b
    nop
    ld a, h
    ld e, b
    ld [bc], a
    add h
    ld e, b
    ld a, [de]
    adc h
    ld e, b
    db $f4
    ret nc

    db $d3
    ld bc, $95f9
    rst $38
    ld a, a
    nop
    nop
    adc h
    ld e, b
    ld b, $b9
    ld h, a
    ld b, $d1
    ld h, a
    ld b, $e9
    ld h, a
    ld b, $01
    ld l, b
    ld [c], a
    di
    ld [bc], a
    cp c
    ld h, a
    ld [bc], a
    pop de
    ld h, a
    ld [bc], a
    jp hl


    ld h, a
    ld [bc], a
    ld bc, $e168
    ld d, h
    ld l, b
    db $10
    cp c
    ld h, a
    db $10
    pop de
    ld h, a
    db $10
    jp hl


    ld h, a
    db $10
    ld bc, $e268
    di

jr_008_6871:
    jp hl


    sub [hl]
    ld e, $0a
    db $e3
    add e
    ld l, b
    db $fc
    and e
    ld l, b
    sbc d
    ld l, d
    ld hl, $e334
    add e
    ld l, b
    ldh [rSC], a
    add hl, sp
    ld e, l
    ld [bc], a
    ld d, c
    ld e, l
    ld [bc], a
    ld l, c
    ld e, l
    ld [bc], a
    add c
    ld e, l
    ld [bc], a
    sbc c
    ld e, l
    ld [bc], a
    or c
    ld e, l
    ld [bc], a
    ret


    ld e, l
    ld [bc], a
    pop hl
    ld e, l
    db $e4
    di
    ldh a, [$50]
    ld d, b
    pop hl
    ld e, b
    ld c, c
    db $f4
    cp a
    db $d3
    add c
    nop
    adc c
    ld l, b
    ld c, b
    ld a, c
    ld l, b
    and $02
    ld bc, $67b9
    ld bc, $6879
    rst $20
    jr z, jr_008_6871

    ld h, a
    ld [$67d1], sp
    ld [$67e9], sp
    ld [$6801], sp
    and $03
    inc bc
    cp c
    ld h, a
    inc bc
    pop de
    ld h, a
    inc bc
    jp hl


    ld h, a
    inc bc
    ld bc, $e768
    and $06
    ld bc, $67b9
    ld bc, $67d1
    ld bc, $67e9
    ld bc, $6801
    rst $20
    jp hl


    sub [hl]
    ld e, $20
    and $06
    ld [bc], a
    ld a, c
    ld l, b
    ld bc, $6469
    ld bc, $6429
    rst $20
    ld [$6469], sp
    ld [$6429], sp
    nop
    ld l, c
    ld h, h
    add sp, $5c
    ld c, c
    add sp, -$4e
    jr nc, jr_008_6903

    ld l, c
    ld d, $69

jr_008_6903:
    db $eb
    cp l
    db $d3
    add hl, hl
    ld l, c
    add hl, hl
    ld l, c
    ld b, c
    ld l, c
    ld b, c
    ld l, c
    ld b, c
    ld l, c
    ld b, c
    ld l, c
    ld b, c
    ld l, c
    add hl, hl
    ld l, c
    db $eb
    cp l
    db $d3
    ld sp, $3169
    ld l, c
    add hl, sp
    ld l, c
    add hl, sp
    ld l, c
    add hl, sp
    ld l, c
    add hl, sp
    ld l, c
    add hl, sp
    ld l, c
    ld sp, $1469
    add hl, hl
    ld h, l
    inc d
    ld l, c
    ld h, l
    ld [c], a
    ret


    inc d
    xor c
    ld h, l
    inc d
    jp hl


    ld h, l
    ld [c], a
    pop bc
    inc d
    xor c
    ld h, h
    inc d
    jp hl


    ld h, h
    ld [c], a
    cp c
    inc d
    add hl, hl
    ld h, h
    inc d
    ld l, c
    ld h, h
    ld [c], a
    or c
    add sp, -$4e
    jr nc, jr_008_699d

    ld l, c
    ld e, b
    ld l, c
    ld [bc], a
    add hl, hl
    ld h, h
    ld [bc], a
    ld l, c
    ld h, h
    ld [c], a
    ld a, [c]
    ld [bc], a
    xor c
    ld h, h
    ld [bc], a
    jp hl


    ld h, h
    ld [c], a
    ld [$b2e8], a
    jr nc, jr_008_69cb

    ld l, c
    ld l, a
    ld l, c
    ld [$6429], sp
    ld [$6469], sp
    ld [c], a
    ld a, [c]
    ld [$64a9], sp
    ld [$64e9], sp
    ld [c], a
    ld [$2908], a
    ld h, [hl]
    ld [$6669], sp
    ld [c], a
    ld sp, hl
    ld [$66a9], sp
    ld [$66e9], sp
    ld [c], a
    ld sp, hl
    ld [$6529], sp
    ld [$6569], sp
    ld [c], a
    ld sp, hl
    ld [$65a9], sp
    ld [$65e9], sp
    ld [c], a
    ld sp, hl
    and $02
    ld [bc], a
    add hl, hl
    ld h, h
    ld [bc], a

jr_008_699d:
    ld l, c
    ld h, l
    ld [bc], a
    xor c
    ld h, l
    ld [bc], a
    jp hl


    ld h, h
    rst $20
    add sp, -$69
    ld c, b
    ldh [$e9], a
    or h
    ld e, $ff
    db $fc
    ld h, a
    ld c, c
    dec l
    ld b, e
    ld hl, $e334
    dec b
    ld c, e
    jp hl


    ld [hl], a
    ld c, e
    rlca
    ld sp, hl
    adc a
    rst $38
    ld a, a
    inc hl
    ld e, $b8
    ld e, b
    db $f4
    cp a
    db $d3
    add c
    ldh [$fb], a
    inc bc

jr_008_69cb:
    db $d3
    ld l, c
    ld sp, hl
    ld l, c
    rst $18
    ld l, c
    ld sp, hl
    ld l, c
    and $01
    db $10
    ld [hl], l
    ld e, [hl]
    db $10
    ld a, l
    ld e, [hl]
    rst $20
    pop hl
    add sp, $69
    and $03
    db $10
    ld [hl], l
    ld e, [hl]
    db $10
    ld a, l
    ld e, [hl]
    rst $20
    push hl
    db $ed
    ld l, c
    ld [$e640], sp
    ld [$8d03], sp
    ld e, [hl]
    inc bc
    ld [hl], l
    ld e, [hl]
    rst $20
    db $e3
    ld l, $60
    push hl
    pop hl
    ld b, l
    call nc, $fb42
    inc bc
    ld [$2e6a], sp
    ld l, d
    inc d
    ld l, d
    ld l, $6a
    and $01
    db $10
    sbc l
    ld e, [hl]
    db $10
    and l
    ld e, [hl]
    rst $20
    pop hl
    dec e
    ld l, d
    and $03
    db $10
    sbc l
    ld e, [hl]
    db $10
    and l
    ld e, [hl]
    rst $20
    push hl
    ld [hl+], a
    ld l, d
    ld [$e640], sp
    ld [$b503], sp
    ld e, [hl]
    inc bc
    sbc l
    ld e, [hl]
    rst $20
    db $e3
    adc a
    ld h, b
    push hl
    ld [$d745], a
    ld b, d
    nop
    cp b
    ld e, b
    db $fc
    ld a, [$c06a]
    ld l, a
    adc h
    inc [hl]
    inc b
    cp b
    ld e, b
    ld a, [bc]
    and b
    ld b, h
    inc b
    cp b
    ld e, b
    dec b
    and b
    ld b, h
    inc c
    xor b
    ld b, h
    and $0b
    ld [$44c0], sp
    ld [$44b8], sp
    rst $20
    ld a, [bc]
    cp b
    ld b, h
    dec b
    ret c

    ld b, h
    add sp, -$46
    ld c, d
    dec b
    ret c

    ld b, h
    add sp, -$4d
    ld c, d
    nop
    cp b
    ld e, b
    db $fc
    ld a, [$d66a]
    ld l, a
    adc h
    inc [hl]
    inc b
    cp b
    ld e, b
    ld a, [bc]
    and b
    ld b, h
    inc b
    cp b
    ld e, b
    dec b
    and b
    ld b, h
    inc c
    xor b
    ld b, h
    and $0b
    ld [$44d0], sp
    ld [$44c8], sp
    rst $20
    ld a, [bc]
    ret z

    ld b, h
    dec b
    ret c

    ld b, h
    add sp, -$46
    ld c, d
    dec b
    ret c

    ld b, h
    add sp, -$4d
    ld c, d
    nop
    cp b
    ld e, b
    db $fc
    ld a, [$d66a]
    ld l, a
    adc h
    inc [hl]
    inc b
    cp b
    ld e, b
    ld a, [bc]
    and b
    ld b, h
    inc b
    cp b
    ld e, b
    dec b
    and b
    ld b, h
    inc c
    ldh [rLY], a
    and $0b
    ld [$4500], sp
    ld [$4508], sp
    rst $20
    ld a, [bc]
    ld [$0545], sp
    db $10
    ld b, l
    add sp, -$46
    ld c, d
    dec b
    db $10
    ld b, l
    add sp, -$4d
    ld c, d
    nop
    cp b
    ld e, b
    db $fc
    ld a, [$c06a]
    ld l, a
    adc h
    inc [hl]
    inc b
    cp b
    ld e, b
    ld a, [bc]
    and b
    ld b, h
    inc b
    cp b
    ld e, b
    dec b
    and b
    ld b, h
    inc c
    ldh [rLY], a
    and $0b
    ld [$44f0], sp
    ld [$44f8], sp
    rst $20
    ld a, [bc]
    ld hl, sp+$44
    dec b
    db $10
    ld b, l
    add sp, -$46
    ld c, d
    dec b
    db $10
    ld b, l
    add sp, -$4d
    ld c, d
    nop
    cp b
    ld e, b
    jp hl


    sub [hl]
    ld e, $1e
    nop
    sub h
    ld b, h
    db $fc
    ld d, e
    ld l, e
    rst $08
    ld [hl], b
    adc h
    inc [hl]
    pop hl
    ld h, $6b
    db $fc
    ld d, e
    ld l, e
    rst $08
    ld [hl], b
    adc h
    inc [hl]
    pop hl
    ld h, $6b
    db $fc
    ld d, e
    ld l, e
    ret c

    ld [hl], b
    adc h
    inc [hl]
    pop hl
    ld h, $6b
    db $fc
    ld d, e
    ld l, e
    pop hl
    ld [hl], b
    adc h
    inc [hl]
    and $05
    ld [$44b8], sp
    ld [$44c0], sp
    rst $20
    inc b
    cp b
    ld b, h
    inc b
    ret nz

    ld b, h
    inc d
    or b
    ld b, h
    and $05
    ld [$44b8], sp
    ld [$44c0], sp
    rst $20
    ld [$44b8], sp
    dec b
    ret c

    ld b, h
    add sp, -$46
    ld c, d
    dec b
    ret c

    ld b, h
    add sp, -$4d
    ld c, d
    nop
    cp b
    ld e, b
    pop af
    ldh a, [rP1]
    ld d, b
    sub h
    ld b, h
    jp hl


    sub [hl]
    ld e, $04
    nop
    sub h
    ld b, h
    ld [$d093], a
    nop
    ld a, d
    ld l, e
    db $e3
    ld c, c
    ld c, e
    db $f4
    adc $d3
    nop
    db $f4
    rst $08
    db $d3
    nop
    db $f4
    ret nc

    db $d3
    nop
    db $f4
    pop de
    db $d3
    nop
    ldh [$ea], a
    dec sp
    ret nc

    inc b
    add [hl]
    ld l, e
    ld [wCurStageScreen], a

jr_008_6b83:
    ld [$6ba2], sp
    jp hl


    or h
    ld e, $ff
    jp hl


    sub [hl]
    ld e, $1d
    db $e3
    dec b
    ld c, e
    jp hl


    ld [hl], a
    ld c, e
    inc bc
    ld sp, hl
    adc a
    rst $38
    ld a, a
    inc hl
    db $ec
    ld a, b
    ld sp, hl
    sub h
    rst $38
    nop
    inc b
    ldh [$e3], a
    ld c, c
    ld c, e
    jp hl


    ld [hl], a
    ld c, e
    ld [bc], a
    ld sp, hl
    adc a
    rst $38
    ld a, a
    inc hl
    db $ec
    ld a, b
    ld sp, hl
    sub h
    rst $38
    nop
    inc b
    ldh [$ec], a
    ld bc, $96e9
    ld e, $ff
    add sp, -$4e
    jr nc, jr_008_6b83

jr_008_6bc0:
    ld l, e
    bit 5, e
    db $10
    ret z

    ld b, a
    jr nz, jr_008_6bc0

    ld b, a
    ld [c], a
    ld sp, hl
    db $10
    ldh [rBGP], a
    jr nz, jr_008_6be0

    ld c, b
    ld [c], a
    ld sp, hl
    inc b
    jr z, jr_008_6c1e

    inc c
    ld h, b
    ld c, b
    ld a, [bc]
    jr z, @+$4a

    ld [c], a

jr_008_6bdd:
    or $04
    ld b, h

jr_008_6be0:
    ld c, b
    inc c
    ld a, h
    ld c, b
    ld a, [bc]
    ld b, h
    ld c, b
    ld [c], a
    or $04
    and b
    ld c, c
    inc c
    add sp, $49
    ld a, [bc]
    and b
    ld c, c
    ld [c], a
    or $04
    call nz, $0c49
    inc c
    ld c, d
    ld a, [bc]
    call nz, $e249
    or $06
    and b
    ld c, c
    nop
    and b
    ld c, c
    ld b, $c4
    ld c, c
    nop
    inc c
    ld c, d
    jp hl


    sub [hl]
    ld e, $17
    push hl
    inc d
    ld l, h
    ld e, a
    ld [hl], c
    nop
    ret z

    ld c, b
    jp hl


    sub [hl]
    ld e, $17
    push hl
    jr nz, jr_008_6c8a

jr_008_6c1e:
    ld a, l
    ld [hl], c
    nop
    ldh [rOBP0], a
    jr nz, jr_008_6bdd

    ld c, b
    jp hl


    sub [hl]
    ld e, $06
    ld d, b
    sbc b
    ld c, b
    db $fc
    ld l, a
    ld l, a
    ret z

    ld [hl], e
    ld c, b
    ld [hl], $fc
    ld l, a
    ld l, a
    push de
    ld [hl], e
    ld c, b
    ld [hl], $00
    cp b
    ld c, b
    jp hl


    sub [hl]
    ld e, $22
    push hl
    ld b, a
    ld l, h
    sub d
    ld [hl], d
    rrca
    ld l, b
    ld c, c
    db $f4
    jp nc, $00d3

    ld bc, $4968
    add sp, $19
    ld c, e
    ld [$d3d2], a
    rst $38
    ld h, l
    ld l, h
    ld [$d3d2], a
    ld h, h
    sbc l
    ld l, h
    push af
    jp nc, $e2d3

    ld [$ade8], a
    ld c, e
    db $f4
    jp nc, $00d3

    ld bc, $4968
    ld [$d3d2], a
    rst $38
    add b
    ld l, h
    ld [$d3d2], a
    ld h, h
    sbc l
    ld l, h
    push af
    jp nc, $e2d3

    db $ed
    jp hl


    sub [hl]
    ld e, $23
    jp hl


    sub [hl]
    ld e, $02
    push hl
    adc l

jr_008_6c8a:
    ld l, h

jr_008_6c8b:
    ld [$0440], sp
    ld hl, sp+$48
    jr nc, @+$2a

    ld c, c
    add sp, $5a
    ld c, e
    jp hl


    sub [hl]
    ld e, $0f
    jr c, @+$6a

    ld c, c
    db $ec
    inc d
    add sp, $21
    ld sp, $3604
    push hl
    or [hl]
    ld l, e
    ret nz

    ld [hl], d
    jp hl


    sub [hl]
    ld e, $22
    push hl
    or d
    ld l, h
    xor c
    ld [hl], d
    rrca
    add h
    ld c, c
    db $f4
    jp nc, $00d3

    ld bc, $4984
    add sp, $27
    ld c, e
    ld [$d3d2], a
    rst $38
    ret nc

    ld l, h
    ld [$d3d2], a
    ld h, h
    ld [$f56d], sp
    jp nc, $e2d3

    ld [$ade8], a
    ld c, e
    db $f4
    jp nc, $00d3

    ld bc, $4984
    ld [$d3d2], a
    rst $38
    db $eb
    ld l, h
    ld [$d3d2], a
    ld h, h
    ld [$f56d], sp
    jp nc, $e2d3

    db $ed
    jp hl


    sub [hl]
    ld e, $23
    jp hl


    sub [hl]
    ld e, $02
    push hl
    ld hl, sp+$6c
    ld [$0440], sp
    db $10
    ld c, c
    jr nc, @+$4a

    ld c, c
    add sp, $5f
    ld c, e
    jp hl


    sub [hl]
    ld e, $0f
    jr c, jr_008_6c8b

    ld c, c
    db $ec
    inc d
    add sp, $21
    ld sp, $3604
    push hl
    or [hl]
    ld l, e
    ret nz

    ld [hl], d
    db $f4
    call $00d3
    db $eb
    cp l
    db $d3
    inc l
    ld l, l
    ld d, l
    ld l, l
    dec h
    ld l, l
    or d
    ld l, l
    adc c
    ld l, l
    add sp, -$4e
    jr nc, jr_008_6d7e

    ld l, l
    or d
    ld l, l
    push hl
    ld sp, $326d
    ld [hl], e
    db $fc
    ld c, [hl]
    ld l, [hl]
    ld [hl-], a
    ld [hl], e
    ld [hl], $36
    db $10
    jr nc, jr_008_6d85

    ld a, [bc]
    jr z, jr_008_6d86

    db $fc
    ld l, a
    ld l, a
    xor [hl]
    ld [hl], e
    ld c, b
    ld [hl], $18
    ld [hl], b
    ld c, d
    ld a, [bc]

jr_008_6d49:
    jr z, jr_008_6d93

    db $10
    jr nc, jr_008_6d98

    push hl
    ld d, e
    ld l, l
    add hl, de
    ld [hl], e
    db $ec
    ld a, [bc]
    add sp, $21
    ld sp, $360d
    push hl
    ld e, a
    ld l, l
    rlca
    ld [hl], d
    jr nz, jr_008_6d49

    ld c, c
    add sp, $21
    ld sp, $3604
    db $fc
    ld c, [hl]
    ld l, [hl]
    ld a, [bc]
    ld [hl], d
    ld [hl], $36
    db $10
    jr nc, jr_008_6dbb

    jp hl


    sub [hl]
    ld e, $1c
    ld a, [bc]
    jr z, @+$4a

    jr jr_008_6dea

    ld c, d
    ld a, [bc]
    jr z, jr_008_6dc6

jr_008_6d7e:
    db $10
    jr nc, jr_008_6dcb

    db $10
    add sp, $49
    push hl

jr_008_6d85:
    add c

jr_008_6d86:
    ld l, l
    add hl, de
    ld [hl], e
    push hl
    adc [hl]
    ld l, l
    ld [hl-], a
    ld [hl], e
    db $fc
    pop de
    ld l, [hl]
    ld [hl-], a
    ld [hl], e

jr_008_6d93:
    ld [hl], $36
    db $10
    ld d, b
    ld c, d

jr_008_6d98:
    ld a, [bc]
    ld b, h
    ld c, b
    db $fc
    ld l, a
    ld l, a
    cp e
    ld [hl], e
    ld c, b
    ld [hl], $18
    adc h
    ld c, d
    ld a, [bc]
    ld b, h
    ld c, b
    db $10
    ld d, b
    ld c, d
    push hl
    or b
    ld l, l
    add hl, de
    ld [hl], e
    db $ec
    ld h, h
    push hl
    or a
    ld l, l
    rlca
    ld [hl], d
    jr nz, jr_008_6dc5

    ld c, d
    db $fc

jr_008_6dbb:
    pop de
    ld l, [hl]
    ld a, [bc]
    ld [hl], d
    ld [hl], $36
    db $10
    ld d, b

jr_008_6dc3:
    ld c, d
    jp hl


jr_008_6dc5:
    sub [hl]

jr_008_6dc6:
    ld e, $1c
    ld a, [bc]
    ld b, h
    ld c, b

jr_008_6dcb:
    jr @-$72

    ld c, d
    ld a, [bc]
    ld b, h
    ld c, b
    db $10
    ld d, b
    ld c, d
    db $10
    inc c
    ld c, d
    push hl
    call nc, $196d
    ld [hl], e
    add sp, -$4e
    jr nc, jr_008_6dc3

    ld l, l
    add sp, $6d
    ld e, $f8
    ld c, d
    ld [c], a
    inc b
    ld e, $14

jr_008_6dea:
    ld c, e
    add sp, -$69
    ld c, b
    ldh [$f9], a
    sub h
    rst $38
    rst $38
    jr nz, @-$0a

    add b
    pop de
    rst $38
    jp hl


    or h
    ld e, $ff
    db $fc
    ccf
    ld l, [hl]
    ld [$2140], sp
    inc [hl]
    db $fc
    ld h, a
    ld c, c
    ld [$2140], sp
    inc [hl]
    db $f4
    cp a
    db $d3
    add c
    add sp, -$4e
    jr nc, jr_008_6e27

    ld l, [hl]
    ld a, [hl+]
    ld l, [hl]
    jp hl


    sub [hl]
    ld e, $00
    push hl
    ld e, $6e
    adc e
    ld [hl], e
    inc b
    ld hl, sp+$4a
    db $fc
    and $4a
    jp $2147


jr_008_6e27:
    inc [hl]
    ld [c], a
    push af
    jp hl


    sub [hl]
    ld e, $00
    push hl
    inc sp
    ld l, [hl]
    add d
    ld [hl], e
    inc b
    inc d
    ld c, e
    db $fc
    and $4a
    jp $2147


    inc [hl]
    ld [c], a
    push af
    ld bc, $58b8
    db $ec
    or h
    ld sp, hl
    sub h
    rst $38
    rst $18
    inc b
    db $ec
    nop
    nop
    dec h
    ld e, h
    db $fc
    ld d, h
    ld l, a
    ld [c], a
    ld [hl], e
    jr z, jr_008_6e8b

    db $10
    xor b
    ld c, d
    db $fc
    ld e, b
    ld l, a
    add sp, $73
    jr z, jr_008_6e95

    ld [bc], a
    or b
    ld c, d
    db $fc
    ld e, b
    ld l, a
    xor $73
    jr z, jr_008_6e9f

    ld [bc], a
    cp b
    ld c, d
    db $fc
    ld e, b
    ld l, a
    db $f4
    ld [hl], e
    jr z, jr_008_6ea9

    ld [bc], a
    ret nz

    ld c, d
    db $fc
    ld e, b
    ld l, a
    ld a, [$2873]
    ld [hl], $02
    ret z

    ld c, d
    db $fc
    ld e, b
    ld l, a
    nop
    ld [hl], h
    jr z, jr_008_6ebd

    ld [bc], a
    ret nc

    ld c, d
    db $fc

jr_008_6e8b:
    ld e, h
    ld l, a
    ld b, $74
    cpl
    ld [hl], $18
    ret c

    ld c, d
    db $fc

jr_008_6e95:
    ld e, b
    ld l, a
    nop
    ld [hl], h
    jr z, @+$38

    ld [bc], a
    ret nc

    ld c, d
    db $fc

jr_008_6e9f:
    ld e, b
    ld l, a
    ld a, [$2873]
    ld [hl], $02
    ret z

    ld c, d
    db $fc

jr_008_6ea9:
    ld e, b
    ld l, a
    db $f4
    ld [hl], e
    jr z, jr_008_6ee5

    ld [bc], a
    ret nz

    ld c, d
    db $fc
    ld e, b
    ld l, a
    xor $73
    jr z, jr_008_6eef

    ld [bc], a
    cp b
    ld c, d
    db $fc

jr_008_6ebd:
    ld e, b
    ld l, a
    add sp, $73
    jr z, jr_008_6ef9

    ld [bc], a
    or b
    ld c, d
    db $fc
    ld d, h
    ld l, a
    ld [c], a
    ld [hl], e
    jr z, jr_008_6f03

    db $10
    xor b
    ld c, d
    ldh [$fc], a
    ld d, h
    ld l, a
    db $f4
    ld [hl], e
    jr z, jr_008_6f0e

    db $10
    ret nz

    ld c, d
    db $fc
    ld e, b
    ld l, a
    xor $73
    jr z, jr_008_6f18

    ld [bc], a
    cp b
    ld c, d

jr_008_6ee5:
    db $fc
    ld e, b
    ld l, a
    add sp, $73
    jr z, jr_008_6f22

    ld [bc], a
    or b
    ld c, d

jr_008_6eef:
    db $fc
    ld e, b
    ld l, a
    ld [c], a
    ld [hl], e
    jr z, jr_008_6f2c

    ld [bc], a
    xor b
    ld c, d

jr_008_6ef9:
    db $fc
    ld e, b
    ld l, a
    inc c
    ld [hl], h
    jr z, jr_008_6f36

    ld [bc], a
    ldh [rWY], a

jr_008_6f03:
    db $fc
    ld e, b
    ld l, a
    ld [de], a
    ld [hl], h
    jr z, jr_008_6f40

    ld [bc], a
    add sp, $4a
    db $fc

jr_008_6f0e:
    ld e, h
    ld l, a
    jr jr_008_6f86

    cpl
    ld [hl], $18
    ldh a, [rWY]
    db $fc

jr_008_6f18:
    ld e, b
    ld l, a
    ld [de], a
    ld [hl], h
    jr z, @+$38

    ld [bc], a
    add sp, $4a
    db $fc

jr_008_6f22:
    ld e, b
    ld l, a
    inc c
    ld [hl], h
    jr z, jr_008_6f5e

    ld [bc], a
    ldh [rWY], a
    db $fc

jr_008_6f2c:
    ld e, b
    ld l, a
    ld [c], a
    ld [hl], e
    jr z, jr_008_6f68

    ld [bc], a
    xor b
    ld c, d
    db $fc

jr_008_6f36:
    ld e, b
    ld l, a
    add sp, $73
    jr z, @+$38

    ld [bc], a
    or b
    ld c, d
    db $fc

jr_008_6f40:
    ld e, b
    ld l, a
    xor $73
    jr z, jr_008_6f7c

    ld [bc], a
    cp b
    ld c, d
    db $fc
    ld d, h
    ld l, a
    db $f4
    ld [hl], e
    jr z, jr_008_6f86

    db $10
    ret nz

    ld c, d
    ldh [$08], a
    cp b
    ld e, b
    ldh [rSC], a
    cp b
    ld e, b
    ldh [rTMA], a
    cp b

jr_008_6f5e:
    ld e, b
    ldh [rP1], a
    cp b
    ld e, b
    pop af
    nop
    ld a, [$f1e1]

jr_008_6f68:
    ld c, b
    pop af
    nop
    ld b, $e1
    pop af
    ld c, b
    jp hl


    sub [hl]
    ld e, $17
    inc b
    sub c
    ld e, h
    inc b
    sbc l
    ld e, h
    inc b
    xor c
    ld e, h

jr_008_6f7c:
    inc b
    or l
    ld e, h
    inc b
    pop bc
    ld e, h
    inc b
    call $045c

jr_008_6f86:
    reti


    ld e, h
    inc b
    push hl
    ld e, h
    ld [c], a
    rst $20
    add sp, $21
    ld sp, $363f
    and $02
    ld a, [bc]
    ld b, l
    ld e, [hl]
    ld a, [bc]
    ld c, l
    ld e, [hl]
    rst $20
    and $04
    ld b, $45
    ld e, [hl]
    ld b, $4d
    ld e, [hl]
    rst $20
    pop hl
    sub d
    ld l, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
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
    xor $bf
    rst $38
    rst $38
    ld a, a
    rst $18
    rst $38
    rst $38
    rst $38
    cp [hl]
    rst $38
    rst $38
    rst $30
    rst $08
    rst $38
    rst $38
    rlca
    ei
    rst $38
    rst $38
    inc l
    db $ed
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    rst $38
    cp e
    nop
