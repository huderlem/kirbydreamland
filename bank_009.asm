SECTION "ROM Bank $009", ROMX[$4000], BANK[$9]

    nop
    cp b
    ld e, b
    db $ec
    nop
    add sp, $21
    ld sp, $35b7
    xor $b1
    ld b, c
    cp h
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
    cp h
    ld c, e
    push hl
    cp [hl]
    ld b, e
    ld [$f740], sp
    sub c
    rst $38
    ld bc, $4034
    db $fc
    dec de
    ld c, d
    ld [$2140], sp
    inc [hl]
    ldh [$fc], a
    ei
    ld e, e
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
    sub [hl]
    ld c, c
    inc a
    ld bc, $065c
    ld bc, $e65c
    rrca
    ld [$5c01], sp
    db $fc
    dec bc
    ld c, c
    ld l, b
    ld a, h
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
    db $10
    ld c, d
    push hl
    ld a, b
    ld b, b
    ret c

    ld c, c
    inc l
    ld bc, $285c
    ld bc, $fc5c
    cp [hl]
    ld b, e
    ld l, b
    ld a, h
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
    ld l, b
    ld a, h
    dec h
    inc [hl]
    db $fc
    cp [hl]
    ld b, e
    ld l, b
    ld a, h
    dec h
    inc [hl]
    pop hl
    adc b
    ld b, b
    push hl
    xor b
    ld b, b
    rrca
    ld c, d
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
    sub l
    ld c, d
    ld d, b
    ld bc, $e65c
    dec d
    db $fc
    dec bc
    ld c, c
    ld a, a
    ld c, d
    dec h
    inc [hl]
    inc b
    ld bc, $e75c
    inc d
    ld bc, $fc5c
    inc c
    ld c, e
    ld a, a
    ld b, a
    dec h
    inc [hl]
    db $fc
    inc c
    ld c, e
    adc e
    ld b, a
    dec h
    inc [hl]
    db $fc
    inc c
    ld c, e
    sub a
    ld b, a
    dec h
    inc [hl]
    db $fc
    inc c
    ld c, e
    and e
    ld b, a
    dec h
    inc [hl]
    db $fc
    inc c
    ld c, e
    xor a
    ld b, a
    dec h
    inc [hl]
    db $fc
    inc c
    ld c, e
    db $d3
    ld b, a
    dec h
    inc [hl]
    db $fc
    inc c
    ld c, e

jr_009_40f9:
    cp e
    ld b, a
    dec h
    inc [hl]
    db $fc
    inc c
    ld c, e
    rst $00
    ld b, a
    dec h
    inc [hl]
    db $fc
    jr c, jr_009_4148

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
    jr nc, jr_009_4184

    ld e, e
    ld [c], a
    dec d
    jr nc, jr_009_40f9

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

jr_009_4148:
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
    inc c
    ld c, e
    ld a, a
    ld b, a
    dec h
    inc [hl]
    db $fc
    inc c
    ld c, e
    adc e
    ld b, a
    dec h
    inc [hl]
    db $fc
    inc c
    ld c, e
    sub a
    ld b, a
    dec h
    inc [hl]
    db $fc
    inc c
    ld c, e
    and e
    ld b, a
    dec h
    inc [hl]
    db $fc
    inc c
    ld c, e
    xor a
    ld b, a
    dec h
    inc [hl]
    db $fc
    inc c
    ld c, e
    db $d3
    ld b, a
    dec h
    inc [hl]
    db $fc
    inc c
    ld c, e
    cp e
    ld b, a
    dec h

jr_009_4184:
    inc [hl]
    db $fc
    inc c
    ld c, e
    rst $00
    ld b, a
    dec h
    inc [hl]
    ld [$5bf9], sp
    db $fc
    nop
    ld c, e
    cpl
    ld c, b
    dec h
    inc [hl]
    ld [$5be9], sp

jr_009_4199:
    db $fc
    nop
    ld c, e
    cpl
    ld c, b
    dec h
    inc [hl]
    ld [$5be1], sp
    db $fc
    nop
    ld c, e
    cpl
    ld c, b
    dec h
    inc [hl]
    ld [$5bf1], sp
    db $fc
    nop
    ld c, e
    cpl
    ld c, b
    dec h
    inc [hl]
    pop hl
    adc h
    ld b, c
    ld a, [c]
    add sp, $21
    ld sp, $3483
    xor $b1
    ld b, c
    ld d, [hl]
    ld b, a
    ld hl, sp-$6e
    rst $38
    jr nz, jr_009_4199

    ld b, c
    push hl
    call $fe41
    ld c, d
    db $e3
    push hl
    ld c, b
    ld [c], a
    db $fc
    push hl
    rst $10
    ld b, c
    add hl, hl
    ld c, e
    db $e3
    jp nc, $e248

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

jr_009_4203:
    nop
    db $ec
    nop
    ld sp, hl
    sub c
    rst $38
    rst $38
    jr nz, jr_009_4203

    sub l
    rst $38
    add b
    ld [$e540], sp
    ld d, $42
    add c
    ld a, h
    db $fc
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
    ld c, l
    ld [hl], h
    ld l, b
    ld a, h
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
    ld d, e
    ld [hl], h
    ld l, b
    ld a, h
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
    dec bc
    ld c, c
    ld d, a
    ld b, a
    dec h
    inc [hl]
    db $fc
    dec bc
    ld c, c
    ld h, c
    ld b, a
    dec h
    inc [hl]
    db $fc
    dec bc
    ld c, c
    ld l, e
    ld b, a
    dec h
    inc [hl]
    db $fc
    dec bc
    ld c, c
    ld [hl], l
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
    ld c, l
    ld [hl], h
    ld l, b
    ld a, h
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

jr_009_42b1:
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
    jp nc, $e348

    jp nc, $8048

    ld a, c
    ld e, e
    add b
    cp c
    ld e, b
    ld [$5bc9], sp
    add b
    ld l, c
    ld e, e
    jr nc, jr_009_42b1

    ld e, e
    inc b
    cp c
    ld e, b
    ld a, [bc]
    push bc
    ld e, e
    ld h, b

jr_009_42f0:
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
    jp nc, $e348

    jp nc, $0148

    reti


    ld e, b
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
    push hl
    ld c, b
    db $e3
    push hl
    ld c, b
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
    jr nc, jr_009_42f0

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
    push hl
    ld c, b
    db $e3
    push hl
    ld c, b
    ld bc, $5909
    ld sp, hl
    sub h
    rst $38
    rst $38
    ld bc, $01ec
    db $fc
    dec de
    ld c, d
    ld [$2140], sp
    inc [hl]
    db $10
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

jr_009_43d2:
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
    jr nz, jr_009_43d2

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
    jr nz, jr_009_4423

    ld b, h
    ld b, $f1
    ld e, d
    ld b, $e9
    ld e, d
    push hl
    ld d, $44
    or e
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
    or e

jr_009_4423:
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
    db $e3
    ld c, e
    rst $30

jr_009_4432:
    cp [hl]
    db $d3
    inc b
    pop de
    ld c, e
    xor $b1
    ld b, c
    or h
    ld c, e
    ld hl, sp-$6e
    rst $38
    jr nz, jr_009_449c

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
    inc b
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
    db $e3
    ld c, e
    rst $30
    cp [hl]
    db $d3
    inc b
    pop de
    ld c, e
    rst $30
    sub c
    rst $38
    ld bc, $449e
    xor $b1
    ld b, c
    or h
    ld c, e
    ld hl, sp-$6e
    rst $38
    jr nz, jr_009_4432

    ld b, h
    nop
    ld sp, hl
    ld e, h
    nop

jr_009_449c:
    pop af
    ld e, h
    ld bc, $58b8
    di
    ld [c], a
    rst $28
    and $01
    db $fc
    jp c, $bf49

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
    and $01
    db $fc
    jp c, $fb49

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
    and $01
    db $fc
    jp c, $f749

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
    and $01
    db $fc
    jp c, $f349

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
    and $01
    db $fc
    jp c, $ef49

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
    and $01
    db $fc
    jp c, $eb49

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
    and $01
    db $fc
    jp c, $bf49

    ld b, e
    ret


    inc [hl]
    db $ec
    inc b
    rst $20
    and $01
    db $fc
    jp c, $c349

    ld b, e
    ret


    inc [hl]
    db $ec
    inc b
    rst $20
    and $01
    db $fc
    jp c, $c749

    ld b, e
    ret


    inc [hl]
    db $ec
    inc b
    rst $20
    and $01
    db $fc
    jp c, $cb49

    ld b, e
    ret


    inc [hl]
    db $ec
    inc b
    rst $20
    and $01
    db $fc
    jp c, $cf49

    ld b, e
    ret


    inc [hl]
    db $ec
    inc b
    rst $20
    and $01
    db $fc
    jp c, $d349

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
    dec bc
    push af
    ld e, [hl]
    db $fc
    ldh a, [rOBP1]
    ld c, $43
    jp nc, $e534

    add b
    ld b, [hl]
    and h
    ld b, d
    dec bc
    push af
    ld e, [hl]
    pop hl
    ld [hl], c
    ld b, [hl]
    db $fc
    ldh a, [rOBP1]
    dec bc
    ld b, e
    jp nc, $e534

    sub d
    ld b, [hl]
    cp h
    ld b, d
    ld [$5f05], sp
    db $fc
    ldh a, [rOBP1]
    sub l
    ld c, l
    jp nc, $e534

    and c
    ld b, [hl]
    or b
    ld b, d
    ld [$5efd], sp
    db $fc
    ldh a, [rOBP1]
    ld c, $43
    jp nc, $e534

    or b
    ld b, [hl]
    and h
    ld b, d
    ld [$5ef5], sp
    db $fc
    ldh a, [rOBP1]
    ld de, $d243
    inc [hl]
    push hl
    cp a
    ld b, [hl]
    sbc b
    ld b, d
    ld [$5eed], sp
    db $fc
    ldh a, [rOBP1]
    ld [$d243], sp
    inc [hl]
    push hl
    adc $46
    adc h
    ld b, d
    ld [$5ee5], sp
    db $fc
    ldh a, [rOBP1]
    ld de, $d243
    inc [hl]
    push hl
    db $dd
    ld b, [hl]
    sbc b
    ld b, d
    ld [$5eed], sp
    db $fc
    ldh a, [rOBP1]
    ld c, $43
    jp nc, $e534

    db $ec
    ld b, [hl]
    and h
    ld b, d
    ld [$5ef5], sp
    db $fc
    ldh a, [rOBP1]
    sub l
    ld c, l
    jp nc, $e534

    ei
    ld b, [hl]
    or b
    ld b, d
    ld [$5efd], sp
    pop hl
    add [hl]
    ld b, [hl]
    pop af
    nop
    ld [$09e5], sp
    ld b, a
    ld [hl], d
    ld e, [hl]
    ld h, h
    push af
    ld e, [hl]
    ld a, [bc]
    db $fd
    ld e, [hl]
    ld [$5f05], sp
    db $fc
    ldh a, [rOBP1]
    dec bc
    ld b, e
    jp nc, $0534

    dec b
    ld e, a
    dec b
    db $fd
    ld e, [hl]
    db $fc
    ldh a, [rOBP1]
    sub l
    ld c, l
    jp nc, $0534

    db $fd
    ld e, [hl]
    dec b
    push af
    ld e, [hl]
    db $fc
    ldh a, [rOBP1]
    ld c, $43
    jp nc, $0534

    push af
    ld e, [hl]
    dec b
    db $ed
    ld e, [hl]
    db $fc
    ldh a, [rOBP1]
    ld de, $d243
    inc [hl]
    dec b
    db $ed
    ld e, [hl]
    dec b
    push hl
    ld e, [hl]
    db $fc
    ldh a, [rOBP1]
    ld [$d243], sp
    inc [hl]
    ld [$5ee5], sp
    ld a, [bc]
    db $ed
    ld e, [hl]
    pop hl
    inc b
    ld b, a
    di
    add sp, $21
    ld sp, $3425
    add sp, -$05
    ld c, c
    ld [$d3ce], a
    nop
    ld a, b
    ld b, a
    push hl
    ld l, d
    ld b, a
    ld d, h
    ld c, e
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
    ld a, l
    ld b, a
    ld h, b
    ld c, e
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
    sub b
    ld b, a
    ld [$fc40], sp
    or e
    ld b, a
    ld [$2540], sp
    inc [hl]
    db $fc
    cp a
    ld b, a
    ld [$2540], sp
    inc [hl]
    db $e3
    jp nc, $3748

    pop hl
    ld e, b
    jp hl


    or h
    ld e, $0a
    db $eb
    dec sp
    ret nc

    bit 0, a
    ld [de], a
    ld c, b
    ld h, l
    ld c, b
    sbc l
    ld c, b
    pop af
    ld [c], a
    nop
    db $e3
    ld hl, sp+$48
    scf
    pop hl
    ld e, b
    pop hl
    xor b
    ld b, a
    pop af
    ld e, $00
    db $e3
    ld hl, sp+$48
    scf
    pop hl
    ld e, b
    pop hl

jr_009_47c9:
    xor b
    ld b, a
    push hl
    ret nc

    ld b, a
    ld [hl], c
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
    jp nc, $e348

    jp nc, $1f48

    pop hl
    ld e, b
    jr jr_009_47c9

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
    push hl
    ld c, b
    rla
    xor l
    ld e, e
    inc a
    ld de, $f459
    db $dd
    db $d3
    ld bc, $00ec
    push hl
    rla
    ld c, b
    and h
    ld c, e
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
    jp nc, $3c48

    pop hl
    ld e, b
    db $f4
    db $dd
    db $d3
    ld bc, $00ec
    push hl
    ld l, d
    ld c, b
    inc b
    ld c, h
    inc a
    add hl, bc
    ld e, c
    inc d
    xor l
    ld e, e
    and $02
    ld b, $e1
    ld e, e

jr_009_4875:
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
    jp nc, $e348

    jp nc, $2048

    xor l
    ld e, e
    inc a
    ld de, $f459
    db $dd
    db $d3
    ld bc, $00ec
    push hl
    and d
    ld c, b
    ld b, [hl]
    ld c, h
    inc a
    push bc
    ld e, e
    inc d
    ret


    ld e, e
    db $10
    reti


    ld e, b
    jr nz, jr_009_48b6

    ld e, c
    db $10
    reti


    ld e, b
    db $10
    ret


    ld e, e
    inc d
    ld [hl], c

