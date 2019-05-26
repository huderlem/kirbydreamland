SECTION "ROM Bank $00c", ROMX[$4000], BANK[$c]

    xor $1a
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rNR23]
    nop
    inc a
    ld [hl], a
    ld a, d
    pop hl
    ld c, $47
    ldh a, [$08]
    ld d, d
    push hl
    jr jr_00c_4066

    inc e
    ld b, b
    ld bc, $0000
    db $fc
    cp [hl]
    ld b, e
    ldh [rSCY], a
    dec h
    inc [hl]
    ld a, [bc]
    ld a, d
    add h
    ld a, [bc]
    ld a, b
    ld [hl], h
    pop hl
    ld c, b
    ld b, a
    ldh a, [rLY]
    ld [$7628], sp
    ld a, d
    jp hl


    sub [hl]
    ld e, $08
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
    ldh [$e5], a
    dec de
    ld c, h
    ld e, e
    ld b, b
    ldh a, [rNR34]
    add [hl]
    ld a, [bc]
    ld [hl], l
    adc e
    db $fc
    dec bc
    ld c, c
    ld d, a
    ld b, a

jr_00c_4066:
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
    ld [$8a75], sp
    ld [$8975], sp
    ld [$8875], sp
    ld [$8775], sp
    ld [$8675], sp
    ld [$8575], sp
    ld [$8475], sp
    ld [$7475], sp
    ld [$7575], sp
    ld [$7675], sp
    ld [$7775], sp
    ld [$7875], sp
    ld [$7975], sp
    ld [$7a75], sp
    jp hl


    sub [hl]
    ld e, $1e
    push hl
    ld a, [hl+]
    ld c, h
    or b
    ld b, b
    ld [$8975], sp
    ld [$8575], sp
    ld [$7575], sp
    ld [$7975], sp
    pop hl
    ld c, b
    ld b, a
    ldh a, [rHDMA1]
    ld c, b
    push hl
    jr @+$4e

    rst $00
    ld b, b
    ld bc, $0000
    db $fc
    nop
    ld c, e
    ld a, a
    ld b, a
    dec h
    inc [hl]
    db $fc
    nop
    ld c, e
    adc e
    ld b, a
    dec h
    inc [hl]
    db $fc
    nop
    ld c, e
    sub a
    ld b, a
    dec h
    inc [hl]
    db $fc
    nop
    ld c, e
    and e
    ld b, a
    dec h
    inc [hl]
    db $fc
    nop
    ld c, e
    xor a
    ld b, a
    dec h
    inc [hl]
    db $fc
    nop
    ld c, e
    db $d3
    ld b, a
    dec h
    inc [hl]
    db $fc
    nop
    ld c, e
    cp e
    ld b, a
    dec h
    inc [hl]
    db $fc
    nop
    ld c, e
    rst $00
    ld b, a
    dec h
    inc [hl]
    db $fc
    jr c, jr_00c_4146

    ld [$2540], sp
    inc [hl]
    jp hl


    sub [hl]
    ld e, $15
    ld [$8800], sp
    ld [$8600], sp
    ld [$8400], sp
    jp hl


    sub [hl]
    ld e, $1c
    pop hl
    ld c, b
    ld b, a
    ldh a, [$58]
    ld a, b
    push hl
    pop af
    dec d
    dec h
    ld b, c
    ld bc, $0000
    add sp, -$3f
    ld c, d
    ld sp, hl
    sub d
    rst $38
    di
    nop
    db $f4
    db $dd
    db $d3
    ld bc, $0000
    nop
    ld [$8a00], sp
    ld [$8800], sp
    ld [$8500], sp
    ld [$7500], sp
    ld [$7900], sp

jr_00c_4146:
    nop
    nop
    ld a, e
    ld sp, hl
    sub h
    rst $38
    rst $38
    jr nz, @-$18

    inc bc
    ld bc, $8c8a
    ld bc, $8a7a
    rst $20
    add sp, -$3f
    ld c, d
    ld sp, hl
    sub h
    rst $38
    rst $18
    nop
    nop
    nop
    nop
    ld sp, hl
    sub h
    rst $38
    rst $38
    jr nz, @-$18

    inc b
    ld bc, $798a
    ld bc, $797a
    rst $20
    add sp, -$3f
    ld c, d
    ld sp, hl
    sub h
    rst $38
    rst $18
    nop
    nop
    nop
    nop
    ld sp, hl
    sub h
    rst $38
    rst $38
    jr nz, @-$15

    sub [hl]
    ld e, $15
    ld h, h
    nop
    nop
    jp hl


    sub [hl]
    ld e, $1e
    pop af
    nop
    cp $40
    nop
    add h
    nop
    nop
    nop
    ld a, [c]
    ld bc, $008a
    add sp, -$2b
    ld c, c
    ld [$d3bd], a
    ld bc, $41a3
    ld [c], a
    di
    jp hl


    sub [hl]
    ld e, $07

jr_00c_41a7:
    push hl
    add sp, $43
    xor h
    ld b, c
    db $f4
    push af
    db $d3
    ld e, d
    ld sp, hl
    and b
    pop de
    rst $38
    jr nz, jr_00c_41a7

    ld [$fc00], sp
    jr c, jr_00c_41fc

    ld [$2140], sp
    inc [hl]
    ld [$8a74], sp
    ld [$8774], sp
    ld [$8474], sp
    di
    ld sp, hl
    sub h
    rst $38
    rst $18
    nop
    add sp, -$3f
    ld c, d
    add sp, $48
    dec a
    add sp, $6d
    ld c, e
    ld sp, hl
    sub b
    rst $38
    rst $38
    ld [$0000], sp
    nop
    ld a, [c]
    ld bc, $007a
    add sp, -$2b
    ld c, c
    ld [$d3bd], a
    ld [bc], a
    xor $41
    ld [c], a
    di
    jp hl


    sub [hl]
    ld e, $07

jr_00c_41f2:
    push hl
    add sp, $43
    rst $30
    ld b, c
    db $f4
    push af
    db $d3
    ld e, d
    ld sp, hl

jr_00c_41fc:
    and b
    pop de
    rst $38
    jr nz, jr_00c_41f2

    ld hl, sp+$00
    db $fc
    jr c, jr_00c_4247

    ld [$2140], sp
    inc [hl]
    ld [$8a84], sp
    ld [$8784], sp
    ld [$8484], sp
    di
    ld sp, hl
    sub h
    rst $38
    rst $18
    nop
    add sp, -$3f
    ld c, d
    add sp, $48
    dec a
    add sp, $6d
    ld c, e
    ld sp, hl
    sub b
    rst $38
    rst $38
    ld [$0000], sp
    nop
    ld hl, sp-$6e
    rst $38
    jr nz, jr_00c_4269

    ld b, d
    ld [$008c], sp
    ld [$008a], sp
    ld a, [bc]
    add [hl]
    nop
    ldh [$08], a
    ld a, h
    nop
    ld [$007a], sp
    ld a, [bc]
    halt
    nop
    ldh [$f7], a
    sub c
    rst $38

jr_00c_4247:
    ld bc, $426a
    ld hl, sp-$6e
    rst $38
    jr nz, jr_00c_42ac

    ld b, d
    db $10
    adc e
    nop
    ld [$0087], sp
    ld [$0084], sp
    ld [$0000], sp
    ldh [rNR10], a
    ld a, e
    nop
    ld [$0077], sp
    ld [$0074], sp
    ld [$0000], sp

jr_00c_4269:
    ldh [$f8], a
    sub d
    rst $38
    jr nz, jr_00c_42e2

    ld b, d
    nop
    adc h
    nop
    nop
    ld a, h
    nop
    ldh a, [rLCDC]
    ld a, b
    push hl
    pop af
    dec d
    ld a, [hl]
    ld b, d
    ld bc, $0000
    add sp, -$3f
    ld c, d
    ld sp, hl
    sub h
    rst $38
    ei
    nop
    nop
    nop
    nop
    ld [bc], a
    ld a, h
    nop
    inc b
    nop
    nop
    ld [bc], a
    adc h
    nop
    nop
    nop
    nop
    ld [bc], a
    ld a, d
    ld a, d
    inc b
    nop
    nop
    ld [bc], a
    adc d
    adc d
    nop
    nop
    nop
    ld [bc], a
    nop
    ld a, h
    inc b
    nop
    nop
    ld [bc], a
    nop

jr_00c_42ac:
    adc h
    nop
    nop
    nop
    ld [bc], a
    adc d
    ld a, d
    inc b
    nop
    nop
    ld [bc], a
    ld a, d
    adc d
    nop
    nop
    nop
    ld [bc], a
    adc h
    nop
    inc b
    nop
    nop
    ld [bc], a
    ld a, h
    nop
    nop
    nop
    nop
    nop
    add l
    nop
    nop
    ld [hl], l
    nop
    nop
    add [hl]
    nop
    nop
    halt
    nop
    nop
    add a
    nop
    nop
    ld [hl], a
    nop
    nop
    adc b
    nop
    nop
    ld [hl], a
    add a
    nop
    ld a, b

jr_00c_42e2:
    nop
    nop
    ld [hl], a
    ld [hl], a
    nop
    adc c
    nop
    nop
    ld a, c
    nop
    nop
    nop
    adc c
    nop
    ld a, b
    adc b
    nop
    adc b
    adc b
    nop
    adc d
    nop
    nop
    ld a, d
    nop
    add sp, -$4e
    jr nc, jr_00c_430a

    ld b, e
    ld [$f843], sp
    sub d
    rst $38
    jr nz, jr_00c_4312

    ld b, e
    nop
    adc e

jr_00c_430a:
    nop

jr_00c_430b:
    nop
    ld a, e
    nop
    nop
    nop
    adc e
    nop

jr_00c_4312:
    adc d
    adc d
    nop
    adc d
    ld a, d
    nop
    adc h
    nop
    nop
    ld a, h
    nop
    ld bc, $0000
    add sp, -$4d
    ld c, d
    db $ec
    inc e
    add sp, -$46
    ld c, d
    db $ec
    inc b
    pop hl
    jr nz, jr_00c_4370

    dec b
    nop
    nop
    add hl, bc
    nop
    ld [hl], l
    add sp, -$46
    ld c, d
    add hl, bc
    nop
    ld [hl], a
    add sp, -$4d
    ld c, d
    inc b
    nop
    ld [hl], l
    add sp, $21
    ld sp, $346b
    ld [c], a
    dec h
    dec b
    nop
    nop
    add hl, bc
    nop
    add l
    add hl, bc
    nop
    add a
    add sp, -$46
    ld c, d
    add hl, bc
    nop
    add l
    add sp, -$4d
    ld c, d
    dec b
    nop
    nop
    add hl, bc
    nop
    ld [hl], l
    add sp, -$46
    ld c, d
    add hl, bc
    nop
    ld [hl], a
    add sp, -$4d
    ld c, d
    inc b
    nop
    ld [hl], l
    dec b
    nop
    ld [hl], l
    pop hl
    ld b, [hl]
    ld b, e

jr_00c_4370:
    db $f4
    cp a

jr_00c_4372:
    db $d3
    ld bc, $94f9
    rst $38
    rst $38
    jr nz, jr_00c_4372

    sub d
    rst $38
    jr nz, jr_00c_430b

    ld b, e
    pop af
    nop
    ld b, $02
    adc d
    nop
    ld [bc], a
    adc b
    nop
    inc b
    add [hl]
    nop
    ld [c], a
    ld a, [bc]
    ld [bc], a
    ld a, d
    nop
    ld [bc], a
    ld a, b
    nop
    inc b
    halt
    nop
    nop
    nop
    nop
    add sp, -$0b
    ld c, b
    db $eb
    cp l
    db $d3
    cp a
    ld b, e
    jp $c743


    ld b, e
    bit 0, e
    rst $08
    ld b, e
    db $d3

jr_00c_43aa:
    ld b, e
    rst $10
    ld b, e
    db $db
    ld b, e
    rst $18
    ld b, e
    db $e3
    ld b, e
    rst $20
    ld b, e
    db $eb
    ld b, e
    rst $28
    ld b, e
    di
    ld b, e
    rst $30
    ld b, e

jr_00c_43bd:
    ei
    ld b, e
    rlca
    nop
    ret nc

    ldh [rTAC], a
    ld [de], a
    push de
    ldh [rTAC], a
    jr nz, jr_00c_43aa

    ldh [rTAC], a
    dec hl
    xor $e0
    rlca
    jr nc, jr_00c_43d2

jr_00c_43d2:
    ldh [rTAC], a
    dec hl
    ld [de], a
    ldh [rTAC], a
    jr nz, jr_00c_43fa

    ldh [rTAC], a
    ld [de], a
    dec hl
    ldh [rTAC], a
    nop
    jr nc, @-$1e

    rlca
    xor $2b
    ldh [rTAC], a
    ldh [rNR41], a
    ldh [rTAC], a
    push de
    ld [de], a
    ldh [rTAC], a
    ret nc

    nop
    ldh [rTAC], a
    push de
    xor $e0
    rlca
    ldh [$e0], a

jr_00c_43fa:
    ldh [rTAC], a
    xor $d5
    ldh [$0a], a
    add l
    nop
    ld e, $86
    nop
    ld a, [bc]
    add l
    nop
    ld a, [bc]
    ld [hl], l
    nop
    ld e, $76
    nop
    ld a, [bc]
    ld [hl], l
    nop
    pop hl
    rst $38
    ld b, e
    ld [$0088], sp
    ld [$008a], sp
    ld [$0088], sp
    ld [$0000], sp
    ld [$0078], sp
    ld [$007a], sp
    ld [$0078], sp
    ld [$0000], sp
    pop hl
    inc d
    ld b, h
    db $10
    add [hl]
    nop
    jr nc, jr_00c_43bd

    nop
    db $10
    add [hl]
    nop
    db $10
    halt
    nop
    jr nc, jr_00c_44b6

    nop
    db $10
    halt
    nop
    pop hl
    cpl
    ld b, h
    ld a, [bc]
    nop
    ld [hl], l
    ld a, [bc]
    nop
    ld [hl], a
    ld a, [bc]
    nop
    ld [hl], l
    ld a, [bc]
    nop
    add l
    ld a, [bc]
    nop
    add a
    ld a, [bc]
    nop
    add l
    pop hl
    ld b, h
    ld b, h
    ld a, [bc]
    nop
    nop
    dec b
    nop
    ld [hl], a
    rrca
    nop
    ld a, c
    dec b
    nop
    ld [hl], a
    ld a, [bc]
    nop
    nop
    dec b
    nop
    add a
    rrca
    nop
    adc c
    dec b
    nop
    add a
    pop hl
    ld e, c
    ld b, h
    rrca
    nop
    nop
    dec b
    nop
    ld [hl], a
    ld e, $00
    ld a, c
    dec b
    nop
    ld [hl], a
    rrca
    nop
    nop
    dec b
    nop
    add a
    ld e, $00
    adc c
    dec b
    nop
    add a
    pop hl
    ld [hl], h
    ld b, h
    dec b
    nop
    ld [hl], a
    ld c, e
    nop
    ld a, b
    dec b
    nop
    ld [hl], a
    dec b
    nop
    add a
    ld c, e
    nop
    adc b
    dec b
    nop
    add a
    pop hl
    adc a
    ld b, h
    add sp, -$0b
    ld c, b
    db $eb
    cp l
    db $d3
    jp z, $ca44

    ld b, h
    reti


    ld b, h
    reti


    ld b, h
    add sp, $44
    rst $30
    ld b, h

jr_00c_44b6:
    rst $30
    ld b, h
    ld b, $45
    ld b, $45
    ld b, $45
    rst $30
    ld b, h
    rst $30
    ld b, h
    add sp, $44
    reti


    ld b, h
    reti


    ld b, h
    jp z, $0644

    add [hl]
    adc d
    ld b, $86
    add a
    ld b, $86
    add h
    ld b, $86
    nop
    pop hl
    and h
    ld b, h
    ld b, $88
    db $76
    ld b, $88
    adc d
    ld b, $88
    add h
    ld b, $88
    nop
    pop hl
    and h
    ld b, h
    ld b, $88
    ld a, b
    ld b, $88
    nop
    ld b, $88
    adc b
    ld b, $88
    nop
    pop hl
    and h
    ld b, h
    ld b, $88
    add [hl]
    ld b, $88
    ld a, d
    ld b, $88
    ld [hl], h
    ld b, $88
    nop
    pop hl
    and h
    ld b, h
    ld b, $86
    ld a, d
    ld b, $86
    ld [hl], a
    ld b, $86
    ld [hl], h
    ld b, $86
    nop
    pop hl
    and h
    ld b, h
    add sp, -$0b
    ld c, b
    db $eb
    cp l
    db $d3
    dec sp
    ld b, l
    dec sp
    ld b, l
    ld c, d
    ld b, l
    ld c, d
    ld b, l
    ld e, c
    ld b, l
    ld l, b
    ld b, l
    ld l, b
    ld b, l
    ld [hl], a
    ld b, l
    ld [hl], a
    ld b, l
    ld [hl], a
    ld b, l
    ld l, b
    ld b, l
    ld l, b
    ld b, l
    ld e, c
    ld b, l
    ld c, d
    ld b, l
    ld c, d
    ld b, l
    dec sp
    ld b, l
    ld b, $76
    adc d
    ld b, $76
    add a
    ld b, $76
    add h
    ld b, $76
    nop
    pop hl
    dec d

Jump_00c_4549:
    ld b, l
    ld b, $78
    db $76
    ld b, $78
    adc d
    ld b, $78
    add h
    ld b, $78
    nop
    pop hl
    dec d
    ld b, l
    ld b, $78
    ld a, b
    ld b, $78
    nop
    ld b, $78
    adc b
    ld b, $78
    nop
    pop hl
    dec d
    ld b, l
    ld b, $78
    add [hl]
    ld b, $78
    ld a, d
    ld b, $78
    ld [hl], h
    ld b, $78
    nop
    pop hl
    dec d
    ld b, l
    ld b, $76
    ld a, d
    ld b, $76
    ld [hl], a
    ld b, $76
    ld [hl], h
    ld b, $76
    nop
    pop hl
    dec d
    ld b, l
    ld b, $86
    add h
    ld b, $88
    add [hl]
    ld b, $86
    ld [hl], h
    ld b, $78
    db $76
    ld b, $76
    add h
    ld b, $76
    add [hl]
    ld b, $86
    ld [hl], h
    ld b, $88
    db $76
    ld b, $86
    add h
    ld b, $78
    add [hl]
    ld b, $76
    ld [hl], h
    ld b, $76
    db $76
    db $e4
    ld b, $00
    ld a, b
    ld b, $77
    ld [hl], a
    ld b, $78
    nop
    ld b, $77
    add a
    ld b, $00
    adc b
    ld b, $88
    add a
    ld b, $8a
    nop
    ld b, $88
    ld [hl], a
    pop hl
    xor e
    ld b, l
    dec b
    nop
    nop
    inc b
    nop
    ld [hl], l
    inc b
    nop
    db $76
    inc b
    nop
    ld [hl], a
    inc h
    nop
    ld a, b
    inc b
    nop
    ld [hl], a
    inc b
    nop
    db $76
    inc b
    nop
    ld [hl], l
    dec b
    nop
    nop
    inc b
    nop
    add l
    inc b
    nop
    add [hl]
    inc b
    nop
    add a
    inc h
    nop
    adc b
    inc b
    nop
    add a
    inc b
    nop
    add [hl]
    inc b
    nop
    add l
    pop hl
    add $45
    stop
    adc c
    stop
    add a
    stop
    add l
    stop
    ld [hl], l
    stop
    ld [hl], a
    stop
    ld a, c
    db $e4
    db $e3
    ld sp, hl
    ld b, l
    db $10
    add [hl]
    adc c
    db $10
    add a
    add a
    db $10
    add a
    add l
    db $10
    add a
    ld [hl], l
    db $10
    add a
    ld [hl], a
    db $10
    add [hl]
    ld a, c
    db $e3
    ld sp, hl
    ld b, l
    db $10
    db $76
    adc c
    db $10
    ld [hl], a
    add a
    db $10
    ld [hl], a
    add l
    db $10
    ld [hl], a
    ld [hl], l
    db $10
    ld [hl], a
    ld [hl], a
    db $10
    db $76
    ld a, c
    db $e4
    inc b
    add a
    adc d
    inc b
    add a
    adc b
    inc b
    add a
    ld a, b
    inc b
    add a
    ld a, d
    stop
    nop
    pop hl
    scf
    ld b, [hl]
    inc b

jr_00c_464a:
    add a
    adc d
    inc b
    add a
    adc b
    inc b
    add a
    ld a, b
    inc b
    add a
    ld a, d
    stop
    nop
    pop hl
    ld c, c
    ld b, [hl]
    stop
    ld a, d
    stop
    ld a, b
    stop
    ld [hl], l
    stop
    add l
    stop
    adc b
    stop
    adc d
    pop hl
    ld e, e
    ld b, [hl]
    ld a, [bc]
    adc b
    adc e
    ld a, [bc]
    adc b
    adc b
    ld a, [bc]
    adc b
    ld a, b
    ld a, [bc]
    adc b
    ld a, e
    inc d
    nop
    nop

jr_00c_467f:
    ld a, [bc]
    ld a, b
    adc e
    ld a, [bc]
    ld a, b
    adc b
    ld a, [bc]
    ld a, b
    ld a, b
    ld a, [bc]
    ld a, b
    ld a, e
    inc d
    nop
    nop
    pop hl
    ld [hl], b
    ld b, [hl]
    ld bc, $7900
    add sp, -$24
    jr nc, jr_00c_464a

    ld b, [hl]
    sbc [hl]
    ld b, [hl]
    pop hl
    sub c
    ld b, [hl]
    push hl
    ld h, d
    ld b, [hl]
    and e
    ld b, [hl]
    ld b, $00
    ld a, b
    ld b, $74
    ld [hl], a
    ld b, $76
    ld [hl], l
    ld b, $78
    ld [hl], e
    nop
    ld a, d
    nop
    push hl
    ld e, c
    ld b, [hl]
    or a
    ld b, [hl]
    ld b, $00
    ld a, b
    ld b, $84
    ld [hl], a
    ld b, $86
    ld [hl], l
    ld b, $88
    ld [hl], e
    nop
    adc d
    nop
    ld [$7b00], sp
    add sp, -$4e
    jr nc, jr_00c_467f

    ld b, [hl]
    sbc [hl]
    ld b, [hl]
    ld d, b
    nop
    nop
    push hl
    ld b, a
    ld b, [hl]
    ret c

    ld b, [hl]
    stop
    add [hl]
    stop
    add l
    stop
    add e
    push hl
    dec sp

jr_00c_46e3:
    ld b, [hl]
    and $46
    ld [$0086], sp
    ld [$0089], sp
    nop
    adc e
    nop
    ld d, b
    nop
    nop
    push hl
    ld d, b
    ld b, [hl]
    rst $30
    ld b, [hl]
    stop
    add [hl]
    stop
    add l
    stop
    add e
    push hl
    ld b, c
    ld b, [hl]
    dec b
    ld b, a
    ld [$0076], sp
    ld [$0079], sp
    nop
    ld a, e
    nop
    db $fc
    jr c, jr_00c_4752

    ld [$2540], sp
    inc [hl]
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
    push hl
    rrca
    ld b, c
    ld [hl], $47
    ld [$8b00], sp
    ld [$8a00], sp
    ld [$8800], sp
    ld [$7800], sp
    ld [$7a00], sp
    ld [$7b00], sp
    add sp, -$3f
    ld c, d
    ld sp, hl
    sub d
    rst $38
    di
    nop
    db $f4
    db $dd

jr_00c_4752:
    db $d3
    ld bc, $0000
    nop
    pop af
    db $fc
    db $fc
    ld [$8787], sp
    jr nc, jr_00c_46e3

    add l
    ldh [$f1], a
    inc b
    db $fc
    ld [$8777], sp
    jr nc, jr_00c_47dd

    add l
    ldh [$f1], a
    ld a, [$0800]
    adc c
    nop
    jr nc, @-$79

    nop
    ldh [$f1], a
    ld b, $00
    ld [$0079], sp
    jr nc, jr_00c_47f2

    nop
    ldh [rTMA], a
    nop
    adc l
    ld b, $00
    adc e
    ld b, $00
    adc c
    nop
    nop
    add a
    ld b, $7d
    nop
    ld b, $7b
    nop
    ld b, $79
    nop
    nop
    ld [hl], a
    nop
    ld b, $00
    ld a, l
    ld b, $00
    ld a, e
    ld b, $00
    ld a, c
    nop
    nop
    ld [hl], a
    ld b, $8d
    nop
    ld b, $8b
    nop
    ld b, $89
    nop
    nop
    add a
    nop
    ld b, $7c
    adc h
    ld b, $7a
    adc d
    ld b, $78
    adc b
    nop
    db $76
    add [hl]
    ld b, $7c
    ld a, h
    ld b, $7a
    ld a, d
    ld b, $78
    ld a, b
    nop
    db $76
    db $76
    ld b, $8c
    ld a, h
    ld b, $8a
    ld a, d
    ld b, $88
    ld a, b
    nop
    add [hl]
    db $76
    ld b, $8c
    adc h
    ld b, $8a
    adc d
    ld b, $88
    adc b
    nop

