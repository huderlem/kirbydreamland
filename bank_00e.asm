SECTION "ROM Bank $00e", ROMX[$4000], BANK[$e]

    inc bc
    nop
    inc bc
    inc bc
    inc c
    ld h, d
    rrca
    nop
    jr nz, jr_00e_404b

    ld hl, $0b40
    ld h, e
    add b
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
    nop
    inc c
    and l
    nop
    nop
    ld bc, $04f8
    ld b, c
    db $fc
    ld [bc], a
    nop
    cp $a8
    nop
    dec c
    ld bc, $07f8
    ld b, c
    db $fc
    inc bc
    ld b, c

jr_00e_4034:
    cp $01
    ld b, c
    ld a, a
    add b
    ld b, c
    ccf
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

jr_00e_4049:
    ccf
    ret nz

jr_00e_404b:
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
    nop
    dec b
    dec bc
    ld a, [$f205]
    dec c
    db $f4
    ld a, [bc]
    db $e4
    ld a, [de]
    adc b
    ld [hl], h
    jr nc, jr_00e_4034

    and e
    nop
    ld c, h
    add h
    nop
    ld [hl], b
    ld b, $0b
    db $e4
    dec de
    adc b
    ld [hl], a
    jr nc, jr_00e_4049

    or e
    nop
    ld e, h
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
    jr z, jr_00e_408f

jr_00e_408f:
    ld a, [bc]
    ld b, b
    inc h
    ld [bc], a
    ld b, h
    add h
    ld b, d
    ld bc, $0082

jr_00e_4099:
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
    jr nz, jr_00e_4099

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
    ld bc, $e00a
    scf
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
    nop
    rrc l
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
    nop
    and [hl]
    ld [bc], a
    rst $10
    nop
    xor e
    add [hl]
    nop
    and [hl]
    add hl, bc
    jr c, jr_00e_41a4

jr_00e_41a4:
    dec a
    ld b, b
    ld e, a
    add b
    sub l
    nop
    cp d
    nop
    add e
    nop
    ld d, h
    jp Jump_00e_6100


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

jr_00e_41f6:
    ld [bc], a
    inc hl
    rlca
    ld de, $3a00
    ld bc, $12ed

Jump_00e_41ff:
    ld [bc], a
    db $fc
    add hl, hl
    nop
    dec b
    ld d, l
    nop
    xor d
    nop
    rst $38
    nop
    adc a
    ld [bc], a
    jr nc, jr_00e_421d

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

jr_00e_421d:
    rrca
    and l
    ld [bc], a
    ld h, b
    dec b
    ld e, $01
    db $fc
    inc bc
    pop af
    ld c, $a3
    ld [bc], a
    ld l, h
    add hl, bc
    inc e
    ld [bc], a
    ld hl, sp+$06
    ldh [rNR32], a
    add b
    ld a, b
    jr nz, jr_00e_41f6

    dec h
    nop
    ld [$0204], sp
    ld de, $040e

Jump_00e_423e:
    inc bc
    ld b, $01

Jump_00e_4241:
    ld [bc], a
    ld b, c
    ld bc, $0a06
    ld bc, $020d
    db $10
    ldh [$e0], a
    jr @+$3a

    inc b
    ld a, [bc]
    inc b
    ld b, e
    inc b
    ld [bc], a
    and l
    ld [bc], a
    and b
    ld b, $30
    ld b, b
    and b
    ld b, b
    ld h, b
    add b
    ld b, b
    and h
    ld [bc], a
    sub a
    rlca
    cp a
    ld b, b
    ld c, a
    jr nc, jr_00e_4288

    rra
    ld [$a607], sp
    nop
    cp d
    ld c, $01
    ld hl, $9e1e
    ld h, b
    ld b, b
    add b
    sbc b
    ld h, b
    inc h
    jr jr_00e_4285

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

jr_00e_4285:
    ldh [rSTAT], a
    ld e, b

jr_00e_4288:
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
    jr nz, jr_00e_42fc

    ld b, c
    nop
    and b
    dec b
    db $10
    and b
    ld e, [hl]
    and b
    jr nz, jr_00e_4306

    inc h
    nop
    nop
    rst $38
    ret z

    nop
    cp [hl]
    ld b, $c0
    nop
    rst $38
    ld a, [hl]
    add c
    inc b
    ld hl, sp-$79
    ld [bc], a
    and [hl]
    ld bc, $020c
    add e

Jump_00e_42bd:
    nop
    xor $0f
    ld [$2807], sp
    db $10
    ld b, b
    jr nz, jr_00e_42cb

    ld b, e
    jp $140c


jr_00e_42cb:
    adc b
    ld [$2890], sp
    sub b
    sbc a
    inc bc
    jr nz, jr_00e_431b

    ld [bc], a
    add hl, bc
    ld b, $20
    rra
    rra
    ldh [rIE], a
    nop
    ldh [$2a], a
    nop
    ld a, [bc]
    ld [bc], a
    ld bc, $0e11
    adc a
    ld [hl], b
    ld a, [hl]
    add b
    ldh a, [rP1]
    ret nz

    dec hl
    nop
    ld [bc], a
    ld bc, $0205
    add e
    nop
    ld [bc], a
    dec b
    inc e
    jr nz, @+$3a

    ld b, b
    ld [hl], b
    add b

jr_00e_42fc:
    call nz, Call_00e_6402
    adc h
    inc bc
    adc l
    ld h, e
    ld bc, $0b08

jr_00e_4306:
    inc b
    rlca
    ld [$100e], sp
    inc l
    db $10
    inc e
    ld b, c
    jr nz, @+$5a

    nop
    jr nz, jr_00e_4355

    jr nc, jr_00e_4356

    ld bc, $40b0
    ld b, a
    ld h, b

jr_00e_431b:
    add b
    db $f4
    add hl, sp
    inc bc
    ld [hl], b
    inc b
    inc bc
    nop
    ld bc, $0100
    or b
    inc bc
    xor a
    rla
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
    ld e, [hl]
    ld bc, $01be
    add a
    inc b
    ld b, b
    ld b, d
    ldh [rP1], a
    inc b
    ld h, b
    nop
    and b
    nop
    ld b, b
    add e
    inc b
    ld d, a
    nop
    nop
    sbc a
    inc b

jr_00e_4355:
    ld b, b

jr_00e_4356:
    add l
    ld bc, $e060
    inc h
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
    ld [bc], a
    ld b, l
    ld b, c
    rst $38
    nop
    xor c
    inc b
    and b
    nop
    xor c
    and h
    inc b
    xor e
    ld d, $ed
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
    inc b
    call $ef12
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
    nop
    ld d, c
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
    add h
    nop
    and [hl]
    rrca
    rst $28
    db $10
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


Jump_00e_4403:
    cp $c3
    db $fc
    ld b, c
    cp l
    jp nz, Jump_00e_6401

    add e
    add l
    ld bc, $0f74
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
    sbc a
    dec b
    ld b, b
    ld bc, $ffff
    jp $2904


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
    dec b
    add b
    rst $00
    inc b
    cp b
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
    dec b
    xor b
    ld [bc], a
    ld a, h
    add e
    rst $38
    add e
    inc b
    or e
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

jr_00e_4466:
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
    dec b
    cp a
    add [hl]
    inc bc
    ld de, $fe01
    ld bc, $0141
    add c
    dec b
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
    rlca
    ld a, [hl]
    rst $38
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
    call nz, $2a06
    inc bc
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    inc hl
    ld h, e
    nop
    ld a, [hl]
    ret z

    ld b, $38
    ld bc, $3e3e
    inc hl
    ld h, e
    nop
    ld h, b
    adc $06
    ld c, b
    nop
    ld h, e
    ret z

    ld b, $58
    ld bc, $7f7f
    inc hl
    ld h, b
    nop
    ld a, h
    add $06
    ld l, b
    adc l
    ld b, $60
    ld bc, $6060
    add l
    ld b, $40
    inc bc
    ld h, b
    ld h, b
    ld l, a
    ld l, a
    add a
    ld b, $4a
    ld bc, $6363
    adc c
    ld b, $26
    add e
    ld b, $2e
    ld bc, $3c3c
    add hl, hl
    jr jr_00e_4466

    nop
    or l
    ld bc, $0f0f
    dec h
    ld b, $23
    ld h, [hl]
    push bc
    ld b, $a3
    inc b
    ld h, a
    ld h, a
    ld l, h
    ld l, h
    ld a, b
    ret z

    ld b, $c8
    dec hl
    ld h, b
    add e
    ld b, $6e
    rlca
    ld h, e
    ld h, e

Jump_00e_4500:
    ld [hl], a
    ld [hl], a

Jump_00e_4502:
    ld a, a

Call_00e_4503:
    ld a, a
    ld l, e
    ld l, e
    add a
    ld b, $9a
    add hl, bc
    ld h, e
    ld h, e
    ld [hl], e
    ld [hl], e
    ld a, e
    ld a, e
    ld l, a
    ld l, a
    ld h, a
    ld h, a
    rlc [hl]
    sub l
    ld bc, $6363
    adc a
    ld b, $4a
    ld bc, $7e7e
    add e
    ld b, $7c
    adc c
    ld b, $30
    inc bc
    ld l, h
    ld l, h
    ld h, [hl]
    ld h, [hl]
    add a
    ld b, $fe
    dec b
    ld h, b
    ld h, b
    ld a, $3e
    inc bc
    inc bc
    add a
    ld b, $4c
    dec hl
    jr jr_00e_453e

    nop
    nop
    ld h, e

jr_00e_453e:
    ld h, e
    pop de
    rlca
    dec c
    inc hl
    ld h, e
    dec b
    ld [hl], $36
    inc e
    inc e
    ld [$c908], sp
    ld b, $f1
    jp $e906


    inc bc
    ld [hl], $36
    nop
    nop
    add [hl]
    rlca
    ld h, [hl]
    ret z

    rlca
    adc b
    dec h
    ld h, [hl]
    add a
    ld b, $a2
    add e
    ld b, $60
    dec bc
    rlca
    rlca
    ld c, $0e
    inc e
    inc e
    jr c, @+$3a

    ld [hl], b
    ld [hl], b
    ld a, a
    ld a, a
    dec hl
    nop
    inc hl
    ld h, b
    cpl
    rst $38
    ld b, [hl]
    nop
    rst $38
    nop
    nop
    sub b
    rlca
    adc $2f
    nop
    rst $38
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
    adc $00
    ld c, $00
    nop
    cp a
    nop
    nop
    inc c
    cp $01
    db $fc
    inc bc
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a
    ret nz

    ccf
    add b
    add h
    nop
    inc c
    dec c
    add b
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    inc bc
    cp $01
    cp a
    nop
    ld b, b
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
    nop
    add e
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
    nop
    sbc b
    ld bc, $55aa
    call $a100
    nop
    ld d, l
    and e
    nop
    xor l
    ld bc, $5500
    add e
    nop
    or e
    ld bc, $0000
    and e
    nop
    cp c
    ld [bc], a
    nop
    ld a, a
    ld a, a
    inc hl
    ld h, b
    nop
    ld a, h
    add $00
    ret z

    adc l
    nop
    ret nz

    dec c
    ld h, b
    ld h, b
    nop

Call_00e_4602:
    nop
    ld a, $3e
    ld h, e
    ld h, e
    ld h, b
    ld h, b
    ld l, a
    ld l, a
    ld h, e
    ld h, e
    push bc
    nop
    push hl
    dec h
    ld h, e
    nop
    ld a, a
    ret z

jr_00e_4615:
    nop
    ld hl, sp+$03
    inc e
    inc e
    ld [hl+], a
    ld [hl+], a
    adc c
    nop
    db $f4
    inc bc
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    inc hl
    ld h, e
    nop
    ld a, [hl]
    ret z

    ld bc, $c518
    nop
    rst $28
    nop
    ld h, b
    adc $01
    jr z, jr_00e_4634

jr_00e_4634:
    ld h, e
    add $01
    jr c, jr_00e_463f

    rst $38
    rst $38
    add sp, -$10
    and b
    ret nz

jr_00e_463f:
    add b
    jr z, jr_00e_4642

jr_00e_4642:
    inc b
    rst $38
    rst $38
    rra
    rrca
    rlca
    xor d
    ld bc, $0945
    ret nc

    ldh [$e0], a

jr_00e_464f:
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
    ld bc, $2569
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
    ld bc, $47b0
    jr z, jr_00e_464f

    ld b, a
    ld d, h
    dec bc
    ld b, a
    jr nz, jr_00e_4615

    ld b, a
    ld a, [bc]
    dec b
    inc c
    nop
    nop
    ld b, $01

jr_00e_469d:
    add hl, sp
    ld b, $c4
    jr c, @+$29

    ret nz

    jr c, jr_00e_46a5

jr_00e_46a5:
    ldh [rNR50], a
    nop
    ld a, [bc]
    ld [hl], b
    add b
    adc [hl]
    ld [hl], b
    ld de, $e20e
    ld bc, $001e
    inc bc
    ld [hl+], a
    nop
    nop
    call z, $0041
    inc sp
    add l
    ld bc, $054b
    nop
    ld b, b
    nop
    rst $38
    nop
    ld [$0283], sp
    add hl, hl
    jp z, $3302

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
    ld bc, $0a6a
    jr nz, jr_00e_469d

    ld b, b
    jr nc, jr_00e_46f0

    ld [$0804], sp
    ld [$0a06], sp
    ld b, d
    ld bc, $4100
    add b
    ld b, b
    ldh [rNR44], a
    add b
    and b

jr_00e_46f0:
    ld b, b
    jr c, jr_00e_4733

    ld e, a
    jr nz, jr_00e_4725

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
    jr jr_00e_4728

    ldh [rLCDC], a
    add a
    ld bc, $0346
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

jr_00e_4725:
    ld c, a
    ld b, e
    ld b, b

jr_00e_4728:
    ld a, a
    add e
    ld bc, $444d
    rst $38
    nop
    nop
    rst $38
    adc [hl]
    ld [bc], a

jr_00e_4733:
    xor [hl]
    add l
    ld [bc], a
    cp e
    ld b, l
    dec h
    jp c, $6002

    add b
    rst $38
    ld b, l
    rst $38
    jp c, $ff02

    sbc d
    ldh [$bf], a
    ld [bc], a
    ret nc

    nop
    nop
    and h
    nop
    rra
    nop
    rrca
    add h
    nop
    dec b
    add e
    nop
    inc c
    nop
    dec c
    add h
    nop
    rlca
    ld [bc], a
    ccf
    nop
    ld a, a
    add h
    nop
    dec bc
    ret


    ld bc, $0e50
    inc c
    nop
    ld e, $00
    ld a, [hl]
    nop
    rst $38
    nop
    add b

jr_00e_476e:
    nop
    pop bc
    nop
    di
    nop
    ei
    adc d
    ld [bc], a
    or l
    ld [bc], a
    add b
    nop
    ret nz

    adc d
    nop
    dec h
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
    ld [bc], a
    xor a
    nop

jr_00e_478c:
    nop
    add a
    ld [bc], a
    cp c
    ld [de], a
    jr z, jr_00e_47d7

    db $10
    jr z, jr_00e_47da

    jr z, jr_00e_47c0

    ld b, h
    nop
    ld b, h
    ld [$2844], sp
    ld b, h
    nop
    ld l, h
    ld b, h
    jr z, jr_00e_47b4

    add e
    inc bc
    adc e
    ldh [rNR51], a
    rst $38
    nop
    nop
    jr nc, jr_00e_476e

    ld d, b
    add b
    ld d, c
    add b
    ld d, a
    add b

jr_00e_47b4:
    ld c, a
    sub b
    cpl
    ret nc

    ld l, $d0
    jr z, jr_00e_478c

    inc d
    dec bc
    ld [hl], h
    dec bc

jr_00e_47c0:
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
    ld bc, $0775
    and b
    ret nz

    rst $38
    rst $38

jr_00e_47d7:
    or b
    ret nz

    rst $38

jr_00e_47da:
    rst $38
    xor a
    inc bc
    ret nz

    inc bc
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
    call nz, $e503
    add h
    nop
    xor [hl]
    adc d
    nop
    or a
    ldh [$27], a
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

Call_00e_47ff:
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
    jr jr_00e_4863

    ldh [rNR23], a
    ldh [$1f], a
    jp nz, Jump_00e_6230

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

jr_00e_4863:
    push bc
    add h
    ld [bc], a
    rlca
    dec b
    and $01
    nop
    ld a, a
    rst $38
    rst $38
    add $03
    ld [hl-], a
    nop
    rst $38
    add e
    nop
    ld a, d
    ld bc, $0080
    adc c
    inc b
    add b
    add e
    nop
    ld c, d
    ld bc, $00ff
    add h
    nop
    add h
    nop
    xor d
    and h
    inc bc
    db $fc
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
    inc b
    or e
    add e
    inc b
    xor e
    nop

jr_00e_489e:
    nop
    add a
    ld [bc], a
    cp e
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

    inc bc
    ld h, a

jr_00e_48b5:
    ld b, $de
    sbc $92
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
    inc b
    ldh [rSB], a
    dec c
    inc bc
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
    jr nz, jr_00e_48b5

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
    jr nc, jr_00e_489e

    add a
    inc b
    ld a, [hl]
    add e
    ld bc, $017f
    nop
    ld d, l
    add h
    inc bc
    ld a, e
    nop
    rst $38
    ld b, c
    sbc d
    ldh [rP1], a
    add b
    ld [hl+], a
    rst $38
    ld bc, $75ca
    add e
    dec b
    ld d, b
    ld bc, $ffff
    ld b, c
    or l
    dec bc
    and e
    dec b
    ld d, [hl]
    ld bc, $562b
    add e
    dec b
    ld h, b
    ld bc, $ffff
    ld b, c
    ld h, [hl]
    ld [hl+], a
    ld [bc], a
    rst $38
    rst $38
    jr jr_00e_4985

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
    ld l, $07
    rst $38
    rst $38
    ld a, e
    rla
    ei
    rla
    di
    rra
    and e
    ld bc, $0b84
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

jr_00e_4985:
    ld a, a
    and e
    dec b
    sbc a
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
    call nz, $cf05
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
    dec b
    ld c, h
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
    add $05
    rst $28
    ld bc, $817e
    add e
    ld [bc], a
    or c
    ld bc, $ffff
    add a
    dec b
    or b
    nop
    or b
    call nz, $b705
    ld bc, $b4a0
    add a
    dec b
    ret nc

    nop
    rlca
    add $05

jr_00e_49d3:
    rst $10
    inc h
    nop
    ret z

    inc bc
    ei
    inc bc
    rst $38
    nop
    add sp, -$10
    and e
    ld bc, $0174
    nop
    add b
    add [hl]
    ld bc, $af46
    ld b, $2f
    ld [bc], a
    nop
    rla
    rrca
    jp $9d01


    nop
    rst $38
    ret z

    ld bc, $af9a
    ld b, $50
    dec b
    inc a
    inc a
    ld b, d
    ld b, d
    add c
    add c
    inc hl
    xor c
    inc bc

Call_00e_4a03:
    add d
    add d
    rst $00
    ld b, l
    add e
    inc bc
    ld a, e
    ld bc, $3c3c
    add hl, hl
    jr jr_00e_49d3

    ld b, $83
    ld bc, $0f0f
    dec h
    ld b, $23
    ld h, [hl]
    add e
    ld b, $8e
    ld b, $63
    ld h, e
    ld h, a
    ld h, a
    ld l, h
    ld l, h
    ld a, b
    ret z

    ld b, $a8
    dec hl
    ld h, b
    add e
    nop
    adc $07
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
    ld a, [$6309]
    ld h, e
    ld [hl], e
    ld [hl], e
    ld a, e
    ld a, e
    ld l, a
    ld l, a
    ld h, a
    ld h, a
    rlc b
    push af
    ld bc, $6363
    adc a
    ld bc, $012a
    ld a, [hl]
    ld a, [hl]
    add l
    nop
    call c, $0006
    nop
    ld e, l
    ld e, l
    ld d, c
    ld d, c
    db $dd
    call nz, $0807
    add hl, hl
    nop
    inc hl
    jr nc, @+$05

    db $10
    db $10
    jr nz, jr_00e_4a86

    adc c
    ld bc, $0310
    ld l, h
    ld l, h
    ld h, [hl]
    ld h, [hl]
    add a
    ld b, $de
    dec b
    ld h, b
    ld h, b
    ld a, $3e
    inc bc
    inc bc
    add a
    ld bc, $2b2c
    jr jr_00e_4a81

    nop
    nop
    ld h, e

jr_00e_4a81:
    ld h, e
    pop de
    ld b, $ed
    inc hl

jr_00e_4a86:
    ld h, e
    dec b
    ld [hl], $36
    inc e
    inc e
    ld [$c908], sp
    ld b, $d1
    jp $c906


    inc bc
    ld [hl], $36
    nop
    nop
    add [hl]
    rlca
    ld h, [hl]
    ret z

    rlca
    adc b
    dec h
    ld h, [hl]
    add a
    ld b, $82
    add e
    nop
    ret nz

    dec bc
    rlca
    rlca
    ld c, $0e
    inc e
    inc e
    jr c, jr_00e_4ae8

    ld [hl], b
    ld [hl], b
    ld a, a
    ld a, a
    dec hl
    nop
    inc hl
    ld h, b
    cpl
    rst $38
    ld b, [hl]
    nop
    rst $38
    nop
    nop
    adc l
    rlca
    adc $92
    inc bc
    ld h, e
    rst $38
    inc sp
    ld a, a
    dec h
    cp $c5
    nop
    add hl, de
    adc c
    nop
    nop
    rst $08
    nop
    add hl, hl
    push bc
    nop
    add hl, sp
    adc c
    nop
    nop
    rst $08
    nop
    ld c, c
    push bc
    nop
    ld e, c
    adc c
    nop
    nop
    ld hl, sp+$60
    nop
    ld l, c
    ld [bc], a
    ld l, h

jr_00e_4ae8:
    ld [hl], d
    ld a, e
    sbc h
    nop
    ld c, $07
    ld l, a
    ld a, e
    ld [hl], l
    ld l, h
    ld l, a
    ld l, d
    ld l, b
    ld l, l
    adc l
    nop
    inc de
    dec b
    ld c, $10
    ld [hl], e
    ld l, a
    db $10
    ld [hl], d
    ldh a, [$7b]
    nop
    rlca
    ld b, $12
    rrca
    ld [hl], l
    ld [de], a
    ld l, d
    ld l, b
    inc c
    ldh a, [$60]
    nop
    ld a, [bc]
    ld b, $73
    ld l, d
    ld [hl], l
    ld l, e
    ld l, e
    inc c
    ld [hl], d
    ldh a, [rVBK]
    nop
    ld [de], a
    inc bc
    inc h
    dec h
    ld a, a
    ld a, a
    add l
    ld [bc], a
    ld b, b
    inc bc
    ld a, a
    ld a, a
    ld a, [hl-]
    dec sp
    sub c
    nop
    db $10
    ld h, d
    ld h, $00
    ld a, a
    add h
    ld [bc], a
    ld h, b
    ld b, $24
    dec h
    ld a, a
    ld a, [hl-]
    dec sp
    ld [hl+], a
    ld [hl+], a
    sub b
    nop
    ld [de], a
    ld bc, $4f4e
    dec h
    ld a, a
    ld h, d
    ld h, $03
    ld a, [hl-]
    dec sp
    dec hl
    add hl, hl
    sub b
    nop
    ld [de], a
    ld bc, $5250
    jr z, jr_00e_4b74

    inc bc
    ld a, [hl-]
    dec sp
    ld a, [hl+]
    inc l
    sub d
    ld [bc], a
    sub d
    ld b, c
    add hl, hl
    dec hl
    ld [$2c2a], sp
    add hl, hl
    dec hl
    ld a, [hl+]
    ld a, [hl-]
    dec sp
    dec hl
    ld a, [hl+]
    sub d
    ld [bc], a
    sub d
    add [hl]
    ld [bc], a
    add $05
    add hl, hl
    dec hl
    ld a, [hl-]
    dec sp
    add hl, hl
    dec hl

