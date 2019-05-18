SECTION "ROM Bank $00a", ROMX[$4000], BANK[$a]

    dec h
    nop
    ld [de], a
    inc bc
    inc bc
    db $e4
    add $26
    ld h, h
    inc [hl]
    inc h
    jr c, jr_00a_4049

    inc e
    jr c, @+$3e

    jr @+$0a

    jr jr_00a_4024

    ld [$2408], sp
    nop
    inc b
    ld bc, $4000
    ld bc, $2201
    ld b, c
    inc b
    ld b, e
    ld b, c
    pop hl

jr_00a_4024:
    ld b, e
    ld b, e
    ld [hl+], a
    db $e3
    dec bc
    rst $20
    ld [c], a
    ld [c], a
    and [hl]
    sbc h
    cp [hl]
    xor d
    sbc h
    add b
    add b
    nop
    add b
    dec h
    nop
    ld b, c
    jr @+$0a

    ld b, c
    ld [$4118], sp
    db $10
    jr jr_00a_4043

    jr @+$12

jr_00a_4043:
    jr jr_00a_406b

    db $10
    ld b, d
    jr nc, @+$12

jr_00a_4049:
    ld b, c
    db $10
    jr nc, @+$43

    jr nz, jr_00a_407f

    ld [bc], a
    jr nc, jr_00a_4072

    jr nc, jr_00a_407e

    jr nz, jr_00a_405d

    jr nc, @+$22

    jr c, jr_00a_408a

    rra
    rra
    rrca

jr_00a_405d:
    rrca
    dec h
    nop
    nop

jr_00a_4061:
    ld [hl], b
    ld a, [hl+]
    ld h, b
    db $10
    ld b, b
    ld h, b
    rst $00
    ld h, [hl]
    ret z

    ld l, l

jr_00a_406b:
    add sp, $48
    ld l, b
    ret z

    ld c, h
    ret z

    ld b, [hl]

jr_00a_4072:
    add $c4
    jp nz, $22c6

    call nz, $c801
    call nz, $cc41
    ret z

jr_00a_407e:
    rlca

jr_00a_407f:
    call nz, $fbc4
    ei
    ld a, [hl]
    rst $38
    ld [bc], a
    ld b, $26
    inc bc
    inc b

jr_00a_408a:
    rlca
    rst $38
    rst $38
    cp $fe
    dec h
    nop
    ld [$3001], sp
    jr nc, jr_00a_40b7

    ld h, c

jr_00a_4097:
    ld hl, $6123
    ld h, c
    ld [hl+], a
    ld b, e
    rlca
    jp $8783


    add e
    add e
    add a
    rlca
    rlca
    push bc
    nop
    ld b, $05
    inc b
    jr jr_00a_40cc

    rra
    dec [hl]
    inc de
    add e
    nop
    ld h, e
    dec b
    ld [hl], b
    jr nz, jr_00a_4097

jr_00a_40b7:
    ld h, b
    ret nz

    ret nz

    add l
    nop
    jr c, jr_00a_4061

    nop
    ld c, e
    inc bc
    inc c
    jr jr_00a_40d0

    add hl, de
    ld b, c
    add hl, de
    dec c
    nop
    dec e
    inc h
    dec c

jr_00a_40cc:
    nop
    dec b
    ld b, c
    dec c

jr_00a_40d0:
    rlca
    nop
    dec c
    ld b, c
    dec c
    rlca
    ld [bc], a
    rrca
    add a
    adc a
    ld a, [hl+]
    add a
    dec b
    push bc
    adc a
    ld a, l
    ld a, l
    ld sp, $8439
    nop
    ld a, h
    ld [de], a
    ldh a, [rOBP1]
    sbc c
    sbc l
    dec c
    dec b
    dec c
    rrca
    rlca
    inc bc
    rlca
    rlca
    inc bc
    ld bc, $0303
    ld bc, $0100
    and l
    nop
    add hl, sp
    inc b
    stop
    jr jr_00a_4102

jr_00a_4102:
    db $10
    ld b, c
    ld [$031c], sp
    inc c
    ld e, $0c
    ld a, [de]
    ld b, c
    ld c, $1b
    nop
    dec c
    jp $f700


    dec b
    ld [$f89c], sp
    db $fc
    ld [hl], b
    ld a, b
    add hl, hl
    nop
    inc bc
    ldh a, [$f0]
    ld [$4a98], sp
    add h
    inc c
    ld b, c
    inc b
    inc c
    inc b
    dec b
    inc c
    inc b
    dec c
    dec b
    add h
    ld bc, $0f01
    inc b
    rrca
    rlca
    ld c, $86
    adc [hl]
    call nz, $868e
    ld c, h
    ld a, $7c
    ld b, $3c
    ld [bc], a
    inc bc
    add e
    ld bc, $0537
    add b
    add b
    ret nz

    add b
    nop
    ret nz

    inc hl
    ld b, b
    dec d
    pop bc
    ld b, e
    inc bc
    jp $83c7


    add [hl]
    add e
    add e
    add [hl]
    ld c, $86
    adc [hl]
    ld b, $04
    ld c, $0e
    inc c
    rrca
    rrca
    dec c
    ld c, $29
    nop
    inc b
    dec b
    inc bc
    rst $38
    rst $38
    db $fd
    add [hl]
    nop
    cp c
    add hl, de
    rlca
    rrca
    ld [bc], a
    ld [bc], a
    add d
    ld [bc], a
    ld b, d
    jp nz, $3262

    ld [$0818], sp
    inc b

Jump_00a_417e:
    ld b, $04
    nop
    ld b, $06
    ld [bc], a
    inc bc
    add d
    ret nz

    add e
    add c

jr_00a_4189:
    ld b, e
    ld b, d
    ld b, e
    ld b, c
    rla
    inc bc
    ld b, c
    pop bc
    add e
    add c
    add e
    rlca
    inc bc
    ld [bc], a
    rlca
    ld c, $06
    inc b
    ld c, $0c
    inc e
    jr jr_00a_41d8

    or b
    ld [hl], b
    ldh [$e0], a
    ret nz

    add b
    dec l
    nop
    inc bc
    ld [bc], a
    ld bc, $0706
    cpl
    nop
    dec c
    jr @+$1a

    daa
    daa
    ld h, c
    ld h, c
    add d
    add d
    ld b, d
    ld b, d
    ld hl, $2f21
    cpl
    rst $00
    nop
    ld h, h
    nop
    jr c, jr_00a_4189

    nop
    ld d, b
    inc bc
    jr jr_00a_41d1

    jr jr_00a_41e7

    and h
    nop
    ld d, h
    dec b
    adc h
    inc c

jr_00a_41d1:
    inc b
    adc h
    adc [hl]
    add h
    ld b, c
    add h
    add [hl]

jr_00a_41d8:
    rlca
    call z, $8486
    adc $7e
    ld a, h
    jr c, jr_00a_421d

    cpl
    nop
    dec b
    ld a, [hl-]
    inc a
    ld l, e

jr_00a_41e7:
    ld b, a
    pop bc
    add b
    and [hl]
    ld bc, $0637
    nop
    ld [hl+], a
    and d
    ld [hl], $36
    ld a, [hl+]
    ld a, [hl+]
    inc hl
    ld [hl+], a
    dec b
    ld bc, $0101
    ld bc, $0100
    dec [hl]

Jump_00a_41ff:
    nop
    inc bc
    ld b, $0f
    add hl, de
    db $10
    rlc d
    sbc a
    inc b
    inc b
    rrca
    add hl, de
    inc de
    ld hl, $0085
    ld h, [hl]
    inc bc
    jr nc, @+$17

    add hl, de
    ld c, $85
    nop
    ld a, c
    dec c
    db $10
    rrca
    rra

jr_00a_421d:
    jr z, @+$32

    ld h, b
    ld b, b
    pop bc
    add c
    nop
    add h
    add d
    ld [bc], a
    ld bc, $0284
    add hl, de
    nop
    ld bc, $00c6
    inc a
    ld de, $c080
    ld h, b
    ld b, b
    jr z, @+$32

    rrca
    rra
    ld b, $09
    rrca
    ld [$040b], sp
    inc bc
    ld b, $01
    ld bc, $02b0
    sub h
    ld [hl+], a
    add b
    ld c, $e0
    ret nz

    ld d, b
    jr nc, @+$1a

    ld [$040c], sp
    add d
    add h
    inc b
    ld [hl+], a
    ld [de], a
    ld [hl+], a
    ld b, d
    call nz, $dc01
    inc d
    nop
    ld [bc], a
    ld b, $00
    inc b
    inc b
    ld [$1804], sp
    ld [$3050], sp
    ret z

    ld hl, sp-$58
    ret c

    ld a, b
    ret z

    ldh a, [rSVBK]
    ret nz

    and h
    ld [bc], a
    ld [c], a
    ld bc, $0808
    dec h
    db $10
    ld b, $11
    ld [$0f0e], sp
    inc bc

Call_00a_427f:
    rlca
    ld bc, $0388
    ld [$e007], sp
    ld b, b
    ld b, b
    ld h, b
    jr nz, @+$62

    ld [hl], b
    jr nz, @-$79

    nop
    ld a, [de]
    and h
    ld [bc], a
    jp hl


    inc b
    inc bc
    rlca
    rrca
    ld e, l
    ld a, $c4
    ld [bc], a
    and $02
    ld [bc], a
    inc b
    inc b
    add e
    inc bc
    ld b, b
    inc bc
    jr nz, @+$22

    ld b, b
    ld b, b
    push hl
    ld a, a
    nop
    rst $38
    inc sp
    nop
    ld b, $01
    nop
    inc bc
    inc bc
    dec b
    ld b, $06
    ld h, $04
    ld [bc], a
    ld b, $04
    inc b
    ld [hl+], a

Jump_00a_42bd:
    ld [bc], a
    inc b
    inc bc
    ld [bc], a
    nop
    inc bc
    inc bc
    inc h
    ld bc, $00cd
    inc d
    dec bc
    rlca
    inc bc
    inc bc
    rlca
    rlca
    rrca
    ld a, a
    rra
    cp $fe
    db $f4
    ld hl, sp+$23
    nop
    dec e
    sub b
    sub b
    db $10
    sub b
    sbc b
    db $10
    db $10
    jr jr_00a_4301

    jr @+$11

    rrca
    rlca
    rlca
    nop
    nop
    ld sp, $3031
    ld sp, $3061
    jr nc, jr_00a_4351

    ld h, b
    ldh [$c0], a
    ldh [$80], a
    ret nz

    dec hl
    nop
    ld [bc], a
    cp a
    ld a, a
    pop hl
    adc d
    nop
    ld l, l
    inc c

jr_00a_4301:
    rlca
    rlca
    ld b, $03
    add e
    inc bc
    add c
    add e
    jp $c181


    ld b, c
    ld b, c
    ld b, c
    ld b, b
    ld h, b

jr_00a_4311:
    ld b, c
    jr nz, jr_00a_4344

    ld bc, $1010
    ld b, c
    db $10
    jr jr_00a_435c

    ld [$840c], sp
    nop
    rra
    nop
    ld b, $83
    nop
    dec h
    ld bc, $0101
    jp nc, $1400

    rlca
    rla
    rrca
    ld [hl], h
    jr c, jr_00a_4311

    ret nz

    nop
    add b
    ld b, d
    add b
    nop
    ld bc, $c080
    inc hl
    ldh a, [rSC]
    or b
    ldh a, [$d0]
    inc h
    sub b
    ld l, $10

jr_00a_4344:
    jp $df00


    ld [hl+], a
    ret nc

    ld [hl+], a
    ldh a, [rNR43]
    ld [hl], b
    ld c, $78
    jr nc, jr_00a_4381

jr_00a_4351:
    jr c, @+$7a

    jr c, jr_00a_4391

    ld a, b
    db $fd
    ld a, [hl]
    rst $20
    rst $30
    pop hl
    pop hl

jr_00a_435c:
    nop
    add [hl]
    nop
    ld l, l
    ld b, $f8
    ldh a, [$9c]
    ld [$040c], sp
    nop
    add h
    nop
    xor e
    ld bc, $0200
    add l
    nop
    inc l
    nop
    nop
    add h
    nop
    ld sp, $8041
    nop
    nop
    nop
    ld [hl+], a
    add b
    nop
    ret nz

    and e
    nop

jr_00a_4381:
    inc d
    ld b, c
    ld b, b
    ld h, b
    ld bc, $4040
    ld [hl+], a
    jr nz, jr_00a_4390

    jr nc, jr_00a_43ad

    nop
    jr nc, @+$32

jr_00a_4390:
    db $10

jr_00a_4391:
    call nz, $a200
    ld [hl+], a
    ld [$0c06], sp
    ld [$0c00], sp
    inc c
    inc b
    ld b, $85
    nop
    ld hl, $0300
    adc a
    nop
    or d
    nop
    ld bc, $0163
    add h
    nop
    add hl, de

jr_00a_43ad:
    rlca