jr_009_48b6:
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
    push hl
    ld c, b
    db $e3
    push hl
    ld c, b
    jr nz, jr_009_4875

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
    ld d, c
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
    ld h, b
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
    ld [hl], d
    ld c, c
    ld [wCurStage], a
    inc b
    and [hl]
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
    adc e
    ld c, c
    push hl
    xor e
    ld c, c
    ld [$eb40], sp
    ld a, $d0
    adc e
    ld c, c
    adc e
    ld c, c
    adc e
    ld c, c
    adc e
    ld c, c
    adc e
    ld c, c
    adc e
    ld c, c
    jp nz, $cc49

    ld c, c
    rst $00
    ld c, c
    pop de
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
    jp c, $0049

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
    add hl, hl
    ld c, d
    ld d, l
    ld c, d
    sub b
    ld c, d
    pop de
    ld c, d
    db $fc
    dec bc

jr_009_4a2b:
    ld c, c
    xor e
    ld c, b
    ld hl, $fc34
    dec bc
    ld c, c
    cp h
    ld c, b
    ld hl, $0334
    dec h
    ld e, h
    inc bc
    dec l
    ld e, h
    db $fc
    dec bc
    ld c, c
    and c
    ld c, b
    ld hl, $fc34
    dec bc
    ld c, c
    or d
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
    dec bc
    ld c, c
    jp $2148


    inc [hl]
    db $fc
    dec bc
    ld c, c
    rst $10
    ld c, b
    ld hl, $fc34
    dec bc
    ld c, c
    db $eb
    ld c, b
    ld hl, $fc34
    dec bc
    ld c, c
    rst $38
    ld c, b
    ld hl, $ec34
    add hl, bc
    db $fc
    dec bc
    ld c, c
    call $2148
    inc [hl]
    db $fc
    dec bc
    ld c, c
    pop hl
    ld c, b
    ld hl, $fc34
    dec bc
    ld c, c
    push af
    ld c, b
    ld hl, $fc34
    dec bc
    ld c, c
    add hl, bc
    ld c, c
    ld hl, $e034
    add sp, -$4e
    jr nc, jr_009_4a2b

    ld c, d
    or h
    ld c, d
    db $fc
    dec bc
    ld c, c
    inc de
    ld c, c
    ld hl, $fc34
    dec bc
    ld c, c
    jr nz, @+$4b

    ld hl, $fc34
    dec bc
    ld c, c
    dec l
    ld c, c
    ld hl, $fc34
    dec bc
    ld c, c
    ld a, [hl-]
    ld c, c
    ld hl, $e034
    db $fc
    dec bc
    ld c, c
    ld b, a
    ld c, c
    ld hl, $fc34
    dec bc
    ld c, c
    ld d, h
    ld c, c
    ld hl, $fc34
    dec bc
    ld c, c
    ld h, c
    ld c, c
    ld hl, $fc34
    dec bc
    ld c, c
    ld l, [hl]
    ld c, c
    ld hl, $e034
    db $fc
    xor $4a
    ld a, e
    ld c, c
    ld hl, $fc34
    xor $4a
    add c
    ld c, c
    ld hl, $fc34
    xor $4a
    add a
    ld c, c
    ld hl, $fc34
    xor $4a
    adc l
    ld c, c
    ld hl, $e034
    ld a, [bc]
    dec e
    ld e, h
    push hl
    or $4a
    ld [$ec40], sp
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
    inc c
    ld c, e
    ld a, a
    ld b, a
    ld hl, $fc34
    inc c
    ld c, e
    adc e
    ld b, a
    ld hl, $fc34
    inc c
    ld c, e
    sub a
    ld b, a
    ld hl, $fc34
    inc c
    ld c, e
    and e
    ld b, a
    ld hl, $fc34
    inc c
    ld c, e
    xor a
    ld b, a
    ld hl, $fc34
    inc c
    ld c, e
    cp e
    ld b, a
    ld hl, $fc34
    inc c
    ld c, e
    rst $00
    ld b, a
    ld hl, $fc34
    inc c
    ld c, e
    db $d3
    ld b, a
    ld hl, $e434
    db $fc
    cp [hl]
    ld b, e
    ld [$2140], sp
    inc [hl]
    db $fc
    and a
    ld c, e
    rst $18
    ld b, a
    ld hl, $fc34
    and a
    ld c, e
    di
    ld b, a
    ld hl, $fc34
    and a
    ld c, e
    db $fd
    ld b, a
    ld hl, $fc34
    and a
    ld c, e
    jp hl


    ld b, a
    ld hl, $ec34
    ld [de], a
    db $fc
    and a
    ld c, e
    dec de
    ld c, b
    ld hl, $fc34
    and a
    ld c, e
    dec h
    ld c, b
    ld hl, $fc34
    and a
    ld c, e
    rlca
    ld c, b
    ld hl, $fc34
    and a
    ld c, e
    dec h
    ld c, b
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
    db $10
    ld c, d
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
    cp h
    ld c, e
    push hl
    ld d, $49
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
    ccf
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
    or h
    ld c, e
    ld hl, sp-$6e
    rst $38
    jr nz, jr_009_4c14

    ld c, h
    ld [bc], a
    ld de, $025d
    add hl, de

jr_009_4c0b:
    ld e, l
    pop hl
    ld b, $4c
    ld [bc], a
    ld bc, $025d
    add hl, bc

jr_009_4c14:
    ld e, l
    pop hl
    rrca
    ld c, h
    nop
    reti


    ld e, b
    inc b
    pop hl
    ld e, e
    inc b

jr_009_4c1f:
    pop af
    ld e, e
    inc b
    ld sp, hl
    ld e, e
    inc b
    jp hl


    ld e, e
    pop hl
    dec de
    ld c, h
    nop
    ld l, c
    ld e, e
    inc c
    pop af
    ld e, b
    ld [$58f9], sp

jr_009_4c33:
    inc c
    ld bc, $0859
    ld sp, hl
    ld e, b

jr_009_4c39:
    pop hl
    dec l
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
    inc a
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
    ld c, e
    ld c, h
    inc d
    ld h, c
    ld e, c
    ld e, $49
    ld e, c
    pop hl
    ld h, e
    ld c, h
    and $02
    ld [$5e55], sp
    ld [$5e5d], sp
    rst $20
    jr nc, @+$57

    ld e, [hl]
    pop hl
    ld l, h
    ld c, h
    xor $08
    ld b, d
    nop
    nop
    add sp, -$4e
    jr nc, jr_009_4c0b

    ld c, h
    and c
    ld c, h
    db $e3
    cp e
    ld c, h
    add sp, -$4e
    jr nc, jr_009_4c1f

    ld c, h
    xor e
    ld c, h
    db $e3
    cp e
    ld c, h
    add sp, -$4e
    jr nc, jr_009_4c33

    ld c, h
    or l
    ld c, h
    db $e3
    cp e
    ld c, h
    pop hl
    ld a, e
    ld c, h
    db $e3
    push bc
    ld c, h
    add sp, -$4e
    jr nc, jr_009_4c39

    ld c, h
    xor e
    ld c, h
    db $e3
    push bc
    ld c, h
    add sp, -$4e
    jr nc, @-$63

    ld c, h
    or l
    ld c, h
    db $e3
    push bc
    ld c, h
    pop hl
    ld a, e
    ld c, h
    and $03
    ld [$5ec5], sp
    ld [$5ecd], sp
    rst $20
    db $e4
    and $03
    ld [$5ed5], sp
    ld [$5edd], sp
    rst $20
    db $e4
    nop
    push hl
    ld e, [hl]
    nop
    db $ed

jr_009_4cd4:
    ld e, [hl]
    inc c
    db $fc
    ld b, c
    jr jr_009_4cde

    ld b, d
    pop hl
    push de
    ld c, h

jr_009_4cde:
    jr z, jr_009_4cd4

    ld b, c
    and $04
    inc b
    db $fc
    ld b, c
    inc b
    inc b
    ld b, d
    rst $20
    ld [$41fc], sp
    and $04
    inc b
    db $fc
    ld b, c
    inc b
    inc b
    ld b, d
    rst $20
    ld [$41fc], sp
    jr @-$02

    ld b, c
    ld [$4204], sp
    ld [$41fc], sp
    pop hl
    sbc $4c
    db $fc
    ld d, $4d
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
    jr nc, jr_009_4d47

    ld c, l
    ld b, b
    ld c, l
    push hl
    ld a, [hl+]
    ld c, l
    db $db
    ld c, [hl]
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
    ld e, e
    ld c, l
    inc bc
    ld c, a
    push hl
    ld b, l
    ld c, l
    rst $28
    ld c, [hl]
    and $06

jr_009_4d47:
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
    ld h, e
    ld c, l
    dec bc
    ld c, a
    db $e3
    ld l, e
    ld c, l
    db $e3
    ld [hl], l
    ld c, l
    ld [c], a
    ld sp, hl
    db $e3
    ld [hl], l
    ld c, l
    db $e3
    ld l, e
    ld c, l
    ld [c], a
    ld sp, hl
    and $06
    ld de, $419c
    ld de, $41a4
    rst $20
    db $e4
    and $06
    ld de, $41ac
    ld de, $41b4
    rst $20
    db $e4
    db $e3
    adc a
    ld c, l
    db $e3
    sbc c
    ld c, l
    ld [c], a
    ld sp, hl
    db $e3
    sbc c
    ld c, l
    db $e3
    adc a
    ld c, l
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
    dec b
    ld c, l
    inc d
    call nz, $fc41
    adc $4d
    ld a, e
    ld c, [hl]
    ret


    inc [hl]
    inc d
    cp h
    ld b, c
    db $fc
    adc $4d
    ld a, e
    ld c, [hl]
    ret


    inc [hl]
    pop hl
    xor b
    ld c, l
    inc d
    call nz, $1441
    cp h
    ld b, c
    pop hl
    cp a
    ld c, l
    nop
    call nz, $0041
    cp h
    ld b, c
    jp hl


    sub [hl]
    ld e, $1c
    nop
    call z, $0a41
    push bc
    ld e, [hl]
    ld a, [bc]
    call $e25e
    ld sp, hl
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
    rla
    ld c, [hl]
    push hl
    rst $38
    ld c, l
    dec d
    ld d, b
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
    ld hl, $e54e
    inc d
    ld c, [hl]
    dec d
    ld d, b
    nop
    adc h
    ld b, c
    add sp, $21
    ld sp, $3523
    push hl
    db $dd
    ld c, l
    cp d
    ld c, a
    add sp, $21
    ld sp, $3523
    push hl
    push hl
    ld c, l
    push bc
    ld c, a
    xor $c2
    ld b, b
    add e
    ld c, [hl]
    push hl
    dec [hl]
    ld c, [hl]
    ld a, [hl+]
    ld d, b
    db $e3
    ld d, h
    ld c, [hl]
    db $e3
    ld e, [hl]
    ld c, [hl]
    ld [c], a
    ld sp, hl
    xor $c2
    ld b, b
    add e
    ld c, [hl]
    push hl
    ld b, a
    ld c, [hl]
    ld [hl-], a
    ld d, b
    db $e3
    ld e, [hl]
    ld c, [hl]
    db $e3
    ld d, h
    ld c, [hl]
    ld [c], a
    ld sp, hl
    db $e3
    ld d, h
    ld c, [hl]
    ld [c], a
    db $fc
    and $05
    inc bc
    inc h
    ld b, d
    db $10
    inc a
    ld b, d
    rst $20
    db $e4
    and $05
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
    ld b, d
    rst $20
    pop hl
    ld l, b
    ld c, [hl]
    nop
    inc h
    ld b, d
    nop
    ld l, h
    ld b, d
    add sp, $21
    ld sp, $353e
    add sp, -$4e
    jr nc, @-$6f

    ld c, [hl]
    and c
    ld c, [hl]
    push hl
    sub h
    ld c, [hl]
    ld h, b
    ld d, b
    ld e, $54
    ld b, d
    add sp, $21
    ld sp, $3535
    push hl
    ld l, b
    ld c, [hl]
    ld a, [hl]
    ld d, b
    push hl
    and [hl]
    ld c, [hl]
    ld l, a
    ld d, b
    ld e, $9c
    ld b, d
    add sp, $21
    ld sp, $3535
    push hl
    ld [hl], c
    ld c, [hl]
    sub e
    ld d, b
    db $e3
    jp $e34e


    rst $18
    ld c, [hl]
    ld [c], a
    ld sp, hl
    db $e3
    rst $18
    ld c, [hl]
    db $e3
    jp $e24e


    ld sp, hl
    xor $c2
    ld b, b
    jp nc, $e64e

    dec b
    inc bc
    call nc, $1042
    or h
    ld b, d
    rst $20
    db $e4
    db $fc
    adc b
    ld c, [hl]
    ld [$3e40], sp
    dec [hl]
    pop af
    nop
    ldh a, [$e1]
    jr nc, jr_009_4f2e

    xor $c2
    ld b, b
    xor $4e
    and $05
    inc bc
    inc [hl]
    ld b, e
    db $10
    ld d, h
    ld b, e
    rst $20
    db $e4
    db $fc
    adc b
    ld c, [hl]
    ld [$3e40], sp
    dec [hl]
    pop af
    nop
    ldh a, [$e1]
    dec [hl]
    ld c, a
    xor $c2
    ld b, b
    ld h, $4f
    ld a, [bc]
    inc h
    ld b, e
    ld a, [bc]
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
    ld b, b
    ld c, a
    ret nz

    ld d, b
    ld e, c
    dec [hl]
    pop af

jr_009_4f2e:
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
    jr nc, jr_009_4fe5

    ld c, a
    ld a, [hl]
    ld c, a
    db $fc
    db $ed
    ld c, l
    ld [$2340], sp
    dec [hl]
    pop hl
    add hl, hl
    ld c, d
    db $fc
    ld [bc], a
    ld c, [hl]
    ld [$2340], sp
    dec [hl]
    pop hl
    add hl, hl
    ld c, d
    ldh [$e3], a
    sbc c
    ld c, a
    db $e3
    xor b
    ld c, a
    ld [c], a
    ld sp, hl
    db $e3
    xor b
    ld c, a
    db $e3
    sbc c
    ld c, a
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
    nop
    ld h, b
    ld b, c
    ld [$d3f1], a
    nop
    pop bc
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
    ld bc, $6dfc
    ld d, d
    ld [$2140], sp
    inc [hl]
    dec l
    adc b
    ld b, b
    db $e3
    di
    ld c, a
    db $e3
    ld e, b
    ld d, b
    db $e3
    di
    ld c, a
    db $e3