jr_00e_4b74:
    adc a
    nop
    ld [de], a
    inc b
    ld d, l
    ld d, h
    ld d, h
    ld d, [hl]
    inc l
    add h
    ld [bc], a
    rst $00
    nop
    ld d, l
    inc hl
    ld d, h
    nop
    ld d, [hl]
    adc a
    nop
    ld [de], a
    inc bc
    ld e, b
    ld d, a
    ld d, a
    ld e, c
    ld b, d
    add hl, hl
    dec hl
    nop
    ld e, b
    inc hl
    ld d, a
    nop
    ld e, c
    sub b
    nop
    ld [de], a
    ld bc, $2b2e

jr_00e_4b9d:
    add a
    inc bc
    rlca
    ld [bc], a
    ld d, [hl]
    inc l
    add hl, hl
    sub d
    ld [bc], a
    ret nc

    nop
    dec l
    add h
    ld [bc], a
    ret


    nop
    inc l
    add l
    inc bc
    ld [hl+], a
    ld bc, $2b29
    sub d
    inc bc
    ld [hl-], a
    ld bc, $4240
    add l
    inc bc
    ld c, c
    ld [bc], a
    ld h, l
    ld a, h
    ld h, [hl]
    sub d
    ld [bc], a
    sub b
    inc b
    dec l
    ld a, [hl+]
    ld b, c
    ld b, e
    dec hl
    add h
    inc bc
    ld [hl+], a
    ld [hl+], a
    ld a, h
    ld bc, $2c2a
    sub d
    ld [bc], a
    ld a, [c]
    add h
    inc bc
    dec c
    ld [bc], a
    dec hl
    add hl, hl
    dec hl
    ld [hl+], a
    ld a, h
    ld bc, $292b
    sub d
    inc bc
    ld [de], a
    add h
    inc bc
    dec l
    ld bc, $2c2a
    add e
    inc bc
    inc c
    nop
    ld d, [hl]
    adc [hl]
    ld [bc], a
    or c
    rst $38
    dec bc
    db $fc
    inc bc
    di
    rrca
    rst $38
    inc e
    db $e4
    jr c, jr_00e_4b9d

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

    rst $38
    ret nz

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
    dec c
    add [hl]
    inc bc
    ld c, $87
    rlca
    add e
    add $00
    jr z, jr_00e_4c2e

    add b
    ret nz

    rst $38
    nop

jr_00e_4c2e:
    rst $38
    dec h
    nop
    dec b
    inc a
    nop
    rst $38
    inc a
    jp Jump_00e_41ff


    inc a
    jp $c304


    rst $38
    rst $38
    inc a
    inc a
    daa
    nop
    inc hl
    rst $38
    ld [bc], a
    nop
    ld e, d
    and l
    ld b, d
    and h
    ld e, e
    ld bc, $ad52
    inc hl
    rst $38
    inc bc
    cp a
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

    inc d
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
    add b
    add b
    inc l
    nop
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
    jr c, jr_00e_4ce8

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

    jr nz, jr_00e_4ccf

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
    nop
    nop
    ld b, c
    ld b, $83
    ld b, e
    dec c
    add [hl]
    ld b, c
    ld b, $83
    xor a
    ld bc, $2340
    rst $38
    ld b, e

jr_00e_4ccf:
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
    nop
    ld a, h
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

jr_00e_4ce8:
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
    jr z, jr_00e_4d02

    ld b, $24
    jr jr_00e_4d3a

jr_00e_4d02:
    inc b
    add sp, -$21
    call nz, $bf41

jr_00e_4d08:
    rst $00
    nop
    cp h
    ld b, c
    ld c, h
    ei
    ld b, c
    jr c, jr_00e_4d08

    inc b
    rst $38
    rst $38
    nop
    rst $38

jr_00e_4d16:
    rst $38
    rst $00
    nop
    ld b, [hl]
    ld [bc], a
    nop
    rst $38
    nop
    and e
    nop
    ret nz

    rlca
    call nz, Call_00e_723c
    ld c, $3a
    ld b, $fa
    rlca
    ld b, c
    rst $38

jr_00e_4d2c:
    inc bc

jr_00e_4d2d:
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

jr_00e_4d3a:
    ccf
    ld b, d
    add b
    ld a, a
    inc c
    add b
    dec a
    jp nz, Jump_00e_42bd

    jr c, jr_00e_4d8d

    jr c, jr_00e_4d8c

    jr jr_00e_4d6e

    nop
    jr jr_00e_4d16

    nop
    or b
    ld b, $c0
    ld b, b
    or b
    ld [hl], b
    ld c, a
    cp a
    rst $38

jr_00e_4d57:
    adc d
    ld bc, $e0c3
    daa
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

jr_00e_4d6e:
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
    nop
    ld bc, $0e01
    and e
    nop
    xor $1f
    jr jr_00e_4daa

    nop
    ld a, a

jr_00e_4d8c:
    ld b, b

jr_00e_4d8d:
    add b
    nop
    rst $38
    nop
    ldh a, [rNR10]
    pop hl
    jr nz, @-$3b

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
    jr c, jr_00e_4d2d

    jr c, jr_00e_4d2c

    ld b, c
    or e

jr_00e_4daa:
    ld c, b
    ld b, c
    rst $00
    jr nc, jr_00e_4d57

    nop
    rst $18
    ld b, $00
    inc e
    inc bc
    ldh [rNR32], a
    nop
    ldh [$bf], a
    nop
    ldh [rSCY], a
    ld b, b
    add b
    ld b, d
    jr nz, @+$42

    ld b, c
    db $10
    jr nz, jr_00e_4e07

    ld [$0310], sp
    inc b
    ld [$0403], sp
    rst $00
    ld [bc], a
    ld a, c
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
    nop
    inc e
    inc e
    ld [hl+], a
    ld [hl+], a
    inc hl
    ld h, e
    nop
    ld a, a
    call nz, $da02
    inc bc
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    inc hl
    ld h, e
    nop
    ld a, [hl]
    ret z

    ld [bc], a
    add sp, $01
    ld a, $3e
    inc hl
    ld h, e
    nop
    ld h, b
    add $02
    ld hl, sp-$55
    ld [bc], a
    nop

jr_00e_4e07:
    inc bc
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
    inc bc
    dec d
    inc hl
    rst $38
    inc e
    cp $03

jr_00e_4e1b:
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
    ld [bc], a
    ld a, $1b
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


    nop
    ld h, c
    ld [bc], a
    rst $38
    rst $38
    nop
    jp z, Jump_00e_6100

    ld bc, $0055
    add $02
    inc e
    inc bc
    rlca
    rlca
    jr c, jr_00e_4e9b

    xor d
    nop
    push de
    cp a
    ld [bc], a
    and b
    xor c
    ld [bc], a
    ld [hl], b
    nop
    jr nc, jr_00e_4e1b

    ld [bc], a
    ld a, e
    dec b
    rst $30
    nop
    ld a, a
    nop
    db $fd
    nop
    and l
    inc bc
    ret nz

    inc bc
    ei
    nop
    rst $18
    nop
    add e
    ld [bc], a
    ldh [$29], a
    ld h, e
    add e
    ld [bc], a
    xor $01
    ld a, a
    ld a, a
    inc hl
    ld h, b
    nop
    ld a, h
    add $03
    add sp, -$73

jr_00e_4e9b:
    inc bc
    ldh [$0b], a
    ld h, b
    ld h, b
    jp $9b24


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
    inc b
    jr nz, jr_00e_4ece

    nop
    ld a, [hl]
    inc h

jr_00e_4ece:
    jp Jump_00e_4241


    add c
    ld a, [de]
    inc h
    jp $7e00


    ld [$2c66], sp
    ld b, d

jr_00e_4edb:
    nop
    ld bc, $0200
    nop
    inc b
    nop
    ld [$1000], sp
    nop
    jr nz, jr_00e_4ee8

jr_00e_4ee8:
    ld b, b
    nop
    add b
    nop
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
    call $f3be
    cp h
    add l
    inc b
    ld a, b
    ld [bc], a
    rlca
    db $10
    ld bc, $0162
    rlca
    dec c
    ld c, $33
    inc a
    adc $f0
    jr c, jr_00e_4edb

    add e
    ld [bc], a
    ld a, a
    ld b, c
    inc [hl]
    ret nz

    inc bc
    jr c, @-$3e

    jr @-$1e

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
    jr z, @-$27

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
    dec b
    nop
    ld a, b
    nop
    add [hl]
    ld a, b
    ld [bc], a
    ld b, e
    cp $01
    dec bc
    or $09
    and b
    ld e, a
    add b
    ld [hl], b
    nop
    add b
    rra
    nop
    rst $38
    nop
    ld b, d
    ld a, a
    add b
    ld b, c
    dec sp
    ld b, h
    ld b, $91
    ld l, [hl]
    add c
    ld e, d
    add b
    ld b, c
    add b
    add e
    inc b
    ld e, l
    nop
    nop
    ld b, c
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

jr_00e_4f96:
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
    dec b
    jr nc, jr_00e_4fad

jr_00e_4fad:
    rst $38
    daa
    rst $28
    ld [bc], a

jr_00e_4fb1:
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
    inc b
    ld e, d
    rlca
    ld b, b
    dec [hl]
    ld b, b
    rrca
    jr nc, jr_00e_4fd4

jr_00e_4fd4:
    rrca
    nop
    or b
    inc b
    ld l, a
    rlca
    add sp, -$21
    ld b, h
    rst $38
    or a
    ld a, a
    rst $08
    inc a
    add e
    dec b
    ld a, b
    inc bc
    rst $00
    jr nz, jr_00e_4fb1

    jr nc, jr_00e_4f96

    inc b
    sub b
    add e
    nop
    sub $03
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
    inc b

jr_00e_5002:
    or b
    push bc
    inc bc
    ld a, h
    ld [bc], a
    sbc c
    nop
    ld b, h
    add [hl]
    inc bc
    or b
    cp a
    ld bc, $43e0
    ld [$1710], sp
    nop
    jr c, jr_00e_501f

    ld d, h
    ld [$0893], sp
    db $10
    add hl, bc
    inc b
    ld c, c

jr_00e_501f:
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
    dec b
    ld c, h
    ld bc, $efc7
    add $05
    ld c, c
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
    ld h, $ff
    xor a
    ld b, $30
    dec b
    db $fc
    ld hl, sp-$40
    ldh [$80], a
    ret nz

    ld [hl+], a
    add b
    add [hl]
    nop
    and a
    xor a
    ld b, $50
    dec b
    inc a
    inc a
    ld b, d
    ld b, d
    add c
    add c
    inc hl
    xor c
    dec b
    add d
    add d
    rst $00
    ld b, l
    rst $38
    rst $38
    add l
    ld [bc], a
    ldh a, [$03]
    ld h, b
    ld h, b
    ld l, a
    ld l, a
    add a
    ld [bc], a
    ld a, [$6301]
    ld h, e
    adc c
    ld [bc], a
    sub $83
    ld [bc], a
    sbc $01
    inc a
    inc a
    add hl, hl
    jr jr_00e_5002

    nop
    ld d, l
    ld bc, $0f0f
    dec h
    ld b, $23
    ld h, [hl]
    push bc
    ld b, $a3
    inc b
    ld h, a
    ld h, a
    ld l, h
    ld l, h
    ld a, b
    ret z

    ld b, $c8
    dec hl
    ld h, b
    add e
    inc bc
    xor $07
    ld h, e
    ld h, e
    ld [hl], a
    ld [hl], a
    ld a, a
    ld a, a
    ld l, e
    ld l, e
    add a
    ld b, $9a
    add hl, bc
    ld h, e
    ld h, e
    ld [hl], e
    ld [hl], e
    ld a, e
    ld a, e
    ld l, a
    ld l, a
    ld h, a
    ld h, a
    rlc [hl]
    sub l
    ld bc, $6363
    call $f702
    add e
    ld [bc], a
    and $c3
    ld b, $d5
    adc c
    ld [bc], a
    ldh [$03], a
    ld l, h
    ld l, h
    ld h, [hl]
    ld h, [hl]
    add a
    ld b, $fe
    dec b
    ld h, b
    ld h, b
    ld a, $3e
    inc bc
    inc bc
    add a
    rlca
    inc c
    dec hl
    jr jr_00e_50da

    nop
    nop
    ld h, e

jr_00e_50da:
    ld h, e
    pop de
    rlca
    dec c
    inc hl
    ld h, e
    dec b
    ld [hl], $36
    inc e
    inc e
    ld [$c908], sp
    ld b, $f1
    jp $e906


    inc bc
    ld [hl], $36
    nop
    nop
    add [hl]
    rlca
    ld h, [hl]
    ret z

    rlca
    adc b
    dec h
    ld h, [hl]
    add a
    ld b, $a2
    add e
    inc bc
    ldh [$0b], a
    rlca
    rlca
    ld c, $0e
    inc e
    inc e
    jr c, jr_00e_5141

    ld [hl], b
    ld [hl], b
    ld a, a
    ld a, a
    dec hl
    nop
    inc hl
    ld h, b
    cpl
    rst $38
    ld b, [hl]
    nop
    rst $38
    nop
    nop
    sub b
    rlca
    adc $2f
    nop
    rst $38
    inc sp
    ld a, a
    dec h
    ld a, h
    push bc
    nop
    add hl, de
    adc c
    nop
    nop
    rst $08
    nop
    add hl, hl

jr_00e_512b:
    push bc
    nop
    add hl, sp
    adc c
    nop
    nop
    ld hl, sp+$49

jr_00e_5133:
    nop
    ld c, c
    adc l
    nop
    inc d
    dec b
    ccf
    ld l, l
    ld [hl], b
    ld [hl], h
    ld a, d
    ld [hl], b
    ldh a, [rNR42]

jr_00e_5141:
    nop
    ld [$6807], sp
    ld [hl], d
    ld [hl], l
    ld l, [hl]
    ld [hl], c
    ld l, l
    ld a, $73
    ldh a, [rHDMA1]
    nop
    ld [de], a
    dec b
    ld [hl], c
    ld a, $3e
    ld a, d
    ld a, $72
    ldh a, [rLCDC]
    nop
    ld a, [bc]
    ld b, $2e
    ld l, l
    dec l
    ld [hl], h
    ld a, d
    ld a, c
    ld a, a
    ld hl, sp-$5f
    nop
    and c
    ldh a, [$2f]
    nop
    inc d
    inc bc
    jr z, jr_00e_51a6

    dec c
    ld c, $24
    ld a, a
    inc b
    ld b, l
    ld h, b
    ld h, b
    ld c, d
    ld e, d
    sub c
    nop
    ld [de], a
    inc bc
    add hl, hl
    ld a, a
    ld a, a
    rrca
    add h
    ld [bc], a
    ld c, c
    sub [hl]
    ld [bc], a
    ld c, l
    add hl, bc
    ld a, [hl+]
    ld a, a
    ld a, a
    add hl, sp
    jr z, jr_00e_519b

    ld a, a
    ld b, l
    ld b, l
    ld a, a
    sub l
    ld [bc], a
    ld c, [hl]
    add hl, bc
    dec hl
    dec sp
    daa
    ld a, [hl-]
    dec hl
    ld a, [hl-]

jr_00e_519b:
    ld b, l
    ld b, l
    ld a, a
    jr z, jr_00e_5133

    ld [bc], a
    ld c, [hl]
    nop
    jr z, jr_00e_512b

    ld [bc], a

jr_00e_51a6:
    ld b, a
    inc bc
    ld b, l
    ld a, a
    ld a, a
    add hl, hl
    sub e
    ld [bc], a
    ld c, [hl]
    ld bc, $3a2b
    add [hl]
    ld [bc], a
    push bc
    ld bc, $3828
    sub l
    ld [bc], a
    adc l

jr_00e_51bb:
    ld bc, $7f44
    inc h
    ld a, [de]
    ld [bc], a
    ld a, a
    add hl, hl
    ld a, a
    sub h
    ld [bc], a
    adc l
    nop
    ld c, h
    ld h, $36
    ld bc, $7f5c
    sub l
    inc bc
    inc c
    ld bc, $077f
    inc h
    ld b, $00
    rla
    add l
    inc bc
    inc b
    sub e
    ld [bc], a
    ld d, b
    add l
    inc bc
    ld b, d
    daa
    ld [hl], $93
    nop
    ld [de], a
    nop
    rlca
    ld a, [hl+]
    ld b, $94
    nop
    ld [de], a
    nop
    rlca
    sbc c
    inc bc

jr_00e_51f1:
    adc b
    ld b, d
    ld e, c
    ld c, c
    ld b, h
    ld d, a
    ld b, a
    adc a
    nop
    ld [de], a
    ld b, d
    add e
    ld a, a
    nop
    ld a, a
    jr z, jr_00e_5248

    adc l
    nop
    ld [de], a
    rst $38
    dec b
    nop
    rlca
    rlca
    jr jr_00e_5224

    jr nz, jr_00e_524f

    jr nz, jr_00e_5250

    ld b, d
    ld b, b
    add b
    add hl, bc
    ld hl, sp+$07
    rst $20
    jr jr_00e_51f1

    jr nz, jr_00e_51bb

    ld b, b

jr_00e_521c:
    and b
    ld b, b
    ld b, l
    ld b, b
    add b
    ld b, c
    jr nz, jr_00e_5264

jr_00e_5224:
    dec b
    jr jr_00e_5247

    rlca
    jr jr_00e_522a

jr_00e_522a:
    rlca
    ld b, d
    ld b, b
    add b
    ld b, c

jr_00e_522f:
    and b
    ld b, b
    dec b
    ret c

    jr nz, jr_00e_521c

    jr jr_00e_522f

    rlca
    db $f4
    ccf
    nop
    nop
    ld b, $e0
    rra
    sbc a
    ld h, b
    ld h, b
    add b
    add b
    jr z, jr_00e_5246

jr_00e_5246:
    and [hl]

jr_00e_5247:
    nop

jr_00e_5248:
    add b
    jr nc, jr_00e_524b

jr_00e_524b:
    rlca
    add b
    nop
    ld h, b

jr_00e_524f:
    add b

jr_00e_5250:
    sbc a
    ld h, b
    ldh [$1f], a
    xor a
    nop
    and b
    nop
    ret nc

    adc [hl]
    nop
    dec d
    xor a
    nop
    ret nz

    ld b, h
    ld b, b
    add b
    ld b, c
    and b

jr_00e_5264:
    ld b, b
    ld bc, $20d0
    xor a
    nop

jr_00e_526a:
    ldh [rSTAT], a
    rst $38
    nop
    add hl, bc
    cp $01
    db $fd
    ld [bc], a
    ld a, [$f404]
    ld [$10e8], sp
    xor a
    nop
    cp $0d
    dec bc
    inc b
    ret nc

    jr nz, jr_00e_526a

    db $10
    db $f4
    ld [$04fa], sp
    db $fd
    ld [bc], a
    cp $01
    ld b, c
    rst $38
    nop
    xor a
    ld bc, $0e20
    rst $38
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

jr_00e_52a1:
    xor a
    ld bc, $d03f
    ld bc, $af4f
    ld bc, $0860
    db $fd
    ld a, [hl]
    add d
    rst $38
    ld a, l
    add e
    add e
    ld bc, $c601
    nop
    cp c
    ld de, $0080
    ld b, c

jr_00e_52bb:
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

jr_00e_52d5:
    ld bc, $83a0
    nop
    or [hl]
    dec bc
    inc bc
    rlca
    ld [$170f], sp
    jr @+$0b

    jr nc, @+$22

    jr nc, @+$62

    jr nc, jr_00e_5329

    rst $38
    nop
    ld b, $fb
    rlca
    ld hl, sp+$0f
    rst $30
    jr jr_00e_52bb

    ld b, c
    jr nc, jr_00e_52d5

    nop
    jr nc, jr_00e_52a1

    ld bc, $00c0
    db $10
    xor [hl]
    ld bc, $00cb
    inc de
    and h
    ld bc, $0bdb
    ld h, l
    jr c, jr_00e_5332

    dec [hl]
    inc c
    inc sp
    rla
    jr jr_00e_5316

    rrca
    inc bc
    rlca
    add e
    nop
    sub [hl]
    dec bc
    db $e4

jr_00e_5316:
    jr c, @-$13

    inc [hl]
    db $ec
    inc sp
    rst $30
    jr jr_00e_5316

    rrca
    rst $38
    rlca
    ld b, c
    rst $38
    nop
    xor a
    ld [bc], a
    nop
    inc b
    and a

jr_00e_5329:
    inc e
    ld d, a
    xor h
    inc sp
    and h
    ld [bc], a
    dec d
    nop
    rst $18

jr_00e_5332:
    and h
    ld [bc], a
    dec de
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
    jr nc, jr_00e_534d

jr_00e_534d:
    ld [$0430], sp
    ld b, d
    inc [hl]
    ld [bc], a
    ld b, $30
    inc b
    nop
    ld [$f000], sp
    ld h, $a4
    ld [bc], a
    ld h, c
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
    jr nz, jr_00e_53af

    dec de
    ld b, b
    add hl, bc
    dec bc
    ld b, b
    inc bc
    jr nz, jr_00e_5376

jr_00e_5376:
    jr jr_00e_5378

jr_00e_5378:
    rlca
    nop
    inc bc
    and e
    ld [bc], a
    ld l, [hl]
    ld bc, $1000
    ld b, c
    nop
    ld [$0003], sp
    jr nc, jr_00e_5388

jr_00e_5388:
    ret nz

    xor a
    ld [bc], a
    and b
    ld b, c
    stop
    ld b, $2c
    nop
    inc hl
    nop
    call nz, $3400
    add h
    ld [bc], a
    xor b
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
    nop

jr_00e_53af:
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
    ld [hl+], a
    nop
    dec bc
    rst $38
    nop
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

jr_00e_53da:
    db $dd
    nop
    nop
    add a
    inc bc
    nop
    ld b, $94
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
    add [hl]
    inc bc
    dec de
    inc bc
    inc e
    inc e
    ld [hl+], a
    ld [hl+], a
    inc hl
    ld h, e
    nop
    ld a, a
    call nz, Call_00e_4a03
    inc bc
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    inc hl
    ld h, e
    nop
    ld a, [hl]
    add $03
    ld e, b
    ld b, a
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
    inc bc
    add b
    dec b
    nop
    rst $38
    or h
    dec bc
    nop
    rst $38
    ld b, c
    ld l, c
    ld d, $85
    inc bc
    sub b
    jp $9003


    ld [$9e21], sp
    daa
    sbc b
    ld h, $99
    jr nz, jr_00e_53da

    ccf
    push bc

jr_00e_543d:
    inc bc
    and e

