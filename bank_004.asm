SECTION "ROM Bank $004", ROMX[$4000], BANK[$4]

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
    and d
    ld b, [hl]
    ldh a, [$08]
    ld d, d
    push hl
    cp $4b
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
    call c, $f046
    ld b, h
    ld [$7628], sp
    ld a, d
    jp hl


    sub [hl]
    ld e, $08
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
    ldh [$e5], a
    ld bc, $5b4c
    ld b, b
    ldh a, [rNR34]
    add [hl]
    ld a, [bc]
    ld [hl], l
    adc e
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
    db $10
    ld c, h
    or b
    ld b, b
    ld [$8975], sp
    ld [$8575], sp
    ld [$7575], sp
    ld [$7975], sp
    pop hl
    call c, $f046
    ld d, c
    ld c, b
    push hl
    cp $4b
    rst $00
    ld b, b
    ld bc, $0000
    db $fc
    and $4a
    inc de
    ld b, a
    dec h
    inc [hl]
    db $fc
    and $4a
    rra
    ld b, a
    dec h
    inc [hl]
    db $fc
    and $4a
    dec hl
    ld b, a
    dec h
    inc [hl]
    db $fc
    and $4a
    scf
    ld b, a
    dec h
    inc [hl]
    db $fc
    and $4a
    ld b, e
    ld b, a
    dec h
    inc [hl]
    db $fc
    and $4a
    ld h, a
    ld b, a
    dec h
    inc [hl]
    db $fc
    and $4a
    ld c, a
    ld b, a
    dec h
    inc [hl]
    db $fc
    and $4a
    ld e, e
    ld b, a
    dec h
    inc [hl]
    db $fc
    jr c, jr_004_4146

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
    call c, $f046
    ld e, b
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

jr_004_4146:
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

jr_004_41a7:
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
    jr nz, jr_004_41a7

    ld [$fc00], sp
    jr c, jr_004_41fc

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

jr_004_41f2:
    push hl
    add sp, $43
    rst $30
    ld b, c
    db $f4
    push af
    db $d3
    ld e, d
    ld sp, hl

jr_004_41fc:
    and b
    pop de
    rst $38
    jr nz, jr_004_41f2

    ld hl, sp+$00
    db $fc
    jr c, jr_004_4247

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
    jr nz, jr_004_4269

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
    ldh [$f7], a
    sub c
    rst $38

jr_004_4247:
    ld bc, $426a
    ld hl, sp-$6e
    rst $38
    jr nz, jr_004_42ac

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

jr_004_4269:
    ldh [$f8], a
    sub d
    rst $38
    jr nz, jr_004_42e2

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

jr_004_42ac:
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

jr_004_42e2:
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
    jr nc, jr_004_430a

    ld b, e
    ld [$f843], sp
    sub d
    rst $38
    jr nz, jr_004_4312

    ld b, e
    nop
    adc e

jr_004_430a:
    nop

jr_004_430b:
    nop
    ld a, e
    nop
    nop
    nop
    adc e
    nop

jr_004_4312:
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
    jr nz, jr_004_4370

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

jr_004_4370:
    db $f4
    cp a

jr_004_4372:
    db $d3
    ld bc, $94f9
    rst $38
    rst $38
    jr nz, jr_004_4372

    sub d
    rst $38
    jr nz, jr_004_430b

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

jr_004_43aa:
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

jr_004_43bd:
    ei
    ld b, e
    rlca
    nop
    ret nc

    ldh [rTAC], a
    ld [de], a
    push de
    ldh [rTAC], a
    jr nz, jr_004_43aa

    ldh [rTAC], a
    dec hl
    xor $e0
    rlca
    jr nc, jr_004_43d2

jr_004_43d2:
    ldh [rTAC], a
    dec hl
    ld [de], a
    ldh [rTAC], a
    jr nz, jr_004_43fa

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

jr_004_43fa:
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
    jr nc, jr_004_43bd

    nop
    db $10
    add [hl]
    nop
    db $10
    halt
    jr nc, jr_004_44b6

    nop
    db $10
    halt
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
    inc d
    nop
    nop
    ld a, [bc]
    nop
    ld [hl], l
    ld e, $00
    ld [hl], a
    ld a, [bc]
    nop
    ld [hl], l
    inc d
    nop
    nop
    ld a, [bc]
    nop
    add l
    ld e, $00
    add a
    ld a, [bc]
    nop
    add l
    pop hl
    ld e, c
    ld b, h
    ld e, $00
    nop
    ld a, [bc]
    nop
    ld [hl], l
    inc a
    nop
    ld [hl], a
    ld a, [bc]
    nop
    ld [hl], l
    ld e, $00
    nop
    ld a, [bc]
    nop
    add l
    inc a
    nop
    add a
    ld a, [bc]
    nop
    add l
    pop hl
    ld [hl], h
    ld b, h
    ld e, $00
    nop
    ld a, [bc]
    nop
    ld [hl], l
    sub [hl]
    nop
    db $76
    ld a, [bc]
    nop
    ld [hl], l
    ld e, $00
    nop
    ld a, [bc]
    nop
    add l
    sub [hl]
    nop
    add [hl]
    ld a, [bc]
    nop
    add l
    pop hl
    adc a
    ld b, h
    ld [$7688], sp
    ld [$0088], sp
    ld [$8688], sp
    ld [$0088], sp

jr_004_44b6:
    pop hl
    xor d
    ld b, h
    ld [$7678], sp
    ld [$0078], sp
    ld [$8678], sp
    ld [$0078], sp
    pop hl
    cp c
    ld b, h
    ld a, [bc]
    add [hl]
    add h
    ld a, [bc]
    adc b
    add [hl]
    ld a, [bc]
    add [hl]
    ld [hl], h
    ld a, [bc]
    ld a, b
    db $76
    ld a, [bc]
    db $76
    add h
    ld a, [bc]
    db $76
    add [hl]
    ld a, [bc]
    add [hl]
    ld [hl], h
    ld a, [bc]
    adc b
    db $76
    ld a, [bc]
    add [hl]
    add h
    ld a, [bc]
    ld a, b
    add [hl]
    ld a, [bc]
    db $76
    ld [hl], h
    ld a, [bc]
    db $76
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
    db $ed
    ld b, h
    stop
    nop
    jr nz, jr_004_450d

jr_004_450d:
    ld [hl], l
    ld b, b
    nop
    db $76
    jr nz, jr_004_4513

jr_004_4513:
    ld [hl], l
    stop
    nop
    jr nz, jr_004_4519

jr_004_4519:
    add l
    ld b, b
    nop
    add [hl]
    jr nz, jr_004_451f

jr_004_451f:
    add l
    pop hl
    ld [$1045], sp
    nop
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
    inc hl
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
    inc hl
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
    ld h, c
    ld b, l
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
    ld [hl], e
    ld b, l
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
    add l
    ld b, l
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

jr_004_45a7:
    nop
    nop
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
    sbc d
    ld b, l
    ld [bc], a
    nop
    ld a, c
    add sp, -$24
    jr nc, jr_004_45a7

    ld b, l
    ret z

    ld b, l
    pop hl
    cp e
    ld b, l
    push hl
    ld h, d
    ld b, [hl]
    call $1045
    nop
    ld a, b
    ld [$7786], sp
    ld [$7588], sp
    ld [$898a], sp
    ld [$8888], sp
    ld [$8674], sp
    ld [$8476], sp
    nop
    ld a, d
    nop
    push hl
    ld e, c
    ld b, [hl]
    ld [$1045], a
    nop
    ld a, b
    ld [$7776], sp
    ld [$7578], sp
    ld [$897a], sp
    ld [$8878], sp
    ld [$8684], sp
    ld [$8486], sp
    nop
    adc d
    nop
    ld [$7b00], sp
    stop
    ld a, d
    ld [$7900], sp
    ld [$7700], sp
    ld [$7600], sp
    ld [$8600], sp
    ld [$8800], sp
    ld [$8600], sp
    ld [$0000], sp
    ld [$7878], sp
    ld [$7a00], sp
    ld [$7888], sp
    ld [$008a], sp
    ld [$8888], sp
    ld [$8a00], sp
    ld [$8a78], sp
    add sp, -$4e
    jr nc, @-$19

    ld b, l
    ret z

    ld b, l
    ld d, b
    nop
    nop
    push hl
    ld b, a
    ld b, [hl]
    ld b, c
    ld b, [hl]
    stop
    add [hl]
    stop
    add l
    stop
    add e
    ld d, b
    nop
    ld [hl], e
    push hl
    dec sp
    ld b, [hl]
    ld d, d
    ld b, [hl]
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
    ld h, e
    ld b, [hl]
    stop
    add [hl]
    stop
    add l
    stop
    add e
    ld d, b
    nop
    ld [hl], e
    push hl
    ld b, c
    ld b, [hl]
    ld [hl], h
    ld b, [hl]
    ld [$0076], sp

jr_004_4677:
    ld [$0079], sp
    nop
    ld a, e
    nop
    push hl
    dec sp
    ld b, [hl]
    add d
    ld b, [hl]
    ld b, $87
    adc c
    ld b, $87
    add a
    ld b, $87
    add l
    ld b, $87
    ld [hl], l
    ld b, $87
    ld [hl], a
    ld a, [$7d55]
    ld b, [hl]
    inc bc
    add a
    ld a, c
    ld a, [$7d80]
    ld b, [hl]
    inc bc
    add a
    ld a, c
    pop hl
    ld a, l
    ld b, [hl]
    db $fc
    jr c, jr_004_46e6

    ld [$2540], sp
    inc [hl]
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
    push hl
    rrca
    ld b, c
    jp z, $0846

    nop
    adc e
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

jr_004_46e6:
    db $d3
    ld bc, $0000
    nop
    pop af
    db $fc
    db $fc
    ld [$8787], sp
    jr nc, jr_004_4677

    add l
    ldh [$f1], a
    inc b
    db $fc
    ld [$8777], sp
    jr nc, jr_004_4771

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
    jr nc, jr_004_4786

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

jr_004_4771:
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

jr_004_4786:
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
    push de
    ld b, a
    pop hl
    ld b, a
    db $ed
    ld b, a
    ld sp, hl
    ld b, a
    dec b
    ld c, b
    ld de, $1d48
    ld c, b
    add hl, hl
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
    rrca
    ld c, c
    db $e3
    ld [hl], l
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
    jr nz, jr_004_49df

    nop
    add b
    add h
    halt
    nop
    nop
    db $e3
    ld [hl], l
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
    pop af
    ld c, b
    cp h
    ld [hl], l
    dec h
    inc [hl]
    rst $20
    nop
    add a
    nop
    db $e3
    ld [hl], l
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
    pop af
    ld c, b
    inc de
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
    inc de

jr_004_49df:
    ld c, d
    dec h
    inc [hl]
    and $08
    ld b, $70
    ld [hl], h
    db $fc
    pop af
    ld c, b
    inc de
    ld c, d
    dec h
    inc [hl]
    rst $20
    ld [$8883], sp
    db $fc
    pop af
    ld c, b
    inc de
    ld c, d
    dec h
    inc [hl]
    ld [$8a85], sp
    db $fc
    pop af
    ld c, b
    inc de
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
    dec e
    ld c, d
    jr nz, @+$4c

    inc hl
    ld c, d
    ld h, $4a
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
    ld [hl], l
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
    db $e4
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
    ld b, $85
    nop
    ld b, $85
    ld [hl], h
    ld b, $85
    db $76
    ld b, $85
    ld a, b

jr_004_4aba:
    nop
    add l
    ld a, c
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
    nop
    ld c, e
    ld bc, $0086
    pop hl
    add sp, $4a
    ld [$d140], a
    ld e, d
    nop
    ld c, e
    ld bc, $0076
    pop hl
    db $f4
    ld c, d
    push hl
    ld [hl], c
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
    jr jr_004_4aba

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
    ld a, [hl-]
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
    ld a, [hl-]
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
    pop hl
    ld b, a
    ld c, h
    ei
    rlca
    ld h, d
    ld c, h
    ld l, a
    ld c, h
    ld a, h
    ld c, h
    adc c
    ld c, h
    sub [hl]
    ld c, h
    and e
    ld c, h
    or b
    ld c, h
    cp l
    ld c, h
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
    jp z, $0a4c

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
    db $d3
    ld c, h
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
    push hl
    ld c, h
    ld d, b
    nop
    nop
    push hl
    ld b, a
    ld b, [hl]
    db $fc
    ld c, h
    stop
    add [hl]
    stop
    add l
    stop
    add h
    ld d, b
    nop
    ld [hl], h
    push hl
    ld b, a
    ld b, [hl]
    dec c
    ld c, l
    ld [$0086], sp
    ld [$0088], sp
    nop
    add a
    nop
    ld [bc], a
    nop
    ld a, c
    add sp, -$24
    jr nc, jr_004_4d5d

    ld c, l
    inc hl
    ld c, l
    pop hl
    ld d, $4d
    push hl
    ld h, d
    ld b, [hl]
    jr z, jr_004_4d75

    stop
    ld a, b
    ld [$7584], sp
    ld [$7386], sp
    ld [$8a89], sp
    ld [$8786], sp
    ld [$8573], sp
    ld [$0074], sp
    nop
    ld a, b
    nop
    push hl
    ld e, c
    ld b, [hl]
    ld b, l
    ld c, l
    stop
    ld a, b
    ld [$7574], sp
    ld [$7376], sp
    ld [$8a79], sp
    ld [$8776], sp
    ld [$8583], sp
    ld [$0084], sp
    nop
    adc b
    nop