jr_009_4fe5:
    ld h, $50
    cp $03
    ld de, $1150
    ld d, b
    ld e, b
    ld d, b
    ld h, $50
    ld [c], a
    jp hl


    push hl
    ld hl, sp+$4f
    ld b, $51
    and $01
    ld b, $88
    ld b, b
    ld b, $98
    ld b, b
    ld b, $a8
    ld b, b
    inc c
    cp b
    ld b, b
    ld b, $a8
    ld b, b
    ld b, $98
    ld b, b
    ld b, $88
    ld b, b
    rst $20
    db $e4
    push hl
    ld d, $50
    inc h
    ld d, c
    ld b, $88
    ld b, b
    ld b, $98
    ld b, b
    ld b, $a8
    ld b, b
    add hl, de
    cp b
    ld b, b
    ld b, h
    adc b
    ld b, b
    db $e4
    push hl
    dec hl
    ld d, b
    ld e, e
    ld d, c
    dec b
    ret z

    ld b, b
    dec b
    ldh a, [rLCDC]
    dec b
    inc c
    ld b, c
    dec b
    jr z, @+$43

    dec b
    ld b, h
    ld b, c
    ld [$4160], sp
    inc bc
    ld b, h
    ld b, c
    inc bc
    jr z, jr_009_5084

    jp hl


    sub [hl]
    ld e, $1c
    db $fc
    and b
    ld d, b
    sbc h
    ld d, c
    ld [hl], h
    dec [hl]
    inc bc
    call c, $0840
    ret z

    ld b, b
    ld [de], a
    adc b
    ld b, b
    db $e4
    push hl
    ld e, l
    ld d, b
    ld e, e
    ld d, c
    dec b
    ret z

    ld b, b
    dec b
    ldh a, [rLCDC]
    dec b
    inc c
    ld b, c
    dec b
    jr z, @+$43

    dec b
    ld b, h
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
    and b
    ld d, b
    ld a, a
    ld d, c
    ld [hl], h
    dec [hl]
    inc bc
    call c, $0840

jr_009_5084:
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
    ld h, e
    ld c, e
    ldh [$f1], a
    ldh a, [$08]
    nop
    ld c, l
    ld e, h
    ld [wStageScrollTileY], a
    ld de, $50b2
    ld bc, $4000
    pop hl
    and [hl]
    ld d, b
    add sp, $21
    ld sp, $3586
    db $f4
    jp $06d3


    db $f4
    pop bc
    db $d3
    ld bc, $6dfc
    ld d, d
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
    ld e, h
    ld d, c
    ld a, [$f880]
    ld d, b
    ld a, [$eb60]
    ld d, b
    and $02
    db $e3
    ld a, e
    ld d, c
    rst $20
    db $e3
    ld e, h
    ld d, c
    ld [c], a
    ld c, $e6
    inc b
    db $e3
    sub d
    ld d, c
    ld bc, $4000
    rst $20
    ld a, [$dc40]
    ld d, b
    db $fc
    ld b, c
    ld d, d
    ld bc, $c052
    inc [hl]
    inc d
    nop
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
    inc d
    nop
    ld b, b
    db $fc
    db $db
    ld d, c
    ld bc, $9d52
    dec [hl]
    inc d
    nop
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
    inc d
    nop
    ld b, b
    ld a, [$3780]
    ld d, c
    db $fc
    ld b, c
    ld d, d
    ld bc, $c052
    inc [hl]
    ld [c], a
    ld [$dbfc], sp
    ld d, c
    ld bc, $9d52
    dec [hl]
    inc d
    nop
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
    ld a, [bc]
    nop
    ld b, b
    db $e3
    ld e, h
    ld d, c
    ld a, [$f870]
    ld d, b
    ld [c], a
    add h
    nop
    nop
    ld b, b
    ld a, [bc]
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
    ld a, [bc]
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
    ret c

    ld d, c
    cp c
    ld d, c
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
    ret c

    ld d, c
    cp c
    ld d, c
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
    add c
    ld c, c
    and d
    ld d, d
    ld hl, $e334
    rra
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

jr_009_51e7:
    ld c, d
    db $ec
    inc b
    rst $20
    ld a, [hl+]
    call nc, $e841
    or d
    jr nc, jr_009_51e7

    ld d, c
    dec de
    ld d, d
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
    ld bc, $5e45
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
    ld [$5e45], sp
    ld [$5e4d], sp
    ld [c], a
    ld sp, hl
    ld [wStageScrollTileY], a
    ld de, $5265
    ld bc, $58b8
    pop hl
    ld e, c
    ld d, d
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
    sub a
    ld d, d
    ld [c], a
    rst $20
    ldh [rNR42], a
    inc b
    ld b, d
    and $08
    inc b
    db $fc
    ld b, c
    inc b
    inc b
    ld b, d
    rst $20
    ld hl, $4204
    pop hl
    sbc b
    ld d, d
    nop
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
    xor l
    ld d, d
    db $10
    add h
    ld b, h
    db $10
    adc h
    ld b, h
    nop
    db $fc
    ld b, e
    ld a, [bc]
    db $ec
    ld b, e
    ld a, [bc]
    db $f4
    ld b, e
    ld a, [bc]
    db $fc
    ld b, e
    pop hl
    jp nz, $e652

    ld b, $0f
    db $ec
    ld b, e
    ld a, [bc]
    db $f4
    ld b, e
    rst $20
    add hl, de
    db $ec
    ld b, e
    add hl, bc

jr_009_52db:
    db $f4
    ld b, e
    dec b
    db $fc
    ld b, e
    add sp, -$4e
    jr nc, @-$14

    ld d, d
    rst $30
    ld d, d
    pop hl
    adc $52
    db $fc
    ld a, [bc]
    ld d, e
    ld hl, $c953
    inc [hl]
    jr z, @-$02

    ld b, e
    pop hl
    adc $52
    db $fc
    ld a, [bc]
    ld d, e
    ld c, $53

jr_009_52fc:
    ret


    inc [hl]
    jr z, jr_009_52fc

    ld b, e
    pop hl
    adc $52
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
    ld a, [bc]
    ld d, e
    ld e, $b4
    ld b, e
    inc d
    ret nz

    ld b, e
    pop hl
    add hl, de
    ld d, e
    ld e, $dc
    ld b, e
    jr z, jr_009_52db

    ld b, e
    ld c, $c0
    ld b, e
    ld [$43c0], sp
    inc bc
    or h
    ld b, e
    pop hl
    add hl, de
    ld d, e
    ld [$43b4], sp
    ld [$43c0], sp
    pop hl
    inc [hl]
    ld d, e
    ld [$43c8], sp
    ld [$43d4], sp
    pop hl
    dec a
    ld d, e
    push hl
    ld c, e
    ld d, e
    adc d
    ld d, e
    and $05
    ld [$43b4], sp
    ld [$43c0], sp
    rst $20
    push hl
    ld e, c
    ld d, e
    ld l, c
    ld d, e
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
    ld h, h
    ld d, e
    ld [$437c], sp
    ld [$4384], sp
    pop hl
    cp e
    ld d, e
    ld [$4394], sp
    ld [$439c], sp
    pop hl

jr_009_53cb:
    call nz, $0a53
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
    call $e653
    dec b
    ld [$4394], sp
    ld [$439c], sp
    rst $20
    dec b
    sub h
    ld b, e
    ld [$437c], sp
    ld [$4384], sp
    pop hl
    jr nc, jr_009_548d

    db $10
    ld [hl], h
    ld b, e
    jr nz, jr_009_54ba

    ld b, e
    jr nz, @-$7a

    ld b, e
    jr nz, jr_009_54c0

    ld b, e
    jr nz, jr_009_53cb

    ld b, e
    jr nz, jr_009_54c6

    ld b, e
    ld [c], a
    ld sp, hl
    nop
    inc e
    ld b, h
    xor $05
    ld b, c
    nop
    nop
    add sp, -$1f
    ld c, b
    add sp, -$4e
    jr nc, jr_009_54bb

    ld d, h
    ld l, d
    ld d, h
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
    jr nc, @-$79

    ld d, h
    ld a, h
    ld d, h
    jr jr_009_54aa

    ld b, h
    inc c
    inc [hl]
    ld b, h
    pop hl
    ld [hl], l
    ld d, h
    jr jr_009_54a3

    ld b, h
    inc c
    inc h
    ld b, h
    pop hl
    ld [hl], l

jr_009_548d:
    ld d, h
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

jr_009_54a3:
    inc h
    ld b, h
    and $05
    db $10

jr_009_54a8:
    inc e
    ld b, h

jr_009_54aa:
    db $10
    inc h
    ld b, h
    rst $20
    db $10
    inc e
    ld b, h
    db $10
    inc [hl]
    ld b, h
    and $02
    db $10
    inc l
    ld b, h
    db $10

jr_009_54ba:
    inc [hl]

jr_009_54bb:
    ld b, h
    rst $20
    pop hl
    adc [hl]
    ld d, h

jr_009_54c0:
    db $10
    call $105e
    push bc
    ld e, [hl]

jr_009_54c6:
    db $10
    call $105e
    push bc
    ld e, [hl]
    ld h, b
    push bc
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
    jr nz, jr_009_54a8

    ld e, [hl]
    pop hl
    ret nz

    ld d, h
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
    rst $20
    ld d, h
    db $e3
    ld sp, $e155
    jr nz, jr_009_557b

    push hl
    jr nz, jr_009_557e

    jp c, $e342

    ld sp, $e155
    dec hl
    ld d, l
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
    ld e, b
    ld d, l
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
    ld [hl], e
    ld d, l
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

jr_009_557b:
    ld b, h
    inc b
    ld d, b

jr_009_557e:
    ld b, h
    ld a, [bc]
    ld b, h
    ld b, h
    add sp, $21
    ld sp, $3727
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
    adc h
    ld d, l
    scf
    inc a
    ld b, h
    ld [c], a
    db $ed
    db $fc
    ldh a, [rOBP1]
    ld h, c
    ld d, a
    jp nc, $e534

    xor h
    ld d, l
    and h

jr_009_55ab:
    ld b, d
    ld b, [hl]
    push af
    ld e, [hl]
    db $fc
    ldh a, [rOBP1]
    ld d, d
    ld d, a
    jp nc, $e534

    cp e
    ld d, l
    and h
    ld b, d
    ld b, [hl]
    push af
    ld e, [hl]
    db $fc
    ldh a, [rOBP1]
    ld h, h
    ld d, a
    jp nc, $e534

    jp z, $a455

    ld b, d
    and b
    push af
    ld e, [hl]
    pop hl
    and b
    ld d, l
    add sp, -$4e
    jr nc, jr_009_55ab

    ld d, l
    db $ec
    ld d, l
    dec l
    db $ed
    ld e, [hl]
    db $fc
    ldh a, [rOBP1]
    ld a, [c]
    ld b, d
    jp nc, $e534

    and $55
    sbc b
    ld b, d
    dec l
    db $ed
    ld e, [hl]
    pop hl
    ret nc

    ld d, l
    dec l
    db $fd
    ld e, [hl]
    db $fc
    ldh a, [rOBP1]
    rst $28
    ld b, d
    jp nc, $e534

    ei
    ld d, l
    or b
    ld b, d
    dec l
    db $fd
    ld e, [hl]
    pop hl
    ret nc

    ld d, l
    dec l
    dec b
    ld e, a
    db $fc
    ldh a, [rOBP1]
    ld hl, sp+$42
    jp nc, $e534

    db $10
    ld d, [hl]
    cp h
    ld b, d
    dec l
    dec b
    ld e, a
    pop hl
    ld bc, $1956
    push hl
    ld e, [hl]
    db $fc
    ldh a, [rOBP1]
    ld [$d243], sp
    inc [hl]
    push hl
    dec h
    ld d, [hl]
    adc h
    ld b, d
    ld a, [bc]
    push hl
    ld e, [hl]
    pop hl
    ld d, $56
    dec l
    dec b
    ld e, a
    db $fc
    ldh a, [rOBP1]
    pop de
    ld b, d
    jp nc, $e534

    ld a, [hl-]
    ld d, [hl]
    cp h
    ld b, d
    dec l
    dec b
    ld e, a
    dec l
    db $fd
    ld e, [hl]
    db $fc
    ldh a, [rOBP1]
    ld h, h
    ld d, a
    jp nc, $e534

    ld c, h
    ld d, [hl]
    or b
    ld b, d
    dec l
    db $fd
    ld e, [hl]
    pop hl
    dec hl
    ld d, [hl]
    dec l
    push hl
    ld e, [hl]
    db $fc
    ldh a, [rOBP1]
    push af
    ld b, d
    jp nc, $e534

    ld h, c
    ld d, [hl]
    adc h
    ld b, d
    dec l
    push hl
    ld e, [hl]
    dec l
    db $ed
    ld e, [hl]
    db $fc
    add c
    ld e, l
    rst $28
    ld b, d
    ret


    inc [hl]
    push hl
    ld [hl], e
    ld d, [hl]
    sbc b
    ld b, d
    dec l
    db $ed
    ld e, [hl]
    pop hl

jr_009_5677:
    ld d, d
    ld d, [hl]
    push hl
    ld a, [hl]
    ld d, [hl]
    cp b
    ld h, c
    ld b, b
    db $f4
    ld b, [hl]
    jr nc, jr_009_5677

    ld b, [hl]
    pop hl
    ld a, [hl]
    ld d, [hl]
    nop
    db $f4
    ld b, [hl]
    xor $52
    ld b, d
    sub d
    ld d, [hl]
    nop
    cp b
    ld e, b
    db $fc
    bit 2, [hl]
    ld [$2140], sp
    inc [hl]
    db $fc
    reti


    ld d, [hl]
    ld [$2140], sp
    inc [hl]
    db $fc
    rst $20
    ld d, [hl]
    ld [$2140], sp
    inc [hl]
    db $fc
    push af
    ld d, [hl]
    ld [$2140], sp
    inc [hl]
    db $fc
    inc bc
    ld d, a
    ld [$2140], sp
    inc [hl]
    db $fc
    ld d, $57
    ld [$2140], sp
    inc [hl]
    db $fc
    add hl, hl
    ld d, a
    ld [$2140], sp
    inc [hl]
    db $fc
    inc a
    ld d, a
    ld [$2140], sp
    inc [hl]
    ldh [$f1], a
    nop
    ret nc

    ld [$5d29], sp
    ld [$5d31], sp
    push hl
    ld c, a
    ld d, a
    cp [hl]
    ld d, a
    pop af
    jr nc, jr_009_56dc