jr_00a_43ae:
    add h
    add h
    ld h, e
    ld [c], a
    add hl, de
    add hl, de
    ld b, $0e
    add h
    nop
    dec hl
    inc de
    nop
    ld b, b
    add b
    ldh [$60], a
    jr nz, jr_00a_43f1

    cp b
    db $10
    add b
    sbc b
    ret c

    adc b
    adc h
    ret z

    ret nz

    call z, $c46c
    call nz, Call_00a_6422
    rlca
    ld [hl], b
    inc h
    jr c, jr_00a_440d

    jr nc, @+$1a

    nop
    db $10
    rst $00
    nop
    scf
    rlca
    rlca
    inc bc
    ld b, $0e
    cp h
    inc e
    ldh a, [$f8]
    cpl
    nop
    ld bc, $ffff
    adc a
    nop
    or e
    ld bc, $1c1c
    ld b, c

jr_00a_43f1:
    ld [de], a
    ld a, [de]
    inc bc
    ld d, $1a
    jr jr_00a_4414

    sub c
    ld bc, $41cc
    ld [de], a
    ld a, [de]
    ld bc, $1c1e
    inc sp
    nop
    ld [bc], a
    rrca
    rrca
    jr jr_00a_43ae

    nop
    and l
    ld [bc], a
    ld b, b
    ld h, b

jr_00a_440d:
    ld h, b
    ld h, $40
    ld [bc], a
    add b
    ret nz

    add b

jr_00a_4414:
    and h
    nop
    dec hl
    inc b
    add c
    add b
    nop
    add c
    add c
    adc [hl]
    nop
    ld l, $0e
    stop
    nop
    db $10
    jr jr_00a_443f

    inc e
    inc e
    ld e, $0a
    ld c, $0b
    ld bc, $0d0d
    add h
    nop
    rra
    ld [bc], a
    nop
    ld b, $06
    add h
    nop
    daa
    nop
    ld bc, $0322
    rlca

jr_00a_443f:
    rlca
    inc bc
    sub [hl]
    rrca
    cp $fe
    ld a, h
    ld a, b
    inc hl
    nop
    ld b, $03
    nop
    rla
    rrca
    ld l, b
    ld [hl], b
    ret nz

    and [hl]
    nop
    ld [hl-], a
    and l
    ld [bc], a
    ld [hl+], a
    ld bc, $c181
    inc hl
    ld b, b
    and h
    nop
    ld b, b
    dec c
    ldh [$60], a
    ldh [$f0], a
    ld h, b
    ld h, b
    ld [hl], b
    jr nc, jr_00a_44d9

    ld [hl], b
    jr nc, @+$3a

    jr nc, @+$32

    inc h
    jr c, @+$0f

    inc a
    jr c, jr_00a_449c

    inc a
    db $76
    ld h, $33
    ld h, e
    ld h, b
    ld h, c
    ret nz

    ld h, b
    ldh [$c0], a
    and a
    nop
    or b
    inc bc
    inc bc
    inc bc
    inc b
    ld b, $a4
    nop
    sbc d
    inc b
    jr jr_00a_44a5

    db $10
    jr nc, jr_00a_44a0

    rst $00
    nop
    ld [hl], e
    inc c
    ld [hl], b
    ldh [$58], a
    jr c, jr_00a_44b5

    inc c
    ld b, $0e

jr_00a_449c:
    rlca
    ld b, $03
    rlca

jr_00a_44a0:
    rlca
    jr z, jr_00a_44a6

    ld c, $07

jr_00a_44a5:
    inc bc

jr_00a_44a6:
    rlca
    ld b, $0e
    ld b, $1c
    ld c, $3c
    inc e
    ld e, b
    jr c, jr_00a_44c5

    inc c
    ld b, $8b
    nop

jr_00a_44b5:
    daa
    ld b, d
    ld bc, $0003
    inc bc
    xor a
    nop
    dec b
    dec b
    ld b, b
    ret nz

    ld b, b
    ld h, b
    ld h, c
    ld h, b

jr_00a_44c5:
    ld h, d
    ld h, d
    add hl, bc
    ld h, [hl]
    ld b, h
    ld h, h
    call nz, Call_00a_6464
    call nz, $c4e2
    call nz, $c224
    inc b
    add e
    jp nz, $c380

jr_00a_44d9:
    jp $8141


    pop bc
    and e
    ld [bc], a
    ld e, d
    nop
    ret nz

    jp Jump_00a_6800


    ld b, $38
    jr jr_00a_44f5

    inc e
    ld c, $0e
    ld b, $c4
    ld [bc], a
    ld e, [hl]
    ld bc, $0100
    rst $00
    ld [bc], a

jr_00a_44f5:
    or c
    ld b, $40
    ld b, b
    ld h, b
    jr nz, jr_00a_451c

    jr nc, jr_00a_4512

    add e
    nop
    ld e, c
    adc [hl]
    ld [bc], a
    rst $38
    inc c
    ldh [rP1], a
    ldh a, [$f8]
    jr jr_00a_4517

    inc b
    ld c, $04
    ld b, $02
    rlca
    ld [bc], a

jr_00a_4512:
    ld b, c
    inc bc
    add d
    ld a, [bc]
    add e

jr_00a_4517:
    add d
    add a
    add [hl]
    ld b, $0c

jr_00a_451c:
    ld c, $06
    inc c
    ld b, $06
    call nz, Call_00a_7c02
    ld a, [de]
    ld bc, $4040
    ldh [$60], a
    ld [hl], b
    ld [hl], b
    jr nc, jr_00a_45a6

    ld l, h
    jr c, @+$28

    inc [hl]
    ld d, $36
    ld [hl-], a
    dec de
    ld de, $3119
    jr jr_00a_456b

    jr c, @-$1e

    ldh a, [$c0]
    ldh [$8b], a
    nop
    ld a, [hl]
    ld bc, $c3c1
    call nz, $1402
    add h
    nop
    sbc [hl]
    ld bc, $1818
    inc hl
    nop
    inc b
    inc a
    inc a
    ld h, d
    ld b, [hl]
    jp $8122


    inc b
    add b
    add c
    ret nz

    add c
    add c
    and [hl]
    ld [bc], a
    reti


    ld b, $40
    ldh [$60], a
    ldh [rNR41], a
    ld h, b
    ld [hl], b
    add e

jr_00a_456b:
    inc bc
    or h
    inc bc
    jr nc, jr_00a_45a8

    db $10
    db $10
    and e
    inc bc
    cp e
    ld h, $08
    ld [$0888], sp
    ld [$9088], sp
    adc b
    adc b
    sub b
    adc b
    ld [hl+], a
    sub b
    ld bc, $9090
    adc c
    ld bc, $c7be
    ld bc, $11c7
    ld bc, $7901
    ld sp, hl
    cpl
    dec e
    dec b
    rrca
    rlca
    rlca
    ld b, $06
    inc bc
    ld b, $06
    inc bc
    inc bc
    inc bc
    push bc
    ld [bc], a
    ld a, l
    add e
    ld bc, $0026

jr_00a_45a6:
    add c
    add h

jr_00a_45a8:
    ld bc, $0331
    add b
    add b
    ld b, b
    add b
    jp $2202


    ld [bc], a
    ld h, b
    ld b, b
    nop
    and e
    nop
    ld a, [de]
    inc bc
    and b
    ldh a, [$a0]
    ret nz

    ld [hl+], a
    ret nc

    rrca
    ld a, b
    ld [hl], b
    jr nc, jr_00a_463d

    inc a
    jr c, jr_00a_45e2

    inc a
    rra
    ccf
    inc sp
    ld sp, $70f0
    ldh a, [$e0]
    add l
    ld [bc], a
    ld [hl], b
    rlca
    ld [bc], a
    ld bc, $0f16
    inc [hl]
    jr c, @+$62

    ld b, b
    add e
    ld [bc], a
    inc h
    ld b, $82

jr_00a_45e2:
    add c
    add e
    add e
    jp nz, $4343

    ld b, c
    ld b, e
    ld b, b
    ld bc, $c040
    and h
    nop
    xor a
    dec b
    add c
    add c
    pop bc
    add c
    ld b, c
    ld h, c

jr_00a_45f8:
    inc hl
    ld hl, $1002
    and c

jr_00a_45fd:
    and b
    add e
    nop
    or $85
    ld [bc], a
    sub c
    ld a, [bc]
    jr jr_00a_4626

    rra
    ccf
    rra
    ld [hl], b
    jr nc, jr_00a_45fd

    ldh [$c0], a
    ldh [$2f], a
    nop
    inc bc
    ld a, [$e8fc]
    ldh a, [$d3]
    nop
    push bc
    dec c
    inc bc
    ld [bc], a
    add [hl]
    inc b
    inc c
    add h
    adc h
    adc b
    ret c

    adc b
    ld e, b

jr_00a_4626:
    ret nc

    ldh [rSVBK], a
    add h
    ld [bc], a
    jr @-$7a

    nop
    ld de, $0283
    ld [hl], a
    add l
    ld [bc], a
    sbc $05
    ld e, $0c
    inc e
    inc c
    ld [$411c], sp

jr_00a_463d:
    inc e
    jr jr_00a_4647

    add hl, sp
    jr @+$3b

    add hl, de
    ld sp, $1119

jr_00a_4647:
    add hl, sp
    ld b, c
    add hl, sp
    ld sp, $028b
    inc b
    add e
    inc b
    ld h, h
    and a
    nop
    jr nc, jr_00a_45f8

    ld bc, $0327
    ldh [$c0], a
    ld a, b
    ld a, b
    add l
    inc bc
    xor $1c
    inc c

jr_00a_4661:
    adc b
    adc h
    adc b
    adc b
    adc h
    ret z

    adc h
    add h
    call z, $ccc4
    ld l, h
    call nz, Call_00a_64cc
    db $e4
    ld h, h
    ld h, [hl]
    ld h, h
    ld [hl], $64
    ld l, h
    ld [hl], $3c
    ld a, $1e
    ld a, $3e
    inc h
    ld e, $01
    rrca
    ld e, $41
    rra
    rrca
    ld b, $0c
    inc e
    ld a, b
    inc a
    ldh a, [$f8]
    ret nc

    adc d
    inc bc
    and l
    inc b
    ldh [$f0], a
    cp c
    jr @+$0a

    ld b, c
    add hl, de
    add hl, bc
    inc c
    add hl, de
    ld d, c
    ld sp, $f1e3
    ld [bc], a
    add c
    ld bc, $c302
    ld [c], a
    and d
    ld [hl], d
    inc hl
    ld [hl-], a
    db $10
    inc [hl]
    ld a, $68
    db $fc
    ret z

    add sp, $08
    adc b
    ld [$468c], sp
    add [hl]
    cp $fe
    db $d3
    and $c2
    add [hl]
    ld [bc], a
    reti


    dec b
    dec bc
    rlca
    cp [hl]
    ld a, [hl]
    db $f4
    ld hl, sp-$39
    inc bc
    db $10
    ld [hl+], a
    ret nz

jr_00a_46ca:
    and e
    inc b
    ld hl, $03a8
    ld b, e
    ld b, $00
    nop
    ld b, $0f
    jr @+$13

    jr nc, jr_00a_4661

    ld bc, $8341
    nop
    sbc [hl]
    jr jr_00a_46e0

jr_00a_46e0:
    jr jr_00a_46ca

    ld hl, sp+$58
    jr c, jr_00a_4702

    ld [$0c08], sp
    ld c, $0e
    dec e
    dec c
    inc c
    inc e
    dec sp
    add hl, de
    ld a, [de]
    dec sp
    ld [hl-], a
    ld [hl], d
    db $e4
    ld h, [hl]
    ld h, [hl]
    inc hl
    call nz, $8404
    add [hl]
    add h
    ld [bc], a
    ld b, $87
    nop

jr_00a_4702:
    jr z, jr_00a_470c

    nop
    ld bc, $7878
    add h
    call z, $8606

jr_00a_470c:
    add d
    and e
    ld [bc], a
    add hl, de
    nop
    inc bc
    adc e
    nop
    or b
    ld [bc], a
    cp a
    ld a, a
    and b
    xor [hl]
    ld [bc], a
    rst $38
    rlca
    ld c, $1c
    dec bc
    ld e, $09
    dec e
    add hl, bc

jr_00a_4724:
    dec c
    and e
    inc b
    adc [hl]
    ld a, [hl+]
    nop
    inc bc
    inc b
    nop
    ld b, $02
    ld b, c
    rlca
    inc bc
    nop
    rlca
    ld b, c
    ld [bc], a
    ld b, $00
    ld b, $ca
    ld [bc], a
    rst $18
    rlca
    inc bc
    rlca
    adc $8f
    cp $fe
    jr c, jr_00a_47c1

    dec h
    nop
    dec d
    ld a, $3c
    ld h, [hl]
    ld b, [hl]
    ld b, e
    add e
    add c
    add e
    add e
    add c
    ld bc, $8181
    ld bc, $0180
    ld de, $0000
    db $10
    ld [$c310], sp
    inc bc
    ret nz

    ld bc, $181c
    ld b, c
    jr jr_00a_4783

    nop
    jr jr_00a_4790

    nop
    dec c
    ld b, $00
    ld e, $1e
    rra
    ld e, $1a
    dec de
    add hl, de
    add hl, de
    cp b
    jr nc, @-$0e

    ldh [$c5], a
    ld bc, $8535