jr_004_4d5d:
    inc b
    add [hl]
    ld [hl], l
    inc b
    add [hl]
    nop
    inc b
    add l
    add l
    inc b
    add a
    adc b
    inc b
    adc b
    add l
    inc b
    adc b
    nop
    inc b
    add a
    nop
    inc b
    add [hl]
    ld [hl], l

jr_004_4d75:
    inc b
    add [hl]
    ld a, b
    pop hl
    ld e, l
    ld c, l
    inc b
    db $76
    ld [hl], l
    inc b
    halt
    inc b
    ld [hl], l
    add l
    inc b
    ld [hl], a
    adc b
    inc b
    ld a, b
    add l
    inc b
    ld a, b
    nop
    inc b
    ld [hl], a
    nop
    inc b
    db $76
    ld [hl], l
    inc b
    db $76
    ld a, b
    pop hl
    ld e, l
    ld c, l
    ld d, b
    nop
    nop
    ld [$8800], sp
    ld [$8700], sp
    ld [$8500], sp
    ld [$8300], sp
    ld [$7300], sp
    ld [$7500], sp
    ld [$7700], sp
    ld [$7800], sp
    pop hl
    sbc c
    ld c, l
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
    rst $28
    ld c, l
    db $e3
    ld de, $e24e
    ld sp, hl
    db $e3
    ld de, $e34e
    rst $28
    ld c, l
    ld [c], a
    ld sp, hl
    and $0c
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
    db $e4
    and $0c
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
    db $e4
    db $e3
    ld b, e
    ld c, [hl]
    db $e3
    ld h, l
    ld c, [hl]
    ld [c], a
    ld sp, hl
    db $e3
    ld h, l
    ld c, [hl]
    db $e3
    ld b, e
    ld c, [hl]
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
    jr nz, jr_004_4e8c

jr_004_4e8c:
    db $76
    ld b, b
    nop
    ld [hl], a
    jr nz, jr_004_4e92

jr_004_4e92:
    db $76
    pop hl
    add a
    ld c, [hl]
    push hl
    ccf
    ld c, l
    sbc e
    ld c, [hl]
    and $02
    db $e3
    bit 1, [hl]
    rst $20
    push hl
    ld b, a
    ld c, l
    and [hl]
    ld c, [hl]
    and $02
    db $e3
    sbc $4e
    rst $20
    ld [c], a
    jp hl


    push hl
    ccf
    ld c, l
    or e
    ld c, [hl]
    and $04
    db $e3
    bit 1, [hl]
    rst $20
    push hl
    ld b, a
    ld c, l
    cp [hl]
    ld c, [hl]
    and $04
    db $e3
    sbc $4e
    rst $20
    ld [c], a
    jp hl


    db $e3
    bit 1, [hl]
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
    ld d, $4f
    db $e3
    add hl, hl
    ld c, a
    ld [c], a
    ld sp, hl
    db $e3
    add hl, hl
    ld c, a
    db $e3
    ld d, $4f
    ld [c], a

jr_004_4f15:
    ld sp, hl
    and $09
    inc bc
    nop
    nop
    inc b
    add [hl]
    add [hl]
    inc b
    add l

jr_004_4f20:
    add e
    inc b
    add l
    ld [hl], e
    inc b
    add l
    db $76
    rst $20
    db $e4
    and $09
    inc bc
    nop
    nop
    inc b
    db $76
    add [hl]
    inc b
    ld [hl], l
    add e
    inc b
    ld [hl], l
    ld [hl], e
    inc b
    ld [hl], l
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
    and $03
    inc bc
    nop
    nop
    inc b
    add [hl]
    add [hl]
    inc b
    add l
    add e

Jump_004_4f65:
    inc b
    add l
    ld [hl], e
    inc b
    add l
    db $76
    rst $20
    pop hl
    ld l, a
    ld c, a
    and $03
    inc bc
    nop
    nop
    inc b
    db $76
    add [hl]
    inc b
    ld [hl], l
    add e
    inc b
    ld [hl], l
    ld [hl], e
    inc b
    ld [hl], l
    db $76
    rst $20
    pop hl
    ld e, d
    ld c, a
    inc a
    add a
    nop
    inc a
    ld [hl], a
    nop
    ld [c], a
    ld sp, hl
    jr z, jr_004_4f15

    nop
    jr z, jr_004_5008

    nop
    ld [c], a
    ld sp, hl
    jr z, jr_004_500d

    nop
    jr z, jr_004_4f20

    nop
    ld [c], a
    ld sp, hl
    add sp, -$4e
    jr nc, @-$5b

    ld c, a
    pop bc
    ld c, a
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
    dec l
    nop
    ld a, d
    and $02
    ld [$8876], sp
    ld [$8676], sp
    ld [$7676], sp
    ld [$7876], sp
    ld [$8986], sp
    ld [$8786], sp
    ld [$7786], sp
    ld [$7986], sp
    rst $20
    nop
    nop
    nop
    inc b
    add a
    adc d
    inc b
    add a
    adc d
    inc b
    add a

jr_004_5008:
    adc b
    inc b
    add a
    add a
    inc b

jr_004_500d:
    add a
    add [hl]
    inc b
    add a
    add l
    inc b
    add a
    ld [hl], l
    inc b
    add a
    db $76
    inc b
    add a
    ld [hl], a
    inc b
    add a
    ld a, b
    inc b
    add a
    ld a, d
    inc b
    add a
    ld a, d
    inc b
    ld [hl], a
    adc d
    inc b
    ld [hl], a
    adc d
    inc b
    ld [hl], a
    adc b
    inc b
    ld [hl], a
    add a
    inc b
    ld [hl], a
    add [hl]
    inc b
    ld [hl], a
    add l
    inc b
    ld [hl], a
    ld [hl], l
    inc b
    ld [hl], a
    db $76
    inc b
    ld [hl], a
    ld [hl], a
    inc b
    ld [hl], a
    ld a, b
    inc b
    ld [hl], a
    ld a, d
    inc b
    ld [hl], a
    ld a, d
    nop
    nop
    nop
    dec b
    adc d
    adc d
    dec b
    adc d
    adc d
    dec b
    adc d
    adc b
    dec b
    adc d
    add a
    dec b
    adc d
    add [hl]
    dec b
    adc d
    add l
    dec b
    adc d
    ld [hl], l
    dec b
    adc d
    db $76
    dec b
    adc d
    ld [hl], a
    dec b
    adc d
    ld a, b
    dec b
    adc d
    ld a, d
    dec b
    adc d
    ld a, d
    dec b
    ld a, d
    adc d
    dec b
    ld a, d
    adc d
    dec b
    ld a, d
    adc b
    dec b
    ld a, d
    add a
    dec b
    ld a, d
    add [hl]
    dec b
    ld a, d
    add l
    dec b
    ld a, d
    ld [hl], l
    dec b
    ld a, d
    db $76
    dec b
    ld a, d
    ld [hl], a
    dec b
    ld a, d
    ld a, b
    dec b
    ld a, d
    ld a, d
    dec b
    ld a, d
    ld a, d
    nop
    nop
    nop
    ld b, $00
    adc e
    ld b, $00
    adc d
    ld b, $00
    adc c
    ld b, $00
    add a
    ld b, $00
    add h
    stop
    nop
    ld b, $00
    ld [hl], h
    ld b, $00
    ld [hl], a
    ld b, $00
    ld a, c
    ld b, $00
    ld a, d
    ld b, $00
    ld a, e
    nop
    nop
    nop
    ld [$008a], sp
    ld [$758a], sp
    ld [$778a], sp
    ld [$8989], sp
    ld [$8489], sp
    ld [$7489], sp
    ld [$7889], sp
    db $fc
    cp [hl]
    ld b, e
    ld [$bb40], sp
    dec [hl]
    ldh [$08], a
    adc d
    ld a, b
    ld [$7a8a], sp
    ld [$7b8a], sp
    ld [$8a89], sp
    ld [$8689], sp
    ld [$7689], sp
    ld [$7a89], sp
    db $fc
    cp [hl]
    ld b, e
    ld [$bb40], sp
    dec [hl]
    ldh [$fa], a
    add b
    ld c, $51
    pop af
    ldh a, [rNR23]
    jp hl


    sub [hl]
    ld e, $0f
    ld [$8588], sp
    ld [$008a], sp
    ld [$858b], sp
    ld [$868b], sp
    nop
    adc e
    add a
    pop af
    ldh a, [rNR23]
    jp hl


    sub [hl]
    ld e, $0f
    ld [$7588], sp
    ld [$008a], sp
    ld [$758b], sp
    ld [$768b], sp
    nop
    adc e
    ld [hl], a

jr_004_5124:
    cp $07
    jr c, jr_004_5179

jr_004_5128:
    inc a
    ld d, c
    ld b, b
    ld d, c

jr_004_512c:
    ld b, h
    ld d, c
    ld c, b
    ld d, c

jr_004_5130:
    ld c, h
    ld d, c
    ld d, b
    ld d, c

jr_004_5134:
    ld d, h
    ld d, c
    ld [c], a
    ld hl, $30f0
    jr nz, @-$1a

jr_004_513c:
    ldh a, [rNR23]
    jr nz, jr_004_5124

    ldh a, [$28]
    jr nz, jr_004_5128

    ldh a, [$38]
    jr nz, jr_004_512c

    ldh a, [rOBP0]
    jr nz, jr_004_5130

    ldh a, [$58]
    jr nz, jr_004_5134

    ldh a, [rNR13]
    jr nz, @-$1a

    ldh a, [rKEY1]
    jr nz, jr_004_513c

    add hl, de
    nop
    nop
    ld [$7800], sp
    ld [$7900], sp
    ld [$7a00], sp
    ld [$7b00], sp
    ld [$7c00], sp
    add sp, -$4e
    jr nc, jr_004_51df

    ld d, c
    sbc h
    ld d, c
    push hl
    dec l
    ld d, c
    db $76
    ld d, c
    ld a, [bc]
    add [hl]
    adc d

jr_004_5179:
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
    push hl
    ld d, a
    ld d, c
    and c
    ld d, c
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

jr_004_51df:
    nop
    ld a, b
    pop hl
    ret c

    ld d, c
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
    db $e4
    ld d, c
    rst $30
    sub d
    rst $38
    ld b, b
    ld [hl-], a
    ld d, d
    nop
    nop
    ld a, c
    ldh [$f1], a
    nop
    db $f4
    add b
    halt
    ldh [$f1], a
    nop
    db $f4
    add b
    add [hl]
    nop
    ldh [$64], a
    nop
    nop
    add sp, $21
    ld sp, $368e
    xor $b1
    ld b, c
    ret c

    ld d, c
    nop
    nop
    nop
    ld a, [bc]
    nop
    nop
    jr z, jr_004_5256

jr_004_5256:
    ld a, d
    ld [$7800], sp
    ld [$7500], sp
    ld [$8400], sp
    push hl
    ld c, d
    ld d, d
    cp b
    ld d, d
    db $fc
    ld c, d
    ld d, d
    sub a
    ld d, d
    adc h
    inc [hl]
    ld bc, $0000
    db $ec
    ld a, [$c8ec]
    pop hl
    ld h, l
    ld d, d
    ld [$8a76], sp
    ld [$7476], sp
    ld [$8776], sp
    ld [$7876], sp
    ld [$8876], sp
    ld [$7a76], sp
    ld [$8976], sp
    ld [$7776], sp
    ld [$8476], sp
    ld [$7976], sp
    pop hl
    db $76
    ld d, d
    ld [$8a86], sp
    ld [$7486], sp
    ld [$8786], sp
    ld [$7886], sp
    ld [$8886], sp
    ld [$7a86], sp
    ld [$8986], sp
    ld [$7786], sp
    ld [$8486], sp
    ld [$7986], sp
    pop hl
    sub a
    ld d, d
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
    cp b
    ld d, d
    ld [$8586], sp
    ld [$8686], sp
    ld [$8786], sp
    ld [$8885], sp
    ld [$8984], sp
    ld [$8885], sp
    ld [$8786], sp
    ld [$8686], sp
    ld [$7586], sp
    ld [$7686], sp
    ld [$7786], sp
    ld [$7885], sp
    ld [$7984], sp
    ld [$7885], sp
    ld [$7786], sp
    ld [$7686], sp
    pop hl
    reti


    ld d, d
    ld [de], a
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