jr_009_56dc:
    ld [$5d29], sp
    ld [$5d31], sp
    push hl
    ld c, a
    ld d, a
    db $f4
    ld d, a
    pop af
    nop
    jr nc, jr_009_56f3

    add hl, hl
    ld e, l
    ld [$5d31], sp
    push hl
    ld c, a
    ld d, a

jr_009_56f3:
    ld [c], a
    ld d, a
    pop af
    ret nc

    nop
    ld [$5d29], sp
    ld [$5d31], sp
    push hl
    ld c, a
    ld d, a
    ret nc

    ld d, a
    pop af
    ld [hl+], a
    sbc $08
    add hl, hl
    ld e, l
    ld [$5d31], sp
    add sp, $21
    ld sp, $374b
    push hl
    ld [hl], l
    ld d, h
    db $fd
    ld d, a
    pop af
    ld [hl+], a
    ld [hl+], a
    ld [$5d29], sp
    ld [$5d31], sp
    add sp, $21
    ld sp, $374b
    push hl
    ld [hl], l
    ld d, h
    db $eb
    ld d, a
    pop af
    sbc $22
    ld [$5d29], sp
    ld [$5d31], sp
    add sp, $21
    ld sp, $374b
    push hl
    ld [hl], l
    ld d, h
    reti


    ld d, a
    pop af
    sbc $de
    ld [$5d29], sp
    ld [$5d31], sp
    add sp, $21
    ld sp, $374b
    push hl
    ld [hl], l
    ld d, h
    rst $00
    ld d, a
    add sp, $21
    ld sp, $36cd
    add sp, -$4e
    jr nc, @+$5d

    ld d, a
    ld h, h
    ld d, a
    ld b, $7c
    ld b, e
    ld b, $84
    ld b, e
    pop hl
    ld d, h
    ld d, a
    ld b, $94
    ld b, e
    ld b, $9c
    ld b, e
    pop hl
    ld d, h
    ld d, a
    ld bc, $58b8
    add sp, $21
    ld sp, $3421
    xor $52
    ld b, d
    ld a, l
    ld d, a
    nop
    cp b
    ld e, b
    add sp, -$24
    jr nc, jr_009_57ee

    ld d, a
    add [hl]
    ld d, a
    ld [c], a
    add sp, -$04
    ld h, c
    ld d, l
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
    ld [$5e7d], sp
    ld [$5e75], sp
    ld [$5e7d], sp
    ld [$5e75], sp
    ld [$5e7d], sp

jr_009_57ab:
    ld [$5e9d], sp
    ld [$5ea5], sp
    ld [$5e9d], sp
    ld [$5ea5], sp
    ld [$5e9d], sp
    ld [$5ea5], sp
    ld [$5e75], sp
    pop hl
    sbc h
    ld d, a
    ld [$5e6d], sp
    ld [$5e65], sp
    ld [$5e6d], sp
    ld [$5e65], sp
    ld [$5e6d], sp
    ld [$5e55], sp
    ld [$5e5d], sp
    ld [$5e55], sp
    ld [$5e5d], sp
    ld [$5e55], sp
    ld [$5e5d], sp
    ld [$5e65], sp
    pop hl
    jp $0057


    sbc l
    ld e, a
    nop

jr_009_57ee:
    or l
    ld e, a
    ld [$5f9d], sp
    jr @-$69

    ld e, a
    pop hl
    ldh a, [$57]
    ld [$5fb5], sp
    jr jr_009_57ab

    ld e, a
    pop hl
    ld sp, hl
    ld d, a
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
    ld [bc], a
    ld e, b
    xor $05
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
    jr nc, @-$49

    ld e, a
    add sp, -$18
    ld c, b
    and $03
    jr nz, @-$51

    ld e, a
    ld a, [bc]
    or l
    ld e, a
    rst $20
    pop hl
    add hl, sp
    ld e, b
    nop
    call $005f
    push hl
    ld e, a
    ld a, [bc]
    call $e85f
    or d
    jr nc, jr_009_58c9

    ld e, b
    and c
    ld e, b
    ld a, [bc]
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
    ld a, [bc]
    call $ee5f
    dec b
    ld b, c
    nop
    nop
    add sp, -$1f
    ld c, b
    ld e, $c5
    ld e, a
    add sp, -$18
    ld c, b
    pop hl
    ld e, h
    ld e, b
    xor $05
    ld b, c
    nop
    nop
    add sp, -$1f
    ld c, b
    ld a, [bc]
    db $dd
    ld e, a
    add sp, -$18
    ld c, b
    ld a, [bc]
    push hl
    ld e, a
    add sp, -$4e
    jr nc, jr_009_5904

    ld e, b
    and c
    ld e, b
    ld a, [bc]
    push hl
    ld e, a
    and $04
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
    ld e, $e5
    ld e, a
    pop hl
    adc c
    ld e, b
    push hl
    cp e
    ld e, b
    db $d3
    ld e, b
    inc c
    call $145f
    push bc
    ld e, a
    ld a, [$c720]
    ld e, b
    or [hl]
    ld e, b
    and $06

jr_009_58c9:
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
    or [hl]
    ld e, b
    xor $05
    ld b, c
    nop
    nop
    add sp, -$1f
    ld c, b
    jr z, @-$21

    ld e, a
    add sp, -$18
    ld c, b
    ld a, [bc]
    push hl
    ld e, a
    and $04
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
    sub $58
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

jr_009_5904:
    ld h, b
    pop hl
    ld sp, hl
    ld e, b
    ld [$6045], sp
    ld [$604d], sp
    ld [$6055], sp
    ld [$605d], sp
    pop hl
    ld [$0459], sp
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
    rla
    ld e, c
    nop
    ld h, l
    ld h, b
    ld [$6065], sp
    jr nc, jr_009_5973

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
    add hl, hl
    ld e, c
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
    add sp, $21
    ld sp, $3495
    db $e3
    sub h
    ld e, c
    add sp, $21
    ld sp, $349e
    ld d, b
    cp b
    ld e, b
    add sp, $21
    ld sp, $3495
    db $e3
    ld a, b
    ld e, c
    add sp, $21
    ld sp, $348c

jr_009_5973:
    push hl
    rla
    ld e, c
    and $5d
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
    or b
    ld e, c
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
    push bc
    ld e, c
    ld [$6005], sp
    ld [$5ffd], sp
    pop hl
    rst $10
    ld e, c
    nop
    dec d
    ld h, b
    ld [$5ffd], sp
    nop
    push af
    ld e, a
    ld [$6025], sp
    nop
    dec e
    ld h, b
    jr nz, @+$2f

    ld h, b
    nop
    dec h
    ld h, b
    jr nz, jr_009_59fc

    ld h, b
    nop
    db $fd
    ld e, a
    ld a, [bc]

jr_009_59fc:
    dec e
    ld h, d
    ld a, [bc]
    dec h
    ld h, d
    pop hl
    ei
    ld e, c
    ld a, [bc]
    dec l
    ld h, d
    ld a, [bc]
    dec [hl]
    ld h, d
    pop hl
    inc b
    ld e, d
    ld [$6245], sp
    nop
    dec a
    ld h, d
    ld [$6245], sp
    db $10
    dec a
    ld h, d
    pop hl
    inc de
    ld e, d
    ld bc, $6245
    pop hl
    inc e
    ld e, d
    ld bc, $623d
    pop hl
    ld [hl+], a
    ld e, d
    ld a, [bc]
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
    jr z, jr_009_5a9d

    ld [hl-], a
    dec a
    ld h, d
    ld c, $45
    ld h, d
    nop
    dec a
    ld h, d
    ld [de], a
    dec a
    ld h, d
    ld b, $45
    ld h, d
    ld [c], a
    ld sp, hl
    ld bc, $624d
    push hl
    ld e, h
    ld e, d
    ld a, l
    ld e, l
    nop
    ld c, l
    ld h, d
    jr z, jr_009_5aae

    ld h, d
    add sp, $21
    ld sp, $366a
    xor $b1
    ld b, c
    ld l, a
    ld e, d
    nop
    ld c, l
    ld h, d
    add sp, $21
    ld sp, $35bb
    push hl
    cp [hl]
    ld b, e
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

jr_009_5a9d:
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

jr_009_5aae:
    ld h, b
    ld a, [bc]
    ld l, l
    ld h, b
    ld a, [$eb55]
    ld e, d
    ld a, [$f780]
    ld e, d
    pop hl
    add hl, bc
    ld e, e
    rrca
    ld l, l
    ld h, b
    ld a, [$c9b2]
    ld e, d
    rrca
    ld l, l
    ld h, b
    ld [c], a
    ld [$5be3], a
    ld e, e
    rrca
    push de
    ld h, b
    ld a, [$2355]
    ld e, e
    ld a, [$2f80]
    ld e, e
    pop hl
    ld b, c
    ld e, e
    rrca
    push de
    ld h, b
    ld a, [$e6b2]
    ld e, d
    rrca
    push de
    ld h, b
    ld [c], a
    ld [$65e3], a
    ld e, e
    ld [c], a
    ret z

    db $fc
    add $5b
    and e
    ld e, h
    rst $10
    dec [hl]
    db $e3
    ld l, a
    ld e, e
    ld [c], a
    rst $00
    and $03
    db $e3
    add e
    ld e, e
    db $fc
    add $5b
    and e
    ld e, h
    rst $10
    dec [hl]
    ld a, [bc]
    ld l, l
    ld h, b
    rst $20
    ld [c], a
    or l
    db $e3
    add e
    ld e, e
    db $fc
    add $5b
    sbc l
    ld e, h
    rst $10
    dec [hl]
    db $fc
    add $5b
    ld [$d743], sp
    dec [hl]
    db $fc
    add $5b
    and b
    ld e, h
    rst $10
    dec [hl]
    ld [c], a
    sbc e
    db $e3
    ld a, c
    ld e, e
    db $fc
    ret nz

    ld e, e
    and e
    ld e, h
    rst $10
    dec [hl]
    ld [c], a
    xor h
    and $03
    db $e3
    adc l
    ld e, e
    db $fc
    ret nz

    ld e, e
    and e
    ld e, h
    rst $10
    dec [hl]
    ld a, [bc]
    push de
    ld h, b
    rst $20
    ld [c], a
    sbc d
    db $e3
    adc l
    ld e, e
    db $fc
    ret nz

    ld e, e
    sbc l
    ld e, h
    rst $10
    dec [hl]
    db $fc
    ret nz

    ld e, e
    ld [$d743], sp
    dec [hl]
    db $fc
    ret nz

    ld e, e
    and b
    ld e, h
    rst $10
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
    db $e3
    sbc h
    ld e, e
    ld [c], a
    db $fc
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
    sbc h
    ld e, e
    ld [$606d], sp
    ld b, $95
    ld h, b
    ld b, $b5
    ld h, b
    ld [$60d5], sp
    ld b, $b5
    ld h, b
    ld b, $95
    ld h, b
    pop hl
    xor e
    ld e, e
    pop af
    or $f0
    pop hl
    ldh a, [rOBP1]
    pop af
    or $10
    pop hl
    ldh a, [rOBP1]
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

jr_009_5bde:
    db $10
    db $f4
    cp d
    jp nc, $f423

    cp e
    jp nc, $f416

    ld d, c
    ret nc

    jr nz, jr_009_5bde

    db $fc
    add c
    ld c, c
    ld [hl], d
    ld e, l
    ld hl, $e334
    rra
    ld c, e
    push hl
    nop
    ld b, b
    ld sp, $e95d
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
    ld c, $5c
    ei
    ld e, [hl]
    and $08
    inc c
    jr z, jr_009_5c58

    inc c
    jr nc, jr_009_5c5b

    rst $20
    push hl
    inc e
    ld e, h
    ld [$e640], sp
    ld [bc], a
    inc b
    jr nc, @+$47

    inc b
    jr z, @+$47

    rst $20
    ld a, [bc]
    jr nc, jr_009_5c6d

    push hl
    dec l
    ld e, h
    and $5e
    and $08
    inc c
    jr @+$47

    inc c
    jr nz, @+$47

    rst $20
    push hl
    dec sp
    ld e, h
    ld [$e640], sp
    ld [bc], a
    inc b
    jr nz, jr_009_5c85

    inc b
    jr jr_009_5c88

    rst $20
    ld a, [bc]
    jr nz, @+$47

    ld [c], a
    pop bc
    ld [$4518], sp
    ld [$4520], sp
    pop hl
    ld c, c
    ld e, h
    ld [$4528], sp
    ld [$4530], sp

jr_009_5c58:
    pop hl
    ld d, d
    ld e, h

jr_009_5c5b:
    inc c
    jr @+$47

    ld a, [bc]
    jr nz, @+$47

    pop hl
    ld e, e
    ld e, h
    inc c
    jr z, jr_009_5cac

    ld a, [bc]
    jr nc, jr_009_5caf

    pop hl
    ld h, h
    ld e, h

jr_009_5c6d:
    nop
    ld b, b
    ld b, l
    nop
    jr c, jr_009_5cb8

    nop
    ld c, b
    ld b, l
    ld [$4538], sp
    ld [$4540], sp
    ld [$4548], sp
    ld [$4550], sp
    pop hl
    db $76
    ld e, h

jr_009_5c85:
    ld b, $45
    ld e, [hl]

jr_009_5c88:
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
    add l
    ld e, h
    ld a, [bc]
    call $0a5e
    push bc
    ld e, [hl]
    push hl
    cp [hl]
    ld e, h
    push de
    ld d, h
    and $02
    ld a, [bc]
    call $0a5e
    push bc
    ld e, [hl]
    rst $20
    push hl

jr_009_5cac:
    cp [hl]
    ld e, h
    push de

jr_009_5caf:
    ld d, h
    and $03
    ld a, [bc]
    call $0a5e
    push bc
    ld e, [hl]

jr_009_5cb8:
    rst $20
    push hl
    cp [hl]
    ld e, h
    push de
    ld d, h
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
    rst $00
    ld e, h
    push hl
    push de
    ld e, h
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
    db $e3
    ld e, h
    pop de
    ld b, d
    and $12
    db $10
    ld h, l
    ld e, [hl]
    db $10
    ld l, l
    ld e, [hl]
    rst $20
    ld [c], a
    db $e3
    xor $ce
    ld b, b
    inc bc
    ld e, l
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
    dec c
    ld e, l
    or [hl]
    ld h, b
    inc c
    ld e, b
    ld b, l
    inc c
    ld a, b
    ld b, l
    push hl
    jr jr_009_5d73

    rra
    ld h, b
    add sp, -$4e
    jr nc, jr_009_5d3b

    ld e, l
    daa
    ld e, l
    ld [$4568], sp
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
    jr nc, jr_009_5d69

    ld e, l
    add hl, sp
    ld e, l
    nop
    ld a, b
    ld b, l
    nop
    and b