jr_00c_47dd:
    add [hl]
    add [hl]
    ld b, $00
    adc h
    ld b, $00
    adc c
    ld b, $00
    add h
    ldh [rTMA], a
    adc h
    nop
    ld b, $89
    nop
    ld b, $84
    nop

jr_00c_47f2:
    ldh [rTMA], a
    nop
    ld a, h
    ld b, $00
    ld a, c
    ld b, $00
    ld [hl], h
    ldh [rTMA], a
    adc h
    nop
    ld b, $89
    nop
    ld b, $84
    nop
    ldh [rTMA], a
    ld a, e
    adc e
    ld b, $78
    adc b
    ld b, $73
    add e
    ldh [rTMA], a
    ld a, e
    ld a, e
    ld b, $78
    ld a, b
    ld b, $73
    ld [hl], e
    ldh [rTMA], a
    adc e
    ld a, e
    ld b, $88
    ld a, b
    ld b, $83
    ld [hl], e
    ldh [rTMA], a
    adc e
    adc e
    ld b, $88
    adc b
    ld b, $83
    add e
    ldh [$fb], a
    rlca
    ld b, c
    ld c, b
    ld c, l
    ld c, b
    ld e, c
    ld c, b
    ld h, l
    ld c, b
    ld [hl], c
    ld c, b
    ld a, l
    ld c, b
    adc c
    ld c, b
    sub l
    ld c, b
    pop af
    nop
    ld a, [$0003]
    adc e
    inc bc
    nop
    adc d
    nop
    nop
    nop
    pop af
    dec b
    ei
    inc bc
    ld a, d
    adc d
    inc bc
    ld a, c
    adc c
    nop
    nop
    nop
    pop af
    ld b, $00
    inc bc
    ld a, e
    nop
    inc bc
    ld a, d
    nop
    nop
    nop
    nop
    pop af
    dec b
    dec b
    inc bc
    ld a, d
    ld a, d
    inc bc
    ld a, c
    ld a, c
    nop
    nop
    nop
    pop af
    nop
    ld b, $03
    nop
    ld a, e
    inc bc
    nop
    ld a, d
    nop
    nop
    nop
    pop af
    ei
    dec b
    inc bc
    adc d
    ld a, d
    inc bc
    adc c
    ld a, c
    nop
    nop
    nop
    pop af
    ld a, [$0300]
    adc e
    nop
    inc bc
    adc d
    nop
    nop
    nop
    nop
    pop af
    ei
    ei
    inc bc
    adc d
    adc d
    inc bc
    adc c
    adc c
    nop
    nop
    nop
    inc b
    ld a, e
    adc e
    inc b
    ld a, c
    adc c
    inc b
    db $76
    add [hl]
    ldh [$03], a
    ld a, e
    ld a, e
    inc bc
    ld a, c
    ld a, c
    ldh [rDIV], a
    adc e
    ld a, e
    inc b
    adc c
    ld a, c
    inc b
    db $76
    db $76
    ldh [$03], a
    adc e
    adc e
    inc bc
    adc c
    adc c
    ldh [$03], a
    nop
    adc h
    inc bc
    nop
    adc d
    inc bc
    nop
    adc b
    ldh [$03], a
    ld a, e
    adc e
    inc bc
    ld a, c
    adc c
    inc bc
    db $76
    add [hl]
    ldh [$03], a
    ld a, h
    nop
    inc bc
    ld a, d
    nop
    inc bc
    ld a, b
    nop
    ldh [$03], a
    ld a, e
    ld a, e
    inc bc
    ld a, c
    ld a, c
    inc bc
    db $76
    db $76
    ldh [$03], a
    nop
    ld a, h
    inc bc
    nop
    ld a, d
    inc bc
    nop
    ld a, b
    ldh [$03], a
    adc e
    ld a, e
    inc bc
    adc c
    ld a, c
    inc bc
    add [hl]
    db $76
    ldh [$03], a
    adc h
    nop
    inc bc
    adc d
    nop
    inc bc
    adc b
    nop
    ldh [$03], a
    adc e
    adc e
    inc bc
    adc c
    adc c
    inc bc
    add [hl]
    add [hl]
    ldh [$03], a
    ld a, d
    adc h
    inc bc
    ld a, b
    adc d
    inc bc
    ld [hl], l
    adc b
    inc bc
    ld [hl], e
    add l
    ldh [$03], a
    ld a, h
    adc d
    inc bc
    ld a, d
    adc b
    inc bc
    ld a, b
    add l
    inc bc
    ld [hl], l
    add e
    ldh [$03], a
    ld a, h
    ld a, d
    inc bc
    ld a, d
    ld a, b
    inc bc
    ld a, b
    ld [hl], l
    inc bc
    ld [hl], l
    ld [hl], e
    ldh [$03], a
    ld a, d
    ld a, h
    inc bc
    ld a, b
    ld a, d
    inc bc
    ld [hl], l
    ld a, b
    inc bc
    ld [hl], e
    ld [hl], l
    ldh [$03], a
    adc d
    ld a, h
    inc bc
    adc b
    ld a, d
    inc bc
    add l
    ld a, b
    inc bc
    add e
    ld [hl], l
    ldh [$03], a
    adc h
    ld a, d
    inc bc
    adc d
    ld a, b
    inc bc
    adc b
    ld [hl], l
    inc bc
    add l
    ld [hl], e
    ldh [$03], a
    adc h
    adc d
    inc bc
    adc d
    adc b
    inc bc
    adc b
    add l
    inc bc
    add l
    add e
    ldh [$03], a
    adc d
    adc h
    inc bc
    adc b
    adc d
    inc bc
    add l
    adc b
    inc bc
    add e
    add l
    ldh [rSC], a
    ld a, e
    adc e
    ld [bc], a
    nop
    adc h
    ld [bc], a
    adc e
    adc e
    ld [bc], a
    adc h
    nop
    ld [bc], a
    adc e
    ld a, e
    ld [bc], a
    nop
    ld a, h
    ld [bc], a
    ld a, e
    ld a, e
    ld [bc], a
    ld a, h
    nop
    pop hl
    ld a, e
    ld c, c
    db $e3
    pop hl
    ld c, d
    inc d
    nop
    nop
    inc d
    nop
    add e
    db $10
    add h
    adc c
    db $10
    adc b
    add l
    ld [$758a], sp
    ld [$7888], sp
    ld [$7a78], sp
    ld [$7c7a], sp
    ld [$7a78], sp
    ld [$7885], sp
    ld [$7688], sp
    ld [$848b], sp
    ld [$868c], sp
    ld [$888a], sp
    ld [$8b88], sp
    ld [$8c74], sp
    ld [$8c77], sp
    ld b, $78
    adc h
    jr nz, jr_00c_4a4b

    nop
    add b
    add h
    halt
    nop
    nop
    nop
    db $e3
    pop hl
    ld c, d
    ld [$7900], sp
    ld [$7600], sp
    ld [$8600], sp
    ld [$8900], sp
    ld [$8a00], sp
    inc c
    nop
    adc h
    ld [$008c], sp
    ld [$008a], sp
    ld [$0089], sp
    ld [$0085], sp
    ld [$0000], sp
    and $16
    ld [bc], a
    ld a, c
    adc b
    ld [bc], a
    ld a, d
    ld a, b
    db $fc
    dec bc
    ld c, c
    ld l, b
    ld a, h
    dec h
    inc [hl]
    rst $20
    nop
    add a
    nop
    db $e3
    pop hl
    ld c, d
    ld [$8400], sp
    ld [$8a85], sp
    ld [$8c85], sp
    ld [$8a85], sp
    ld [$8685], sp
    ld [$7685], sp
    ld [$7a85], sp
    ld [$7c85], sp
    ld [$7a85], sp
    ld [$7400], sp
    stop
    ld [hl], b
    jp hl


    sub [hl]
    ld e, $0c
    and $0f
    db $fc
    dec bc
    ld c, c
    ld a, a
    ld c, d
    dec h
    inc [hl]
    ld [bc], a
    ld [hl], b
    adc d
    ld [bc], a
    ld [hl], b
    ld a, d
    rst $20
    db $fc
    cp [hl]
    ld b, e
    ld a, a

jr_00c_4a4b:
    ld c, d
    dec h
    inc [hl]
    and $08
    ld b, $70
    ld [hl], h
    db $fc
    dec bc
    ld c, c
    ld a, a
    ld c, d
    dec h
    inc [hl]
    rst $20
    ld [$8883], sp
    db $fc
    dec bc
    ld c, c
    ld a, a
    ld c, d
    dec h
    inc [hl]
    ld [$8a85], sp
    db $fc
    dec bc
    ld c, c
    ld a, a
    ld c, d
    dec h
    inc [hl]
    inc d
    add [hl]
    adc h
    ldh a, [rBCPS]
    ld [$0014], sp
    nop
    jp hl


    sub [hl]
    ld e, $0d
    nop
    ld [hl], e
    ld [hl], l
    ei
    inc bc
    adc c
    ld c, d
    adc h
    ld c, d
    adc a
    ld c, d
    sub d
    ld c, d
    nop
    add [hl]
    ld a, e
    nop
    add h
    ld a, e
    nop
    ld [hl], h
    ld a, e
    nop
    db $76
    ld a, e
    db $e3
    pop hl
    ld c, d
    ld [$8a8c], sp
    ld [$8c8a], sp
    ld [$8b87], sp
    ld [$8677], sp
    ld [$777a], sp
    ld [$7a7c], sp
    ld [$7c7c], sp
    ld [$7a7a], sp
    ld [$7777], sp
    ld [$0087], sp
    ld [$868a], sp
    ld [$888c], sp
    ld [$868a], sp
    ld [$0086], sp
    ld [$7876], sp
    ld [$7679], sp
    ld [$7476], sp
    ld [$0085], sp
    ld [$0000], sp
    ld [$8a00], sp
    ld [$8b00], sp
    jp hl


    sub [hl]
    ld e, $08
    ld [$8800], sp
    nop
    nop
    add [hl]
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
    db $e4
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
    ld b, $85
    nop
    ld b, $85
    ld [hl], h
    ld b, $85
    db $76
    ld b, $85
    ld a, b

jr_00c_4b26:
    nop
    add l
    ld a, c
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
    ld b, $75
    nop
    ld b, $75
    ld [hl], h
    ld b, $75
    db $76
    ld b, $75
    ld a, b
    nop
    ld [hl], l
    ld a, c
    ld [$d140], a
    ld d, [hl]
    ld l, h
    ld c, e
    ld bc, $0086
    pop hl
    ld d, h
    ld c, e
    ld [$d140], a
    ld e, d
    ld l, h
    ld c, e
    ld bc, $0076
    pop hl
    ld h, b
    ld c, e
    push hl
    adc e
    ld b, a
    ld [$4f40], sp
    add l
    nop
    and $02
    ld b, $86
    nop
    inc c
    add l
    nop
    ld b, $83
    nop
    rst $20
    rra
    nop
    nop
    ld [$8a76], sp
    ld [$8876], sp
    ld [$8476], sp
    ld [$7476], sp
    ld [$7876], sp
    ld [$7a76], sp
    ld [$0076], sp
    rra
    ld [hl], l
    nop
    inc h
    nop
    nop
    jr jr_00c_4b26

    nop
    nop
    nop
    nop
    ld a, [bc]
    ld [hl], a
    adc c
    ld a, [bc]
    nop
    nop
    ld a, [bc]
    add a
    adc c
    ld a, [bc]
    nop
    nop
    inc d
    nop
    ld a, c
    ld [de], a
    nop
    nop
    ld a, [bc]
    add a
    adc d
    ld a, [bc]
    add a
    add [hl]
    ld a, [bc]
    add a
    nop
    ld a, [bc]
    add a
    db $76
    ld a, [bc]
    add a
    ld a, d
    ld a, [bc]
    nop
    nop
    ld [de], a
    nop
    nop
    ld b, $78
    adc d
    ld b, $78
    adc b
    ld b, $78
    add [hl]
    ld b, $78
    add h
    ld b, $78
    ld [hl], h
    ld b, $78
    db $76
    ld b, $78
    ld a, b
    ld b, $78
    ld a, d
    ld b, $76
    adc c
    ld b, $76
    add [hl]
    ld b, $76
    db $76
    ld b, $76
    ld a, c
    inc c
    nop
    nop
    and $02
    ld b, $88
    nop
    ld b, $86
    nop
    ld b, $85
    nop
    ld b, $84
    nop
    rst $20
    nop
    nop
    nop
    ld a, [bc]
    db $76
    adc d
    ld a, [bc]
    db $76
    adc b
    ld a, [bc]
    db $76
    add l
    ld a, [bc]
    db $76
    ld [hl], l
    ld a, [bc]
    db $76
    ld a, b
    ld a, [bc]
    db $76
    ld a, d
    inc d
    nop
    nop
    and $02
    ld b, $88
    nop
    inc c
    add [hl]
    nop
    ld b, $84
    nop
    rst $20
    rra
    nop
    nop
    and $02
    ld a, [bc]
    nop
    nop
    ld a, [bc]
    adc c
    nop
    ld a, [bc]
    add [hl]
    nop
    ld a, [bc]
    add h
    nop
    rst $20
    and $02
    ld [$0079], sp
    ld [$0076], sp
    ld [$0075], sp
    rst $20
    nop
    nop
    nop
    ld a, [bc]
    nop
    adc d
    ld a, [bc]
    nop
    adc b
    ld a, [bc]
    nop
    add l
    ld a, [bc]
    nop
    ld [hl], l
    ld a, [bc]
    nop
    ld a, b
    ld a, [bc]
    nop
    ld a, d
    inc d
    nop
    nop
    db $e3
    and [hl]
    ld c, h
    and $02
    inc b
    ld [hl], a
    adc c
    inc b
    ld [hl], a
    add [hl]
    inc b
    ld [hl], a
    db $76
    inc b
    ld [hl], a
    ld a, c
    rst $20
    db $e3
    and [hl]
    ld c, h
    stop
    nop
    dec b
    adc d
    adc b
    dec b
    adc d
    add l
    dec b
    adc d
    ld [hl], l
    dec b
    adc d
    ld a, b
    inc d
    nop
    nop
    dec b
    ld a, d
    adc b
    dec b
    ld a, d
    add l
    dec b
    ld a, d
    ld [hl], l
    dec b
    ld a, d
    ld a, b
    inc d
    nop
    nop
    ld [$0079], sp
    ld [$0076], sp
    ld [$0075], sp
    ld [$0089], sp
    ld [$0086], sp
    ld [$0085], sp
    nop
    nop
    nop
    inc b
    add a
    adc c
    inc b
    add a
    add [hl]
    inc b
    add a
    db $76
    inc b
    add a
    ld a, c
    db $e4
    ld [bc], a
    add [hl]
    nop
    ld [bc], a
    halt
    nop
    pop hl
    or e
    ld c, h
    ei
    rlca
    adc $4c
    db $db
    ld c, h
    add sp, $4c
    push af
    ld c, h
    ld [bc], a
    ld c, l
    rrca
    ld c, l
    inc e
    ld c, l
    add hl, hl
    ld c, l
    pop af
    nop
    ld a, [$0003]
    adc b
    inc bc
    nop
    add a
    ld [bc], a
    nop
    nop
    ldh [$f1], a
    dec b
    ei
    inc bc
    ld [hl], a
    add a
    inc bc
    db $76
    add [hl]
    ld [bc], a
    nop
    nop
    ldh [$f1], a
    ld b, $00
    inc bc
    ld a, b
    nop
    inc bc
    ld [hl], a
    nop
    ld [bc], a
    nop
    nop
    ldh [$f1], a
    dec b
    dec b
    inc bc
    ld [hl], a
    ld [hl], a
    inc bc
    db $76
    db $76
    ld [bc], a
    nop
    nop
    ldh [$f1], a
    nop
    ld b, $03
    nop
    ld a, b
    inc bc
    nop
    ld [hl], a
    ld [bc], a
    nop
    nop
    ldh [$f1], a
    ei
    dec b
    inc bc
    add a
    ld [hl], a
    inc bc
    adc b
    ld a, b
    ld [bc], a
    nop
    nop
    ldh [$f1], a
    ld a, [$0300]
    adc b
    nop

jr_00c_4d22:
    inc bc
    add a
    nop
    ld [bc], a
    nop
    nop
    ldh [$f1], a
    ei
    ei
    inc bc
    adc d
    adc d
    inc bc
    adc c
    adc c
    ld [bc], a
    nop
    nop
    ldh [$c8], a
    add h
    nop
    ret z

    ld [hl], h
    nop
    pop hl
    ld [hl], $4d
    ld a, [bc]
    nop
    add [hl]
    ld a, [bc]
    nop
    add h
    ld a, [bc]
    nop
    nop
    ld a, [bc]
    nop
    ld [hl], h
    ld a, [bc]
    nop
    db $76
    pop hl
    ccf
    ld c, l
    ld b, $00
    adc b
    inc bc
    nop
    nop
    ld b, $00
    ld a, b
    inc bc
    nop
    nop
    pop hl
    ld d, c
    ld c, l
    jr nz, @-$76

    nop
    ld [$8b87], sp
    ld [$8987], sp
    ld [$8687], sp
    ld [$7687], sp
    ld [$7987], sp
    ld [$7b87], sp
    pop hl
    ld h, b
    ld c, l
    inc b
    nop
    nop
    inc b
    nop
    adc b
    inc b
    nop
    nop
    inc b
    nop
    ld a, b
    pop hl
    ld a, b
    ld c, l
    xor $08
    ld b, d
    nop
    nop
    pop hl
    ld a, b
    ld c, l
    nop
    adc c
    adc c
    nop
    ld a, c
    adc c
    nop
    ld a, d
    adc d
    jr nz, jr_00c_4d22

    nop
    add sp, $21
    ld sp, $348c
    ld [$8b87], sp
    ld [$8987], sp
    ld [$8687], sp
    ld [$7687], sp
    ld [$7987], sp
    rlca
    add a
    ld a, e
    add sp, $21
    ld sp, $3483
    pop hl
    sbc b
    ld c, l
    ld d, b
    nop
    nop
    push hl
    ld b, a
    ld b, [hl]
    jp nz, $084d

    add l
    adc e
    ld [$8985], sp
    ld [$8787], sp
    ld a, [bc]
    adc b
    nop
    ld a, [bc]
    adc c
    ld [hl], a
    ld a, [bc]
    adc d
    ld a, e
    ld a, [bc]
    adc e
    ld a, c
    ld a, [bc]
    adc e
    ld [hl], a
    nop
    adc e
    nop
    ld [bc], a
    nop

jr_00c_4ddf:
    ld a, c
    add sp, -$24
    jr nc, jr_00c_4ddf

    ld c, l
    ld [$e14d], a
    db $dd
    ld c, l
    push hl
    ld h, d
    ld b, [hl]
    rst $28
    ld c, l
    ld b, $76
    db $76
    ld b, $78
    ld [hl], l
    ld b, $7a
    ld [hl], h
    nop
    ld a, e
    nop
    push hl
    ld e, c
    ld b, [hl]
    nop
    ld c, [hl]
    ld b, $86
    db $76
    ld b, $88
    ld [hl], l
    ld b, $8a
    ld [hl], h
    nop
    adc e
    nop
    inc b
    add a
    ld [hl], l
    inc b
    add a
    nop
    inc b
    add [hl]
    add l
    inc b
    adc b
    adc b
    inc b
    adc c
    add l
    inc b
    adc c
    nop
    inc b
    adc b
    nop
    inc b
    add a
    ld [hl], l
    inc b
    add a
    ld a, b
    pop hl
    inc c
    ld c, [hl]
    inc b
    ld [hl], a
    ld [hl], l
    inc b
    ld [hl], a
    nop
    inc b
    db $76
    add l
    inc b
    ld a, b
    adc b
    inc b
    ld a, c
    add l
    inc b
    ld a, c
    nop
    inc b
    ld a, b
    nop
    inc b
    ld [hl], a
    ld [hl], l
    inc b
    ld [hl], a
    ld a, b
    pop hl
    inc c
    ld c, [hl]
    jr z, jr_00c_4e4a

jr_00c_4e4a:
    nop
    ld [$8b00], sp
    ld [$8a87], sp
    ld [$8889], sp
    ld [$868a], sp
    ld [$8489], sp
    ld [$7687], sp
    ld [$7a00], sp
    ld [$7b77], sp
    ld [$7479], sp
    ld [$007a], sp
    ld [$8679], sp
    ld [$8877], sp
    ld [$7676], sp
    ld [$7800], sp
    ld [$7886], sp
    pop hl
    ld c, b
    ld c, [hl]
    ld a, [$9c40]
    ld c, [hl]
    ld a, [$b155]
    ld c, [hl]
    ld a, [$c680]
    ld c, [hl]
    inc b
    ld a, c
    adc h
    inc b
    ld a, c
    adc e
    inc b
    ld a, c
    adc c
    inc b
    ld a, c
    ld a, b
    inc b
    ld a, c
    ld a, d
    inc b
    ld a, b
    ld a, e
    nop
    ld a, b
    ld a, h
    inc b
    ld [hl], a
    adc h
    inc b
    ld [hl], a
    adc e
    inc b
    ld [hl], a
    adc c
    inc b
    ld [hl], a
    ld a, b
    inc b
    ld [hl], a
    ld a, d
    inc b
    db $76
    ld a, e
    nop
    db $76
    ld a, h
    inc b
    add a
    adc h
    inc b
    add a
    adc e
    inc b
    add a
    adc c
    inc b
    add a
    ld a, b
    inc b
    add a
    ld a, d
    inc b
    add [hl]
    ld a, e
    nop
    add [hl]
    ld a, h
    inc b
    adc c
    adc h
    inc b
    adc c
    adc e
    inc b
    adc c
    adc c
    inc b
    adc c
    ld a, b
    inc b
    adc c
    ld a, d
    inc b
    adc b
    ld a, e
    nop
    adc b
    ld a, h
    ld [$8877], sp
    ld [$8777], sp
    ld [$7777], sp
    ld [$7877], sp
    add sp, $21
    ld sp, $3483
    nop
    nop
    nop
    ld [$8887], sp
    ld [$8787], sp
    ld [$7787], sp
    ld [$7887], sp
    add sp, $21
    ld sp, $3483
    nop
    nop
    nop
    db $e3
    inc de
    ld c, a
    db $e3
    dec [hl]
    ld c, a
    ld [c], a
    ld sp, hl
    db $e3
    dec [hl]
    ld c, a
    db $e3
    inc de
    ld c, a
    ld [c], a
    ld sp, hl
    and $06
    inc b
    add b
    adc b
    inc b
    add [hl]
    add h
    inc b
    add [hl]
    ld [hl], h
    inc b
    add [hl]
    ld a, b
    ld bc, $0000
    inc b
    add b
    add [hl]
    inc b
    add [hl]
    add h
    inc b
    add [hl]
    ld [hl], h
    inc b
    add [hl]
    db $76
    ld bc, $0000
    rst $20
    db $e4
    and $06
    inc b
    ld [hl], b
    adc b
    inc b
    db $76
    add h
    inc b
    db $76
    ld [hl], h
    inc b
    db $76
    ld a, b
    ld bc, $0000
    inc b
    ld [hl], b
    add [hl]
    inc b
    db $76
    add h
    inc b
    db $76
    ld [hl], h
    inc b
    db $76
    db $76
    ld bc, $0000
    rst $20
    db $e4
    db $e3
    ld h, a
    ld c, a
    db $e3
    adc c
    ld c, a
    ld [c], a
    ld sp, hl
    db $e3
    adc c
    ld c, a
    db $e3
    ld h, a
    ld c, a
    ld [c], a
    ld sp, hl
    and $03
    inc b
    add b
    ld a, b
    inc b
    add h
    ld [hl], h
    inc b
    add h
    add h
    inc b
    add h
    adc b
    ld bc, $0000
    inc b
    add b
    db $76
    inc b
    add h
    ld [hl], h
    inc b
    add h
    add h
    inc b
    add h
    add [hl]
    ld bc, $0000
    rst $20
    db $e4
    and $03
    inc b
    ld [hl], b
    ld a, b
    inc b
    ld [hl], h
    ld [hl], h
    inc b
    ld [hl], h
    add h
    inc b
    ld [hl], h
    adc b
    ld bc, $0000
    inc b
    ld [hl], b
    db $76
    inc b
    ld [hl], h
    ld [hl], h
    inc b
    ld [hl], h
    add h
    inc b
    ld [hl], h
    add [hl]
    ld bc, $0000
    rst $20
    db $e4
    stop
    nop
    jr nz, jr_00c_4fb0

jr_00c_4fb0:
    db $76
    ld b, b
    nop
    ld [hl], a
    jr nz, jr_00c_4fb6