jr_004_533f:
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
    inc c
    ld d, e
    ld a, [bc]
    nop
    nop
    db $e3
    xor [hl]
    ld d, e
    ld a, [bc]
    nop
    nop
    db $e3
    cp e
    ld d, e
    db $e3
    xor [hl]
    ld d, e
    ld a, [bc]
    nop
    nop
    db $e3
    cp e
    ld d, e
    ld a, [bc]
    nop
    nop
    db $e3
    ret z

    ld d, e
    ld a, [bc]
    nop
    nop
    db $e3
    push de
    ld d, e
    db $e3
    ret z

    ld d, e
    ld a, [bc]
    nop
    nop
    db $e3
    push de
    ld d, e
    pop hl
    add c
    ld d, e
    db $10
    add [hl]
    ld [hl], l
    db $10
    add l
    db $76
    db $10
    add l
    ld a, b
    jr jr_004_533f

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
    jr jr_004_5449

    ld a, d
    db $e4
    jr jr_004_544d

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
    jr nc, jr_004_53e4

jr_004_53e4:
    nop
    ld [$8689], sp
    ld [$8788], sp
    ld [$8887], sp
    ld [$8986], sp
    ld [$8976], sp
    ld [$8877], sp
    ld [$8778], sp
    ld [$8679], sp
    ld [$7679], sp
    ld [$7778], sp
    ld [$7877], sp
    ld [$7976], sp
    ld [$7886], sp
    ld [$7787], sp
    ld b, $88
    db $76
    ld b, $89
    ld [hl], l
    ld [$008a], sp
    ld [$008b], sp
    ld [$008c], sp
    ld [$008d], sp
    nop
    adc l
    nop
    ldh [rNR10], a
    add e
    ld [hl], l
    db $10
    add l
    ld [hl], l
    db $10
    add l
    ld [hl], l
    db $10
    add e
    ld [hl], l
    stop
    ld [hl], l
    db $10
    ld [hl], e
    ld [hl], l
    db $10
    ld [hl], l
    ld [hl], l
    db $10
    ld [hl], l

jr_004_543c:
    ld [hl], l
    db $10
    ld [hl], e
    ld [hl], l

jr_004_5440:
    pop hl
    dec h

jr_004_5442:
    ld d, h
    db $10
    add e
    add l
    db $10
    add l
    add l

jr_004_5449:
    db $10
    add l
    add l
    db $10

jr_004_544d:
    add e
    add l
    stop
    add l
    db $10
    ld [hl], e
    add l
    db $10
    ld [hl], l
    add l
    db $10
    ld [hl], l
    add l
    db $10
    ld [hl], e
    add l
    pop hl
    ld b, e
    ld d, h
    xor $05
    ld b, c
    nop
    nop
    add sp, -$1f
    ld c, b
    push hl
    ld h, e
    ld d, e
    ld l, [hl]
    ld d, h
    ld d, b
    nop
    nop
    db $e3
    ld a, h
    ld d, h
    db $e3
    ld a, h
    ld d, h
    inc c
    nop
    nop
    ld [c], a
    or $e8
    ld e, h
    ld c, c
    db $eb
    cp l
    db $d3
    sub d
    ld d, h
    sub [hl]
    ld d, h
    sbc d
    ld d, h
    sbc [hl]
    ld d, h
    and d
    ld d, h
    and [hl]
    ld d, h
    xor d
    ld d, h
    xor [hl]
    ld d, h
    inc d
    nop
    add l
    db $e4
    inc d
    ld [hl], l
    add l
    db $e4
    inc d
    ld [hl], l
    nop
    db $e4
    inc d
    ld [hl], l
    ld [hl], l
    db $e4
    inc d
    nop

jr_004_54a4:
    ld [hl], l
    db $e4
    inc d
    add l
    ld [hl], l
    db $e4
    inc d
    add l
    nop
    db $e4
    inc d
    add l
    add l
    db $e4
    stop
    nop
    jr nz, jr_004_543c

    nop
    jr nz, jr_004_5440

    nop
    jr nz, jr_004_5442

    nop
    stop
    nop
    jr nz, jr_004_5538

    nop
    jr nz, jr_004_553c

    nop
    jr nz, @+$77

    nop
    pop hl
    or d
    ld d, h
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

jr_004_54d9:
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
    call $2054
    add a
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
    jr nz, jr_004_54a4

    nop
    jr nz, jr_004_5597

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

jr_004_5538:
    ld a, e
    ld [$8877], sp

jr_004_553c:
    ld [$7877], sp
    jr nz, jr_004_55b8

    nop
    pop hl
    ld a, [$ee54]
    or c
    ld b, c
    add hl, sp
    ld d, h
    nop
    nop
    nop
    ld [$0086], sp
    jr nz, jr_004_54d9

    nop
    ld [$0086], sp
    ld [$0076], sp
    jr nz, jr_004_55d2

    nop
    ld [$0076], sp
    pop hl
    jp c, $e542

    nop
    ld b, b
    ld h, a
    ld d, l
    pop af
    nop
    db $10
    ld [hl-], a
    nop
    nop
    push hl
    ld l, e
    ld d, h
    ld [hl], d
    ld d, l
    add sp, $21
    ld sp, $364f
    db $e3
    cp h
    ld d, l
    pop af
    nop
    ldh a, [$e8]
    ld hl, $2131
    inc [hl]
    pop hl
    ld h, d
    ld d, l
    push hl
    nop
    ld b, b
    adc d
    ld d, l
    ld [hl-], a
    nop
    nop
    cp $03
    xor h
    ld d, l
    or b
    ld d, l
    or h
    ld d, l
    cp b
    ld d, l

jr_004_5597:
    add sp, $21
    ld sp, $364f
    push hl
    ld l, e
    ld d, h
    and c
    ld d, l
    db $e3
    cp h
    ld d, l
    add sp, $21
    ld sp, $3421
    pop hl
    add l
    ld d, l
    ld bc, $0000
    db $e4
    ld a, [bc]
    nop
    nop
    db $e4
    inc d
    nop
    nop
    db $e4

jr_004_55b8:
    ld e, $00
    nop
    db $e4
    db $fc
    ld [hl], h
    ld d, h
    ld [$cd40], sp
    dec [hl]
    db $fc
    and $4a
    jp $2147


    inc [hl]
    inc b
    nop
    adc h
    inc b
    nop
    adc e
    inc b
    nop

jr_004_55d2:
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
    jr nc, jr_004_560e

jr_004_560e:
    nop
    inc b
    nop
    ld a, e
    inc b
    nop
    ld a, h
    db $fc
    ld [hl], h
    ld d, h
    ld [$cd40], sp
    dec [hl]
    db $fc
    and $4a
    jp $2147


    inc [hl]
    db $e4
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
    add a
    nop
    add a
    ld [hl], a
    nop
    ld [hl], a
    ld [hl], a
    nop
    add a
    add a
    nop
    ld [hl], a
    add a
    nop
    add a
    add [hl]
    nop
    ld [hl], a
    add [hl]
    nop
    nop
    ld a, b
    nop
    nop
    adc b
    nop
    ld a, b
    adc b
    nop
    ld a, b
    ld a, b
    nop
    adc b
    ld a, b
    nop
    adc b
    adc b
    nop
    nop
    ld a, c
    nop
    adc b
    ld a, b
    nop
    ld a, b
    ld a, b
    nop
    nop
    add l
    nop
    nop
    ld a, d
    nop
    nop
    adc d
    nop
    nop
    halt
    nop
    ld a, e
    nop
    ld a, d
    ld a, d
    nop
    ld a, d
    adc d
    nop
    adc d
    ld a, d
    nop
    adc d
    adc d
    add b
    nop
    add [hl]
    add b
    nop
    db $76
    pop hl
    ld a, c
    ld d, [hl]
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
    add d
    ld d, [hl]
    add b
    add [hl]
    nop
    add b
    halt
    pop hl
    sub c
    ld d, [hl]
    ld [$768a], sp
    ld [$7789], sp
    inc b
    adc b
    ld a, b
    inc b
    adc b
    ld a, b
    ld [$7987], sp
    ld [$7a86], sp
    ld [$7a76], sp
    ld [$7977], sp
    inc b
    ld a, b
    ld a, b
    inc b
    ld a, b
    ld a, b
    ld [$7779], sp
    ld [$767a], sp
    ld [$867a], sp
    ld [$8779], sp
    inc b
    ld a, b
    adc b
    inc b
    ld a, b
    adc b
    ld [$8977], sp
    ld [$8a76], sp
    ld [$8a86], sp
    ld [$8987], sp
    inc b
    adc b
    adc b
    inc b
    adc b
    adc b
    ld [$8789], sp
    ld [$868a], sp
    pop hl
    sbc d
    ld d, [hl]
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
    ld [$0087], sp
    ld [$0085], sp
    db $10
    add e
    nop
    stop
    nop
    pop hl
    rrca
    ld d, a
    ld [$0077], sp
    ld [$0075], sp
    db $10
    ld [hl], e
    nop
    stop
    nop
    pop hl
    ld e, $57
    and $03
    ld [$0088], sp
    ld [$0086], sp
    db $10
    add h
    nop
    rst $20
    and $03
    ld [$0078], sp
    ld [$0076], sp
    db $10
    ld [hl], h
    nop
    rst $20
    pop hl
    dec l
    ld d, a
    inc e
    nop
    adc d
    push hl
    rst $10
    ld d, [hl]
    ld d, b
    ld d, a
    ld [$8a00], sp
    ld [$8700], sp
    ld [$7700], sp
    ld [$7a00], sp
    inc a
    nop
    nop
    push hl
    or b
    ld d, [hl]
    rrca
    ld d, a
    push hl
    or b
    ld d, [hl]
    ld l, c
    ld d, a
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
    cp c
    ld d, [hl]
    ld a, l
    ld d, a
    and $02
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
    and $02
    db $e3
    cp a
    ld d, a
    rst $20
    db $e3
    ld a, [de]
    ld e, b
    pop hl
    sbc e
    ld d, a
    and $02
    db $e3
    cp a
    ld d, a
    rst $20
    db $e3
    ld c, c
    ld e, b
    pop hl
    and a
    ld d, a
    and $02
    db $e3
    cp a
    ld d, a
    rst $20
    db $e3
    ld c, c
    ld e, b
    pop hl
    or e
    ld d, a
    push hl
    ld a, a
    ld e, b
    call nz, $0857
    add h
    ld [hl], l
    ld [$7576], sp
    ld [$7386], sp
    ld [$7384], sp
    ld [$8574], sp
    ld [$8586], sp
    ld [$8376], sp
    ld [$8374], sp
    db $e4
    db $e3
    ld a, b
    ld e, b
    db $ec
    ld a, [bc]
    db $e3
    ld a, b
    ld e, b
    db $ec
    ld e, $e3
    ld a, b
    ld e, b
    db $ec
    inc d
    push hl
    xor c
    ld e, b
    pop af
    ld d, a
    db $10
    adc c
    nop
    db $10
    add [hl]
    nop
    ld [$0084], sp
    db $e3
    adc d
    ld e, b
    db $ec
    ld a, [bc]
    db $e3
    adc d
    ld e, b
    db $ec
    ld e, $e3
    adc d
    ld e, b
    db $ec
    inc d
    push hl
    xor a
    ld e, b
    ld c, $58
    db $10
    ld a, c
    nop
    db $10
    halt
    ld [$0074], sp
    pop hl
    db $dd
    ld d, a
    push hl
    sub c
    ld e, b
    rra
    ld e, b
    ld [$8b00], sp
    ld [$8a00], sp
    ld [$8900], sp
    ld [$8700], sp
    ld [$7700], sp
    push hl
    sbc d
    ld e, b
    inc sp
    ld e, b
    ld [$7900], sp
    ld [$7a00], sp
    ld [$7b00], sp
    ld [$7800], sp
    ld [$7600], sp
    ld [$8600], sp
    ld [$8800], sp
    db $e4
    push hl
    sub c
    ld e, b
    ld c, [hl]
    ld e, b
    ld c, $00
    adc e
    ld c, $00
    adc d
    ld c, $00
    adc c
    ld c, $00
    add a
    ld c, $00
    ld [hl], a
    push hl
    sbc d
    ld e, b
    ld h, d
    ld e, b
    ld c, $00
    ld a, c
    ld c, $00
    ld a, d
    ld c, $00
    ld a, e
    ld [$7800], sp
    ld [$7600], sp
    ld [$8600], sp
    ld [$8800], sp
    db $e4
    push hl
    sbc l
    ld e, b
    ld a, l
    ld e, b
    ld [$0084], sp

jr_004_5880:
    inc b
    adc d
    nop
    ld b, $88
    nop
    ld bc, $0085
    db $e4
    push hl
    and e
    ld e, b
    adc a
    ld e, b
    ld [$0074], sp
    inc b
    ld a, d
    nop
    ld b, $78
    nop
    ld bc, $0075
    db $e4
    push hl
    cp [hl]
    ld e, b
    and c
    ld e, b
    ld a, b
    add [hl]
    nop
    and $02
    db $e3
    xor l
    ld e, b
    rst $20
    pop hl
    sbc h
    ld e, b
    push hl
    rst $00
    ld e, b
    or d
    ld e, b
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
    rst $00
    ld e, b
    pop bc
    ld e, b
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
    or l
    ld e, b
    sub $58
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
    cp [hl]
    ld e, b
    db $e4
    ld e, b
    db $10
    ld [hl], h
    nop
    and b
    halt
    db $10
    ld [hl], h
    nop
    pop hl
    pop de
    ld e, b
    push hl
    or l
    ld e, b
    push af
    ld e, b
    db $10
    add h
    nop
    jr jr_004_5880

    nop
    db $10
    add h
    nop
    push hl
    cp [hl]
    ld e, b
    inc bc
    ld e, c
    db $10
    ld [hl], h
    nop
    jr jr_004_597e

    nop
    db $10
    ld [hl], h
    nop
    pop hl
    ldh a, [$58]
    jr z, jr_004_5911