jr_009_5d3b:
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

jr_009_5d69:
    ld [$5e6d], sp
    inc d
    ld e, l
    ld e, [hl]
    ld b, b
    ld d, l
    ld e, [hl]
    inc d

jr_009_5d73:
    ld e, l
    ld e, [hl]
    pop hl
    inc a
    ld e, l
    pop af
    nop
    ld b, $e1
    ldh a, [rOBP1]
    nop
    xor b
    ld b, l
    nop
    xor h
    ld b, l
    pop hl
    xor h
    ld e, l
    rrca
    push af
    ld e, [hl]
    add sp, $5c
    ld c, c
    db $eb
    cp l
    db $d3
    and b
    ld e, l
    bit 3, l
    ldh a, [$5d]
    ldh a, [$5d]
    push bc
    ld e, l
    or [hl]
    ld e, [hl]
    or [hl]
    ld e, [hl]
    sub c
    ld e, [hl]
    db $fc
    ldh a, [rOBP1]
    adc b
    ld d, a
    jp nc, $e534

    xor h
    ld e, l
    and h
    ld b, d
    ld [$5ef5], sp
    add sp, $5c
    ld c, c
    db $eb
    cp l
    db $d3
    add a
    ld e, l
    bit 3, l
    ldh a, [$5d]
    ldh a, [$5d]
    push bc
    ld e, l
    or [hl]
    ld e, [hl]
    or [hl]
    ld e, [hl]
    sub c
    ld e, [hl]
    rrca
    push af
    ld e, [hl]
    pop hl
    xor a
    ld e, l
    rrca
    db $fd
    ld e, [hl]
    add sp, $5c
    ld c, c
    db $eb
    cp l
    db $d3
    add a
    ld e, l
    db $e4
    ld e, l
    add hl, bc
    ld e, [hl]
    ld b, a
    ld e, [hl]
    push bc
    ld e, l
    xor h
    ld e, l
    xor h
    ld e, l
    xor h
    ld e, l
    db $fc
    ldh a, [rOBP1]
    sub d
    ld c, l
    jp nc, $e534

    ldh a, [$5d]
    or b
    ld b, d
    ld [$5efd], sp
    add sp, $5c
    ld c, c
    db $eb
    cp l
    db $d3
    add a
    ld e, l
    bit 3, l
    add hl, bc
    ld e, [hl]
    ld b, a
    ld e, [hl]
    push bc
    ld e, l
    xor h
    ld e, l
    xor h
    ld e, l
    xor h
    ld e, l
    rrca
    dec b
    ld e, a
    add sp, $5c
    ld c, c
    db $eb
    cp l
    db $d3
    ldh a, [$5d]
    bit 3, l
    ld [hl+], a
    ld e, [hl]
    ld b, a
    ld e, [hl]
    ldh a, [$5d]
    ldh a, [$5d]
    ldh a, [$5d]
    ldh a, [$5d]
    db $fc
    ldh a, [rOBP1]
    ld hl, sp+$42
    jp nc, $e534

    ld l, $5e
    cp h
    ld b, d
    rrca
    dec b
    ld e, a
    add sp, $5c
    ld c, c
    db $eb
    cp l
    db $d3
    ldh a, [$5d]
    bit 3, l
    add hl, bc
    ld e, [hl]
    ld b, a
    ld e, [hl]
    ldh a, [$5d]
    ldh a, [$5d]
    ldh a, [$5d]
    ldh a, [$5d]
    rrca
    dec b
    ld e, a
    pop hl
    ld sp, $0f5e
    push hl
    ld e, [hl]
    add sp, $5c
    ld c, c
    db $eb
    cp l
    db $d3
    or [hl]
    ld e, [hl]
    or [hl]
    ld e, [hl]
    or [hl]
    ld e, [hl]
    or [hl]
    ld e, [hl]
    or [hl]
    ld e, [hl]
    adc e
    ld e, [hl]
    ld h, [hl]
    ld e, [hl]
    sub c
    ld e, [hl]
    db $fc
    ldh a, [rOBP1]
    push af
    ld b, d
    jp nc, $e534

    ld [hl], d
    ld e, [hl]
    adc h
    ld b, d
    rrca
    push hl
    ld e, [hl]
    add sp, $5c
    ld c, c
    db $eb
    cp l
    db $d3
    or [hl]
    ld e, [hl]
    or [hl]
    ld e, [hl]
    or [hl]
    ld e, [hl]
    or [hl]
    ld e, [hl]
    or [hl]
    ld e, [hl]
    adc e
    ld e, [hl]
    ld c, l
    ld e, [hl]
    sub c
    ld e, [hl]
    rrca
    push hl
    ld e, [hl]
    pop hl
    ld [hl], l
    ld e, [hl]
    ld e, $ed
    ld e, [hl]
    add sp, $5c
    ld c, c
    db $eb
    cp l
    db $d3
    add a
    ld e, l
    xor h
    ld e, l
    xor h
    ld e, l
    xor h
    ld e, l
    push bc
    ld e, l
    adc e
    ld e, [hl]
    ld c, l
    ld e, [hl]
    xor d
    ld e, [hl]
    db $fc
    ldh a, [rOBP1]
    adc a
    ld c, l
    jp nc, $e534

    or [hl]
    ld e, [hl]
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
    add a
    ld e, l
    xor h
    ld e, l
    xor h
    ld e, l
    xor h
    ld e, l
    push bc
    ld e, l
    adc e
    ld e, [hl]
    ld c, l
    ld e, [hl]
    sub c
    ld e, [hl]
    nop
    and h
    ld b, [hl]
    nop
    ld h, h
    ld b, [hl]
    add sp, -$4d
    ld c, d
    ld a, [bc]
    ld d, h
    ld b, [hl]
    add sp, -$46
    ld c, d
    ld a, [bc]
    ld d, h
    ld b, [hl]
    ld [c], a
    di
    xor $c2
    ld b, b
    daa
    ld e, a
    ld a, [bc]
    and h
    ld b, [hl]
    ld a, [bc]
    or h
    ld b, [hl]
    ld a, [bc]
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
    add hl, sp
    ld e, a
    ld a, [bc]
    ld h, h
    ld b, [hl]
    ld a, [bc]
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
    push de
    ld e, [hl]
    ld h, c
    ld h, c
    ld hl, $e834
    ld hl, $8c31
    inc [hl]
    ld bc, $5e55
    add sp, -$05
    ld c, d
    db $fc
    push de
    ld e, [hl]
    ld h, c
    ld h, c
    ld hl, $e834
    ld hl, $8c31
    inc [hl]
    ld bc, $5e75
    add sp, -$05
    ld c, d
    add sp, $21
    ld sp, $3421
    push hl
    push de
    ld e, [hl]
    ld h, c
    ld h, c
    ldh [$fc], a
    dec de
    ld c, d
    ld [$2140], sp
    inc [hl]
    pop hl
    push de
    ld e, [hl]
    add sp, $21
    ld sp, $3483
    xor $b1
    ld b, c
    ld l, l
    ld e, a
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
    ld a, a
    ld e, a
    nop
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
    sub c
    ld e, a
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
    and e
    ld e, a
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
    add c
    ld e, l
    add l
    ld d, a
    ret


    inc [hl]
    db $10
    db $f4
    ld b, [hl]
    rst $20
    pop hl
    xor b
    ld e, a
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
    cp e
    ld e, a
    jp hl


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
    call c, $e35f
    ld l, l
    ld h, b
    pop hl
    rst $28
    ld e, a
    db $e3
    rst $20
    ld h, b
    pop hl
    push af
    ld e, a
    db $e3
    sbc h
    ld h, b
    pop hl
    ei
    ld e, a
    push hl
    ld b, $60
    adc $42
    db $e3
    ld l, l
    ld h, b
    pop hl
    ld bc, $e360
    ld l, b
    ld h, b
    add sp, -$4e
    jr nc, jr_009_6029

    ld h, b
    ld e, b
    ld h, b
    db $e3
    ld l, b
    ld h, b
    add sp, -$4e
    jr nc, jr_009_603d

    ld h, b
    ld c, [hl]
    ld h, b
    db $e3
    ld l, b
    ld h, b
    add sp, -$4e
    jr nc, jr_009_6051

    ld h, b
    ld b, h

jr_009_6029:
    ld h, b
    db $e3
    ld l, b
    ld h, b
    add sp, -$4e
    jr nc, jr_009_6065

    ld h, b
    ld a, [hl-]
    ld h, b
    db $e3
    ld l, l
    ld h, b
    pop hl
    dec l
    ld h, b
    db $e3
    ld [c], a
    ld h, b

jr_009_603d:
    add sp, -$4e
    jr nc, jr_009_606b

    ld h, b
    ld b, h

jr_009_6043:
    ld h, b
    db $e3
    ld [c], a
    ld h, b
    add sp, -$4e
    jr nc, jr_009_606b

    ld h, b
    ld c, [hl]
    ld h, b
    db $e3
    ld [c], a
    ld h, b

jr_009_6051:
    add sp, -$4e
    jr nc, jr_009_606b

    ld h, b
    ld e, b
    ld h, b
    db $e3
    ld [c], a
    ld h, b
    add sp, -$4e
    jr nc, jr_009_606b

    ld h, b
    ld h, d
    ld h, b
    db $e3
    rst $20
    ld h, b

jr_009_6065:
    pop hl
    ld e, e
    ld h, b
    push hl
    ld l, l
    ld h, b

jr_009_606b:
    call nc, $e642
    inc bc
    ld [$4724], sp
    ld [$472c], sp
    rst $20
    push hl
    ld a, e
    ld h, b
    ld [$1440], sp
    inc [hl]
    ld b, a
    db $fc
    jp z, Jump_009_6a5f

    ld h, d
    ld a, h
    ld [hl], $0a
    inc a
    ld b, a
    ld a, [bc]
    inc [hl]
    ld b, a
    db $fc
    jp z, Jump_009_6a5f

    ld h, d
    ld a, h
    ld [hl], $0a
    inc a
    ld b, a
    db $10
    inc a
    ld b, a
    inc d
    inc [hl]
    ld b, a
    db $e4
    add sp, -$4e
    jr nc, jr_009_6043

    ld h, b
    adc $60
    ld [de], a
    inc [hl]
    ld b, a
    db $fc
    jp z, $a85f

    ld h, d
    ld a, h
    ld [hl], $12
    inc a
    ld b, a
    ld [de], a
    inc [hl]
    ld b, a
    db $fc
    jp z, $c75f

    ld h, d
    ld a, h
    ld [hl], $12
    inc a
    ld b, a
    ld [de], a
    inc [hl]
    ld b, a
    db $fc
    jp z, $895f

    ld h, d
    ld a, h
    ld [hl], $12
    inc a
    ld b, a
    inc d
    inc [hl]
    ld b, a
    db $e4
    and $03
    ld [de], a
    ld d, h
    ld b, a
    db $fc
    call c, $055f
    ld h, e
    ld a, h
    ld [hl], $12
    ld e, h
    ld b, a
    rst $20
    inc d
    ld d, h
    ld b, a
    db $e4
    push hl
    rst $20
    ld h, b
    rst $10
    ld b, d
    and $03
    ld [$4744], sp
    ld [$474c], sp
    rst $20
    push hl
    push af
    ld h, b
    ld [$1440], sp
    ld d, h
    ld b, a
    db $fc
    jp z, $e65f

    ld h, d
    ld a, h
    ld [hl], $0a
    ld e, h
    ld b, a
    ld a, [bc]
    ld d, h
    ld b, a
    db $fc
    call c, $e65f
    ld h, d
    ld a, h
    ld [hl], $0a
    ld e, h
    ld b, a
    db $10
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
    rra
    ld h, c
    jr z, @-$46

    ld e, b
    ld a, [$4c40]
    ld h, c
    inc d
    cp b
    ld e, b
    ld a, [$4c80]
    ld h, c
    inc d
    cp b
    ld e, b
    ld a, [$4cc0]
    ld h, c
    inc d
    cp b
    ld e, b
    db $fc
    ld d, [hl]
    ld h, c
    ld h, $63
    ret


    inc [hl]
    pop hl
    inc [hl]
    ld h, c
    add sp, -$6d
    ld c, d
    ld a, [bc]
    dec e

jr_009_615b:
    ld e, h
    add sp, -$46
    ld c, d
    inc b
    dec e
    ld e, h
    add sp, -$4d
    ld c, d
    ld [c], a
    di
    add sp, -$4e
    jr nc, jr_009_61d9

    ld h, c
    adc e
    ld h, c
    and $06
    inc bc
    adc l
    ld e, [hl]
    inc bc
    ld [hl], l
    ld e, [hl]
    rst $20
    push hl
    ld a, h
    ld h, c
    ld c, h
    ld e, a
    db $e3
    sbc $61
    and $02
    inc b
    ld [hl], l
    ld e, [hl]
    inc b
    ld a, l
    ld e, [hl]
    rst $20
    pop hl
    ld h, a
    ld h, c
    and $0c
    inc bc
    or l
    ld e, [hl]
    inc bc
    sbc l
    ld e, [hl]
    rst $20
    push hl
    sbc c
    ld h, c
    ld c, h
    ld e, a
    db $e3
    ccf
    ld h, d
    and $04
    inc b
    sbc l
    ld e, [hl]
    inc b
    and l
    ld e, [hl]
    rst $20
    pop hl
    ld h, a
    ld h, c
    add sp, -$4e
    jr nc, jr_009_615b

    ld h, c
    add $61
    and $08
    inc bc
    adc l
    ld e, [hl]
    inc bc
    ld [hl], l
    ld e, [hl]
    rst $20
    db $e3
    sbc $61
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
    ccf
    ld h, d
    and $04
    inc b
    sbc l
    ld e, [hl]
    inc b
    and l