jr_00e_543f:
    add hl, bc
    ld bc, $7d82
    ld [hl-], a
    call $8d72
    jp nz, $fe3d

    and e
    inc bc
    adc l
    ld [bc], a
    nop
    ld a, $3e
    inc hl
    ld h, e
    nop
    ld h, b
    ret z

    inc bc
    ret z

    ld bc, $7e7e
    add hl, hl
    ld h, e
    jp $5303


    ld bc, $7f7f
    inc hl
    ld h, b
    nop
    ld a, h
    add $03
    add sp, -$73
    inc bc
    ldh [$0d], a
    ld h, b
    ld h, b
    jr @-$17

    ld d, b
    add b
    jr z, jr_00e_54b6

    ld e, a
    jr nz, jr_00e_54b9

    ccf
    sub b
    ld h, b
    ld b, c
    jr nz, jr_00e_543f

    and e
    inc bc
    add b
    nop
    inc l
    and h
    inc b
    dec b
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
    jr c, jr_00e_543d

    ld d, h
    ld de, $40e6
    and l
    ld c, b
    and l
    jr nz, @-$2f

    xor a
    inc b
    jr nz, jr_00e_54a3

    nop

jr_00e_54a3:
    rst $38
    add h
    inc bc
    rra
    rst $00
    inc bc
    dec h
    add h
    inc b
    ld b, l
    ld d, $24
    jr jr_00e_54c9

    inc h
    nop
    rst $20
    nop
    inc h

jr_00e_54b6:
    ld b, d
    inc h
    inc h

jr_00e_54b9:
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
    nop
    or l
    ld b, d

jr_00e_54c9:
    add c
    ld a, [hl]
    ld [bc], a
    add c
    ld h, [hl]
    add c
    add $04
    ld [hl], a
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
    inc b
    add b
    add [hl]
    inc b
    ld c, b
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
    add $04
    and l
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
    dec c
    ldh a, [$e8]
    ldh a, [$d0]
    ldh [$e0], a
    add b
    add b
    nop
    ld b, b
    add b
    ldh [$c0], a
    ldh [$84], a
    inc b
    jp $f005


    ld hl, sp-$0f
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

jr_00e_5571:
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
    inc b
    ld b, c
    ld [bc], a
    rst $38
    jr jr_00e_5571

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
    nop
    add l
    xor a
    dec b
    ld h, b
    add l
    nop
    and h
    add hl, bc
    nop
    add b
    ret nz

    add b
    add b
    ret nz

    ret nc

    ldh [$f4], a
    ld hl, sp-$51
    dec b
    add b
    rlca
    cp $ff
    rst $38
    cp $7c
    cp $54
    cp b
    add a
    dec b
    adc b
    add l
    dec b
    ld e, b
    ld a, [bc]
    add b
    nop
    ld a, a
    add b
    rst $38
    rst $38
    ldh a, [$9f]
    sub b
    sbc a
    rst $38
    adc b
    inc b
    ld c, c
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
    jr nz, jr_00e_5602

jr_00e_5602:
    jr nz, @-$79

    dec b
    ldh [$0c], a
    inc b
    inc bc
    inc bc
    inc c
    inc c
    sub b
    ret c

    jr nz, jr_00e_5630

    ld b, b
    xor d
    rst $38
    ld d, l
    add h
    dec b
    rlc d
    ld d, l
    xor d
    rst $38
    and l
    dec b
    rst $18
    ld [bc], a
    rst $38
    rst $38
    nop
    adc b
    inc b
    adc a
    inc l
    nop
    call nz, $0e06
    ld bc, $b600
    inc a
    nop
    ld a, [bc]

jr_00e_5630:
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
    ld b, $50
    inc bc
    nop
    nop
    inc a
    inc a
    dec h
    ld h, [hl]
    dec b
    ld a, [hl]
    ld a, [hl]
    ld h, [hl]
    ld h, [hl]
    dec sp
    dec sp
    add l
    inc bc
    ret nz

    inc bc
    ld h, b
    ld h, b
    ld l, a
    ld l, a
    add a
    inc bc
    jp z, $6301

    ld h, e
    adc c
    inc bc
    ld b, [hl]
    add e
    inc bc
    ld c, [hl]
    ld bc, $3c3c
    add hl, hl
    jr @-$3b

    ld b, $73
    ld bc, $0f0f
    dec h
    ld b, $c7
    ld b, $77
    ld b, $63
    ld h, e
    ld h, a
    ld h, a
    ld l, h
    ld l, h
    ld a, b
    ret z

    ld b, $c8
    dec hl
    ld h, b
    add e
    inc bc
    xor $07
    ld h, e
    ld h, e
    ld [hl], a
    ld [hl], a
    ld a, a
    ld a, a
    ld l, e
    ld l, e
    add a
    ld b, $9a
    add hl, bc
    ld h, e
    ld h, e
    ld [hl], e
    ld [hl], e
    ld a, e
    ld a, e
    ld l, a
    ld l, a
    ld h, a
    ld h, a
    rlc [hl]
    sub l
    ld bc, $6363
    adc a
    inc bc
    jp z, Jump_00e_7e01

    ld a, [hl]
    jp $d506


    adc c
    inc bc
    ld d, b
    inc bc
    ld l, h
    ld l, h
    ld h, [hl]
    ld h, [hl]
    add a
    ld b, $fe
    dec b
    ld h, b
    ld h, b
    ld a, $3e
    inc bc
    inc bc
    add a
    inc bc
    call z, $182b
    inc bc
    nop
    nop
    ld h, e
    ld h, e
    pop de
    rlca
    dec c
    inc hl
    ld h, e
    dec b
    ld [hl], $36
    inc e
    inc e
    ld [$c908], sp
    ld b, $f1
    jp $e906


    inc bc
    ld [hl], $36
    nop
    nop
    add [hl]
    rlca
    ld h, [hl]
    ret z

    rlca
    adc b
    rst $00
    ld b, $79
    add a
    rlca
    ld c, d
    dec c
    ld a, a
    ld a, a
    rlca
    rlca
    ld c, $0e
    inc e
    inc e
    jr c, jr_00e_572a

    ld [hl], b
    ld [hl], b
    ld a, a
    ld a, a
    dec hl
    nop
    inc hl
    ld h, b
    cpl
    rst $38
    ld b, [hl]
    nop
    rst $38
    nop
    nop
    sub b
    rlca
    adc $2f
    nop
    rst $38
    inc sp
    ld a, a
    dec h
    cp $c5
    nop
    add hl, de
    adc c
    nop
    nop
    rst $08
    nop
    add hl, hl
    push bc
    nop
    add hl, sp
    adc c
    nop
    nop
    rst $08
    nop
    ld c, c
    ld hl, sp+$4f
    nop
    ld e, c
    dec b
    inc a
    inc [hl]
    ld [hl], a
    inc a
    ld [hl], l
    ld l, a
    ldh a, [rHDMA1]

jr_00e_572a:
    nop
    db $10
    rlca
    ld [hl], a
    ld l, c
    ld l, d
    ld [hl], e
    ld l, h
    ld a, $72
    ld [hl], e
    ldh a, [$63]
    nop
    ld a, [bc]
    inc b
    dec [hl]
    ld a, $6f
    ld l, a
    ld a, c
    sub e
    nop
    inc de
    dec b
    dec [hl]
    ld [hl], b
    ld [hl], b
    ld l, [hl]
    ld a, $72
    ldh a, [$86]
    nop
    dec c
    ld bc, $7f7f
    add h
    ld bc, $f8f6
    inc h
    ld [bc], a
    ld a, [de]
    inc bc
    ld a, a
    ld a, a
    ld a, h
    ld c, d
    ld [hl+], a
    ld a, h
    nop
    ld c, e
    jp Jump_00e_4502


    dec b
    ld a, h
    ld [hl], $37
    ld a, h
    ld c, h
    ld c, [hl]
    adc a
    nop
    ld [de], a
    inc b
    ld a, h
    ld c, e
    ld h, [hl]
    ld d, a
    ld a, h
    add l
    ld [bc], a
    ld b, d
    inc b
    jr c, jr_00e_57b2

    ld a, h
    ld c, l
    ld c, a
    sub b
    ld [bc], a
    ld d, d
    dec c
    ld a, h
    ld e, d
    ld e, c
    ld c, e
    ld c, h
    ld c, [hl]
    ld c, e
    ld a, h
    ld c, d
    ld a, h
    ld [hl], $37
    ld a, h
    ld c, d
    ret nc

    ld [bc], a
    ld h, d
    call nz, $4702
    ld bc, $4f4d
    inc hl
    ld a, h
    ld [bc], a
    jr c, jr_00e_57d5

jr_00e_579c:
    ld c, e
    pop de
    ld [bc], a
    add e
    ld bc, $7c4a
    call nz, Call_00e_4602
    ld b, $4c
    ld c, [hl]
    ld a, h
    ld c, d
    ld [hl], $37
    ld c, d
    sub c
    ld [bc], a
    or b
    add e

jr_00e_57b2:
    ld [bc], a
    ret z

    ld bc, $2e7c
    add h
    ld [bc], a
    and [hl]
    ld [bc], a
    ld [hl], $37
    ld a, h
    pop de
    ld [bc], a
    ld h, e
    dec b
    ld a, h
    ld c, l
    ld c, a
    ld l, $4a
    cpl
    inc hl
    ld a, h
    inc bc
    ld c, e
    ld [hl], $37
    ld a, h
    sub h
    ld [bc], a
    or b
    ld b, c
    cpl
    ld a, h

jr_00e_57d5:
    nop
    ld c, d
    add h
    ld [bc], a
    adc d
    jp nc, $c402

    ld bc, $6060
    ld b, c
    ld h, b
    cpl
    inc h
    ld h, b
    ld bc, $3736
    jp nc, Jump_00e_4403

    ld [hl+], a
    ld a, a
    ld [bc], a
    cpl
    ld a, a
    ld b, [hl]
    inc h
    ld a, a
    ld bc, $3736
    sub l
    nop
    rrca
    ld [bc], a
    ld b, [hl]
    ld a, a
    ld a, a
    ld b, c
    ld d, b
    ld d, d
    ld [bc], a
    jr nc, jr_00e_583b

    add hl, sp
    ld [hl+], a
    jr nc, jr_00e_579c

    nop
    ld [de], a
    ld b, c
    ld d, c
    ld d, e
    ld [bc], a
    ld sp, $3b3a
    ld [hl+], a
    ld sp, $008f
    ld [de], a
    daa
    ld d, h
    rst $10
    inc bc
    ret


    daa
    ld d, l
    push de
    inc bc
    jp hl


    rst $38
    dec h
    nop
    rrca
    jr nz, jr_00e_5844

    ld e, a
    jr nz, jr_00e_5858

    ld c, a
    ld hl, $2058

jr_00e_582c:
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

jr_00e_583b:
    ld e, l
    ld a, [hl+]
    ld d, l
    ld [hl+], a
    ld d, l
    ld hl, $2a56
    ld d, h

jr_00e_5844:
    ld [hl+], a
    ld e, h
    ld hl, $005e
    ld a, a
    jr jr_00e_58ac

    and c

jr_00e_584d:
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

jr_00e_5858:
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
    jr nz, jr_00e_582c

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
    ldh [$65], a
    jr jr_00e_58dc

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
    jr nz, jr_00e_584d

    ld e, $e1
    nop
    cp a
    adc b
    jr nc, jr_00e_58e5

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

jr_00e_58ac:
    ld h, b
    inc h
    jr jr_00e_58b9

    ld b, $02
    pop bc
    db $10
    ldh [rSC], a
    ld a, h
    inc c
    ld [hl], e

jr_00e_58b9:
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
    jr nz, jr_00e_58e2

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

jr_00e_58dc:
    rst $38
    add d
    ld bc, $00a7
    nop

jr_00e_58e2:
    ldh [$29], a
    ld a, d

jr_00e_58e5:
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
    ld bc, $0507
    ld [bc], a
    inc c
    ld [bc], a
    ldh a, [$0c]
    ld [$e4f0], sp
    ld d, e
    nop
    ld bc, $3c3c
    inc hl
    ld h, [hl]
    dec b
    ld a, [hl]
    ld a, [hl]
    ld h, b
    ld h, b
    ld a, $3e
    db $e4
    and c
    nop
    inc bc
    inc e
    inc e
    ld [hl+], a
    ld [hl+], a
    inc hl
    ld h, e
    nop
    ld a, a
    call nz, $0a02
    inc bc
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    inc hl
    ld h, e
    nop

jr_00e_5940:
    ld a, [hl]
    ret z

    ld [bc], a
    jr @+$03

    ld a, $3e
    inc hl
    ld h, e
    nop
    ld h, b
    adc $02
    jr z, jr_00e_594f

jr_00e_594f:
    ld h, e
    ret z

    ld [bc], a
    jr c, jr_00e_5955

    ld a, a

jr_00e_5955:
    ld a, a
    inc hl
    ld h, b
    nop
    ld a, h
    add $02
    ld c, b
    adc l
    ld [bc], a
    ld b, b
    ld bc, $6060
    add l
    ld [bc], a
    jr nz, jr_00e_596a

    ld h, b
    ld h, b
    ld l, a

jr_00e_596a:
    ld l, a
    add a
    ld [bc], a
    ld a, [hl+]
    ld bc, $6363
    adc c
    ld [bc], a

Call_00e_5973:
    ld b, $83
    ld [bc], a
    ld c, $01
    inc a
    inc a
    add hl, hl
    jr jr_00e_5940

    ld bc, $0155
    rrca
    rrca
    dec h
    ld b, $c7
    ld bc, $0659
    ld h, e
    ld h, e
    ld h, a
    ld h, a
    ld l, h
    ld l, h
    ld a, b
    ret z

    ld [bc], a
    xor b
    dec hl
    ld h, b
    add e
    ld [bc], a
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
    ld [bc], a
    ld a, d
    add hl, bc
    ld h, e
    ld h, e
    ld [hl], e
    ld [hl], e
    ld a, e
    ld a, e
    ld l, a
    ld l, a
    ld h, a
    ld h, a
    rlc d
    ld [hl], l
    ld bc, $6363
    adc a
    ld [bc], a
    ld a, [hl+]
    ld bc, $7e7e
    add e
    ld [bc], a
    ld e, h
    adc c
    ld [bc], a
    db $10
    inc bc
    ld l, h
    ld l, h
    ld h, [hl]
    ld h, [hl]
    add a
    ld [bc], a
    sbc $83
    ld bc, $015c
    inc bc
    inc bc
    add a
    ld [bc], a
    inc l
    dec hl
    jr jr_00e_59d7

    nop
    nop
    ld h, e

jr_00e_59d7:
    ld h, e
    pop de
    ld [bc], a
    db $ed
    inc hl
    ld h, e
    dec b
    ld [hl], $36
    inc e
    inc e
    ld [$c908], sp
    ld [bc], a
    pop de
    jp $c902


    inc bc
    ld [hl], $36
    nop
    nop
    add [hl]
    inc bc
    ld b, [hl]
    ret z

    inc bc
    ld l, b
    dec h
    ld h, [hl]
    add a
    ld [bc], a
    add d
    add e
    ld [bc], a
    ld b, b
    dec bc
    rlca
    rlca
    ld c, $0e
    inc e
    inc e
    jr c, jr_00e_5a3e

    ld [hl], b
    ld [hl], b
    ld a, a
    ld a, a
    dec hl
    nop
    inc bc
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    db $e4
    ld b, b
    nop
    inc d
    or e
    ld b, h
    or e
    adc [hl]
    ld [hl], c
    adc d
    ld d, c
    add b
    ld d, e
    add h
    ld d, e
    adc [hl]
    ld d, c
    ld a, [bc]
    sub c
    nop
    sub e
    inc b
    inc de
    ld c, $11
    add e
    inc bc
    xor $00
    add h
    add e
    inc bc
    di
    ld d, $11
    inc b
    sbc b
    inc h
    sbc b
    ld [hl], h
    adc b
    ld d, h
    adc b
    inc b
    sbc b

jr_00e_5a3e:
    ld h, $99
    ld [hl], h
    adc e
    ld d, h
    adc d
    inc b
    sbc d
    inc h
    sbc d
    ld [hl], h
    adc d
    add h
    inc b
    ld c, $04
    sbc e
    ld [hl], h
    adc e
    ld d, [hl]
    adc c
    add e
    inc b
    nop
    dec b
    ld [hl], b
    adc a
    ld d, h
    adc b
    ld bc, $859e
    inc b
    ld [bc], a
    ld b, h
    ld bc, $4100
    ld bc, $07c0
    ld bc, $0000
    jr nz, jr_00e_5a6c

jr_00e_5a6c:
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
    ld b, d
    ld bc, $2300
    nop
    ld [$000c], sp
    rrca
    nop
    ld e, $00
    rrca
    nop
    ld [$0025], sp
    ld b, c
    halt
    inc b

jr_00e_5a98:
    ld b, h
    nop
    halt
    inc d
    rst $00
    inc b
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

jr_00e_5ab0:
    ld c, $f1
    ld a, [bc]
    pop de
    nop
    inc c
    nop
    ld e, $58
    and a
    jr jr_00e_5b23

    ld b, b
    ccf
    ld b, b
    cp a
    add b
    ld a, a
    ld h, d
    dec e
    and e
    inc b
    and b
    inc bc
    ld h, d
    sbc l
    ld h, b
    sbc [hl]
    and l
    inc b
    xor b
    rlca
    ld b, d
    cp h
    jr z, jr_00e_5a98

    inc hl
    call z, $f000
    and h
    inc b
    ld sp, $f004
    inc hl
    call z, $c428
    xor a
    inc b
    ret nz

    jr z, jr_00e_5ae6

jr_00e_5ae6:
    inc b
    ld hl, sp+$50
    adc h
    jr z, jr_00e_5ab0

    xor a
    inc b
    sbc $08
    inc d
    inc hl
    ret nz

    nop
    jr nc, jr_00e_5af6

jr_00e_5af6:
    inc c
    nop
    inc bc
    ld b, c
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
    inc b
    add $02
    ld bc, $0100
    and h
    dec b
    rla
    ld [bc], a
    call nz, $3400
    adc b
    dec b
    dec bc
    ld b, c
    jr nz, jr_00e_5b1e

jr_00e_5b1e:
    add [hl]
    dec b
    nop
    jr nc, jr_00e_5b23

jr_00e_5b23:
    rrca
    rst $38
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
    dec b
    ld d, b
    ret z

    dec b
    ld e, [hl]
    ld b, $c0
    sbc a
    ldh [$80], a
    rst $38
    rst $38
    ld a, a
    xor a
    dec b
    ld [hl], b
    inc c
    pop hl
    nop
    jp $8700


    nop
    ldh a, [rIF]
    ld e, $00
    jp Jump_00e_783c


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
    inc b
    ld h, a
    add l
    dec b
    sub b
    add e
    inc b
    ld h, [hl]
    add l
    dec b
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
    ld [$1824], sp
    jr jr_00e_5bff

    and l
    ld b, d
    ld [hl], d
    add c
    ld [hl], d
    ld c, c
    add c
    ld a, [hl]
    ld b, $81
    dec a
    jp nz, $e618

    ld b, h
    cp b
    ld b, d
    ld b, b
    and b
    xor a
    ld b, $20
    add [hl]
    dec b
    ld c, d
    ld bc, $0000
    add $06
    ld b, a
    ld c, $01
    cp $02
    db $fc
    inc b
    ld hl, sp+$08
    ldh a, [rNR10]
    ldh [rNR41], a
    ret nz

    ld b, b
    add b
    add b
    xor a
    ld b, $4f
    nop
    nop
    ld l, $ff
    nop
    rst $38
    push hl
    ccf
    nop
    sub b
    ld b, $70
    ld b, [hl]
    rst $38
    nop
    adc [hl]
    rlca
    adc $91
    ld b, $7f
    rst $38
    inc sp
    ld a, a
    dec h
    ld a, h
    push bc
    nop
    add hl, de
    adc c
    nop
    nop
    rst $08
    nop
    add hl, hl
    push bc
    nop
    add hl, sp
    adc c
    nop
    nop
    rst $08
    nop
    ld c, c
    push bc
    nop
    ld e, c
    adc c
    nop
    nop
    rst $08
    nop

jr_00e_5bff:
    ld l, c
    push bc
    nop
    ld a, c
    adc c
    nop
    nop
    rst $08
    nop
    adc c
    push bc
    nop
    sbc c
    adc c
    nop
    nop
    rst $08
    nop
    xor c
    push bc
    nop
    cp c
    adc c
    nop
    nop
    rst $08
    nop
    ret


    push bc
    nop
    reti


    ldh a, [$df]
    nop
    nop
    inc hl
    ld a, a
    inc b
    ld a, [hl+]
    jr z, jr_00e_5c55

    ld h, $7f
    ld b, d
    inc hl
    dec d
    ldh a, [rLY]
    nop
    rrca
    ld bc, $7f7f
    add h
    ld bc, $f8f6
    inc h
    ld [bc], a
    ld a, [de]
    ld bc, $7f7f
    inc h
    ld a, l
    nop
    ld h, l
    inc hl
    ld a, a
    nop
    ld h, [hl]
    ret nc

    ld [bc], a
    ld b, [hl]
    add e
    ld [bc], a
    ld a, $88
    ld [bc], a
    ld b, e
    ld [bc], a
    ld a, a
    ld a, a
    ld h, [hl]
    sub [hl]
    ld [bc], a

jr_00e_5c55:
    ld c, [hl]
    add hl, bc
    ld h, l
    ld a, a
    ld a, a
    nop
    inc b
    ld [$7f0c], sp
    ld a, a
    ld h, [hl]
    sub h
    ld [bc], a
    ld c, a
    add e
    ld [bc], a
    ld b, a
    inc bc
    ld bc, $0905
    dec c
    add e
    ld [bc], a
    ld c, c
    sub d
    ld [bc], a
    ld d, b
    add h
    ld [bc], a
    ld b, a
    inc bc
    ld [bc], a
    ld b, $0a
    ld c, $84
    ld [bc], a
    ld c, b
    sub b
    ld [bc], a
    ld d, c
    add l
    ld [bc], a
    ld h, [hl]
    inc bc
    inc bc
    rlca
    dec bc
    rrca
    add l
    ld [bc], a
    ld l, b
    ldh a, [$2f]
    nop
    ld [de], a
    ld bc, $604f
    dec hl
    ld a, a
    ld bc, $4e60
    adc a
    nop
    ld [de], a
    ld bc, $614d
    dec hl
    ld h, h
    ld bc, $4c61
    sbc a
    inc bc
    ld [hl-], a
    ldh a, [$2f]
    inc bc
    ld [hl-], a
    ld bc, $625e
    dec hl
    ld a, a
    ld bc, $5f63
    adc a
    nop
    ld [de], a
    daa
    ld e, d
    rst $10
    inc bc
    ret


    daa
    ld e, e
    push de
    inc bc
    jp hl


    rst $38
    inc hl
    nop
    inc hl
    ld bc, $0309
    inc bc
    dec b
    rlca
    dec bc
    rrca
    ld d, $1f
    inc d
    rra
    ld b, c
    jr z, jr_00e_5d10

    dec c
    ld d, b
    ld a, a
    ld b, b
    ld a, a
    ld a, b
    ld a, a
    ld h, h
    ld a, a
    ld b, e
    ld a, a
    ld d, e
    ld l, [hl]
    ld [hl], c
    ld c, a
    ld b, e
    ld a, c
    ld b, a
    ld b, c
    ld sp, $032f
    inc de
    rra
    rrca
    rrca
    ld b, c
    ld [bc], a
    inc bc
    ld bc, $0101
    add hl, hl
    nop
    ldh [$2b], a
    sbc h
    sbc h
    rst $38
    db $e3
    ld a, a
    sbc a
    sbc $e1
    ei
    db $fc
    rst $38
    inc c
    db $fd
    add [hl]
    db $fc
    ld b, a
    ei
    rst $08
    rst $38
    dec d
    rst $38
    jp hl


    rst $38
    ld sp, $907f
    cp a