jr_004_5911:
    ld a, b
    push hl
    sub $58
    rla
    ld e, c
    stop
    nop
    db $e3
    xor l
    ld e, b
    pop hl
    ld a, [de]
    ld e, c
    push hl
    rst $00
    ld e, b
    dec h
    ld e, c
    ld b, $87
    adc c
    ld b, $87
    add a
    ld b, $87
    add l
    ld b, $87
    ld [hl], l
    ld b, $87
    ld [hl], a
    ld a, [$2055]
    ld e, c
    inc bc
    add a
    ld a, c
    ld a, [$2080]
    ld e, c
    inc bc
    add a
    ld a, c
    pop hl
    jr nz, jr_004_599e

    ld b, b
    add [hl]
    nop
    ld b, b
    halt
    push hl
    sub $58
    ld d, b
    ld e, c
    jr nc, jr_004_5952

jr_004_5952:
    nop
    push hl
    call c, $5858
    ld e, c
    ld [$8b89], sp
    ld [$8989], sp
    ld [$8889], sp
    ld [$7689], sp
    ld [$7788], sp
    push hl
    sub $58
    ld l, h
    ld e, c
    jr nz, jr_004_596e

jr_004_596e:
    nop
    db $e3
    cp h
    ld e, b
    pop hl
    ld l, a
    ld e, c
    stop
    add h
    ld [$8a00], sp
    ld [$8900], sp

jr_004_597e:
    ld [$8700], sp
    ld [$8600], sp
    pop hl
    ld [hl], l
    ld e, c
    stop
    adc e
    stop
    adc d
    stop
    adc b
    stop
    nop
    stop
    ld a, b
    inc d
    nop
    ld a, d
    inc d
    nop
    nop
    nop
    nop

jr_004_599e:
    adc e
    jr z, jr_004_59a1

jr_004_59a1:
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
    sub l
    ld d, c
    ld [$2140], sp
    inc [hl]
    jr nz, jr_004_59b6

jr_004_59b6:
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
    stop
    nop
    push hl
    ld h, c
    ld e, c
    sbc $59
    and $02
    ld a, [bc]
    ld [hl], a
    ld [hl], a
    ld a, [bc]
    db $76
    ld [hl], a
    ld a, [bc]
    ld [hl], l
    db $76
    ld a, [bc]
    nop
    db $76
    ld a, [bc]
    add l
    ld [hl], l

jr_004_59ef:
    ld a, [bc]
    add [hl]
    ld [hl], l

jr_004_59f2:
    ld a, [bc]
    add a
    nop
    ld a, [bc]
    add [hl]
    add l
    ld a, [bc]
    add l
    add l
    ld a, [bc]
    nop
    add [hl]
    ld a, [bc]
    ld [hl], l
    add [hl]
    ld a, [bc]
    db $76
    add a
    ld a, [bc]
    ld [hl], a
    add a
    ld a, [bc]
    db $76
    add a
    ld a, [bc]
    ld [hl], l
    add [hl]
    ld a, [bc]
    nop
    add [hl]
    ld a, [bc]
    add l
    add l
    ld a, [bc]
    add [hl]
    add l
    ld a, [bc]
    add a
    nop
    ld a, [bc]
    add [hl]

jr_004_5a1b:
    ld [hl], l
    ld a, [bc]
    add l

jr_004_5a1e:
    ld [hl], l
    ld a, [bc]
    nop
    db $76
    ld a, [bc]
    ld [hl], l
    db $76
    ld a, [bc]
    db $76
    ld [hl], a
    rst $20
    add sp, -$0b
    ld c, b
    db $eb
    cp l
    db $d3
    ld a, e
    ld e, d
    ld a, e
    ld e, d
    ld a, e
    ld e, d
    ld a, e
    ld e, d
    ld c, a
    ld e, d
    and a
    ld e, d
    and a
    ld e, d
    and a
    ld e, d
    and a
    ld e, d
    and a
    ld e, d
    and a
    ld e, d
    and a
    ld e, d

jr_004_5a47:
    ld c, a
    ld e, d
    ld a, e

jr_004_5a4a:
    ld e, d
    ld a, e
    ld e, d
    ld a, e
    ld e, d
    push hl
    ld c, c
    ld e, d
    ld d, h
    ld e, d
    db $10
    ld a, b
    nop
    db $10
    halt
    db $10
    add [hl]
    nop
    db $10
    adc b
    nop
    jp hl


    sub [hl]
    ld e, $20
    jr jr_004_59f2

    nop
    jr nc, jr_004_59ef

    nop
    push hl
    ld e, b
    ld e, d
    ld l, a
    ld e, d
    jr nc, jr_004_5aeb

    nop
    jr nc, jr_004_5aea

    nop
    stop
    nop
    pop hl
    reti


    ld e, c
    push hl
    ld c, c
    ld e, d
    add b
    ld e, d
    db $10
    ld a, b
    db $76
    db $10
    db $76
    ld [hl], l
    db $10
    add [hl]
    add l
    db $10
    adc b
    add [hl]
    jp hl


    sub [hl]
    ld e, $20
    jr jr_004_5a1e

    adc d
    jr nc, jr_004_5a1b

    add l
    push hl
    ld e, b
    ld e, d
    sbc e
    ld e, d
    jr nc, jr_004_5b17

    ld a, b
    jr nc, jr_004_5b16

    ld [hl], l
    stop
    nop
    pop hl
    reti


    ld e, c
    push hl
    ld c, c
    ld e, d
    xor h
    ld e, d
    db $10
    ld a, b
    add [hl]
    db $10
    db $76
    add l
    db $10
    add [hl]
    ld [hl], l
    db $10
    adc b
    db $76
    jp hl


    sub [hl]
    ld e, $20
    jr jr_004_5a4a

    ld a, d
    jr nc, jr_004_5a47

    ld [hl], l
    push hl
    ld e, b
    ld e, d
    rst $00
    ld e, d
    jr nc, jr_004_5b43

    adc b
    jr nc, jr_004_5b42

    add l
    stop
    nop
    pop hl
    reti


    ld e, c
    nop
    ld de, $0011
    pop hl
    ld de, $8a00
    adc b
    nop
    adc d
    ld a, b
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

jr_004_5aea:
    rst $38

jr_004_5aeb:
    db $fd
    nop
    ld sp, hl
    and b
    pop de
    rst $08
    nop
    db $f4
    rst $18

jr_004_5af4:
    db $d3
    nop
    db $f4
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

jr_004_5b16:
    rst $18

jr_004_5b17:
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
    ld d, c

jr_004_5b32:
    ld e, e
    ld d, c
    ld e, e
    ld d, c
    ld e, e

jr_004_5b37:
    ld d, c
    ld e, e
    ld d, c

jr_004_5b3a:
    ld e, e
    ld d, c
    ld e, e

jr_004_5b3d:
    ld d, c
    ld e, e
    ld d, c

jr_004_5b40:
    ld e, e

jr_004_5b41:
    ld d, [hl]

jr_004_5b42:
    ld e, e

jr_004_5b43:
    ld d, c
    ld e, e
    ld d, c
    ld e, e
    ld d, c
    ld e, e
    ld d, c
    ld e, e
    ld d, c
    ld e, e
    ld d, c
    ld e, e
    ld d, c
    ld e, e
    inc c
    nop
    nop
    ld [c], a
    sub $e8
    ld hl, $6a31
    ld [hl], $ee
    or c
    ld b, c
    ld hl, $0059
    nop
    nop
    jr z, jr_004_5aeb

    adc d

jr_004_5b66:
    db $e3
    ld [hl], l
    ld e, e
    nop
    add [hl]
    adc d
    jr z, jr_004_5af4

    ld a, d
    db $e3
    ld [hl], l
    ld e, e
    nop
    add [hl]
    ld a, d
    push hl
    or $5a
    ld a, d
    ld e, e
    ld a, [bc]
    nop
    nop
    db $fc
    jr nz, jr_004_5bd2

    db $76
    ld d, [hl]
    ret


    inc [hl]
    db $fc
    jr nz, jr_004_5bd9

    ld [$c943], sp
    inc [hl]
    db $fc
    jr nz, jr_004_5be0

    ld [hl], e
    ld d, [hl]
    ret


    inc [hl]
    db $e4
    add sp, -$24
    jr nc, jr_004_5b37

    ld e, e
    and l
    ld e, e
    ld bc, $0000
    pop hl
    sub e
    ld e, e
    push hl
    or $5a
    push af
    ld b, d
    push hl
    rst $38
    ld e, d
    ld hl, sp+$42
    jr nz, jr_004_5b32

    ld a, b
    jr nz, jr_004_5b37

    ld a, c
    jr nz, jr_004_5b3a

    db $76
    jr nz, jr_004_5b3d

    add [hl]
    jr nz, jr_004_5b40

    adc c
    jr nz, jr_004_5b41

    adc b
    pop hl
    xor d
    ld e, e
    jr nz, jr_004_5c37

    ld a, b
    jr nz, jr_004_5c3c

    ld a, c
    jr nz, jr_004_5c3f

    db $76
    jr nz, jr_004_5c42

    add [hl]
    jr nz, jr_004_5c45

    adc c
    jr nz, jr_004_5c46

    adc b
    pop hl

jr_004_5bd2:
    cp a
    ld e, e
    jr nz, @-$74

    nop
    jr nz, jr_004_5bd9

jr_004_5bd9:
    ld a, d
    jr nz, jr_004_5b66

    nop
    jr nz, jr_004_5bdf

jr_004_5bdf:
    adc d

jr_004_5be0:
    pop hl
    call nc, $e65b
    ld a, [bc]
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
    rst $28
    ld e, e
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
    ei
    ld e, e
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
    ld [de], a
    add [hl]
    nop
    ld [de], a
    halt

jr_004_5c37:
    inc d
    nop
    nop
    stop

jr_004_5c3c:
    adc c
    ld a, [bc]
    nop

jr_004_5c3f:
    add a
    ld b, $00

jr_004_5c42:
    add [hl]
    ld b, $00

jr_004_5c45:
    db $76

jr_004_5c46:
    ld a, [bc]
    nop
    ld [hl], a
    stop
    ld a, c
    inc d
    nop
    nop
    pop hl
    dec h
    ld e, h
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

jr_004_5c6f:
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
    ld d, d
    ld e, h
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
    jr nc, jr_004_5c6f

    ld e, h
    adc $5c
    ld [$8a85], sp
    ld [$8886], sp
    ld [$8787], sp
    ld [$7787], sp
    ld [$7886], sp
    ld [$7a85], sp
    pop hl
    cp c
    ld e, h
    ld [$8875], sp
    ld [$8676], sp
    ld [$8777], sp
    ld [$7777], sp
    ld [$7676], sp
    ld [$7875], sp
    pop hl
    adc $5c
    and $02
    db $e3
    ld c, $5d
    db $e3
    ld c, $5d
    db $e3
    ld c, $5d
    db $e3
    ld b, h
    ld e, l
    db $e3
    ld b, h
    ld e, l
    db $e3
    ld b, h
    ld e, l
    rst $20
    push hl
    call c, $fd5b
    ld e, h
    and $08

jr_004_5cff:
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
    db $e3
    ld e, h
    add sp, $5c
    ld c, c
    db $eb
    cp l
    db $d3
    inc h
    ld e, l
    jr z, jr_004_5d75

    inc l
    ld e, l
    jr nc, jr_004_5d79

    inc [hl]
    ld e, l
    jr c, @+$5f

    inc a
    ld e, l
    ld b, b
    ld e, l
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
    add sp, $5c
    ld c, c
    db $eb
    cp l
    db $d3
    ld e, d
    ld e, l
    ld e, [hl]
    ld e, l
    ld h, d
    ld e, l
    ld h, [hl]
    ld e, l
    ld l, d
    ld e, l
    ld l, [hl]
    ld e, l
    ld [hl], d
    ld e, l
    db $76
    ld e, l
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

jr_004_5d75:
    db $e4
    ld a, [bc]
    add [hl]
    add [hl]

jr_004_5d79:
    db $e4
    add sp, -$4e
    jr nc, jr_004_5cff

    ld e, l
    sbc l
    ld e, l
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
    ret


    ld e, l
    db $e3
    cp c
    ld e, l
    db $fc
    db $ed
    ld e, l
    ld [$8540], sp
    ld [hl], $e5
    ld [bc], a
    ld e, [hl]
    ld [$ee40], sp
    jp nz, $c940

    ld e, l
    db $e3
    cp c
    ld e, l
    db $fc
    db $ed
    ld e, l
    ld [$8540], sp
    ld [hl], $e5
    inc d
    ld e, [hl]
    ld [$ee40], sp
    jp nz, $db40

    ld e, l
    db $e3
    cp c
    ld e, l
    db $fc
    db $ed