jr_00c_4fb6:
    db $76
    pop hl
    xor e
    ld c, a
    push hl
    db $dd
    ld c, l
    cp a
    ld c, a
    and $02
    db $e3
    rst $28
    ld c, a
    rst $20
    push hl
    push hl
    ld c, l
    jp z, $e64f

    ld [bc], a
    db $e3
    ld [bc], a
    ld d, b
    rst $20
    ld [c], a
    jp hl


    push hl
    db $dd
    ld c, l
    rst $10
    ld c, a
    and $04
    db $e3
    rst $28
    ld c, a
    rst $20
    push hl
    push hl
    ld c, l
    ld [c], a
    ld c, a
    and $04
    db $e3
    ld [bc], a
    ld d, b
    rst $20
    ld [c], a
    jp hl


    db $e3
    rst $28
    ld c, a
    ld [c], a
    db $fc
    inc bc
    add [hl]
    nop
    inc bc
    add [hl]
    add l
    inc bc
    add [hl]
    adc c
    inc bc
    add [hl]
    ld a, c
    inc bc
    add [hl]
    ld [hl], l
    inc bc
    add [hl]
    nop
    db $e4
    inc bc
    halt
    nop
    inc bc
    db $76
    add l
    inc bc
    db $76
    adc c
    inc bc
    db $76
    ld a, c
    inc bc
    db $76
    ld [hl], l
    inc bc
    halt
    nop
    db $e4
    ld a, [bc]
    nop
    adc d
    ld a, [bc]
    nop
    add a
    ld a, [bc]
    nop
    nop
    ld a, [bc]
    nop
    db $76
    ld a, [bc]
    nop
    ld a, b
    ld c, $00
    ld a, d
    nop
    nop
    nop
    db $e3
    ld a, [hl-]
    ld d, b
    db $e3
    ld c, l
    ld d, b
    ld [c], a
    ld sp, hl
    db $e3
    ld c, l
    ld d, b
    db $e3
    ld a, [hl-]
    ld d, b
    ld [c], a

jr_00c_5039:
    ld sp, hl
    and $05
    inc bc
    nop
    nop
    inc b
    adc b
    add [hl]
    inc b
    add a

jr_00c_5044:
    add e
    inc b
    add a
    ld [hl], e
    inc b
    add a
    db $76
    rst $20
    db $e4
    and $05
    inc bc
    nop
    nop
    inc b
    ld a, b
    add [hl]
    inc b
    ld [hl], a
    add e
    inc b
    ld [hl], a
    ld [hl], e
    inc b
    ld [hl], a
    db $76
    rst $20
    db $e4
    inc b
    nop
    nop
    ld [$007a], sp
    ld [$0078], sp
    ld [$0076], sp
    nop
    nop
    nop
    inc b
    nop
    nop
    ld [$008a], sp
    ld [$0088], sp
    ld [$0086], sp
    nop
    nop
    nop
    and $02
    inc bc
    nop
    nop
    inc b
    adc b
    add [hl]
    inc b
    add a
    add e
    inc b
    add a

jr_00c_508b:
    ld [hl], e
    inc b
    add a
    db $76
    rst $20
    pop hl
    sub e
    ld d, b
    and $02
    inc bc
    nop
    nop
    inc b
    ld a, b
    add [hl]
    inc b
    ld [hl], a
    add e
    inc b
    ld [hl], a
    ld [hl], e
    inc b
    ld [hl], a
    db $76
    rst $20
    pop hl
    ld a, [hl]
    ld d, b
    inc a
    add a
    nop
    inc a
    ld [hl], a
    nop
    ld [c], a
    ld sp, hl
    jr z, jr_00c_5039

    nop
    jr z, jr_00c_512c

    nop
    ld [c], a
    ld sp, hl
    jr z, jr_00c_5131

    nop
    jr z, jr_00c_5044

    nop
    ld [c], a
    ld sp, hl
    add sp, -$4e
    jr nc, jr_00c_508b

    ld d, b
    push hl
    ld d, b
    ld b, $77
    adc d
    ld b, $77
    nop
    ld b, $77
    ld a, d
    ld b, $75
    adc b
    ld b, $75
    nop
    ld b, $75
    ld a, b
    ld b, $73
    db $76
    ld b, $73
    nop
    ld b, $73
    halt
    nop
    nop
    nop
    ld b, $87
    adc d
    ld b, $87
    nop
    ld b, $87
    ld a, d
    ld b, $85
    adc b
    ld b, $85
    nop
    ld b, $85
    ld a, b
    ld b, $83
    db $76
    ld b, $83
    nop
    ld b, $83
    halt
    nop
    nop
    nop
    dec l
    nop
    ld a, d
    and $01
    ld b, $76
    adc d
    ld b, $76
    adc b
    ld b, $76
    ld a, b
    ld b, $76
    ld a, d
    ld b, $86
    adc c
    ld b, $86
    add a
    ld b, $86
    ld [hl], a
    ld b, $86
    ld a, c
    rst $20
    nop
    nop
    nop
    ld b, $7a
    nop
    ld b, $78
    nop
    ld b, $76

jr_00c_512c:
    nop
    jp hl


    sub [hl]
    ld e, $20

jr_00c_5131:
    dec c
    adc l
    nop
    ld b, $8c
    nop
    ld b, $8b
    nop
    ld b, $8a
    nop
    ld b, $88
    nop
    ld b, $78
    nop
    ld b, $7a
    nop
    ld b, $7b
    nop

Jump_00c_5149:
    ld b, $7c
    nop
    dec c
    ld a, l
    nop
    ld b, $86
    nop
    ld b, $88
    nop
    ld b, $8a
    nop
    nop
    nop
    nop
    dec b
    nop
    adc e
    dec b
    nop
    adc d
    dec b
    nop
    adc c
    dec b
    nop
    add a
    dec b
    nop
    add h
    stop
    nop
    dec b
    nop
    ld [hl], h
    dec b
    nop
    ld [hl], a
    dec b
    nop
    ld a, c
    dec b
    nop
    ld a, d
    dec b
    nop
    ld a, e
    nop
    nop
    nop
    ld b, $8b
    nop
    ld b, $8b
    ld [hl], l
    ld b, $8b
    ld [hl], a
    ld b, $8a
    adc c
    ld b, $8a
    add h
    ld b, $8a
    ld [hl], h
    ld b, $8a
    ld a, b
    db $fc
    cp [hl]
    ld b, e
    ld [$bb40], sp
    dec [hl]
    ldh [rTIMA], a
    adc e
    ld a, d
    dec b
    adc e
    ld a, d
    ld [$7b8b], sp
    ld b, $8a
    adc d
    ld b, $8a
    add [hl]
    ld b, $8a
    db $76
    ld b, $8a
    ld a, d
    db $fc
    cp [hl]
    ld b, e
    ld [$bb40], sp
    dec [hl]
    ldh [$fa], a
    add b
    rst $18
    ld d, c
    pop af
    ldh a, [rNR23]
    jp hl


    sub [hl]
    ld e, $0f
    ld [bc], a
    adc l
    nop
    ld [bc], a
    adc l
    adc b
    ld [bc], a
    adc e
    adc d
    ld bc, $8888
    ld bc, $0080
    ld bc, $0088
    ld [bc], a
    adc e
    nop
    ld [bc], a
    adc l
    nop
    pop hl
    call nz, $f151
    ldh a, [rNR23]
    jp hl


    sub [hl]
    ld e, $0f
    ld [bc], a
    adc l
    nop
    ld [bc], a
    adc l
    ld a, b
    ld [bc], a
    adc e
    ld a, d
    ld bc, $7888
    ld bc, $0080
    ld bc, $0088
    ld [bc], a
    adc e
    nop
    ld [bc], a
    adc l

jr_00c_51fd:
    nop
    pop hl
    and $51

jr_00c_5201:
    cp $07
    dec d
    ld d, d

jr_00c_5205:
    add hl, de
    ld d, d
    dec e
    ld d, d

jr_00c_5209:
    ld hl, $2552
    ld d, d

jr_00c_520d:
    add hl, hl
    ld d, d
    dec l
    ld d, d

jr_00c_5211:
    ld sp, $e252
    ld hl, $30f0
    jr nz, jr_00c_51fd

jr_00c_5219:
    ldh a, [rNR23]
    jr nz, jr_00c_5201

    ldh a, [$28]
    jr nz, jr_00c_5205

    ldh a, [$38]
    jr nz, jr_00c_5209

    ldh a, [rOBP0]
    jr nz, jr_00c_520d

    ldh a, [$58]
    jr nz, jr_00c_5211

    ldh a, [rNR13]
    jr nz, @-$1a

    ldh a, [rKEY1]
    jr nz, jr_00c_5219

    add hl, de
    nop
    nop
    ld [$7800], sp
    ld [$7900], sp
    ld [$7a00], sp
    ld [$7b00], sp
    ld [$7c00], sp
    add sp, -$4e
    jr nc, jr_00c_5299

    ld d, d
    ld a, b
    ld d, d
    jp hl


    sub [hl]
    ld e, $1e
    ld a, [bc]
    add [hl]
    adc d
    ld a, [bc]
    add [hl]
    add [hl]
    ld a, [bc]
    add [hl]
    db $76
    ld a, [bc]
    add [hl]
    ld a, d
    ld a, [bc]
    add a
    adc c
    ld a, [bc]
    add a
    add l
    ld a, [bc]
    add a
    ld [hl], l
    ld a, [bc]
    add a
    ld a, c
    ld a, [bc]
    add a
    add [hl]
    ld a, [bc]
    add a
    nop
    ld a, [bc]
    add a
    nop
    ld a, [bc]
    add a
    db $76
    ld [c], a
    di
    jp hl


    sub [hl]
    ld e, $1e
    ld a, [bc]
    db $76
    adc d
    ld a, [bc]
    db $76
    add [hl]
    ld a, [bc]
    db $76
    db $76
    ld a, [bc]
    db $76
    ld a, d
    ld a, [bc]
    ld [hl], a
    adc c
    ld a, [bc]
    ld [hl], a
    add l
    ld a, [bc]
    ld [hl], a
    ld [hl], l
    ld a, [bc]
    ld [hl], a
    ld a, c
    ld a, [bc]
    ld [hl], a
    add [hl]
    ld a, [bc]
    ld [hl], a

jr_00c_5299:
    nop
    ld a, [bc]
    ld [hl], a
    nop
    ld a, [bc]
    ld [hl], a
    db $76
    ld [c], a
    di
    db $10
    adc d
    nop
    ld [$0088], sp
    ld [$0086], sp
    add sp, $21
    ld sp, $346b
    pop hl
    ld b, [hl]
    ld b, e
    inc d
    nop
    nop
    ld [bc], a
    nop
    adc b
    ld [bc], a
    nop
    ld a, b
    pop hl
    or e
    ld d, d
    and $06
    inc b
    add b
    adc b
    inc b
    add h
    add h
    inc b
    add h
    ld [hl], h
    inc b
    add h
    ld a, b
    ld bc, $0000
    inc b
    add b
    add [hl]
    inc b
    add h
    add h
    inc b
    add h
    ld [hl], h
    inc b
    add h
    db $76
    ld bc, $0000
    rst $20
    and $06
    inc b
    ld [hl], b
    adc b
    inc b
    ld [hl], h
    add h
    inc b
    ld [hl], h
    ld [hl], h
    inc b
    ld [hl], h
    ld a, b
    ld bc, $0000
    inc b
    ld [hl], b
    add [hl]
    inc b
    ld [hl], h
    add h
    inc b
    ld [hl], h
    ld [hl], h
    inc b
    ld [hl], h
    db $76
    ld bc, $0000
    rst $20
    pop hl
    cp a
    ld d, d
    rst $30
    sub d
    rst $38
    ld b, b
    dec c
    ld d, e
    nop
    nop
    ld a, c
    ldh [$f1], a
    nop
    or $e6
    inc c
    inc b
    ld a, c
    adc c
    inc b
    ld a, c
    add a
    inc b
    ld a, c
    ld a, c
    inc b
    ld a, c
    ld [hl], a
    rst $20
    ldh [$f1], a
    nop
    or $e6
    inc c
    inc b
    adc c
    adc c
    inc b
    adc c
    add a
    inc b
    adc c
    ld a, c
    inc b
    adc c
    ld [hl], a
    rst $20
    ldh [$64], a
    nop
    nop
    add sp, $21
    ld sp, $368e
    xor $b1
    ld b, c
    jp nz, $0052

    nop
    nop
    ld a, [bc]
    nop
    nop
    jr @-$78

    ld a, e
    ld [$7800], sp
    ld [$7500], sp
    ld [$8400], sp
    push hl
    inc [hl]
    ld d, e
    xor e
    ld d, e
    db $fc
    inc [hl]
    ld d, e
    adc d
    ld d, e
    adc h
    inc [hl]
    ld bc, $0000
    db $ec
    ld a, [$c8ec]
    pop hl
    ld e, b
    ld d, e
    ld [$8a78], sp
    ld [$7478], sp
    ld [$8778], sp
    ld [$7878], sp
    ld [$8878], sp
    ld [$7a78], sp
    ld [$8978], sp
    ld [$7778], sp
    ld [$8478], sp
    ld [$7978], sp
    pop hl
    ld l, c
    ld d, e
    ld [$8a88], sp
    ld [$7488], sp
    ld [$8788], sp
    ld [$7888], sp
    ld [$8888], sp
    ld [$7a88], sp
    ld [$8988], sp
    ld [$7788], sp
    ld [$8488], sp
    ld [$7988], sp
    pop hl
    adc d
    ld d, e
    ld [$8a86], sp
    ld [$7386], sp
    ld [$8786], sp
    ld [$7686], sp
    ld [$8886], sp
    ld [$7786], sp
    ld [$8986], sp
    ld [$7586], sp
    ld [$8486], sp
    ld [$7786], sp
    pop hl
    xor e
    ld d, e
    inc b
    adc b
    adc b
    inc b
    adc b
    add a
    inc b
    adc b
    adc b
    inc b
    add a
    adc c
    inc b
    add [hl]
    adc d
    inc b
    add a
    adc c
    inc b
    adc b
    adc b
    inc b
    adc b
    add a
    inc b
    adc b
    db $76
    inc b
    adc b
    ld [hl], a
    inc b
    adc b
    ld a, b
    inc b
    add a
    ld a, c
    inc b
    add [hl]
    ld a, d
    inc b
    add a
    ld a, c
    inc b
    adc b
    ld a, b
    inc b
    adc b
    ld [hl], a
    pop hl
    call z, $1253
    nop
    add [hl]
    ld [$8586], sp
    ld [$7486], sp
    ld [$7787], sp
    dec c
    adc b
    ld a, b
    ld a, [bc]
    adc c
    ld a, c
    ld c, $89
    ld a, d
    ld [$7888], sp
    db $10
    adc b
    nop
    ld a, [bc]
    add a
    adc b
    ld [$8887], sp
    ld [$8987], sp
    ld [$8a87], sp
    ld [$8887], sp
    ld [$8987], sp
    ld [$8887], sp
    ld [$7687], sp

jr_00c_5432:
    ld [$7887], sp
    ld [$7400], sp
    ld [de], a
    nop
    add [hl]
    ld [$8576], sp
    ld [$7476], sp
    ld [$7777], sp
    dec c
    ld a, b
    ld a, b
    ld a, [bc]
    ld a, c
    ld a, c
    ld c, $79
    ld a, d
    ld [$7878], sp
    db $10
    ld a, b
    nop
    ld a, [bc]
    ld [hl], a
    adc b
    ld [$8877], sp
    ld [$8977], sp
    ld [$8a77], sp
    ld [$8877], sp
    ld [$8977], sp
    ld [$8877], sp
    ld [$7677], sp
    ld [$7877], sp
    ld [$7400], sp
    pop hl
    rst $38
    ld d, e
    ld a, [bc]
    nop
    nop
    db $e3
    and c
    ld d, h
    ld a, [bc]
    nop
    nop
    db $e3
    xor [hl]
    ld d, h
    db $e3
    and c
    ld d, h
    ld a, [bc]
    nop
    nop
    db $e3
    xor [hl]
    ld d, h
    ld a, [bc]
    nop
    nop
    db $e3
    cp e
    ld d, h
    ld a, [bc]
    nop
    nop
    db $e3
    ret z

    ld d, h
    db $e3
    cp e
    ld d, h
    ld a, [bc]
    nop
    nop
    db $e3
    ret z

    ld d, h
    pop hl
    ld [hl], h
    ld d, h
    db $10
    add [hl]
    ld [hl], l
    db $10
    add l
    db $76
    db $10
    add l
    ld a, b
    jr jr_00c_5432

    ld a, d
    db $e4
    jr @-$78

    adc d
    db $10
    add l
    adc b
    db $10
    add l
    add [hl]
    db $10
    add [hl]
    add l
    db $e4
    db $10
    db $76
    ld [hl], l
    db $10
    ld [hl], l
    db $76
    db $10
    ld [hl], l
    ld a, b
    jr @+$78

    ld a, d
    db $e4
    jr @+$78

    adc d
    db $10
    ld [hl], l
    adc b
    db $10
    ld [hl], l
    add [hl]
    db $10
    db $76
    add l
    db $e4
    stop
    nop
    inc b
    adc d
    add a
    inc b
    adc c
    adc b
    inc b
    adc b
    adc c
    inc b
    add a
    adc d
    inc b
    ld [hl], a
    adc d
    inc b
    ld a, b
    adc c
    inc b
    ld a, c
    adc b
    inc b
    ld a, d
    add a
    inc b
    ld a, d
    ld [hl], a
    inc b
    ld a, c
    ld a, b
    inc b
    ld a, b
    ld a, c
    inc b
    ld [hl], a
    ld a, d
    inc bc
    add a
    ld a, c
    inc bc
    adc b
    ld a, b
    inc bc
    adc c
    ld [hl], a
    inc bc
    adc d
    db $76
    inc bc
    adc e
    nop
    inc b
    adc h
    nop
    nop
    adc l
    nop
    ldh [$e6], a
    ld [bc], a
    ld [$7786], sp
    ld [$7788], sp
    ld [$7788], sp
    ld [$7786], sp
    ld [$7700], sp
    ld [$7776], sp
    ld [$7778], sp
    ld [$7778], sp
    ld [$7776], sp
    rst $20
    and $02
    ld [$8786], sp
    ld [$8788], sp
    ld [$8788], sp
    ld [$8786], sp
    ld [$8700], sp
    ld [$8776], sp
    ld [$8778], sp
    ld [$8778], sp
    ld [$8776], sp
    rst $20
    pop hl
    ld [de], a
    ld d, l
    xor $05
    ld b, c
    nop
    nop
    add sp, -$1f
    ld c, b
    push hl
    ld d, b
    ld d, h
    ld e, [hl]
    ld d, l
    ld d, b
    nop
    nop
    db $e3
    ld l, h
    ld d, l
    db $e3
    ld l, h
    ld d, l
    ld b, $00
    nop
    ld [c], a
    or $e8
    ld e, h
    ld c, c
    db $eb
    cp l
    db $d3
    add d
    ld d, l
    add [hl]
    ld d, l
    adc d
    ld d, l
    adc [hl]
    ld d, l
    sub d
    ld d, l
    sub [hl]
    ld d, l
    sbc d
    ld d, l
    sbc [hl]
    ld d, l
    ld a, [bc]
    nop
    adc b
    db $e4
    ld a, [bc]
    ld [hl], a
    add a
    db $e4
    ld a, [bc]
    ld a, b
    nop
    db $e4
    ld a, [bc]
    ld [hl], a
    ld [hl], a
    db $e4
    ld a, [bc]
    nop
    ld a, b
    db $e4
    ld a, [bc]
    add a
    ld [hl], a
    db $e4
    ld a, [bc]
    adc b
    nop
    db $e4
    ld a, [bc]
    add a
    add a
    db $e4
    dec b
    nop
    nop
    ld [$8b87], sp
    ld [$8a87], sp
    ld [$8888], sp
    ld [$7888], sp
    ld [$7a87], sp
    ld [$7b87], sp
    dec b
    nop
    nop
    db $10
    ld [hl], a
    nop
    db $10
    ld a, b

jr_00c_55bf:
    nop
    db $10
    ld [hl], a
    nop
    pop hl
    and d
    ld d, l
    inc c
    add [hl]
    adc b
    inc c
    adc b
    nop
    inc e
    add [hl]
    ld a, b
    inc c
    adc b
    db $76
    inc c
    adc b
    add [hl]
    inc c
    adc b
    adc b
    inc c
    adc b
    adc d
    inc c
    add [hl]
    adc b
    inc c
    add [hl]

jr_00c_55e0:
    nop
    inc c
    add [hl]
    ld a, b
    inc c
    adc b
    ld a, d
    inc c
    adc b
    db $76
    inc c
    adc b
    nop
    inc c
    adc b
    add [hl]
    pop hl
    add $55
    inc b
    adc b
    adc b
    inc b
    adc b
    add a
    push hl
    ld b, a
    ld b, [hl]
    cp $55
    inc b
    adc b
    adc b
    inc b
    add a
    adc c
    inc b
    db $76
    adc d
    inc b
    ld [hl], a
    adc c
    inc b
    ld a, b
    adc b
    inc b
    ld a, b
    add a
    inc b
    ld a, b
    db $76
    inc b
    ld a, b

jr_00c_5615:
    ld [hl], a
    push hl
    ld b, a
    ld b, [hl]
    dec de
    ld d, [hl]
    inc b
    ld a, b
    ld a, b
    inc b
    ld [hl], a
    ld a, c
    inc b
    add [hl]
    ld a, d
    inc b
    add a
    ld a, c
    inc b
    adc b
    ld a, b
    inc b
    adc b
    ld [hl], a
    pop hl
    di
    ld d, l
    pop af
    inc b
    nop
    nop
    adc c
    nop
    jr nz, jr_00c_55bf

    nop
    inc b
    nop
    adc e
    inc b
    nop
    adc c
    inc b
    nop
    adc b
    inc b
    nop
    add a
    inc b
    nop
    ld [hl], a
    inc b
    nop
    ld a, b
    inc b
    nop
    ld a, c
    inc b
    nop
    ld a, e
    ld [$8887], sp
    ld [$7887], sp
    jr nz, jr_00c_55e0

    nop
    jr nz, jr_00c_56d3

    nop
    inc b
    nop
    adc e
    inc b
    nop
    adc c
    inc b
    nop
    adc b
    inc b
    nop
    add a
    inc b
    nop
    ld [hl], a
    inc b
    nop
    ld a, b
    inc b
    nop
    ld a, c
    inc b
    nop
    ld a, e
    ld [$8877], sp
    ld [$7877], sp
    jr nz, jr_00c_56f4

    nop
    pop hl
    ld [hl], $56
    xor $b1
    ld b, c
    ld h, $55
    nop
    nop
    nop
    ld [$0086], sp
    jr nz, jr_00c_5615

    nop
    ld [$0086], sp
    ld [$0076], sp
    jr nz, jr_00c_570e

    nop
    ld [$0076], sp
    pop hl
    push af
    ld b, d
    push hl
    nop
    ld b, b
    and e
    ld d, [hl]
    pop af
    nop
    db $10
    ld [hl-], a
    nop
    nop
    db $fc
    ld e, b
    ld d, l
    ld a, e
    ld c, [hl]
    adc h
    inc [hl]
    pop hl
    sbc [hl]
    ld d, [hl]
    push hl
    nop
    ld b, b
    cp b
    ld d, [hl]
    ld a, [$bf80]
    ld d, [hl]
    inc a
    nop
    nop
    jr jr_00c_56c1

jr_00c_56c1:
    nop
    db $fc
    ld e, b
    ld d, l
    ld a, e
    ld c, [hl]
    adc h
    inc [hl]
    jp hl


    sub [hl]
    ld e, $1c
    pop hl
    or e
    ld d, [hl]
    ld bc, $0000

jr_00c_56d3:
    db $e4
    ld a, [bc]
    nop
    nop
    db $e4
    inc d
    nop
    nop
    db $e4
    ld e, $00
    nop
    db $e4
    db $fc
    ld h, c
    ld d, l
    ld [$cd40], sp
    dec [hl]
    db $fc
    nop
    ld c, e
    cpl
    ld c, b
    ld hl, $0434
    nop
    adc h
    inc b
    nop
    adc e

jr_00c_56f4:
    inc b
    nop
    adc d
    inc b
    nop
    ld a, c
    inc b
    nop
    ld a, e
    inc b
    nop
    ld a, c
    inc b
    add [hl]
    adc c
    inc b
    adc b
    adc e
    inc b
    adc d
    adc c
    inc b
    ld a, d
    ld a, c
    inc b
    ld a, b

jr_00c_570e:
    ld a, e
    inc b
    db $76
    ld a, c
    inc b
    db $76
    adc c
    inc b
    ld a, b
    adc e
    inc b
    ld a, d
    adc c
    inc b
    add [hl]
    ld a, c
    inc b
    adc b
    ld a, e
    inc b
    adc d
    ld a, c
    inc b
    nop
    adc c
    inc b
    nop
    adc e
    inc b
    nop
    adc c
    inc b
    nop
    ld a, d
    jr nc, jr_00c_5732