jr_00e_5d10:
    ret nc

    rst $28
    ret c

    rst $18
    rst $28
    rst $28
    rst $30
    db $fd
    dec sp
    db $db
    rst $20
    cp $ff
    db $e4
    rra
    ld hl, sp+$7f
    ld b, c
    add b
    rst $38
    dec de
    ld b, c
    rst $38
    ld h, $ff
    add hl, hl
    rst $38
    ld h, [hl]
    cp $98
    sbc b
    nop
    nop
    jr jr_00e_5d4b

    ccf
    daa
    ld a, a
    ld h, c
    cp $82
    ld a, [hl]
    ld b, d
    ccf
    ld hl, $2f3f
    jr nc, jr_00e_5d71

    cpl
    nop
    ld bc, $0303
    ld h, d
    dec b
    ld d, $0d
    ld a, [bc]

jr_00e_5d4b:
    rrca
    ld a, $3b
    ld c, [hl]
    ld a, e
    cp $8b
    cp e
    rst $08
    ld c, [hl]
    ld a, a
    ld [hl], $3f
    ld c, $0f
    ld [bc], a
    inc bc
    ld bc, $0101
    ld bc, $0039
    push bc
    nop
    cp e
    ld b, c
    rlca
    dec b
    ld bc, $0302
    ld b, e
    inc b
    rlca
    add l
    nop
    or [hl]

jr_00e_5d71:
    ld b, d
    ld [bc], a
    inc bc
    adc c
    nop
    or [hl]
    ldh [$3d], a
    ld h, b
    ld h, b
    ldh a, [$90]
    ei
    dec bc
    rst $30
    inc e
    rst $28
    cp c
    rst $18

jr_00e_5d84:
    pop af
    rra
    di
    rra
    rst $30
    rra
    rst $38
    scf
    cp $6f
    rst $30
    cp a
    db $eb
    cp d
    db $ed
    db $ed
    cp [hl]
    rst $38
    or a
    rst $38
    scf
    db $db
    ld [hl], a
    db $fd
    ld e, e
    xor [hl]
    db $dd
    and a
    ld e, [hl]
    db $d3
    cpl
    xor $11
    ld [hl], e
    adc a
    cp a
    call nz, $feff
    ld bc, $00ff
    rst $38
    db $fc
    inc bc
    rst $38
    add b
    ld a, [hl]
    ld h, c
    rra
    rra
    xor c
    nop
    adc $03
    ldh [$e0], a
    db $10

jr_00e_5dbe:
    ldh a, [rSTAT]
    ret nc

    jr nc, jr_00e_5dc8

    ret c

    jr c, jr_00e_5dbe

    jr jr_00e_5d84

jr_00e_5dc8:
    call nc, $fc41
    ld d, h
    ld bc, $dcfc
    ld b, c
    ld hl, sp-$28
    ld [hl+], a
    ldh a, [rNR14]
    or b
    ret z

    ld hl, sp-$7c
    db $fc
    ld c, $fa
    rra
    pop af
    ccf
    pop hl
    ld a, $f2
    ld a, h
    db $fc
    ret nc

    ldh a, [$a0]
    ldh [rLCDC], a
    ret nz

    xor a
    nop
    cp d
    call nz, $3900
    nop
    ld b, $62
    dec b
    inc b
    rlca
    dec b
    ld c, $0b
    dec c
    ld b, c
    ld c, $0b
    inc d
    inc e
    rla
    ld [hl], h
    ld l, a
    ei
    sbc h
    jp hl


    db $76
    sub c
    rst $28
    ld [de], a
    rst $28
    dec de
    and $0f
    ld a, [c]
    rlca
    ld_long a, $fff2
    ld a, [bc]
    ld b, c
    rst $38
    ld bc, $ff0c
    ld [hl], c
    rst $38
    ld a, [hl]
    rst $38
    dec a
    cp $1d
    cp $e6
    rst $38
    rra
    rra
    adc e
    nop
    call z, $021b
    inc bc
    dec b
    ld b, $0f
    rrca
    ccf
    jr nc, @+$01

    rst $08
    ldh a, [$3f]
    ret nz

    ld a, a
    add [hl]
    ld sp, hl

jr_00e_5e38:
    adc b
    rst $30
    db $10
    rst $28
    rla
    rst $28
    add hl, de
    rst $28
    ld a, [de]
    rst $38
    dec de
    or $91
    ld bc, $00a8
    sbc l
    add h
    ld bc, $3bbb
    nop
    add l
    nop
    xor $00
    ld b, $86
    nop
    db $e3
    ld b, e
    ld c, $0b
    dec c
    dec bc
    dec c
    rlca
    dec b
    dec b
    ld b, $0f
    ld a, [bc]
    ld c, $0b
    rrca
    add hl, bc
    rlca
    rlca
    add hl, sp
    nop
    dec b
    inc bc
    inc bc
    ld l, h
    ld l, a
    di
    sbc h
    add h
    nop
    and b
    ld d, $05
    ld a, [bc]
    rrca
    ld c, $0b
    ld e, $1b
    ld l, $3b
    ld e, e
    ld l, a
    ld d, [hl]
    ld l, a
    or [hl]
    rst $08
    cp $87
    ld e, d
    ld h, a
    dec a
    dec a
    ld bc, $af01
    nop
    sub h
    inc bc
    and b
    ld h, b
    ret nc

    jr nc, jr_00e_5e38

    ld bc, $15d0
    cp $f2
    dec bc
    db $fd
    dec b
    rst $38
    ld [bc], a
    cp $1a
    cp $b6
    ld l, [hl]
    db $d3
    cp a
    ld l, [hl]
    or e
    rst $18
    ld h, d
    sbc $63
    cp a
    pop bc
    ld b, e
    cp a
    ret nz

    dec c
    sbc a
    ldh [$e7], a
    ld hl, sp-$41
    ld a, a
    pop de
    ld a, $d3
    inc a
    or b
    ld a, a
    rst $08
    rst $08
    daa
    nop
    rla
    ldh [$e0], a
    ld [hl], c
    sub c
    sub $37
    xor c
    ld l, [hl]
    rst $30
    ld hl, sp-$03
    ld c, $ff
    di
    dec bc
    db $fd
    dec b
    cp $03
    cp $1b
    rst $38
    or [hl]
    ld l, [hl]
    xor l
    ld bc, $01c0
    ret nz

    ld b, b
    add a
    ld bc, $b976
    nop
    cp b
    ld de, $0101
    ld c, $0f
    jr nc, @+$41

    ld h, c
    ld e, a
    pop bc
    cp a
    ld b, d
    cp a
    ld b, e
    cp [hl]
    dec h
    sbc $1f
    db $e4
    ld b, e
    rlca
    db $fc
    ld [bc], a
    inc bc
    cp $01
    ld b, d
    rst $38
    ld b, b
    ld b, c
    rst $38
    and b
    ld b, $ff
    ldh a, [$7f]
    ld a, c
    adc a
    or $f6
    add hl, sp
    nop
    dec b
    ldh [$e0], a
    jr @-$06

    or $6e
    add e
    ld [bc], a
    adc b
    dec de
    ldh a, [$30]
    xor b
    ld a, b
    db $f4
    call z, $0cf4
    ld a, [$fe06]
    ld [de], a
    ld [$f63e], a
    ld c, [hl]
    ld a, [$f786]
    rrca
    rst $30
    dec c
    rst $28
    dec e
    dec e
    ei
    cp $fe
    adc e
    nop
    adc $03
    ld b, $07
    dec bc
    ld c, $41
    dec bc
    dec c
    inc bc
    rra
    rra
    dec h
    ccf
    ld b, d
    ld e, d
    ld h, a
    ld bc, $7f66
    ld b, c
    cp b
    rst $38
    ld b, c
    ld e, b
    ld a, a
    ld b, d
    inc l
    ccf
    ld b, c
    ld e, b
    ld a, a
    ld b, c
    ld d, b
    ld a, a
    ld bc, $3f20
    ld [hl+], a
    rra
    inc b
    rla
    rrca
    ld [$0707], sp
    add a
    ld bc, $15c6
    dec e
    ld e, $25
    ld a, $5e
    ld h, a
    ld e, l
    ld h, a
    ld e, h
    ld h, a
    and h
    rst $38
    sbc h
    rst $38
    add [hl]
    rst $38
    add a
    rst $38
    adc c
    rst $38
    sub [hl]
    ld sp, hl
    ld b, d
    ld d, [hl]
    ld a, c
    ld [bc], a
    add hl, hl
    ccf
    ld l, $90
    inc bc
    xor c
    dec b
    rlca
    dec b
    dec bc
    inc c
    inc b
    rlca
    db $d3
    ld [bc], a
    ld e, e
    add hl, bc
    cp $fe
    ccf
    pop af
    rst $18
    rst $20
    ld a, d
    cp a
    rst $28
    ld [hl], d
    adc e
    ld [bc], a
    and [hl]
    rla
    rst $18
    ldh [$a7], a
    ld hl, sp-$21
    ld a, a
    pop hl
    ld a, [hl]
    ei
    cp h
    ld a, a
    rst $38
    inc a
    rst $28
    rra
    di
    ld a, $ff
    ld a, h
    rst $28
    db $fc
    add a
    ld a, e
    ld a, e
    dec l
    nop
    inc de
    inc e
    inc e
    dec hl
    scf
    rst $38
    rst $28
    dec a
    di
    ld h, d
    rst $38
    call $f0fe
    ld a, a
    adc $ff
    sbc c
    rst $38
    di
    db $fc
    ld [hl+], a
    rst $38
    rrca
    or $ff
    sub a
    rst $28
    sbc c
    sbc h
    rst $38
    di
    ld a, h
    xor $71
    rst $20
    cp a
    ld a, c
    cp $3e
    adc h
    inc b
    dec [hl]
    ldh [rNR52], a
    rrca
    rrca
    ld a, e
    ld a, h
    or l
    adc $7b
    add [hl]
    db $ed
    ld e, $d7
    jr c, @-$11

    inc sp
    cp d
    ld h, a
    push de
    ld l, [hl]
    db $fd
    ld c, [hl]
    ld l, l
    sbc $fe
    rst $18
    rst $18
    rst $38
    ld a, a
    rst $38
    ld a, $ff
    dec a
    cp $1e
    rst $38
    dec bc
    db $fd
    rlca
    cp $11
    ld b, d
    rst $38
    ld [$04a4], sp
    xor c
    add hl, de
    jr nz, @+$01

    jp $0dff


    cp $f7
    ld hl, sp-$21
    inc hl
    db $fc
    db $fc
    rrca
    rrca
    dec sp
    inc a
    push af
    adc $7a
    rst $00
    cp l
    ld h, e
    cp [hl]
    ld h, c
    ld a, h
    jp $02a3


    xor b
    ld d, $f9
    rlca
    ld [hl], d
    adc a
    inc bc
    cp $05
    cp $fa
    db $fd
    cp l
    db $e3
    or a
    rst $38
    sbc a
    rst $38
    adc e
    db $fd
    rlca
    cp $01
    rst $38
    inc b
    and h
    inc bc
    cpl
    nop
    inc b
    add h
    inc b
    xor l
    add hl, bc
    ld h, c
    rst $38
    adc [hl]
    rst $38
    scf
    ld hl, sp-$23
    db $e3
    and $1e
    or l
    ld bc, $01fe
    add b
    add b
    sub l
    inc bc
    ld h, b

jr_00e_606b:
    ld b, c
    db $f4
    inc c
    rrca
    add sp, $18
    jr jr_00e_606b

    add sp, -$08
    adc b
    ld hl, sp+$38
    ld hl, sp+$7c
    call nz, $84fc
    ld a, b
    ld a, b
    adc l
    ld [bc], a
    ld a, h
    ldh [$28], a
    ldh [$a0], a
    ld [hl], b
    sub b
    ld l, b
    sbc b
    db $f4
    inc c
    db $fc
    inc b
    ld a, [$f206]
    ld c, $59
    cp a
    or l
    rst $38
    rst $28
    di
    cp a
    rst $38
    cp a
    db $eb
    cp a
    rst $28
    rst $38

jr_00e_609f:
    push af
    db $fd
    rrca
    sbc e
    ld h, a
    ld [hl], a
    ld sp, hl
    ei
    db $fd
    ld h, [hl]
    cp $ec
    inc e
    ld hl, sp-$76
    dec b
    scf
    and h
    inc bc
    adc d
    ldh [$38], a
    jr nc, jr_00e_609f

    ld a, b
    cp h
    db $f4
    cp [hl]
    jp z, $c7bf

    rst $18
    ld h, a
    ld [c], a
    ccf
    db $dd
    ld a, $b5
    ld a, e
    ld d, e
    rst $28
    xor [hl]
    rst $18
    ld e, a
    cp [hl]
    cp a
    ld a, a
    rst $38
    rst $38
    cp a
    ld a, a
    cp a
    ret nz

    rst $38
    ld a, a
    ld h, b
    cp a
    sub e
    db $fc
    db $76
    reti


    ld l, c
    sbc $6b
    call c, $ddaa
    push af
    sbc d
    rst $18
    ld a, $a9
    ld [hl], a
    rst $08
    ldh a, [$63]
    ld a, h
    rra
    rra
    add [hl]
    dec b
    add d
    ldh [rNR50], a
    jr jr_00e_6151

    or h
    cp $ae
    rst $38
    and a
    ld l, [hl]
    or e
    cp a
    ld [hl], c
    xor a
    ld a, b

Jump_00e_6100:
    push de
    ld l, [hl]
    ld a, e
    rst $00
    sub h
    rst $28
    set 7, h
    push af
    ei
    rst $10
    rst $28
    ld a, a
    sbc a
    rst $28
    ldh a, [$bf]
    ld a, a
    add sp, -$61
    ld d, a
    db $ec
    ld a, [hl+]
    rst $30
    ld b, c
    rra
    ld a, [c]
    rrca
    ld a, [de]
    rst $30
    dec l
    or $d7
    db $ed
    xor $1f
    cp e
    ld a, h
    rst $30
    ld hl, sp+$11
    rra
    ld c, $0e
    and e
    ld [bc], a
    add $01
    ld a, [bc]
    dec c
    ld b, c
    rla
    add hl, de
    ld b, h
    cpl
    jr nc, jr_00e_6143

    inc h
    dec sp
    daa
    ccf
    dec e
    rra
    rla
    dec e
    rrca
    inc c

jr_00e_6143:
    rra
    and e
    inc bc
    ld h, a
    rlca
    inc a
    daa
    add hl, sp
    rra
    rra
    dec b
    rlca
    ld c, $41

jr_00e_6151:
    rrca
    ld a, [bc]
    inc c
    rrca
    dec bc
    ld e, $1f
    rra
    ld a, $39
    ld l, a
    ld [hl], b
    ld c, a
    ld [hl], b
    ccf
    ccf
    inc hl
    nop
    add l
    ld b, $20
    rlca
    ld e, $1f
    dec b
    ld b, $0d
    ld c, $0b
    inc c
    and e
    ld bc, $0a4a
    ld [$090f], sp
    ld c, $0c
    rrca
    rlca

jr_00e_617a:
    rlca
    inc bc
    inc bc
    ld [bc], a
    ld [hl+], a
    inc bc
    sub b
    ld b, $40
    ld a, [bc]
    inc e
    jr jr_00e_61a6

    dec a
    ld a, $57
    ld l, a
    ld e, l
    ld h, e
    ld a, a
    ld a, a
    or l
    ld [bc], a
    ld a, [bc]
    add hl, bc
    jr nz, @-$1e

    and b
    ld h, b
    and b
    ldh [$60], a
    ldh [$c0], a
    ld b, b
    and h
    ld b, $02
    jr jr_00e_617a

    db $10

jr_00e_61a3:
    ldh a, [$62]
    ld [c], a

jr_00e_61a6:
    push de
    rst $30
    add hl, hl
    rst $18
    ld l, c
    sbc a
    ret


    ccf
    xor c
    ld e, a
    ld l, c
    sbc a
    pop de
    ccf
    sub e
    ld a, a
    dec sp
    rst $38
    adc $ce
    add l
    ld [bc], a
    adc h
    xor a
    ld bc, $067c
    jr nz, jr_00e_61a3

    ldh [$a0], a
    and b
    ldh [rNR41], a
    add h
    ld b, $99
    add hl, de
    db $10
    ldh a, [$c8]
    ld hl, sp-$30
    or b
    ld h, b
    ldh [$90], a
    ldh a, [$28]
    ret c

    ld l, b
    sbc b
    call nz, $843c
    ld a, h
    ld h, h
    sbc h
    ld l, b
    sbc b
    db $fc
    ld a, h
    or h
    call z, $0583
    ld l, $03
    or h
    ld a, h
    jp nz, $a5fe

    ld b, $3a
    inc bc
    adc a
    sbc a
    or a
    ld hl, sp+$41
    rst $18
    ldh [$e0], a
    cpl
    rst $28
    ld [hl], b
    ei
    inc e
    ld sp, hl
    rlca
    rst $38
    nop
    rst $38
    rst $38
    and $9f
    di
    adc [hl]
    ld_long a, $ffc7
    rst $30
    ld e, a
    cp [hl]
    di
    db $fc
    ld l, e
    rst $30
    sbc a
    rst $28
    cp h
    rst $18
    ld l, b
    cp a
    ld c, b
    rst $38
    ld c, h
    rst $38
    add $7f
    jp Jump_00e_637f


    cp a
    or b
    rst $18
    ld e, [hl]
    rst $38
    ld a, a
    db $fc
    add e
    add e
    inc hl
    nop
    add hl, bc
    di
    db $fc

Jump_00e_6230:
    ld l, a
    di
    db $dd
    rst $20
    cp e
    rst $08
    ld a, [$418f]
    ld l, d
    sbc a
    ld de, $9fe8
    cp e
    rst $08
    ld e, l
    rst $20
    xor a
    ld [hl], e
    ld a, d
    db $fd
    push af
    adc $7a
    add a
    ld a, e
    add a
    db $fc
    db $fc
    add l
    rlca
    ld b, b
    nop
    cp c
    add h
    rlca
    ld b, a
    rrca
    ld l, e
    sbc a
    db $eb
    sbc [hl]
    cp c
    rst $08
    ld e, a
    rst $20
    xor a
    ld a, h
    rla
    ld hl, sp-$19
    ld hl, sp-$61
    sbc a
    add e
    rlca
    inc a
    adc a
    inc b
    ld h, b
    rrca
    rst $38
    cp a
    ld a, c
    xor $3e
    rst $28
    ccf
    db $eb
    ccf
    rst $28
    ld a, a
    and $ff
    add b
    ld a, a
    ld a, a
    adc d
    inc b
    ld h, b
    rlca
    rst $30
    rst $38
    ld h, d
    ld [$f777], a
    cp a
    ld a, l
    add h
    inc b
    ld [hl], e
    ld bc, $ff3f
    sub b
    rlca
    sbc d
    inc c
    rst $38

jr_00e_6295:
    push af
    ld a, [hl]
    cp $77
    rst $38
    and e
    ld l, e
    or $36
    rst $38
    rra
    ei
    add a
    rlca
    cp b
    inc hl
    nop
    dec b
    ld sp, $7731
    ld c, [hl]
    ld a, a
    ld b, b
    ld b, c
    ccf
    jr nz, jr_00e_62f2

    rra
    db $10
    ld b, c
    ccf
    jr nz, jr_00e_62bc

    ld a, a
    ld b, b
    ld [hl], a
    ld c, h
    ld [hl], e

jr_00e_62bc:
    ld [hl], e
    and l
    inc b
    ld c, d
    ldh [rNR41], a
    ld d, h
    ld l, h
    db $fc
    call nz, $ec54
    cp b
    ld a, b
    ret nc

    jr c, jr_00e_6295

    jr c, jr_00e_6347

    ld hl, sp-$04
    db $fc
    cp [hl]
    ld a, [hl]
    rst $38
    db $fd
    db $fd
    ei
    push af
    ld a, e
    db $db
    rst $20
    ld l, l
    sbc a
    pop hl
    ccf
    ld b, c
    rst $38
    add c
    ld b, d
    rst $38
    ld bc, $ff41
    inc bc
    inc c
    rst $38
    rlca
    db $fd
    rrca
    ld sp, hl
    ld e, $fa
    cp [hl]

jr_00e_62f2:
    cp $ec
    db $fc
    ld hl, sp-$08
    add l
    ld b, $be
    ld [bc], a
    ld b, c
    rst $38
    add c
    ld b, [hl]
    rst $38
    ld bc, $ff0c
    di
    rst $38
    cp $8e
    cp $ce
    cp [hl]
    ld a, [hl]
    ld a, h
    adc h
    ld hl, sp-$08
    adc a
    ld [$0b3e], sp
    pop bc
    rst $38
    pop af
    ccf
    xor $fe
    ld b, [hl]
    cp $a4
    ld a, h
    cp b
    ld a, b
    and l
    inc bc
    cp $89
    dec b
    ld h, b
    dec bc
    rst $38
    dec bc
    sbc a
    ld a, e
    ld a, a
    pop af
    push af
    ei
    ld a, e
    rst $38
    xor $1e
    inc hl
    ld hl, sp+$01
    cp $06
    and e
    rlca
    sbc h
    adc e
    dec b
    ld h, b
    dec c
    adc e
    ld a, a
    ld l, a
    ei
    rst $38
    ei
    ld a, a
    pop af
    push af

jr_00e_6347:
    dec de
    ld a, [$fcfe]
    db $fc
    sub c
    ld [$0d9a], sp
    sbc e
    ld h, a
    ld [hl], a
    db $fd
    rst $38
    rst $38
    ld l, d
    cp $ee
    ld a, [de]
    cp $fa
    push af
    ei
    ld b, c
    rst $38
    ld bc, $fe05
    cp $70
    ld [hl], b
    ldh a, [$90]
    ld b, d
    ldh a, [rNR10]
    ld bc, $18e8
    add e
    ld [$039a], sp
    rst $38
    inc bc
    db $fc
    inc c
    ld b, c
    ldh a, [rNR10]
    ld bc, $30d0
    jp $d706


Jump_00e_637f:
    ld bc, $6060
    dec h
    ld bc, $0702
    rlca
    inc bc
    add [hl]

jr_00e_6389:
    nop
    scf
    nop
    inc bc
    adc $09
    ld c, $87
    inc b
    ld c, b
    inc hl
    inc e
    add hl, bc
    ld a, a
    ld a, a
    ld a, $3e
    nop
    nop
    ld a, h
    ld a, h
    add $c6
    ld [hl+], a
    ret nz

    ret z

    add hl, bc
    jr c, @+$0d

    add $c6
    and $e6
    or $f6
    cp $fe
    sbc $de
    adc $ce
    jp $4309


    ld bc, $7878
    inc h
    jr nc, @-$34

    add hl, bc
    ld e, b
    dec b
    xor $ee
    cp $fe
    sub $d6
    dec h
    add $03
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    inc hl
    ld h, b
    nop
    ld a, h
    ret z

    add hl, bc
    ld a, b
    inc bc
    ld b, b
    ld b, b
    ld e, [hl]
    ld e, [hl]
    inc hl
    ld b, b
    add hl, bc
    ld d, b
    ld d, b
    ld c, [hl]
    ld c, [hl]
    jr nz, jr_00e_6400

    ld e, d
    ld e, d
    ld h, [hl]
    ld h, [hl]
    dec h
    ld e, d
    inc bc
    ld h, [hl]
    ld h, [hl]
    inc a
    inc a
    push bc
    rlca
    inc bc
    inc hl
    ld [bc], a
    inc hl
    inc b
    inc bc
    ld [$3008], sp
    jr nc, jr_00e_6389

    add hl, bc
    sub b
    call $9d09
    sbc a