jr_004_5e07:
    ld e, l
    ld [$8540], sp
    ld [hl], $e5
    ld h, $5e
    ld [$ee40], sp
    jp nz, $db40

    ld e, l

jr_004_5e16:
    db $e3
    cp c
    ld e, l
    db $fc
    db $ed
    ld e, l
    ld [$8540], sp
    ld [hl], $e5
    jr c, jr_004_5e81

    ld [$e840], sp
    or d
    jr nc, jr_004_5e55

    ld e, [hl]
    ld b, e
    ld e, [hl]
    pop af
    nop
    ldh a, [$08]
    db $76
    adc b
    ld [$8975], sp
    add sp, $21
    ld sp, $3685
    ld [$8975], sp
    db $10
    ld [hl], l
    adc c
    nop
    ld [hl], l
    adc d
    pop af
    nop
    ldh a, [$08]
    add [hl]
    adc b
    ld [$8985], sp
    add sp, $21
    ld sp, $3685
    ld [$8985], sp
    db $10

jr_004_5e55:
    add l
    adc c
    nop
    add l
    adc d
    stop
    nop
    stop
    ld [hl], l
    stop
    db $76
    stop
    ld [hl], a
    and $03
    db $fc
    dec h
    ld e, h
    ld l, d
    ld d, [hl]
    ret


    inc [hl]
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
    ld e, d
    ld e, [hl]
    jr z, jr_004_5e07

jr_004_5e81:
    ld a, c
    ld e, $77
    nop
    jr z, @-$77

    adc c
    jr z, @-$77

    ld a, c
    ld e, $77
    nop
    jr z, jr_004_5e16

    adc c
    jr z, jr_004_5f09

    ld a, c
    ld e, $87
    nop
    jr z, @+$79

    adc c
    jr z, @+$79

    ld a, c
    ld e, $87
    nop
    jr z, jr_004_5f18

    adc c
    pop hl
    ld a, a
    ld e, [hl]
    ld [$7788], sp
    ld [$7887], sp
    ld [$7986], sp
    ld [$7a85], sp
    ld [$7a75], sp
    ld [$7976], sp
    ld [$7877], sp
    ld [$7778], sp
    ld [$8778], sp
    ld [$8877], sp
    ld [$8976], sp
    ld [$8a75], sp
    ld [$8a85], sp
    ld [$8986], sp
    ld [$8887], sp
    ld [$8788], sp
    pop hl
    and [hl]
    ld e, [hl]
    ld [$7778], sp
    ld [$7877], sp
    ld [$7976], sp
    ld [$7a75], sp
    ld [$7a85], sp
    ld [$7986], sp
    ld [$7887], sp
    ld [$7788], sp
    ld [$8788], sp
    ld [$8887], sp
    ld [$8986], sp
    ld [$8a85], sp
    ld [$8a75], sp
    ld [$8976], sp
    ld [$8877], sp
    ld [$8778], sp

jr_004_5f09:
    pop hl
    reti


    ld e, [hl]
    ld [$8788], sp
    ld [$858b], sp
    ld [$758a], sp
    ld [$7687], sp

jr_004_5f18:
    ld b, $82
    ld [hl], d
    ld b, $72
    ld [hl], d
    ld [$7677], sp
    ld [$757a], sp
    ld [$857b], sp
    ld [$8778], sp
    ldh [rNR12], a
    adc b
    add a
    ld [de], a
    adc e
    add l
    ld [de], a
    adc d
    ld [hl], l
    ld [de], a
    add a
    db $76
    ld [$7282], sp
    ld [$7272], sp
    ld [de], a
    ld [hl], a
    db $76
    ld [de], a
    ld a, d
    ld [hl], l
    ld [de], a
    ld a, e
    add l
    ld [de], a
    ld a, b
    add [hl]
    ldh [$08], a
    ld a, b
    add a
    ld [$857b], sp
    ld [$757a], sp
    ld [$7677], sp
    ld b, $72
    ld [hl], d
    ld b, $82
    ld [hl], d
    ld [$7687], sp
    ld [$758a], sp
    ld [$858b], sp
    ld [$8788], sp
    ldh [$fc], a
    ld [hl], a
    ld e, a
    ld [$2140], sp
    inc [hl]
    ld bc, $0000
    db $ec
    ld a, [bc]
    db $fc
    ld [hl], h
    ld e, a
    ld a, a
    ld e, a
    ld hl, $e134
    ld [hl], b
    ld e, a
    jr nc, jr_004_5f81

jr_004_5f81:
    ld a, d
    ldh [$fb], a
    inc bc
    adc l
    ld e, a
    sub b
    ld e, a
    sub e
    ld e, a
    sub [hl]
    ld e, a
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
    xor h
    ld e, a
    ei
    inc bc
    cp d
    ld e, a
    cp l
    ld e, a
    ret nz

    ld e, a
    jp $e05f


    add sp, -$2a
    ld c, d
    rst $30
    sub d
    rst $38
    ld b, b
    cp c
    ld e, a
    pop hl
    ld d, l
    ld d, [hl]
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
    jr z, jr_004_5fc8

jr_004_5fc8:
    nop
    and $02
    ld [$827c], sp
    ld [$837a], sp
    ld [$8579], sp
    ld [$8678], sp
    ld [$8677], sp
    ld [$8687], sp
    ld [$8688], sp
    ld [$8589], sp
    ld [$838a], sp
    ld [$828c], sp
    pop af
    nop
    ld c, $08
    adc e
    ld [hl], d
    ld [$738a], sp
    ld [$7589], sp
    ld [$7688], sp
    ld [$7687], sp
    ld [$7677], sp
    ld [$7678], sp
    ld [$7579], sp
    ld [$737a], sp
    ld [$727b], sp
    rst $20
    ld e, $7b
    add h
    ldh [$e3], a
    adc h
    ld h, b
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
    jr nz, jr_004_6026

jr_004_6026:
    nop
    db $e3
    adc h
    ld h, b
    ld a, [bc]
    ld [hl], l
    add [hl]
    ld [$8576], sp
    ld [$8475], sp
    ld a, [bc]
    ld [hl], h
    add h
    ld a, [bc]
    ld [hl], l
    ld [hl], h
    ld [$7476], sp
    ld [$7575], sp
    ld a, [bc]
    ld [hl], h
    db $76
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
    sbc h
    ld h, b
    jr nz, jr_004_60c8

jr_004_60c8:
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
    jr nz, jr_004_60ec

jr_004_60ec:
    nop
    and $05
    ld [$8688], sp
    ld [$0088], sp
    ld [$0088], sp
    ld [$7688], sp
    rst $20
    jr nz, jr_004_60fe

jr_004_60fe:
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
    ld hl, $e361
    sub l
    ld h, c
    ld [$7800], sp
    ld [$7900], sp
    ld [$7a00], sp
    ld [$7b00], sp
    ld b, $00
    ld a, h
    push hl
    ld [hl], $63
    ld [$e340], sp
    sub l
    ld h, c
    ld [$7800], sp
    ld [$7900], sp
    ld [$7a00], sp
    dec bc
    nop
    ld a, e
    push hl
    ld [hl], $63
    ld [$e340], sp
    sub l
    ld h, c
    ld [$7800], sp
    ld [$7900], sp
    ld [$7a00], sp
    ld [$7b00], sp
    add hl, bc
    nop
    ld a, h
    push hl
    ld [hl], $63
    ld [$e340], sp
    sub l
    ld h, c
    ld [$7800], sp
    ld [$7900], sp
    ld [$7a00], sp
    ld [$7b00], sp
    ld b, $00
    ld a, h
    push hl
    ld [hl], $63
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
    ld [hl], $63
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
    call Call_004_6963
    ld h, d
    dec h
    inc [hl]
    db $ec
    rlca
    ld [c], a
    or $fe
    rrca
    sbc l
    ld h, d
    and c
    ld h, d
    and l
    ld h, d
    xor c
    ld h, d
    xor l
    ld h, d
    or c
    ld h, d
    or l
    ld h, d
    cp c
    ld h, d
    cp l
    ld h, d
    pop bc
    ld h, d
    push bc
    ld h, d
    ret


    ld h, d
    call $d162
    ld h, d
    push de
    ld h, d
    reti


    ld h, d
    ei
    rlca
    db $dd
    ld h, d
    ld a, [c]
    ld h, d
    rlca
    ld h, e
    inc e
    ld h, e
    ld l, $63
    db $dd
    ld h, d
    ld a, [c]
    ld h, d
    rlca
    ld h, e
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
    jr nc, jr_004_634e

jr_004_634e:
    nop
    ld [hl], b
    ld [hl], h
    db $76
    inc d
    ld [hl], e
    ld [hl], l
    push hl
    or $49
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
    or [hl]
    ld h, e
    cp c
    ld h, e
    cp h
    ld h, e
    cp a
    ld h, e
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
    jr nc, jr_004_643c

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
    jr nz, jr_004_63e6

jr_004_63e6:
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
    dec e
    ld h, h
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
    pop af
    ld c, b
    dec hl
    ld h, h
    dec h
    inc [hl]
    ld b, $00
    nop
    rst $20
    ldh [$fe], a
    rrca
    ld d, c
    ld h, h
    ld d, l
    ld h, h
    ld e, c
    ld h, h
    ld e, l
    ld h, h
    ld h, c
    ld h, h
    ld h, l
    ld h, h
    ld l, c
    ld h, h
    ld l, l

jr_004_643c:
    ld h, h
    ld [hl], c
    ld h, h
    ld [hl], l
    ld h, h
    ld a, c
    ld h, h
    ld a, l
    ld h, h
    add c
    ld h, h
    add l
    ld h, h
    adc c
    ld h, h
    adc l
    ld h, h
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
    db $dd
    ld h, h
    ld a, b
    nop
    nop
    pop hl
    jp hl


    ld h, h
    ld a, b
    nop
    nop
    pop hl
    push af
    ld h, h
    ld a, b
    nop
    nop
    pop hl
    ld bc, $7865
    nop
    nop
    pop hl
    dec c
    ld h, l
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
    db $dd
    ld h, h
    jr nc, @+$72

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
    and $65
    ld c, a
    ld h, [hl]
    dec h
    inc [hl]
    add hl, de
    nop
    nop
    db $fc
    xor [hl]
    ld h, l
    ld c, a
    ld h, [hl]
    dec h
    inc [hl]
    add hl, de
    nop
    nop
    db $fc
    cp h
    ld h, l
    ld c, a
    ld h, [hl]
    dec h
    inc [hl]
    add hl, de
    nop
    nop
    db $fc
    jp z, Jump_004_4f65

    ld h, [hl]
    dec h
    inc [hl]
    ldh [$e6], a
    ld [bc], a
    db $fc
    db $f4
    ld h, l
    ld e, h
    ld h, [hl]
    dec h
    inc [hl]
    inc d
    nop
    nop
    db $fc
    ld [bc], a
    ld h, [hl]
    ld e, h
    ld h, [hl]
    dec h
    inc [hl]
    inc d
    nop
    nop
    rst $20
    db $fc
    db $f4
    ld h, l
    ld e, h
    ld h, [hl]
    dec h
    inc [hl]
    ldh [$fc], a
    xor e
    ld h, l
    adc c
    ld h, [hl]
    dec h
    inc [hl]
    inc d
    nop
    nop
    db $fc
    xor e
    ld h, l
    adc c
    ld h, [hl]
    dec h
    inc [hl]
    inc d
    nop
    nop
    db $fc
    xor e
    ld h, l
    adc c
    ld h, [hl]
    dec h
    inc [hl]
    inc d
    nop
    nop
    db $fc
    xor e
    ld h, l
    adc c
    ld h, [hl]
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
    xor e
    ld h, l
    adc c
    ld h, [hl]
    dec h
    inc [hl]
    jr z, jr_004_6641

jr_004_6641:
    ld a, b
    rst $20
    db $fc
    xor e
    ld h, l
    adc c
    ld h, [hl]
    dec h
    inc [hl]
    ld d, b
    nop
    nop
    ld [c], a
    push af
    cp $03
    ld l, c
    ld h, [hl]
    ld l, l
    ld h, [hl]
    ld [hl], c
    ld h, [hl]
    ld [hl], l
    ld h, [hl]
    pop hl
    or a
    ld h, [hl]
    cp $03
    ld a, c
    ld h, [hl]
    ld a, l
    ld h, [hl]
    add c
    ld h, [hl]
    add l
    ld h, [hl]
    pop hl
    and c
    ld h, [hl]
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
    ld bc, $668f
    sub d
    ld h, [hl]
    nop
    ld [hl], e
    ld a, c
    nop
    ld [hl], h
    ld a, c
    ei
    ld bc, $669b
    sbc [hl]
    ld h, [hl]
    nop
    ld [hl], e
    ld [hl], a
    nop
    ld [hl], h
    ld [hl], a
    ei
    inc bc
    xor e
    ld h, [hl]
    xor [hl]
    ld h, [hl]
    or c
    ld h, [hl]
    or h
    ld h, [hl]
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
    pop bc
    ld h, [hl]
    call nz, $c766
    ld h, [hl]
    jp z, $0066

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
    jr nz, jr_004_66cf