jr_00c_5732:
    nop
    inc b
    nop
    ld a, e
    inc b
    nop
    ld a, h
    db $fc
    ld h, c
    ld d, l
    ld [$cd40], sp
    dec [hl]
    db $fc
    nop
    ld c, e
    cpl
    ld c, b
    ld hl, $e434
    ld b, $00
    add a
    inc b
    nop
    add [hl]
    inc b
    nop
    add h
    ldh [rP1], a
    nop
    adc c
    nop
    adc c
    ld a, c
    nop
    ld a, c
    ld a, c
    nop
    adc c
    adc c
    nop
    ld a, c
    adc c
    nop
    adc c
    adc b
    nop
    ld a, c
    adc b
    nop
    nop
    ld a, d
    nop
    nop
    adc d
    nop
    ld a, d
    adc d
    nop
    ld a, d
    ld a, d
    nop
    adc d
    ld a, d
    nop
    adc d
    adc d
    nop
    nop
    ld a, c
    nop
    adc b
    ld a, d
    nop
    ld a, d
    ld a, d
    nop
    nop
    add a
    nop
    nop
    ld a, h
    nop
    nop
    adc h
    nop
    nop
    ld a, b
    nop
    nop
    ld a, l
    nop
    ld a, h
    ld a, h
    nop
    ld a, h
    adc h
    nop
    adc h
    ld a, h
    nop
    adc h
    adc h
    add b
    nop
    add [hl]
    add b
    nop
    db $76
    pop hl
    sbc l
    ld d, a
    add b
    nop
    add [hl]
    add b
    nop
    db $76
    add b
    nop
    db $76
    add b
    nop
    add [hl]
    pop hl
    and [hl]
    ld d, a
    add b
    add [hl]
    nop
    add b
    halt
    nop
    pop hl
    or l
    ld d, a
    ld b, $8a
    db $76
    ld b, $89
    ld [hl], a
    inc bc
    adc b
    ld a, b
    inc bc
    adc b
    ld a, b
    ld b, $87
    ld a, c
    ld b, $86
    ld a, d
    ld b, $76
    ld a, d
    ld b, $77
    ld a, c
    inc bc
    ld a, b
    ld a, b
    inc bc
    ld a, b
    ld a, b
    ld b, $79
    ld [hl], a
    ld b, $7a
    db $76
    ld b, $7a
    add [hl]
    ld b, $79
    add a
    inc bc
    ld a, b
    adc b
    inc bc
    ld a, b
    adc b
    ld b, $77
    adc c
    ld b, $76
    adc d
    ld b, $86
    adc d
    ld b, $87
    adc c
    inc bc
    adc b
    adc b
    inc bc
    adc b
    adc b
    ld b, $89
    add a
    ld b, $8a
    add [hl]
    pop hl
    cp [hl]
    ld d, a
    ld [$8578], sp
    ld [$8579], sp
    db $10
    ld a, d
    add l
    ld [$8579], sp
    ld [$8578], sp
    dec c
    ld [hl], a
    add [hl]
    ld [$7776], sp
    db $10
    ld [hl], h
    ld a, b
    ld [$7900], sp
    ld [$7787], sp
    ld [$7789], sp
    ld [$778b], sp
    dec c
    adc h
    ld [hl], l
    nop
    adc h
    nop
    ld [$8a85], sp
    ld [$8886], sp
    ld [$8486], sp
    ld [$7486], sp
    ld [$7886], sp
    ld [$7a85], sp
    ld [$0075], sp
    ld [$0076], sp
    ld [$0076], sp
    ld [$0076], sp
    ld [$0076], sp
    ld [$0075], sp
    pop hl
    inc sp
    ld e, b
    ld [$0089], sp
    ld [$0087], sp
    db $10
    add l
    nop
    pop hl
    ld e, d
    ld e, b
    ld [$0079], sp
    ld [$0077], sp
    db $10
    ld [hl], l
    nop
    pop hl
    ld h, [hl]
    ld e, b
    and $03
    ld [$0089], sp
    ld [$0087], sp
    db $10
    add l
    nop
    rst $20
    and $03
    ld [$0079], sp
    ld [$0077], sp
    db $10
    ld [hl], l
    nop
    rst $20
    pop hl
    ld [hl], d
    ld e, b
    inc e
    nop
    adc d
    push hl
    rla
    ld e, b
    sub l
    ld e, b
    ld [$8a00], sp
    ld [$8700], sp
    ld [$7700], sp
    ld [$7a00], sp
    inc d
    nop
    nop
    push hl
    ldh a, [$57]
    ld e, d
    ld e, b
    push hl
    ldh a, [$57]
    xor [hl]
    ld e, b
    and $02
    ld [$0087], sp
    ld [$0085], sp
    db $10
    add e
    nop
    stop
    nop
    rst $20
    push hl
    ld sp, hl
    ld d, a
    jp nz, $e658

    ld [bc], a
    ld [$0077], sp
    ld [$0075], sp
    db $10
    ld [hl], e
    nop
    stop
    nop
    rst $20
    ld [c], a
    rst $10
    ld [$8885], sp
    ld [$8585], sp
    ld [$7585], sp
    ld [$7885], sp
    db $e4
    db $e3
    ld h, d
    ld e, c
    db $e3
    sub l
    ld e, c
    pop hl
    ldh [$58], a
    db $e3
    jp $e359


    or $59
    pop hl
    jp hl


    ld e, b
    db $e3
    jp $e359


    jp $e359


    jp $e359


    or $59
    db $e3
    or $59
    db $e3
    or $59
    pop hl
    ld a, [c]
    ld e, b
    push hl
    push bc
    ld e, c
    inc c
    ld e, c
    ld [$7584], sp
    ld [$7576], sp
    ld [$7386], sp
    ld [$7384], sp
    ld [$8574], sp
    ld [$8586], sp
    ld [$8376], sp
    ld [$8374], sp
    db $e4
    db $e3
    add hl, hl
    ld e, d
    db $ec
    ld a, [bc]
    db $e3
    add hl, hl
    ld e, d
    db $ec
    ld e, $e3
    add hl, hl
    ld e, d
    db $ec
    inc d
    push hl
    rst $28
    ld e, c
    add hl, sp
    ld e, c
    db $10
    adc c
    nop
    db $10
    add [hl]
    nop
    ld [$0084], sp
    db $e3
    dec sp
    ld e, d
    db $ec
    ld a, [bc]
    db $e3
    dec sp
    ld e, d
    db $ec
    ld e, $e3
    dec sp
    ld e, d
    db $ec
    inc d
    push hl
    push af
    ld e, c
    ld d, [hl]
    ld e, c
    db $10
    ld a, c
    nop
    db $10
    halt
    nop
    ld [$0074], sp
    pop hl
    dec h
    ld e, c
    push hl
    rst $10
    ld e, c
    ld h, a
    ld e, c
    ld b, $87
    adc h
    ld b, $87
    adc e
    ld b, $87
    adc c
    ld b, $87
    add [hl]
    ld b, $87
    db $76
    push hl
    ldh [$59], a
    ld a, e
    ld e, c
    ld b, $87
    ld a, c
    ld b, $87
    ld a, e
    ld b, $87
    ld a, h
    jp hl


    sub [hl]
    ld e, $14
    inc b
    add [hl]
    ld a, b
    inc b
    add [hl]
    db $76
    inc b
    add [hl]
    add [hl]
    inc b
    add [hl]
    adc b
    db $e4
    ld b, $77
    adc h
    ld b, $77
    adc e
    ld b, $77
    adc c
    ld b, $77
    add [hl]
    ld b, $77
    db $76
    push hl
    ldh [$59], a
    xor c
    ld e, c
    ld b, $77
    ld a, c
    ld b, $77
    ld a, e
    ld b, $77
    ld a, h
    jp hl


    sub [hl]
    ld e, $14
    inc b
    db $76
    ld a, b
    inc b
    db $76
    db $76
    inc b
    db $76
    add [hl]
    inc b
    db $76
    adc b
    db $e4
    push hl
    rst $10
    ld e, c
    ret z

    ld e, c
    ld a, [bc]
    add [hl]
    adc h
    ld a, [bc]
    add [hl]
    adc e
    ld a, [bc]
    add [hl]
    adc d
    ld a, [bc]
    add [hl]
    adc b
    ld a, [bc]
    add [hl]
    ld a, b
    push hl
    ldh [$59], a
    call c, $0a59
    add [hl]
    ld a, d
    ld a, [bc]
    add [hl]
    ld a, e
    ld a, [bc]
    add [hl]
    ld a, h
    jp hl


    sub [hl]
    ld e, $14
    inc b
    add h
    ld a, c
    inc b
    add h
    db $76
    inc b
    add h
    add [hl]
    inc b
    add h
    adc c
    db $e4
    push hl
    rst $10
    ld e, c
    ei
    ld e, c
    ld a, [bc]
    db $76
    adc h
    ld a, [bc]
    db $76
    adc e
    ld a, [bc]
    db $76
    adc d
    ld a, [bc]
    db $76
    adc b
    ld a, [bc]
    db $76
    ld a, b
    push hl
    ldh [$59], a
    rrca
    ld e, d
    ld a, [bc]
    db $76
    ld a, d
    ld a, [bc]
    db $76
    ld a, e
    ld a, [bc]
    db $76
    ld a, h
    jp hl


    sub [hl]
    ld e, $14
    inc b
    ld [hl], h
    ld a, c
    inc b
    ld [hl], h
    db $76
    inc b
    ld [hl], h
    add [hl]
    inc b
    ld [hl], h
    adc c
    db $e4
    push hl
    db $e3
    ld e, c
    ld l, $5a
    ld [$0084], sp

jr_00c_5a31:
    inc b
    adc d
    nop
    ld b, $88
    nop
    ld bc, $0085
    db $e4
    push hl
    jp hl


    ld e, c
    ld b, b
    ld e, d
    ld [$0074], sp
    inc b
    ld a, d
    nop
    ld b, $78
    nop
    ld bc, $0075
    db $e4
    push hl
    inc b
    ld e, d
    ld d, d
    ld e, d
    ld a, b
    add [hl]
    nop
    and $02
    db $e3
    ld e, [hl]
    ld e, d
    rst $20
    pop hl
    ld c, l
    ld e, d
    push hl
    dec c
    ld e, d
    ld h, e
    ld e, d
    ld a, [bc]
    nop
    nop
    ld a, [bc]
    nop
    adc b
    ld a, [bc]
    nop
    add [hl]
    db $e4
    push hl
    dec c
    ld e, d
    ld [hl], d
    ld e, d
    ld a, [bc]
    nop
    nop
    stop
    adc d
    stop
    adc c
    stop
    adc b
    stop
    add [hl]
    db $e4
    push hl
    ei
    ld e, c
    add a
    ld e, d
    db $10
    add h
    nop
    and b
    add [hl]
    nop
    db $10
    add h
    nop
    push hl
    inc b
    ld e, d
    sub l
    ld e, d
    db $10
    ld [hl], h
    nop
    and b
    halt
    nop
    db $10
    ld [hl], h
    nop
    pop hl
    add d
    ld e, d
    push hl
    ei
    ld e, c
    and [hl]
    ld e, d
    db $10
    add h
    nop
    jr jr_00c_5a31

    nop
    db $10
    add h
    nop
    push hl
    inc b
    ld e, d
    or h
    ld e, d
    db $10
    ld [hl], h
    nop
    jr @+$78

    nop
    db $10
    ld [hl], h
    nop
    pop hl
    and c
    ld e, d
    ld hl, $7900
    push hl
    inc e
    ld e, d
    ret z

    ld e, d
    ld a, [bc]
    nop
    nop
    db $e3
    ld e, [hl]
    ld e, d
    pop hl
    bit 3, d
    push hl
    ld c, h
    ld e, d
    sub $5a
    pop hl
    and h
    ld b, h
    push hl
    inc e
    ld e, d
    sbc $5a
    jr nc, jr_00c_5ae0

jr_00c_5ae0:
    nop
    push hl
    ld [hl+], a
    ld e, d
    and $5a
    ld [$8b89], sp
    ld [$8989], sp
    ld [$8889], sp
    ld [$7689], sp
    ld [$7788], sp
    push hl
    inc e
    ld e, d
    ld a, [$205a]
    nop
    nop
    db $e3
    ld l, l
    ld e, d
    pop hl
    db $fd
    ld e, d
    ld [$8400], sp
    inc b
    adc b
    adc e
    inc b
    adc b
    adc d
    inc b
    adc b
    adc b
    inc b
    adc b
    add a
    ld [$8400], sp
    inc b
    ld a, b
    adc e
    inc b
    ld a, b
    adc d
    inc b
    ld a, b
    adc b
    inc b
    ld a, b
    add a
    pop hl
    inc bc
    ld e, e
    dec bc
    add l
    adc e
    ld [$8a85], sp
    ld [$8885], sp
    ld [$0085], sp
    ld [$7885], sp
    ld [$7985], sp
    ld c, $00
    nop
    nop
    add [hl]
    adc e
    dec bc
    ld [hl], h
    adc e
    ld [$8a74], sp
    ld [$8874], sp
    ld [$0074], sp
    ld [$7874], sp
    ld [$7974], sp
    ld c, $00
    nop
    nop
    db $76
    adc e
    jr z, jr_00c_5b56

jr_00c_5b56:
    adc d
    nop
    nop
    nop
    db $f4
    jp $08d3


    db $f4
    pop bc
    db $d3
    dec b
    db $fc
    ld l, l
    ld d, d
    ld [$2140], sp
    inc [hl]
    jr nz, jr_00c_5b6b

jr_00c_5b6b:
    nop
    ld [$7a84], sp
    di
    jr z, @-$77

    ld a, c
    db $10
    add a
    ld a, b
    db $10
    add [hl]
    db $76
    db $10
    add l
    nop
    stop
    add a
    db $10
    ld [hl], l
    adc b
    db $10
    ld [hl], a
    add a
    db $10
    db $76
    add l
    db $10
    ld [hl], h
    nop
    ldh a, [$84]
    ld d, b
    push hl
    xor a
    ld e, d
    sub e
    ld e, e
    and $02
    ld [$8b8a], sp
    ld [$8a88], sp
    ld [$8800], sp
    ld [$8678], sp
    ld [$767a], sp
    ld [$7878], sp
    ld [$7a00], sp
    ld [$7b88], sp
    ld [$7b8a], sp
    ld [$7a88], sp
    ld [$7800], sp
    ld [$7678], sp
    ld [$867a], sp
    ld [$8878], sp
    ld [$8a00], sp
    ld [$8b88], sp
    rst $20
    add sp, -$0b
    ld c, b
    db $eb
    cp l
    db $d3
    dec hl
    ld e, h
    dec hl
    ld e, h
    dec hl
    ld e, h
    dec hl
    ld e, h
    db $ec
    ld e, e
    ld h, c
    ld e, h
    ld h, c
    ld e, h
    ld h, c
    ld e, h
    ld h, c
    ld e, h
    ld h, c
    ld e, h
    ld h, c
    ld e, h
    ld h, c
    ld e, h
    db $ec
    ld e, e
    dec hl
    ld e, h
    dec hl
    ld e, h
    dec hl
    ld e, h
    push hl
    sbc h
    ld e, e
    pop af
    ld e, e
    inc b
    ld a, d
    nop
    inc b
    ld a, b
    nop
    inc b
    halt
    nop
    inc b
    ld [hl], h
    nop
    ld [$0000], sp
    jp hl


    sub [hl]
    ld e, $20
    inc c
    adc l
    nop
    ld [$008c], sp
    ld [$008a], sp
    ld [$0088], sp
    ld [$0078], sp
    ld [$007a], sp
    ld [$007c], sp
    inc c
    ld a, l
    nop
    inc b
    add h
    nop
    inc b
    add [hl]
    nop
    inc b
    adc b
    nop
    inc b
    adc d
    nop
    pop hl
    adc e
    ld e, e
    push hl
    sbc h
    ld e, e
    jr nc, @+$5e

    ld b, $7a
    adc b
    ld b, $78
    adc b
    ld b, $70
    adc b
    ld b, $88
    adc b
    jp hl


    sub [hl]
    ld e, $20
    ld b, $8a
    adc b
    dec c
    adc l
    add a
    ld [$768b], sp
    ld [$7888], sp
    ld [$7a76], sp
    ld [$7878], sp
    ld [$767d], sp
    ld [$727c], sp
    ld [$007a], sp
    ld [$0075], sp
    pop hl
    adc e
    ld e, e
    push hl
    sbc h
    ld e, e
    ld h, [hl]
    ld e, h
    ld b, $7a
    ld a, b
    ld b, $78
    ld a, b
    ld b, $70
    ld a, b
    ld b, $88
    ld a, b
    jp hl


    sub [hl]
    ld e, $20
    ld b, $8a
    ld a, b
    dec c
    adc l
    ld [hl], a
    ld [$868b], sp
    ld [$8888], sp
    ld [$8a76], sp
    ld [$8878], sp
    ld [$867d], sp
    ld [$827c], sp
    ld [$007a], sp
    ld [$0075], sp
    pop hl
    adc e
    ld e, e
    nop
    ld de, $0011
    pop hl
    ld de, $8a00
    adc b
    nop
    adc d
    ld a, b
    db $ec
    ld [bc], a
    add sp, -$0b
    ld c, b
    db $eb
    cp l
    db $d3
    bit 3, h
    bit 3, h
    ldh [$5c], a
    ldh [$5c], a
    db $f4
    ld e, h
    ld [$085d], sp
    ld e, l
    inc e
    ld e, l
    inc e
    ld e, l
    inc e
    ld e, l
    ld [$085d], sp
    ld e, l
    db $f4
    ld e, h
    ldh [$5c], a
    ldh [$5c], a
    bit 3, h
    ld [bc], a
    adc h
    adc e
    ld [bc], a
    adc d
    adc e
    ld [bc], a
    adc b
    adc d
    ld [bc], a
    add h
    adc d
    ld [bc], a
    ld [hl], h
    adc d
    ld [bc], a
    ld a, b
    adc d
    nop
    ld a, d
    adc d
    ld [bc], a
    adc e
    adc d
    ld [bc], a
    adc d
    adc l
    ld [bc], a
    adc e
    adc d
    ld [bc], a
    adc e
    ld a, d
    ld [bc], a
    adc h
    ld a, d
    ld [bc], a
    adc e
    nop
    ld [c], a
    db $ed
    ld [bc], a
    adc h
    adc d
    ld [bc], a
    adc h
    adc l
    ld [bc], a
    adc h
    adc d
    ld [bc], a
    adc h
    ld a, d
    ld [bc], a
    adc h
    ld a, l
    ld [bc], a
    adc h
    ld a, d
    ld [c], a
    db $ed
    ld [bc], a
    adc e
    ld a, d
    ld [bc], a
    adc d
    ld a, l
    ld [bc], a
    adc e
    ld a, d
    ld [bc], a
    adc e
    adc d
    ld [bc], a
    adc h
    adc d
    ld [bc], a
    adc e
    nop
    ld [c], a
    db $ed
    ld [bc], a
    adc h
    ld a, e
    ld [bc], a
    adc d
    ld a, e
    ld [bc], a
    adc b
    ld a, d
    ld [bc], a
    add h
    ld a, d
    ld [bc], a
    ld [hl], h
    ld a, d
    ld [bc], a
    ld a, b
    ld a, d
    nop
    ld a, d
    ld a, d
    jp hl


    ld [hl], a
    ld c, e
    dec b
    ld sp, hl
    adc a
    rst $38
    ld a, a
    inc hl
    ld sp, hl
    sub c
    rst $38
    db $fd
    nop
    ld sp, hl
    and b
    pop de
    rst $08
    nop
    db $f4
    rst $18
    db $d3
    nop
    db $f4

Jump_00c_5d49:
    ldh [$d3], a
    nop
    db $f4
    cp [hl]
    db $d3
    nop
    and $10
    ld bc, $8800
    ld [bc], a
    nop
    nop
    push af
    ld d, l
    ret nc

    or $d1
    ret nc

    or $5d
    ret nc

    rst $20
    push af
    ld d, d
    ret nc

    ld sp, hl
    sub h
    rst $38
    rst $18
    nop
    ld sp, hl
    sub c
    rst $38
    cp [hl]
    nop
    nop
    nop
    nop
    di
    ldh a, [$5c]
    ld b, b
    ld bc, $0000
    ld a, [c]
    pop hl
    dec l
    ld b, e
    add sp, -$0b
    ld c, b
    db $eb
    cp l
    db $d3
    and e
    ld e, l
    and e
    ld e, l
    and e
    ld e, l
    and e
    ld e, l
    and e
    ld e, l
    and e
    ld e, l
    and e
    ld e, l
    and e
    ld e, l
    xor b
    ld e, l
    and e
    ld e, l
    and e
    ld e, l
    and e
    ld e, l
    and e
    ld e, l
    and e
    ld e, l
    and e
    ld e, l
    and e
    ld e, l
    inc c
    nop
    nop
    ld [c], a
    sub $e8
    ld hl, $6a31
    ld [hl], $ee
    or c
    ld b, c
    ld l, a
    ld e, d
    nop
    nop
    nop
    push hl
    ld sp, hl
    ld e, b
    cp d
    ld e, l
    ld [$0000], sp
    add sp, $5c
    ld c, c
    db $eb
    cp l
    db $d3
    cp d
    ld e, l
    cp d
    ld e, l
    cp d
    ld e, l
    cp d
    ld e, l
    db $d3
    ld e, l
    cp d
    ld e, l
    cp d
    ld e, l
    cp d
    ld e, l
    ld e, $00
    nop
    push hl
    ld [$db59], sp
    ld e, l
    ld [hl-], a
    nop
    nop
    push hl
    rla
    ld e, c
    db $e3
    ld e, l
    ld [hl-], a
    nop
    nop
    inc a
    nop
    add h
    jp hl


    sub [hl]
    ld e, $1c
    xor $08
    ld b, d
    nop
    nop
    nop
    nop
    nop
    and $02
    ld [bc], a
    adc d
    ld [hl], h
    ld [bc], a
    adc b
    ld a, b
    ld [bc], a
    adc b
    adc b
    ld [bc], a
    adc d
    add h
    rst $20
    and $04
    ld [bc], a
    ld a, d
    ld [hl], h
    ld [bc], a
    ld a, b
    ld a, b
    ld [bc], a
    ld a, b
    adc b
    ld [bc], a
    ld a, d
    add h
    rst $20
    and $02
    ld [bc], a
    adc d
    ld [hl], h
    ld [bc], a
    adc b
    ld a, b
    ld [bc], a
    adc b
    adc b
    ld [bc], a
    adc d
    add h
    rst $20
    ld [c], a
    jp nc, Jump_00c_7405

jr_00c_5e26:
    adc b
    dec b
    db $76
    adc b
    dec b
    nop
    adc b
    dec b
    add h
    adc b
    dec b
    add [hl]
    adc b
    dec b
    ld [hl], h
    adc b
    dec b
    db $76
    adc b
    dec b
    add [hl]
    ld [hl], h
    dec b
    db $76
    add h
    and $03
    dec b
    nop
    ld a, b
    dec b
    add h
    ld a, b
    dec b
    add [hl]
    ld a, b
    dec b
    ld [hl], h
    ld a, b
    dec b
    db $76
    ld a, b
    rst $20
    dec b
    db $76
    add h
    dec b
    add [hl]
    ld [hl], h
    dec b
    nop
    adc b
    dec b
    add h
    adc b
    dec b
    add [hl]
    adc b
    dec b
    ld [hl], h
    adc b
    dec b
    db $76
    adc b
    dec b
    nop
    adc b
    dec b
    add h
    adc b
    dec b
    add [hl]

jr_00c_5e6e:
    adc b
    pop hl
    inc h
    ld e, [hl]
    ld h, h

jr_00c_5e73:
    nop
    nop
    ld a, [bc]

jr_00c_5e76:
    nop
    adc d
    ld [$8900], sp
    rlca

jr_00c_5e7c:
    nop

jr_00c_5e7d:
    add a
    rlca
    nop
    add h
    ld b, $00
    nop
    ld b, $00
    nop
    rlca
    nop
    ld [hl], h
    rlca
    nop
    ld [hl], a
    ld [$7900], sp
    ld a, [bc]
    nop
    ld a, d
    ld [c], a
    sbc $28
    add [hl]
    adc d
    db $e3
    and a
    ld e, [hl]

jr_00c_5e9b:
    nop

jr_00c_5e9c:
    add [hl]
    adc d
    jr z, jr_00c_5e26

    ld a, d
    db $e3

jr_00c_5ea2:
    and a
    ld e, [hl]
    nop
    add [hl]
    ld a, d
    push hl
    ld c, c
    ld e, h
    xor h
    ld e, [hl]
    ld a, [bc]
    nop
    nop
    db $fc
    ld a, [bc]
    ld d, e
    sbc d
    ld d, a
    ret


    inc [hl]
    db $fc
    ld a, [bc]
    ld d, e
    ld [$c943], sp
    inc [hl]
    db $fc
    ld a, [bc]
    ld d, e
    sub a
    ld d, a
    ret


    inc [hl]
    db $e4
    add sp, -$24
    jr nc, jr_00c_5e9b

    ld e, [hl]
    jp nc, $015e

    nop
    nop
    pop hl
    push bc
    ld e, [hl]
    xor $08
    ld b, d
    nop
    nop
    push hl
    call nz, $0862
    ld b, b
    xor $08
    ld b, d
    nop
    nop
    push hl
    call nz, $0862
    ld b, b
    jr nz, jr_00c_5e6e

    ld a, b
    jr nz, jr_00c_5e73

    ld a, c
    jr nz, jr_00c_5e76

    db $76
    jr nz, @-$76

    add [hl]
    jr nz, jr_00c_5e7c

    adc c
    jr nz, jr_00c_5e7d

    adc b
    pop hl
    and $5e
    jr nz, jr_00c_5f73

    ld a, b
    jr nz, jr_00c_5f78

    ld a, c
    jr nz, jr_00c_5f7b

    db $76
    jr nz, jr_00c_5f7e

    add [hl]
    jr nz, jr_00c_5f81

    adc c
    jr nz, jr_00c_5f82

    adc b
    pop hl
    ei
    ld e, [hl]
    jr nz, jr_00c_5e9c

    nop
    jr nz, jr_00c_5f15