Call_00a_477e:
    inc bc
    ld c, h
    add hl, bc
    jr nc, @+$22

jr_00a_4783:
    inc e
    jr c, jr_00a_4793

    ld e, $03
    inc bc
    inc b
    inc b
    ld b, c
    ld [$010c], sp
    inc c

jr_00a_4790:
    ld [$05a5], sp

jr_00a_4793:
    cp [hl]
    and a
    ld bc, $006c
    ld h, b
    add e
    inc bc
    ld d, b
    ld [bc], a
    ld h, b
    ld h, b
    jr nz, jr_00a_4724

    inc bc
    sbc $a3
    ld b, $a7
    dec bc
    jr nc, jr_00a_47c1

    db $10
    jr jr_00a_47cc

    jr jr_00a_482d

    ccf
    ret nc

    ldh [$80], a
    ret nz

    xor c
    nop
    ld [hl-], a
    add e
    ld [bc], a
    pop de
    dec d
    rlca
    rlca
    inc b
    ld b, $00
    inc b
    inc b

jr_00a_47c1:
    ld [bc], a
    ld b, $02
    add d
    ld [bc], a
    ld bc, $8282
    add c
    pop bc
    add c

jr_00a_47cc:
    nop
    pop bc
    ld b, c
    ret nz

    inc h
    ld b, b
    nop
    ret nz

    adc c
    ld b, $d3
    dec b
    ret nc

    ldh [$b8], a
    ld a, h
    dec e
    dec c
    and e
    inc b
    sbc h
    ld [bc], a
    rlca
    inc bc
    ld bc, $0488
    inc hl
    add $03
    adc e
    nop
    inc bc
    jp $cf02


    ld [bc], a
    ld e, $0e
    ld c, $85
    ld [bc], a
    pop de
    and e
    ld [bc], a
    daa
    nop
    nop
    and h
    ld [bc], a
    ld hl, sp+$03
    ld b, b
    ld b, b
    ld h, b
    ld [hl], b
    and h
    ld [bc], a
    or a
    rlca
    add hl, de
    ld [$0f08], sp
    rlca
    rlca
    ld [bc], a
    ld bc, $018d
    ld h, [hl]
    and e
    ld bc, $003e
    add [hl]
    add e
    ld bc, $0b78
    add h
    call z, $8084
    call z, $c8cc
    ld c, h
    ret z

    add sp, $48
    ld c, b
    ld [hl+], a
    ld l, b
    ld [$6828], sp

jr_00a_482d:
    ld a, b
    jr c, jr_00a_4860

    jr c, jr_00a_484a

    jr nc, jr_00a_4864

    ld h, $10
    ld b, $31
    db $10
    or d
    add hl, sp
    rst $28
    rst $28
    ld b, $a6
    inc bc
    and l
    add hl, bc
    ld h, e
    ld h, e
    ld [hl], a
    ld [hl], a
    ld a, $3e
    inc e
    inc e

jr_00a_484a:
    ld [hl], $36
    inc hl
    ld h, e
    and e
    ld b, $a0
    ld [bc], a
    jr nc, jr_00a_4884

    ld [hl], b
    ld b, c
    jr nc, jr_00a_48b8

    inc c
    jr nc, jr_00a_487b

    ld [hl], b
    jr nc, jr_00a_48be

    add c
    add c

jr_00a_4860:
    ld b, d
    ld b, d
    inc h
    inc h

jr_00a_4864:
    jr jr_00a_487e

    rst $00
    rlca
    or a
    rst $08
    inc b
    xor l
    dec b
    or b
    ld [hl], b
    inc e
    ld [$0406], sp
    adc c
    ld bc, $0b1e
    add c
    ld bc, $8301

jr_00a_487b:
    rst $00
    add e
    rst $28

jr_00a_487e:
    add $7e
    ld a, [hl]
    inc a
    jr c, jr_00a_482d

jr_00a_4884:
    nop
    inc c
    jp $3801


    push bc
    dec b
    and [hl]
    rst $38
    dec b
    ld bc, $3601
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
    jr nc, jr_00a_48ce

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
    jr jr_00a_48e3

    jr nc, jr_00a_48f5

    jr nz, @+$81

jr_00a_48b8:
    ld b, b
    cp a
    ret nz

    rst $38
    add b
    rst $30

jr_00a_48be:
    adc b
    or a
    ret z

    ld e, e
    ld l, h
    dec sp
    inc a
    inc e
    rra
    inc hl
    ccf
    ld b, c
    ld a, a
    ld a, $3e
    rlca

jr_00a_48ce:
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

jr_00a_48e3:
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

jr_00a_48f5:
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
    jr nz, jr_00a_4989

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

jr_00a_495f:
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

    jr nc, jr_00a_498a

    jr jr_00a_4994

    db $10
    cpl
    jr nc, jr_00a_49bc

    ccf
    jr nz, jr_00a_4989

    cpl
    jr nc, jr_00a_495f

    ldh [$da], a
    ld a, [hl-]
    rst $30
    dec c
    rst $38
    dec b
    ld sp, hl
    rlca
    rst $38

jr_00a_4989:
    inc bc

jr_00a_498a:
    ld b, d
    cp $52
    dec c
    ei
    rlca
    db $fd
    rlca
    ld sp, hl
    cpl

jr_00a_4994:
    pop af
    sbc a
    and d
    cp $e4
    db $fc
    jr c, @+$3a

    xor c
    nop
    ld b, b
    ld bc, $56fa
    ld b, c
    rst $38

jr_00a_49a4:
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

jr_00a_49bc:
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
    jr c, jr_00a_4a3c

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

    jr nc, jr_00a_49a4

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
    jr c, jr_00a_4ab8

    ld a, [hl]
    cp l

jr_00a_4a3c:
    jp $ff4d


    nop
    ld bc, $302f
    and e
    ld bc, $0994
    adc e
    db $fc
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
    jr nc, jr_00a_4aac

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
    jr nc, jr_00a_4a9d

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
    and e
    nop
    ld a, [bc]
    inc bc
    db $ec
    inc e
    ret nc

    jr nc, jr_00a_4ada

    ldh [rNR41], a
    inc bc
    ld h, b
    and b
    ret nz

    ret nz

    dec hl

jr_00a_4a9d:
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

jr_00a_4aac:
    call Call_00a_477e
    ld e, a
    ld h, b
    add l
    ld [bc], a
    add b
    ld bc, $080f
    add l

jr_00a_4ab8:
    nop
    ldh a, [$09]
    cpl

jr_00a_4abc:
    jr nc, jr_00a_4b1a

    ld h, e
    ld d, e
    ld l, a
    ld c, h
    ld a, h
    ld [hl], b
    ld [hl], b
    jr z, jr_00a_4ac7

jr_00a_4ac7:
    adc d
    ld [bc], a
    dec b
    ld bc, $c3bd
    sub c
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

jr_00a_4ada:
    jr nc, jr_00a_4abc

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

jr_00a_4b1a:
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
    call nz, Call_00a_427f
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
    jr c, jr_00a_4c01

    ld a, [hl]
    ccf
    ccf
    add e
    nop
    ld h, b
    ldh [$39], a
    rra
    jr jr_00a_4bfe

    jr nz, jr_00a_4c00

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
    jr nc, jr_00a_4bda

jr_00a_4bda:
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

jr_00a_4bfe:
    inc c
    ld b, c

jr_00a_4c00:
    rla

jr_00a_4c01:
    jr jr_00a_4c0c

    scf
    jr c, jr_00a_4c55

    ld a, b
    sbc a
    ldh [$60], a
    ld a, a
    dec e

jr_00a_4c0c:
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
    jr jr_00a_4c68

    add b
    add b
    ld b, c
    ld b, b
    ret nz

jr_00a_4c55:
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

jr_00a_4c68:
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
    jp $667e


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
    jr jr_00a_4cb7

jr_00a_4cb7:
    nop
    call z, $ac05
    inc c
    nop
    ld [hl], b
    ld [hl], b
    call z, Call_00a_7afc
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

jr_00a_4cde:
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
    jp $4f7f


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

jr_00a_4d22:
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
    jr nz, jr_00a_4cde

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
    jr c, jr_00a_4d96

    dec h
    dec de
    dec d
    rra
    db $10
    cpl
    jr c, jr_00a_4dd6

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

jr_00a_4d96:
    or $9f
    ld a, l
    ld c, a
    ccf
    inc hl
    rra
    jr jr_00a_4d22

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
    jr nc, jr_00a_4dde

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

jr_00a_4dd6:
    and c
    rst $18
    ld bc, $7e42
    ld b, c
    and c
    rst $18

jr_00a_4dde:
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
    jp Jump_00a_77c3


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
    inc l
    ccf
    scf
    ccf
    dec de

jr_00a_4ea5:
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
    jr jr_00a_4eed

    ccf
    add e
    ld b, $83
    ld [$7e82], sp
    ld b, d
    ccf
    ld hl, $2f3f
    jr nc, jr_00a_4f13

    and [hl]
    inc b
    ret nz

    db $10
    ldh [rHDMA1], a
    ld [hl], c
    ld l, [hl]
    ld e, h
    ld d, [hl]

jr_00a_4eed:
    ld l, d
    ld a, [hl]
    ld h, [hl]
    ld l, d
    ld d, [hl]
    ld h, [hl]
    ld a, [hl+]
    adc d
    adc [hl]
    dec b
    rlca
    and a
    ld [bc], a
    or [hl]
    inc bc
    rst $38
    rst $38
    cp l
    jp $0685


    xor $03
    jp Jump_00a_7eff


    ld a, [hl]
    scf
    nop
    rlca
    jr jr_00a_4f49

    ld l, [hl]
    ld a, [hl]
    db $76
    rst $08
    xor a
    rst $18

jr_00a_4f13:
    add e
    ld b, $e9
    inc b
    ld a, [hl]
    rst $38
    ld a, [hl]
    ld a, [hl]
    jr jr_00a_4ea5

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
    jp nc, Jump_00a_797f

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

jr_00a_4f49:
    ld bc, $91ff
    ld b, c
    rst $38
    add c
    dec c
    cp [hl]
    jp Jump_00a_7f7c


    ld h, b
    ld a, a
    ldh a, [$9f]
    ld hl, sp-$71
    ld a, a
    ld b, a
    jr c, jr_00a_4f96

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
    cp $9b
    dec b
    cp [hl]
    di
    ld a, h
    ld h, a
    jr c, @+$41

jr_00a_4f96:
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

jr_00a_4fdb:
    ccf
    pop hl
    rst $38
    pop af
    ld c, $0e
    rst $00
    rlca
    sbc l
    and e
    rlca
    adc $00
    add d
    ld b, c
    cp $86
    rra
    cp $4e
    cp $32
    cp $04
    db $fc
    db $ec
    db $fc
    add sp, $38
    ret nc

    jr nc, jr_00a_4fdb

    ldh [$60], a
    ld h, b
    rst $10
    or a
    sbc a
    rst $38
    cp e
    db $ed
    ld a, a
    ld e, h
    ld e, e
    ld l, l
    rst $38
    rst $38
    ei
    rlca
    ei
    ld h, d
    db $fd
    ldh [$31], a
    ld e, [hl]
    ld a, a
    ld a, a
    ld l, a
    scf
    ccf
    rra
    rra
    ld a, [bc]
    dec c
    rlca
    rlca
    ld c, $0e
    db $dd
    db $d3
    rst $28
    pop af
    cp a
    pop hl
    rst $18
    pop hl
    cp $c2
    or $ce
    rst $38
    ld sp, hl
    ld a, a
    pop af
    xor [hl]
    ld a, [hl]
    or h
    ld a, h
    ld l, d
    cp $de
    ld a, [c]
    cp $e2
    call c, $38e4
    jr c, jr_00a_5045

    rlca
    rra
    rra
    dec sp
    dec l
    sub e
    add hl, bc

jr_00a_5045:
    ret z

    inc bc
    dec b
    ld b, $03
    inc bc
    add h
    inc b
    nop
    ld a, [de]
    ldh a, [$f8]
    ld hl, sp-$04
    db $fc
    ld [$def6], a
    ld [c], a
    ld a, l
    jp Jump_00a_61bf


    cp a
    ld [hl], c
    ld a, l
    db $eb
    cp $f6
    cp $fe
    ld a, [$5ce6]
    db $e4
    cp b
    cp b
    and l
    dec b
    ld l, d
    ld b, c
    add hl, de
    ld e, $01
    ld e, $1f
    ld b, e
    add hl, de
    ld e, $0d
    dec d
    ld e, $2f
    ld [hl], $37
    ccf
    ld a, l
    ld a, a
    rst $20
    cp $83
    rst $38
    db $fc
    db $fc
    and h
    ld bc, $1860
    rrca
    dec d
    dec de
    inc l
    inc sp
    daa
    add hl, sp
    ld [hl], e
    ld a, [hl]
    ld l, l
    ld a, [hl]
    inc [hl]
    ccf
    dec de
    rra
    ld c, $0f
    inc de
    rra
    dec l
    inc sp
    ld e, d
    ld h, a
    or e
    rst $08
    add l
    ld b, $fe
    ld bc, $8080
    jp $8101


    dec d
    ld [hl], b
    ldh a, [$38]
    ld hl, sp-$64
    ld a, h
    adc $3e
    cp $fe
    ld a, [bc]
    cp $fa
    cp $ae
    sbc $dc
    db $fc
    cp $fe
    rst $38
    rst $38
    and [hl]
    rlca
    ld a, [bc]
    ld [bc], a
    rst $38
    adc b
    rst $38
    add e
    nop
    jr nc, jr_00a_50cd