jr_004_66cf:
    ld [hl], d
    sub b
    nop
    ld [hl], e
    jr nz, jr_004_66d5

jr_004_66d5:
    ld [hl], d
    sub b
    nop
    nop
    jr nz, jr_004_66db

jr_004_66db:
    add d
    sub b
    nop
    add e
    jr nz, jr_004_66e1

jr_004_66e1:
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

jr_004_66ed:
    jr nc, jr_004_675f

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
    jr c, jr_004_6771

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

jr_004_675f:
    nop
    ld [$7c7c], sp
    ld h, b
    ld [hl], b
    ld [hl], b
    jr nc, jr_004_66ed

    ld a, b
    ld [$8685], sp
    nop
    nop
    nop
    ld d, b
    nop

jr_004_6771:
    nop
    ld [$7c8c], sp
    ld h, b
    ld [hl], b
    ld [hl], b
    jr nc, jr_004_67ef

    ld a, b
    ld [$8675], sp
    nop
    nop
    nop
    and $03
    db $fc
    xor e
    ld h, l
    sub l
    ld h, [hl]
    dec h
    inc [hl]
    jr z, jr_004_678c

jr_004_678c:
    nop
    rst $20
    db $fc
    xor e
    ld h, l
    sub l
    ld h, [hl]
    dec h
    inc [hl]
    jr jr_004_6797

jr_004_6797:
    nop
    stop
    ld [hl], h
    db $fc
    xor e
    ld h, l
    sub l
    ld h, [hl]
    dec h
    inc [hl]
    jr nz, jr_004_67a4

jr_004_67a4:
    ld [hl], h
    ld [$7670], sp
    db $fc
    xor e
    ld h, l
    sub l
    ld h, [hl]
    dec h
    inc [hl]
    ld a, [bc]
    ld [hl], b
    ld a, b
    ld e, $00
    nop
    db $fc
    xor e
    ld h, l
    sub l
    ld h, [hl]
    dec h
    inc [hl]
    jr z, jr_004_67be

jr_004_67be:
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
    pop bc
    ld h, a
    inc l
    ld [hl], b
    ld a, d
    jr nz, jr_004_684e

    ld [hl], b
    ld d, b
    ld [hl], b
    ld [hl], b
    jr nz, jr_004_6854

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

jr_004_67ef:
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
    ld l, c
    ld h, a
    nop
    nop
    nop
    ld [$d3ce], a
    ld bc, $6857
    ld [$d3cf], a
    ld bc, $683d
    pop hl
    ld [de], a
    ld l, b
    ld [$d3ce], a
    ld bc, $6857
    ld [$d3cf], a
    nop
    ld c, d

jr_004_6834:
    ld l, b
    xor $d3
    ld b, c
    ld l, [hl]
    ld h, a
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
    dec [hl]
    ld l, b
    jp hl


    sub [hl]
    ld e, $1a

jr_004_684e:
    dec b
    nop
    adc e
    inc bc
    nop
    adc b

jr_004_6854:
    pop hl
    ld [de], a
    ld l, b
    ld [$d3cf], a
    ld bc, $68b3
    push hl
    db $10
    ld l, b
    ld h, d
    ld l, b
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

jr_004_687f:
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
    jr z, jr_004_6921

    ld [hl], l
    jr z, jr_004_6834

    add l
    rst $20
    ldh [$e5], a
    dec hl
    ld l, b
    cp b
    ld l, b
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
    inc [hl]
    ld l, b
    rst $20
    ld l, b
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
    jr z, jr_004_696c

    ld [hl], h
    jr z, jr_004_687f

    add h
    ld [c], a
    ld sp, hl
    db $f4
    jp $03d3


    db $f4
    pop bc
    db $d3
    ld bc, $95fc
    ld d, c
    ld [$2140], sp
    inc [hl]
    push hl
    ld h, e
    ld l, b
    ld [de], a
    ld l, c
    ld h, h
    nop
    nop
    inc d
    nop
    ld a, b
    ld [$7600], sp
    ld [$0000], sp
    ld [$8684], sp

jr_004_6921:
    add sp, $21
    ld sp, $35e0
    push hl
    ld b, [hl]
    ld l, b
    dec hl
    ld l, c
    db $e3
    ld [hl], c
    ld l, d
    db $e3
    db $f4
    ld l, c
    db $e3
    ret


    ld l, c
    db $e3
    add hl, sp
    ld l, c
    ld [c], a
    di
    push hl
    ld b, [hl]
    ld l, b
    ld a, $69
    inc bc
    ld a, c
    ld [hl], l
    inc bc
    ld a, b
    db $76
    inc bc
    ld [hl], a
    db $76
    inc bc
    db $76
    ld [hl], a
    inc bc
    ld [hl], l
    ld [hl], a
    inc bc
    ld [hl], h
    ld a, b
    inc bc
    add h
    ld a, b
    inc bc
    add l
    ld a, c
    inc bc
    add [hl]
    ld a, c
    inc bc
    add a
    ld a, c
    inc bc
    adc b
    ld a, c
    ld b, $89
    ld a, c
    inc bc

Call_004_6963:
    adc b
    ld a, c
    inc bc
    add a
    ld a, c
    inc bc
    add [hl]
    ld a, c
    inc bc

jr_004_696c:
    add l
    ld a, c
    inc bc
    add h
    ld a, b
    inc bc
    ld [hl], h
    ld a, b
    inc bc
    ld [hl], l
    ld [hl], a
    inc bc
    db $76
    ld [hl], a
    inc bc
    ld [hl], a
    db $76
    inc bc
    ld a, b
    db $76
    inc bc
    ld a, c
    ld [hl], l
    inc bc
    ld a, c
    add l
    inc bc
    ld a, b
    add [hl]
    inc bc
    ld [hl], a
    add [hl]
    inc bc
    db $76
    add a
    inc bc
    ld [hl], l
    add a
    inc bc
    ld [hl], h
    adc b
    inc bc
    add h
    adc b
    inc bc
    add l
    adc c
    inc bc
    add [hl]
    adc c
    inc bc
    add a
    adc c
    inc bc
    adc b
    adc c
    ld b, $89
    adc c
    inc bc
    adc b
    adc c
    inc bc
    add a
    adc c
    inc bc
    add [hl]
    adc c
    inc bc
    add l
    adc c
    inc bc
    add h
    adc b
    inc bc
    ld [hl], h
    adc b
    inc bc
    ld [hl], l
    add a
    inc bc
    db $76
    add a
    inc bc
    ld [hl], a
    add [hl]
    inc bc
    ld a, b
    add [hl]

jr_004_69c5:
    inc bc
    ld a, c
    add l
    db $e4
    push hl
    ld d, h
    ld l, b
    adc $69
    jr z, jr_004_69d0

jr_004_69d0:
    nop
    push hl
    ld b, [hl]
    ld l, b
    sub $69
    pop hl
    reti


    ld l, c
    jp hl


    sub [hl]
    ld e, $1e
    add sp, -$4e
    jr nc, jr_004_69c5

    ld l, c
    db $ec
    ld l, c
    db $fc
    ret


    ld l, c
    call nc, $8342
    inc [hl]
    db $e4
    db $fc
    cp $69
    rst $10
    ld b, d
    add e
    inc [hl]
    db $e4
    push hl
    ld d, h
    ld l, b
    ld sp, hl
    ld l, c
    inc bc
    add l
    ld a, b
    inc bc
    add [hl]
    ld a, b
    inc bc
    add a
    ld a, b
    ld b, $87
    ld a, c
    inc bc
    adc b
    ld a, c
    inc c
    adc b
    ld a, d
    inc c
    adc c
    ld a, d
    ld b, $89
    ld a, c
    ld b, $8a
    ld a, b
    ld b, $8a
    nop
    ld [$888a], sp
    ld [$8989], sp
    ld b, $89
    adc d
    ld b, $88
    adc d
    ld b, $86
    adc d
    ld b, $76
    adc d
    inc bc
    db $76
    adc d
    inc bc
    ld a, b
    adc d
    add hl, bc
    ld a, b
    adc b
    db $10
    ld a, b
    nop
    ld [$7578], sp
    inc bc
    ld a, b
    ld [hl], a
    ld b, $79
    ld a, b
    jr jr_004_6ab9

    ld a, d
    ld b, $79
    ld a, c
    ld b, $78
    ld a, c
    ld b, $79
    nop
    ld b, $78
    add l
    ld b, $78
    add a
    ld b, $77
    adc c
    ld b, $76
    adc c
    ld b, $75
    adc d
    ld b, $00
    adc d
    ld b, $00
    adc c
    ld [$8884], sp
    ld [$8786], sp
    ld [$8585], sp
    rlca
    add l
    nop
    di
    ldh a, [$90]
    ld a, [hl-]
    ld a, [c]
    db $e4
    db $fc
    sub $49
    jr @+$6d

    ret


    inc [hl]
    inc bc
    nop
    nop
    db $fc
    sub $49
    reti


    ld l, d
    ret


    inc [hl]
    inc bc
    nop
    nop
    db $fc
    sub $49
    xor $6a
    ret


    inc [hl]
    inc bc
    nop
    nop
    db $fc
    sub $49
    inc bc
    ld l, e
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
    ld e, b
    ld c, c
    cp c
    ld l, d
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

jr_004_6ab9:
    di
    ldh a, [$58]
    ld l, b
    db $fc
    or $49
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
    ld bc, $95fc
    ld d, c
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
    jr jr_004_6b67

jr_004_6b67:
    add a
    ld [$8500], sp
    ld [$0000], sp
    add sp, $21
    ld sp, $35e9
    db $f4
    adc $d3
    nop
    db $e3
    ld d, a
    ld l, l
    ld a, [$ee4e]
    ld l, e
    pop hl
    adc a
    ld l, e
    ld a, [$8f4e]
    ld l, e
    pop hl
    call z, $fa6b
    ld c, [hl]
    call z, $e16b
    xor $6b
    db $e3
    rst $08
    ld l, l
    ld [$d3ce], a
    rst $38
    or d
    ld l, e
    db $f4
    adc $d3
    rst $38
    add sp, $5c
    ld c, c
    db $eb
    cp l
    db $d3
    pop bc
    ld l, h
    pop bc
    ld l, h
    pop bc
    ld l, h
    pop bc
    ld l, h
    ld sp, hl
    ld l, h
    ld sp, hl
    ld l, h
    pop bc
    ld l, h
    pop bc

jr_004_6bb1:
    ld l, h
    db $f4
    adc $d3
    nop
    add sp, $5c
    ld c, c
    db $eb
    cp l
    db $d3
    db $dd
    ld l, h
    db $dd
    ld l, h
    db $dd
    ld l, h
    jr z, jr_004_6c31

    jr z, @+$6f

    db $dd
    ld l, h
    db $dd
    ld l, h
    db $dd
    ld l, h
    db $e3
    rst $08
    ld l, l
    jp hl


    sub [hl]
    ld e, $1e
    add sp, -$4e
    jr nc, jr_004_6bb1

    ld l, e
    db $e4
    ld l, e
    db $fc
    ret


    ld l, c
    call nc, $8342
    inc [hl]
    pop hl
    ld a, d
    ld l, e
    db $fc
    cp $69
    rst $10
    ld b, d
    add e
    inc [hl]
    pop hl
    ld a, d
    ld l, e
    db $e3
    rst $08
    ld l, l
    push hl
    ld c, c
    ld l, c
    or $6b
    and $02
    db $fc
    ret nz

    ld c, c
    ld l, a
    ld l, l
    ret


    inc [hl]
    db $fc
    ret nz

    ld c, c
    sbc a
    ld l, l
    ret


    inc [hl]
    inc b
    nop
    nop
    rst $20
    and $02
    db $fc
    ret nz

    ld c, c
    ld [hl], l
    ld l, l
    ret


    inc [hl]
    db $fc
    ret nz

    ld c, c
    and l
    ld l, l
    ret


    inc [hl]
    inc b
    nop
    nop
    rst $20
    and $02
    db $fc
    ret nz

    ld c, c
    ld a, e
    ld l, l
    ret


    inc [hl]
    db $fc
    ret nz

    ld c, c
    xor e
    ld l, l
    ret


    inc [hl]
    inc b
    nop
    nop