jr_00e_63fe:
    add hl, bc
    or b

jr_00e_6400:
    adc a

Jump_00e_6401:
    add hl, bc

Call_00e_6402:
    sub b
    dec h
    ret nz

    ld bc, $f0f0
    and a
    add hl, bc
    ld b, $00
    ldh [$d0], a
    ld a, [bc]
    ld c, $06
    db $10
    db $10
    jr nc, jr_00e_6445

    ld a, a
    ld a, a
    rst $38
    ret z

    ld a, [bc]
    jr z, jr_00e_641d

    ld a, h

jr_00e_641d:
    ld a, h
    add hl, hl
    add $01
    ld a, h
    ld a, h
    adc l
    add hl, bc
    ld [hl], b
    ld bc, $6060
    add a
    add hl, bc
    jr nc, @+$03

    sbc $de
    add a
    ld a, [bc]
    ld a, [hl-]
    ld bc, $fcfc
    add hl, hl
    add $83
    ld b, $fe
    dec c
    ld a, [bc]
    ld a, [bc]
    dec b
    dec b
    db $10
    db $10
    jr z, jr_00e_646b

    ld b, h
    ld b, h

jr_00e_6445:
    ld [bc], a
    ld [bc], a
    ld bc, $8f01
    add hl, bc
    ret nz

    and e
    add hl, bc
    ld d, b
    dec b
    ldh [$e0], a
    ld a, $3e
    ldh [$e0], a
    inc hl
    jr nz, jr_00e_63fe

    dec b
    ld a, $0b
    ld bc, $1201
    ld [de], a
    ld h, b
    ld h, b
    and b
    and b
    jr nz, jr_00e_6486

    jr nz, @+$22

    ldh a, [rVBK]
    add hl, bc

jr_00e_646b:
    or b
    push bc
    nop
    add hl, sp
    add hl, bc
    dec b
    ld b, $7f
    ld a, h
    cp a
    ret nz

    rst $38
    add b
    ld a, a
    ld b, b
    adc c
    rlca
    db $ec
    dec b
    ld a, l
    ld b, e
    ld a, [hl]
    ld c, [hl]
    jr nc, jr_00e_64b4

    dec a
    nop

jr_00e_6486:
    ld bc, $0000
    ld hl, sp+$4f
    add hl, bc
    rst $38
    adc a
    add hl, bc
    sub b
    inc bc
    adc d
    adc d
    push af
    push af
    inc hl
    ld [$1023], sp
    inc bc
    jr nz, jr_00e_64bc

    ld b, b
    ld b, b
    ldh a, [rVBK]
    add hl, bc
    or b
    dec bc
    rlca
    rlca
    ld e, e
    ld e, h
    rst $28
    or b
    rst $38
    and b
    sbc a
    ldh [rIE], a
    ret nz

    ld b, d
    ld a, a
    ld c, d
    dec bc
    rst $18

jr_00e_64b4:
    ldh [$bf], a
    ldh [$9f], a
    db $f4
    adc a
    ld sp, hl
    ld b, l

jr_00e_64bc:
    ld a, a
    daa
    ccf
    rst $08
    inc b
    ld c, a
    add e
    ld bc, $11d0

jr_00e_64c6:
    ld e, a
    ld h, b
    rst $38
    ret nz

    rst $38
    jp z, $eadf

    ld a, a
    ld h, b
    sbc a
    db $f4
    ld a, a
    ld a, a
    rlca
    rlca
    dec bc
    inc c
    add [hl]
    rlca
    ldh a, [rNR14]
    ld l, d
    cp a
    ld [$8bff], a
    cp a

jr_00e_64e2:
    pop hl
    ld a, a
    ld h, b
    ccf
    inc h
    ccf
    jr nc, @+$39

    jr c, jr_00e_653b

    ld a, a
    add a
    rst $38
    ld a, h
    ld a, h
    and h
    inc bc
    ld h, b
    db $10
    ld [$1817], sp
    rra
    db $10
    ccf
    dec [hl]
    ld c, a
    ld [hl], l
    cp a
    push bc
    or [hl]
    bit 0, [hl]
    ld a, e
    scf
    add hl, sp
    ld h, d
    rla
    inc e
    ld e, $27
    ccf
    ld b, e
    ld a, a
    ld a, $3e
    jp $a5c3


    ld h, [hl]
    rst $38
    jr c, jr_00e_64c6

    ld a, b
    rst $30
    call z, $0df7
    ei
    rlca
    rst $38
    inc de
    ld [$f63f], a
    ld c, a
    ei
    add a
    adc c
    inc bc
    db $76
    dec b
    rst $00
    rst $00
    xor e
    ld l, h
    rst $38
    jr nc, @-$7a

    inc c
    add [hl]
    add hl, bc
    ld c, $fb
    ld b, $ff
    inc de
    db $eb
    ccf

jr_00e_653b:
    rst $30
    ld c, [hl]
    ei
    adc d
    inc bc
    ld [hl], l
    inc bc
    rlca
    rlca
    add hl, bc
    ld c, $83
    inc c
    ld h, [hl]
    inc bc
    cpl
    jr nc, jr_00e_65bc

    ld [hl], h
    ld b, c
    rst $28
    or l
    dec b
    rst $28
    or b
    ld l, a
    ld [hl], d
    cpl
    jr nc, jr_00e_64e2

    inc c
    db $76
    dec b
    ret nz

    ret nz

    or b
    ld [hl], b
    add sp, $18
    add e
    dec b
    ld d, h
    dec de
    cp [hl]
    ld b, d
    db $fd
    ld b, e
    ld e, a
    pop hl
    rst $28
    or c

jr_00e_656e:
    db $ed
    or e
    ld a, [$dc56]
    inc a
    jr c, jr_00e_656e

    call nz, $82fc
    cp $7c
    ld a, h
    add b
    add b
    ld l, h
    db $ec
    jp nc, Jump_00e_423e

    db $fd
    inc bc
    ld a, [bc]
    ld a, [$fe06]
    ld b, $f4
    inc c
    db $f4
    ld l, h
    sub h
    db $fc
    adc b
    ld b, c
    ld hl, sp+$08
    ld [bc], a
    ld hl, sp-$70
    ldh a, [$af]
    ld [bc], a
    ld a, $05
    ldh [$e0], a
    ret c

jr_00e_659f:
    jr c, jr_00e_659f

    ld b, $41
    db $fd
    inc bc
    add hl, bc
    ld [$fc16], a
    inc e
    or d
    ld a, [hl]
    db $fc
    db $fc
    ret nz

jr_00e_65af:
    ret nz

    add l
    dec b
    jp nz, $f405

    inc c
    db $f4
    ld c, h
    cp h
    call nz, Call_00e_7c41

jr_00e_65bc:
    add h
    dec b
    or h
    call z, $78e8
    ret c

    jr c, @-$77

    inc c
    ld hl, sp+$01
    ldh [$e0], a
    add l
    inc c
    ld [c], a
    rlca
    ld a, [$fa06]
    ld h, $da
    ld h, [hl]
    cp d
    add $83
    dec b
    ld e, b
    dec bc
    ld b, h
    cp h
    db $fc
    db $fc
    sbc h
    ld a, h
    ld [c], a
    cp $c1
    rst $38
    ld a, $3e
    sbc a
    dec c
    ld h, b
    ldh a, [rNR42]
    dec c
    ld b, b
    dec bc
    sub b
    ld [hl], b
    db $ec
    inc e
    ld a, [$fd16]
    inc de
    rst $28
    sub c
    rst $38
    ld bc, $fd41
    inc bc
    dec b
    cp $02
    ld a, [$f406]
    inc c
    adc c
    dec c
    sbc b
    add l
    inc c
    ld [c], a
    dec c
    cp h
    ld b, h
    cp $42
    ld e, l
    db $e3
    rst $38
    and c
    rst $28
    ld d, c
    db $ed
    inc de
    jp c, $8936

    inc c
    or $a5
    inc c
    ldh [rSB], a
    rra
    db $10
    ld b, d
    ccf
    jr z, jr_00e_6667

    ccf
    jr nz, jr_00e_662a

    ccf

jr_00e_662a:
    jr z, jr_00e_65af

    inc c
    call nc, $3b05
    inc a
    ld b, a
    ld a, a
    ld b, d
    ld a, [hl]
    add l
    dec bc
    db $fc
    ld bc, $0c0b
    add h
    rlca
    xor $00
    ld a, [hl+]
    add h
    inc c
    ld c, d
    ld c, $a0
    rst $38
    and b
    cp a
    db $e4
    ld l, a
    ld [hl], b
    rla
    jr jr_00e_665d

    rrca
    ld a, [bc]
    rrca
    rlca
    rlca
    add l
    ld c, $00
    inc bc
    ld a, a
    ld [hl], b
    rst $28
    or l
    ld b, c
    rst $38

jr_00e_665d:
    and l
    rrca
    cp a
    ldh [$7f], a
    ld h, b
    cpl
    ld [hl-], a
    ld e, a
    ld [hl], b

jr_00e_6667:
    ld d, a
    ld a, b
    ld c, l
    ld a, [hl]
    inc hl
    ccf
    inc e
    inc e
    and l
    dec c
    inc l
    and l
    dec b
    ld d, h
    ld bc, $6a5f
    ld b, c
    rst $38
    adc d
    ld [bc], a
    rst $18
    and b
    rst $18
    add h
    ld c, $33
    add a
    inc c
    ld e, b
    adc c
    ld c, $60
    ld bc, $447f
    ld b, c
    ld a, a
    ld d, h
    ld b, $7f
    ld d, b
    ld e, a
    ld h, b
    ccf
    jr z, jr_00e_66c5

    adc d
    inc c
    ld d, a
    ld bc, $0e0d
    add e
    inc c
    add $03
    ld e, a
    ld h, b
    cp a
    call nz, $ff41
    add l
    add hl, bc
    rst $38
    add c
    xor a
    ret nc

    ld a, a
    ld d, d
    scf
    jr c, jr_00e_66ec

    inc a
    add l
    inc c
    ld e, d
    db $d3
    dec bc
    ld sp, $7803
    ld c, b
    ld hl, sp-$78
    add a
    ld b, $be
    add hl, bc
    ld h, a
    ld h, a
    ei
    sbc h

jr_00e_66c5:
    rst $18
    or b
    rst $28
    or b
    ld e, a
    ld h, b
    ld b, d
    ld a, a
    ld b, l
    rrca
    ld e, a
    ld h, b
    ld a, a
    ld [hl], b
    adc a
    ld a, [$f88f]
    ld b, a
    ld a, h
    ld b, a
    ld a, a
    inc h
    inc a
    jr jr_00e_66f7

    xor d

jr_00e_66e0:
    ld c, $80
    ld [de], a
    ld [bc], a
    sbc $62
    cp $82
    ld a, [$f686]
    ld c, [hl]

jr_00e_66ec:
    rst $38
    ccf
    jp hl


    rra
    pop de
    ccf
    pop af
    rst $38
    ld c, $0e
    add a

jr_00e_66f7:
    dec c
    ld a, [hl+]
    add h
    inc bc
    ld l, d
    nop
    ld [bc], a
    ld b, c
    rst $38
    ld bc, $ef0f
    ld de, $13fd
    ld a, [$dc16]
    inc a
    cp b
    ld a, b
    ret z

    ld hl, sp+$10
    ldh a, [$e0]
    ldh [$85], a
    rrca
    nop
    inc bc
    cp $0e
    db $ed
    inc de
    ld b, c
    rst $38
    ld bc, $fd06
    inc bc
    or $0e
    db $fc
    inc b
    or $a6
    ld c, $55
    and e
    dec b
    db $fc
    adc c
    inc c
    ldh [rSB], a
    cp $02
    and e
    dec bc
    ld a, [bc]
    ld bc, $11ef
    adc l
    dec c
    ld a, [c]
    ld bc, $c0c0
    adc b
    dec c
    ld h, d
    inc c
    ld b, $bd
    ld b, e
    sbc l
    ld h, e
    db $dd
    inc hl
    ei
    daa
    db $e4
    inc a
    ret c

    jr c, jr_00e_66e0

    rrca
    ld a, b
    add l
    rrca
    ld l, d
    ld b, c
    rst $30
    add hl, bc
    dec b
    db $ed
    dec de
    ld [$3e1e], a
    cp $85
    inc c
    ld_long a, $ff2f
    ld b, [hl]
    nop
    rst $38
    nop
    nop
    sub b
    rrca
    adc $2f
    nop
    dec h
    call z, $7901
    ld a, c
    dec h
    ld sp, $3001
    jr nc, @-$55

    nop
    ret nc

    add e
    ld bc, $8578
    ld bc, $0d78
    rlca
    rlca
    ret


    ret


    add hl, hl
    add hl, hl
    cpl
    cpl
    jr z, jr_00e_67b3

    daa
    daa
    ldh a, [$f0]
    inc hl
    adc b
    inc bc
    adc d
    adc d
    di
    di
    dec h
    add d
    dec h
    ld b, b
    ld bc, $cccc
    dec h
    ld d, d
    rst $00
    db $10
    ld bc, $7009
    ld [hl], b
    dec bc
    dec bc
    ld a, d
    ld a, d
    ld c, d
    ld c, d
    ld l, d
    ld a, d
    dec h
    nop
    ld bc, $6363
    and e

jr_00e_67b3:
    db $10
    jr z, jr_00e_67b7

    add h

jr_00e_67b7:
    add h
    add l
    rlca
    ld a, [$400b]
    ld b, b
    ld b, e
    ld b, e
    ld h, h
    ld h, h
    ld d, a
    ld d, a
    ld d, h
    ld d, h
    ld d, e
    ld d, e
    adc b
    ld [bc], a
    db $e4
    nop
    ld b, b
    add e
    ld [$a77a], sp
    inc bc
    cp $01
    ld [hl], b
    ld [hl], b
    daa
    ld c, b
    inc hl
    nop
    dec bc
    ld b, h
    ld b, h
    db $e4
    db $e4
    ld b, a
    ld b, a
    ld b, h
    ld b, h
    ld d, h
    ld d, h
    inc h
    inc h
    add l
    ld bc, $0142
    add hl, de
    add hl, de
    inc hl
    dec h
    ld bc, $a5a5
    and e
    nop
    ld a, h
    dec b
    adc b
    adc b
    ret c

    ret c

    reti


    reti


    inc hl
    xor d
    inc bc
    adc d
    adc d
    adc c
    adc c
    and l
    db $10
    ld [hl], b
    inc bc
    ld [bc], a
    ld [bc], a
    adc [hl]
    adc [hl]
    inc hl
    ld d, d
    ld bc, $4e4a
    dec h
    nop
    inc bc
    sub [hl]
    sub [hl]
    ld e, b
    ld e, b
    inc hl
    ld d, b
    ld bc, $9090
    add l
    nop
    ld [bc], a
    ld bc, $7171
    inc hl
    ld c, c
    inc bc
    ld c, b
    ld c, b
    ld c, c
    ld c, c
    inc hl
    nop
    ld bc, $e4e4
    daa
    inc [hl]
    ld bc, $e3e3
    add e
    add hl, bc
    ld d, b
    add hl, hl
    call $0585
    ld a, $04
    ld [hl], $36
    cp h
    cp b
    cp b
    ld [hl+], a
    or b
    inc bc
    jr nc, jr_00e_6876

    or b
    or b
    add a
    rrca
    ld a, [$1205]
    ld [de], a
    ld e, $1e
    db $10
    db $10
    add l
    rrca
    inc e
    inc bc
    nop
    nop
    adc e
    adc e
    dec h
    xor d
    ld bc, $5252
    sub e
    db $10
    ret nc

    inc bc
    db $10
    db $10
    cp b
    cp b
    inc hl
    db $10
    ld bc, $1414
    jp $c310


    dec b
    nop
    nop
    inc b
    inc b
    ld c, $0e

jr_00e_6876:
    inc hl
    add h
    dec b
    dec b
    dec b
    add d
    add d
    nop
    nop
    rst $00
    db $10
    ld [hl], e
    inc bc
    ld h, h
    ld h, h
    inc d
    inc d
    add e
    ld de, $050e
    jr @+$1a

    jr nz, jr_00e_68af

    ld [hl], e
    ld [hl], e
    dec h
    inc h
    ld bc, $2323
    dec h
    nop
    rlca
    jr jr_00e_68b3

    inc h
    inc h
    cp h
    cp h
    and b
    and b
    jp Jump_00e_4500


    ld bc, $0202
    xor c
    ld de, $8594
    db $10
    xor [hl]
    dec b
    ld [bc], a

jr_00e_68af:
    ld [bc], a
    add d
    add d
    ld c, [hl]

jr_00e_68b3:
    ld c, [hl]
    push bc
    db $10
    db $dd
    ld bc, $0e0e
    inc sp
    nop
    rlca
    ld h, b
    ld h, b
    sub b
    sub b
    ldh a, [$f0]
    add b
    add b
    and e
    rrca
    inc e
    ld b, c
    nop
    add b
    nop
    nop
    adc b
    ld bc, $2379
    jr jr_00e_68d6

    set 1, e
    db $d3

jr_00e_68d6:
    db $d3
    daa
    jp $1185


    jr nz, jr_00e_68ff

    scf
    inc h
    ld [hl], $01
    or $f6
    add l
    db $10
    ld a, [c]
    inc hl
    sbc c
    inc hl
    sbc b
    ld bc, $7171
    adc c
    ld de, $0580
    ld h, e
    ld h, e
    db $10
    db $10
    rst $20
    rst $20
    adc c
    db $10
    add b
    dec b
    ld b, b
    ld b, b
    ld c, b
    ld c, b

jr_00e_68ff:
    ld d, b
    ld d, b
    add a
    inc b
    ld c, b
    dec b
    ld hl, $1921
    add hl, de
    dec b
    dec b
    and a
    inc c
    ld e, $03
    ld h, b
    ld h, b
    sub a
    sub a
    inc hl
    sub h
    ld bc, $6464
    and l
    db $10
    and b
    inc bc
    rlca
    rlca
    ld h, d

jr_00e_691f:
    ld h, d
    inc hl
    ld [hl+], a
    add a
    ld [de], a
    ld l, $09
    inc l
    inc l
    or c
    or c
    ld hl, $a121
    and c
    jr nz, jr_00e_6950

    add a
    ld [de], a
    add b
    ld bc, $b0b0
    inc hl
    and b
    ld bc, $2020
    jp $c103


    add hl, hl
    ld [$0283], sp
    ld a, $c3
    add hl, bc
    add e
    ld bc, $c7c7
    inc hl
    ld c, c
    inc bc
    ld b, a
    ld b, a
    pop hl
    pop hl

jr_00e_6950:
    sub d
    ld de, $a4e0
    ld de, $8943
    db $10
    ret z

    add e
    dec bc
    xor h
    ld bc, $e9e9
    dec h
    ld c, c
    inc bc
    ld b, a
    ld b, a
    nop
    add b
    adc l
    ld de, $85f2
    ld c, $dc
    dec b
    ret


    adc c
    adc c
    add hl, bc
    rrca
    rrca
    add l
    ld [de], a
    xor h
    inc b
    inc bc
    inc bc
    jp $83c3


    jr z, @+$05

    dec h
    nop
    ld bc, $5c5c
    inc hl
    ld d, d
    inc bc
    ld e, h
    ld e, h
    ret nc

    ret nc

    dec h
    nop
    ld bc, $8181
    inc hl
    ld [bc], a
    dec b
    add d
    add d
    ld bc, $0001
    nop
    add l
    db $10
    jr nc, jr_00e_691f

    db $10
    jr nc, jr_00e_69a2

    adc c
    adc c
    ld a, [c]

jr_00e_69a2:
    ld a, [c]
    and e
    ld c, $d0
    dec bc
    inc b
    inc b
    call nz, $24c4
    inc h
    db $e4
    db $e4
    inc b
    inc b
    xor $ee
    add a
    ld de, $0170
    inc b
    inc b
    and e
    ld [de], a
    adc d
    add e
    ld de, $837e
    ld a, [bc]
    inc l
    add hl, bc
    ld de, $1211
    ld [de], a
    inc de
    inc de
    sub d
    sub d
    add hl, sp
    add hl, sp
    xor c
    db $10
    ld h, b
    ld bc, $efef
    and e
    ld [de], a
    inc a
    inc bc
    and b
    ret nz

    or b
    ret nz

    add e
    inc de
    sub b
    add hl, bc
    xor d
    ret nz

    cp a
    ret nz

    ret nz

    rst $38
    ld [$7fff], a
    ld a, a
    adc l
    ld bc, $03fe
    ld hl, sp-$08
    ldh a, [$f0]
    dec hl
    nop
    sub l
    db $10
    ld d, b
    add h
    nop
    nop
    nop
    nop
    ld b, c
    inc bc
    ld bc, $0100
    add [hl]
    ld de, $00f6
    xor d
    add e
    rrca
    db $ed
    ld [de], a
    rst $38
    xor d
    rst $38
    rra
    inc e
    rrca
    ld [$001f], sp
    ccf
    nop
    ld l, e
    inc e
    cp [hl]
    ld a, a
    rst $28
    ld [hl], e
    ld e, a
    rst $28
    add a
    inc de
    sub b
    add e
    inc de
    sub b
    rla
    and c
    ret nz

    or c
    ret nz

    and d
    pop bc
    or l
    jp nz, $c2a4

    or h
    jp nz, $c2a5

    or l
    jp nz, $c3a4

    or d
    pop bc
    and c
    ret nz

    or c
    ret nz

    adc e
    inc d
    nop
    nop
    and b
    call z, $2f14
    nop
    or b
    xor [hl]
    inc bc
    rst $38
    nop
    ld bc, $0041
    ldh [rSTAT], a
    nop
    ret nz

    ld bc, $9c00
    add [hl]
    add hl, bc
    daa
    rrca
    inc bc
    inc bc
    rrca
    ld b, $3f
    dec b
    ld a, a
    dec b
    rst $38
    rlca
    rst $08
    rlca
    adc a
    rlca
    rst $30
    rrca
    sbc c
    nop
    cp e
    ld b, c
    ld bc, $0000
    ld b, $8d
    inc d
    ld a, e
    and e
    ld [de], a
    ldh a, [$d6]
    inc d
    adc l
    add a
    inc de
    add sp, $02
    rst $38
    rst $38
    rst $38
    adc h
    rrca
    xor $1b
    rrca
    ld b, $0f
    rlca
    scf
    inc bc
    ld a, e
    ld sp, $387d
    cp a
    inc e
    rst $18
    adc [hl]
    rst $28
    rst $00
    rst $38
    db $e3
    ei
    ld [hl], c
    ld a, l
    jr c, jr_00e_6ad8

    inc e
    rst $18
    ld c, $ff
    ld b, $84
    inc d
    cp h
    dec bc
    rst $18
    rst $38
    rst $18
    ld c, a
    rst $38
    rst $20
    ld a, a
    cp [hl]
    ld a, a
    ld l, e
    inc e
    ld e, $84
    add hl, bc
    dec c
    inc de
    ld c, $01
    dec a
    ld [bc], a
    ld a, h
    ld [bc], a
    db $fd
    ld [bc], a
    call $8d02
    ld [bc], a
    ld sp, hl
    ld b, $03
    db $fc
    ld a, [hl]
    nop
    cp $01
    ld b, c
    db $fd
    ld [bc], a
    dec e
    cp $01
    inc bc
    db $fc
    ld bc, $fdfe
    ld [bc], a
    dec e
    ld [bc], a
    add l
    ld [bc], a
    adc l