jr_00a_50cd:
    ret z

    ld [hl+], a
    rst $38
    inc bc
    jp z, Jump_00a_7fff

    ld a, a
    adc l
    ld a, [bc]

jr_00a_50d7:
    db $76
    dec d
    ldh [$e0], a
    ldh a, [$f0]
    jr c, jr_00a_50d7

    xor h
    ld a, h
    ld e, [hl]
    cp $ba
    cp $7a
    cp $d6
    cp $ae
    sbc $74
    adc h
    xor h
    call c, $0a85
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
    rrca
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
    jr jr_00a_514e

    rst $00
    nop
    ld b, a
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

jr_00a_514e:
    ld b, e
    nop
    jp z, Jump_00a_6800

    inc bc
    nop
    nop
    jr jr_00a_5170

    ret


    nop
    ld [hl], a
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

jr_00a_5170:
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
    jr jr_00a_51b7

    jr nc, jr_00a_51d1

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

jr_00a_51b7:
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

jr_00a_51d1:
    inc c
    inc c
    dec h
    jr @-$77

    nop
    or b
    inc bc
    ld a, $3e
    ld h, e
    ld h, e
    adc c
    ld bc, $030c
    ld h, e
    ld h, e
    ccf
    ccf
    add l
    nop
    ld_long $ff2f, a
    ld b, [hl]
    nop
    rst $38
    nop
    nop
    sub b
    ld bc, $2f5e

jr_00a_51f3:
    nop
    rst $38
    dec h
    nop
    inc bc
    ld e, $1e
    dec l
    inc sp
    ld b, c
    ccf
    ld hl, $2d03
    inc sp
    ld e, $1e
    dec l
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

jr_00a_5244:
    inc l
    inc sp

jr_00a_5246:
    rra
    rra
    ldh [$e0], a
    jr jr_00a_5244

    call z, Call_00a_76fc
    cp $fe
    ld a, $be
    sbc $5f
    xor $ed
    dec sp
    rst $18
    add hl, sp
    rst $28

jr_00a_525b:
    add hl, de
    db $ed
    dec de
    xor $9e
    ret z

    jr c, jr_00a_51f3

jr_00a_5263:
    ld [hl], b
    jr nz, jr_00a_5246

    inc hl
    ret nz

    dec e
    jr nc, jr_00a_525b

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
    jr nz, jr_00a_5263

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
    rrca
    ld c, $0e
    ld [hl], a
    ld a, c
    rst $38
    pop hl

jr_00a_52ba:
    cp $e2
    db $e4
    db $fc
    ld hl, sp-$08
    ldh [$e0], a
    add b
    add b
    dec l
    nop
    ldh [$29], a
    rrca
    rra
    ccf
    jr nc, jr_00a_532c

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
    jr nc, jr_00a_534e

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

jr_00a_5302:
    jr c, jr_00a_533c

    nop

jr_00a_5305:
    nop
    ret nz

Jump_00a_5307:
    ldh [rSVBK], a
    ldh a, [$f8]
    jr c, jr_00a_5369

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

jr_00a_532c:
    ld e, b
    ld hl, sp-$08
    ld b, c
    jr c, jr_00a_5302

    ld [bc], a
    jr nc, jr_00a_5305

    jr nc, jr_00a_52ba

    ld bc, $0750
    db $fc
    db $fc

jr_00a_533c:
    cp $fa
    rst $38
    pop af
    dec de
    dec e
    jp $2100


    ld de, $0f0f
    ld de, $201f
    ccf
    ld a, $3f

jr_00a_534e:
    rla
    add hl, de
    ld l, a
    ld a, b
    rst $38
    adc b
    ld a, a
    ld h, b
    ld e, a
    ld [hl], b
    ld b, d
    adc a
    ld hl, sp+$05
    ld d, a
    ld a, b
    ccf
    jr c, jr_00a_5368

    rlca
    add a
    ld bc, $0182
    dec d
    dec de

jr_00a_5368:
    add e

jr_00a_5369:
    ld bc, $038c
    rst $38
    ldh [$5f], a
    ld [hl], b
    ld b, c
    adc l
    ld a, [$8f09]
    ld a, [$7a57]
    ccf
    ld a, $03
    ld [bc], a
    inc bc
    inc bc
    push bc
    nop
    and e
    ld b, c
    ld b, b
    ret nz

    rlca
    ret nz

    ret nz

    and b
    ld h, b
    ret nc

    jr nc, @-$16

    jr jr_00a_53cf

    db $f4
    inc c
    rrca
    ld a, [$fe06]
    ld [bc], a
    ld a, [$f406]
    inc c
    ld hl, sp-$08
    ld a, $3e
    ld e, d
    ld h, [hl]
    db $fd
    jp Jump_00a_7f41


    pop bc
    dec d
    cp a
    pop bc
    rst $38
    add c
    ld a, l
    add e
    db $fd
    inc bc
    cp $02
    rst $30
    rrca
    db $fd
    inc bc
    ld a, [$e406]

jr_00a_53b6:
    inc e
    sbc b
    ld a, b
    ldh [$e0], a
    add a
    ld bc, $17c2
    ldh [$e0], a
    sbc h
    ld a, h
    rst $20
    rra
    rst $30
    dec c
    rst $38
    dec b
    push af
    rrca
    or $0e
    db $f4
    inc c

jr_00a_53cf:
    ld hl, sp+$08
    add sp, $18
    ret nc

    jr nc, jr_00a_53b6

    ldh [$a3], a
    ld bc, $02c4
    inc b
    rlca
    inc b
    ld b, e
    rlca
    dec b
    db $10
    rlca
    ld [$140f], sp
    dec de
    dec l
    inc sp
    ld c, c
    ld [hl], a
    ld b, e
    ld a, a
    ld b, b
    ld a, a
    jr nz, jr_00a_5430

    rra
    rra
    add l

jr_00a_53f4:
    ld [bc], a
    jr nz, jr_00a_53fa

    ld [$0d0f], sp

jr_00a_53fa:
    rrca
    ld b, c
    dec d

jr_00a_53fd:
    rra
    ld bc, $3f25
    ld b, c
    ld b, b
    ld a, a

jr_00a_5404:
    ld b, c
    ld l, c
    ld e, [hl]
    dec bc
    ld c, b
    ld a, a
    jr nz, @+$41

    jr jr_00a_542d

jr_00a_540e:
    rlca
    rlca
    ldh [$e0], a
    jr nz, jr_00a_53f4

    ld b, c
    ld d, b
    or b
    ld bc, $f010
    ld b, d
    jr nz, jr_00a_53fd

    inc bc
    db $10
    ldh a, [$88]
    ld a, b
    ld b, c
    call nz, $073c
    add h
    ld a, h
    inc b
    db $fc
    ld [$f0f8], sp

jr_00a_542d:
    ldh a, [$83]
    ld [bc], a

jr_00a_5430:
    ld h, b
    rlca
    jr nc, jr_00a_5404

    jr z, jr_00a_540e

    ld c, b
    ld hl, sp+$40
    ld hl, sp+$41
    ld b, h

jr_00a_543c:
    db $fc
    inc bc
    nop
    db $fc
    ld [hl+], a
    sbc $41
    ld [hl], d
    adc [hl]
    rlca
    inc h
    call c, $fc0c
    jr nc, jr_00a_543c

    ret nz

    ret nz

    add l
    ld [bc], a
    jr nz, jr_00a_5464

    jr c, jr_00a_5493

    ld d, h
    ld l, a
    cp e
    rst $00
    db $fc
    add e
    rst $38
    add b
    rst $30
    adc b
    xor a
    ret c

    ld a, c
    ld a, [hl]
    ld h, a
    ld e, [hl]

jr_00a_5464:
    ld b, c
    adc h
    ld [bc], a
    ld e, c
    rlca
    ld e, b
    cp b
    inc d
    db $fc
    ld [$1df6], a
    db $e3
    ld b, c
    rst $38
    ld bc, $dd07
    inc hl
    rst $30
    dec sp
    xor h
    ld a, h
    call nz, $85fc
    ld [bc], a
    ld a, d
    dec hl
    nop
    rlca
    inc a
    inc a
    ld b, d
    ld a, [hl]
    cp a
    pop bc
    ld c, a
    ld [hl], b
    add h
    nop
    ld h, $1b
    ret nz

    ld b, e
    ld a, h
    dec a

jr_00a_5493:
    ld a, $03
    inc bc
    rlca
    rlca
    ld c, h
    ld e, a
    ld [hl-], a
    ccf
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
    jr nz, jr_00a_5531

    jr jr_00a_54d3

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

jr_00a_54d3:
    ldh [$e0], a
    jr c, jr_00a_550f

    ld d, h
    ld l, h
    ld e, e
    ld [hl], a
    ld a, l
    db $76
    daa
    jr c, jr_00a_5515

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
    jr nc, jr_00a_5531

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

jr_00a_5500:
    ld [hl+], a
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

jr_00a_550f:
    sbc [hl]
    ld a, c
    db $fc
    db $e3
    dec h
    nop

jr_00a_5515:
    add h
    nop
    add b
    ldh [rNR43], a
    jr c, jr_00a_5500

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
    ld [hl], b

jr_00a_5531:
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
    add hl, bc
    rst $20
    jr jr_00a_5599

    cp a
    sbc a
    rst $38
    and c
    pop hl
    ldh [$e0], a
    cpl
    nop
    rrca
    cp $02
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
    ld bc, $302f
    and h
    ld [bc], a
    ld d, $08
    add hl, de
    ld c, $09
    dec bc
    inc c
    inc b
    rlca
    inc bc
    inc bc
    inc sp
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

jr_00a_5599:
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
    ld b, $5d
    ld a, $3e
    inc e
    ld a, [hl+]
    inc e
    inc e
    ld l, $00
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
    ld de, $7b03
    ld a, h
    rst $08
    ldh a, [$83]
    ld [bc], a
    or $00
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
    jr nz, jr_00a_5624

    ld b, b
    nop
    ld b, b
    ld b, h
    ld b, b
    add b
    dec bc
    ld h, b
    add b
    jr nz, jr_00a_564f

    jr nc, jr_00a_5651

    jr jr_00a_5633

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

jr_00a_5624:
    ld a, a
    add b
    nop
    rst $38
    inc bc
    db $fc
    rrca
    ldh a, [rNR11]
    ldh [rSTAT], a
    ld hl, $83c0
    dec b

jr_00a_5633:
    inc l
    and l
    dec b
    jr nz, @+$03

    ld hl, sp+$04
    ld b, c
    db $fc
    ld [bc], a
    nop
    cp $a8
    dec b
    dec l
    ld bc, $07f8
    ld b, c
    db $fc
    inc bc
    ld b, c

jr_00a_5649:
    cp $01
    ld b, c
    ld a, a
    add b
    ld b, c

jr_00a_564f:
    ccf
    ld b, b

jr_00a_5651:
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

jr_00a_565e:
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
    jr nc, jr_00a_5649

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
    jr nc, jr_00a_565e

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
    nop
    add c
    call z, $ef02
    ld a, [bc]
    ld b, b
    inc h
    ld [bc], a
    ld b, h
    add h
    ld b, d
    ld bc, $0082

jr_00a_56ab:
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
    jr nz, jr_00a_56ab

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
    jr c, jr_00a_57b6

jr_00a_57b6:
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

jr_00a_57f2:
    ld h, d
    add b
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
    ld a, $08
    ldh a, [$f0]
    inc c
    inc e
    ld [bc], a
    ld b, $01
    ld [bc], a
    ld bc, $07af
    ld h, b
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
    jr nz, jr_00a_57f2

    inc b
    cpl
    ld b, $04
    ld [bc], a
    ld de, $040e
    inc bc
    ld b, $a4
    dec b
    ld de, $060b
    ld bc, $020d
    db $10
    ldh [$e0], a
    jr jr_00a_589b

    inc b
    ld a, [bc]
    inc b
    ld b, e
    inc b
    ld [bc], a
    and l
    rlca
    ret nz

    inc b
    jr nc, @+$42

    and b
    ld b, b
    ld h, b
    add [hl]
    dec b
    rrca
    ld b, $bf
    ld b, b
    ld c, a
    jr nc, jr_00a_589b

    rra
    ld [$03a6], sp
    rst $08

jr_00a_5880:
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
    jr jr_00a_5898

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

jr_00a_5898:
    ldh [rSTAT], a
    ld e, b