jr_009_61d9:
    ld e, [hl]
    rst $20
    pop hl
    xor a
    ld h, c
    and $03
    db $fc
    jp c, $bf49

    ld b, e
    ret


    inc [hl]
    db $ec
    inc b
    rst $20
    and $03
    db $fc
    jp c, $fb49

    ld b, e
    ret


    inc [hl]
    db $ec
    inc b
    rst $20
    and $03
    db $fc
    jp c, $f749

    ld b, e
    ret


    inc [hl]
    db $ec
    inc b
    rst $20
    and $03
    db $fc
    jp c, $f349

    ld b, e
    ret


    inc [hl]
    db $ec
    inc b
    rst $20
    and $03
    db $fc
    jp c, $ef49

    ld b, e
    ret


    inc [hl]
    db $ec
    inc b
    rst $20
    and $03
    db $fc
    jp c, $eb49

    ld b, e
    ret


    inc [hl]
    db $ec
    inc b
    rst $20
    and $03
    db $fc
    jp c, $e749

    ld b, e
    ret


    inc [hl]
    db $ec
    inc b
    rst $20
    and $03
    db $fc
    jp c, $e349

    ld b, e
    ret


    inc [hl]
    db $ec
    inc b
    rst $20
    db $e4
    and $03
    db $fc
    jp c, $bf49

    ld b, e
    ret


    inc [hl]
    db $ec
    inc b
    rst $20
    and $03
    db $fc
    jp c, $c349

    ld b, e
    ret


    inc [hl]

jr_009_6254:
    db $ec
    inc b
    rst $20
    and $03
    db $fc
    jp c, $c749

    ld b, e
    ret


    inc [hl]
    db $ec
    inc b
    rst $20
    and $03
    db $fc
    jp c, $cb49

    ld b, e
    ret


    inc [hl]
    db $ec
    inc b
    rst $20
    and $03
    db $fc
    jp c, $cf49

    ld b, e
    ret


    inc [hl]
    db $ec
    inc b
    rst $20
    and $03
    db $fc
    jp c, $d349

    ld b, e
    ret


    inc [hl]
    db $ec
    inc b
    rst $20
    and $03
    db $fc
    jp c, $d749

    ld b, e
    ret


    inc [hl]
    db $ec
    inc b
    rst $20

jr_009_6293:
    and $03
    db $fc
    jp c, $db49

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

jr_009_62aa:
    ld b, d
    or b
    ld h, d
    nop
    cp b
    ld e, b
    add sp, -$24
    jr nc, jr_009_6254

    ld h, d
    cp c
    ld h, d
    ld [c], a
    add sp, -$0f
    ldh a, [$e0]
    add sp, $21
    ld sp, $3477
    pop hl
    ld d, c
    ld c, c
    add sp, -$4e
    jr nc, jr_009_6293

    ld h, d
    db $d3
    ld h, d
    ld [$4518], sp
    ld [$4520], sp
    ld [c], a
    ld a, [c]
    ld [$4528], sp
    ld [$4530], sp
    ld [c], a
    ld [$b828], a
    ld e, b
    db $fc
    nop
    ld h, h
    ld [$2540], sp
    inc [hl]
    and $02
    jr z, jr_009_62ea

    ld e, h

jr_009_62ea:
    ld a, [bc]
    dec l
    ld e, h
    ld a, [bc]
    xor b
    ld c, e
    jr z, jr_009_62aa

    ld e, b
    ld a, [bc]
    xor b
    ld c, e
    ld a, [bc]
    dec l
    ld e, h
    jr z, jr_009_62fc

    ld e, h

jr_009_62fc:
    rst $20
    nop
    ld bc, $aa5c
    cp b
    ld e, b
    db $fc
    inc c
    ld h, e
    or $63
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


jr_009_6313:
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
    jr nz, jr_009_6313

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
    sub b
    ld h, e
    ld [$2540], sp
    inc [hl]
    pop hl
    add e
    ld h, e
    ei
    rrca
    or d
    ld h, e
    or a
    ld h, e
    cp h
    ld h, e
    pop bc
    ld h, e
    add $63
    bit 4, e
    ret nc

    ld h, e
    push de
    ld h, e
    jp c, $df63

    ld h, e
    db $e4
    ld h, e
    jp hl


    ld h, e
    xor $63
    di
    ld h, e
    ld hl, sp+$63
    db $fd
    ld h, e
    pop af
    inc d
    ld a, [bc]
    ld [c], a
    ld c, d
    pop af
    jr z, jr_009_63ce

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

jr_009_63ca:
    ld [hl], $f1
    ld a, b
    inc d

jr_009_63ce:
    ld [c], a
    ld sp, $3cf1
    inc d
    ld [c], a

jr_009_63d4:
    inc l
    pop af
    inc d
    ld e, $e2
    daa
    pop af

jr_009_63db:
    jr z, jr_009_6405

    ld [c], a
    ld [hl+], a
    pop af
    inc a
    ld e, $e2
    dec e
    pop af
    ld d, b
    jr z, jr_009_63ca

    jr jr_009_63db

    ld h, h
    ld e, $e2
    inc de
    pop af
    ld a, b
    jr z, jr_009_63d4

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
    inc l
    ld h, h
    xor e
    ld c, b

jr_009_6405:
    ld hl, $fc34
    inc l
    ld h, h
    cp h
    ld c, b
    ld hl, $0334
    dec h
    ld e, h
    inc bc
    dec l
    ld e, h
    db $fc
    inc l
    ld h, h
    and c
    ld c, b
    ld hl, $fc34
    inc l
    ld h, h
    or d
    ld c, b
    ld hl, $0334
    dec a
    ld e, h

jr_009_6425:
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
    cpl
    ld h, h
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
    ld d, [hl]
    ld h, h
    jr nz, jr_009_6425

    ld e, b
    jr nz, @-$25

    ld e, b
    jr @+$6b

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

jr_009_648b:
    ld [$5be1], sp
    ld [$5be9], sp
    ld [$5bf9], sp
    ld [$5bf1], sp
    rst $20

jr_009_6498:
    jr nz, jr_009_648b

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
    db $f4
    ld h, h
    push hl
    or a
    ld h, h
    ld [$e365], sp
    db $f4
    ld h, h
    push hl
    or a
    ld h, h
    ld c, $65
    db $e3
    db $f4
    ld h, h
    push hl
    cp d
    ld h, h
    ld de, $e365
    db $f4
    ld h, h
    push hl
    or a
    ld h, h
    inc d
    ld h, l
    db $e3
    db $f4
    ld h, h
    push hl
    or a
    ld h, h
    ld a, [de]

jr_009_64eb:
    ld h, l
    db $e3
    db $f4
    ld h, h
    push hl
    cp d
    ld h, h
    dec e
    ld h, l
    ld l, b
    cp b
    ld e, b
    db $ec
    ld e, [hl]
    db $e4

jr_009_64fa:
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
    jr nc, jr_009_64fa

    ld e, b
    jr nz, jr_009_6498

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
    jr c, jr_009_6597

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
    jr nz, jr_009_65c5

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
    jr jr_009_65e4

    ld c, h
    jr jr_009_64eb

    ld c, h
    pop hl
    ld h, [hl]
    ld h, l
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
    ld [hl], d
    ld h, l
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
    cp b

jr_009_6597:
    ld h, l
    cp e
    ld h, l
    cp [hl]
    ld h, l
    cp [hl]
    ld h, l
    reti


    ld h, l
    pop bc
    ld h, l
    call nz, $c765
    ld h, l
    jp z, $cd65

    ld h, l
    ret nc

    ld h, l
    db $d3
    ld h, l
    sub $65
    reti


    ld h, l
    reti


    ld h, l
    reti


    ld h, l
    reti


    ld h, l
    nop
    ret nz

    ld c, h
    nop
    call nz, $004c
    db $e4
    ld c, h
    nop
    ld bc, $0059

jr_009_65c5:
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

jr_009_65e4:
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
    dec bc
    ld c, c
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
    jr nc, jr_009_666b

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

jr_009_6634:
    ld e, h
    dec b
    dec a
    ld e, h
    db $fc
    dec bc
    ld c, c
    ld [hl], l
    ld b, a
    dec h
    inc [hl]
    db $fc
    dec bc
    ld c, c
    ld l, e
    ld b, a
    dec h
    inc [hl]
    db $fc
    dec bc
    ld c, c
    ld h, c
    ld b, a
    dec h
    inc [hl]
    db $fc
    dec bc
    ld c, c
    ld d, a
    ld b, a
    dec h
    inc [hl]
    ld h, h
    ld bc, $e65c
    inc e
    db $ec
    inc b
    db $fc
    ld l, a
    ld h, [hl]
    sub e
    ld h, a
    dec h
    inc [hl]
    rst $20
    db $fc
    ld l, a
    ld h, [hl]
    ld l, b
    ld a, h
    dec h
    inc [hl]
    db $ec

jr_009_666b:
    ld [$63e1], sp
    ld h, [hl]

jr_009_666f:
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
    adc [hl]
    ld h, [hl]
    ld [$ec40], sp
    ld d, b
    push hl
    sub l
    ld h, [hl]
    add a
    ld l, b
    db $ec
    add b
    jr nz, jr_009_6701

    ld c, [hl]
    jr nz, jr_009_6634

    ld c, [hl]
    jr nz, jr_009_666f

    ld c, [hl]
    jr nz, jr_009_66c2

    ld c, a
    push hl
    xor b
    ld h, [hl]
    sub e
    ld l, b
    nop
    jr nz, jr_009_66fa

    ld d, b
    cp b
    ld e, b
    nop
    sub b
    ld c, a
    db $e3
    reti


    ld h, [hl]
    push hl
    push af
    ld h, [hl]
    inc bc
    ld l, c
    db $e3
    reti


    ld h, [hl]
    push hl
    push af
    ld h, [hl]
    jr nc, jr_009_672a

    db $e3

jr_009_66c2:
    reti


    ld h, [hl]
    push hl
    push af
    ld h, [hl]
    ld b, [hl]
    ld l, c
    db $e3
    reti


    ld h, [hl]
    push hl
    push af
    ld h, [hl]
    inc d
    ld l, c
    db $e3
    reti


    ld h, [hl]
    push hl
    push af
    ld h, [hl]
    ld h, d
    ld l, c
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

jr_009_66fa:
    ld e, h
    ld [bc], a

jr_009_66fc:
    xor c
    ld e, h
    ld [bc], a
    or l
    ld e, h

jr_009_6701:
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
    jp nc, $1448

    ret


    ld e, e
    jr z, jr_009_66fc

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

jr_009_672a:
    rst $20
    db $e3
    jp nc, $e348

    push hl
    ld c, b
    db $e3
    jp nc, $0048

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
    ld l, a
    ld h, a
    xor l
    ld l, c
    dec h
    inc [hl]
    ld [hl-], a
    cp h
    ld c, a
    db $fc
    ld l, a
    ld h, a
    db $d3
    ld l, c
    dec h
    inc [hl]
    ld e, d
    cp h
    ld c, a
    db $fc
    ld l, a
    ld h, a
    ld a, [c]
    ld l, c
    dec h
    inc [hl]
    ld b, b
    cp h
    ld c, a
    push hl
    ld l, h
    ld h, a
    ld h, a
    ld d, a
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
    jr nz, jr_009_682f

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

jr_009_6809:
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

jr_009_682f:
    ld d, c
    ld d, b
    cp h
    ld d, c
    jr nz, jr_009_6809

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
    ld h, l
    ld l, b
    ld [$2540], sp
    inc [hl]
    inc d
    cp h
    ld c, a
    db $fc
    ld a, c
    ld l, b
    ld [$2540], sp
    inc [hl]
    ld [c], a
    db $eb
    cp $07
    push bc
    ld l, b
    ret


    ld l, b
    call $d168
    ld l, b
    push de
    ld l, b
    reti


    ld l, b
    db $dd
    ld l, b
    pop hl
    ld l, b
    ld [c], a
    inc de
    cp $07
    push hl
    ld l, b
    jp hl


    ld l, b
    db $ed
    ld l, b
    pop af
    ld l, b
    push af
    ld l, b
    ld sp, hl
    ld l, b
    db $fd
    ld l, b
    ld bc, $fb69
    rlca
    and d
    ld l, b
    and a
    ld l, b
    xor h
    ld l, b
    or c
    ld l, b
    sbc l
    ld l, b
    or [hl]
    ld l, b
    cp e
    ld l, b
    ret nz

    ld l, b
    push hl
    sbc a
    ld h, a
    pop hl
    ld l, e
    push hl
    xor l
    ld h, a
    pop hl
    ld l, e
    push hl
    ld [hl], l
    ld h, a
    pop hl
    ld l, e
    push hl
    add e
    ld h, a
    pop hl
    ld l, e
    push hl
    sub c
    ld h, a
    pop hl
    ld l, e
    push hl
    cp e
    ld h, a
    push hl
    ld l, e
    push hl
    ret


    ld h, a
    push hl
    ld l, e
    push hl
    ld [hl], d
    ld h, a
    jp hl


    ld l, e
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
    pop af
    ld l, $00
    db $e4
    pop af
    inc sp
    nop
    db $e4
    pop af
    jr c, jr_009_6900

jr_009_6900:
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
    inc hl
    ld l, c
    ld [$2540], sp
    inc [hl]
    rst $20
    db $ec

jr_009_691b:
    or h
    db $ec
    and b
    db $f4
    ld h, a
    ret nc

    ld bc, $e6e0
    jr nz, jr_009_691b

    ld e, e
    ret nc

    ld [bc], a
    cp b
    ld e, b
    rst $20
    ldh [$f4], a
    ld d, l
    ret nc

    add b
    db $f4
    ld d, [hl]
    ret nc

    nop
    xor $00
    ld b, b
    nop
    nop
    jp hl


    ld a, e
    ld c, h
    nop
    db $ec
    ld bc, $87e8
    ld c, h
    db $ec
    ld [hl], a
    jp hl


    ld a, e
    ld c, h
    db $fc
    db $ec
    db $10
    jp hl


    ld a, e
    ld c, h
    ld hl, sp-$14
    ld [$7be9], sp
    ld c, h
    ldh a, [$ec]
    ld [$7be9], sp
    ld c, h
    ldh [$ec], a
    db $10
    jp hl


    ld a, e
    ld c, h
    ldh a, [$ec]
    ld [$7be9], sp
    ld c, h
    ld hl, sp-$14
    ld [$7be9], sp
    ld c, h
    db $fc
    db $ec
    db $10
    jp hl


    ld a, e
    ld c, h
    nop
    db $f4
    ld d, l
    ret nc

    nop
    db $f4
    ld d, [hl]
    ret nc

    nop
    ldh [rSB], a
    cp b
    ld e, b
    ld b, $c4
    ld d, d
    ld b, $e4
    ld d, d
    ld b, $04
    ld d, e
    ld b, $24
    ld d, e
    ld b, $c4
    ld d, d
    ld b, $e4
    ld d, d
    inc b
    ld e, h
    ld d, e
    ld b, $44
    ld d, e
    ld b, $f4
    ld d, e
    ld b, $c4
    ld d, d
    ld b, $e4
    ld d, d
    ld b, $04
    ld d, e
    ld b, $24
    ld d, e
    ld bc, $55cc
    ld bc, $5564
    ld b, $c4
    ld d, d
    ld b, $e4
    ld d, d
    ld b, $04
    ld d, e
    ld b, $24
    ld d, e
    ld b, $c4
    ld d, d
    ld b, $e4
    ld d, d
    ld b, $04
    ld d, e
    ld b, $24
    ld d, e
    jp hl


    sub [hl]
    ld e, $08
    ld b, $cc
    ld d, l
    inc b
    ld h, h
    ld d, l
    inc b
    call z, $0355
    or h
    ld d, h
    inc bc
    call z, $0355