jr_00c_5f15:
    ld a, d
    jr nz, jr_00c_5ea2

    nop
    jr nz, jr_00c_5f1b

jr_00c_5f1b:
    adc d
    pop hl
    db $10
    ld e, a
    and $0a
    ld [bc], a
    nop
    ld a, b
    ld [bc], a
    nop
    adc b
    rst $20
    nop
    adc b
    nop
    ld b, b
    adc b
    add [hl]
    ld b, b
    db $76
    add a
    ld b, b
    db $76
    ld a, c
    pop hl
    dec hl
    ld e, a
    ld b, b
    add l
    ld [hl], a
    ld b, b
    add l
    add a
    ld b, b
    add l
    ld [hl], a
    ld b, b
    ld [hl], l
    add a
    ld b, b
    ld [hl], l
    ld [hl], a
    ld b, b
    ld [hl], l
    add a
    pop hl
    scf
    ld e, a
    ld [$8a00], sp
    ld [$8900], sp
    ld b, $00
    adc b
    ld b, $00
    ld a, b
    ld [$7900], sp
    ld [$7a00], sp
    nop
    nop
    nop
    ld [hl], $86
    nop
    ld [hl], $76
    nop
    inc h
    add [hl]
    nop
    inc h
    halt
    nop
    ld [de], a
    add [hl]
    nop
    ld [de], a
    halt
    nop

jr_00c_5f73:
    inc d
    nop
    nop
    stop

jr_00c_5f78:
    adc c
    ld a, [bc]
    nop

jr_00c_5f7b:
    add a
    ld b, $00

jr_00c_5f7e:
    add [hl]
    ld b, $00

jr_00c_5f81:
    db $76

jr_00c_5f82:
    ld a, [bc]
    nop
    ld [hl], a
    stop
    ld a, c
    inc d
    nop
    nop
    pop hl
    ld h, c
    ld e, a
    inc b
    adc b
    ld [hl], l
    inc b
    adc b
    db $76
    dec b
    adc b
    ld a, b
    inc b
    add [hl]
    ld a, b
    inc b
    add l
    ld a, b
    inc b
    ld [hl], l
    ld a, b
    inc b
    db $76
    ld a, b
    dec b
    ld a, b
    ld a, b
    inc b
    ld a, b
    db $76
    inc b
    ld a, b
    ld [hl], l
    inc b
    ld a, b
    add l
    inc b
    ld a, b
    add [hl]
    dec b
    ld a, b
    adc b
    inc b
    db $76
    adc b
    inc b
    ld [hl], l
    adc b
    inc b
    add l
    adc b
    inc b
    add [hl]
    adc b
    dec b
    adc b
    adc b
    inc b
    adc b
    add [hl]
    inc b
    adc b
    add l
    pop hl
    adc [hl]
    ld e, a
    ld [$8a00], sp
    ld [$8a00], sp
    ld [$8800], sp
    ld [$8600], sp
    ld [$8400], sp
    pop hl
    ld b, h
    ld b, h
    ld [$7a00], sp
    ld [$7800], sp
    ld [$7600], sp
    ld [$7400], sp
    pop hl
    ld b, h
    ld b, h
    add sp, -$4e
    jr nc, @-$09

    ld e, a
    ld a, [bc]
    ld h, b
    ld [$8a85], sp
    ld [$8886], sp
    ld [$8787], sp
    ld [$7787], sp
    ld [$7886], sp
    ld [$7a85], sp
    pop hl
    push af
    ld e, a
    ld [$8875], sp
    ld [$8676], sp
    ld [$8777], sp
    ld [$7777], sp
    ld [$7676], sp
    ld [$7875], sp
    pop hl
    ld a, [bc]
    ld h, b
    and $02
    db $e3
    ld c, d
    ld h, b
    db $e3
    ld c, d
    ld h, b
    db $e3
    ld c, d
    ld h, b
    db $e3
    add b
    ld h, b
    db $e3
    add b
    ld h, b
    db $e3
    add b
    ld h, b
    rst $20
    push hl
    cpl
    ld e, l
    add hl, sp
    ld h, b
    and $08
    ld [bc], a
    ld a, d
    nop
    ld [bc], a
    adc d
    nop
    rst $20
    xor $c2
    ld b, d
    ld bc, $e100
    rra
    ld h, b
    add sp, $5c
    ld c, c
    db $eb
    cp l
    db $d3
    ld h, b
    ld h, b
    ld h, h
    ld h, b
    ld l, b
    ld h, b
    ld l, h
    ld h, b
    ld [hl], b
    ld h, b
    ld [hl], h
    ld h, b
    ld a, b
    ld h, b
    ld a, h
    ld h, b
    ld a, [bc]
    nop
    adc b
    db $e4
    ld a, [bc]
    ld [hl], a
    add a
    db $e4
    ld a, [bc]
    ld a, b
    nop
    db $e4
    ld a, [bc]
    ld [hl], a
    ld [hl], a
    db $e4
    ld a, [bc]
    nop
    ld a, b
    db $e4
    ld a, [bc]
    add a
    ld [hl], a

jr_00c_6077:
    db $e4
    ld a, [bc]
    adc b
    nop
    db $e4
    ld a, [bc]
    add a
    add a
    db $e4
    add sp, $5c
    ld c, c
    db $eb
    cp l
    db $d3
    sub [hl]
    ld h, b
    sbc d
    ld h, b
    sbc [hl]
    ld h, b
    and d
    ld h, b
    and [hl]
    ld h, b
    xor d
    ld h, b
    xor [hl]
    ld h, b
    or d
    ld h, b
    ld a, [bc]
    nop
    add a
    db $e4
    ld a, [bc]
    db $76
    add [hl]
    db $e4
    ld a, [bc]
    ld [hl], a
    nop
    db $e4
    ld a, [bc]
    db $76
    db $76
    db $e4
    ld a, [bc]
    nop
    ld [hl], a
    db $e4
    ld a, [bc]
    add [hl]
    db $76
    db $e4
    ld a, [bc]
    add a
    nop
    db $e4
    ld a, [bc]
    add [hl]
    add [hl]
    db $e4
    add sp, -$4e
    jr nc, jr_00c_6077

    ld h, b
    reti


    ld h, b
    and $02
    ld [bc], a
    ld a, h
    nop
    ld [bc], a
    adc d
    nop
    rst $20
    and $02
    ld [bc], a
    ld a, h
    nop
    ld [bc], a
    adc c
    nop
    rst $20
    and $02
    ld [bc], a
    ld a, e
    nop
    ld [bc], a
    adc b
    nop
    rst $20
    ldh [$e6], a
    ld [bc], a
    ld [bc], a
    adc h
    nop
    ld [bc], a
    ld a, d
    nop
    rst $20
    and $02
    ld [bc], a
    adc h
    nop
    ld [bc], a
    ld a, c
    nop
    rst $20
    and $02
    ld [bc], a
    adc e
    nop
    ld [bc], a
    ld a, b
    nop
    rst $20
    ldh [$e6], a
    ld [bc], a
    ld [$7985], sp
    ld [$7789], sp
    ld [$7487], sp
    ld [$8485], sp
    ld [$7975], sp
    ld [$7779], sp
    ld [$7477], sp
    ld [$8475], sp
    rst $20
    db $e4
    xor $c2
    ld b, b
    daa
    ld e, a
    db $e3
    push af
    ld h, b
    db $fc
    ld c, e
    ld e, a
    ld [$8540], sp
    ld [hl], $e5
    ld h, b
    ld e, a
    ld [$ee40], sp
    jp nz, $2740

    ld e, a
    db $e3
    push af
    ld h, b
    db $fc
    ld c, e
    ld e, a
    ld [$8540], sp
    ld [hl], $e5
    ld [hl], d
    ld e, a
    ld [$ee40], sp
    jp nz, $3940

    ld e, a
    db $e3
    push af
    ld h, b
    db $fc
    ld c, e
    ld e, a
    ld [$8540], sp
    ld [hl], $e5
    add h
    ld e, a
    ld [$ee40], sp
    jp nz, $3940

    ld e, a
    db $e3
    push af
    ld h, b
    db $fc
    ld c, e
    ld e, a
    ld [$8540], sp
    ld [hl], $e5
    sub [hl]
    ld e, a
    ld [$e840], sp
    or d
    jr nc, jr_00c_61cd

    ld h, c
    sub b
    ld h, c
    pop af
    nop
    ldh a, [$08]
    db $76
    adc b
    ld [$8975], sp
    add sp, $21
    ld sp, $3685
    ld [$8975], sp
    xor $08
    ld b, d
    nop
    nop
    jp hl


    sub [hl]
    ld e, $1c
    ret z

    nop
    nop
    ld h, h
    nop
    nop
    db $fc
    cp [hl]
    ld b, e
    ld [$bb40], sp
    dec [hl]
    ldh [$f1], a
    nop
    ldh a, [$08]
    add [hl]
    adc b
    ld [$8985], sp
    add sp, $21
    ld sp, $3685
    ld [$8985], sp
    xor $08
    ld b, d
    nop
    nop
    jp hl


    sub [hl]
    ld e, $1c
    ret z

    nop
    nop
    ld h, h
    nop
    nop
    db $fc
    cp [hl]
    ld b, e
    ld [$bb40], sp
    dec [hl]
    ldh [rNR10], a
    nop
    nop
    stop
    ld [hl], l
    stop
    db $76
    stop
    ld [hl], a
    and $03
    db $fc
    ld a, b
    ld e, l
    adc [hl]
    ld d, a
    ret


    inc [hl]

jr_00c_61cd:
    inc b
    nop
    adc e
    inc b
    nop
    ld a, d
    inc b
    nop
    adc b
    inc b
    nop
    nop
    rst $20
    pop hl
    cp b
    ld h, c
    inc d
    adc b
    ld a, e
    rrca
    ld a, c
    nop
    inc d
    adc c
    adc e
    inc d
    adc c
    ld a, e
    rrca
    ld a, c
    nop
    inc d
    adc b
    adc e
    inc d
    ld a, b
    ld a, e
    rrca
    adc c
    nop
    inc d
    ld a, c
    adc e
    inc d
    ld a, c
    ld a, e
    rrca
    adc c
    nop
    inc d
    ld a, b
    adc e
    pop hl
    db $dd
    ld h, c
    inc b
    adc d
    ld a, c
    inc b
    adc c
    ld a, d
    inc b
    adc b
    ld a, e
    inc b
    add a
    ld a, h
    inc b
    ld [hl], a
    ld a, h
    inc b
    ld a, b
    ld a, e
    inc b
    ld a, c
    ld a, d
    inc b
    ld a, d
    ld a, c
    inc b
    ld a, d
    adc c
    inc b
    ld a, c
    adc d
    inc b
    ld a, b
    adc e
    inc b
    ld [hl], a
    adc h
    inc b
    add a
    adc h
    inc b
    adc b
    adc e
    inc b
    adc c
    adc d
    inc b
    adc d
    adc c
    pop hl
    inc b
    ld h, d
    inc b
    ld a, d
    ld a, c
    inc b
    ld a, c
    ld a, d
    inc b
    ld a, b
    ld a, e
    inc b
    ld [hl], a
    ld a, h
    inc b
    add a
    ld a, h
    inc b
    adc b
    ld a, e
    inc b
    adc c
    ld a, d
    inc b
    adc d
    ld a, c
    inc b
    adc d
    adc c
    inc b
    adc c
    adc d
    inc b
    adc b
    adc e
    inc b
    add a
    adc h
    inc b
    ld [hl], a
    adc h
    inc b
    ld a, b
    adc e
    inc b
    ld a, c
    adc d
    inc b
    ld a, d
    adc c
    pop hl
    scf
    ld h, d
    ld b, $8a
    add a
    ld b, $8d
    add l
    ld b, $8c
    ld [hl], l
    ld b, $89
    db $76
    ld b, $84
    ld [hl], d
    inc bc
    ld [hl], h
    ld [hl], d
    inc b
    ld a, c
    db $76
    inc b
    ld a, h
    ld [hl], l
    inc b
    ld a, l
    add l
    nop
    ld a, e
    add a
    ldh [$09], a
    adc d
    add a
    add hl, bc
    adc l
    add l
    add hl, bc
    adc h
    ld [hl], l
    add hl, bc
    adc c
    db $76
    inc b
    add h
    ld [hl], d
    inc b
    ld [hl], h
    ld [hl], d
    add hl, bc
    ld a, c
    db $76
    add hl, bc
    ld a, h
    ld [hl], l
    add hl, bc
    ld a, l
    add l
    add hl, bc
    ld a, d
    add [hl]
    ldh [$09], a
    adc d
    adc b
    add hl, bc
    adc l
    adc b
    add hl, bc
    adc h
    adc b
    add hl, bc
    adc c
    add [hl]
    inc b
    add h
    add h
    inc b
    ld [hl], h
    ld [hl], h
    add hl, bc
    ld a, c
    db $76
    add hl, bc
    ld a, h
    ld a, b
    add hl, bc
    ld a, l
    ld a, b
    add hl, bc
    ld a, d
    ld a, b
    ldh [$09], a
    adc d
    ld a, b
    add hl, bc
    adc l
    ld a, b
    add hl, bc
    adc h
    ld a, b
    add hl, bc
    adc c
    db $76
    inc b
    add h
    ld [hl], h
    inc b
    ld [hl], h
    add h
    add hl, bc
    ld a, c
    add [hl]
    add hl, bc
    ld a, h
    adc b
    add hl, bc
    ld a, l
    adc b
    add hl, bc
    ld a, d
    adc b
    ldh [rTMA], a
    ld a, d
    add a
    ld b, $7d
    add l
    ld b, $7c
    ld [hl], l
    ld b, $79
    db $76
    ld b, $74
    ld [hl], d
    inc bc
    add h
    ld [hl], d
    inc b
    adc c
    db $76
    inc b
    adc h
    ld [hl], l
    inc b
    adc l
    add l
    nop
    adc e
    add a
    ldh [$09], a
    ld a, d
    ld [hl], a
    inc b
    ld a, l
    ld [hl], a
    ldh [$fc], a
    inc e
    ld h, c
    ld [$2140], sp
    inc [hl]
    ld bc, $0000
    db $ec
    ld a, [bc]
    db $fc
    add hl, de
    ld h, c
    ld [hl+], a
    ld h, e
    ld hl, $e134
    inc de
    ld h, e
    jr nc, jr_00c_6324

jr_00c_6324:
    ld a, d
    ldh [$fb], a
    inc bc
    jr nc, jr_00c_638d

    inc sp
    ld h, e
    ld [hl], $63
    add hl, sp
    ld h, e
    nop
    add l
    ld a, c
    nop
    add h
    ld a, c
    nop
    add [hl]
    ld a, c
    nop
    add e
    ld a, c
    add sp, -$2a
    ld c, d
    rst $30
    sub d
    rst $38
    ld b, b
    ld c, a
    ld h, e
    ei
    inc bc
    ld e, l
    ld h, e

Jump_00c_6349:
    ld h, b
    ld h, e
    ld h, e
    ld h, e
    ld h, [hl]
    ld h, e
    ldh [$e8], a
    sub $4a
    rst $30
    sub d
    rst $38
    ld b, b
    ld e, h
    ld h, e
    pop hl
    ld a, c
    ld d, a
    ldh [rP1], a
    ld [hl], l
    ld a, c
    nop
    ld [hl], h
    ld a, c
    ld bc, $7985
    nop
    add h
    ld a, c
    add sp, -$0b
    ld c, b
    db $eb
    cp l
    db $d3
    adc a
    ld h, e
    adc a
    ld h, e
    adc a
    ld h, e
    adc a
    ld h, e
    sbc d
    ld h, e
    and d
    ld h, e
    and d
    ld h, e
    and d
    ld h, e
    and d
    ld h, e
    and d
    ld h, e
    and d
    ld h, e
    and d
    ld h, e
    sbc d
    ld h, e
    adc a
    ld h, e
    adc a
    ld h, e

jr_00c_638d:
    adc a
    ld h, e
    db $10
    adc d
    nop
    ld [$8a00], sp
    db $10
    ld a, d
    nop
    ld [c], a
    ret nc

    db $10
    adc d
    nop
    db $10
    ld a, d
    nop
    ld [c], a
    ret z

    db $10
    adc d
    nop
    ld [$7a00], sp
    db $10
    ld a, d
    nop
    ld [c], a
    cp l
    jr z, jr_00c_63af

jr_00c_63af:
    nop
    and $02
    ld [$847c], sp
    ld [$867a], sp
    ld [$8779], sp
    ld [$8878], sp
    ld [$8877], sp
    ld [$8887], sp
    ld [$8888], sp
    ld [$8789], sp
    ld [$868a], sp
    ld [$848c], sp
    pop af
    nop
    ld c, $08
    adc e
    ld [hl], h
    ld [$768a], sp
    ld [$7789], sp
    ld [$7888], sp
    ld [$7887], sp
    ld [$7877], sp
    ld [$7878], sp
    ld [$7779], sp
    ld [$767a], sp
    ld [$747b], sp
    rst $20
    ld e, $7b
    add h
    ldh [$e3], a
    ld [hl], e
    ld h, h
    db $10
    ld [hl], h
    add a
    db $10
    ld [hl], h
    add [hl]
    db $10
    ld [hl], h
    add l
    db $10
    ld [hl], h
    ld [hl], l
    db $10
    ld [hl], h
    db $76
    db $10
    ld [hl], h
    ld [hl], a
    jr nz, jr_00c_640d

jr_00c_640d:
    nop
    db $e3
    ld [hl], e
    ld h, h
    ld a, [bc]
    ld [hl], l
    add [hl]
    ld [$8476], sp
    ld [$7475], sp
    ld a, [bc]
    ld [hl], h
    db $76
    ld a, [bc]
    ld [hl], l
    db $76
    ld [$7476], sp
    ld [$8475], sp
    ld a, [bc]
    ld [hl], h
    add [hl]
    ld b, b
    ld [hl], h
    nop
    jr nc, @+$76

    nop
    db $10
    ld [hl], h
    adc b
    db $10
    ld [hl], h
    add [hl]
    db $10
    ld [hl], h
    add h
    db $10
    ld [hl], h
    nop
    db $10
    ld [hl], h
    ld [hl], h
    db $10
    ld [hl], h
    db $76
    db $10
    ld [hl], h
    ld a, b
    ld [$8875], sp
    ld [$8575], sp
    ld [$7575], sp
    ld [$7875], sp
    stop
    nop
    and $02
    ld [$8875], sp
    ld [$8575], sp
    ld [$7575], sp
    ld [$7875], sp
    rst $20
    ld a, [bc]
    ld [hl], l
    adc b
    ld a, [bc]
    ld [hl], l
    add [hl]
    ld a, [bc]
    ld [hl], l
    add l
    ld a, [bc]
    ld [hl], l
    add h
    ld a, [bc]

Call_00c_646f:
    ld [hl], l
    add l
    ld [c], a
    ld sp, hl
    and $02
    ld [de], a
    ld [hl], l
    add h
    dec bc
    ld [hl], l
    nop
    ld [de], a
    ld [hl], l
    ld [hl], h
    dec bc
    ld [hl], l
    nop
    rst $20
    db $e4
    stop
    nop
    stop
    add e
    stop
    add h
    stop
    add l
    stop
    add h
    stop
    add e
    stop
    nop
    stop
    ld [hl], e
    stop
    ld [hl], h
    stop
    ld [hl], l
    stop
    ld [hl], h
    stop
    ld [hl], e
    stop
    nop
    pop hl
    add e
    ld h, h
    jr nz, jr_00c_64af

jr_00c_64af:
    nop
    ld [$8678], sp
    ld b, $78
    db $76
    ld b, $78
    ld a, b
    ld b, $78
    ld a, d
    ld b, $78
    ld a, e
    ld b, $77
    adc d
    ld b, $77
    add [hl]
    ld b, $77
    db $76
    ld b, $77
    ld a, d
    ld [$0077], sp
    inc a
    ld a, c
    nop
    jr nz, jr_00c_64d3

jr_00c_64d3:
    nop
    and $05
    ld [$8688], sp
    ld [$0088], sp
    ld [$0088], sp
    ld [$7688], sp
    rst $20
    jr nz, jr_00c_64e5

jr_00c_64e5:
    nop
    ldh [$30], a
    nop
    nop
    ld [$8876], sp
    ld [$7576], sp
    ld [$8977], sp
    ld [$7777], sp
    ld [$8978], sp
    ld [$7779], sp
    ld [$8879], sp
    inc b
    ld a, c
    ld a, c
    ld [$8679], sp
    nop
    ld a, c
    adc c
    ld [$8989], sp
    ld [$7787], sp
    ld [$8789], sp
    ld [$7a89], sp
    ld [$8489], sp
    ld [$7989], sp
    ld [$7487], sp
    ld [$8a89], sp
    pop hl
    ld [$e365], sp
    ld a, h
    ld h, l
    ld [$7800], sp
    ld [$7900], sp
    ld [$7a00], sp
    ld [$7b00], sp
    ld b, $00
    ld a, h
    push hl
    db $fd
    ld h, h
    ld [$e340], sp
    ld a, h
    ld h, l
    ld [$7800], sp
    ld [$7900], sp
    ld [$7a00], sp
    dec bc
    nop
    ld a, e
    push hl
    db $fd
    ld h, h
    ld [$e340], sp
    ld a, h
    ld h, l
    ld [$7800], sp
    ld [$7900], sp
    ld [$7a00], sp
    ld [$7b00], sp
    add hl, bc
    nop
    ld a, h
    push hl
    db $fd
    ld h, h
    ld [$e340], sp
    ld a, h
    ld h, l
    ld [$7800], sp
    ld [$7900], sp
    ld [$7a00], sp
    ld [$7b00], sp
    ld b, $00
    ld a, h
    push hl
    db $fd
    ld h, h
    ld [$5940], sp
    nop
    nop
    and $03
    ld [bc], a
    nop
    adc d
    ld [bc], a
    nop
    ld a, d
    rst $20
    db $e4
    sub b
    nop
    nop
    ld h, h
    nop
    nop
    ld [$8684], sp
    ld [bc], a
    add h
    add h
    ld [$0000], sp
    ld [$7800], sp
    ld [$7900], sp
    add hl, bc
    nop
    ld a, d
    push hl
    db $fd
    ld h, h
    ld [$6a40], sp
    nop
    nop
    ld h, b
    nop
    nop
    ld h, $00
    ld a, d
    ld [$8a89], sp
    and $03
    ld [bc], a
    nop
    ld a, d
    ld [bc], a
    nop
    adc d
    rst $20
    nop
    nop
    nop
    ld l, d
    nop
    nop
    ld [$0084], sp
    ld [$0086], sp
    ld b, b
    nop
    nop
    ld [$0076], sp
    ld [$0074], sp
    nop
    nop
    nop
    ld h, b
    nop
    nop
    ld a, [bc]
    adc b
    adc e
    ld a, [bc]
    adc d
    adc b
    ld a, [bc]
    adc c
    add h
    ld a, [bc]
    adc b
    ld [hl], l
    ld a, [bc]
    add [hl]
    db $76
    ld a, [bc]
    add h
    ld [hl], a
    ld [$7974], sp
    ld b, $75
    ld a, c
    ld b, $00
    adc d
    ld b, $00
    add a
    ld b, $00
    ld [hl], a
    ld b, $00
    ld a, d
    ld a, [bc]
    db $76
    add l
    ld [$887a], sp
    ldh [rBCPS], a
    nop
    nop
    ld [$8b85], sp
    ld [$8a88], sp
    ld [$8989], sp
    ld [$888b], sp
    ld [$868a], sp
    ld [$7688], sp
    ld [$7887], sp
    ld [$7a85], sp
    ld [$7b00], sp
    dec b
    add h
    adc e
    dec b
    add h
    adc b
    dec b
    add h
    ld a, b
    dec b
    add h
    ld a, e
    ld [$8475], sp
    ld [$8579], sp
    ld b, $7b
    add [hl]
    ldh [$32], a
    nop
    nop
    dec l
    nop
    ld a, d
    stop
    nop
    ldh [$60], a
    nop
    nop
    add h
    nop
    nop
    db $fc
    sub h
    ld h, l
    ld d, b
    ld h, [hl]
    dec h
    inc [hl]
    db $ec
    rlca
    ld [c], a
    or $fe
    rrca
    add h
    ld h, [hl]
    adc b
    ld h, [hl]
    adc h
    ld h, [hl]
    sub b
    ld h, [hl]
    sub h
    ld h, [hl]
    sbc b
    ld h, [hl]
    sbc h
    ld h, [hl]
    and b
    ld h, [hl]
    and h
    ld h, [hl]
    xor b
    ld h, [hl]
    xor h
    ld h, [hl]
    or b
    ld h, [hl]
    or h
    ld h, [hl]
    cp b
    ld h, [hl]
    cp h
    ld h, [hl]
    ret nz

    ld h, [hl]
    ei
    rlca
    call nz, $d966
    ld h, [hl]
    xor $66
    inc bc
    ld h, a
    dec d
    ld h, a
    call nz, $d966
    ld h, [hl]
    xor $66
    pop af
    cp $fa
    db $e4
    pop af
    ei
    db $fc
    db $e4
    pop af
    ld hl, sp-$08
    db $e4
    pop af
    push af
    ld a, [$f1e4]
    ld a, [c]
    db $fc
    db $e4
    pop af
    rst $28
    ld hl, sp-$1c
    pop af
    nop
    ld a, [$f1e4]
    rst $38
    db $fc
    db $e4
    pop af
    ld [bc], a
    ld hl, sp-$1c
    pop af
    dec b
    ld a, [$f1e4]
    ld [$e4fc], sp
    pop af
    dec bc
    ld hl, sp-$1c
    pop af
    ld c, $fa
    db $e4
    pop af
    ld de, $e4fc
    pop af
    nop
    ld hl, sp-$1c
    pop af
    ld bc, $e4fa
    inc bc
    nop
    adc b
    inc bc
    nop
    add [hl]
    inc bc
    nop
    ld a, b
    inc b
    nop
    ld a, c
    inc b
    nop
    ld a, d
    inc b
    nop
    ld a, e
    nop
    nop
    ld a, h
    inc bc
    add [hl]
    adc b
    inc bc
    add [hl]
    add [hl]
    inc bc
    add [hl]
    ld a, b
    inc b
    add [hl]
    ld a, c
    inc b
    add [hl]
    ld a, d
    inc b
    add [hl]
    ld a, e
    nop
    add [hl]
    ld a, h
    inc bc
    db $76
    adc b
    inc bc
    db $76
    add [hl]
    inc bc
    db $76
    ld a, b
    inc b
    db $76
    ld a, c
    inc b
    db $76
    ld a, d
    inc b
    db $76
    ld a, e
    nop
    db $76
    ld a, h
    inc bc
    adc b
    adc b
    inc bc
    adc b
    add [hl]
    inc bc
    adc b
    ld a, c
    inc b
    adc b
    ld a, d
    inc b
    adc b
    ld a, e
    nop
    adc b
    ld a, h
    inc bc
    ld a, b
    adc b
    inc bc
    ld a, b
    add [hl]
    inc bc
    ld a, b
    ld a, c
    inc b
    ld a, b
    ld a, d
    inc b
    ld a, b
    ld a, e
    nop
    ld a, b
    ld a, h
    sbc h
    nop
    nop
    and b
    nop
    nop
    ld h, b
    nop
    nop
    ld b, b
    nop
    nop
    jr nc, jr_00c_6735