jr_00a_589b:
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
    jr nz, jr_00a_590f

    ld b, c
    nop
    and b
    dec b
    db $10
    and b
    ld e, [hl]
    and b
    jr nz, jr_00a_5919

    call nz, $f404
    adc b
    inc b
    rst $28
    rlca
    inc a
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
    jr nz, jr_00a_58de

    ld b, e
    jp $140c


jr_00a_58de:
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
    jr z, jr_00a_5880

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

jr_00a_590f:
    add e
    dec b
    ld [hl+], a
    dec b
    inc e
    jr nz, jr_00a_594e

    ld b, b
    ld [hl], b
    add b

jr_00a_5919:
    jp $8407


    adc h
    nop
    pop af
    add h
    ld [bc], a
    jr nz, jr_00a_592b

    dec bc
    inc b
    rlca
    ld [$100e], sp
    inc l
    db $10

jr_00a_592b:
    inc e
    ld b, c
    jr nz, @+$5a

    nop
    jr nz, jr_00a_5973

    jr nc, jr_00a_5974

    ld bc, $40b0
    ld b, a
    ld h, b
    add b
    db $f4
    add hl, sp
    ld [$0490], sp
    inc bc
    nop
    ld bc, $0100
    or b
    ld [$17cf], sp
    ldh a, [$08]
    db $f4
    ld [$0478], sp

jr_00a_594e:
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
    ld e, [hl]
    ld bc, $01be
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

jr_00a_5973:
    cp a

jr_00a_5974:
    nop
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
    dec b
    ret nz

    rst $38
    rst $38
    nop
    rst $38
    rst $38
    and [hl]
    add hl, bc
    sub e
    ld b, c
    rst $38
    nop
    xor c
    add hl, bc
    ret nz

    nop
    xor c
    and h
    add hl, bc
    rl [hl]
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
    ret nz

    cp [hl]
    xor b
    add hl, bc
    db $ed
    ld [de], a
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
    ld a, [bc]
    ld l, a
    sub b
    ld b, $f9
    nop
    rst $38
    sub c
    ld l, [hl]
    nop
    rst $38
    nop
    add l
    add hl, bc
    sbc e
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
    jp nz, Jump_00a_6401

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
    add hl, bc
    add b
    nop
    ld b, b
    add b
    rst $38
    rst $38
    rst $08
    ldh a, [$fc]
    rst $38
    xor a
    ld a, [bc]
    and b
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

    ld [bc], a
    ld a, h
    add e
    rst $38
    add e
    add hl, bc
    db $d3
    dec b
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
    jr jr_00a_5b5b

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

    add b
    nop
    adc b
    nop
    sbc [hl]
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
    dec bc
    rlca
    rlca
    rra
    rra
    ccf
    dec hl
    ld a, l
    ld c, e
    db $fd
    add e
    db $fd
    cp e
    inc h
    rst $38
    ld c, $df
    rst $38
    ldh [$fa], a
    rst $38
    ld [hl], h
    ld a, a
    add hl, hl
    scf
    dec hl
    scf
    inc de
    rra
    inc c
    inc c
    and h
    nop
    nop
    ld b, $84
    ld a, [$fb26]
    daa
    ei
    ld a, a
    inc h
    rst $38
    ld [bc], a
    rst $30
    rst $38
    rrca
    ld b, c
    ld a, [hl]
    cp $00
    db $fc
    call nz, $2400
    dec e
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

jr_00a_5b5b:
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
    jr nc, jr_00a_5bc2

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
    rra
    rra
    inc sp
    ccf
    jr nz, jr_00a_5be6

    jr nc, jr_00a_5be4

    jr z, jr_00a_5be6

    jr nz, jr_00a_5be8

    jr nc, jr_00a_5be2

    jr nz, jr_00a_5be4

    nop
    inc h
    db $10
    ld d, $08
    ld [$8080], sp
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp+$78

jr_00a_5bc2:
    db $fc
    db $fc
    sbc b
    sbc h
    ld d, $1e
    ld a, $3e
    ld e, [hl]
    ld a, [hl]
    ld [hl], $3e
    jr jr_00a_5bf2

    inc e
    inc hl
    jr @+$03

    jr nc, jr_00a_5c06

    and l
    nop
    ld e, [hl]
    ldh [rNR50], a
    inc e
    inc d
    ld a, [hl+]
    ld a, $4b
    ld [hl], l
    sub l

jr_00a_5be2:
    db $eb
    and l

jr_00a_5be4:
    ei
    or l

jr_00a_5be6:
    ei
    or c

jr_00a_5be8:
    rst $38
    add c
    rst $38
    adc c
    rst $38
    pop af
    rst $38
    ld h, c
    ld a, a
    ld b, c

jr_00a_5bf2:
    ld a, a
    ld [hl-], a
    ld a, $0c
    inc c
    nop
    nop
    rrca
    ld c, $31
    ccf
    ld h, b
    ld a, a
    ret nz

    ld b, h
    rst $38
    add b
    ld [$c0ff], sp

jr_00a_5c06:
    rst $38
    ld b, b
    ld a, a
    jr z, jr_00a_5c4a

    ld e, $1f
    and l
    nop
    sbc d
    ldh [rNR44], a
    rra
    rra
    daa
    jr c, @+$61

    ld h, b
    ld a, a
    ld b, b
    cp a
    db $d3
    cp a
    rst $30
    rst $38
    and l
    rst $38
    or a
    rst $38
    add b
    rst $38
    xor b
    rst $38
    xor c
    ld a, a
    ld a, [hl]
    ld a, [hl]
    ld b, c
    ld e, h
    ld h, e
    ccf
    ccf
    nop
    nop
    ldh a, [$f0]
    add sp, $18
    ld b, c
    db $f4
    inc c
    ld de, $06fa
    cp $82
    ld a, [$e286]
    sbc [hl]
    ld [c], a
    ld e, $c6
    ld a, $fc
    db $fc
    ld hl, sp+$18

jr_00a_5c4a:
    ld [hl], b
    ldh a, [$83]
    nop
    sbc d
    ld de, $1f1f
    cpl
    jr nc, @+$81

    ld [hl], c
    ld e, a
    ld a, e
    cp a
    ret nz

    cp a
    add sp, -$43
    db $eb
    ld l, e
    ld a, a
    rra
    rra
    inc hl
    rrca
    add hl, bc
    rra
    rra
    ccf
    ccf
    jr nc, @+$31

    cpl
    jr nc, jr_00a_5c8d

    rra
    add h
    ld bc, $0242
    adc h
    ld [hl], h
    call z, $01a3
    ld h, $11
    and d
    sbc $e2
    cp $f6
    cp $ec
    db $fc
    call c, $b8ec
    ret c

    ld [hl], b
    or b
    ldh [rNR41], a
    ret nz

    ld b, b
    add l

jr_00a_5c8d:
    nop
    sbc d
    jp $4101


    ld bc, $7f40
    ld b, c
    add b
    rst $38
    ld de, $ff81
    cp $ff
    add c
    rst $38
    add a
    rst $38
    rst $38
    db $fc
    ld sp, hl
    add [hl]
    ldh a, [$8f]
    ld a, c
    ld b, [hl]
    ld a, a
    ld a, a
    rst $00
    ld bc, $0ba1
    ld d, b
    ldh a, [rOBP0]
    ld hl, sp-$7c
    db $fc
    ld a, [c]
    ld a, [hl]
    cp $1e
    ld hl, sp+$08
    add h
    ld bc, $e048
    ld h, $02
    db $dd
    inc hl
    rst $38
    ld sp, hl
    ld b, $06
    nop
    nop
    ld a, $3e
    ld b, l
    ld a, a

jr_00a_5ccd:
    add d
    rst $38
    ld a, [$fdff]
    add a
    cp $db
    xor a
    reti


    rst $38
    ret c

    rst $38
    add b
    ld sp, hl
    and [hl]
    ldh a, [$af]
    cp c
    add $5f
    ld h, b
    daa
    jr c, jr_00a_5d05

    rra
    rlc c
    and l
    dec b
    jr nz, jr_00a_5ccd

    ld e, b
    ld hl, sp-$3c
    db $fc
    add h
    ld bc, $08cc
    ld c, $fc
    inc b
    rst $38
    inc bc
    cp $0e
    ldh a, [$f0]
    add a
    ld [bc], a
    ld [bc], a
    rla
    ld [hl+], a
    ld [c], a
    ld d, c

jr_00a_5d05:
    di
    ld c, a
    db $fd

jr_00a_5d08:
    add a
    db $fd
    ei
    ld a, l
    rst $38
    ld bc, $02fe
    ld a, [$f406]
    inc c
    add sp, $18
    jr nc, jr_00a_5d08

    ret nz

    ret nz

    daa
    nop
    ld bc, $0a0a
    ld b, c
    rra
    dec d
    add hl, bc
    rrca
    dec bc
    inc d
    rra
    db $10
    rra
    jr nz, jr_00a_5d6a

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

jr_00a_5d6a:
    jr nc, jr_00a_5daa

    ld hl, $3c41
    inc hl
    ld b, c
    ccf
    jr nz, @+$09

    rra
    db $10
    ccf
    ccf
    ld a, $3e
    ldh [$e0], a
    and e
    ld bc, $1974
    adc b
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
    jr jr_00a_5dc8

    rra

jr_00a_5daa:
    add hl, sp
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

jr_00a_5dc8:
    rst $38
    add a
    cp [hl]
    add $bc
    call nz, $c23e
    ld b, c
    ld a, a
    inc bc
    dec b
    ld a, a
    rlca
    rst $38
    rst $38
    add [hl]
    add [hl]
    add l
    ld bc, $0600
    ld l, d
    ld [hl], l
    ret nc

    rst $28
    sub b
    rst $28
    xor [hl]
    ld b, c
    rst $18
    and b
    ld bc, $81df
    adc [hl]
    ld bc, $8713
    inc bc
    jr nz, jr_00a_5df5

    call nc, $8eef

jr_00a_5df5:
    rst $38
    add e
    inc bc
    inc l
    dec c
    cp a
    jp hl


    cp a
    rst $38
    rst $18
    rst $30
    ld b, a
    ld a, [hl]
    jr nz, @+$41

    inc e
    rra
    rlca
    rlca
    daa
    nop
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

jr_00a_5e5b:
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
    ld b, e
    ld [bc], a
    jr nc, jr_00a_5e5b

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

jr_00a_5e84:
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
    jr nc, jr_00a_5edf

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
    jr jr_00a_5e84

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
    jr nz, jr_00a_5f12

    jr jr_00a_5f16

    rra
    rla
    dec c
    add hl, de
    ld c, $0e
    db $ec

jr_00a_5edc:
    db $ec
    ld e, $f2

jr_00a_5edf:
    ld a, [de]
    or $0b
    db $fd
    ld a, a
    adc c
    cp $b4
    inc b
    ld c, e
    dec e
    jr nc, jr_00a_5edc

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

jr_00a_5f12:
    nop
    ld [hl], h
    sub d
    inc b

jr_00a_5f16:
    adc l
    add a
    inc b
    jr nz, jr_00a_5f1e

    cp b
    rst $00
    db $fc

jr_00a_5f1e:
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
    jr nz, jr_00a_5f83

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
    jr nz, jr_00a_5f7c

    cp $01
    db $fc
    inc bc
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a
    ret nz

    ccf

jr_00a_5f7c:
    add b
    add h
    dec b
    inc l
    dec c
    add b
    ld a, a

jr_00a_5f83:
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

jr_00a_5fb0:
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
    jr nz, jr_00a_5fde

    inc bc
    ld b, b
    ld bc, $0b20
    ld [$1010], sp

jr_00a_5fdd:
    inc hl

jr_00a_5fde:
    nop
    call nz, $e505
    cp a
    dec b
    ldh [rSC], a
    ld [$1000], sp
    ld b, e
    nop
    jr nc, jr_00a_5fb0

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
    ld b, $ff
    rst $38
    add sp, -$10
    and b
    ret nz

    add b
    jr z, jr_00a_600b

jr_00a_600b:
    inc b
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
    nop
    ld a, a
    and h
    nop
    scf
    nop
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
    jr z, @-$3e

    ld b, a
    ld d, h
    dec bc
    ld b, a
    jr nz, jr_00a_5fdd

    ld b, a
    ld a, [bc]
    dec b
    dec bc
    nop
    nop
    ld b, $01

jr_00a_6065:
    add hl, sp
    ld b, $c4
    jr c, @+$29

    ret nz

    jr c, jr_00a_606d

jr_00a_606d:
    and l
    inc bc
    ld e, a
    add hl, bc
    ld [hl], b
    add b
    adc [hl]
    ld [hl], b
    ld de, $e20e
    ld bc, $001e
    and e
    ld [bc], a
    ccf
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
    jp z, Jump_00a_5307

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
    jr nz, jr_00a_6065

    ld b, b
    jr nc, jr_00a_60b8

    ld [$0804], sp
    ld [$0a06], sp
    ld b, d
    ld bc, $4100
    add b
    ld b, b
    ldh [rNR44], a
    add b
    and b