jr_009_69d8:
    ld l, h
    ld d, h
    inc bc
    call z, $0355
    add h
    ld d, h
    inc b
    call z, $0555
    sbc h
    ld d, h
    ld b, $cc
    ld d, l
    rlca
    or h
    ld d, h
    ld [$55cc], sp
    ld [$54b4], sp
    ld [$55cc], sp
    and $11
    ld [bc], a
    ld l, h
    ld d, h
    inc bc
    add h
    ld d, h
    ld [bc], a
    sbc h
    ld d, h
    inc bc
    or h
    ld d, h
    rst $20
    inc b
    ld l, h
    ld d, h
    dec b
    add h
    ld d, h
    ld b, $9c
    ld d, h
    rlca
    or h
    ld d, h
    db $10
    ld l, h
    ld d, h
    add b
    or h
    ld d, h
    add b
    or h
    ld d, h
    inc b
    ld h, h
    ld d, l
    db $10
    or h
    ld d, h
    inc b
    ld h, h
    ld d, l
    jr nz, jr_009_69d8

    ld d, h
    ld b, $64
    ld d, l
    inc b
    or h
    ld d, h
    ld h, b
    ld h, h

jr_009_6a2d:
    ld d, l
    ld b, $7c
    ld d, l
    db $10
    db $f4
    ld d, e
    ld b, $7c
    ld d, l
    jr nc, jr_009_6a2d

    ld d, e
    and $0b
    jp hl


    sub [hl]
    ld e, $03
    ld [$54cc], sp
    ld [$540c], sp
    rst $20
    and $0b
    jp hl


    sub [hl]
    ld e, $11
    ld b, $0c
    ld d, l
    ld b, $2c
    ld d, l
    rst $20
    ld [bc], a
    ld h, h
    ld d, l
    and $0a
    ld b, $b4
    ld d, e
    ld [bc], a
    or h
    ld d, e

Jump_009_6a5f:
    ld b, $d4
    ld d, e
    ld [bc], a
    call nc, $e753
    ldh [$0a], a
    cp b
    ld e, b
    ld a, [bc]
    inc b
    ld d, [hl]
    ld [$5604], sp
    inc b
    inc b

jr_009_6a72:
    ld d, [hl]
    ldh [$0a], a
    cp b
    ld e, b
    ld a, [bc]
    ld h, h
    ld e, b
    ld b, $64
    ld e, b
    inc b
    ld h, h
    ld e, b
    ldh [rSB], a
    cp b
    ld e, b
    ld b, $c4
    ld d, d
    ld b, $e4
    ld d, d
    ld b, $04
    ld d, e
    ld b, $24
    ld d, e
    ld b, $c4
    ld d, d
    ld b, $e4
    ld d, d
    inc b
    ld e, h
    ld d, e
    ld b, $44
    ld d, e
    ld b, $44
    ld d, e
    ld b, $44
    ld d, e
    ld b, $44
    ld d, e
    ld b, $44
    ld d, e
    ld b, $44
    ld d, e
    inc b
    ld e, h
    ld d, e
    ld b, $5c
    ld d, e
    db $10
    ld e, h
    ld d, e
    ld b, $5c
    ld d, e
    db $10
    ld e, h
    ld d, e
    db $10
    ld e, h
    ld d, e
    db $10
    ld e, h
    ld d, e
    ld b, $7c
    ld d, e
    jr nc, jr_009_6b41

    ld d, e
    db $10
    sub h
    ld d, e
    db $10
    or h
    ld d, e
    inc bc
    sub h
    ld d, e
    jp hl


    sub [hl]
    ld e, $17
    ld b, $7c
    ld d, e
    ld b, $5c
    ld d, e
    ld b, $7c
    ld d, e
    jr nc, jr_009_6a72

    ld d, e
    ld [$5394], sp
    and $04
    jp hl


    sub [hl]
    ld e, $04
    ld b, $84
    ld d, a
    ld b, $a8
    ld d, a
    ld b, $cc
    ld d, a
    jp hl


    sub [hl]
    ld e, $04
    ld b, $f0
    ld d, a
    ld b, $14
    ld e, b
    ld b, $38
    ld e, b
    rst $20
    and $03
    jp hl


    sub [hl]
    ld e, $04
    inc b
    add h
    ld d, a
    inc b
    xor b
    ld d, a
    inc b
    call z, $e957
    sub [hl]
    ld e, $04
    inc b
    ldh a, [$57]
    inc b
    inc d
    ld e, b
    inc b
    jr c, jr_009_6b73

    rst $20
    jp hl


    sub [hl]
    ld e, $04
    inc b
    or h
    ld d, e
    inc b
    or h
    ld d, e
    ld [$535c], sp
    ld b, $44
    ld d, e
    jp hl


    sub [hl]
    ld e, $17
    inc b
    ld a, h
    ld d, e
    add b
    ld a, h
    ld d, e
    add b
    ld a, h
    ld d, e
    add b
    ld a, h

jr_009_6b3b:
    ld d, e
    add b
    ld a, h
    ld d, e
    and $04

jr_009_6b41:
    jp hl


    sub [hl]
    ld e, $03
    ld b, $3c
    ld d, a
    ld b, $58

jr_009_6b4a:
    ld d, a
    jp hl


    sub [hl]
    ld e, $03
    ld b, $3c
    ld d, a
    ld b, $58
    ld d, a
    jr z, jr_009_6b93

    ld d, a
    rst $20
    jp hl


    sub [hl]
    ld e, $02
    and b
    inc c
    ld d, [hl]
    add b
    inc c
    ld d, [hl]
    add b
    inc c
    ld d, [hl]
    and $0b
    ld [$56d4], sp
    ld [$56f4], sp
    ld [$5714], sp
    rst $20
    jp hl


jr_009_6b73:
    sub [hl]
    ld e, $02
    db $10
    inc c
    ld d, [hl]
    ld b, $d4
    ld d, e
    ld h, b
    ld e, h
    ld d, [hl]
    and $05
    dec c
    inc l
    ld d, [hl]
    ld [$562c], sp
    dec bc
    ld e, h
    ld d, [hl]
    ld [$565c], sp
    dec c
    ld b, h
    ld d, [hl]
    ld [$5644], sp

jr_009_6b93:
    dec bc
    ld e, h
    ld d, [hl]
    ld [$565c], sp
    rst $20
    ldh [$0a], a
    ld [hl], h
    ld d, [hl]

jr_009_6b9e:
    ld [$567c], sp
    ld a, [bc]
    add h
    ld d, [hl]
    ld [$567c], sp
    ld a, [bc]
    ld [hl], h
    ld d, [hl]
    ld [bc], a
    ld a, h
    ld d, [hl]
    jr nc, jr_009_6b3b

    ld d, [hl]
    db $10
    sub h
    ld d, [hl]
    ld b, $8c
    ld d, [hl]
    db $10
    sbc h
    ld d, [hl]
    ld b, $8c
    ld d, [hl]
    jr nc, jr_009_6b4a

    ld d, [hl]
    ld a, [bc]
    adc h
    ld d, [hl]
    add b
    adc h
    ld d, [hl]
    ld e, d
    adc h
    ld d, [hl]
    ld a, [bc]
    ld [hl], h
    ld d, [hl]
    ld [$567c], sp
    ld a, [bc]
    add h
    ld d, [hl]
    ld [$567c], sp
    ld a, [bc]
    ld [hl], h
    ld d, [hl]
    inc b
    ld a, h
    ld d, [hl]
    add b
    cp b
    ld e, b
    db $76

jr_009_6bde:
    cp b
    ld e, b
    db $10
    adc h
    ld d, [hl]
    ld [$56a4], sp
    ld [$56c4], sp
    ld [$56bc], sp
    ld [$568c], sp
    and $03
    ld b, $a4
    ld d, [hl]
    ld b, $c4

jr_009_6bf6:
    ld d, [hl]
    ld b, $bc
    ld d, [hl]
    ld b, $8c
    ld d, [hl]
    rst $20
    add b
    inc [hl]
    ld d, a
    add b
    inc [hl]
    ld d, a
    add b
    adc h
    ld d, [hl]
    add b
    adc h
    ld d, [hl]
    db $10
    ld [hl], h
    ld d, a
    or b
    ld a, h
    ld d, a
    jr nz, jr_009_6b9e

    ld d, [hl]
    and $0b
    ld a, [bc]
    ld [hl], h
    ld d, [hl]
    ld [$567c], sp
    ld a, [bc]
    add h
    ld d, [hl]
    ld [$567c], sp
    rst $20
    ldh [rP1], a
    add h
    ld e, b
    push hl
    inc hl
    ld l, h
    call nc, $e56e
    inc hl
    ld l, h
    db $e3
    ld l, [hl]
    xor $00
    ld b, d
    ld a, $6c
    jr z, @-$62

    ld e, b
    jr z, jr_009_6bde

    ld e, b
    pop hl
    dec [hl]
    ld l, h
    jp hl


    sub [hl]
    ld e, $1b
    ld [$d3cf], a
    ld bc, $6c8a
    push hl
    ld c, l
    ld l, h
    ld e, b
    ld l, a
    jr z, @-$62

    ld e, b
    jr z, jr_009_6bf6

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

jr_009_6c65:
    ld e, b
    jp hl


    sub [hl]
    ld e, $0f
    rlca
    xor l
    ld e, e
    ld a, [bc]

jr_009_6c6e:
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
    sub e
    ld l, h
    xor d
    ld l, a
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
    ld a, [$2f64]
    ld c, b
    dec h
    inc [hl]
    ld [c], a
    push af
    xor $00
    ld b, d
    cp h
    ld l, h
    jr z, jr_009_6c6e

    ld e, b
    jr z, jr_009_6c65

    ld e, b
    ld [c], a
    ld sp, hl
    ld [$d3cf], a
    nop
    jp $e06c


    and $02
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
    ld de, $106d
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
    jp hl


    sub [hl]
    ld e, $0a
    db $e3
    ld b, b
    ld l, l
    db $fc
    ld h, b
    ld l, l
    rla
    ld [hl], c
    ld hl, $e334
    ld b, b
    ld l, l
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
    ld [hl], d
    ld c, c
    db $f4
    cp a
    db $d3
    add c
    nop
    adc c
    ld l, b
    nop
    xor c
    ld h, h
    ld c, b
    ld a, c
    ld l, b
    and $02
    ld bc, $67b9
    ld bc, $6879
    rst $20
    jr z, @-$45

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

jr_009_6d89:
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
    and $03
    ld [$6469], sp
    ld [$6429], sp
    rst $20
    nop
    ld l, c
    ld h, h
    add sp, $5c
    ld c, c
    add sp, -$4e
    jr nc, jr_009_6d89

    ld l, l
    reti


    ld l, l
    db $eb
    cp l
    db $d3
    db $ec
    ld l, l
    db $ec
    ld l, l
    inc b
    ld l, [hl]
    inc b
    ld l, [hl]
    inc b
    ld l, [hl]
    inc b
    ld l, [hl]
    inc b
    ld l, [hl]
    db $ec
    ld l, l
    db $eb
    cp l
    db $d3
    db $f4
    ld l, l
    db $f4
    ld l, l
    db $fc
    ld l, l
    db $fc
    ld l, l
    db $fc
    ld l, l
    db $fc
    ld l, l
    db $fc
    ld l, l
    db $f4
    ld l, l
    inc d
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
    jr nc, @+$15

    ld l, [hl]
    dec de
    ld l, [hl]
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
    jr nc, jr_009_6e51

    ld l, [hl]
    ld [hl-], a
    ld l, [hl]
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