jr_00c_6735:
    nop
    ld [hl], b
    ld [hl], h
    db $76
    inc d
    ld [hl], e
    ld [hl], l
    push hl
    db $10
    ld c, d
    ld [$8440], sp
    nop
    nop
    and $04
    ld [$7885], sp
    ld [$7a85], sp
    ld [$7885], sp
    ld [$8885], sp
    ld [$8a85], sp
    ld [$8885], sp
    rst $20
    ld [$7885], sp
    ld [$7a85], sp
    ld [$7885], sp
    ld [$8685], sp
    ld [$8984], sp
    stop
    nop
    ld b, $76
    db $76
    ld b, $78
    ld a, b
    ld b, $79
    ld a, c
    inc b
    ld a, d
    ld a, b
    inc b
    ld a, e
    adc b
    inc b
    ld a, e
    adc e
    inc b
    ld a, e
    adc h
    inc b
    ld a, c
    adc l
    inc b
    adc c
    adc l
    inc b
    adc d
    adc l
    inc b
    adc e
    adc l
    inc b
    adc h
    adc l
    inc b
    adc [hl]
    adc l
    ldh [$fb], a
    inc bc
    sbc l
    ld h, a
    and b
    ld h, a
    and e
    ld h, a
    and [hl]
    ld h, a
    nop
    adc e
    adc e
    nop
    adc d
    adc e
    nop
    adc d
    adc h
    nop
    adc c
    adc h
    jr nc, jr_00c_6823

    nop
    ld b, $78
    adc d
    ld b, $78
    adc b
    ld b, $78
    add [hl]
    ld b, $78
    db $76
    ld b, $78
    ld a, b
    ld b, $78
    ld a, d
    ldh [$9c], a
    nop
    nop
    db $ec
    and b
    db $ec
    ld h, b
    db $ec
    ld d, b
    ld d, b
    adc b
    add l
    jr nz, jr_00c_67cd

jr_00c_67cd:
    nop
    nop
    nop
    nop
    add sp, -$5d
    ld c, b
    add sp, -$53
    ld c, d
    ldh a, [rP1]
    nop
    ld bc, $0000
    xor $8c
    ld b, d
    nop
    nop
    add h
    nop
    nop
    jr @+$7c

    ld a, d
    db $fc
    nop
    ld b, b
    inc b
    ld l, b
    dec h
    inc [hl]
    and b
    nop
    nop
    ld b, b
    ld a, d
    db $76
    ld b, b
    ld a, d
    ld [hl], h
    ld d, b
    ld a, d
    nop
    jr nz, @+$7a

    nop
    db $10
    ld a, b
    nop
    nop
    nop
    nop
    and $17
    db $fc
    dec bc
    ld c, c
    ld [de], a
    ld l, b
    dec h
    inc [hl]
    ld b, $00
    nop
    rst $20
    ldh [$fe], a
    rrca
    jr c, jr_00c_687e

    inc a
    ld l, b
    ld b, b
    ld l, b
    ld b, h
    ld l, b
    ld c, b
    ld l, b
    ld c, h
    ld l, b
    ld d, b
    ld l, b
    ld d, h

jr_00c_6823:
    ld l, b
    ld e, b
    ld l, b
    ld e, h
    ld l, b
    ld h, b
    ld l, b
    ld h, h
    ld l, b
    ld l, b
    ld l, b
    ld l, h
    ld l, b
    ld [hl], b
    ld l, b
    ld [hl], h
    ld l, b
    inc a
    adc e
    adc d
    ldh [$f0], a
    or b
    xor b
    db $e4
    ldh a, [$b0]
    sub h
    db $e4
    ldh a, [$b0]
    add b
    db $e4
    ldh a, [$b0]
    ld l, h
    db $e4
    ldh a, [$b0]
    ld e, b
    db $e4
    ldh a, [$b0]
    ld b, h
    db $e4
    ldh a, [$b0]
    jr nc, @-$1a

    ldh a, [$b0]
    inc e
    db $e4
    ldh a, [$9c]
    xor b
    db $e4
    ldh a, [$88]
    xor b
    db $e4
    ldh a, [$74]
    xor b
    db $e4
    ldh a, [$60]
    xor b
    db $e4
    ldh a, [$4c]
    xor b
    db $e4
    ldh a, [$38]
    xor b
    db $e4
    ldh a, [rNR50]
    xor b
    db $e4
    ldh a, [rNR10]
    xor b
    db $e4
    ld d, b
    ld [hl], b
    ld [hl], b
    and $0a
    ld [bc], a

jr_00c_687e:
    adc b
    nop
    ld [bc], a
    ld a, b
    nop
    rst $20
    nop
    nop
    nop
    ld [bc], a
    adc b
    nop
    ld [bc], a
    ld a, b
    nop
    jp hl


    sub [hl]
    ld e, $0a
    ld [c], a
    push af
    db $10
    add d
    add h
    jp hl


    sub [hl]
    ld e, $0c
    db $10
    add e
    add [hl]
    nop
    add h
    adc b
    ld d, b
    ld [hl], b
    ld [hl], b
    nop
    db $76
    add [hl]
    ld a, b
    nop
    nop
    pop hl
    call nz, Call_00c_7868
    nop
    nop
    pop hl
    ret nc

    ld l, b
    ld a, b
    nop
    nop
    pop hl
    call c, Call_00c_7868
    nop
    nop
    pop hl
    add sp, $68
    ld a, b
    nop
    nop
    pop hl
    db $f4
    ld l, b
    inc b
    ld a, d
    adc d
    inc b
    ld a, e
    adc c
    inc b
    ld a, h
    adc b
    inc b
    ld a, h
    add [hl]
    inc b
    ld a, h
    db $76
    inc b
    ld a, h
    ld a, b
    inc b
    ld a, e
    ld a, c
    inc b
    ld a, d
    ld a, d
    inc b
    db $76
    ld a, d
    inc b
    add [hl]
    ld a, d
    inc b
    adc d
    ld a, d
    inc b
    adc e
    ld a, c
    inc b
    adc h
    ld a, b
    inc b
    adc h
    db $76
    inc b
    adc h
    add [hl]
    inc b
    adc h
    adc b
    inc b
    adc e
    adc c
    inc b
    adc d
    adc d
    inc b
    add [hl]
    adc d
    inc b
    db $76
    adc d
    pop hl
    call nz, $3068
    ld [hl], b
    ld [hl], b
    ld [$7870], sp
    ld [$7a70], sp
    db $10
    ld [hl], b
    ld a, e
    jp hl


    sub [hl]
    ld e, $18
    ldh [rNR10], a
    ld [hl], b
    ld [hl], b
    ld [$7889], sp
    ld [$7a86], sp
    ld [$7b70], sp
    ld [$7878], sp
    ld [$7676], sp
    ld [$8675], sp
    ld [$897a], sp
    ld [$897a], sp
    ldh [rNR41], a
    ld [hl], b
    ld [hl], b
    ld [$7877], sp
    ld [$7a70], sp
    ld [$7a86], sp
    ld [$7a88], sp
    ld [$788a], sp
    ld [$788b], sp
    ldh [rNR10], a
    add b
    ld [hl], b
    ld [$7879], sp
    ld [$7a76], sp
    ld [$7b80], sp
    ld [$7888], sp
    ld [$7686], sp
    ld [$8685], sp
    ld [$898a], sp
    ld [$898a], sp
    ldh [rNR41], a
    add b
    ld [hl], b
    ld [$7887], sp
    ld [$7a80], sp
    ld [$7a76], sp
    ld [$7a78], sp
    ld [$787a], sp
    ld [$787b], sp
    ldh [rHDMA4], a
    nop
    nop
    and $03
    inc c
    add l
    nop
    ld a, [bc]
    add h
    nop
    ld a, [bc]
    add l
    nop
    inc c
    add h
    nop
    rst $20
    and $03
    ld b, $77
    nop
    ld b, $76
    nop
    ld b, $74
    nop
    ld b, $00
    nop
    rst $20
    nop
    nop
    nop
    ld bc, $0000
    jp hl


    or h
    ld e, $ff
    db $ec
    ret z

    db $ec
    inc d
    ld [hl], e
    nop
    ld a, b
    nop
    nop
    nop
    db $fc
    xor l
    ld h, a
    ld [hl], $6a
    dec h
    inc [hl]
    add hl, de
    nop
    nop
    db $fc
    ld [hl], l
    ld h, a
    ld [hl], $6a
    dec h
    inc [hl]
    add hl, de
    nop
    nop
    db $fc
    add e
    ld h, a
    ld [hl], $6a
    dec h
    inc [hl]
    add hl, de
    nop
    nop
    db $fc
    sub c
    ld h, a
    ld [hl], $6a
    dec h
    inc [hl]
    ldh [$e6], a
    ld [bc], a
    db $fc
    cp e
    ld h, a
    ld b, e
    ld l, d
    dec h
    inc [hl]
    inc d
    nop
    nop
    db $fc
    ret


    ld h, a
    ld b, e
    ld l, d
    dec h
    inc [hl]
    inc d
    nop
    nop
    rst $20
    db $fc
    cp e
    ld h, a
    ld b, e
    ld l, d
    dec h
    inc [hl]
    ldh [$fc], a
    ld [hl], d
    ld h, a
    ld [hl], b
    ld l, d
    dec h
    inc [hl]
    inc d
    nop
    nop
    db $fc
    ld [hl], d
    ld h, a
    ld [hl], b
    ld l, d
    dec h
    inc [hl]
    inc d
    nop
    nop
    db $fc
    ld [hl], d
    ld h, a
    ld [hl], b
    ld l, d
    dec h
    inc [hl]
    inc d
    nop
    nop
    db $fc
    ld [hl], d
    ld h, a
    ld [hl], b
    ld l, d
    dec h
    inc [hl]
    inc b
    nop
    nop
    ld a, [de]
    nop
    ld a, b
    and $03
    db $fc
    ld [hl], d
    ld h, a
    ld [hl], b
    ld l, d
    dec h
    inc [hl]
    jr z, jr_00c_6a28

jr_00c_6a28:
    ld a, b
    rst $20
    db $fc
    ld [hl], d
    ld h, a
    ld [hl], b
    ld l, d
    dec h
    inc [hl]
    ld d, b
    nop
    nop
    ld [c], a
    push af
    cp $03
    ld d, b
    ld l, d
    ld d, h
    ld l, d
    ld e, b
    ld l, d
    ld e, h
    ld l, d
    pop hl
    sbc [hl]
    ld l, d
    cp $03
    ld h, b
    ld l, d
    ld h, h
    ld l, d
    ld l, b
    ld l, d
    ld l, h
    ld l, d
    pop hl
    adc b
    ld l, d
    ldh a, [rNR14]
    nop
    db $e4
    ldh a, [$3c]
    nop
    db $e4
    ldh a, [$64]
    nop
    db $e4
    ldh a, [$8c]
    nop
    db $e4
    pop af
    db $ec
    nop
    db $e4
    pop af
    or $00
    db $e4
    pop af
    ld a, [bc]
    nop
    db $e4
    pop af
    inc d
    nop
    db $e4
    ei
    ld bc, $6a76
    ld a, c
    ld l, d
    nop
    ld [hl], e
    ld a, c
    nop
    ld [hl], h
    ld a, c
    ei
    ld bc, $6a82
    add l
    ld l, d
    nop
    ld [hl], e
    ld [hl], a
    nop
    ld [hl], h
    ld [hl], a
    ei
    inc bc
    sub d
    ld l, d
    sub l
    ld l, d
    sbc b
    ld l, d
    sbc e
    ld l, d
    nop
    ld [hl], e
    ld a, c
    nop
    ld [hl], h
    ld a, c
    nop
    ld [hl], l
    ld a, c
    nop
    ld [hl], h
    ld a, c
    ei
    inc bc
    xor b
    ld l, d
    xor e
    ld l, d
    xor [hl]
    ld l, d
    or c
    ld l, d
    nop
    ld [hl], e
    ld a, d
    nop
    ld [hl], h
    ld a, d
    nop
    ld [hl], l
    ld a, d
    nop
    db $76
    ld a, d
    jr nz, jr_00c_6ab6

jr_00c_6ab6:
    ld [hl], d
    sub b
    nop
    ld [hl], e
    jr nz, jr_00c_6abc

jr_00c_6abc:
    ld [hl], d
    sub b
    nop
    nop
    jr nz, jr_00c_6ac2

jr_00c_6ac2:
    add d
    sub b
    nop
    add e
    jr nz, jr_00c_6ac8

jr_00c_6ac8:
    add d
    sub b
    nop
    nop
    ld [c], a
    rst $20
    ld b, b
    ld [hl], b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld [hl], b

jr_00c_6ad4:
    jr nc, jr_00c_6b46

    ld [hl], h
    ld [$7670], sp
    ld a, [bc]
    ld [hl], b
    ld a, b
    ld [$7070], sp
    nop
    nop
    nop
    ld b, b
    ld [hl], b
    ld [hl], b
    jr c, jr_00c_6b58

    ld [hl], b
    jr nc, @+$72

    nop
    ld b, $70
    ld b, $06
    ld [hl], b
    rlca
    ld b, $70
    ld [$7006], sp
    add hl, bc
    ld b, b
    ld [hl], b
    ld a, [bc]
    ldh [$50], a
    nop
    nop
    ld [$8c70], sp
    ld d, b
    ld [hl], b
    ld [hl], b
    rrca
    ld [hl], l
    ld a, d
    rrca
    ld [hl], e
    ld a, d
    add hl, bc
    ld [hl], b
    ld a, d
    db $10
    add l
    ld a, d
    nop
    nop
    nop
    ld d, b
    nop
    nop
    ld [$708c], sp
    ld d, b
    ld [hl], b
    ld [hl], b
    rrca
    ld [hl], b
    ld a, d
    rrca
    ld [hl], l
    ld a, d
    ld [$7a76], sp
    db $10
    ld a, b
    ld [hl], e
    nop
    nop
    nop
    ld d, b
    nop
    nop
    ld [$707c], sp
    ld d, b
    ld [hl], b
    ld [hl], b
    rrca
    ld [hl], b
    ld a, d
    rrca
    add l
    ld a, d
    ld [$7a86], sp
    db $10
    adc b
    ld [hl], e
    nop
    nop
    nop
    ld d, b
    nop

jr_00c_6b46:
    nop
    ld [$7c7c], sp
    ld h, b
    ld [hl], b
    ld [hl], b
    jr nc, jr_00c_6ad4

    ld a, b
    ld [$8685], sp
    nop
    nop
    nop
    ld d, b
    nop

jr_00c_6b58:
    nop
    ld [$7c8c], sp
    ld h, b
    ld [hl], b
    ld [hl], b
    jr nc, jr_00c_6bd6

    ld a, b
    ld [$8675], sp
    nop
    nop
    nop
    and $03
    db $fc
    ld [hl], d
    ld h, a
    ld a, h
    ld l, d
    dec h
    inc [hl]
    jr z, jr_00c_6b73

jr_00c_6b73:
    nop
    rst $20
    db $fc
    ld [hl], d
    ld h, a
    ld a, h
    ld l, d
    dec h
    inc [hl]
    jr jr_00c_6b7e

jr_00c_6b7e:
    nop
    stop
    ld [hl], h
    db $fc
    ld [hl], d
    ld h, a
    ld a, h
    ld l, d
    dec h
    inc [hl]
    jr nz, jr_00c_6b8b

jr_00c_6b8b:
    ld [hl], h
    ld [$7670], sp
    db $fc
    ld [hl], d
    ld h, a
    ld a, h
    ld l, d
    dec h
    inc [hl]
    ld a, [bc]
    ld [hl], b
    ld a, b
    ld e, $00
    nop
    db $fc
    ld [hl], d
    ld h, a
    ld a, h
    ld l, d
    dec h
    inc [hl]
    jr z, jr_00c_6ba5

jr_00c_6ba5:
    nop
    ld [c], a
    push af
    dec bc
    ld [hl], b
    ld [hl], b
    ld b, $70
    add l
    ld b, $70
    ld [hl], l
    dec bc
    ld [hl], b
    ld [hl], b
    dec bc
    ld [hl], b
    ld [hl], b
    ld b, $70
    add l
    ld b, $70
    ld [hl], l
    pop hl
    xor b
    ld l, e
    inc l
    ld [hl], b
    ld a, d
    jr nz, @+$72

    ld [hl], b
    ld d, b
    ld [hl], b
    ld [hl], b
    jr nz, @+$72

    ld [hl], b
    and $02
    db $10
    ld [hl], b
    ld [hl], b
    ld a, [bc]
    ld [hl], b
    ld [hl], b
    rst $20
    ld b, b

jr_00c_6bd6:
    ld [hl], b
    ld [hl], b
    ld [$7070], sp
    ld [$7070], sp
    nop
    ld [hl], b
    ld [hl], b
    ld d, [hl]
    nop
    ld a, c
    ldh [$6c], a
    nop
    ld a, b
    ldh [$80], a
    nop
    ld [hl], a
    ldh [rSB], a
    nop
    nop
    jp hl


    sub [hl]
    ld e, $17
    ld [bc], a
    ld [hl], h
    ld a, e
    db $fc
    ld h, a
    ld l, d
    sbc b
    ld l, [hl]
    dec h
    inc [hl]
    db $fc
    ld h, a
    ld l, d
    and d
    ld l, [hl]
    dec h
    inc [hl]
    db $fc
    ld h, a
    ld l, d
    xor h
    ld l, [hl]
    dec h
    inc [hl]
    db $fc
    ld h, a
    ld l, d
    or [hl]
    ld l, [hl]
    dec h
    inc [hl]
    ld d, $74
    ld a, e
    inc c
    ld [hl], h
    ld a, e
    jp hl


    sub [hl]
    ld e, $17
    inc b
    nop
    nop
    ld b, $78
    adc e
    ld b, $78
    adc c
    ld b, $78
    add [hl]
    ld b, $78
    db $76
    ld b, $78
    ld a, c
    ld b, $78
    ld a, e
    jp hl


    sub [hl]
    ld e, $17
    ld bc, $0000
    ld bc, $0000
    ld b, $78
    adc b
    ld b, $78
    adc b
    ld b, $78
    adc b
    ld b, $78
    add h
    ld b, $78
    ld [hl], h
    ld b, $78
    ld a, b
    ld b, $78
    ld a, b
    ld b, $78
    ld a, b
    jp hl


    sub [hl]
    ld e, $17
    ld b, $00
    nop
    inc b
    nop
    nop
    inc b
    nop
    nop
    inc bc
    nop
    nop
    inc bc
    nop
    nop
    inc bc
    nop
    nop
    inc bc
    nop
    nop
    inc bc
    nop
    nop
    inc b
    nop
    nop
    dec b
    nop
    nop
    ld b, $00
    nop
    rlca
    nop
    nop
    ld [$0000], sp
    ld [$0000], sp
    ld [$0000], sp
    and $11
    ld [bc], a
    nop
    nop
    inc bc
    nop
    nop
    ld [bc], a
    nop
    nop
    inc bc
    nop
    nop
    rst $20
    inc b
    nop
    nop
    dec b
    nop
    nop
    ld b, $00
    nop
    rlca
    nop
    nop
    stop
    nop
    add b
    nop
    nop
    add b
    nop
    nop
    inc b
    nop
    nop
    stop
    nop
    inc b
    nop
    nop
    jr nz, jr_00c_6cb4

jr_00c_6cb4:
    nop
    ld b, $00
    nop
    inc b
    nop
    nop
    ld h, b
    nop
    nop
    ld b, $00
    nop
    stop
    nop
    ld b, $00
    nop
    jr nc, jr_00c_6cc9

jr_00c_6cc9:
    nop
    and $0b
    ld [$0000], sp
    ld [$0000], sp
    rst $20
    and $0b
    ld b, $00
    nop
    ld b, $00
    nop
    rst $20
    ld [bc], a
    nop
    nop
    and $0a
    ld b, $78
    nop
    ld [bc], a
    nop
    nop
    ld b, $78
    nop
    ld [bc], a
    nop
    nop
    rst $20
    ldh [rSB], a
    nop
    nop
    jp hl


    sub [hl]
    ld e, $17
    ld [bc], a
    ld [hl], h
    ld a, e
    db $fc
    ld [hl], h
    ld l, d
    sbc b
    ld l, [hl]
    dec h
    inc [hl]
    db $fc
    ld [hl], h
    ld l, d
    and d
    ld l, [hl]
    dec h
    inc [hl]
    db $fc
    ld [hl], h
    ld l, d
    xor h
    ld l, [hl]
    dec h
    inc [hl]
    db $fc
    ld [hl], h
    ld l, d
    or [hl]
    ld l, [hl]
    dec h
    inc [hl]
    ld d, $74
    ld a, e
    inc c
    ld [hl], h
    ld a, e
    jp hl


    sub [hl]
    ld e, $17
    inc b
    nop
    nop
    ld b, $78
    adc e
    ld b, $78
    adc c
    ld b, $78
    add [hl]
    ld b, $78
    db $76
    ld b, $78
    ld a, c
    ld b, $78
    ld a, e
    jp hl


    sub [hl]
    ld e, $17
    inc b
    nop
    nop
    ld b, $78
    adc b
    db $10
    ld a, b
    nop
    ld b, $78
    ld a, b
    jp hl


    sub [hl]
    ld e, $17
    db $10
    ld a, b
    nop
    db $10
    halt
    nop
    db $10
    ld [hl], h
    nop
    ld b, $72
    nop
    jr nc, jr_00c_6d56

jr_00c_6d56:
    nop
    stop
    nop
    db $10
    add [hl]
    nop
    inc bc
    add h
    nop
    ld b, $00
    nop
    ld b, $76
    nop
    ld b, $00
    nop
    jr nc, jr_00c_6d6b

jr_00c_6d6b:
    nop
    ld [$0084], sp
    and $04
    ld b, $86
    add [hl]
    ld b, $86
    db $76
    ld b, $00
    nop
    ld b, $86
    add [hl]
    ld b, $86
    db $76
    ld b, $00
    nop
    rst $20
    and $05
    inc b
    add [hl]
    add [hl]
    inc b
    add [hl]
    db $76
    inc b
    nop
    nop
    inc b
    add [hl]
    add [hl]
    inc b
    add [hl]
    db $76
    inc b
    nop
    nop
    rst $20
    inc b
    nop
    add [hl]
    inc b
    nop
    db $76
    ld [$0082], sp
    ld b, $82
    nop
    inc b
    nop
    nop
    db $fc
    sbc e
    ld l, e
    ld a, [bc]
    ld l, [hl]
    dec h
    inc [hl]
    add b
    nop
    nop
    add b
    nop
    nop
    add b
    nop
    nop
    add b
    nop
    nop
    ld [$0000], sp
    and $04
    ld b, $00
    nop
    ld b, $00
    nop
    ld b, $00
    nop
    ld b, $00
    nop
    jr nz, jr_00c_6dce