jr_00a_60b8:
    ld b, b
    jr c, jr_00a_60fb

    ld e, a
    jr nz, jr_00a_60ed

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
    jr jr_00a_60f0

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

jr_00a_60ed:
    ld c, a
    ld b, e
    ld b, b

jr_00a_60f0:
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

jr_00a_60fb:
    adc $85
    rlca
    db $db
    ld b, l
    dec h
    jp c, $6002

Call_00a_6104:
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

jr_00a_6136:
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

jr_00a_6154:
    nop
    add a
    rlca
    reti


    ld [de], a
    jr z, jr_00a_619f

    db $10
    jr z, jr_00a_61a2

    jr z, jr_00a_6188

    ld b, h
    nop
    ld b, h
    ld [$2844], sp
    ld b, h
    nop
    ld l, h
    ld b, h
    jr z, jr_00a_617c

    add e
    ld [$e0ab], sp
    dec h
    rst $38
    nop
    nop
    jr nc, jr_00a_6136

    ld d, b
    add b
    ld d, c
    add b
    ld d, a
    add b

jr_00a_617c:
    ld c, a
    sub b
    cpl
    ret nc

    ld l, $d0
    jr z, jr_00a_6154

    inc d
    dec bc
    ld [hl], h
    dec bc

jr_00a_6188:
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
    ret nz

    rst $38
    rst $38

jr_00a_619f:
    or b
    ret nz

    rst $38

jr_00a_61a2:
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

Jump_00a_61bf:
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
    jr jr_00a_622b

    ldh [rNR23], a
    ldh [$1f], a
    jp nz, Jump_00a_6230

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

jr_00a_622b:
    push bc
    add h
    rlca
    daa
    dec b

Jump_00a_6230:
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

jr_00a_6266:
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
    jr nc, jr_00a_6266

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
    jr jr_00a_634d

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

jr_00a_634d:
    ld a, a
    and e
    ld a, [bc]
    cp a
    nop
    inc bc
    jp $3002


    ld [$45bf], sp
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
    add a
    ld bc, $af9e
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

Jump_00a_6401:
    dec c
    rrca
    dec bc
    inc c
    rla
    jr jr_00a_641c

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

jr_00a_641c:
    ld e, [hl]
    xor $f2
    ld a, a
    sub e
    cp d

Call_00a_6422:
    adc $7e
    add $ff
    inc hl
    db $fd
    inc de
    ld a, c
    adc a
    db $fd
    add a
    jp c, Jump_00a_6de6

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
    jr @+$0d

    inc c
    add hl, bc
    ld c, $06
    rlca
    ld bc, $3501
    nop
    ld de, $3f3f
    ld e, a
    ld h, b
    cp a
    ret nz

    cp a
    cp $9f

Jump_00a_645c:
    ldh [$bf], a
    rst $38
    or b
    rst $38
    ld a, a
    ld a, a
    rlca

Call_00a_6464:
    rlca
    add e
    nop
    ld c, d
    db $10
    cpl
    jr nc, jr_00a_649b

    jr c, jr_00a_64cd

    ld [hl], h
    ld e, a
    db $76
    ld e, [hl]
    ld [hl], a
    ld e, a
    ld [hl], e
    ld c, a
    ld a, [hl]
    ld b, a
    ld a, b
    ld b, e
    ld b, c
    ld a, a
    ld e, h
    inc b
    ld a, a
    jr nz, jr_00a_64c0

    rra
    rra
    add a
    nop
    ret nz

    ld [bc], a
    add hl, sp
    inc l
    ld e, a
    ld b, d
    ld [hl], h
    ld a, a
    ld b, $64
    ld e, a
    ld a, b
    ld e, a
    ld h, b
    ld h, a
    ld a, b
    ld b, c
    ld e, e
    ld a, h
    inc bc
    inc hl
    inc a

jr_00a_649b:
    rra
    rra
    xor b
    nop
    ret nz

    nop
    inc c
    ld c, b
    ld a, [c]
    ld c, $e0
    inc hl
    db $e4
    inc e
    ld hl, sp-$08
    inc bc
    inc bc
    dec c
    ld c, $13
    inc e
    daa
    ccf
    ld [hl+], a
    ccf
    jr nz, jr_00a_64f6

    inc hl
    ld a, a
    ld h, l
    ld a, [hl]
    and l
    rst $38
    sub h
    rst $38
    ld d, e

jr_00a_64c0:
    rst $38
    adc b
    rst $38
    sub a
    rst $38
    ld d, d
    ld a, a
    ld [hl-], a
    ccf
    dec c
    dec c
    dec l

Call_00a_64cc:
    nop

jr_00a_64cd:
    ldh [rKEY1], a
    rrca
    rrca
    scf
    jr c, jr_00a_6517

    ld a, h
    ld c, a
    ld a, a
    ld b, d
    ld a, a
    ld h, b
    ld a, a
    cp a
    rst $38
    sub d
    rst $38
    ld l, l
    ld l, a
    ld h, c
    ld h, c
    or $97
    add sp, -$61
    adc a
    rst $38
    ld d, l
    ld a, a
    ld d, b
    ld a, a
    ld c, a
    ld a, a
    ld d, [hl]
    ld a, c
    sbc [hl]
    push af
    sub h
    rst $38
    sub b

jr_00a_64f6:
    rst $38
    sbc a
    rst $38
    ld h, l
    ld a, a
    inc l
    ccf
    add hl, sp
    ccf
    rlca
    rlca
    ldh a, [$f0]
    inc c
    db $fc
    ld [bc], a
    cp $9a
    and $3d
    jp $e719


    ld bc, $81ff
    rst $38
    add [hl]
    cp $8f
    ld sp, hl
    sub e
    db $fd

jr_00a_6517:
    ld de, $f2ff
    cp $92
    cp $a3
    ld bc, $057c
    inc bc
    inc bc
    inc c
    rrca
    db $10
    rra
    add e
    ld bc, $1026
    ld h, b
    ld a, a
    db $e3
    cp a
    and a
    db $fc
    ld h, a
    ld a, l
    dec [hl]
    ccf
    ld d, h
    ld a, a
    ld e, e
    ld a, a
    ld e, h
    ld a, a
    ld d, e
    add e

jr_00a_653d:
    ld bc, $123b
    rrca
    ldh [$e0], a
    jr jr_00a_653d

    inc b
    db $fc
    or $ce
    cp a
    ret


    dec bc
    db $fd
    adc c
    rst $38
    ret


    ld a, a
    jp z, Jump_00a_417e

    ld d, d
    cp $09
    and d
    cp $72
    cp $cc
    db $fc
    ld h, h
    db $fc
    sbc b
    ld hl, sp+$27
    nop
    rla
    ld e, $1e
    dec h
    ccf
    ld d, d
    ld l, a
    ld e, d
    ld h, a
    adc e
    rst $30
    and d
    rst $38
    sbc l
    cp $d7
    cp h
    cp d
    db $dd
    ld c, c
    ld a, a
    cp d
    rst $38
    rst $20
    rst $20
    daa
    nop
    ldh [$5d], a
    ld h, b
    ld h, b
    sub b
    ldh a, [$78]
    ld hl, sp-$3c
    db $fc
    dec [hl]
    call $07fb
    pop af
    rra
    ld de, $c2ef
    cp $86
    cp $1d
    rst $38
    ei
    ei
    ld c, $0e
    dec a
    inc sp
    ld d, c
    ld l, a
    ld c, [hl]
    ld a, [hl]
    sbc a
    pop af
    xor a
    db $fc
    cp a
    and $7f
    ld h, [hl]
    ld l, a
    ld a, h
    ccf
    ld sp, $7f5f
    ld e, [hl]
    ld h, c
    ld e, b
    ld h, a
    jr nz, jr_00a_65f3

    ld d, c
    ld a, a
    ld l, [hl]
    ld l, [hl]
    nop
    nop
    ld a, [de]
    ld a, [de]
    dec h
    ccf
    ld b, l
    ld a, a
    sub c
    rst $28
    xor l
    db $db
    db $ed
    sbc e
    db $fd
    add e
    cp e
    rst $10
    add d
    cp $44
    db $fc
    cp b
    ld hl, sp+$24
    db $fc
    ld a, [$2afe]
    cp $d6
    sub $07
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
    jr nc, jr_00a_6609

    rra
    rlca

jr_00a_65f3:
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

jr_00a_6609:
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
    jr nz, jr_00a_665a

    ld sp, $0287
    ld a, b
    ld bc, $8080
    and e
    nop
    inc c
    dec b
    db $fc
    call nz, Call_00a_6cb4
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
    add hl, de
    jr jr_00a_6670

    cpl
    jr nc, jr_00a_66d3

    ld b, b
    ld e, a
    ld h, e
    ld d, [hl]
    ld l, a
    ld l, a

jr_00a_665a:
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
    jp $c300


    dec bc
    ret nz

    ret nz

    or [hl]

jr_00a_6670:
    or $fb
    db $fd
    adc e
    db $fd
    res 7, l
    push hl
    rra
    ld b, d
    ld [c], a

jr_00a_667b:
    ld e, $0b
    call nz, $843c
    ld a, h
    jr jr_00a_667b

    add sp, -$08
    db $10
    ldh a, [$e0]
    ldh [$c7], a
    nop
    and b
    add hl, de
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
    and a
    ld hl, sp-$11
    or b
    add e
    ld bc, $1be6
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
    rlca
    xor c
    inc bc
    jr nz, jr_00a_66ce

    db $10
    ldh a, [$fe]

jr_00a_66ce:
    ld a, [hl]
    ld b, c
    rst $38
    add c
    ld a, [bc]

jr_00a_66d3:
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
    jr nc, jr_00a_6753

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
    rst $38

jr_00a_674e:
    ld b, $f8
    ccf
    db $fc
    cp a

jr_00a_6753:
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

    dec b
    rst $30
    rst $30
    db $e3
    db $e3
    ld bc, $8501
    nop
    sbc b
    inc b
    ld hl, sp-$08
    call c, Call_00a_7e3c
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
    jr jr_00a_674e

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
    cp a
    ld a, a

jr_00a_67d7:
    ld b, c
    ld a, a
    rst $38
    ldh [rNR44], a
    ccf
    ld a, a
    rlca
    rra
    ld b, h
    jr c, jr_00a_680d

    ld [hl], b
    ld c, b
    jr nc, jr_00a_6849

    ld d, b
    ld c, b
    jr nc, @+$1a

    ld h, b
    ld l, l
    jr nc, jr_00a_6859

    ld d, h
    ld c, h
    jr nc, jr_00a_6807

    ld l, b
    ld e, b
    jr nz, jr_00a_682b

    jr z, jr_00a_684d

    jr z, jr_00a_6806

    jr nc, @+$70

    jr nc, jr_00a_6818

    inc l

Jump_00a_6800:
    add [hl]
    ld bc, $0548
    rra
    rra

jr_00a_6806:
    ccf

jr_00a_6807:
    ccf
    ld a, a
    ld a, a
    and h
    inc b
    add hl, bc

jr_00a_680d:
    ld bc, $ffbf
    ld b, e
    rst $38
    cp a
    ld bc, $ffff
    rst $00
    inc b

jr_00a_6818:
    or c
    inc bc
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

jr_00a_682b:
    and h
    inc b
    cp b
    ld a, [bc]
    inc bc
    di
    rrca
    rst $38
    inc e
    db $e4
    jr c, jr_00a_67d7

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

jr_00a_6849:
    inc bc
    ret nz

    rst $38
    ret nz

jr_00a_684d:
    ld b, c
    add b
    nop
    ld b, $80
    inc bc
    add b
    rlca
    add e
    ld c, $87
    ld b, c

jr_00a_6859:
    dec c
    add [hl]
    inc bc
    ld c, $87
    rlca
    add e
    add $05
    ld c, b
    inc bc
    add b
    ret nz

    rst $38
    nop
    add [hl]
    inc b
    ld e, $05
    inc a
    nop
    rst $38
    inc a
    jp Jump_00a_41ff


    inc a
    jp $c304


    rst $38
    rst $38
    inc a
    inc a
    adc c
    inc b
    xor b
    inc b
    rst $38
    rst $38
    nop
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
    sub h
    db $eb
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
    ldh [rNR41], a
    inc b
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
    jr c, jr_00a_6922

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
    inc bc
    inc bc
    cpl
    nop
    inc b
    ret nz

    ret nz

    jr nz, jr_00a_6909

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
    jr nz, jr_00a_693c

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

jr_00a_6909:
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
    add hl, bc
    ld a, b
    ld [hl], b
    adc h
    db $fc
    ld h, d
    sbc [hl]
    dec bc
    add [hl]
    adc d

jr_00a_6922:
    rlca
    ld b, l
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
    jr z, jr_00a_693c

    ld b, $24
    jr jr_00a_6974

jr_00a_693c:
    inc b
    add sp, -$21
    call nz, $bf41

jr_00a_6942:
    rst $00
    nop
    cp h
    ld b, c
    ld c, h
    ei
    ld b, c
    jr c, jr_00a_6942