jr_00e_6ad8:
    ld [bc], a
    ld b, l
    ld [bc], a
    dec [hl]
    ld [bc], a
    inc c
    inc bc
    ld [bc], a
    ld bc, $c4a3
    or e
    call nz, $c4a3
    or e
    call nz, $1587
    jr nc, jr_00e_6b05

    ld a, $3e
    inc e
    inc e
    add hl, bc
    ld [$0103], sp
    ld b, $03
    dec c
    ld b, $1b
    dec c
    scf
    dec de
    ld l, a
    scf
    ld a, a
    cpl
    ld a, a
    ld a, $3e
    inc e

jr_00e_6b05:
    dec e
    xor c
    inc c
    daa
    nop
    ld a, b
    ld b, h
    rst $38
    ld hl, sp+$01
    ei
    db $fc
    adc c
    dec d
    jr nc, jr_00e_6b16

    or b

jr_00e_6b16:
    jp $148f


    inc a
    rlca
    ld bc, $0300
    nop
    rlca

jr_00e_6b20:
    nop
    rrca
    nop
    add e
    inc de
    db $f4
    inc de
    ld a, a
    nop
    pop hl
    ld e, $d2

jr_00e_6b2c:
    ld hl, $40a1
    add c
    ld b, b
    and c
    ld b, b
    or [hl]
    ld b, c
    call c, $e123
    ld e, $7f
    nop
    add e
    ld a, [bc]
    sbc a
    dec bc
    ld a, a
    nop
    add b
    nop
    ld a, a
    nop
    dec d
    nop
    or l
    nop
    ld [$8315], a
    inc de

jr_00e_6b4d:
    db $ec
    dec b
    rlca
    inc bc
    dec de
    ld bc, $183d
    add e
    inc d
    and $0b
    rst $28
    rst $00
    rst $30
    db $e3
    rst $38
    ld [hl], c
    ld a, l
    jr c, jr_00e_6b20

    inc e
    rst $38
    adc [hl]
    add e
    dec d
    jp z, $fb0c

    ld [hl], b
    ld a, l
    jr c, jr_00e_6b2c

    jr jr_00e_6b4d

    add b
    ld [$f5c0], a
    ret nz

    ld [$13a6], a
    rst $20
    nop
    xor d
    add [hl]
    rrca
    xor $00
    ld e, $88
    dec d
    sub a
    inc b
    ldh [rP1], a
    inc e
    ldh [$2f], a
    ld b, e
    db $10
    rst $28
    ld [de], a
    db $10
    rst $20
    jr jr_00e_6bc1

    rrca
    ld e, $c0
    rrca
    ldh [$cf], a
    jr nc, @-$0f

    db $10
    rst $18
    jr nz, jr_00e_6bcd

    rst $08
    ldh [$1f], a
    ld b, c
    rst $28
    db $10
    ld b, c
    add sp, $10
    rlca
    jp hl


    db $10
    db $eb
    db $10
    inc c
    ldh a, [rNR10]
    ldh [$af], a
    dec d
    jr nc, @-$7b

    ld a, [bc]
    ld c, $12
    ldh a, [$e0]
    ld e, b
    or b
    jr c, jr_00e_6c2c

    ld sp, hl
    ldh a, [$f3]
    ldh [$e6], a

jr_00e_6bc1:
    pop bc
    push de
    add d
    and l
    ld [bc], a
    ld b, [hl]
    ld bc, $2883
    nop
    rrca
    rst $30

jr_00e_6bcd:
    rrca
    rra
    rlca
    add a
    rlca
    adc a
    rlca
    ld b, a
    dec b
    scf
    dec b
    rrca
    ld b, $03
    inc bc
    adc d
    rrca
    and $00
    rst $38
    add l
    inc b
    ld c, d
    and e
    ld a, [bc]
    ld l, $00
    ld e, $88
    inc de
    rst $30
    adc c
    inc d
    ldh a, [rNR21]
    ld [$a11c], a
    nop
    ld b, d
    add b
    ld b, h
    add b
    ld c, b
    add b
    ld d, b
    add b
    and b
    nop
    ld b, b
    nop
    add b
    nop
    jr nz, jr_00e_6c04

jr_00e_6c04:
    ld d, b
    nop
    jr nz, @-$73

    nop
    sub l
    stop
    rlca
    inc bc
    push de
    add e
    db $ed
    jp $e3f5


    db $fd
    ld [hl], e
    db $fd
    dec sp
    cp l
    rra
    db $dd
    adc a
    add h
    ld d, $c2
    dec c
    ld h, e
    ld [hl], l
    inc bc
    xor l
    inc bc
    push de
    inc bc
    xor l
    inc bc
    ld d, l
    inc bc
    xor l

jr_00e_6c2c:
    inc bc
    ld e, l
    add e

jr_00e_6c2f:
    ld d, $dd
    ld a, [bc]
    inc bc
    cp c
    rlca
    ei
    rlca
    ld [c], a
    ld e, $0e
    cp $bc
    db $fc
    add e
    dec d
    and b
    nop
    or d
    add h
    dec d
    and l
    dec b
    sbc $00
    and c
    nop
    ld b, d
    add b
    xor c
    dec d
    add [hl]
    push bc
    inc d
    ld d, h
    ld [bc], a
    db $10
    ldh [$28], a
    ld b, e
    db $10
    add sp, $04
    db $10
    ld [$10f0], sp
    ldh [$ce], a
    rla
    ld c, $00
    nop
    or e
    inc d
    jr nc, jr_00e_6c7a

    inc a
    nop
    ld h, [hl]
    jr jr_00e_6c2f

    inc h
    sbc d
    ld b, h
    ld [hl], $88
    ld l, l
    db $10
    jp c, $b420

    ld b, b
    ld l, b
    add b

jr_00e_6c7a:
    ret nc

    adc b
    ld d, $af
    ld [bc], a
    ei
    db $fc
    rst $38
    inc h
    ld hl, sp+$07
    ld sp, hl
    ld hl, sp-$05
    ld hl, sp-$04
    ld a, b
    ldh a, [$f0]
    add e
    ld d, $30
    dec b
    add l
    ld b, e
    adc l
    ld b, e
    dec b
    add e
    adc l
    rla
    ld [hl-], a
    db $10
    add l
    inc bc
    call $c503
    inc bc
    ld l, l
    add e
    push hl
    add e
    db $ed
    add e
    ld h, l
    add e
    call Call_00e_4503
    and h
    inc d
    ld hl, $4d04
    inc bc
    and l
    inc bc
    ld c, l
    cp d
    inc d
    inc hl
    inc b
    adc l
    inc bc
    ld h, l
    add e
    ld l, l
    adc h
    rla
    sub e
    ld [bc], a
    call nz, $c880
    adc e
    ld d, $a3
    ret nc

    rrca
    ret nc

    cpl
    nop
    rst $38
    ld bc, $537f
    ld h, $7f
    nop
    ld h, e
    add hl, hl
    ld a, a
    dec hl
    ld a, [hl]
    rlca
    ld a, a
    ld d, e
    sub e
    and e
    sub h
    and h
    sub l
    and l
    add e
    nop
    ld [$0004], sp
    db $10
    jr nz, jr_00e_6d1a

    ld bc, $0090
    ld de, $7f22
    inc bc
    sub [hl]
    and e
    and [hl]
    sub a
    add e
    nop
    add hl, bc
    ld b, $11
    ld hl, $0231
    ld [de], a
    ld [hl+], a
    cpl
    adc e
    nop
    inc [hl]
    ldh a, [rNR41]
    nop
    nop
    nop
    ld d, a
    ld h, $67
    add hl, bc
    ld [hl], a
    ld a, a
    ld a, a
    inc bc
    inc de
    inc hl
    inc sp
    inc b
    inc d
    inc h
    adc l
    nop
    inc de
    nop

jr_00e_6d1a:
    ld b, e
    ld h, $7f
    add hl, bc
    ld [hl], e
    ld a, a
    ld a, a
    inc [hl]
    dec b
    dec d
    dec h
    dec [hl]
    ld b, $16
    adc l
    nop
    inc de
    ld de, $5040
    ld h, b
    ld [hl], b
    ld a, a
    ld a, a
    sub d
    ld e, a
    ld a, b
    ld a, a
    ld a, a
    ld h, $36
    rlca
    rla
    daa
    scf
    ld [$008d], sp
    inc de
    db $10
    ld b, c
    ld d, c
    ld h, c
    ld [hl], c
    ld a, a
    ld c, c
    ccf
    ld l, a
    ld a, h
    ld a, a
    ld a, a
    jr jr_00e_6d77

    jr c, jr_00e_6d5a

    add hl, de
    add hl, hl
    adc [hl]
    nop
    ld [de], a
    db $10
    ld b, d
    ld h, [hl]
    db $76

jr_00e_6d5a:
    ld b, l
    ld a, a
    ld c, d
    ld c, a
    ld a, l
    ld a, d
    ld a, a
    ld a, a
    ld a, [bc]
    ld a, [de]
    ld a, [hl+]
    dec bc
    dec de
    dec hl
    adc [hl]
    nop
    ld [de], a
    ld de, $9143
    and c
    ld d, h
    ld h, h
    ld [hl], h
    ld a, a
    ld l, e
    ld a, e
    ld a, a
    ld a, a

jr_00e_6d77:
    inc c
    inc e
    inc l
    inc a
    dec c
    dec e
    ld a, a
    sub b
    nop
    sub e
    ld c, $55
    ld h, l
    ld [hl], l
    ld a, a
    ld e, h
    ld l, h
    ld a, a
    ld a, a
    dec l
    ld c, $1e
    ld l, $0f
    rra
    ld a, a
    sub d
    nop
    sub e
    inc bc
    dec a
    ld c, l
    ld e, l
    ld l, l
    sub [hl]
    nop
    ld a, [bc]
    nop
    add hl, sp
    ld [hl+], a
    ld c, e
    inc b
    ld e, e
    ld a, $4e
    ld e, [hl]
    ld l, [hl]
    sub [hl]
    nop
    ld a, [bc]
    nop
    ld a, [hl-]
    ld h, $4c
    nop
    dec sp
    sub [hl]
    nop
    ld a, [bc]
    jr z, jr_00e_6e33

    adc a
    ld bc, $cfaa
    ld bc, $8fd9
    ld bc, $f8aa
    add hl, sp
    ld bc, $e5f9
    adc e
    ld a, [hl]
    ldh a, [rNR42]
    nop
    nop
    add hl, bc
    dec hl
    inc hl
    dec h
    jr nz, jr_00e_6dec

    ld h, $7f
    ld h, e
    ld a, a
    ld a, [hl+]
    ld h, d
    nop
    sub b
    nop
    rrca
    rst $38
    inc hl
    nop
    inc hl
    ld bc, $0309
    inc bc
    dec b
    rlca
    dec bc
    rrca
    ld d, $1f
    inc d
    rra
    ld b, c
    jr z, jr_00e_6e2a

    dec c

jr_00e_6dec:
    ld d, b
    ld a, a
    ld b, b
    ld a, a
    ld a, b
    ld a, a
    ld h, h
    ld a, a
    ld b, e
    ld a, a
    ld d, e
    ld l, [hl]
    ld [hl], c
    ld c, a
    ld b, e
    ld a, c
    ld b, a
    ld b, c
    ld sp, $032f
    inc de
    rra
    rrca
    rrca
    ld b, c
    ld [bc], a
    inc bc
    ld bc, $0101
    add hl, hl
    nop
    ldh [$2b], a
    sbc h
    sbc h
    rst $38
    db $e3
    ld a, a
    sbc a
    sbc $e1
    ei
    db $fc
    rst $38
    inc c
    db $fd
    add [hl]
    db $fc
    ld b, a
    ei
    rst $08
    rst $38
    dec d
    rst $38
    jp hl


    rst $38
    ld sp, $907f
    cp a

jr_00e_6e2a:
    ret nc

    rst $28
    ret c

    rst $18
    rst $28
    rst $28
    rst $30
    db $fd
    dec sp

jr_00e_6e33:
    db $db
    rst $20
    cp $ff
    db $e4
    rra
    ld hl, sp+$7f
    ld b, c
    add b
    rst $38
    dec de
    ld b, c
    rst $38
    ld h, $ff
    add hl, hl
    rst $38
    ld h, [hl]
    cp $98
    sbc b
    nop
    nop
    jr jr_00e_6e65

    ccf
    daa
    ld a, a
    ld h, c
    cp $82
    ld a, [hl]
    ld b, d
    ccf
    ld hl, $2f3f
    jr nc, jr_00e_6e8b

    cpl
    nop
    ld bc, $0303
    ld h, d
    dec b
    ld d, $0d
    ld a, [bc]

jr_00e_6e65:
    rrca
    ld a, $3b
    ld c, [hl]
    ld a, e
    cp $8b
    cp e
    rst $08
    ld c, [hl]
    ld a, a
    ld [hl], $3f
    ld c, $0f
    ld [bc], a
    inc bc
    ld bc, $0101
    ld bc, $0039
    push bc
    nop
    cp e
    ld b, c
    rlca
    dec b
    ld bc, $0302
    ld b, e
    inc b
    rlca
    add l
    nop
    or [hl]

jr_00e_6e8b:
    ld b, d
    ld [bc], a
    inc bc
    adc c
    nop
    or [hl]
    ldh [$3d], a
    ld h, b
    ld h, b
    ldh a, [$90]
    ei
    dec bc
    rst $30
    inc e
    rst $28
    cp c
    rst $18

jr_00e_6e9e:
    pop af
    rra
    di
    rra
    rst $30
    rra
    rst $38
    scf
    cp $6f
    rst $30
    cp a
    db $eb
    cp d
    db $ed
    db $ed
    cp [hl]
    rst $38
    or a
    rst $38
    scf
    db $db
    ld [hl], a
    db $fd
    ld e, e
    xor [hl]
    db $dd
    and a
    ld e, [hl]
    db $d3
    cpl
    xor $11
    ld [hl], e
    adc a
    cp a
    call nz, $feff
    ld bc, $00ff
    rst $38
    db $fc
    inc bc
    rst $38
    add b
    ld a, [hl]
    ld h, c
    rra
    rra
    xor c
    nop
    adc $03
    ldh [$e0], a
    db $10

jr_00e_6ed8:
    ldh a, [rSTAT]
    ret nc

    jr nc, jr_00e_6ee2

    ret c

    jr c, jr_00e_6ed8

    jr jr_00e_6e9e

jr_00e_6ee2:
    call nc, $fc41
    ld d, h
    ld bc, $dcfc
    ld b, c
    ld hl, sp-$28
    ld [hl+], a
    ldh a, [rNR14]
    or b
    ret z

    ld hl, sp-$7c
    db $fc
    ld c, $fa
    rra
    pop af
    ccf
    pop hl
    ld a, $f2
    ld a, h
    db $fc
    ret nc

    ldh a, [$a0]
    ldh [rLCDC], a
    ret nz

    xor a
    nop
    cp d
    call nz, $3900
    nop
    ld b, $62
    dec b
    inc b
    rlca
    dec b
    ld c, $0b
    dec c
    ld b, c
    ld c, $0b
    inc d
    inc e
    rla
    ld [hl], h
    ld l, a
    ei
    sbc h
    jp hl


    db $76
    sub c
    rst $28
    ld [de], a
    rst $28
    dec de
    and $0f
    ld a, [c]
    rlca
    ld_long a, $fff2
    ld a, [bc]
    ld b, c
    rst $38
    ld bc, $ff0c
    ld [hl], c
    rst $38
    ld a, [hl]
    rst $38
    dec a
    cp $1d
    cp $e6
    rst $38
    rra
    rra
    adc e
    nop
    call z, $021b
    inc bc
    dec b
    ld b, $0f
    rrca
    ccf
    jr nc, @+$01

    rst $08
    ldh a, [$3f]
    ret nz

    ld a, a
    add [hl]
    ld sp, hl

jr_00e_6f52:
    adc b
    rst $30
    db $10
    rst $28
    rla
    rst $28
    add hl, de
    rst $28
    ld a, [de]
    rst $38
    dec de
    or $91
    ld bc, $00a8
    sbc l
    add h
    ld bc, $3bbb
    nop
    add l
    nop
    xor $00
    ld b, $86
    nop
    db $e3
    ld b, e
    ld c, $0b
    dec c
    dec bc
    dec c
    rlca
    dec b
    dec b
    ld b, $0f
    ld a, [bc]
    ld c, $0b
    rrca
    add hl, bc
    rlca
    rlca
    add hl, sp
    nop
    dec b
    inc bc
    inc bc
    ld l, h
    ld l, a
    di
    sbc h
    add h
    nop
    and b
    ld d, $05
    ld a, [bc]
    rrca
    ld c, $0b
    ld e, $1b
    ld l, $3b
    ld e, e
    ld l, a
    ld d, [hl]
    ld l, a
    or [hl]
    rst $08
    cp $87
    ld e, d
    ld h, a
    dec a
    dec a
    ld bc, $af01
    nop
    sub h
    inc bc
    and b
    ld h, b
    ret nc

    jr nc, jr_00e_6f52

    ld bc, $15d0
    cp $f2
    dec bc
    db $fd
    dec b
    rst $38
    ld [bc], a
    cp $1a
    cp $b6
    ld l, [hl]
    db $d3
    cp a
    ld l, [hl]
    or e
    rst $18
    ld h, d
    sbc $63
    cp a
    pop bc
    ld b, e
    cp a
    ret nz

    dec c
    sbc a
    ldh [$e7], a
    ld hl, sp-$41
    ld a, a
    pop de
    ld a, $d3
    inc a
    or b
    ld a, a
    rst $08
    rst $08
    daa
    nop
    rla
    ldh [$e0], a
    ld [hl], c
    sub c
    sub $37
    xor c
    ld l, [hl]
    rst $30
    ld hl, sp-$03
    ld c, $ff
    di
    dec bc
    db $fd
    dec b
    cp $03
    cp $1b
    rst $38
    or [hl]
    ld l, [hl]
    xor l
    ld bc, $01c0
    ret nz

    ld b, b
    add a
    ld bc, $b976
    nop
    cp b
    ld de, $0101
    ld c, $0f
    jr nc, jr_00e_7047

    ld h, c
    ld e, a
    pop bc
    cp a
    ld b, d
    cp a
    ld b, e
    cp [hl]
    dec h
    sbc $1f
    db $e4
    ld b, e
    rlca
    db $fc
    ld [bc], a
    inc bc
    cp $01
    ld b, d
    rst $38
    ld b, b
    ld b, c
    rst $38
    and b
    ld b, $ff
    ldh a, [$7f]
    ld a, c
    adc a
    or $f6
    add hl, sp
    nop
    dec b
    ldh [$e0], a
    jr @-$06

    or $6e
    add e
    ld [bc], a
    adc b
    ldh [rNR44], a
    ldh a, [$30]
    xor b
    ld a, b
    db $f4
    call z, $0cf4
    ld a, [$fe06]
    ld [de], a
    ld [$f63e], a
    ld c, [hl]

jr_00e_7047:
    ld a, [$f786]
    rrca
    rst $30
    dec c
    rst $28
    dec e
    dec e
    ei
    cp $fe
    jr @+$1a

    inc a
    inc h
    ld a, $22
    rra
    dec e
    pop de
    nop
    and c
    dec bc
    ld b, e
    ld h, a
    db $fc
    cp a
    ldh [$bf], a
    ld d, c
    ld a, a
    db $76
    ld e, a
    jr c, jr_00e_70aa

    ld b, c
    ld de, $031f
    inc c
    rrca
    rlca
    rlca
    sub c
    nop
    cp d
    add e
    ld bc, $0500
    ld hl, sp-$78
    ld a, h
    ld [hl], h
    inc c
    inc c
    cp c
    inc bc
    ld b, h
    rrca
    ld sp, $1c3e
    rra
    ld h, $3f
    ld e, l
    ld h, a
    cp e
    add $fa
    add a
    xor l
    rst $18
    ld [hl], b
    ld a, b
    dec a
    nop
    add hl, bc
    cp $fe
    ccf
    pop af
    rst $18
    rst $20
    ld a, d
    cp a
    rst $28
    ld [hl], d
    adc e
    ld [bc], a
    and [hl]
    rla
    rst $18
    ldh [$a7], a
    ld hl, sp-$21

jr_00e_70aa:
    ld a, a
    pop hl
    ld a, [hl]
    ei
    cp h
    ld a, a
    rst $38
    inc a
    rst $28
    rra
    di
    ld a, $ff
    ld a, h
    rst $28
    db $fc
    add a
    ld a, e
    ld a, e
    inc hl
    nop
    dec b
    ld sp, $7731
    ld c, [hl]
    ld a, a
    ld b, b
    ld b, c
    ccf
    jr nz, jr_00e_710b

    rra
    db $10
    ld b, c
    ccf
    jr nz, jr_00e_70d5

    ld a, a
    ld b, b
    ld [hl], a
    ld c, h
    ld [hl], e

jr_00e_70d5:
    ld [hl], e
    inc hl
    nop
    inc b
    ld c, a
    ld a, a
    daa
    ccf
    ld a, a
    ld b, c
    ld [hl], a
    ld e, a
    inc b
    ld [hl], a
    ld a, a
    ld [hl], a
    rst $38
    rst $10
    ld b, c
    rst $38
    sub a
    ldh [$33], a
    ld a, a
    ld d, a
    and a
    rst $38
    xor a
    rst $38
    adc a
    rst $38
    ld l, a
    ld [hl], b
    ld a, a
    ld a, a
    ccf
    ccf
    inc a
    inc a
    ld d, a
    ld l, a
    ld a, l
    ld c, [hl]
    ld e, e
    ld a, h
    ld [hl], a
    ld a, b
    cpl
    jr nc, jr_00e_713e

    dec sp
    ld e, [hl]
    ld a, a
    ld a, c

jr_00e_710b:
    ld a, [hl]
    rst $38
    cp a
    sbc $bf
    cp [hl]
    rst $18
    rst $28
    rst $18
    ld e, e
    rst $20
    db $76
    ld sp, hl
    ei
    db $fc
    add [hl]
    rst $38
    rra
    rst $38
    ld a, l
    db $e3
    ld b, c
    rst $18
    pop hl
    dec bc
    db $fd
    db $e3
    ld a, $ff
    rst $38
    db $fc
    rst $28
    di
    xor [hl]
    rst $18
    ld a, a
    ld a, a
    ld b, c
    rla
    jr jr_00e_7143

    dec bc
    inc c
    inc b
    rlca
    inc bc
    inc bc
    jr c, jr_00e_7174

    ld d, l
    ld l, l

jr_00e_713e:
    ld a, [hl]
    ld b, a
    ld d, l
    ld l, [hl]
    dec sp

jr_00e_7143:
    inc a
    ld b, c
    rla
    jr jr_00e_7164

    dec a
    ld a, $5f
    ld a, a
    cp c
    cp $ff
    cp a
    cp a
    rst $18
    xor a
    rst $18
    ld e, e
    ld h, a
    db $76
    ld a, c
    sbc a
    ld hl, sp-$0a
    adc a
    ret


    scf
    adc h
    ld [hl], e
    sbc b
    ld h, a
    ld [hl], b
    adc a

jr_00e_7164:
    nop
    and h
    ld bc, $09af
    ret nz

    ld a, a
    pop af
    cp a
    ld a, a
    ld c, [hl]
    scf
    add hl, sp
    ld c, $0e
    cp e

jr_00e_7174:
    nop
    cp h
    sub l
    inc bc
    ld h, b

jr_00e_7179:
    ld b, c
    db $f4
    inc c
    inc de
    add sp, $18
    jr jr_00e_7179

    add sp, -$08
    adc b
    ld hl, sp+$38