jr_004_6c31:
    rst $20
    and $02
    db $fc
    ret nz

    ld c, c
    add c
    ld l, l
    ret


    inc [hl]
    db $fc
    ret nz

    ld c, c
    or c
    ld l, l
    ret


    inc [hl]
    inc b
    nop
    nop
    rst $20
    and $02
    db $fc
    ret nz

    ld c, c
    add a
    ld l, l
    ret


    inc [hl]
    db $fc
    ret nz

    ld c, c
    or a
    ld l, l
    ret


    inc [hl]
    inc b
    nop
    nop
    rst $20
    and $02
    db $fc
    ret nz

    ld c, c
    adc l
    ld l, l
    ret


    inc [hl]
    db $fc
    ret nz

    ld c, c
    cp l
    ld l, l
    ret


    inc [hl]
    inc b
    nop
    nop
    rst $20
    and $02
    db $fc
    ret nz

    ld c, c
    sub e
    ld l, l
    ret


    inc [hl]
    db $fc
    ret nz

    ld c, c
    jp $c96d


    inc [hl]
    inc b
    nop
    nop
    rst $20
    and $02
    db $fc
    ret nz

    ld c, c
    sbc c
    ld l, l
    ret


    inc [hl]
    db $fc
    ret nz

    ld c, c
    ret


    ld l, l
    ret


    inc [hl]
    inc b
    nop
    nop
    rst $20
    and $02
    db $fc
    ret nz

    ld c, c
    ld l, a
    ld l, l
    ret


    inc [hl]
    db $fc
    ret nz

    ld c, c
    sbc a
    ld l, l
    ret


    inc [hl]
    inc b
    nop
    nop
    rst $20
    and $02
    db $fc
    ret nz

    ld c, c
    ld [hl], l
    ld l, l
    ret


    inc [hl]
    db $fc
    ret nz

    ld c, c
    and l
    ld l, l
    ret


    inc [hl]
    inc b
    nop
    nop
    rst $20
    pop hl
    add c
    ld l, e
    push hl
    ld [hl], a
    ld l, c
    add $6c
    and $03
    ld [$8588], sp
    ld [$8988], sp
    ld [$7588], sp
    ld [$7988], sp
    rst $20
    push hl
    ld sp, hl
    ld l, b
    jp c, $e16c

    adc b
    ld l, e
    push hl
    ld a, a
    ld l, c
    ld [c], a
    ld l, h
    and $03
    ld [$8578], sp
    ld [$8978], sp
    ld [$7578], sp
    ld [$7978], sp
    rst $20
    push hl
    ld sp, hl
    ld l, b
    or $6c
    pop hl
    adc b
    ld l, e
    ld [$8a00], sp
    ld [$7a00], sp
    jp hl


    sub [hl]
    ld e, $20
    ld [$7b87], sp
    ld [$7a88], sp
    push hl
    ld [hl], a
    ld l, c
    ld c, $6d
    ld [$788a], sp
    ld b, $8b
    ld [hl], l
    ld b, $8b
    add l
    ld [$888a], sp
    push hl
    ld sp, hl
    ld l, b
    rra
    ld l, l
    ld [$8a88], sp
    ld [$8b87], sp
    pop hl
    adc b
    ld l, e
    ld [$8a00], sp
    ld [$7a00], sp
    jp hl


    sub [hl]
    ld e, $20
    ld [$7b77], sp
    ld [$7a78], sp
    push hl
    ld a, a
    ld l, c
    dec a
    ld l, l
    ld [$787a], sp
    ld b, $7b
    ld [hl], l
    ld b, $7b
    add l
    ld [$887a], sp
    push hl
    ld sp, hl
    ld l, b
    ld c, [hl]
    ld l, l
    ld [$8a78], sp
    ld [$8b77], sp
    pop hl
    adc b
    ld l, e
    push hl
    ld sp, hl
    ld l, b
    ld e, h
    ld l, l
    add hl, bc
    nop
    add h
    add hl, bc
    nop
    add l
    add hl, bc
    nop
    add h
    add hl, bc
    nop
    ld [hl], h
    add hl, bc
    nop
    ld [hl], l
    add hl, bc
    nop
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


jr_004_6d7c:
    db $10
    ldh a, [$e1]
    rst $00
    ld b, e
    pop af
    jr jr_004_6d7c

    pop hl
    bit 0, e
    pop af
    inc e
    nop
    pop hl
    rst $08
    ld b, e
    pop af
    jr jr_004_6d98

    pop hl
    db $d3
    ld b, e
    pop af
    db $10
    db $10
    pop hl
    rst $10

jr_004_6d98:
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
    ld h, b
    ld l, c
    call nc, $fb6d
    ld bc, $6dda
    ldh a, [$6d]
    and $02
    add hl, bc
    nop
    add h
    add hl, bc
    nop
    add l
    add hl, bc
    nop
    add h
    add hl, bc
    nop
    ld [hl], h
    add hl, bc
    nop
    ld [hl], l
    add hl, bc
    nop
    ld [hl], h
    rst $20
    db $e4
    add hl, bc
    nop
    add h
    add hl, bc
    nop
    add l
    add hl, bc
    nop
    ld [hl], l
    add hl, bc
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
    ld bc, $95fc
    ld d, c
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
    ld [hl-], a
    ld l, [hl]
    ld c, c
    ld l, [hl]
    ld h, b
    ld l, [hl]

jr_004_6e30:
    ld [hl], a
    ld l, [hl]
    ld [$d3ce], a
    rst $38
    jr z, jr_004_6ea6

    ldh a, [$a1]
    jr jr_004_6e30

    adc $d3
    rst $38
    db $e3
    pop af
    ld l, a
    db $f4
    adc $d3
    nop
    pop hl

jr_004_6e47:
    adc [hl]
    ld l, [hl]
    ld [$d3cf], a
    rst $38
    jr z, jr_004_6ebd

    ldh a, [$a1]
    jr c, jr_004_6e47

    rst $08
    db $d3
    rst $38
    db $e3
    pop af
    ld l, a
    db $f4
    rst $08
    db $d3
    nop
    pop hl
    adc [hl]
    ld l, [hl]
    ld [$d3d0], a
    rst $38
    jr z, jr_004_6ed4

    ldh a, [$a1]
    ld e, b
    db $f4
    ret nc

    db $d3
    rst $38
    db $e3
    pop af
    ld l, a
    db $f4
    ret nc

    db $d3
    nop
    pop hl
    adc [hl]
    ld l, [hl]
    ld [$d3d1], a
    rst $38
    jr z, jr_004_6eeb

    ldh a, [$a1]
    ld a, b
    db $f4
    pop de
    db $d3
    rst $38
    db $e3
    pop af
    ld l, a
    db $f4
    pop de
    db $d3
    nop
    pop hl
    adc [hl]
    ld l, [hl]
    ei
    inc bc
    sbc b
    ld l, [hl]
    xor a
    ld l, [hl]
    add $6e

jr_004_6e96:
    db $dd
    ld l, [hl]
    ld [$d3ce], a
    rst $38
    adc [hl]
    ld l, [hl]
    ldh a, [rNR10]
    jr jr_004_6e96

    adc $d3
    rst $38
    db $e3

jr_004_6ea6:
    rla
    ld [hl], b
    db $f4
    adc $d3
    nop
    pop hl

jr_004_6ead:
    jr z, jr_004_6f1d

    ld [$d3cf], a
    rst $38
    adc [hl]
    ld l, [hl]
    ldh a, [rNR10]
    jr c, jr_004_6ead

    rst $08
    db $d3
    rst $38
    db $e3

jr_004_6ebd:
    rla
    ld [hl], b
    db $f4
    rst $08
    db $d3
    nop
    pop hl
    jr z, jr_004_6f34

    ld [$d3d0], a
    rst $38
    adc [hl]
    ld l, [hl]
    ldh a, [rNR10]
    ld e, b
    db $f4
    ret nc

    db $d3
    rst $38
    db $e3

jr_004_6ed4:
    rla
    ld [hl], b
    db $f4
    ret nc

    db $d3
    nop
    pop hl
    jr z, jr_004_6f4b

    ld [$d3d1], a
    rst $38
    adc [hl]
    ld l, [hl]
    ldh a, [rNR10]
    ld a, b
    db $f4
    pop de
    db $d3
    rst $38
    db $e3

jr_004_6eeb:
    rla
    ld [hl], b
    db $f4
    pop de
    db $d3
    nop
    pop hl
    jr z, jr_004_6f62

    ei
    inc bc
    cp $6e
    dec d
    ld l, a
    inc l
    ld l, a

jr_004_6efc:
    ld b, e
    ld l, a
    ld [$d3ce], a
    rst $38
    db $f4
    ld l, [hl]
    ldh a, [$a1]
    jr jr_004_6efc

    adc $d3
    rst $38
    db $e3
    db $ec
    ld l, a
    db $f4
    adc $d3
    nop
    pop hl

jr_004_6f13:
    ld e, d
    ld l, a
    ld [$d3cf], a
    rst $38
    db $f4
    ld l, [hl]
    ldh a, [$a1]

jr_004_6f1d:
    jr c, jr_004_6f13

    rst $08
    db $d3
    rst $38
    db $e3
    db $ec
    ld l, a
    db $f4
    rst $08
    db $d3
    nop
    pop hl
    ld e, d
    ld l, a
    ld [$d3d0], a
    rst $38
    db $f4
    ld l, [hl]
    ldh a, [$a1]

jr_004_6f34:
    ld e, b
    db $f4
    ret nc

    db $d3
    rst $38
    db $e3
    db $ec
    ld l, a
    db $f4
    ret nc

    db $d3
    nop
    pop hl
    ld e, d
    ld l, a
    ld [$d3d1], a
    rst $38
    db $f4
    ld l, [hl]
    ldh a, [$a1]

jr_004_6f4b:
    ld a, b
    db $f4
    pop de
    db $d3
    rst $38
    db $e3
    db $ec
    ld l, a
    db $f4
    pop de
    db $d3
    nop
    pop hl
    ld e, d
    ld l, a
    ei
    inc bc
    ld h, h
    ld l, a
    ld a, e
    ld l, a
    sub d
    ld l, a

jr_004_6f62:
    xor c
    ld l, a
    ld [$d3ce], a
    rst $38
    ld e, d
    ld l, a
    ldh a, [rNR10]
    jr jr_004_6f62

    adc $d3
    rst $38
    db $e3
    ld [de], a
    ld [hl], b
    db $f4
    adc $d3
    nop
    pop hl

jr_004_6f79:
    db $f4
    ld l, [hl]
    ld [$d3cf], a
    rst $38
    ld e, d
    ld l, a
    ldh a, [rNR10]
    jr c, jr_004_6f79

    rst $08
    db $d3
    rst $38
    db $e3
    ld [de], a
    ld [hl], b
    db $f4
    rst $08
    db $d3
    nop
    pop hl
    db $f4
    ld l, [hl]
    ld [$d3d0], a
    rst $38
    ld e, d
    ld l, a
    ldh a, [rNR10]
    ld e, b
    db $f4
    ret nc

    db $d3
    rst $38
    db $e3
    ld [de], a
    ld [hl], b
    db $f4
    ret nc

    db $d3
    nop
    pop hl
    db $f4
    ld l, [hl]
    ld [$d3d1], a
    rst $38
    ld e, d
    ld l, a
    ldh a, [rNR10]
    ld a, b
    db $f4
    pop de
    db $d3
    rst $38
    db $e3
    ld [de], a
    ld [hl], b
    db $f4
    pop de
    db $d3
    nop
    pop hl
    db $f4
    ld l, [hl]
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
    add a
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
    ld [hl], a
    nop
    ldh [$e5], a
    ret


    ld l, d
    or $6f
    push hl
    ld [hl], $6a
    or $6f
    add sp, -$5a
    ld c, e
    inc hl
    nop
    nop
    ld d, b
    add a
    nop
    ld e, b
    add a
    nop
    ld b, $8a
    nop
    ld b, $88
    nop
    ld b, $85
    nop
    add sp, -$53
    ld c, e
    jr nz, jr_004_7010

jr_004_7010:
    nop
    db $e4
    push hl
    sbc b
    ld l, d
    inc e
    ld [hl], b
    push hl
    ld h, a
    ld l, d
    inc e
    ld [hl], b
    add sp, -$5a
    ld c, e
    inc hl
    nop
    nop
    ld d, b
    ld [hl], a
    nop
    ld e, b
    ld [hl], a
    nop
    ld b, $7a
    nop
    ld b, $78
    nop
    ld b, $75
    nop
    add sp, -$53
    ld c, e
    jr nz, jr_004_7036

jr_004_7036:
    nop
    db $e4
    db $f4
    jp $03d3


jr_004_703c:
    db $f4
    pop bc
    db $d3
    ld bc, $95fc
    ld d, c
    ld [$2140], sp
    inc [hl]
    ei
    inc bc
    ld d, c
    ld [hl], b
    ld d, a
    ld [hl], b
    ld e, l
    ld [hl], b
    ld h, e
    ld [hl], b
    ldh a, [$a3]
    jr jr_004_7036

    xor c
    ld [hl], b
    ldh a, [$a3]
    jr c, jr_004_703c

    adc c
    ld [hl], b
    ldh a, [$a3]
    ld e, b
    pop hl
    ld l, c
    ld [hl], b
    ldh a, [$a3]
    ld a, b
    pop hl
    ld l, c
    ld [hl], b
    add sp, -$5a
    ld c, e