jr_00a_694b:
    nop
    rst $38
    ret z

    inc b
    or e
    ld b, d
    rst $38
    nop
    and e
    dec b
    ldh [rTAC], a
    call nz, Call_00a_723c
    ld c, $3a
    ld b, $fa
    rlca
    ld b, c

jr_00a_6960:
    rst $38

jr_00a_6961:
    inc bc
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
    inc c

jr_00a_6974:
    add b
    dec a
    jp nz, Jump_00a_42bd

    jr c, jr_00a_69c2

    jr c, jr_00a_69c1

    jr jr_00a_69a3

    nop
    jr jr_00a_694b

    dec b
    ret nc

    ld b, $c0
    ld b, b
    or b
    ld [hl], b
    ld c, a
    cp a

jr_00a_698b:
    rst $38
    adc d

jr_00a_698d:
    ld b, $e3
    ldh [rNR44], a
    xor d
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
    or c

jr_00a_69a3:
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
    jr jr_00a_69de

    nop
    ld a, a
    ld b, b

jr_00a_69c1:
    add b

jr_00a_69c2:
    nop
    rst $38
    nop
    ldh a, [rNR10]
    pop hl
    jr nz, jr_00a_698d

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
    jr c, jr_00a_6961

    jr c, jr_00a_6960

    ld b, c
    or e

jr_00a_69de:
    ld c, b
    ld b, c
    rst $00
    jr nc, jr_00a_698b

    dec b
    rst $38
    ld b, $00
    inc e
    inc bc
    ldh [rNR32], a
    nop
    ldh [$bf], a
    ld b, $00
    ld b, d
    ld b, b
    add b
    ld b, d
    jr nz, jr_00a_6a36

    ld b, c
    db $10
    jr nz, jr_00a_6a3b

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
    call c, $0922
    adc c
    db $76
    add c
    ld e, d

jr_00a_6a36:
    ld bc, $0182
    ld [bc], a
    nop

jr_00a_6a3b:
    ld bc, $00cb
    and e
    dec b
    inc bc
    ld [bc], a
    inc c
    rrca
    push af
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

jr_00a_6a54:
    inc bc
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
    inc bc
    rst $38
    and l
    rlca
    ld e, [hl]
    ld e, $30
    ld [$0418], sp
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
    rst $38
    rst $38
    rst $38
    adc d
    inc b
    xor c
    ret


    inc b
    or c
    ld bc, $0055
    add $07
    inc a
    inc bc
    rlca
    rlca
    jr c, jr_00a_6ad4

    xor d
    dec b
    push af
    cp a
    rlca
    ret nz

    xor c
    rlca
    sub b
    nop
    jr nc, jr_00a_6a54

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

jr_00a_6ad4:
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


jr_00a_6ae7:
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
    jp $4241


    add c
    rlca
    inc h
    jp Jump_00a_7e00


    ld [$2c66], sp
    ld b, d
    jp $1e08


    ld [$0400], sp
    nop
    ld [$1000], sp
    nop
    jr nz, jr_00a_6b30

jr_00a_6b30:
    and e
    ld [$011b], sp
    rst $38
    xor d
    ld b, [hl]
    nop
    rst $38
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

jr_00a_6b4d:
    call $f3be
    cp h
    add l
    add hl, bc
    sbc b
    ld [bc], a
    rlca
    db $10

jr_00a_6b57:
    ld bc, $0162
    ld b, $0d
    ld c, $33
    inc a
    adc $f0
    jr c, jr_00a_6ae7

    ld [bc], a
    sbc d
    ld b, c
    inc [hl]
    ret nz

    inc bc
    jr c, @-$3e

    jr jr_00a_6b4d

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
    jr z, jr_00a_6b57

    dec h
    jp c, $fb04

    ld a, a
    ld a, a
    rst $38
    ret nz

    ld b, d
    ret nz

    add b
    ld [bc], a
    rst $38
    rst $38
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

jr_00a_6bb7:
    ld de, $837d
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
    ld h, d
    add c
    ld b, [hl]
    add c
    add a
    ld a, [bc]
    ld d, b
    nop
    rst $38
    daa
    rst $28
    ld [bc], a

jr_00a_6bd2:
    rst $00
    rst $10
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
    rlca
    ld b, b
    dec [hl]
    ld b, b
    rrca
    jr nc, jr_00a_6bf5

jr_00a_6bf5:
    rrca
    nop
    or b
    add hl, bc
    adc a
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
    jr nz, jr_00a_6bd2

    jr nc, jr_00a_6bb7

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
    add [hl]
    ld [$bfd0], sp
    rlca
    nop
    ld b, e
    ld [$1710], sp
    nop
    jr c, jr_00a_6c40

    ld d, h
    ld [$0893], sp
    db $10
    add hl, bc
    inc b
    ld c, c

jr_00a_6c40:
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
    ld bc, $efc7
    add $0a
    ld l, c
    ld a, [bc]
    rst $38
    rst $28
    rst $30
    rrca
    rst $18
    ccf
    cp a
    ld a, a
    rst $38
    ld a, a
    ld a, a
    and [hl]
    inc b
    ld sp, $0baf
    ld d, b
    ld b, $fc
    ld hl, sp-$40
    ldh [$80], a
    ret nz

    add b
    and a
    inc b
    inc a
    nop
    nop
    xor a
    dec bc
    ld [hl], b
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
    dec de
    nop
    nop
    rra
    rra
    cpl
    jr nc, @+$60

    ld h, a
    ld a, [hl]
    ld b, a
    ld [hl], a
    ld c, h
    ld c, e
    ld a, l
    ld [hl], a
    ld e, b
    rst $38
    sub [hl]
    rst $38
    sub d
    sub a
    cp $eb
    db $ec
    dec c
    ld c, $0b
    rrca

Call_00a_6cb4:
    ld b, c
    add hl, bc
    ld c, $01
    rlca
    rlca
    cp a
    nop
    jr nz, jr_00a_6cbf

    rlca

jr_00a_6cbf:
    rlca
    ld b, c
    dec b
    ld b, $07
    inc bc
    inc bc
    ld a, l
    ld a, [hl]
    adc e
    cp $97
    ei
    ld b, c
    rst $38
    sub b
    rlca
    sub a
    ei
    adc e
    cp $7d
    ld a, [hl]
    inc bc
    inc bc
    ld b, c
    dec b
    ld b, $0f
    rlca
    rlca
    add b
    add b
    db $fc
    ld a, h
    jp c, $dd26

    db $e3
    xor a
    ld [hl], c
    rst $18
    cp l
    rst $38
    adc l

jr_00a_6cec:
    ld b, c
    di
    dec l
    dec bc
    rst $38
    adc l
    rst $18
    cp l
    xor a
    ld [hl], c
    db $dd
    db $e3
    jp c, $fc26

    ld a, h
    jp $8100


    rra
    rrca
    inc c
    rrca
    ld c, $fb
    cp $87
    db $fc
    ld a, a
    ld a, a

jr_00a_6d0a:
    add b
    rst $38
    ret nz

    rst $38
    ld b, c
    ld a, a
    ld h, c
    ld a, a
    rra
    rra
    dec b
    rlca
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $8001
    add b
    ld [hl+], a
    ret nz

    ldh [$58], a
    ld b, b
    ld b, h
    call nz, $fefa
    xor $9a
    or $8e
    di
    adc a
    ld a, a
    add l
    db $ed
    rla
    rst $38
    rla
    db $f4
    inc e
    ret c

    jr c, jr_00a_6d0a

    jr nc, jr_00a_6cec

    ld [hl], b
    ret nz

    ret nz

    nop
    nop
    rlca
    rlca
    ld c, a
    ld c, h
    xor a
    xor $db
    cp $27
    inc a
    dec de
    rra
    ld b, $07
    inc b
    rlca
    ld [$100f], sp
    rra
    jr nz, @+$41

    ld b, c
    ld a, a
    ld b, a
    ld a, a
    inc a
    inc a
    nop
    nop
    ld [hl], b
    ld [hl], b
    ld c, b
    ld a, b
    call nc, $f4ec
    ld c, h
    ld a, [hl]
    add $ff
    push bc
    cp e
    call $c9f7
    ld a, a
    pop bc
    ld e, [hl]
    ld [c], a
    or [hl]
    adc $fd
    adc e
    ld a, d
    add [hl]
    or h
    call z, $f8f8
    add e
    nop
    cp $03
    ld e, h
    ld a, h
    ld b, e
    ld a, a
    ld b, c
    jr nz, jr_00a_6dc7

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
    adc a
    ld sp, hl
    ld de, $7f46
    jr nz, jr_00a_6dd9

    jr jr_00a_6dbb

    rrca
    rrca
    rlca
    rlca
    ld a, l
    ld a, a
    add c
    rst $38
    ld b, $fe
    ld c, $fe
    ld b, d
    inc b
    db $fc
    ld b, c
    ld h, h
    sbc h
    ld b, c
    inc b
    db $fc
    rlca
    inc c
    db $fc
    ld [$70f8], sp
    ldh a, [$c0]
    ret nz

    dec h

jr_00a_6dbb:
    nop
    db $10
    inc e
    inc e
    inc hl
    ccf
    ld b, b
    ld a, a
    and b
    rst $38
    jp hl


    rst $38

jr_00a_6dc7:
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

jr_00a_6dd9:
    nop
    ldh a, [$a4]
    nop
    di
    dec b
    ld [bc], a
    cp $09
    rst $38
    rlca
    rst $38
    ld b, c

Jump_00a_6de6:
    ld h, d
    sbc [hl]
    ld b, d
    ld [bc], a
    cp $01
    inc b
    db $fc
    add e
    ld bc, $e01c
    ld sp, $0f0f
    inc a
    ccf
    ld e, a
    ld h, e
    dec a
    ld a, $5b
    ld h, a
    ld a, l
    ld l, e
    ld a, a
    ld l, b
    ld a, a
    ld l, c
    ld e, l
    ld h, e
    cp $bf
    ldh a, [$bf]
    ld hl, sp-$01
    ld a, h
    ld c, a
    ld l, e
    ld [hl], a
    inc e
    inc e
    rrca
    rrca
    ld d, $1b
    dec sp
    dec l
    ld a, [hl]
    ld d, l
    ld a, l
    ld d, a
    ld a, a
    ld d, d
    ld a, [hl]
    ld b, c
    ccf
    inc hl
    rra
    ld e, $11
    rra
    ld b, c
    jr nz, @+$41

    rlca
    db $10
    rra
    rrca
    rrca
    add hl, de
    ld d, $0f
    rrca
    dec h
    nop
    add hl, de
    inc bc
    inc bc
    inc e
    rra
    jr nz, jr_00a_6e79

    ld [hl], b
    ld a, a
    xor b
    rst $18
    cp h
    rst $00
    ld h, e
    ld a, a
    db $fc
    rst $38
    ldh a, [$9f]
    pop af
    sbc a
    ld a, a
    ld a, a
    dec l
    inc sp
    ld a, $3e
    cpl
    nop
    inc bc
    ld [bc], a
    ld b, $0d
    dec bc
    jp $d901


    inc bc
    ld e, a
    ld h, b
    ccf
    jr nc, @-$7b

    ld bc, $0bde
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

jr_00a_6e79:
    ld bc, $0083
    cp h
    add e
    ld [bc], a
    jr nz, jr_00a_6e86

    ld a, [bc]
    dec c
    inc c
    dec bc
    add hl, de

jr_00a_6e86:
    ld d, $43
    dec de
    inc d
    ld b, $19
    ld d, $0b
    rrca
    dec b
    dec b
    nop
    add [hl]
    ld [bc], a
    add hl, sp
    daa
    nop
    ld [de], a
    rrca
    rrca
    dec [hl]
    dec sp
    ld e, [hl]
    ld h, d
    cp d
    add $fd
    add e
    rst $38
    add c
    cp [hl]
    jp nz, Jump_00a_645c

    jr z, @+$3a

    db $10
    add e
    nop
    inc e
    inc b
    nop
    ldh [$e0], a
    ret c

    cp b
    ld b, c
    call nc, $41bc
    ret c

    cp b
    rrca
    call z, $f3bc
    adc a
    db $dd
    db $e3
    ld a, [hl]
    cp $1d
    di
    inc de
    rst $38
    inc a
    db $fc
    ldh [$e0], a
    and l
    ld [bc], a
    ld e, [hl]
    rra
    ret nz

    ret nz

    scf
    rst $30
    dec de
    db $fd
    or [hl]
    ld a, [$76ee]
    rst $18
    jp hl


    xor a
    reti


    ld a, $de
    or h
    call c, $ecdc
    inc l
    db $f4
    ld d, $fa
    ld a, e
    db $fd
    rst $18
    xor a
    ld a, h
    ld a, h
    ret nz

    ret nz

    and e
    nop
    ldh a, [$09]
    rst $18
    rst $38
    push af
    dec sp
    ld a, [$ac66]
    call c, $3cdc
    ld b, c
    cp h
    ld h, h
    add hl, bc
    ret c

    cp b

jr_00a_6f03:
    ldh a, [$d0]
    ld e, b
    add sp, -$04
    db $e4
    ret c

    ld e, b
    add l
    ld [bc], a
    sbc h
    inc de