jr_00e_7186:
    ld hl, sp+$7c

jr_00e_7188:
    call nz, $84fc
    ld a, b
    ld a, b
    ld [hl], b
    ld [hl], b
    ldh a, [$90]
    ld b, d
    ldh a, [rNR10]
    inc bc
    add sp, $18
    cp $06
    and e
    inc b
    db $ed
    ld bc, $0cfc
    ld b, c
    ldh a, [rNR10]
    ld a, [bc]
    ret nc

    jr nc, jr_00e_7186

    jr nz, jr_00e_7188

    and b
    ld h, b
    ld h, b
    push af
    ei
    ei
    ld b, [hl]
    db $fd
    rst $38
    ldh [rOBP0], a
    db $fd
    ei
    db $fd
    db $fd
    ei
    rst $30
    ei
    db $eb
    rst $30
    rst $08
    ccf
    rst $38
    db $fc
    di
    di
    rlca
    rlca
    push af
    cp $ed
    ld e, $fb
    inc c
    rst $38
    db $10
    jp hl


    ld [hl], a
    cp a
    rst $18
    cp a
    ld [hl], e
    rst $18
    ld sp, hl
    ld a, a
    call Call_00e_47ff
    rst $38
    add e
    rst $18
    inc a
    cp l
    ld [hl], e
    rst $38
    rst $28
    ei
    ld h, a
    db $fd
    dec sp
    ld [hl], l
    xor [hl]
    ld a, a
    and e
    ld l, h
    or e
    ld a, [hl]
    and c
    db $e4
    dec sp
    ld sp, hl
    ld b, a
    adc l
    di
    di
    rrca
    rra
    cp $fc
    db $fc
    ld [hl], h
    call z, $c878
    and l
    nop
    or h
    ldh [rNR50], a
    ld bc, $f201
    ei
    rst $28
    rra
    rst $38
    rlca
    ei
    ld b, $f7
    inc c
    rst $18
    jr c, jr_00e_728f

    db $e3
    cp a
    add $fb
    ccf
    rst $08
    ld sp, hl
    xor a
    ret c

    sbc a
    ldh a, [$bf]
    db $e3
    rst $38
    and $ff
    ld a, b
    rst $30
    rrca
    db $fd
    ei
    ld b, $42
    rst $38
    nop
    ld [de], a
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    and c
    rst $38
    cp a
    ld a, a
    ld a, [$bde6]
    jp $e1df


    ld l, $31
    ld a, [de]

Call_00e_723c:
    dec e
    add e
    ld [bc], a
    ld a, $03
    inc a
    inc a
    ld h, [hl]
    ld h, [hl]
    dec h
    ld e, d
    add e
    ld b, $04
    rst $08
    ld b, $0f
    sbc a
    ld b, $00
    ld [de], a
    inc a
    inc a
    ld a, h
    ld b, h
    sbc d
    add [hl]
    add [hl]
    adc [hl]
    ld [bc], a
    jp nz, $f4d4

    jr c, jr_00e_7297

    nop
    nop
    ld [$6800], sp
    and [hl]
    nop
    ccf
    ld bc, $7f47
    ld b, d
    cp d
    rst $00
    ld b, $9a
    rst $20
    ld b, l
    ld a, a
    ld a, l
    ld a, a
    dec l
    ld b, d
    ccf
    inc l
    inc bc

jr_00e_7279:
    ccf
    jr z, @+$41

    ld e, b
    ld b, c
    ld a, a
    ld e, c
    ld b, $7f
    add hl, hl
    ccf
    inc de
    ld e, $0d
    dec c
    and a
    ld bc, $09c8
    ldh [rNR41], a
    ret nc

jr_00e_728f:
    jr nc, jr_00e_7279

    ret c

    ld hl, sp-$08
    ld [hl], b
    ldh a, [rSTAT]

jr_00e_7297:
    ldh [$60], a
    dec de
    ld [hl], b
    ldh a, [$a8]
    ret c

    add sp, $18
    cp $fe
    sub a
    sbc c
    rst $10
    reti


    rst $28
    ld sp, hl
    rst $28
    rra
    or $fe
    add d
    cp $86
    cp $84
    db $fc
    sbc b
    ld hl, sp+$60
    ldh [$b3], a
    nop
    sub b
    ld bc, $30d0
    ld b, c
    add sp, $18
    ldh [rNR44], a
    ret z

    jr c, @-$0e

    ldh a, [$b0]
    ret nc

    ld a, b
    ret z

    cp [hl]
    ld l, [hl]
    db $fd
    xor e
    db $fd
    di
    ld a, [hl]
    ld [c], a
    ld l, h
    sbc h
    or b
    ld [hl], b
    ld b, b
    ret nz

    db $fc
    cp $ee
    ld a, [c]
    call nc, $f8be
    sbc h
    ldh a, [$90]
    ret nc

    or b
    ldh [$e0], a
    ret


    dec b
    rla
    ld bc, $8080
    add a
    ld [bc], a
    ld hl, sp+$13
    jr jr_00e_7309

    ld a, [hl]
    ld h, [hl]
    db $db
    rst $20
    cp l
    jp $817e


    rst $38
    nop
    rst $38
    jp $3cff


    rst $38
    jr @+$01

    ld e, d
    ld b, c
    rst $38
    jr jr_00e_730c

    rst $20
    inc a

jr_00e_7309:
    db $db
    rst $20
    ld a, a

jr_00e_730c:
    add b
    inc hl
    rst $38
    rlca
    cp l
    ld a, [hl]
    cp l
    jp Jump_00e_7eff


    rst $20
    inc a
    ld b, d
    rst $38
    inc h
    inc bc
    rst $20
    ld e, d
    rst $38
    rst $20
    add e
    rlca
    db $10
    ld bc, $e7e7
    dec l
    nop
    dec c
    rrca
    rrca
    ld [de], a
    rra
    xor l
    or e
    db $dd
    db $e3
    ld e, [hl]
    ld h, c
    cp a
    ret nz

    rst $38
    add b
    add e
    inc b
    ld h, $e0
    inc hl
    rst $28
    ldh a, [$fd]
    cp e
    or $ef
    rst $38
    or $ff
    ld e, a
    or $7f
    db $dd
    ld a, e
    rst $38
    and b
    rst $38
    or b
    db $fd
    db $db
    rst $38
    rst $28
    cp e
    rst $20
    dec [hl]
    rst $28
    ld l, l
    rst $18
    ld a, [c]
    cp a
    call $df73
    pop hl
    ld a, $3e
    adc e
    ld bc, $07c4
    dec b
    ld b, $0a
    rrca
    rla
    dec e
    rra
    add hl, de
    ld [hl+], a
    rra
    add hl, bc
    dec de
    rra
    add hl, de
    dec e
    rra
    ld [de], a
    rra
    cpl
    jr nc, jr_00e_73c5

    add [hl]
    inc b
    ld h, c
    rla
    ld h, a
    ld a, a
    ld c, a
    ld a, a
    rst $20
    call c, $abf4
    rst $38
    sbc a
    ld a, [hl]
    ld c, e
    cp a
    ld a, [$fbae]
    adc a
    ei
    ld c, [hl]
    ld a, e
    ld e, a
    ld [hl], h
    ccf
    ccf
    sub h
    rlca
    add b
    ld [bc], a
    add hl, de
    rra
    dec e
    add a
    rlca
    sbc b
    inc hl
    nop
    dec de
    add c
    add c

jr_00e_73a4:
    ld a, a
    rst $38
    or a
    ld a, b
    call $e33e
    rra
    db $fc
    ccf
    ei
    ld b, a
    db $fd
    add e
    rst $38
    add c
    db $fd
    add e
    ld sp, hl
    and a
    ld [hl], e
    rst $08
    cp a
    ld a, a
    rst $38
    rlca
    xor d
    ld bc, $e0c4
    jr nz, jr_00e_73a4

    ld h, b

jr_00e_73c5:
    ldh [$a0], a
    ld h, b
    ret nc

    or b
    ret nc

    ld [hl], b
    ldh a, [rSVBK]
    ret c

    ld a, b
    add sp, $58
    call c, $3ef4
    ld a, [c]
    ld e, $f6
    db $db
    rst $38
    ld sp, $71ff
    rst $18
    pop hl
    cp a
    pop hl
    ccf
    ld [c], a
    ld a, [hl]
    ld b, c
    and d
    cp $0b
    ld [c], a
    ld a, [hl]
    pop af
    ld a, a
    pop af
    ccf
    ld sp, hl
    rst $18
    cp l
    ld h, a
    jp c, $29da

    nop
    ldh [$30], a
    jr c, jr_00e_7432

    ld d, h
    ld l, h
    db $fc
    db $f4
    ld a, h
    adc h
    inc a
    call nz, $e29e
    call $a1f3
    ld a, a
    rst $38
    rra
    pop bc
    ccf
    sbc a
    ld a, a
    ld [hl], a
    rst $38
    rst $28
    ld a, [c]
    db $db
    db $76
    rst $30
    call c, $ddfe
    cp a
    ld sp, hl
    call $dafb
    scf
    db $fc
    rst $38
    db $fc
    add a
    cp $03
    adc a
    ld [hl], e
    inc bc

jr_00e_7427:
    rst $38
    add a
    ld [hl+], a
    rst $38
    ld bc, $8383
    add e
    nop
    jr c, @-$6a

jr_00e_7432:
    rlca
    ldh [rDIV], a
    rst $38
    db $fd
    or e
    ld sp, hl
    add a
    add l
    rlca
    ld a, [$7502]
    ei
    ei
    add [hl]
    dec b
    ld l, a
    dec d
    rst $38
    ld a, [c]
    ld e, a
    push hl
    db $ed
    rra
    ei
    db $fd
    dec bc
    db $fd
    rst $28
    add hl, de
    ld c, $f9
    db $db
    inc a
    or a
    db $ec
    ld a, e
    add $ff
    rst $38
    sub h
    rlca
    ldh [rDIV], a
    and c
    db $fd
    add e
    ld sp, hl
    add a
    add l
    rlca
    ld a, [$0797]
    ldh [rP1], a
    db $fd
    add [hl]
    ld [$2599], sp
    ld bc, $06a9
    db $ec
    nop
    inc bc
    adc $09
    ld c, $a7
    ld [$2340], sp
    inc e
    ld bc, $7f7f
    add e
    rlca
    ld a, [hl]
    ld b, $10
    db $10
    jr nc, jr_00e_74b9

    ld a, a
    ld a, a
    rst $38
    add $09
    jr c, jr_00e_7427

    dec b
    nop
    and e
    nop
    ldh [$83], a
    ld b, $84
    and e
    rlca
    adc h
    ld bc, $f888
    ld b, c
    inc b
    db $fc
    rlca
    ld [bc], a
    cp $62
    cp $f2
    cp $9a
    cp $42
    ld l, d
    sbc [hl]
    rra
    sbc d
    cp $e4
    db $fc
    adc b
    ld hl, sp-$10
    ldh a, [rNR41]
    jr nz, jr_00e_74f7

jr_00e_74b9:
    ld a, $22
    ld [hl+], a

jr_00e_74bc:
    ld [hl-], a
    ld [hl-], a
    ld c, h
    ld c, h
    inc b
    inc b
    ld [$1008], sp
    db $10
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    jr jr_00e_74e4

    ld l, b
    ld l, b
    dec h
    ld [$0023], sp
    daa
    jr z, jr_00e_74d8

    ld c, c
    ld c, c
    add [hl]

jr_00e_74d8:
    add [hl]
    inc hl
    nop
    ld bc, $7c7c
    daa
    ld [bc], a
    ld bc, $7e7e
    ccf

jr_00e_74e4:
    nop
    ldh [rNR42], a
    inc bc
    inc bc
    inc c
    rrca
    inc de
    inc e
    ld l, $3f
    dec [hl]
    dec sp
    ld l, $3f
    ld [hl], a
    ld a, a
    ld a, [hl]
    ld a, a

jr_00e_74f7:
    ld c, a
    ld [hl], b
    ld l, [hl]
    ld a, a
    ld [hl], a
    ld a, a
    xor e
    rst $18
    ei
    adc a
    ld [hl], a
    ld a, a
    ld h, [hl]
    ld a, a
    inc de
    dec e
    rrca
    rrca
    dec h
    ret nz

    ld bc, $f0f0
    add a
    ld b, $ec
    nop
    ldh [$c8], a
    ld a, [bc]
    ld c, $05
    pop bc
    ret nz

    jp $c6c0


    pop bc
    ld b, c
    cp a
    rst $38
    inc de
    sbc a
    ldh a, [$5f]
    ldh [rIE], a
    rst $38
    ei
    adc h
    db $fd
    ld b, $8e
    ld [hl], e
    rlca
    ld sp, hl
    add e
    db $fd
    ld b, d
    ld a, a
    ccf
    ccf
    adc c
    nop
    jr c, jr_00e_74bc

    add hl, bc
    sbc h
    jp $9309


    add hl, bc
    ld h, d
    ld h, d
    ld a, [c]
    sub d
    xor b
    ret c

    ld a, b
    ld l, b
    jr jr_00e_7561

    add a
    nop
    ret nc

    add hl, bc
    rra
    ld e, $27
    inc a
    dec h
    ld a, $5f
    ld a, l
    ld h, d
    ld a, a
    ld b, c
    ld e, d
    ld h, a
    inc bc
    ld h, l
    ld a, [hl]
    ld e, l
    ld a, [hl]
    ld b, c
    ld d, [hl]

jr_00e_7561:
    ld a, a
    ld b, c
    ld d, e
    ld a, a
    rlca
    ld e, e
    ld a, [hl]
    ld c, e
    ld a, [hl]
    ld c, c
    ld a, a
    ld hl, $873f
    ld bc, $013c
    ld [bc], a
    ld [bc], a
    add e
    nop
    ld [bc], a
    add e
    nop
    ld a, [hl]
    dec d
    inc a
    inc h
    ld a, [hl+]
    ld [hl], $1e
    ld a, [de]
    ld b, $06
    inc bc
    inc bc
    ld b, $07
    dec c
    ld c, $0b
    dec c
    ld e, $1b
    dec d
    ld e, $1d
    ld d, $41
    dec hl
    inc a
    dec d
    add hl, hl
    ld a, $28
    ccf
    ld c, c
    ld a, a
    rst $00
    cp $84
    rst $38
    sbc [hl]
    rst $38
    pop af
    rst $38
    xor $f1
    xor [hl]
    pop af
    ld d, c
    ld a, a
    ccf
    ccf
    dec sp
    nop
    inc d
    rst $38
    rst $38
    ld h, a
    sbc a
    db $fc
    inc bc
    rst $38
    nop
    rst $18
    ccf
    ld l, a
    or b
    rst $18
    rst $28
    rst $28
    ldh a, [$df]
    ccf
    rst $38
    nop
    inc bc
    jr z, @+$01

    ldh [rNR42], a
    inc c
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    jr c, jr_00e_7607

    call nc, $b4ec
    ld l, h
    jp c, $dd3e

    rst $20
    rst $30
    dec sp
    rst $38
    ld e, l
    ei
    cp a
    push af
    cp e
    push af
    ei
    db $db
    rst $38
    xor [hl]
    ld a, a
    ei
    rst $00
    or l
    ld a, e
    add l
    dec b
    ld h, d
    dec e
    ld sp, hl
    rst $38
    ld a, e
    rst $30
    rst $28
    rra
    ld sp, hl
    rst $38
    ld c, c
    rst $38
    reti


    ld l, a
    dec a
    rst $20
    xor l
    ld [hl], a
    sub $3b
    ld l, [hl]
    sbc e
    ld [hl], a
    cp l
    rst $08
    cp $bf
    rst $00

jr_00e_7607:
    add [hl]
    cp $7c
    ld a, h
    sub e
    inc bc
    adc $e0
    ld hl, $1e19
    ccf
    ccf
    call c, $efe3
    db $10
    cp $7f
    db $ed
    db $db
    or a
    call z, $f84f
    rst $38
    jr nc, @+$01

    nop
    db $ec
    rra
    rst $30
    dec de
    sbc $31
    rst $28
    jr nc, @+$41

    ldh [$de], a
    pop hl
    ld a, b
    add a
    add e
    inc b
    xor $05
    rst $38
    cp a
    ld h, d
    rst $38
    rst $38
    rst $38
    xor a
    nop
    jp z, $8013

    add b
    ccf
    ccf
    ld d, b
    ld l, a
    cp [hl]
    rst $38
    rst $18
    db $fd
    db $eb
    ld [hl], $ff
    db $e3
    ld a, [hl+]
    rst $30
    call c, $e03f
    rra
    add h
    ld bc, $0b31
    jr nz, @+$01

    ld d, b
    cp $89
    db $fc
    rlca
    ei
    rlca
    cp $01
    ld a, h
    call nz, Call_00e_7b08
    inc bc
    adc [hl]
    rst $38
    db $e3
    cp $d9
    ld a, [bc]
    db $dd
    ld [bc], a
    ld a, a
    ld a, a
    cp a
    and e
    ld a, [bc]
    ldh a, [rNR34]
    nop
    rst $38
    db $fc
    di
    rrca
    db $fd
    cp $fb
    rlca
    db $fd
    ei
    ei
    rst $30
    rst $38
    rst $38
    xor $1f
    push hl
    cp $fd
    rst $30
    ld a, [$fbf7]
    rst $30
    rst $30
    db $ec
    db $ed
    ld e, $97
    ld a, e
    xor e
    ld a, [bc]
    cp [hl]
    inc c
    inc c
    inc c
    ld [de], a
    ld e, $2d
    inc sp
    ld l, l
    ld [hl], e
    xor l
    di
    sub e
    rst $38
    adc l
    ld b, d
    rst $38
    dec c
    ld [bc], a
    rst $38
    add hl, de
    rst $38
    ld b, c
    ld a, [de]
    cp $00
    inc d
    xor d
    ld b, $69
    nop
    ld a, [de]
    and h
    ld b, $75
    ld bc, $fc84

Call_00e_76be:
    push de
    inc bc
    push bc
    add l
    ld [bc], a
    call nz, $2be0
    inc e
    db $fc
    rlca
    ei
    ld hl, sp-$39
    and b
    ld a, a
    ret nc

    ccf
    xor b
    rst $18
    ld a, h
    rst $20
    sub [hl]
    ld a, e
    adc l
    ld a, e
    rlca
    db $fd
    rrca
    db $fd
    ld d, $ff
    db $e4
    rst $38
    ld [$10ff], sp
    rst $38
    ld l, $ff
    ld sp, $6eff
    pop af
    xor $f1
    xor h
    di
    pop de
    rst $38
    rst $38
    rst $38
    or l
    inc bc
    nop
    dec c
    inc e
    db $ec
    ld [c], a
    sbc [hl]
    pop hl
    ld a, a
    db $d3
    ccf
    xor $df
    ld [hl], c
    rst $38
    inc l
    di
    ld b, c
    ld l, $f1
    inc d
    inc l
    di
    ld de, $1fff
    rst $38
    ld e, $ff
    cp $ff
    ld [hl], $ff
    db $76
    rst $38
    or a
    rst $38
    ld [hl], a
    cp a
    ei
    ld a, a
    ei
    cp d
    dec bc
    cp l
    add h
    ld b, $c0
    ldh [rNR43], a
    or b
    ldh [$60], a
    ldh a, [rNR10]
    ldh a, [$f0]
    sbc $3e
    push af
    ei
    rst $28
    ld sp, $e35d
    or $8e
    reti


    ccf
    ld h, l
    ei
    sbc c
    rst $20
    ld hl, $c1df
    rst $38
    and $3e
    and c
    ld a, a
    jp $3cff


    inc a
    sub h
    rlca
    add b
    ld [bc], a
    dec e
    rra
    add hl, de
    add a
    rlca
    sbc b
    sub e
    inc b
    ld h, b
    ld bc, $f7bf
    add e
    inc b
    ld [hl], h
    dec b
    ld c, a
    ld a, a
    ld h, a
    ld a, b
    ccf
    ccf

jr_00e_7762:
    cp e
    ld [bc], a
    inc b
    ld bc, $e020
    ld b, c

jr_00e_7769:
    db $10
    ldh a, [rSCX]
    ld [$05f8], sp
    jr z, jr_00e_7769

    jr @-$06

    ld [$83f8], sp
    add hl, bc
    ld l, b
    nop
    ld bc, $ff41
    add c
    inc b
    rst $38
    pop bc
    rst $38
    ld [c], a
    cp $dd
    inc b
    inc de
    add l
    add hl, bc
    ld d, h
    ld b, c
    and b
    ldh [rSC], a
    sub b
    ldh a, [$90]
    add [hl]
    dec c
    ld h, c
    ld b, l
    inc b
    db $fc

jr_00e_7796:
    add e
    add hl, bc
    ld a, h
    ld bc, $fcfc
    inc hl
    ld [bc], a
    inc bc
    inc h
    inc h
    jr jr_00e_77bb

    and a
    add hl, bc
    sbc d
    ld bc, $fefe
    add l
    add hl, bc
    adc d
    push bc
    add hl, bc
    adc a
    inc hl
    stop
    inc e
    call nz, $e40d
    inc d
    ld [hl], b
    ld [hl], b
    sbc b
    sbc b

jr_00e_77bb:
    ld [hl], b
    ld [hl], b
    jr nz, jr_00e_77df

    inc h
    inc h
    ld a, [c]
    ld a, [c]
    ld a, [hl+]
    ld a, [hl+]
    ld c, d
    ld c, d
    ld c, b
    ld c, b
    adc b
    adc b
    jr nc, jr_00e_7762

    rlca
    rst $18
    nop
    add l
    adc c
    ld [$84d6], sp
    dec b
    ld h, b
    sub d
    dec b
    ld h, e
    rlca
    rst $38
    di
    db $db
    rst $20

jr_00e_77df:
    rst $28
    inc e
    di
    di
    adc c
    rlca
    nop
    rlca
    rst $38
    jp $24ff


    rst $38
    ld a, [hl]
    rst $38
    ld e, d
    ld b, c
    rst $38
    ld a, [hl]
    add e
    rlca
    ld a, [de]
    ld bc, $00ff
    inc hl
    rst $38
    ldh a, [rNR42]
    rlca
    jr nz, jr_00e_7796

    ld a, [bc]
    ld b, d
    adc c
    inc c
    ld [bc], a
    ld de, $3a32
    ld e, [hl]
    ld h, d
    ld c, l
    ld b, e
    add e
    rst $00
    add c
    pop hl
    ld c, c
    ld a, c
    ld a, [hl-]
    ld a, $04
    inc b
    nop
    nop
    add $00
    db $ed
    ld [bc], a
    rlca
    add hl, bc
    rrca
    and l
    dec c
    xor [hl]
    inc b
    ld e, b
    ld a, a
    ld h, h
    ld a, a
    jp c, $e741

    db $db
    ld c, $e7
    and a
    rst $38
    sbc l
    rst $38
    sbc c
    rst $38
    cp d
    cp $b2
    cp $c4
    db $fc
    ld a, b
    ld a, b
    db $e4
    inc hl