jr_004_706c:
    push hl
    ld bc, $716b
    ld [hl], b
    ld d, b
    adc b
    nop
    inc b
    add [hl]
    nop
    inc e
    nop
    nop
    ld d, b
    ld a, b
    nop
    ld [$0000], sp
    add sp, -$53
    ld c, e
    jr nz, jr_004_7085

jr_004_7085:
    nop
    pop hl
    ld b, a
    ld [hl], b
    add sp, -$5a
    ld c, e
    push hl
    dec d
    ld l, e
    sub c
    ld [hl], b
    ld d, b
    add a
    nop
    inc b
    add [hl]
    nop
    inc e
    nop
    nop
    ld d, b
    ld [hl], a
    nop
    ld [$0000], sp
    add sp, -$53
    ld c, e
    jr nz, jr_004_70a5

jr_004_70a5:
    nop
    pop hl
    ld b, a
    ld [hl], b
    add sp, -$5a
    ld c, e
    push hl
    rra
    ld l, e
    or c
    ld [hl], b
    jr z, @-$77

    nop
    jr z, jr_004_703c

    nop
    inc b
    add [hl]
    nop
    inc e
    nop
    nop
    jr z, jr_004_7135

    nop
    jr z, jr_004_7139

    nop
    ld [$0000], sp
    add sp, -$53
    ld c, e
    jr nz, jr_004_70cb

jr_004_70cb:
    nop
    pop hl
    ld b, a
    ld [hl], b
    ld d, b
    adc b
    nop
    ld [$0000], sp
    nop
    adc d
    nop
    ld d, b
    add a
    nop
    ld [$0000], sp
    nop
    adc d
    nop
    jr z, @-$77

    nop
    jr z, jr_004_706c

    nop
    ld [$0000], sp
    nop
    adc d
    nop
    add sp, $21
    ld sp, $360d
    push hl
    or [hl]
    ld l, e
    rst $30
    ld [hl], b
    ld a, [$0080]
    ld [hl], c
    inc a
    nop
    nop
    ld [c], a
    inc b
    ld d, b
    nop
    nop
    add sp, $21
    ld sp, $3604
    db $e4
    db $f4
    jp $0ad3


    db $f4
    pop bc
    db $d3
    ld bc, $95fc
    ld d, c
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
    ld h, b
    ld l, a
    ld e, $74
    ld d, $36
    db $e3
    db $ed

jr_004_7135:
    ld [hl], b
    ei
    rlca
    ld c, b

jr_004_7139:
    ld [hl], c
    add $71
    ld [hl], d
    ld [hl], d
    push de
    ld [hl], d
    push de
    ld [hl], d
    ld [hl], $71
    ld [hl], $71
    ld [hl], $71
    add sp, -$4e
    jr nc, @+$51

    ld [hl], c
    ld d, a
    ld [hl], c
    xor $76
    ld b, d
    dec bc
    ld l, h
    pop hl
    ld b, h
    ld [hl], e
    xor $76
    ld b, d
    rla
    ld l, h
    pop hl
    ld h, e
    ld [hl], e
    db $f4
    call $00d3
    add sp, $21
    ld sp, $360d
    db $fc
    and $4a
    jp $2547


    inc [hl]
    db $10
    adc b
    nop
    db $10
    add [hl]
    nop
    db $10
    add h
    nop
    jr nc, jr_004_717a

jr_004_717a:
    nop
    ld [c], a
    dec e
    db $f4
    call $00d3
    add sp, $21
    ld sp, $360d
    db $fc
    and $4a
    jp $2547


    inc [hl]
    db $10
    ld a, b
    nop
    db $10
    halt
    db $10
    ld [hl], h
    nop
    jr nc, jr_004_7198

jr_004_7198:
    nop
    db $f4
    call $01d3
    add sp, $21
    ld sp, $3604
    db $e3
    db $ed
    ld [hl], b
    add sp, -$2b
    ld c, c
    db $eb
    cp l
    db $d3
    or h
    ld [hl], c
    daa
    ld [hl], d
    sub $71
    db $e3
    db $ed
    ld [hl], b
    ei
    rlca
    ld c, b
    ld [hl], c
    add $71
    ld [hl], d
    ld [hl], d
    push de
    ld [hl], d
    add $71
    ld [hl], d
    ld [hl], d
    push de
    ld [hl], d
    push de
    ld [hl], d
    add sp, -$54
    ld c, c
    db $eb
    cp l
    db $d3
    sub $71
    sub $71
    ld [bc], a
    ld [hl], d
    daa
    ld [hl], d
    daa
    ld [hl], d
    push hl
    inc hl
    ld l, h
    db $db
    ld [hl], c
    jr nz, jr_004_71dd

jr_004_71dd:
    nop
    ld a, [bc]

jr_004_71df:
    add a
    adc h
    ld a, [bc]
    add a
    adc e
    ld a, [bc]
    add a
    adc b
    ld a, [bc]
    add a
    add [hl]
    add sp, -$4e
    jr nc, jr_004_71df

    ld [hl], c
    ld d, $72
    ld a, [bc]
    add a
    db $76
    ld a, [bc]
    add a
    ld a, b
    ld a, [bc]
    add a
    ld a, e
    ld a, [bc]
    add a
    ld a, h
    jr nz, jr_004_71ff

jr_004_71ff:
    nop
    ld [c], a

jr_004_7201:
    ld d, b
    push hl
    inc hl
    ld l, h
    rlca
    ld [hl], d
    jr nz, jr_004_7209

jr_004_7209:
    nop
    ld a, [bc]
    nop
    adc h
    ld a, [bc]
    nop
    adc e
    ld a, [bc]
    nop
    adc b
    ld a, [bc]
    nop
    add [hl]
    ld a, [bc]
    nop
    db $76
    ld a, [bc]
    nop
    ld a, b
    ld a, [bc]
    nop
    ld a, e
    ld a, [bc]
    nop
    ld a, h
    jr nz, jr_004_7224

jr_004_7224:
    nop
    ld [c], a
    dec hl
    push hl
    inc hl
    ld l, h
    inc l
    ld [hl], d
    jr nz, jr_004_722e

jr_004_722e:
    nop
    ld a, [bc]
    ld [hl], a
    adc h
    ld a, [bc]
    ld [hl], a
    adc e
    ld a, [bc]
    ld [hl], a
    adc b
    ld a, [bc]
    ld [hl], a
    add [hl]
    add sp, -$4e
    jr nc, jr_004_7255

    ld [hl], d
    ld b, d
    ld [hl], d
    ld a, [bc]
    ld [hl], a
    db $76
    ld a, [bc]
    ld [hl], a
    ld a, b
    ld a, [bc]
    ld [hl], a
    ld a, e
    ld a, [bc]
    ld [hl], a
    ld a, h
    jr nz, jr_004_7250

jr_004_7250:
    nop
    add sp, -$2b
    ld c, c
    db $eb

jr_004_7255:
    cp l
    db $d3
    ld h, b
    ld [hl], d
    daa
    ld [hl], d
    sub $71
    db $e3
    db $ed
    ld [hl], b
    ei
    rlca
    add $71
    ld c, b
    ld [hl], c
    ld [hl], d
    ld [hl], d
    push de
    ld [hl], d
    ld c, b
    ld [hl], c
    ld [hl], d
    ld [hl], d
    push de
    ld [hl], d
    push de
    ld [hl], d
    ld [$d093], a
    ld bc, $72c3
    add sp, -$58
    ld c, b
    add sp, -$4e
    jr nc, jr_004_7201

    ld [hl], d
    adc d
    ld [hl], d
    xor $bb
    ld b, c
    ld a, $6c
    pop hl
    ld b, h
    ld [hl], e
    xor $bb
    ld b, c
    xor c
    ld l, h
    pop hl
    ld h, e
    ld [hl], e
    add sp, $21
    ld sp, $360d
    db $fc
    pop af
    ld c, b
    jr c, @+$76

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
    pop af
    ld c, b
    ld c, d
    ld [hl], h
    ld hl, $e634
    inc bc
    ld [bc], a
    adc b
    nop
    ld [bc], a
    ld a, b
    nop
    rst $20
    ld [c], a
    rst $28
    db $e3
    db $ed
    ld [hl], b
    ei
    rlca
    ld [hl], d
    ld [hl], d
    ld c, b
    ld [hl], c
    add $71

jr_004_72cb:
    push de
    ld [hl], d
    ld c, b
    ld [hl], c
    add $71
    push de
    ld [hl], d
    push de
    ld [hl], d
    add sp, -$58
    ld c, b
    xor $bb
    ld b, c
    inc d
    ld l, l
    add sp, -$54
    ld c, c
    add sp, -$4e
    jr nc, jr_004_72cb

    ld [hl], d
    nop
    ld [hl], e
    push hl
    rst $38
    ld l, e
    db $ec
    ld [hl], d
    ld [$8a00], sp
    ld [$8600], sp
    ld [$7600], sp
    ld [$7a00], sp
    ld [bc], a
    nop
    nop
    push hl
    jp hl


    ld l, e
    ld d, d
    ld [hl], e
    push hl
    dec b
    ld l, h
    dec b
    ld [hl], e
    ld [$8a00], sp
    ld [$8600], sp
    ld [$7600], sp
    ld [$7a00], sp
    ld [bc], a
    nop
    nop
    push hl
    db $f4
    ld l, e
    ld [hl], c
    ld [hl], e
    db $f4
    call $01d3
    db $e3
    db $ed
    ld [hl], b
    ei
    rlca
    push de
    ld [hl], d
    ld c, b
    ld [hl], c
    add $71
    ld [hl], d
    ld [hl], d
    ld c, b
    ld [hl], c
    add $71
    ld [hl], d
    ld [hl], d
    push de
    ld [hl], d
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
    db $d3
    ld l, e
    ld c, c
    ld [hl], e
    ld [$0078], sp
    ld [$0076], sp
    ld [$0074], sp
    inc b
    adc c
    add [hl]
    inc b
    adc b
    nop
    inc b
    add a
    nop
    inc b
    add a
    db $76
    ld a, [bc]
    add a
    nop
    ld [c], a
    ldh a, [$e5]
    sbc $6b
    ld [hl], c
    ld [hl], e
    ld [$0088], sp
    ld [$0086], sp
    ld [$0084], sp
    inc b
    ld a, c
    add [hl]
    inc b
    ld a, b
    nop
    inc b
    ld [hl], a
    nop
    inc b
    ld [hl], a
    db $76
    ld a, [bc]
    ld [hl], a
    nop
    ld [c], a
    ldh a, [rSC]
    add l
    add l
    ld [bc], a
    adc d
    adc d
    pop hl
    add d
    ld [hl], e
    ld [bc], a
    ld [hl], l
    add l
    ld [bc], a
    ld a, d
    adc d
    pop hl
    adc e
    ld [hl], e
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
    ld a, [bc]
    add [hl]
    add [hl]
    inc d
    nop
    nop
    ldh [$f1], a
    inc d
    ld [$7a06], sp
    adc c
    ld a, [bc]
    db $76
    add [hl]
    inc d
    nop
    nop
    ldh [$f1], a
    ld hl, sp+$08
    ld b, $8a
    adc c
    ld a, [bc]
    add [hl]
    add [hl]
    inc d
    nop
    nop
    ldh [$f1], a
    ld [$0608], sp
    ld a, d
    adc c
    ld a, [bc]
    db $76
    add [hl]
    inc d
    nop
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
    ld e, h
    ld [hl], h
    ld [hl], d
    ld [hl], h
    adc b
    ld [hl], h
    sbc [hl]
    ld [hl], h
    or h
    ld [hl], h
    jp z, $e074

    ld [hl], h
    or $74
    ei
    rlca
    inc c
    ld [hl], l
    ld [hl+], a
    ld [hl], l
    jr c, @+$77

    ld c, [hl]
    ld [hl], l
    ld h, h
    ld [hl], l
    ld a, d
    ld [hl], l
    sub b
    ld [hl], l
    and [hl]
    ld [hl], l
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

jr_004_74ff:
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
    jr z, jr_004_74ff

    ld [bc], a
    ld [hl], l
    adc b
    ld [bc], a
    nop
    nop

jr_004_7515:
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
    jr jr_004_7515

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

jr_004_7533:
    ld a, d
    ld [bc], a
    adc b
    ld [hl], a
    ldh [$f1], a
    jr nc, jr_004_7533

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
    jr jr_004_758d

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

jr_004_758d:
    adc b
    add a
    ldh [$f1], a
    jr nc, jr_004_759b

    ld [bc], a
    ld a, b
    add h
    ld [bc], a
    nop
    add h
    ld [bc], a
    adc b

jr_004_759b:
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
    add $75
    ret


    ld [hl], l
    call z, $cf75
    ld [hl], l
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
    jr z, jr_004_760a

jr_004_760a:
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr nz, @+$01

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_004_799b

jr_004_799b:
    nop
    nop
    nop
    nop
    ld b, b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    stop
    nop
    jr nz, @+$01

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    and h
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    jr nz, jr_004_7fc5

jr_004_7fc5:
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
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