jr_00a_6f0f:
    jr @+$1a

    db $fc
    db $e4
    inc a
    db $e4
    jr jr_00a_6f0f

    jr nz, @-$1e

    ld a, h
    db $fc
    xor [hl]
    ld a, [c]
    ld d, $fa
    inc e
    db $fc
    jr nz, jr_00a_6f03

    and e
    ld [bc], a
    ld e, h
    inc [hl]
    nop
    ld d, $01
    add b
    add e
    add hl, sp
    rst $38
    ld a, [c]
    ld c, $fc
    inc c
    ld [hl], b
    ldh a, [rP1]
    add b
    nop
    nop
    inc c
    inc c
    ld a, [de]
    ld e, $15
    rra
    dec l
    ccf
    ld b, c
    ld e, [hl]
    ld a, a
    dec c
    ld b, b
    ld a, a
    ld c, h
    ld [hl], e
    adc [hl]
    rst $38
    sbc $f3
    sbc [hl]
    rst $38
    ld e, a
    db $76
    ld c, a
    ld a, h
    and l
    ld bc, $079c
    ld [bc], a
    ld [bc], a
    dec b
    rlca
    add hl, bc
    rrca
    ld a, [bc]
    rrca
    ld b, c
    ld [de], a
    rra
    rrca
    ld [de], a
    dec e
    ld [de], a
    rra
    ld a, [bc]
    rrca
    ld a, [de]
    rra
    ld a, [bc]
    rrca
    rra
    ld a, [de]
    dec bc
    inc c
    inc b
    rlca
    and a
    ld bc, $835e
    inc bc
    ld e, $0f
    ld [de], a
    ld e, $29
    ccf
    ld e, h
    ld a, e
    ld b, b
    ld a, a
    sbc [hl]
    rst $38
    sbc a
    ldh [$60], a
    ld a, a
    ccf
    ccf
    ld sp, $0000
    jr c, jr_00a_6fcf

    nop
    ld a, h
    push de
    inc bc
    adc l
    add [hl]
    ld bc, $0a65
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
    inc de
    ret nz

    rst $38
    ld h, b
    ld a, a
    rra
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
    add e
    nop
    xor d
    add hl, bc
    rst $38
    rst $38
    ld a, a
    dec hl
    ld a, a
    ccf
    ld a, a
    ld a, a
    ld e, [hl]
    ld a, a
    adc e
    inc bc
    ld [hl], h
    rrca
    inc l
    ld a, [hl]
    ld b, d
    rst $38

jr_00a_6fcf:
    cp l
    jp $c3bc


    dec a
    jp $c3bd


    ld b, d
    rst $38
    inc [hl]
    ld a, [hl]
    dec hl
    nop
    and e
    ld [bc], a
    ret nz

    inc bc
    add hl, bc
    ld c, $0b
    inc e
    ld b, c
    rla
    jr jr_00a_6ff2

    ld a, a
    ld [hl], b
    ccf
    ld [hl], b
    ld c, a
    ld [hl], b
    ld e, a
    ld h, b
    sbc a

jr_00a_6ff2:
    ldh [rSTAT], a
    cp a
    ret nz

    ld bc, $c0bf
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
    nop
    nop
    add h
    nop
    ret nz

    dec c
    and b
    ldh [$e3], a
    or e
    ld a, h
    rst $38
    or c
    cp $cf
    ldh a, [$bf]
    ret nz

    ld a, a
    add b
    ld b, h
    rst $38
    nop
    nop
    rst $38
    adc l
    inc bc
    inc b
    add hl, bc
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
    jr c, jr_00a_70ab

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
    ld a, $12
    ldh [$b0], a
    ld [hl], b
    ret nc

    ld [hl], b
    ld e, b
    ld a, b

jr_00a_7056:
    ld c, b
    ld e, b
    ld l, b
    ld a, $3e
    ld h, c
    ld a, a
    rst $18
    ldh [$bf], a
    ret nz

    ld a, a
    add h
    inc b
    scf
    rrca
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

jr_00a_708c:
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
    jr jr_00a_70bf

    jr nz, jr_00a_70ea

    jr nz, jr_00a_70eb

jr_00a_70ab:
    ld b, d
    ld b, b
    add b
    add hl, bc
    ld hl, sp+$07
    rst $20
    jr jr_00a_708c

    jr nz, jr_00a_7056

    ld b, b

jr_00a_70b7:
    and b
    ld b, b
    ld b, l
    ld b, b
    add b
    ld b, c
    jr nz, jr_00a_70ff

jr_00a_70bf:
    dec b
    jr jr_00a_70e2

    rlca
    jr jr_00a_70c5

jr_00a_70c5:
    rlca
    ld b, d
    ld b, b
    add b
    ld b, c

jr_00a_70ca:
    and b
    ld b, b
    dec b
    ret c

    jr nz, jr_00a_70b7

    jr jr_00a_70ca

    rlca
    db $f4
    ccf
    dec b
    jr nz, jr_00a_70dc

    ldh [$1f], a
    sbc a
    ld h, b

jr_00a_70dc:
    ld h, b
    adc d
    ld [bc], a
    ld a, [$05a4]

jr_00a_70e2:
    and b
    or d
    ld [bc], a
    ld a, [$8007]
    nop
    ld h, b

jr_00a_70ea:
    add b

jr_00a_70eb:
    sbc a
    ld h, b
    ldh [$1f], a
    xor a
    dec b
    ret nz

    nop
    ret nc

    adc [hl]
    dec b
    dec [hl]
    xor a
    dec b
    ldh [rLY], a
    ld b, b
    add b
    ld b, c
    and b

jr_00a_70ff:
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
    jr c, @-$4f

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
    ld b, b

jr_00a_713a:
    xor a
    ld b, $5f
    ret nc

    ld b, $6f
    xor a
    ld b, $80
    ld [$7efd], sp
    add d
    rst $38
    ld a, l
    add e
    add e
    ld bc, $c601
    dec b
    reti


    ld de, $0080
    ld b, c

jr_00a_7154:
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

jr_00a_716e:
    ld b, $c0
    add e
    dec b
    sub $0b
    inc bc
    rlca
    ld [$170f], sp
    jr @+$0b

    jr nc, jr_00a_719d

    jr nc, @+$62

    jr nc, jr_00a_71c2

    rst $38
    nop
    ld b, $fb
    rlca
    ld hl, sp+$0f
    rst $30
    jr jr_00a_7154

    ld b, c
    jr nc, jr_00a_716e

    nop
    jr nc, jr_00a_713a

    ld b, $e0
    nop
    db $10
    xor [hl]
    ld b, $eb
    nop
    inc de
    and h
    ld b, $fb

jr_00a_719d:
    dec bc
    ld h, l
    jr c, jr_00a_71cb

    dec [hl]
    inc c
    inc sp
    rla
    jr jr_00a_71af

    rrca
    inc bc
    rlca
    add e
    ld [bc], a
    ld e, a
    dec bc
    db $e4

jr_00a_71af:
    jr c, @-$13

    inc [hl]
    db $ec
    inc sp
    rst $30
    jr jr_00a_71af

    rrca
    rst $38
    rlca
    ld b, c
    rst $38
    nop
    xor a
    rlca
    jr nz, jr_00a_71c5

    and a

jr_00a_71c2:
    inc e
    ld d, a
    xor h

jr_00a_71c5:
    inc sp
    and h
    rlca
    dec [hl]
    nop
    rst $18

jr_00a_71cb:
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
    jr nc, jr_00a_71e6

jr_00a_71e6:
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
    jr nz, jr_00a_7248

    dec de
    ld b, b
    add hl, bc
    dec bc
    ld b, b
    inc bc
    jr nz, jr_00a_720f

jr_00a_720f:
    jr jr_00a_7211

jr_00a_7211:
    rlca
    nop
    inc bc
    and e
    rlca
    adc [hl]
    ld bc, $1000
    ld b, c
    nop
    ld [$0003], sp
    jr nc, jr_00a_7221

jr_00a_7221:
    ret nz

    xor a
    rlca
    ret nz

    ld b, c
    stop
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

Call_00a_723c:
    call nz, $34cb
    ld b, c
    rst $30
    ld [$0009], sp
    rst $38
    ld b, d
    add c
    nop

jr_00a_7248:
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
    call nz, Call_00a_6104
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
    inc c
    ld [hl+], a
    inc d
    ld [hl+], a
    ld [hl+], a
    inc d
    ld [$1414], sp
    ld [hl+], a
    ld [hl+], a
    db $dd
    nop

jr_00a_7274:
    nop
    add a
    ld [$0620], sp
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
    jr nz, jr_00a_7274

    ccf
    push bc
    ld [$17c3], sp
    ld bc, $7d82
    ld [hl-], a
    call $8d72
    jp nz, $fe3d

    ld bc, $ff00
    ld [hl], a

jr_00a_72e8:
    ld [hl], $45
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
    ld [$0337], sp
    ld [$0814], sp
    nop
    and a
    nop
    rla
    push bc
    ld [$00fb], sp
    ld [$08c6], sp
    db $f4
    nop
    inc d
    add $08
    db $ec
    ld [de], a
    ld [hl+], a
    inc h
    ld b, e
    ld b, l

jr_00a_7316:
    ld h, e
    ld [hl], a
    ld [hl], $18
    rst $20
    ld d, b
    add b
    jr z, jr_00a_735f

    ld e, a
    jr nz, jr_00a_7362

    ccf
    sub b
    ld h, b
    ld b, c
    jr nz, jr_00a_72e8

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
    jr c, @-$56

    ld d, h
    ld de, $40e6
    and l
    ld c, b
    and l
    jr nz, jr_00a_7316

    xor a
    add hl, bc
    ld b, b
    ld bc, $ff00
    add h
    ld [$c73f], sp
    ld [$8445], sp
    add hl, bc
    ld h, l
    ld d, $24
    jr jr_00a_7372

    inc h
    nop
    rst $20
    nop
    inc h

jr_00a_735f:
    ld b, d
    inc h
    inc h

jr_00a_7362:
    ld b, d
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

jr_00a_7372:
    add c
    ld a, [hl]
    ld [bc], a
    add c
    ld h, [hl]
    add c
    add $09
    sub a
    nop
    sbc c
    ld b, c
    nop
    ld h, [hl]
    ld [bc], a
    nop
    sbc c
    nop
    add a
    add hl, bc
    and b
    add [hl]
    inc b
    ld e, l
    rlca
    rst $38
    sbc c
    ld b, h
    nop
    rst $38
    jp RST_00


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
    inc bc
    ldh a, [$e8]
    ldh a, [$d0]
    add h
    ld [bc], a
    sbc d
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
    dec b
    ld bc, $6303
    ld bc, $7f89
    inc h
    rst $38
    ld [$807f], sp
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
    ldh [$2a], a
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

jr_00a_7419:
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
    cp $ff
    add l
    add hl, bc
    ld h, c
    ld [bc], a
    rst $38
    jr jr_00a_7419

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
    ld a, [bc]
    rst $38
    rst $38
    db $f4
    ld hl, sp-$30
    ldh [$80], a
    ret nz

    ret nz

    add b
    nop
    add [hl]
    ld [bc], a
    ld a, [$0aaf]
    add b
    add l
    dec b
    call nz, $0009
    add b
    ret nz

    add b
    add b
    ret nz

    ret nc

    ldh [$f4], a
    ld hl, sp-$51
    ld a, [bc]
    and b
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
    inc b
    ldh a, [$9f]
    sub b
    sbc a
    rst $38
    adc b
    add hl, bc
    ld l, c
    jr @+$01

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
    jr nz, jr_00a_74aa

jr_00a_74aa:
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

    jr nz, jr_00a_74d8

    ld b, b
    xor d
    rst $38
    ld d, l
    add h
    ld a, [bc]
    db $eb
    ld [bc], a
    ld d, l
    xor d
    rst $38
    and l
    ld a, [bc]
    rst $38
    ld [bc], a
    rst $38
    rst $38
    nop
    add [hl]
    add hl, bc
    xor a
    adc [hl]
    inc b
    ld e, l
    call nz, $2e0b
    ld bc, $b600
    inc a
    nop

jr_00a_74d8:
    ld a, [bc]
    ld l, l
    nop
    rla
    rrca
    rra
    ccf
    ccf
    ld a, a
    rst $38
    ld a, a
    ld a, a
    ld h, $ff
    xor a
    dec bc
    ld [hl], b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_00a_76fc:
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop

Jump_00a_77c3:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_00a_797f:
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_00a_7afc:
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop

Call_00a_7c02:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_00a_7e00:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_00a_7e3c:
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_00a_7eff:
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop

Jump_00a_7f41:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_00a_7f7c:
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ld h, [hl]
    rst $30
    rst $38
    rst $38
    ld e, a
    db $db
    rst $38
    rst $38
    ld a, a
    rst $30
    rst $38
    rst $38
    xor l
    sbc $ff
    rst $38
    db $eb
    dec a
    rst $38
    rst $38
    di
    daa
    rst $38
    rst $38
    rst $38
    ld a, l
    rst $38
    rst $38
    ccf

Jump_00a_7fff:
    nop