jr_00c_6dce:
    nop
    rst $20
    and b
    nop
    nop
    add b
    nop
    nop
    add b
    nop
    nop
    and $0b
    ld [$0000], sp
    ld [$0000], sp
    ld [$0000], sp
    rst $20
    stop
    nop
    ld b, $00
    nop
    ld h, b
    nop
    nop
    and $05
    dec c
    adc b
    nop
    ld [$0000], sp
    dec bc
    nop
    nop
    ld [$0000], sp
    dec c
    adc b
    nop
    ld [$0000], sp
    dec bc
    nop
    nop
    ld [$0000], sp
    rst $20
    ldh [$f1], a
    ld [hl], h
    add hl, bc
    and $02
    ld b, $88
    nop
    ld b, $88
    nop
    ld b, $88
    nop
    ld b, $88
    nop
    rst $20
    jr nc, jr_00c_6e1e

jr_00c_6e1e:
    nop
    stop
    nop
    ld b, $00
    nop
    stop
    nop
    ld b, $00
    nop
    jr nc, jr_00c_6e2d

jr_00c_6e2d:
    nop
    ld a, [bc]
    nop
    nop
    add b
    nop
    nop
    ld e, d
    nop
    nop
    ld [$0088], sp
    ld b, $88
    nop
    ld [$0088], sp
    ld b, $88
    nop
    ld [$0088], sp
    ld b, $88
    nop
    ld [$0088], sp
    add b
    nop
    nop
    halt
    nop
    nop
    stop
    nop
    ld [$8a7a], sp
    ld [$7a7a], sp
    ld b, $00
    nop
    ld [$0000], sp
    and $03
    ld b, $78
    adc b
    ld b, $78
    ld a, b
    ld b, $00
    nop
    ld b, $00
    nop
    rst $20
    add b
    nop
    nop
    add b
    nop
    nop
    add b
    nop
    nop
    add b
    nop
    nop
    jr nz, jr_00c_6e7e

jr_00c_6e7e:
    nop
    stop
    nop
    sub b
    nop
    nop
    jr nz, jr_00c_6e87

jr_00c_6e87:
    nop
    and $0b
    ld [$0088], sp
    ld [$0088], sp
    ld [$0088], sp
    ld [$0088], sp
    rst $20
    ldh [$0a], a
    ld a, h
    ld a, d
    ld [$7a7b], sp
    inc b
    ld a, d
    ld a, b
    ldh [$0a], a
    ld a, d
    ld a, l
    ld [$7a7a], sp
    inc b
    ld a, d
    ld a, b
    ldh [$0a], a
    ld [hl], h
    ld a, l
    ld [$7c74], sp
    inc b
    ld [hl], h
    ld a, b
    ldh [$0a], a
    adc d
    ld a, l
    ld [$7a8a], sp
    inc b
    adc d
    adc b
    ldh [$f4], a
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
    xor $d3
    ld b, c
    ld h, $6c
    nop
    nop
    nop
    ld [$d3ce], a
    ld bc, $6f11
    ld [$d3cf], a
    ld bc, $6ef7
    pop hl
    call z, $ea6e
    adc $d3
    ld bc, $6f11
    ld [$d3cf], a
    nop
    inc b

jr_00c_6eee:
    ld l, a
    xor $d3
    ld b, c
    dec hl
    ld l, h
    nop
    nop
    nop
    jp hl


    sub [hl]
    ld e, $1a
    dec b
    nop
    ld a, e
    inc bc
    nop
    ld a, b
    pop hl
    rst $28
    ld l, [hl]
    jp hl


    sub [hl]
    ld e, $1a
    dec b
    nop
    adc e
    inc bc
    nop
    adc b
    pop hl
    call z, $ea6e
    rst $08
    db $d3
    ld bc, $6f6d
    push hl
    call $1c6c
    ld l, a
    ld [de], a
    nop
    nop
    ld [bc], a
    ld a, b
    nop
    dec b
    adc d
    ld [hl], a
    dec b
    adc c
    ld a, b
    dec b
    adc b
    ld a, c
    dec b
    add a
    ld a, d
    dec b
    ld a, b
    ld a, d
    dec b
    ld a, c
    ld a, c
    dec b
    ld a, e
    ld a, b
    dec b
    ld a, d

jr_00c_6f39:
    ld [hl], a
    ld a, [bc]
    ld a, c
    add a
    inc sp
    nop
    nop
    dec b
    nop
    ld a, d
    ld [$0000], sp
    ld [$8900], sp
    ld [$0000], sp
    dec b
    nop
    ld a, d
    ld [$0000], sp
    ld [$8989], sp
    nop
    nop
    nop
    ld e, a
    nop
    nop
    db $ec
    add a
    ld d, b
    add hl, bc
    nop
    db $ec
    ld d, b
    ldh [$e6], a
    ld [bc], a
    jr z, jr_00c_6fdb

    ld [hl], l
    jr z, jr_00c_6eee

    add l
    rst $20
    ldh [$e5], a
    add sp, $6c
    ld [hl], d
    ld l, a
    inc d
    nop
    nop
    dec b
    adc c
    db $76
    dec b
    adc b
    ld [hl], a
    dec b
    adc b
    ld a, c
    dec b
    add a
    ld a, d
    dec b
    ld a, b
    ld a, d
    dec b
    ld a, c
    ld a, c
    dec b
    ld a, d
    ld a, b
    dec b
    ld a, e
    ld a, b
    dec b
    ld a, b
    nop
    ld a, [bc]
    nop
    nop
    and $09
    inc b
    adc b
    nop
    inc b
    ld a, b
    nop
    rst $20
    push hl
    pop af
    ld l, h
    and c
    ld l, a
    ld [bc], a
    ld a, e
    adc e
    ld [bc], a
    adc e
    ld a, e
    ld a, [de]
    nop
    nop
    sub [hl]
    nop
    nop
    nop
    ld a, e
    adc e
    jr z, jr_00c_7026

    ld [hl], h
    jr z, jr_00c_6f39

    add h
    ld [c], a
    ld sp, hl
    db $f4
    jp $03d3


    db $f4
    pop bc
    db $d3
    ld bc, $6dfc
    ld d, d
    ld [$2140], sp
    inc [hl]
    push hl
    jr nz, jr_00c_7037

    call z, Call_00c_646f
    nop
    nop
    inc d
    nop
    ld a, b
    ld [$7600], sp
    ld [$0000], sp
    ld [$8684], sp

jr_00c_6fdb:
    add sp, $21
    ld sp, $35e0
    push hl
    inc bc
    ld l, l
    push hl
    ld l, a
    db $e3
    xor $70
    db $e3
    ccf
    ld [hl], b
    db $e3
    ldh a, [$6f]
    ld [c], a
    or $e5
    inc bc
    ld l, l
    push af
    ld l, a
    inc b
    ld a, d
    ld a, d
    inc b
    ld a, b
    ld a, e
    inc b
    nop
    ld a, h
    inc b
    adc b
    ld a, e
    inc b
    adc d
    ld a, d
    inc b
    adc d
    adc d
    inc b
    adc b
    adc e
    inc b
    nop
    adc h
    inc b
    ld a, b
    adc e
    inc b
    ld a, d
    adc d
    db $e4
    push hl
    ld de, $196d
    ld [hl], b
    jr z, jr_00c_701b

jr_00c_701b:
    nop
    push hl
    inc bc
    ld l, l
    ld hl, $e170
    inc h
    ld [hl], b
    jp hl


    sub [hl]

jr_00c_7026:
    ld e, $1e
    add sp, -$4e
    jr nc, jr_00c_705b

    ld [hl], b
    scf
    ld [hl], b
    db $fc
    adc h
    ld l, [hl]
    call nc, $8342
    inc [hl]
    db $e4

jr_00c_7037:
    db $fc
    pop bc
    ld l, [hl]
    rst $10
    ld b, d
    add e
    inc [hl]
    db $e4
    push hl
    ld de, $446d
    ld [hl], b
    db $10
    adc h
    adc b
    db $10
    adc d
    add [hl]
    db $10
    adc b
    db $76
    ld [$7800], sp
    ld [$7a00], sp
    ld [$7b00], sp
    ld [$7c00], sp
    jp hl


    sub [hl]

jr_00c_705b:
    ld e, $02
    ld b, $79
    adc e
    ld b, $79
    adc b
    ld b, $79
    ld a, b
    ld b, $79
    ld a, e
    jp hl


    sub [hl]
    ld e, $02
    ld b, $7a
    adc e
    ld b, $7a
    adc b
    ld b, $7a
    ld a, b
    ld b, $7a
    ld a, e
    jp hl


    sub [hl]
    ld e, $02
    ld b, $7b
    adc b
    ld b, $7a
    adc e
    ld b, $78
    adc h
    ld b, $76
    adc d
    rlca
    adc b
    ld a, d
    ld b, $8c
    ld a, h
    ld b, $8d
    ld a, d
    ld b, $8d
    ld a, b
    ld b, $8b
    adc d
    ld b, $89
    adc h
    ld b, $87
    adc h
    ld b, $78
    adc d
    ld b, $78
    adc b
    add hl, bc
    ld a, d
    nop
    db $fc
    ld c, $49
    rst $10
    ld [hl], b
    ld a, l
    dec [hl]
    db $10
    ld a, d
    nop
    db $fc
    ld c, $49
    rst $10
    ld [hl], b
    ld a, l
    dec [hl]
    db $10
    ld a, d
    nop
    db $fc
    ld c, $49
    rst $10
    ld [hl], b
    ld a, l
    dec [hl]
    ld [$007a], sp
    ld a, [bc]
    ld a, d
    db $76
    ld b, $79
    ld a, b
    ld b, $00
    ld a, b
    ld b, $89
    db $76
    di
    ldh a, [$90]
    ld a, [hl-]
    ld a, [c]
    db $e4
    ld [$7800], sp
    ld [$7900], sp
    ld [$7a00], sp
    ld [$7b00], sp
    rlca
    nop
    ld a, h
    db $fc
    cp [hl]
    ld b, e
    ld [$c440], sp
    dec [hl]
    ldh [$fc], a
    ldh a, [rOBP1]
    sub l
    ld [hl], c
    ret


    inc [hl]
    inc bc
    nop
    nop
    db $fc
    ldh a, [rOBP1]
    ld d, [hl]
    ld [hl], c
    ret


    inc [hl]
    inc bc
    nop
    nop
    db $fc
    ldh a, [rOBP1]
    ld l, e
    ld [hl], c
    ret


    inc [hl]
    inc bc
    nop
    nop
    db $fc
    ldh a, [rOBP1]
    add b
    ld [hl], c
    ret


    inc [hl]
    inc bc
    nop
    nop
    db $e4
    jp hl


    ld [hl], a
    ld c, e
    ld b, $f9
    adc a
    rst $38
    ld a, a
    inc hl
    db $fc
    ld [hl], d
    ld c, c
    ld [hl], $71
    ld d, e
    inc [hl]
    ld [$8a77], sp
    ld [$8a78], sp
    db $10
    ld a, c
    adc d
    db $10
    ld a, d
    adc d
    nop
    ld a, e
    adc d
    di
    ldh a, [$58]
    ld l, b
    db $fc
    db $10
    ld c, d
    ld [$2540], sp
    inc [hl]
    ld [$8800], sp
    ld [$8600], sp
    ld [$8400], sp
    ld [$7400], sp
    ld [$7600], sp
    ld [$7800], sp
    pop hl
    dec e
    ld b, e
    ld [$8786], sp
    ld [$8486], sp
    ld [$7786], sp
    ld [$7986], sp
    ld [$7b86], sp
    ld [$7c86], sp
    nop
    add [hl]
    ld a, l
    ld [$8789], sp
    ld [$8489], sp
    ld [$7789], sp
    ld [$7989], sp
    ld [$7b89], sp
    ld [$7c89], sp
    nop
    adc c
    ld a, l
    ld [$878a], sp
    ld [$848a], sp
    ld [$778a], sp
    ld [$798a], sp
    ld [$7b8a], sp
    ld [$7c8a], sp
    nop
    adc d
    ld a, l
    ld [$8774], sp
    ld [$8474], sp
    ld [$7774], sp
    ld [$7974], sp
    ld [$7b74], sp
    ld [$7c74], sp
    nop
    ld [hl], h
    ld a, l
    db $f4
    jp $06d3


    db $f4
    pop bc
    db $d3
    ld bc, $6dfc
    ld d, d
    ld [$2140], sp
    inc [hl]
    add sp, -$5d
    ld c, b
    xor $72
    ld b, c
    db $e4
    ld b, c
    ld [$7689], sp
    ld [$7889], sp
    ld [$7a89], sp
    ld [$7b88], sp
    ld [$8b84], sp
    ld [$8883], sp
    ld [$7400], sp
    stop
    ld a, b
    ld bc, $7400
    ld a, [bc]
    nop
    add h
    ld a, a
    nop
    add l
    jr jr_00c_71e4

jr_00c_71e4:
    add a
    ld [$8500], sp
    ld [$0000], sp
    ld [$768a], sp
    ld [$768a], sp
    ld [$7589], sp
    ld [$0086], sp
    ld [$0085], sp
    add sp, $21
    ld sp, $35e9
    db $f4
    adc $d3
    nop
    db $e3
    pop af
    ld [hl], e
    di
    ldh a, [$58]
    ld d, b
    ld a, [c]
    ld a, [$d94e]
    ld [hl], d
    pop hl
    ld a, [hl+]
    ld [hl], d
    di
    ldh a, [$58]
    ld d, b
    ld a, [c]
    ld a, [$2a4e]
    ld [hl], d
    pop hl
    inc [hl]
    ld [hl], d
    di
    ldh a, [$58]
    ld d, b
    ld a, [c]
    ld a, [$344e]
    ld [hl], d
    pop hl
    reti


    ld [hl], d
    db $e3
    ld l, c
    ld [hl], h
    add sp, -$4e
    jr nc, @+$71

    ld [hl], e
    or b
    ld [hl], e
    db $e3
    ld l, c
    ld [hl], h
    add sp, -$4e
    jr nc, @+$40

    ld [hl], d
    add [hl]
    ld [hl], d
    ld [$8a8b], sp
    ld [$888a], sp
    ld [$8688], sp
    ld [$8086], sp
    ld [$7876], sp
    db $fc
    ld c, $49
    adc $72
    ld a, l
    dec [hl]
    ld [$0078], sp
    ld [$887a], sp
    ld [$007b], sp
    db $fc
    ld c, $49
    adc $72
    ld a, l
    dec [hl]
    ld [$787b], sp
    ld [$007a], sp
    ld [$8878], sp
    db $fc
    ld c, $49
    adc $72
    ld a, l
    dec [hl]
    ld [$0076], sp
    ld [$0086], sp
    ld [$7688], sp
    ld [$788a], sp
    ld [$7a8b], sp
    pop hl
    ld b, $72
    ld [$8a7b], sp
    ld [$887a], sp
    ld [$8678], sp
    ld [$8076], sp
    db $fc
    ld c, $49
    adc $72
    ld a, l
    dec [hl]
    ld [$7886], sp
    ld [$0088], sp
    ld [$888a], sp
    ld [$008b], sp
    db $fc
    ld c, $49
    adc $72
    ld a, l
    dec [hl]
    ld [$788b], sp
    ld [$008a], sp
    ld [$8888], sp
    ld [$0086], sp
    db $fc
    ld c, $49
    adc $72
    ld a, l
    dec [hl]
    ld [$0076], sp
    ld [$7678], sp
    ld [$787a], sp
    ld [$7a7b], sp
    pop hl
    ld b, $72
    jr nz, jr_00c_72d0

jr_00c_72d0:
    ld a, d
    db $fc
    cp [hl]
    ld b, e
    ld [$bb40], sp
    dec [hl]
    ldh [$e3], a
    ld l, c
    ld [hl], h
    push hl
    inc c
    ld l, [hl]
    pop hl
    ld [hl], d
    and $02
    db $fc
    jp c, $0949

    ld [hl], h
    ret


    inc [hl]
    db $fc
    jp c, $3949

    ld [hl], h
    ret


    inc [hl]
    inc b
    nop
    nop
    db $fc
    jp c, $0f49

    ld [hl], h
    ret


    inc [hl]
    db $fc
    jp c, $3f49

    ld [hl], h
    ret


    inc [hl]
    inc b
    nop
    nop
    db $fc
    jp c, $1549

    ld [hl], h
    ret


    inc [hl]
    db $fc
    jp c, Jump_00c_4549

    ld [hl], h
    ret


    inc [hl]
    inc b
    nop
    nop
    db $fc
    jp c, $1b49

    ld [hl], h
    ret


    inc [hl]
    db $fc
    jp c, $4b49

    ld [hl], h
    ret


    inc [hl]
    inc b
    nop
    nop
    db $fc
    jp c, $2149

    ld [hl], h
    ret


    inc [hl]
    db $fc
    jp c, Jump_00c_5149

    ld [hl], h
    ret


    inc [hl]
    inc b
    nop
    nop
    db $fc
    jp c, $2749

    ld [hl], h
    ret


    inc [hl]
    db $fc
    jp c, $5749

    ld [hl], h
    ret


    inc [hl]
    inc b
    nop
    nop
    db $fc
    jp c, $2d49

    ld [hl], h
    ret


    inc [hl]
    db $fc
    jp c, Jump_00c_5d49

    ld [hl], h
    ret


    inc [hl]
    inc b
    nop
    nop
    db $fc
    jp c, $3349

    ld [hl], h
    ret


    inc [hl]
    db $fc
    jp c, Jump_00c_6349

    ld [hl], h
    ret


    inc [hl]
    inc b
    nop
    nop
    rst $20
    pop hl
    ld [de], a
    ld [hl], d
    push hl
    ld a, [hl-]
    ld l, [hl]
    ld [hl], h
    ld [hl], e
    ld b, $7a
    adc d
    ld b, $78
    adc b
    ld [$8070], sp
    jp hl


    sub [hl]
    ld e, $20
    db $10
    adc h
    ld a, e
    ld a, [bc]
    adc c
    db $76
    ld a, [bc]
    adc b
    ld [hl], a
    ld a, [bc]
    add [hl]
    ld [hl], a
    db $10
    ld a, h
    nop
    ld [$007b], sp
    ld [$867b], sp
    ld [$8a7a], sp
    ld [$8c78], sp
    ld [$8a88], sp
    ld [$768a], sp
    ld [$798c], sp
    ld [$7787], sp
    push hl
    cp h
    ld l, l
    xor l
    ld [hl], e
    pop hl
    ld e, $72
    push hl
    ld b, d
    ld l, [hl]
    or l
    ld [hl], e
    ld b, $8a
    adc d
    ld b, $88
    adc b
    ld [$8080], sp
    jp hl


    sub [hl]
    ld e, $20
    db $10
    ld a, h
    ld a, e
    ld a, [bc]
    ld a, c
    db $76
    ld a, [bc]
    ld a, b
    ld [hl], a
    ld a, [bc]
    db $76
    ld [hl], a
    db $10
    adc h
    nop
    ld [$008b], sp
    ld [$868b], sp
    ld [$8a8a], sp
    ld [$8c88], sp
    ld [$8a78], sp
    ld [$767a], sp
    ld [$797c], sp
    ld [$7777], sp
    push hl
    cp h
    ld l, l
    xor $73
    pop hl
    ld e, $72
    push hl
    cp h
    ld l, l
    or $73
    ld b, $00
    add h
    ld b, $00
    add l
    ld b, $00
    add h
    ld b, $00
    ld [hl], h
    ld b, $00
    ld [hl], l

Jump_00c_7405:
    ld b, $00
    ld [hl], h
    db $e4
    pop af
    nop
    db $e4
    pop hl
    cp a
    ld b, e
    pop af
    ld [$e1e8], sp
    jp $f143


jr_00c_7416:
    db $10
    ldh a, [$e1]
    rst $00
    ld b, e
    pop af
    jr jr_00c_7416

    pop hl
    bit 0, e
    pop af
    inc e
    nop
    pop hl
    rst $08
    ld b, e
    pop af
    jr jr_00c_7432

    pop hl
    db $d3
    ld b, e
    pop af
    db $10
    db $10
    pop hl
    rst $10

jr_00c_7432:
    ld b, e
    pop af
    ld [$e118], sp
    db $db
    ld b, e
    pop af
    nop
    inc e
    pop hl
    rst $18
    ld b, e
    pop af
    ld hl, sp+$18
    pop hl
    db $e3
    ld b, e
    pop af
    ldh a, [rNR10]
    pop hl
    rst $20
    ld b, e
    pop af
    add sp, $08
    pop hl
    db $eb
    ld b, e
    pop af
    db $e4
    nop
    pop hl
    rst $28
    ld b, e
    pop af
    add sp, -$08
    pop hl
    di
    ld b, e
    pop af
    ldh a, [$f0]
    pop hl
    rst $30
    ld b, e
    pop af
    ld hl, sp-$18
    pop hl
    ei
    ld b, e
    push hl
    inc hl
    ld l, [hl]
    ld l, [hl]
    ld [hl], h
    ei
    ld bc, $7474
    adc d
    ld [hl], h
    and $02
    inc bc
    nop
    add h
    inc bc
    nop
    add l
    inc bc
    nop
    add h
    inc bc
    nop
    ld [hl], h
    inc bc
    nop
    ld [hl], l
    inc bc
    nop
    ld [hl], h
    rst $20
    db $e4
    inc bc
    nop
    add h
    inc bc
    nop
    add l
    inc bc
    nop
    ld [hl], l
    inc bc
    nop
    ld [hl], h
    db $e4
    db $10
    adc d
    nop
    ld [$0088], sp
    ld [$0086], sp
    pop hl
    dec l
    ld b, e
    db $f4
    jp $06d3


    db $f4
    pop bc
    db $d3
    ld bc, $6dfc
    ld d, d
    ld [$2140], sp
    inc [hl]
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
    ei
    inc bc
    call z, $e374
    ld [hl], h
    ld a, [$1174]
    ld [hl], l
    ld [$d3ce], a
    rst $38
    jp nz, $f074

    and c
    jr @-$0a

    adc $d3
    rst $38
    db $e3
    adc e
    db $76
    db $f4
    adc $d3
    nop
    pop hl

jr_00c_74e1:
    jr z, jr_00c_7558

    ld [$d3cf], a
    rst $38
    jp nz, $f074

    and c
    jr c, jr_00c_74e1

    rst $08
    db $d3
    rst $38
    db $e3
    adc e
    db $76
    db $f4
    rst $08
    db $d3
    nop
    pop hl
    jr z, jr_00c_756f

    ld [$d3d0], a
    rst $38
    jp nz, $f074

    and c
    ld e, b
    db $f4
    ret nc

    db $d3
    rst $38
    db $e3
    adc e
    db $76
    db $f4
    ret nc

    db $d3
    nop
    pop hl
    jr z, jr_00c_7586

    ld [$d3d1], a
    rst $38
    jp nz, $f074

    and c
    ld a, b
    db $f4
    pop de
    db $d3
    rst $38
    db $e3
    adc e
    db $76
    db $f4
    pop de
    db $d3
    nop
    pop hl
    jr z, jr_00c_759d

    ei
    inc bc
    ld [hl-], a
    ld [hl], l
    ld c, c
    ld [hl], l
    ld h, b
    ld [hl], l

jr_00c_7530:
    ld [hl], a
    ld [hl], l
    ld [$d3ce], a
    rst $38
    jr z, jr_00c_75ad

    ldh a, [rNR10]
    jr jr_00c_7530

    adc $d3
    rst $38
    db $e3
    xor [hl]
    db $76
    db $f4
    adc $d3
    nop
    pop hl

jr_00c_7547:
    jp nz, $ea74

    rst $08
    db $d3
    rst $38
    jr z, jr_00c_75c4

    ldh a, [rNR10]
    jr c, jr_00c_7547

    rst $08
    db $d3
    rst $38
    db $e3
    xor [hl]

jr_00c_7558:
    db $76
    db $f4
    rst $08
    db $d3
    nop
    pop hl
    jp nz, $ea74

    ret nc

    db $d3
    rst $38
    jr z, jr_00c_75db

    ldh a, [rNR10]
    ld e, b
    db $f4
    ret nc

    db $d3
    rst $38
    db $e3
    xor [hl]

jr_00c_756f:
    db $76
    db $f4
    ret nc

    db $d3
    nop
    pop hl
    jp nz, $ea74

    pop de
    db $d3
    rst $38
    jr z, jr_00c_75f2

    ldh a, [rNR10]
    ld a, b
    db $f4
    pop de
    db $d3
    rst $38
    db $e3
    xor [hl]

jr_00c_7586:
    db $76
    db $f4
    pop de
    db $d3
    nop
    pop hl
    jp nz, $fb74

    inc bc
    sbc b
    ld [hl], l
    xor a
    ld [hl], l
    add $75

jr_00c_7596:
    db $dd
    ld [hl], l
    ld [$d3ce], a
    rst $38
    adc [hl]

jr_00c_759d:
    ld [hl], l
    ldh a, [$a1]
    jr jr_00c_7596

    adc $d3
    rst $38
    db $e3
    add [hl]
    db $76
    db $f4
    adc $d3
    nop
    pop hl

jr_00c_75ad:
    db $f4
    ld [hl], l
    ld [$d3cf], a
    rst $38
    adc [hl]
    ld [hl], l
    ldh a, [$a1]
    jr c, jr_00c_75ad

    rst $08
    db $d3
    rst $38
    db $e3
    add [hl]
    db $76
    db $f4
    rst $08
    db $d3
    nop
    pop hl