Jump_00e_783c:
    nop
    ldh [$2d], a
    ldh [$e0], a
    ld d, b
    or b
    ldh a, [$90]
    ld d, b
    ldh a, [$a0]
    ld h, b
    db $10
    ldh a, [$d0]
    ldh a, [$38]
    ld hl, sp-$2c
    db $fc
    ld a, d
    or $6a
    or $ea
    or $7a
    and $bc
    ld h, h
    sub $ee
    ld [$d19e], a
    cp a
    and l
    ld a, e
    call Call_00e_5973
    rst $20
    sub c
    rst $28
    ld b, d
    cp $e2
    cp [hl]
    ld b, d
    pop af
    rra
    rlca
    pop af
    cp a
    ld [hl], c
    rst $38
    ld h, c
    rst $38
    and d
    cp $ac
    rlca
    ld a, [hl]
    ld [hl+], a
    ldh [rP1], a
    ldh a, [$a4]
    ld [bc], a
    ld a, [hl+]
    inc c
    ld hl, sp+$78
    ret c

    ld hl, sp+$6c
    call c, Call_00e_76be
    ld e, [hl]
    or d
    sbc $f6
    cp e
    sbc b
    ld [$0121], sp
    sbc $de
    db $f4
    dec h
    ld c, $de
    add hl, de
    ld [$170f], sp
    jr jr_00e_78d0

    jr nc, jr_00e_78f8

    ld a, e
    ld a, [hl+]
    ccf
    ld e, l
    ld l, [hl]
    ld a, a
    ld e, h
    ld e, a
    ld a, l
    ld c, a
    ld a, [hl]
    db $ed
    cp $de
    di
    sbc a
    pop hl
    xor a
    ldh a, [rSTAT]
    ld a, a
    rst $38
    and e
    ld a, [bc]
    add h
    ld bc, $5e5e
    inc hl
    ld b, b
    dec b
    ld d, b
    ld d, b
    ld c, [hl]
    ld c, [hl]
    jr nz, @+$22

    adc l
    ld b, $10
    db $e4
    ld hl, $0100
    ld a, h

jr_00e_78d0:
    ld a, h
    inc hl
    add $03
    ret nz

    ret nz

    sbc $de
    push bc
    db $10
    dec b
    ld bc, $1e1e
    inc hl
    inc c
    inc hl
    dec c
    inc hl
    call $0e87
    call c, $cc07
    call z, $1212
    ld e, $1e
    db $10
    db $10
    add e
    inc b
    ld hl, sp+$23
    inc bc
    inc hl
    inc b
    dec b

jr_00e_78f8:
    ld [$4f08], sp
    ld c, a
    adc b
    adc b
    add a
    add hl, bc
    jr nz, jr_00e_7907

    ld hl, $1921
    add hl, de
    dec b

jr_00e_7907:
    dec b
    rst $00
    ld [$0347], sp
    ld h, b
    ld h, b
    sub a
    sub a
    inc hl
    sub h
    ld bc, $6464
    inc hl
    nop
    dec b
    ld [hl+], a
    ld [hl+], a
    rlca
    rlca
    ld h, d
    ld h, d
    inc hl
    ld [hl+], a
    ld bc, $7171
    dec h
    nop
    add hl, bc
    inc l
    inc l
    or c
    or c
    ld hl, $a121
    and c
    jr nz, jr_00e_7950

    add a
    nop
    sbc d
    dec b
    add h
    add h
    add e
    add e
    add b
    add b
    add a
    ld [bc], a
    ld a, $09
    pop hl
    pop hl
    ld de, $f111
    pop af
    sub c
    sub c
    pop de
    pop af
    add a
    ld [bc], a
    jp nz, $1707

jr_00e_794d:
    rla
    db $f4
    db $f4

jr_00e_7950:
    sub h
    sub h
    rst $10
    rst $30
    and l
    ld a, [bc]
    ld a, $01
    add hl, sp
    add hl, sp
    inc hl
    sub c
    ld bc, $9595
    add e
    db $10
    ld a, $07
    ld [hl], b
    ld [hl], b
    adc b
    adc b
    add c
    add c
    sbc d
    sbc d
    inc hl
    adc d
    add e
    db $10
    ld l, [hl]
    inc hl
    ld [bc], a
    inc b
    ld a, [hl-]
    ld a, [hl-]
    ld b, d
    ld b, d
    ld b, e
    call nz, $da10
    ld bc, $0000
    inc hl
    add $02
    ld l, h
    ld l, h
    jr c, jr_00e_794d

    db $10
    add sp, $01
    ld a, h
    ld a, h
    adc e
    db $10
    inc b
    push bc
    db $10
    ld [hl], e
    daa
    sbc d
    ld bc, $7171
    inc hl
    inc b
    inc bc
    db $e4
    db $e4
    scf
    scf
    dec h
    inc [hl]
    add a
    rlca
    ld a, [hl-]
    add hl, bc
    ld [hl], e
    ld [hl], e
    add h
    add h
    ld h, e
    ld h, e
    db $10
    db $10
    rst $20
    rst $20
    adc c
    ld b, $f2
    dec b
    ld b, b
    ld b, b
    ret z

    ret z

    ld d, b
    ld d, b
    add e
    inc c
    ld [$0405], sp
    inc b

jr_00e_79bc:
    call nz, $24c4
    inc h
    jp $1511


    ld bc, $eeee
    inc hl
    nop
    ld bc, $0404
    and e
    dec c
    xor $a3
    db $10
    ld a, d
    ld bc, $8282
    and e
    inc c
    ld [$1009], sp
    db $10
    ld de, $1211
    ld [de], a
    inc de
    inc de
    sub d
    sub d
    add $06
    ld e, c
    ld b, $00
    add $c6
    add hl, hl
    add hl, hl
    rst $28
    rst $28
    and a
    ld de, $032c
    db $10
    db $10
    cp c
    cp c
    add e
    ld de, $0364
    sub l
    sub l
    add hl, bc
    add hl, bc
    adc c
    ld de, $0570
    cpl
    cpl
    jr z, jr_00e_7a2d

    daa
    daa
    add l
    ld bc, $2342
    and d
    inc hl
    sub h
    add a
    db $10
    ld a, $03
    dec hl
    dec hl
    inc l
    inc l
    inc hl
    jr z, @+$03

    add sp, -$18
    dec h
    nop
    ld bc, $8c8c
    ld [hl+], a
    ld d, d
    add $11
    jp z, $0841

    inc c
    add hl, bc
    ld c, b
    ld c, h
    adc b
    adc b

jr_00e_7a2d:
    ld [$8008], sp
    add b
    ld c, b
    ld c, b
    jp $010c


    dec hl
    jr nc, jr_00e_79bc

    ld [$0144], sp
    ld b, h
    ld b, h
    inc hl
    add $01
    cp $fe
    add l
    db $10
    db $ec
    inc bc
    nop
    nop
    rst $00
    rst $00
    daa
    ld l, h
    ld bc, $c7c7
    ld b, d
    inc b
    ld b, $09
    add h
    add [hl]
    call nz, $c4c6
    call nz, $c0c0
    add h
    add h
    dec h
    nop
    ld bc, $8282
    inc hl
    ld [bc], a
    inc bc
    add d
    add d
    ld bc, $8d01
    db $10
    and b
    ld bc, $f4d4
    xor e
    ld de, $c790
    ld de, $0b29
    ld b, b
    ld b, b
    ld b, e
    ld b, e
    ld h, h
    ld h, h
    ld d, a
    ld d, a
    ld d, h
    ld d, h
    ld d, e
    ld d, e
    adc b
    ld [bc], a
    db $e4
    nop
    ld b, b
    and e
    inc bc
    adc b
    and a
    inc bc
    adc b
    ld bc, $7070
    daa
    ld c, b
    dec h
    nop
    inc bc
    set 1, e
    inc l
    inc l
    jp $bf11


    nop
    xor b
    add [hl]
    ld de, $01bf
    ld b, h
    ld b, h
    dec h
    ld d, h
    push bc
    add hl, bc
    and e
    inc bc
    nop
    nop
    ld h, a
    ld h, a
    add l
    ld [de], a
    ld c, b
    ld bc, $7474
    xor b
    inc c
    inc b
    ld b, $48
    ld a, b
    ld a, b
    ld b, b
    ld b, b
    ld a, [hl-]
    ld a, [hl-]
    push bc
    dec c
    rst $08
    ld bc, $7070
    dec h
    sub b
    and e
    inc b
    ld hl, sp+$01
    ld a, [hl]
    ld a, [hl]
    inc hl
    ld h, b
    nop
    ld a, h
    ret z

    ld [de], a
    ret c

    ld bc, $fcfc
    inc hl
    add $05
    db $fc
    db $fc
    ret c

    ret c

    call z, $83cc
    db $10
    xor $07
    add $c6
    xor $ee
    cp $fe
    sub $d6
    dec h
    add $25
    ld b, b
    jr z, @-$3e

    ld [bc], a
    ld b, b
    ldh a, [$f0]
    inc hl
    adc b
    inc bc
    adc d
    adc d
    di
    di
    inc hl
    add d
    rst $00
    ld [de], a
    daa
    ld bc, $5c5c
    inc hl
    ld d, d

Call_00e_7b08:
    inc bc
    ld e, h
    ld e, h
    ret nc

    ret nc

    add l
    ld de, $0350
    inc b
    inc b
    inc e
    inc e
    inc hl
    and h
    and l
    ld de, $036e
    db $10
    db $10
    cp b
    cp b
    inc hl
    db $10
    inc bc
    inc d
    inc d
    adc b
    adc b
    add a
    ld de, $2350
    add h
    inc bc
    dec b
    dec b
    add d
    add d
    adc c
    ld de, $0520
    ld h, h
    ld h, h
    inc d
    inc d
    db $e3
    db $e3
    add l
    ld [de], a
    ld d, b
    ld bc, $e3e3
    inc hl
    ld b, h
    inc bc
    ld d, h
    ld d, h
    inc hl
    inc hl
    xor c
    ld de, $0950
    jr nz, jr_00e_7b6d

    jr z, jr_00e_7b77

    db $10
    db $10
    and b
    ret nz

    or b
    ret nz

    add e
    inc de
    sub b
    add hl, bc
    xor d
    ret nz

    cp a
    ret nz

    ret nz

    rst $38
    ld [$7fff], a
    ld a, a
    adc l
    ld bc, $03fe
    ld hl, sp-$08
    ldh a, [$f0]
    or c
    nop

jr_00e_7b6d:
    ret z

    daa
    adc c
    adc e
    rlca
    ld a, [hl-]
    ld bc, $0001
    ld b, c

jr_00e_7b77:
    inc bc
    ld bc, $0101
    nop
    add l
    ld bc, $1779
    xor d
    nop
    rst $38
    nop
    nop
    rst $38
    xor d
    rst $38
    rra
    inc e
    rrca
    ld [$001f], sp
    ccf
    nop
    ld l, e
    inc e
    cp [hl]
    ld a, a
    rst $28
    ld [hl], e
    ld e, a
    rst $28
    add a
    inc de
    sub b
    add e
    inc de
    sub b
    rla
    and c
    ret nz

    or c
    ret nz

    and d
    pop bc
    or l
    jp nz, $c2a4

    or h
    jp nz, $c2a5

    or l
    jp nz, $c3a4

    or d
    pop bc
    and c
    ret nz

    or c
    ret nz

    adc e
    inc d
    nop
    nop
    and b
    call z, $2f14
    nop
    or b
    xor [hl]
    inc bc
    adc c
    nop
    ld bc, $0041
    ldh [rSTAT], a
    nop
    ret nz

    ld bc, $9c00
    add [hl]
    add hl, bc
    daa
    rrca
    inc bc
    inc bc
    rrca
    ld b, $3f
    dec b
    ld a, a
    dec b
    rst $38
    rlca
    rst $08
    rlca
    adc a
    rlca
    rst $30
    rrca
    sbc c
    nop
    cp e
    ld b, c
    ld bc, $0000
    ld b, $91
    inc d
    ld a, e
    sub $14
    adc l
    add a
    inc de
    add sp, $00
    rst $38
    adc [hl]
    dec bc
    ld a, l
    dec de
    rrca
    ld b, $0f
    rlca
    scf
    inc bc
    ld a, e
    ld sp, $387d
    cp a
    inc e
    rst $18
    adc [hl]
    rst $28
    rst $00
    rst $38
    db $e3
    ei
    ld [hl], c
    ld a, l
    jr c, jr_00e_7c4f

    inc e
    rst $18
    ld c, $ff
    ld b, $84
    inc d
    cp h
    dec bc
    rst $18
    rst $38
    rst $18
    ld c, a
    rst $38
    rst $20
    ld a, a
    cp [hl]
    ld a, a
    ld l, e
    inc e
    ld e, $84
    add hl, bc
    dec c
    inc de
    ld c, $01
    dec a
    ld [bc], a
    ld a, h
    ld [bc], a
    db $fd
    ld [bc], a
    call $8d02
    ld [bc], a
    ld sp, hl
    ld b, $03
    db $fc
    ld a, [hl]
    nop
    cp $01
    ld b, c
    db $fd
    ld [bc], a

Call_00e_7c41:
    dec e
    cp $01
    inc bc
    db $fc
    ld bc, $fdfe
    ld [bc], a
    dec e
    ld [bc], a
    add l
    ld [bc], a
    adc l

jr_00e_7c4f:
    ld [bc], a
    ld b, l
    ld [bc], a
    dec [hl]
    ld [bc], a
    inc c
    inc bc
    ld [bc], a
    ld bc, $c4a3
    or e
    call nz, $c4a3
    or e
    call nz, $1587
    jr nc, jr_00e_7c7c

    ld a, $3e
    inc e
    inc e
    add hl, bc
    ld [$0103], sp
    ld b, $03
    dec c
    ld b, $1b
    dec c
    scf
    dec de
    ld l, a
    scf
    ld a, a
    cpl
    ld a, a
    ld a, $3e
    inc e

jr_00e_7c7c:
    dec e
    xor b
    rlca
    ld b, e
    ld bc, $78fc
    ld b, h
    rst $38
    ld hl, sp+$01
    ei
    db $fc
    adc c
    dec d
    jr nc, jr_00e_7c8e

    or b

jr_00e_7c8e:
    jp $148f


    inc a
    rlca
    ld bc, $0300
    nop
    rlca

jr_00e_7c98:
    nop
    rrca
    nop
    add e
    inc de
    db $f4
    inc de
    ld a, a
    nop
    pop hl
    ld e, $d2

jr_00e_7ca4:
    ld hl, $40a1
    add c
    ld b, b
    and c
    ld b, b
    or [hl]
    ld b, c
    call c, $e123
    ld e, $7f
    nop
    add e
    inc d
    db $fc
    dec bc
    ld a, a
    nop
    add b
    nop
    ld a, a
    nop
    dec d
    nop
    or l
    nop
    ld [$8315], a
    inc de

jr_00e_7cc5:
    db $ec
    dec b
    rlca
    inc bc
    dec de
    ld bc, $183d
    add e
    inc d
    and $0b
    rst $28
    rst $00
    rst $30
    db $e3
    rst $38
    ld [hl], c
    ld a, l
    jr c, jr_00e_7c98

    inc e
    rst $38
    adc [hl]
    add e
    dec d
    jp z, $fb0c

    ld [hl], b
    ld a, l
    jr c, jr_00e_7ca4

    jr jr_00e_7cc5

    add b
    ld [$f5c0], a
    ret nz

    ld [$13a6], a
    rst $20
    nop
    xor d
    add [hl]
    dec bc
    ld a, a
    nop
    ld e, $88
    dec d
    sub a
    inc b
    ldh [rP1], a
    inc e
    ldh [$2f], a
    ld b, e
    db $10
    rst $28
    ld [de], a
    db $10
    rst $20
    jr jr_00e_7d39

    rrca
    ld e, $c0

jr_00e_7d0c:
    rrca
    ldh [$cf], a
    jr nc, @-$0f

    db $10
    rst $18
    jr nz, jr_00e_7d45

    rst $08
    ldh [$1f], a
    ld b, c
    rst $28
    db $10
    ld b, c
    add sp, $10
    rlca
    jp hl


    db $10
    db $eb
    db $10
    inc c
    ldh a, [rNR10]
    ldh [$af], a
    dec d
    jr nc, @-$7b

    ld a, [bc]
    ld c, $12
    ldh a, [$e0]
    ld e, b
    or b
    jr c, jr_00e_7da4

    ld sp, hl
    ldh a, [$f3]
    ldh [$e6], a

jr_00e_7d39:
    pop bc
    push de
    add d
    and l
    ld [bc], a
    ld b, [hl]
    ld bc, $2883
    nop
    rrca
    rst $30

jr_00e_7d45:
    rrca
    rra
    rlca
    add a
    rlca
    adc a
    rlca
    ld b, a
    dec b
    scf
    dec b
    rrca
    ld b, $03
    inc bc
    ld b, h
    rst $38
    nop
    ld bc, $ff00
    add l
    add hl, bc
    ld [hl+], a
    add e
    add hl, bc
    sbc h
    nop
    ld e, $88
    inc de
    rst $30
    adc c
    inc d
    ldh a, [rNR21]
    ld [$a11c], a
    nop
    ld b, d
    add b
    ld b, h
    add b
    ld c, b
    add b
    ld d, b
    add b
    and b
    nop
    ld b, b
    nop
    add b
    nop
    jr nz, jr_00e_7d7d

jr_00e_7d7d:
    ld d, b
    nop
    jr nz, jr_00e_7d0c

    nop
    sub l
    stop
    rlca
    inc bc
    push de
    add e
    db $ed
    jp $e3f5


    db $fd
    ld [hl], e
    db $fd
    dec sp
    cp l
    rra
    db $dd
    adc a
    add h
    ld d, $c2
    dec c
    ld h, e
    ld [hl], l
    inc bc
    xor l
    inc bc
    push de
    inc bc
    xor l
    inc bc
    ld d, l
    inc bc

jr_00e_7da4:
    xor l
    inc bc
    ld e, l
    add e

jr_00e_7da8:
    ld d, $dd
    ld a, [bc]
    inc bc
    cp c
    rlca
    ei
    rlca
    ld [c], a
    ld e, $0e
    cp $bc
    db $fc
    add e
    dec d
    and b
    nop
    or d
    add h
    dec d
    and l
    dec b
    sbc $00
    and c
    nop
    ld b, d
    add b
    xor c
    dec d
    add [hl]
    push bc
    inc d
    ld d, h
    ld [bc], a
    db $10
    ldh [$28], a
    ld b, e
    db $10
    add sp, $04
    db $10
    ld [$10f0], sp
    ldh [$ce], a
    rla
    ld c, $00
    nop
    or e
    inc d
    jr nc, jr_00e_7df3

    inc a
    nop
    ld h, [hl]
    jr jr_00e_7da8

    inc h
    sbc d
    ld b, h
    ld [hl], $88
    ld l, l
    db $10
    jp c, $b420

    ld b, b
    ld l, b
    add b

jr_00e_7df3:
    ret nc

    adc b
    ld d, $af
    ld [bc], a
    ei
    db $fc
    rst $38
    inc h
    ld hl, sp+$07
    ld sp, hl
    ld hl, sp-$05

Jump_00e_7e01:
    ld hl, sp-$04
    ld a, b
    ldh a, [$f0]
    add e
    ld d, $30
    dec b
    add l
    ld b, e
    adc l
    ld b, e
    dec b
    add e
    adc l
    rla
    ld [hl-], a
    db $10
    add l
    inc bc
    call $c503
    inc bc
    ld l, l
    add e
    push hl
    add e
    db $ed
    add e
    ld h, l
    add e
    call Call_00e_4503
    and h
    inc d
    ld hl, $4d04
    inc bc
    and l
    inc bc
    ld c, l
    cp d
    inc d
    inc hl
    inc b
    adc l
    inc bc
    ld h, l
    add e
    ld l, l
    adc h
    rla
    sub e
    ld [bc], a
    call nz, $c880
    adc h
    ld d, $a3
    ld a, [hl+]
    rst $38
    ld bc, $ffff
    sub d
    inc c
    ld a, l
    rst $38
    ld bc, $537f
    ld h, $7f
    nop
    ld h, e
    add hl, hl
    ld a, a
    dec hl
    ld a, [hl]
    ld b, $7f
    ld d, e
    dec l
    ld c, $1e
    ld l, $1f

jr_00e_7e5d:
    add h
    nop
    rlca
    ld b, $00
    db $10
    jr nz, jr_00e_7e95

    ld bc, $2111
    adc [hl]
    nop
    inc de
    ld [hl+], a
    ld a, a
    inc bc
    rrca
    rra
    cpl
    dec l
    sbc b
    nop
    add hl, bc
    adc c
    nop
    ld [bc], a
    ld b, $31
    ld [bc], a
    ld [de], a
    ld [hl+], a
    ld [hl-], a
    inc bc
    inc de
    adc l
    nop
    inc de
    nop
    ld d, a
    ld h, $67
    ld [$7f77], sp
    ld a, a
    inc hl
    inc sp
    inc b
    inc d
    inc h
    inc [hl]
    adc [hl]
    nop
    ld [de], a
    ld [bc], a

jr_00e_7e95:
    ld b, e
    sub b
    and b
    inc hl
    ld a, a
    ld a, [bc]
    sub d
    ld [hl], e
    ld a, a
    ld a, a
    dec b
    dec d
    dec h
    dec [hl]
    ld b, $16
    ld h, $8d
    nop
    inc de
    ld c, $40
    ld b, [hl]
    ld d, [hl]
    ld [hl], b
    ld a, a
    ld a, a
    ld e, b
    ld l, b
    ld a, b
    ld a, a
    ld a, a
    ld [hl], $07
    rla
    daa
    sub b
    nop
    db $10
    rrca
    ld b, c
    ld d, c
    ld h, c
    ld [hl], c
    ld a, a
    ld c, c
    ld e, c
    ld l, c
    ld a, c
    ld a, a
    ld a, a
    scf
    ld [$2818], sp
    jr c, jr_00e_7e5d

    nop
    ld de, $420d
    ld d, d
    ld h, d
    ld b, l
    ld a, a
    ld c, d
    ld e, d
    ld l, d
    ld a, d
    ld a, a
    ld a, a
    add hl, bc
    add hl, de
    add hl, hl
    sub c
    nop
    rrca
    db $10
    ld b, e
    ld b, a
    ld a, a
    ld d, h
    ld h, h
    ld [hl], h
    ld a, a
    ld l, e
    ld a, e
    ld a, a
    ld a, a
    ld a, [bc]
    ld a, [de]
    ld a, [hl+]
    dec bc
    dec de
    dec hl
    adc a
    nop
    sub d
    rlca
    ld a, a
    ld a, a
    ld d, l
    ld h, l
    ld [hl], l
    ld c, b
    ld e, h

Jump_00e_7eff:
    ld l, h
    sub [hl]
    nop
    ld a, [bc]
    nop
    ld b, e
    inc hl
    ld a, a
    dec bc
    dec a
    ld c, l
    ld e, l
    ld l, l
    ld a, a
    ld a, a
    inc c
    inc e
    inc l
    inc a
    dec c
    dec e
    adc [hl]
    nop
    ld [de], a
    nop
    add hl, sp
    ld [hl+], a
    ld c, e
    inc b
    ld e, e
    ld a, $4e
    ld e, [hl]
    ld l, [hl]
    sub [hl]
    nop
    ld a, [bc]
    nop
    ld a, [hl-]
    ld h, $4c
    nop
    dec sp
    sub [hl]
    nop
    ld a, [bc]
    jr z, jr_00e_7fae

    adc a
    ld bc, $cfaa
    ld bc, $8fd9
    ld bc, $f8aa
    add hl, sp
    ld bc, $e5f9
    adc e
    ld a, [hl]
    ldh a, [rNR42]
    nop
    nop
    nop
    inc l
    ld h, d
    dec de
    nop
    dec [hl]
    add e
    nop
    rlca
    ld [bc], a
    rla
    inc sp
    inc c
    sub c
    nop
    ld c, $ff
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_00e_7fae:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