jr_009_6e51:
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
    add c
    ld c, c
    dec l
    ld b, e
    ld hl, $e334
    rra
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
    sub [hl]
    ld l, [hl]
    cp h
    ld l, [hl]
    and d
    ld l, [hl]
    cp h
    ld l, [hl]
    and $01
    db $10
    ld [hl], l
    ld e, [hl]
    db $10
    ld a, l
    ld e, [hl]
    rst $20
    pop hl
    xor e
    ld l, [hl]
    and $03
    db $10
    ld [hl], l
    ld e, [hl]
    db $10
    ld a, l
    ld e, [hl]
    rst $20
    push hl
    or b
    ld l, [hl]
    ld [$e640], sp
    ld [$8d03], sp
    ld e, [hl]
    inc bc
    ld [hl], l
    ld e, [hl]
    rst $20
    db $e3
    sbc $61
    push hl
    pop hl
    ld b, l
    call nc, $fb42
    inc bc
    bit 5, [hl]
    pop af
    ld l, [hl]
    rst $10
    ld l, [hl]
    pop af
    ld l, [hl]
    and $01
    db $10
    sbc l
    ld e, [hl]
    db $10
    and l
    ld e, [hl]
    rst $20
    pop hl
    ldh [$6e], a
    and $03
    db $10
    sbc l
    ld e, [hl]
    db $10
    and l
    ld e, [hl]
    rst $20
    push hl
    push hl
    ld l, [hl]
    ld [$e640], sp
    ld [$b503], sp
    ld e, [hl]
    inc bc
    sbc l
    ld e, [hl]
    rst $20
    db $e3
    ccf
    ld h, d
    push hl
    ld [$d745], a
    ld b, d
    nop
    cp b
    ld e, b
    db $fc
    cp l
    ld l, a
    ld e, d
    db $76
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
    and $09
    ld b, $c0
    ld b, h
    ld b, $b8
    ld b, h
    rst $20
    inc b
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
    cp l
    ld l, a
    ld [hl], b
    db $76
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
    and $09
    ld b, $d0
    ld b, h
    ld b, $c8
    ld b, h
    rst $20
    inc b
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
    cp l
    ld l, a
    ld [hl], b
    db $76
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
    and $09
    ld b, $00
    ld b, l
    ld b, $08
    ld b, l
    rst $20
    inc b
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
    cp l
    ld l, a
    ld e, d
    db $76
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
    and $09
    ld b, $f0
    ld b, h
    ld b, $f8
    ld b, h
    rst $20
    inc b
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
    dec a
    ld [hl], b
    add c
    ld [hl], a
    adc h
    inc [hl]
    pop hl
    jp hl


    ld l, a
    db $fc
    dec a
    ld [hl], b
    add c
    ld [hl], a
    adc h
    inc [hl]
    pop hl
    jp hl


    ld l, a
    db $fc
    dec a
    ld [hl], b
    adc d
    ld [hl], a
    adc h
    inc [hl]
    pop hl
    jp hl


    ld l, a
    db $fc
    dec a
    ld [hl], b
    sub e
    ld [hl], a
    adc h
    inc [hl]
    and $05
    inc b
    cp b
    ld b, h
    inc b
    ret nz

    ld b, h
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
    ld a, [bc]
    cp b
    ld b, h
    db $fc
    daa
    ld [hl], b
    ld l, h
    ld [hl], a
    cp c
    inc [hl]
    jp hl


    sub [hl]
    ld e, $04
    ld a, [bc]
    cp b
    ld b, h
    inc d
    or b
    ld b, h
    and $05
    inc b
    cp b
    ld b, h
    inc b
    ret nz

    ld b, h
    rst $20
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
    pop hl
    ld [hl], d
    ld b, l
    ld [$44d0], sp
    ld [$44c8], sp
    ld [c], a
    ld sp, hl
    ld [$44f0], sp
    ld [$44f8], sp
    ld [c], a
    ld sp, hl
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
    ld h, h
    ld [hl], b
    db $e3
    ld h, e
    ld c, e
    db $f4
    adc $d3
    nop

jr_009_7057:
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
    ld [hl], b
    ld [hl], b
    ld [wCurStageScreen], a
    ld [$708c], sp
    jp hl


    or h
    ld e, $ff
    jp hl


    sub [hl]
    ld e, $1d
    db $e3
    rra
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
    ld h, e
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
    jr nc, jr_009_7057

    ld [hl], b
    or l
    ld [hl], b
    ld [$47c8], sp
    ld [$47f8], sp
    ld [c], a
    ld sp, hl
    ld [$47e0], sp
    ld [$4810], sp
    ld [c], a
    ld sp, hl
    inc b
    jr z, jr_009_7108

    inc c
    ld h, b
    ld c, b
    ld a, [bc]
    jr z, jr_009_710e

    ld [c], a
    or $04
    ld b, h
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
    cp $70
    rla
    ld a, b
    nop
    ret z

    ld c, b
    jp hl


    sub [hl]
    ld e, $17
    push hl
    ld a, [bc]
    ld [hl], c

jr_009_7108:
    dec [hl]
    ld a, b
    nop
    ldh [rOBP0], a
    db $10

jr_009_710e:
    cp b
    ld c, b
    jp hl


    sub [hl]
    ld e, $06
    ld b, b
    sbc b
    ld c, b
    db $fc
    ld e, c
    ld [hl], h
    ld [hl], h
    ld a, d
    ld c, b
    ld [hl], $fc
    ld e, c
    ld [hl], h
    add c
    ld a, d
    ld c, b
    ld [hl], $00
    cp b
    ld c, b
    jp hl


    sub [hl]
    ld e, $22
    push hl
    ld sp, $4a71
    ld a, c
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
    ld c, a
    ld [hl], c
    ld [$d3d2], a
    ld [hl-], a
    add a
    ld [hl], c
    push af
    jp nc, $e2d3

    ld [$ade8], a
    ld c, e
    db $f4
    jp nc, $00d3

    ld bc, $4968
    ld [$d3d2], a
    rst $38
    ld l, d
    ld [hl], c
    ld [$d3d2], a
    ld [hl-], a
    add a
    ld [hl], c
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
    ld [hl], a
    ld [hl], c

jr_009_7175:
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
    and b
    ld [hl], b
    ld a, b
    ld a, c
    jp hl


    sub [hl]
    ld e, $22
    push hl
    sbc h
    ld [hl], c
    ld h, c
    ld a, c
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
    cp d
    ld [hl], c
    ld [$d3d2], a
    ld [hl-], a
    ld a, [c]
    ld [hl], c
    push af
    jp nc, $e2d3

    ld [$ade8], a
    ld c, e
    db $f4
    jp nc, $00d3

    ld bc, $4984
    ld [$d3d2], a
    rst $38
    push de
    ld [hl], c
    ld [$d3d2], a
    ld [hl-], a
    ld a, [c]
    ld [hl], c
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
    ld [c], a
    ld [hl], c
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
    jr c, jr_009_7175

    ld c, c
    db $ec
    inc d
    add sp, $21
    ld sp, $3604
    push hl
    and b
    ld [hl], b
    ld a, b
    ld a, c
    db $f4
    call $00d3
    db $eb
    cp l
    db $d3
    ld d, $72
    ccf
    ld [hl], d
    rrca
    ld [hl], d
    sbc h
    ld [hl], d
    ld [hl], e
    ld [hl], d
    add sp, -$4e
    jr nc, jr_009_7252

    ld [hl], d
    sbc h
    ld [hl], d
    push hl
    dec de
    ld [hl], d
    ld [$fc79], a
    jr c, jr_009_7291

    ld [$3679], a
    ld [hl], $10
    jr nc, jr_009_726f

    ld a, [bc]
    jr z, jr_009_7270

    db $fc
    ld e, c
    ld [hl], h
    ld e, d
    ld a, d
    ld c, b
    ld [hl], $18
    ld [hl], b
    ld c, d
    ld a, [bc]
    jr z, @+$4a

    db $10
    jr nc, jr_009_7282

    push hl
    dec a
    ld [hl], d
    pop de
    ld a, c
    db $ec
    ld a, [bc]
    add sp, $21
    ld sp, $360d
    push hl
    ld c, c
    ld [hl], d
    cp a
    ld a, b
    db $10
    add sp, $49
    add sp, $21
    ld sp, $3604
    db $fc

jr_009_7252:
    jr c, @+$75

    jp nz, $3678

    ld [hl], $10
    jr nc, jr_009_72a5

    jp hl


    sub [hl]
    ld e, $1c
    ld a, [bc]
    jr z, jr_009_72aa

    jr jr_009_72d4

    ld c, d
    ld a, [bc]
    jr z, jr_009_72b0

    db $10
    jr nc, jr_009_72b5

    db $10
    add sp, $49
    push hl

jr_009_726f:
    ld l, e

jr_009_7270:
    ld [hl], d
    pop de
    ld a, c
    push hl
    ld a, b
    ld [hl], d
    ld [$fc79], a
    cp e
    ld [hl], e
    ld [$3679], a
    ld [hl], $10
    ld d, b
    ld c, d

jr_009_7282:
    ld a, [bc]
    ld b, h
    ld c, b
    db $fc
    ld e, c
    ld [hl], h
    ld h, a
    ld a, d
    ld c, b
    ld [hl], $18
    adc h
    ld c, d
    ld a, [bc]
    ld b, h

jr_009_7291:
    ld c, b
    db $10
    ld d, b
    ld c, d
    push hl
    sbc d

jr_009_7297:
    ld [hl], d
    pop de
    ld a, c
    db $ec
    ld h, h
    push hl
    and c
    ld [hl], d
    cp a
    ld a, b
    db $10
    inc c
    ld c, d
    db $fc

jr_009_72a5:
    cp e
    ld [hl], e
    jp nz, $3678

jr_009_72aa:
    ld [hl], $10
    ld d, b
    ld c, d
    jp hl


    sub [hl]

jr_009_72b0:
    ld e, $1c
    ld a, [bc]
    ld b, h
    ld c, b

jr_009_72b5:
    jr @-$72

    ld c, d
    ld a, [bc]
    ld b, h
    ld c, b
    db $10
    ld d, b
    ld c, d
    ld [$4a0c], sp
    push hl
    cp [hl]
    ld [hl], d
    pop de
    ld a, c
    add sp, -$4e
    jr nc, jr_009_7297

    ld [hl], d
    jp nc, $1e72

    ld hl, sp+$4a
    ld [c], a
    inc b
    ld e, $14

jr_009_72d4:
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
    add hl, hl
    ld [hl], e
    ld [$2140], sp
    inc [hl]
    db $fc
    add c
    ld c, c
    ld [$2140], sp
    inc [hl]
    db $f4
    cp a
    db $d3
    add c
    add sp, -$4e
    jr nc, @+$01

    ld [hl], d
    inc d
    ld [hl], e
    jp hl


    sub [hl]
    ld e, $00
    push hl
    ld [$3773], sp
    ld a, d
    inc b
    ld hl, sp+$4a
    db $fc
    nop
    ld c, e
    cpl
    ld c, b
    ld hl, $e234
    push af
    jp hl


    sub [hl]
    ld e, $00
    push hl
    dec e
    ld [hl], e
    ld l, $7a
    inc b
    inc d
    ld c, e
    db $fc
    nop
    ld c, e
    cpl
    ld c, b
    ld hl, $e234
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
    ld a, $74
    adc [hl]
    ld a, d
    jr z, jr_009_7375

    db $10
    xor b
    ld c, d
    db $fc
    ld b, d
    ld [hl], h
    sub h
    ld a, d
    jr z, jr_009_737f

    ld [bc], a
    or b
    ld c, d
    db $fc
    ld b, d
    ld [hl], h
    sbc d
    ld a, d
    jr z, jr_009_7389

    ld [bc], a
    cp b
    ld c, d
    db $fc
    ld b, d
    ld [hl], h
    and b
    ld a, d
    jr z, jr_009_7393

    ld [bc], a
    ret nz

    ld c, d
    db $fc
    ld b, d
    ld [hl], h
    and [hl]
    ld a, d
    jr z, jr_009_739d

    ld [bc], a
    ret z

    ld c, d
    db $fc
    ld b, d
    ld [hl], h
    xor h
    ld a, d
    jr z, jr_009_73a7

    ld [bc], a
    ret nc

    ld c, d
    db $fc

jr_009_7375:
    ld b, [hl]
    ld [hl], h
    or d
    ld a, d
    cpl
    ld [hl], $18
    ret c

    ld c, d
    db $fc

jr_009_737f:
    ld b, d
    ld [hl], h
    xor h
    ld a, d
    jr z, @+$38

    ld [bc], a
    ret nc

    ld c, d
    db $fc

jr_009_7389:
    ld b, d
    ld [hl], h
    and [hl]
    ld a, d
    jr z, jr_009_73c5

    ld [bc], a
    ret z

    ld c, d
    db $fc

jr_009_7393:
    ld b, d
    ld [hl], h
    and b
    ld a, d
    jr z, jr_009_73cf

    ld [bc], a
    ret nz

    ld c, d
    db $fc

jr_009_739d:
    ld b, d
    ld [hl], h
    sbc d
    ld a, d
    jr z, jr_009_73d9

    ld [bc], a
    cp b
    ld c, d
    db $fc

jr_009_73a7:
    ld b, d
    ld [hl], h
    sub h
    ld a, d
    jr z, jr_009_73e3

    ld [bc], a
    or b
    ld c, d
    db $fc
    ld a, $74
    adc [hl]
    ld a, d
    jr z, jr_009_73ed

    db $10
    xor b
    ld c, d
    ldh [$fc], a
    ld a, $74
    and b
    ld a, d
    jr z, jr_009_73f8

    db $10
    ret nz

    ld c, d

jr_009_73c5:
    db $fc
    ld b, d
    ld [hl], h
    sbc d
    ld a, d
    jr z, jr_009_7402

    ld [bc], a
    cp b
    ld c, d

jr_009_73cf:
    db $fc
    ld b, d
    ld [hl], h
    sub h
    ld a, d
    jr z, jr_009_740c

    ld [bc], a
    or b
    ld c, d

jr_009_73d9:
    db $fc
    ld b, d
    ld [hl], h
    adc [hl]
    ld a, d
    jr z, jr_009_7416

    ld [bc], a
    xor b
    ld c, d

jr_009_73e3:
    db $fc
    ld b, d
    ld [hl], h
    cp b
    ld a, d
    jr z, jr_009_7420

    ld [bc], a
    ldh [rWY], a

jr_009_73ed:
    db $fc
    ld b, d
    ld [hl], h
    cp [hl]
    ld a, d
    jr z, jr_009_742a

    ld [bc], a
    add sp, $4a
    db $fc

jr_009_73f8:
    ld b, [hl]
    ld [hl], h
    call nz, $2f7a
    ld [hl], $18
    ldh a, [rWY]
    db $fc

jr_009_7402:
    ld b, d
    ld [hl], h
    cp [hl]
    ld a, d
    jr z, @+$38

    ld [bc], a
    add sp, $4a
    db $fc

jr_009_740c:
    ld b, d
    ld [hl], h
    cp b
    ld a, d
    jr z, jr_009_7448

    ld [bc], a
    ldh [rWY], a
    db $fc

jr_009_7416:
    ld b, d
    ld [hl], h
    adc [hl]
    ld a, d
    jr z, jr_009_7452

    ld [bc], a
    xor b
    ld c, d
    db $fc

jr_009_7420:
    ld b, d
    ld [hl], h
    sub h
    ld a, d
    jr z, @+$38

    ld [bc], a
    or b
    ld c, d
    db $fc

jr_009_742a:
    ld b, d
    ld [hl], h
    sbc d
    ld a, d
    jr z, jr_009_7466

    ld [bc], a
    cp b
    ld c, d
    db $fc
    ld a, $74
    and b
    ld a, d
    jr z, jr_009_7470

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

jr_009_7448:
    ld e, b
    ldh [rP1], a
    cp b
    ld e, b
    pop af
    nop
    ld a, [$0be1]

jr_009_7452:
    ld c, c
    pop af
    nop
    ld b, $e1
    dec bc
    ld c, c
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

jr_009_7466:
    inc b
    or l
    ld e, h
    inc b
    pop bc
    ld e, h
    inc b
    call $045c

jr_009_7470:
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
    ld a, h
    ld [hl], h
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_009_7f31

jr_009_7f31:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