jr_00c_75c4:
    db $f4
    ld [hl], l
    ld [$d3d0], a
    rst $38
    adc [hl]
    ld [hl], l
    ldh a, [$a1]
    ld e, b
    db $f4
    ret nc

    db $d3
    rst $38
    db $e3
    add [hl]
    db $76
    db $f4
    ret nc

    db $d3
    nop
    pop hl

jr_00c_75db:
    db $f4
    ld [hl], l
    ld [$d3d1], a
    rst $38
    adc [hl]
    ld [hl], l
    ldh a, [$a1]
    ld a, b
    db $f4
    pop de
    db $d3
    rst $38
    db $e3
    add [hl]
    db $76
    db $f4
    pop de
    db $d3
    nop
    pop hl

jr_00c_75f2:
    db $f4
    ld [hl], l
    ei
    inc bc
    cp $75
    dec d
    db $76
    inc l
    db $76

jr_00c_75fc:
    ld b, e
    db $76
    ld [$d3ce], a
    rst $38
    db $f4
    ld [hl], l
    ldh a, [rNR10]
    jr jr_00c_75fc

    adc $d3
    rst $38
    db $e3
    xor c
    db $76
    db $f4
    adc $d3
    nop
    pop hl

jr_00c_7613:
    adc [hl]
    ld [hl], l
    ld [$d3cf], a
    rst $38
    db $f4
    ld [hl], l
    ldh a, [rNR10]
    jr c, jr_00c_7613

    rst $08
    db $d3
    rst $38
    db $e3
    xor c
    db $76
    db $f4
    rst $08
    db $d3
    nop
    pop hl
    adc [hl]
    ld [hl], l
    ld [$d3d0], a
    rst $38
    db $f4
    ld [hl], l
    ldh a, [rNR10]
    ld e, b
    db $f4
    ret nc

    db $d3
    rst $38
    db $e3
    xor c
    db $76
    db $f4
    ret nc

    db $d3
    nop
    pop hl
    adc [hl]
    ld [hl], l
    ld [$d3d1], a
    rst $38
    db $f4
    ld [hl], l
    ldh a, [rNR10]
    ld a, b
    db $f4
    pop de
    db $d3
    rst $38
    db $e3
    xor c
    db $76
    db $f4
    pop de
    db $d3
    nop
    pop hl
    adc [hl]
    ld [hl], l
    inc b
    adc d
    nop
    inc b
    adc b
    nop
    inc b
    add a
    nop
    inc b
    add l
    nop
    inc b
    add e
    nop
    rrca
    nop
    nop
    or b
    adc c
    nop
    ldh [rDIV], a
    ld a, d
    nop
    inc b
    ld a, b
    nop
    inc b
    ld [hl], a
    nop
    inc b
    ld [hl], l
    nop
    inc b
    ld [hl], e
    nop
    rrca
    nop
    nop
    or b
    ld a, c
    nop
    ldh [$e5], a
    adc h
    ld l, a
    sub b
    db $76
    push hl
    ld sp, hl
    ld l, [hl]
    sub b
    db $76
    add sp, -$5a
    ld c, e
    inc hl
    nop
    nop
    ld h, h
    adc c
    nop
    ld b, $8a
    nop
    ld b, $88
    nop
    ld b, $85
    nop
    add sp, -$53
    ld c, e
    jr nz, jr_00c_76a7

jr_00c_76a7:
    nop
    db $e4
    push hl
    ld e, e
    ld l, a
    or e
    db $76
    push hl
    ld a, [hl+]
    ld l, a
    or e
    db $76

jr_00c_76b3:
    add sp, -$5a
    ld c, e
    inc hl
    nop
    nop
    ld h, h
    ld a, c
    nop
    ld b, $7a
    nop
    ld b, $78
    nop
    ld b, $75
    nop
    add sp, -$53
    ld c, e
    jr nz, jr_00c_76ca

jr_00c_76ca:
    nop
    db $e4
    db $f4
    jp $03d3


jr_00c_76d0:
    db $f4
    pop bc
    db $d3
    ld bc, $6dfc
    ld d, d
    ld [$2140], sp
    inc [hl]
    ei
    inc bc
    push hl
    db $76
    db $eb
    db $76
    pop af
    db $76
    rst $30
    db $76
    ldh a, [$a3]
    jr jr_00c_76ca

    ld b, e
    ld [hl], a
    ldh a, [$a3]
    jr c, jr_00c_76d0

    jr nz, jr_00c_7768

    ldh a, [$a3]
    ld e, b
    pop hl
    db $fd
    db $76
    ldh a, [$a3]
    ld a, b
    pop hl
    db $fd
    db $76
    add sp, -$5a
    ld c, e
    push hl
    call nz, $056f
    ld [hl], a
    jr z, @-$74

    nop
    ld b, $86
    nop
    inc e
    nop

jr_00c_770d:
    nop
    jr z, jr_00c_7710

jr_00c_7710:
    nop
    jr z, jr_00c_778d

    nop
    ld [$0000], sp
    add sp, -$53
    ld c, e
    jr nz, jr_00c_771c

jr_00c_771c:
    nop
    pop hl
    db $db
    db $76
    add sp, -$5a
    ld c, e
    push hl
    ret c

    ld l, a
    jr z, jr_00c_779f

    jr z, jr_00c_76b3

    nop
    ld b, $86
    nop
    inc e
    nop
    nop
    jr z, jr_00c_7733

jr_00c_7733:
    nop
    jr z, jr_00c_77af

    nop
    ld [$0000], sp
    add sp, -$53
    ld c, e
    jr nz, jr_00c_773f

jr_00c_773f:
    nop
    pop hl
    db $db
    db $76
    add sp, -$5a
    ld c, e
    push hl
    ld [c], a
    ld l, a
    ld c, e
    ld [hl], a
    inc d
    adc c
    nop
    inc d
    adc b
    nop
    ld b, $86
    nop
    inc e
    nop
    nop
    jr z, jr_00c_7759

jr_00c_7759:
    nop
    inc d
    ld a, b
    nop
    inc d
    ld a, c
    nop
    ld [$0000], sp
    add sp, -$53
    ld c, e
    jr nz, jr_00c_7768

jr_00c_7768:
    nop
    pop hl
    db $db
    db $76
    db $fc
    nop
    ld c, e
    cpl
    ld c, b
    dec h
    inc [hl]
    jp hl


    sub [hl]
    ld e, $1e
    inc d
    nop
    nop
    jp hl


    sub [hl]
    ld e, $1c
    nop
    adc e
    nop
    jr z, jr_00c_770d

    nop
    ld [$0000], sp
    nop
    adc e
    nop
    jr z, @-$75

    nop

jr_00c_778d:
    ld [$0000], sp
    nop
    adc e
    nop
    inc d
    adc c
    nop
    inc d
    adc b
    nop
    ld [$0000], sp
    nop
    adc e
    nop

jr_00c_779f:
    add sp, $21
    ld sp, $360d
    push hl
    and b
    ld [hl], b
    xor c
    ld [hl], a
    ld a, [$b280]
    ld [hl], a
    ld [de], a
    nop

jr_00c_77af:
    nop
    ld [c], a
    inc b
    ld e, $00
    nop
    add sp, $21
    ld sp, $3604
    db $e4
    db $f4
    jp $0ad3


    db $f4
    pop bc
    db $d3
    ld bc, $6dfc
    ld d, d
    ld [$2140], sp
    inc [hl]
    db $f4
    ret nz

    db $d3
    ld bc, $82e8
    ld c, d
    add sp, -$5d
    ld c, b
    add sp, -$51
    ld c, b
    db $f4
    call $01d3
    add sp, -$53
    ld c, d
    db $fc
    ld c, d
    ld [hl], h
    jp z, $167a

    ld [hl], $e3
    sbc a
    ld [hl], a
    db $e3
    sbc a
    ld [hl], a
    db $e3
    sbc a
    ld [hl], a
    ei
    rlca
    nop
    ld a, b
    ld a, [hl]
    ld a, b
    ld a, [hl+]
    ld a, c
    adc l
    ld a, c
    adc l
    ld a, c
    xor $77
    xor $77
    xor $77
    add sp, -$4e
    jr nc, jr_00c_780b

    ld a, b
    rrca
    ld a, b
    xor $76
    ld b, d
    push af

jr_00c_780b:
    ld [hl], b
    pop hl
    db $fc
    ld a, c
    xor $76
    ld b, d
    ld bc, $e171
    dec d
    ld a, d
    db $f4
    call $00d3
    add sp, $21
    ld sp, $360d
    db $fc
    nop
    ld c, e
    cpl
    ld c, b
    dec h
    inc [hl]
    db $10
    adc c
    nop
    db $10
    add a
    nop
    db $10
    add h
    nop
    jr nz, jr_00c_7832

jr_00c_7832:
    nop
    ld [c], a
    dec e
    db $f4
    call $00d3
    add sp, $21
    ld sp, $360d
    db $fc
    nop
    ld c, e
    cpl
    ld c, b
    dec h
    inc [hl]
    db $10
    ld a, c
    nop
    db $10
    ld [hl], a
    nop
    db $10
    ld [hl], h
    nop
    jr nz, jr_00c_7850

jr_00c_7850:
    nop
    db $f4
    call $01d3
    add sp, $21
    ld sp, $3604
    db $e3
    sbc a
    ld [hl], a
    add sp, -$2b
    ld c, c
    db $eb
    cp l
    db $d3
    ld l, h
    ld a, b
    rst $18
    ld a, b
    adc [hl]

Call_00c_7868:
    ld a, b
    db $e3
    sbc a
    ld [hl], a
    ei
    rlca
    nop
    ld a, b
    ld a, [hl]
    ld a, b
    ld a, [hl+]
    ld a, c
    adc l
    ld a, c
    ld a, [hl]
    ld a, b
    ld a, [hl+]
    ld a, c
    adc l
    ld a, c
    nop
    ld a, b
    add sp, -$54
    ld c, c
    db $eb
    cp l
    db $d3
    adc [hl]
    ld a, b
    adc [hl]
    ld a, b
    cp d
    ld a, b
    rst $18
    ld a, b
    rst $18
    ld a, b
    push hl
    dec c
    ld [hl], c
    sub e
    ld a, b
    stop
    nop
    ld [$8c8a], sp
    ld [$8b8a], sp
    ld [$898a], sp
    ld [$878a], sp
    add sp, -$4e
    jr nc, @-$55

    ld a, b
    adc $78
    ld [$778a], sp
    ld [$798a], sp
    ld [$7b8a], sp
    ld [$7c8a], sp
    jr jr_00c_78b7

jr_00c_78b7:
    nop
    ld [c], a
    ld d, b
    push hl
    dec c
    ld [hl], c
    cp a
    ld a, b
    stop
    nop
    ld [$8c00], sp

jr_00c_78c5:
    ld [$8b00], sp
    ld [$8900], sp
    ld [$8700], sp
    ld [$7700], sp
    ld [$7900], sp
    ld [$7b00], sp
    ld [$7c00], sp
    jr jr_00c_78dc

jr_00c_78dc:
    nop
    ld [c], a
    dec hl
    push hl
    dec c
    ld [hl], c
    db $e4
    ld a, b
    stop
    nop
    ld [$8c7a], sp
    ld [$8b7a], sp
    ld [$897a], sp
    ld [$877a], sp
    add sp, -$4e
    jr nc, jr_00c_78c5

    ld a, b
    ld a, [$0878]
    ld a, d
    ld [hl], a
    ld [$797a], sp
    ld [$7b7a], sp
    ld [$7c7a], sp
    jr jr_00c_7908

jr_00c_7908:
    nop
    add sp, -$2b
    ld c, c
    db $eb
    cp l
    db $d3
    jr jr_00c_798a

    rst $18
    ld a, b
    adc [hl]
    ld a, b
    db $e3
    sbc a
    ld [hl], a
    ei
    rlca
    ld a, [hl]
    ld a, b
    nop
    ld a, b
    ld a, [hl+]
    ld a, c
    adc l
    ld a, c
    nop
    ld a, b
    ld a, [hl+]
    ld a, c
    adc l
    ld a, c
    ld a, [hl+]
    ld a, c
    ld [$d093], a
    ld bc, $797b
    add sp, -$58
    ld c, b
    add sp, -$4e
    jr nc, jr_00c_7971

    ld a, c
    ld b, d
    ld a, c
    xor $bb
    ld b, c
    jr z, jr_00c_79b0

    pop hl
    db $fc
    ld a, c
    xor $bb
    ld b, c
    sub e
    ld [hl], c
    pop hl
    dec d
    ld a, d
    add sp, $21
    ld sp, $360d
    db $fc
    dec bc
    ld c, c
    db $e4
    ld a, d
    ld hl, $e634
    inc bc
    ld [bc], a
    ld a, b
    nop
    ld [bc], a
    adc b
    nop
    rst $20
    ld [c], a
    rst $28
    add sp, $21
    ld sp, $360d
    db $fc
    dec bc
    ld c, c
    or $7a
    ld hl, $e634
    inc bc
    ld [bc], a
    adc b

jr_00c_7971:
    nop
    ld [bc], a
    ld a, b
    nop
    rst $20
    ld [c], a
    rst $28
    db $e3
    sbc a
    ld [hl], a
    ei
    rlca
    ld a, [hl+]
    ld a, c
    nop
    ld a, b
    ld a, [hl]
    ld a, b
    adc l
    ld a, c
    nop
    ld a, b
    ld a, [hl]
    ld a, b
    adc l

jr_00c_798a:
    ld a, c
    nop
    ld a, b
    add sp, -$58
    ld c, b
    xor $bb
    ld b, c
    cp $71
    add sp, -$54
    ld c, c
    add sp, -$4e
    jr nc, @-$5f

    ld a, c
    cp b
    ld a, c
    push hl
    jp hl


    ld [hl], b
    and h
    ld a, c
    inc b
    nop
    adc d
    inc b
    nop
    add [hl]
    inc b
    nop
    db $76
    inc b
    nop
    ld a, d

jr_00c_79b0:
    ld [bc], a
    nop
    nop
    push hl
    db $d3
    ld [hl], b
    inc b
    ld a, d
    push hl
    rst $28
    ld [hl], b
    cp l
    ld a, c
    inc b
    nop
    adc d
    inc b
    nop
    add [hl]
    inc b
    nop
    db $76
    inc b
    nop
    ld a, d
    ld [bc], a
    nop
    nop
    push hl
    sbc $70
    dec e
    ld a, d
    db $f4
    call $01d3
    db $e3
    sbc a
    ld [hl], a
    ei
    rlca
    adc l
    ld a, c
    nop
    ld a, b
    ld a, [hl]
    ld a, b
    ld a, [hl+]
    ld a, c
    nop
    ld a, b
    ld a, [hl]
    ld a, b
    ld a, [hl+]
    ld a, c
    ld a, [hl+]
    ld a, c
    ld a, [de]
    nop
    nop
    ld [$8a00], sp
    ld [$0000], sp
    ld [$7a00], sp
    ld a, [de]
    nop
    nop
    nop
    nop
    nop
    push hl
    cp l
    ld [hl], b
    ld bc, $087a
    ld a, b
    nop
    inc b
    adc d
    add [hl]
    inc b
    adc d
    nop
    inc b
    adc c
    nop
    inc b
    adc c
    db $76
    ld a, [bc]
    adc b
    nop
    ld [c], a
    ldh a, [$e5]
    ret z

    ld [hl], b
    dec e
    ld a, d
    ld [$0088], sp
    inc b
    ld a, d
    add [hl]
    inc b
    ld a, d
    nop
    inc b
    ld a, c
    nop
    inc b
    ld a, c
    db $76
    ld a, [bc]
    ld a, b
    nop
    ld [c], a
    ldh a, [rSC]
    add l
    add l
    ld [bc], a
    adc d
    adc d
    pop hl
    ld l, $7a
    ld [bc], a
    ld [hl], l
    add l
    ld [bc], a
    ld a, d
    adc d
    pop hl
    scf
    ld a, d
    inc a
    adc e
    nop
    ldh [$3c], a
    ld a, e
    nop
    ldh [rNR12], a
    nop
    nop
    ld [$8a00], sp
    ld [$0000], sp
    ld [$7a00], sp
    ld a, [bc]
    nop
    nop
    nop
    nop
    nop
    pop af
    db $ec
    ld [$8a06], sp
    adc c
    ld [$8788], sp
    ld c, $00
    nop
    ldh [$f1], a
    inc d
    ld [$7a06], sp
    adc c
    ld [$8778], sp
    ld c, $00
    nop
    ldh [$f1], a
    ld hl, sp+$08
    ld b, $8a
    adc c
    ld [$8788], sp
    ld c, $00
    nop
    ldh [$f1], a
    ld [$0608], sp
    ld a, d
    adc c
    ld [$8778], sp
    ld c, $00
    nop
    ldh [$f1], a
    db $10
    xor $00
    nop
    nop
    pop af
    ld [$00e7], sp
    nop
    nop
    pop af
    ld hl, sp-$19
    nop
    nop
    nop
    pop af
    ldh a, [$ee]
    nop
    nop
    nop
    pop af
    jp hl


    ld a, [$0000]
    nop
    pop af
    jp hl


    ld b, $00
    nop
    nop
    pop af
    ld hl, sp+$0a
    nop
    nop
    nop
    pop af
    rla
    ld a, [$0000]
    nop
    pop af
    rla
    ld b, $00
    nop
    nop
    pop af
    ld [$000a], sp
    nop
    nop
    xor $72
    ld b, c
    ldh a, [rSTAT]
    add sp, -$4c
    ld c, b
    ld bc, $0000
    ld [c], a
    ld sp, hl
    jp hl


    ld [hl], a
    ld c, e
    add hl, bc
    ld sp, hl
    adc a
    rst $38
    ld a, a
    inc hl
    add sp, -$40
    ld c, b
    ldh [$fb], a
    rlca
    ld [$1e7b], sp
    ld a, e
    inc [hl]
    ld a, e
    ld c, d
    ld a, e
    ld h, b
    ld a, e
    db $76
    ld a, e
    adc h
    ld a, e
    and d
    ld a, e
    ei
    rlca
    cp b
    ld a, e
    adc $7b
    db $e4
    ld a, e
    ld a, [$107b]
    ld a, h
    ld h, $7c
    inc a
    ld a, h
    ld d, d
    ld a, h
    pop af
    ret c

    ldh a, [rSC]
    add l
    adc b
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld [hl], l
    ld a, d
    ld [bc], a
    db $76
    ld a, d
    ld [bc], a
    ld a, b
    ld a, d
    ld [$787b], sp
    ldh [$f1], a
    add sp, -$10
    ld [bc], a
    adc d
    adc b
    ld [bc], a
    nop
    db $76
    ld [bc], a
    ld [hl], a
    ld a, d
    ld [bc], a
    ld a, c
    ld a, c
    ld [bc], a
    ld a, e
    ld a, d
    ld [bc], a
    ld a, b
    ld [hl], a
    ldh [$f1], a
    ret nc

    ld hl, sp+$02
    adc b
    ld [hl], h
    ld [bc], a
    nop
    ld [hl], h
    ld [bc], a
    ld a, b
    ld a, b
    ld [bc], a
    ld a, d
    ld a, d
    ld [bc], a
    ld a, e
    ld a, b
    ld [$747b], sp
    ldh [$f1], a
    ld hl, sp-$10
    ld [bc], a
    adc h
    adc d
    ld [bc], a
    adc d
    nop
    ld [bc], a
    nop
    ld a, d
    ld [bc], a
    ld a, b
    ld a, h
    ld [bc], a
    ld a, d
    ld a, d
    ld [bc], a
    ld a, h
    nop
    ldh [$f1], a
    ret c

    db $10
    ld [bc], a
    add l
    ld a, b
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld [hl], l
    adc d
    ld [bc], a
    db $76
    adc d
    ld [bc], a
    ld a, b
    adc d
    ld [$887b], sp
    ldh [$f1], a
    add sp, $10
    ld [bc], a
    adc d
    ld a, b
    ld [bc], a
    nop
    add [hl]
    ld [bc], a
    ld [hl], a
    adc d
    ld [bc], a
    ld a, c
    adc c
    ld [bc], a
    ld a, e
    adc d
    ld [bc], a
    ld a, b
    add a
    ldh [$f1], a
    ret nc

    ld [$8802], sp
    add h
    ld [bc], a
    nop
    add h
    ld [bc], a
    ld a, b
    adc b
    ld [bc], a
    ld a, d
    adc d
    ld [bc], a
    ld a, e
    adc b
    ld [$847b], sp
    ldh [$f1], a
    ld hl, sp+$10
    ld [bc], a
    adc h
    ld a, d
    ld [bc], a
    adc d
    nop

jr_00c_7bab:
    ld [bc], a
    nop
    adc d
    ld [bc], a
    ld a, b
    adc h
    ld [bc], a
    ld a, d
    adc d
    ld [bc], a
    ld a, h
    nop
    ldh [$f1], a
    jr z, jr_00c_7bab

    ld [bc], a
    ld [hl], l
    adc b
    ld [bc], a
    nop
    nop

jr_00c_7bc1:
    ld [bc], a
    add l
    ld a, d
    ld [bc], a
    add [hl]
    ld a, d
    ld [bc], a
    adc b
    ld a, d
    ld [$788b], sp
    ldh [$f1], a
    jr jr_00c_7bc1

    ld [bc], a
    ld a, d
    adc b
    ld [bc], a
    nop
    db $76
    ld [bc], a
    add a
    ld a, d
    ld [bc], a
    adc c
    ld a, c
    ld [bc], a
    adc e

jr_00c_7bdf:
    ld a, d
    ld [bc], a
    adc b
    ld [hl], a
    ldh [$f1], a
    jr nc, jr_00c_7bdf

    ld [bc], a
    ld a, b
    ld [hl], h
    ld [bc], a
    nop
    ld [hl], h
    ld [bc], a
    adc b
    ld a, b
    ld [bc], a
    adc d
    ld a, d
    ld [bc], a
    adc e
    ld a, b
    ld [$748b], sp
    ldh [$f1], a
    ld [$02f0], sp
    ld a, h
    adc d
    ld [bc], a
    ld a, d
    nop
    ld [bc], a
    nop
    ld a, d
    ld [bc], a
    adc b
    ld a, h
    ld [bc], a
    adc d
    ld a, d
    ld [bc], a
    adc h
    nop
    ldh [$f1], a
    jr z, @+$12

    ld [bc], a
    ld [hl], l
    ld a, b
    ld [bc], a
    nop
    nop
    ld [bc], a
    add l
    adc d
    ld [bc], a
    add [hl]
    adc d
    ld [bc], a
    adc b
    adc d
    ld [$888b], sp
    ldh [$f1], a
    jr jr_00c_7c39

    ld [bc], a
    ld a, d
    ld a, b
    ld [bc], a
    nop
    add [hl]
    ld [bc], a
    add a
    adc d
    ld [bc], a
    adc c
    adc c
    ld [bc], a
    adc e
    adc d
    ld [bc], a

jr_00c_7c39:
    adc b
    add a
    ldh [$f1], a
    jr nc, jr_00c_7c47

    ld [bc], a
    ld a, b
    add h
    ld [bc], a
    nop
    add h
    ld [bc], a
    adc b

jr_00c_7c47:
    adc b
    ld [bc], a
    adc d
    adc d
    ld [bc], a
    adc e
    adc b
    ld [$848b], sp
    ldh [$f1], a
    ld [$0210], sp
    ld a, h
    ld a, d
    ld [bc], a
    ld a, d
    nop
    ld [bc], a
    nop
    adc d
    ld [bc], a
    adc b
    adc h
    ld [bc], a
    adc d
    adc d
    ld [bc], a
    adc h
    nop
    ldh [$fb], a
    inc bc
    ld [hl], d
    ld a, h
    ld [hl], l
    ld a, h
    ld a, b
    ld a, h
    ld a, e
    ld a, h
    nop
    adc e
    ld [hl], a
    nop
    adc e
    ld [hl], h
    nop
    adc e
    add h
    nop
    adc e
    add a
    nop
    nop
    nop
    ldh a, [rP1]
    ld [hl], b
    db $10
    ld a, e
    nop
    db $10
    ld a, d
    nop
    db $10
    ld a, c
    nop
    db $10
    ld a, b
    add e
    db $10
    ld a, b
    add h
    db $10
    db $76
    add h
    and $04
    ld [bc], a
    adc c
    adc d
    ld [bc], a
    adc b
    ld a, c
    rst $20
    db $10
    adc c
    db $76
    and $08
    ld [bc], a
    adc c
    adc d
    ld [bc], a
    adc b
    ld a, e
    rst $20
    ld [$8b75], sp
    ld [$8975], sp
    ld [$8675], sp
    ld [$8475], sp
    jr z, jr_00c_7cb9

jr_00c_7cb9:
    nop
    db $10
    ld [hl], h
    ld [hl], h
    db $10
    ld [hl], h
    ld [hl], l
    db $10
    ld [hl], h
    ld [hl], a
    db $10
    ld [hl], h
    ld a, b
    and $02
    jp hl


    sub [hl]
    ld e, $05
    ld [bc], a
    add h
    nop
    ld a, [bc]
    add h
    add [hl]
    ld a, [bc]
    add h
    add h
    ld a, [bc]
    add h
    ld [hl], h
    ld a, [bc]
    add h
    db $76
    rst $20
    jp hl


    sub [hl]
    ld e, $19
    push hl
    adc a
    ld b, d
    ld [$ff40], sp
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
