SECTION "ROM Bank $00d", ROMX[$4000], BANK[$d]

    inc bc
    nop
    inc bc
    inc bc
    inc c
    ld h, d
    rrca
    nop
    jr nz, jr_00d_404b

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

jr_00d_4034:
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

jr_00d_4049:
    ccf
    ret nz

jr_00d_404b:
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
    jr nc, jr_00d_4034

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
    jr nc, jr_00d_4049

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
    jr z, jr_00d_408f

jr_00d_408f:
    ld a, [bc]
    ld b, b
    inc h
    ld [bc], a
    ld b, h
    add h
    ld b, d
    ld bc, $0082

jr_00d_4099:
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
    jr nz, jr_00d_4099

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
    jr c, jr_00d_41a4

jr_00d_41a4:
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
    jp Jump_00d_6100


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
    ld [bc], a
    inc hl
    rlca
    ld de, $3a00
    ld bc, $12ed

Jump_00d_41ff:
    ld [bc], a
    db $fc
    dec h
    nop
    add hl, bc
    ld [$f0f0], sp
    inc c
    inc e
    ld [bc], a
    ld b, $01
    ld [bc], a
    ld bc, $02af
    ld b, b
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
    jr nz, @-$3e

    dec h
    nop
    dec b
    inc b
    ld [bc], a
    ld de, $040e
    inc bc
    add e
    ld [bc], a
    ld c, h
    ld b, c
    ld b, $01
    add hl, bc
    dec c
    ld [bc], a
    db $10
    ldh [$e0], a
    jr jr_00d_4289

    inc b
    ld a, [bc]
    inc b
    ld b, e
    inc b
    ld [bc], a
    and l
    ld [bc], a
    and b
    ld [bc], a
    jr nc, jr_00d_429d

    and b
    add h
    ld [bc], a
    ld e, e
    and e
    ld [bc], a
    sbc b
    rlca
    cp a
    ld b, b
    ld c, a
    jr nc, jr_00d_428a

    rra
    ld [$a607], sp
    nop

jr_00d_426f:
    cp d
    ld c, $01
    ld hl, $9e1e
    ld h, b
    ld b, b
    add b
    sbc b
    ld h, b
    inc h
    jr jr_00d_4287

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

jr_00d_4287:
    ldh [rSTAT], a

jr_00d_4289:
    ld e, b

jr_00d_428a:
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

jr_00d_429d:
    jr nz, jr_00d_42fe

    ld b, c
    nop
    and b
    dec b
    db $10
    and b
    ld e, [hl]
    and b
    jr nz, jr_00d_4308

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
    nop
    xor $0f
    ld [$2807], sp
    db $10
    ld b, b
    jr nz, jr_00d_42cd

    ld b, e
    jp $140c


jr_00d_42cd:
    adc b
    ld [$2890], sp
    sub b
    xor c
    inc bc
    jr nc, jr_00d_42db

    ld a, [bc]
    ld de, $0912
    ld [bc], a

jr_00d_42db:
    add hl, bc
    ld b, a
    jr z, jr_00d_426f

    ld b, a
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

jr_00d_42fe:
    add e
    nop
    ld [bc], a
    dec b
    inc e
    jr nz, @+$3a

    ld b, b
    ld [hl], b
    add b

jr_00d_4308:
    jp Jump_00d_6402


    nop
    add b
    adc h
    inc bc
    adc l
    ld h, e
    ld bc, $0b08
    inc b
    rlca
    ld [$100e], sp
    inc l
    db $10
    inc e
    ld b, c
    jr nz, jr_00d_4377

    nop
    jr nz, jr_00d_4363

    jr nc, jr_00d_4364

    ld bc, $40b0
    ld b, a
    ld h, b
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
    dec c
    nop
    ld e, a
    nop

jr_00d_4363:
    cp a

jr_00d_4364:
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
    nop
    and [hl]

jr_00d_4377:
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
    inc b
    ld [hl], e
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
    add l
    inc b
    ld a, e
    ld c, $10
    add $39
    nop
    rst $38
    db $10
    rst $28

Call_00d_4402:
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
    jp nz, Jump_00d_6401

    add e
    add l
    ld bc, $e074
    ld sp, $fcb3
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
    ld [bc], a
    ld e, [hl]
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
    adc [hl]

jr_00d_44a4:
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
    ld b, $ff
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
    call nz, $0a06
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

    ld b, $18
    ld bc, $3e3e
    inc hl
    ld h, e
    nop
    ld h, b
    adc $06
    jr z, jr_00d_44d8

jr_00d_44d8:
    ld h, e
    ret z

    ld b, $38
    ld bc, $7f7f
    inc hl
    ld h, b
    nop
    ld a, h
    add $06
    ld c, b
    adc l
    ld b, $40
    ld a, [bc]
    ld h, b
    ld h, b
    add sp, -$10
    ld hl, sp-$04
    db $fc
    cp $ff
    cp $fe
    ld h, $ff
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

Jump_00d_4502:
    add d
    rst $00
    ld b, l
    rst $38
    rst $38
    add l
    ld b, $20
    inc bc
    ld h, b
    ld h, b
    ld l, a
    ld l, a
    add a
    ld b, $2a
    ld bc, $6363
    adc c
    ld b, $06
    add e
    ld b, $0e
    ld bc, $3c3c
    add hl, hl
    jr jr_00d_44a4

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
    ld b, $4e
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
    ld b, $2a
    ld bc, $7e7e
    jp $d506


    adc c
    ld b, $10
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
    ld b, $2c
    dec hl
    jr jr_00d_457c

    nop
    nop
    ld h, e

jr_00d_457c:
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
    ld b, $40
    dec bc
    rlca
    rlca
    ld c, $0e
    inc e
    inc e
    jr c, jr_00d_45e3

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
    push bc
    nop
    add hl, sp
    adc c
    nop
    nop
    ld hl, sp+$49
    nop
    ld c, c
    adc l
    nop
    inc d
    inc b
    ld l, b
    ld [hl], b
    ld [hl], d
    ld h, e
    ld [hl], b
    ldh a, [rNR51]
    nop

jr_00d_45e3:
    rlca
    dec b
    ld [hl], a
    ld h, b
    ld h, e
    ld h, e
    ld l, l
    ld h, h
    sub h
    nop
    inc de
    inc b
    ld h, c
    ld [hl], d
    ld [hl], b
    ld l, a
    ld [hl], h
    ld [hl+], a
    ld a, a
    ld bc, $6463
    sub l
    nop
    jp nc, Jump_00d_7f04

    ld h, c
    ld [hl], l
    ld [hl], d
    ld [hl], h
    ldh a, [$35]
    nop
    dec c
    add l
    nop
    call $009c
    add hl, bc
    ld [bc], a
    ld h, e
    ld [hl], b
    ld [hl], b
    sbc a
    nop
    add hl, bc
    dec b
    ld [hl], e
    ld l, c
    ld [hl], b
    ld [hl], h
    ld a, d
    ld [hl], b
    ldh a, [rLY]
    nop
    rrca
    ld bc, $7f7f
    add h
    ld bc, $cfb6
    ld bc, $cada
    ld bc, $f0ea
    ld c, h
    nop
    ld d, $03
    add hl, hl
    ld a, a
    ld a, a
    dec l
    call nz, Call_00d_4402
    dec b
    dec h
    inc h
    ld a, a
    ld [hl+], a
    inc hl
    add hl, sp
    adc a
    nop
    ld [de], a
    rrca
    daa
    jr z, jr_00d_46c3

    inc sp
    inc [hl]
    inc l
    jr z, jr_00d_46c8

    ld a, a
    dec hl
    ld a, a
    ld a, a
    ld a, [hl+]
    ld a, a
    dec sp
    ld a, [hl-]
    sub d
    nop
    ld [de], a
    dec b
    dec [hl]
    ld [hl], $7f
    ld a, a
    ld a, a
    dec l
    add h
    ld [bc], a
    ld b, b
    ld bc, $7f3c
    sub l
    ld [bc], a
    ld [hl], d
    inc bc
    dec h
    inc h
    ld a, a
    inc l
    ld h, d
    ld h, $01
    ld a, a
    dec a
    sub b
    nop
    ld de, $2a04
    ld a, a
    inc sp
    inc [hl]
    ld [hl], $84
    ld [bc], a
    ld l, e
    ld [bc], a
    ld a, a
    add hl, sp
    ld c, d
    ld [hl+], a
    ld c, e
    adc a
    nop
    ld [de], a
    dec b
    add hl, hl
    ld a, a
    dec [hl]
    ld [hl], $33
    inc [hl]
    add e
    ld [bc], a
    ld b, c
    ld [bc], a
    dec sp
    ld a, [hl-]
    ld c, [hl]
    ld [hl+], a
    ld c, b
    adc a
    nop
    ld [de], a
    ld bc, $7f28
    ld b, c
    dec [hl]
    ld [hl], $83
    ld [bc], a
    xor h
    ld bc, $7f3c
    sub e
    ld [bc], a
    xor $01
    ld [de], a
    ld [de], a
    ld b, c
    dec [hl]
    ld [hl], $c3
    inc bc
    inc hl
    nop
    dec a
    sub h
    inc bc
    dec c
    ld h, $4b
    inc bc
    ld c, h
    ld a, a
    ld a, a
    ld b, l
    sub h
    inc bc
    dec c
    ld h, $48
    inc b
    ld c, l
    ld [de], a
    ld [de], a

jr_00d_46c3:
    db $10
    ld [de], a
    sbc d
    inc bc
    ld c, [hl]

jr_00d_46c8:
    inc b
    ld c, b
    ld c, e
    ld c, e
    ld c, e
    ld c, e
    db $d3
    inc bc
    ld h, l
    ld b, c
    dec d
    ld d, $27
    ld c, b
    ld b, c
    dec d
    ld d, $8f
    nop
    ld [de], a
    ld b, c
    rla
    add hl, de
    add l
    inc bc
    and d
    ld bc, $1615
    ld b, c
    rla
    add hl, de
    adc a
    nop
    ld [de], a
    ld b, c
    jr jr_00d_4708

    add l
    inc bc
    jp nz, $1701

    add hl, de
    ld b, c
    jr jr_00d_4711

    adc l
    nop
    ld [de], a
    rst $38
    inc bc
    nop
    inc bc
    inc bc
    inc c
    ld h, d
    rrca
    nop
    jr nz, jr_00d_4746

    ld hl, $0b40

jr_00d_4708:
    ld h, e
    add b
    ld a, a
    add b
    nop
    rst $38
    inc bc
    db $fc
    rrca

jr_00d_4711:
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

jr_00d_472f:
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

jr_00d_4744:
    ccf
    ret nz

jr_00d_4746:
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
    jr nc, jr_00d_472f

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
    jr nc, jr_00d_4744

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
    jr z, jr_00d_478a

jr_00d_478a:
    ld a, [bc]
    ld b, b
    inc h
    ld [bc], a
    ld b, h
    add h
    ld b, d
    ld bc, $0082

jr_00d_4794:
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
    jr nz, jr_00d_4794

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

Call_00d_4800:
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
    jr c, jr_00d_489f

jr_00d_489f:
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
    jp Jump_00d_6100


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
    ld [bc], a
    inc hl
    rlca
    ld de, $3a00
    ld bc, $12ed
    ld [bc], a
    db $fc
    dec h
    nop
    add hl, bc
    ld [$f0f0], sp
    inc c
    inc e
    ld [bc], a
    ld b, $01
    ld [bc], a
    ld bc, $02af
    ld b, b
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
    jr nz, @-$3e

    dec h
    nop
    dec b
    inc b
    ld [bc], a
    ld de, $040e
    inc bc
    add e
    ld [bc], a
    ld c, h
    ld b, c
    ld b, $01
    add hl, bc
    dec c
    ld [bc], a
    db $10
    ldh [$e0], a
    jr jr_00d_4984

    inc b
    ld a, [bc]
    inc b
    ld b, e
    inc b
    ld [bc], a
    and l
    ld [bc], a
    and b
    ld [bc], a
    jr nc, jr_00d_4998

    and b
    add h
    ld [bc], a
    ld e, e
    and e
    ld [bc], a
    sbc b
    rlca
    cp a
    ld b, b
    ld c, a
    jr nc, jr_00d_4985

    rra
    ld [$a607], sp
    nop

jr_00d_496a:
    cp d
    ld c, $01
    ld hl, $9e1e
    ld h, b
    ld b, b
    add b
    sbc b
    ld h, b
    inc h
    jr jr_00d_4982

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

jr_00d_4982:
    ldh [rSTAT], a

jr_00d_4984:
    ld e, b

jr_00d_4985:
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

jr_00d_4998:
    jr nz, jr_00d_49f9

    ld b, c
    nop
    and b
    dec b
    db $10
    and b
    ld e, [hl]
    and b
    jr nz, jr_00d_4a03

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
    nop
    xor $0f
    ld [$2807], sp
    db $10
    ld b, b
    jr nz, jr_00d_49c8

    ld b, e
    jp $140c


jr_00d_49c8:
    adc b
    ld [$2890], sp
    sub b
    xor c
    inc bc
    jr nc, jr_00d_49d6

    ld a, [bc]
    ld de, $0912
    ld [bc], a

jr_00d_49d6:
    add hl, bc
    ld b, a
    jr z, jr_00d_496a

    ld b, a
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

jr_00d_49f9:
    add e
    nop
    ld [bc], a
    dec b
    inc e
    jr nz, @+$3a

    ld b, b
    ld [hl], b
    add b

Call_00d_4a03:
jr_00d_4a03:
    jp Jump_00d_6402


    nop
    add b
    adc h
    inc bc
    adc l
    ld h, e
    ld bc, $0b08
    inc b
    rlca
    ld [$100e], sp
    inc l
    db $10
    inc e
    ld b, c
    jr nz, jr_00d_4a72

    nop
    jr nz, jr_00d_4a5e

    jr nc, jr_00d_4a5f

    ld bc, $40b0
    ld b, a
    ld h, b
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
    dec c
    nop
    ld e, a
    nop

jr_00d_4a5e:
    cp a

jr_00d_4a5f:
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
    nop
    and [hl]

jr_00d_4a72:
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
    inc b
    ld [hl], e
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
    add l
    inc b
    ld a, e
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
    jp nz, Jump_00d_6401

    add e
    add l
    ld bc, $e074
    ld sp, $fcb3
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
    ld [bc], a
    ld e, [hl]
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

jr_00d_4b98:
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
    dec b
    cp a
    ld b, $ff
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
    call nz, $0a06
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

    ld b, $18
    ld bc, $3e3e
    inc hl
    ld h, e
    nop
    ld h, b
    adc $06
    jr z, jr_00d_4bd3

jr_00d_4bd3:
    ld h, e
    ret z

    ld b, $38
    ld bc, $7f7f
    inc hl
    ld h, b
    nop
    ld a, h
    add $06
    ld c, b
    adc l
    ld b, $40
    ld a, [bc]
    ld h, b
    ld h, b
    add sp, -$10
    ld hl, sp-$04
    db $fc
    cp $ff
    cp $fe
    ld h, $ff
    dec h
    nop
    dec h
    jr nc, @+$05

    db $10
    db $10
    jr nz, jr_00d_4c1b

    add l
    ld b, $20
    inc bc
    ld h, b
    ld h, b
    ld l, a
    ld l, a
    add a
    ld b, $2a
    ld bc, $6363
    adc c
    ld b, $06
    add e
    ld b, $0e
    ld bc, $3c3c
    add hl, hl
    jr jr_00d_4b98

    nop
    or l
    ld bc, $0f0f
    dec h

jr_00d_4c1b:
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
    ld b, $4e
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
    ld b, $2a
    ld bc, $7e7e
    jp $d506


    adc c
    ld b, $10
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
    ld b, $2c
    dec hl
    jr jr_00d_4c70

    nop
    nop
    ld h, e

jr_00d_4c70:
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
    ld b, $40
    dec bc
    rlca
    rlca
    ld c, $0e
    inc e
    inc e
    jr c, jr_00d_4cd7

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
    ldh a, [$5f]
    nop
    nop
    rlca
    ld a, a
    ld a, a
    ld [hl], h
    ld [hl], a
    ld l, d

jr_00d_4cd7:
    ld a, d
    ld a, d
    ld a, c
    ldh a, [$62]
    nop
    ld [$6805], sp
    ld [hl], d
    ld l, d
    ld a, d
    ld a, d
    ld [hl], b
    ldh a, [$34]
    nop
    ld de, $6204
    ld h, b
    ld [hl], c
    ld [hl], c
    ld a, c
    ldh a, [$36]
    nop
    dec bc
    inc b
    ld [hl], c
    ld [hl], b
    ld [hl], c
    ld [hl], c
    ld a, c
    sbc d
    nop
    rlca
    rlca
    ld h, c
    ld [hl], d
    ld [hl], b
    ld [hl], e
    ld a, e
    ld l, e
    ld [hl], d
    ld a, e
    ldh a, [$7a]
    nop
    ld a, [bc]
    ld bc, $2d43
    ld [hl+], a
    ld a, a
    nop
    add hl, hl
    sbc c
    nop
    dec bc
    ld [bc], a
    ld b, h
    ld a, a
    inc l
    ld h, d
    ld h, $03
    ld a, a
    ld a, a
    ld [hl+], a
    inc hl
    sub [hl]
    ld [bc], a
    ld c, a
    sbc [hl]
    nop
    ld b, $02
    ld b, h
    ld a, a
    ld a, a
    add [hl]
    ld [bc], a
    ld l, e
    ld bc, $2a2b
    sub c
    nop
    ld de, $3902
    jr c, jr_00d_4d6c

    ld h, d
    ld a, $24
    ld a, a
    ld [bc], a
    dec l
    ld a, a
    add hl, hl
    sub b
    nop
    ld de, $3b01
    ld a, [hl-]
    inc hl
    ld a, a
    ld bc, $4241
    inc h
    ld a, a
    ld bc, $282c
    sub b
    nop
    ld de, $3c00
    dec h
    ld a, a
    nop
    ld b, e
    sub a
    nop
    ld a, [bc]
    nop
    dec a
    dec h
    ld a, a
    ld bc, $4a46
    dec h
    ld c, e
    nop
    ld c, h
    sub [hl]
    inc bc
    ld [de], a
    ld bc, $4e7f
    dec h
    ld c, b

jr_00d_4d6c:
    nop
    ld c, c
    adc a
    nop
    ld [de], a
    inc bc
    ld b, l
    ld a, a
    db $10
    ld [de], a
    add e
    inc bc
    ld a, [hl+]
    ld [hl+], a
    ld c, b
    ld [hl+], a
    ld c, a
    nop
    ld c, c
    sub b
    nop
    ld de, $1003
    db $10
    inc de
    inc d
    add l
    inc bc
    ld c, d
    inc bc
    ld c, a
    ld c, $0c
    ld d, d
    sub c
    nop
    stop
    ld c, e
    add l
    inc bc
    ld h, a
    dec b
    ld c, b
    ld c, b
    ld c, a
    dec c
    rrca
    dec c
    sub d
    inc bc
    adc a
    ld [bc], a
    ld d, $16
    ld c, b
    add a
    inc bc
    add a
    sub h
    inc bc
    adc l
    ld [bc], a
    rla
    add hl, de
    dec d
    add e
    inc bc
    jp $4f08


    ld d, l
    rrca
    dec c
    ld c, $0d
    ld d, d
    ld b, a
    ld b, a
    adc l
    nop
    ld [de], a
    rst $38
    inc bc
    nop
    inc bc
    inc bc
    inc c
    ld h, d
    rrca
    nop
    jr nz, jr_00d_4e0b

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

jr_00d_4df4:
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

jr_00d_4e09:
    ccf
    ret nz

jr_00d_4e0b:
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
    jr nc, jr_00d_4df4

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
    jr nc, jr_00d_4e09

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
    jr z, jr_00d_4e4f

jr_00d_4e4f:
    ld a, [bc]
    ld b, b
    inc h
    ld [bc], a
    ld b, h
    add h
    ld b, d
    ld bc, $0082

jr_00d_4e59:
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
    jr nz, jr_00d_4e59

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
    jr c, jr_00d_4f64

jr_00d_4f64:
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
    jp Jump_00d_6100


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

jr_00d_4fb6:
    ld [bc], a
    inc hl
    rlca
    ld de, $3a00
    ld bc, $12ed
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
    jr nc, jr_00d_4fdd

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

jr_00d_4fdd:
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
    jr nz, jr_00d_4fb6

    dec h
    nop
    ld [$0204], sp
    ld de, $040e
    inc bc
    ld b, $01
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
    jr nc, jr_00d_5048

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
    jr jr_00d_5045

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

jr_00d_5045:
    ldh [rSTAT], a
    ld e, b

jr_00d_5048:
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
    jr nz, jr_00d_50bc

    ld b, c
    nop
    and b
    dec b
    db $10
    and b
    ld e, [hl]
    and b
    jr nz, @+$61

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
    nop
    xor $0f
    ld [$2807], sp
    db $10
    ld b, b
    jr nz, jr_00d_508b

    ld b, e
    jp $140c


jr_00d_508b:
    adc b
    ld [$2890], sp
    sub b
    sbc a
    inc bc
    jr nz, jr_00d_50db

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

jr_00d_50bc:
    call nz, Call_00d_6402
    call nz, $1703
    ld b, h
    nop
    rst $38
    ld bc, $0ff0
    ld b, c
    ldh a, [$6f]
    inc bc
    rst $38
    nop
    rst $38
    ld a, [hl]
    ld b, d
    rst $38
    ld h, e
    ld bc, $7eff

jr_00d_50d6:
    ld b, c
    rst $38
    ld h, b
    inc bc
    rst $38

jr_00d_50db:
    nop
    rst $38
    ld a, $43
    rst $38
    ld h, e
    inc bc
    rst $38
    inc hl
    rst $38
    ld a, $86
    inc bc

jr_00d_50e8:
    ret nc

    inc b
    ld h, b
    rst $38
    ld a, $ff
    inc bc
    jp $d603


    db $f4
    add hl, hl
    inc bc
    add b
    inc bc
    inc bc
    nop
    ld bc, $c800
    inc bc
    sbc c
    ldh [rNR41], a
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_00d_50d6

    jr nz, jr_00d_50e8

    db $10
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
    ld b, b
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
    add hl, bc
    ld l, a
    sub b
    ld b, $f9
    nop
    rst $38
    sub c
    ld l, [hl]
    nop
    rst $38
    add l
    inc bc
    xor a
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


    cp $c3
    db $fc
    ld b, c
    cp l
    jp nz, Jump_00d_6401

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

jr_00d_5240:
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
    dec b
    cp a
    adc b
    inc bc
    ld de, $3023
    dec b
    db $10
    db $10
    jr nz, jr_00d_527d

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

jr_00d_527d:
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
    jr jr_00d_5240

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
    ld b, $4a
    ld bc, $7e7e
    add e
    ld b, $7c
    adc c
    ld b, $30
    inc bc
    ld l, h
    ld l, h

Jump_00d_5303:
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
    jr jr_00d_5318

    nop
    nop
    ld h, e

jr_00d_5318:
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
    jr c, jr_00d_537f

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
    sbc a
    nop
    nop
    inc b
    ld a, a
    ld a, a
    ld a, [hl]
    ld a, [hl]
    dec de
    ld a, [hl+]
    ld a, [hl]
    pop de
    nop
    ld b, e
    ld [bc], a
    rla
    ld a, [hl]
    ld a, [hl]
    sbc h
    nop
    ld b, l
    call nz, Call_00d_4800
    nop
    inc e
    add h
    nop

jr_00d_537f:
    ld b, e
    inc b
    rlca
    inc b
    ld a, [hl]
    dec de
    inc e
    sub e
    nop
    ld [hl], d
    nop
    inc e
    add h
    nop
    ld h, d
    inc b
    rlca
    ld a, a
    ld a, a
    inc b
    inc e
    rst $10
    nop
    ld h, d
    inc bc
    ld [$7e05], sp
    ld l, $22
    ld a, a
    nop
    inc b
    sub b
    nop
    ld d, c
    ld bc, $0508
    add e
    nop
    rst $00
    inc bc
    ld [$7d7d], sp
    dec b
    add e
    nop
    call z, $2f00
    ret nc

    nop
    ld [c], a
    inc bc
    ld a, l
    ld a, l
    dec b
    ld [$7d25], sp
    add h
    nop
    db $ec
    nop
    ld a, l
    sub c
    nop
    ld a, [c]
    ld [hl+], a
    ld a, l
    inc b
    add hl, bc
    ld b, $7d
    add hl, bc
    ld b, $95
    ld bc, $080c
    add hl, bc
    ld b, $7d
    ld a, l
    add hl, bc
    ld a, a
    ld a, a
    ld a, l
    ld a, a
    ld h, d
    jr nc, jr_00d_53df

    ld a, a
    ld a, a

jr_00d_53df:
    cpl
    ret nc

    ld bc, $0442
    ld [hl], c
    ld [hl], b
    inc a
    inc a
    ld a, c
    add e
    ld bc, $0047
    ld a, a
    add h
    nop
    db $ec
    sub b
    nop
    ld de, $6307
    ld [hl], d
    dec a
    ld a, $7b
    ld [hl], e
    ld [hl], d
    dec sp
    sub a
    ld bc, $836a
    ld bc, $0000
    ld a, a
    sbc d
    ld bc, $0e67
    db $10
    ld [de], a
    ld de, $1011
    ld [de], a
    db $10
    ld de, $6977
    ld l, d
    ld [hl], e
    ld [hl], c
    ld a, c
    cpl
    ret nc

    ld bc, $44c2
    inc de
    inc d
    inc b
    ld [hl], a
    ld [hl], b
    ld [hl], b
    ld h, l
    ld [hl], e
    ret nc

    ld bc, $27e2
    ld e, d
    rst $00
    ld [bc], a
    add hl, bc
    ld hl, sp+$2d
    nop
    ld b, c
    pop af
    add l
    nop
    nop
    inc bc
    ld h, b
    ld [hl], e
    ld [hl], d
    ld a, l
    ldh a, [$35]
    ld bc, $ff8a
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

jr_00d_54d1:
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
    jr z, jr_00d_54f0

jr_00d_54f0:
    ld h, e
    add $01
    jr c, jr_00d_54fb

    rst $38
    rst $38
    add sp, -$10
    and b
    ret nz

jr_00d_54fb:
    add b
    jr z, jr_00d_54fe

jr_00d_54fe:
    inc b
    rst $38
    rst $38
    rra
    rrca

Jump_00d_5503:
    rlca
    xor d
    ld bc, $0945
    ret nc

    ldh [$e0], a

jr_00d_550b:
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
    jr z, jr_00d_550b

    ld b, a
    ld d, h
    dec bc
    ld b, a
    jr nz, jr_00d_54d1

    ld b, a
    ld a, [bc]
    dec b
    inc c
    nop
    nop
    ld b, $01

jr_00d_5559:
    add hl, sp
    ld b, $c4
    jr c, @+$29

    ret nz

    jr c, jr_00d_5561

jr_00d_5561:
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
    jr nz, jr_00d_5559

    ld b, b
    jr nc, jr_00d_55ac

    ld [$0804], sp
    ld [$0a06], sp
    ld b, d
    ld bc, $4100
    add b
    ld b, b
    ldh [rNR44], a
    add b
    and b

jr_00d_55ac:
    ld b, b
    jr c, jr_00d_55ef

    ld e, a
    jr nz, jr_00d_55e1

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
    jr jr_00d_55e4

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

jr_00d_55e1:
    ld c, a
    ld b, e
    ld b, b

jr_00d_55e4:
    ld a, a
    add e
    ld bc, $444d
    rst $38
    nop
    nop
    rst $38
    adc [hl]
    ld [bc], a

jr_00d_55ef:
    xor [hl]
    add l
    ld [bc], a
    cp e
    ld b, l
    dec h
    jp c, Jump_00d_6002

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

jr_00d_562a:
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

jr_00d_5648:
    nop
    add a
    ld [bc], a
    cp c
    ld [de], a
    jr z, jr_00d_5693

    db $10
    jr z, jr_00d_5696

    jr z, jr_00d_567c

    ld b, h
    nop
    ld b, h
    ld [$2844], sp
    ld b, h
    nop
    ld l, h
    ld b, h
    jr z, jr_00d_5670

    add e
    inc bc
    adc e
    ldh [rNR51], a
    rst $38
    nop
    nop
    jr nc, jr_00d_562a

    ld d, b
    add b
    ld d, c
    add b
    ld d, a
    add b

jr_00d_5670:
    ld c, a
    sub b
    cpl
    ret nc

    ld l, $d0
    jr z, jr_00d_5648

    inc d
    dec bc
    ld [hl], h
    dec bc

jr_00d_567c:
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

jr_00d_5693:
    or b
    ret nz

    rst $38

jr_00d_5696:
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
    jr jr_00d_571f

    ldh [rNR23], a
    ldh [$1f], a
    jp nz, Jump_00d_6230

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

jr_00d_571f:
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

jr_00d_575a:
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

jr_00d_5771:
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
    jr nz, jr_00d_5771

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
    jr nc, jr_00d_575a

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
    jr jr_00d_5841

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

jr_00d_5841:
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

jr_00d_588f:
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
    add d
    add d
    rst $00
    ld b, l
    add e
    inc bc
    ld a, e
    ld bc, $3c3c
    add hl, hl
    jr jr_00d_588f

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
    ret z

    rlca
    ld [$0007], sp
    nop
    dec d
    dec d
    or l
    or l
    ld d, a
    ld d, a
    inc hl
    ld [de], a
    ld bc, $0000
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
    jr jr_00d_5942

    nop
    nop
    ld h, e

jr_00d_5942:
    ld h, e
    pop de
    ld b, $ed
    inc hl
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
    jr c, jr_00d_59a9

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
    ld hl, sp+$49
    nop
    ld c, c
    adc [hl]
    nop
    inc d
    ld b, $0d
    ld l, e
    db $10
    ld l, a
    ld l, a
    inc c
    ld [hl], d

jr_00d_59a9:
    ldh a, [rNR43]
    nop
    ld a, [bc]
    inc b
    ld c, $6b
    ld [hl], l
    ld l, l
    ld l, d
    ldh a, [$33]
    nop
    ld [de], a
    ld b, $6c
    ld [hl], l
    ld l, h
    ld de, $0c68
    ld [hl], e
    ldh a, [$34]
    nop
    dec c
    inc bc
    ld de, $6e72
    ld l, [hl]
    add $01
    ld b, $03
    ld a, a
    ld [hl], h
    ld [hl], a
    ld l, [hl]
    sub b
    nop
    ld de, $0f03
    db $10
    ld [hl], h
    ld [hl], h
    add a
    nop
    xor b
    inc bc
    dec c
    db $10
    ld [de], a
    inc c
    sub l
    nop
    ld [de], a
    inc b
    rrca
    ld [hl], l
    ld [hl], d
    ld l, e
    ld a, c
    ldh a, [$3e]
    nop
    dec c
    dec b
    ld de, $6e6e
    ld l, e
    inc c
    ld [hl], d
    ldh a, [$6f]
    nop
    ld [de], a
    daa
    ld a, h
    rst $10
    ld [bc], a
    ld c, c
    ld [$1514], sp
    ld a, h
    inc d
    dec d
    ld a, h
    inc d
    dec d
    ld a, h
    add l
    ld [bc], a
    ld h, d
    nop
    inc d
    sub c
    nop
    ld [de], a
    ld b, $7c
    ld a, a
    ld a, a
    ld a, h
    ld a, a
    ld a, a
    ld a, h
    push bc
    ld [bc], a
    adc c
    sub b
    nop
    ld de, $310a
    dec [hl]
    ld a, h
    ld [hl-], a
    inc [hl]
    ld a, h
    ld sp, $7c35
    inc sp
    inc sp
    add e
    ld [bc], a
    and a
    nop
    ld [hl-], a
    adc a
    nop
    ld [de], a
    dec b
    dec bc
    dec bc
    ld a, h
    dec bc
    dec bc
    ld a, h
    add l
    ld [bc], a
    jp nz, Jump_00d_5503

    ld d, h
    ld d, h
    ld d, [hl]
    sbc e
    ld [bc], a
    ld [hl], d
    sub e
    ld [bc], a
    adc $2b
    ld [$5841], sp
    ld e, c
    adc a
    nop
    ld [de], a
    dec hl
    add hl, bc
    ld b, c
    ld d, b
    ld d, d
    adc a
    nop
    ld [de], a
    inc hl
    ld d, h
    nop
    ld d, [hl]
    ld h, $0a
    sub e
    inc bc
    ld l, $23
    ld d, a
    nop
    ld e, c
    ld h, $0b
    sub e
    inc bc
    ld l, $00
    ld d, d
    add l
    inc bc
    ld l, $01
    ld b, b
    ld b, d
    ld [hl+], a
    ld a, a
    sbc d
    inc bc
    ld l, [hl]
    inc b
    ld b, c
    ld b, e
    ld a, a
    ld a, a
    ld a, a
    sub a
    inc bc
    ld l, $23
    ld d, h
    rst $10
    inc bc
    ret


    daa
    ld d, a
    push de
    inc bc
    jp hl


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

jr_00d_5b1c:
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
    jr z, jr_00d_5b3b

jr_00d_5b3b:
    ld h, e
    add $01
    jr c, jr_00d_5b46

    rst $38
    rst $38
    add sp, -$10
    and b
    ret nz

jr_00d_5b46:
    add b
    jr z, jr_00d_5b49

jr_00d_5b49:
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

jr_00d_5b56:
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
    jr z, jr_00d_5b56

    ld b, a
    ld d, h
    dec bc
    ld b, a
    jr nz, jr_00d_5b1c

    ld b, a
    ld a, [bc]
    dec b
    inc c
    nop
    nop
    ld b, $01

jr_00d_5ba4:
    add hl, sp
    ld b, $c4
    jr c, @+$29

    ret nz

    jr c, jr_00d_5bac

jr_00d_5bac:
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
    jr nz, jr_00d_5ba4

    ld b, b
    jr nc, jr_00d_5bf7

    ld [$0804], sp
    ld [$0a06], sp
    ld b, d
    ld bc, $4100
    add b
    ld b, b
    ldh [rNR44], a
    add b
    and b

jr_00d_5bf7:
    ld b, b
    jr c, jr_00d_5c3a

    ld e, a
    jr nz, jr_00d_5c2c

    db $10
    db $10
    rrca

Jump_00d_5c00:
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
    jr jr_00d_5c2f

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

jr_00d_5c2c:
    ld c, a
    ld b, e
    ld b, b

jr_00d_5c2f:
    ld a, a
    add e
    ld bc, $444d
    rst $38
    nop
    nop
    rst $38
    adc [hl]
    ld [bc], a

jr_00d_5c3a:
    xor [hl]
    add l
    ld [bc], a
    cp e
    ld b, l
    dec h
    jp c, Jump_00d_6002

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

jr_00d_5c75:
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

jr_00d_5c93:
    nop
    add a
    ld [bc], a
    cp c
    ld [de], a
    jr z, jr_00d_5cde

    db $10
    jr z, jr_00d_5ce1

    jr z, jr_00d_5cc7

    ld b, h
    nop
    ld b, h
    ld [$2844], sp
    ld b, h
    nop
    ld l, h
    ld b, h
    jr z, jr_00d_5cbb

    add e
    inc bc
    adc e
    ldh [rNR51], a
    rst $38
    nop
    nop
    jr nc, jr_00d_5c75

    ld d, b
    add b
    ld d, c
    add b
    ld d, a
    add b

jr_00d_5cbb:
    ld c, a
    sub b
    cpl
    ret nc

    ld l, $d0
    jr z, jr_00d_5c93

    inc d
    dec bc
    ld [hl], h
    dec bc

jr_00d_5cc7:
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

jr_00d_5cde:
    or b
    ret nz

    rst $38

jr_00d_5ce1:
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

Call_00d_5d22:
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
    jr jr_00d_5d6a

    ldh [rNR23], a
    ldh [$1f], a
    jp nz, Jump_00d_6230

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

jr_00d_5d6a:
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

jr_00d_5da5:
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

jr_00d_5dbc:
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
    jr nz, jr_00d_5dbc

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

Jump_00d_5e01:
    dec [hl]
    inc de

Jump_00d_5e03:
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
    jr nc, jr_00d_5da5

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
    jr jr_00d_5e8c

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

jr_00d_5e8c:
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

jr_00d_5eda:
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
    add d
    add d
    rst $00
    ld b, l
    add e
    inc bc
    ld a, e
    ld bc, $3c3c
    add hl, hl
    jr jr_00d_5eda

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
    ret z

    rlca
    ld [$0007], sp
    nop
    dec d
    dec d
    or l
    or l
    ld d, a
    ld d, a
    inc hl
    ld [de], a
    ld bc, $0000
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
    jr jr_00d_5f8d

    nop
    nop
    ld h, e

jr_00d_5f8d:
    ld h, e
    pop de
    ld b, $ed
    inc hl
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
    jr c, jr_00d_5ff4

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
    ldh a, [$5f]
    nop
    nop
    inc hl
    ld a, a
    ld b, d
    ld l, e
    ld l, [hl]

jr_00d_5ff4:
    ldh a, [$81]
    nop
    ld a, [bc]
    ld b, d
    ld l, e
    db $10
    call wMetatiles
    ldh a, [$c3]
    nop
    nop

Jump_00d_6002:
    sbc l
    nop
    inc b
    ld b, a
    nop
    inc bc
    sbc a
    ld [bc], a
    ld [hl-], a
    adc a
    nop

jr_00d_600d:
    ld [de], a
    ld bc, $6665
    sbc l
    ld [bc], a
    ld b, h
    ld bc, $7c7c
    sbc l
    ld [bc], a
    ld b, h
    rlca
    ld e, d
    ld e, h
    ld e, d
    ld e, [hl]
    ld e, [hl]
    ld e, h
    ld e, d
    ld e, h
    sub a
    ld [bc], a
    ld c, d
    rlca
    ld e, e
    ld e, l
    ld e, e
    ld e, a
    ld e, a
    ld e, l
    ld e, e
    ld e, l
    ldh a, [rNR51]
    ld [bc], a
    ld c, d
    ld bc, $6665
    sbc l
    ld [bc], a
    ld [hl-], a
    ld bc, $7c7c
    sub a
    ld [bc], a
    ld [hl-], a
    add a
    ld [bc], a
    jp nz, $0297

    ld [hl-], a
    add a
    ld [bc], a
    ld [c], a
    ldh a, [rVBK]
    ld [bc], a
    ld [hl-], a
    add e
    ld [bc], a
    jp nz, Jump_00d_5c00

    add [hl]
    ld [bc], a
    jp nz, $0393

    ld c, [hl]
    add e
    ld [bc], a
    ld [c], a
    nop
    ld e, l
    add [hl]
    ld [bc], a
    ld [c], a
    sub c
    inc bc
    ld l, [hl]
    rst $38
    dec bc
    db $fc
    inc bc
    di
    rrca
    rst $38
    inc e
    db $e4
    jr c, jr_00d_600d

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
    jr z, jr_00d_609e

    add b
    ret nz

    rst $38
    nop

jr_00d_609e:
    rst $38
    dec h
    nop
    dec b
    inc a
    nop
    rst $38
    inc a
    jp Jump_00d_41ff


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

Jump_00d_6100:
    rst $38
    inc bc
    rlca
    inc e
    rra
    daa
    jr c, jr_00d_6158

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

    jr nz, jr_00d_613f

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

jr_00d_613f:
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

jr_00d_6158:
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

jr_00d_6168:
    nop
    db $10
    rst $28
    ld b, e
    jr z, jr_00d_6172

    ld b, $24
    jr jr_00d_61aa

jr_00d_6172:
    inc b
    add sp, -$21
    call nz, $bf41

jr_00d_6178:
    rst $00
    nop
    cp h
    ld b, c
    ld c, h
    ei
    ld b, c
    jr c, jr_00d_6178

    inc b
    rst $38
    rst $38
    nop
    rst $38

jr_00d_6186:
    rst $38
    rst $00
    nop
    ld b, [hl]
    ld [bc], a
    nop

jr_00d_618c:
    rst $38

jr_00d_618d:
    nop
    and e
    nop
    ret nz

    rlca
    call nz, Call_00d_723c
    ld c, $3a
    ld b, $fa
    rlca
    ld b, c
    rst $38
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

jr_00d_61aa:
    ccf
    ld b, d
    add b
    ld a, a
    inc c
    add b
    dec a
    jp nz, $42bd

    jr c, jr_00d_61fd

    jr c, jr_00d_61fc

    jr jr_00d_61de

    nop
    jr jr_00d_6186

    nop
    or b
    ld b, $c0
    ld b, b
    or b
    ld [hl], b
    ld c, a
    cp a
    rst $38
    adc d
    ld bc, $07c3
    xor d
    ld d, l
    ld d, l
    xor d
    nop
    nop
    ld a, a
    ld a, a
    inc hl
    ld h, b
    nop
    ld a, h
    add $02
    jr z, jr_00d_6168

    ld [bc], a
    jr nz, @+$07

jr_00d_61de:
    ld h, b
    ld h, b
    nop
    ld bc, $0e01
    and e
    nop
    xor $1f
    jr jr_00d_620a

    nop
    ld a, a
    ld b, b
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

jr_00d_61fc:
    ld b, b

jr_00d_61fd:
    cp h
    nop
    ld hl, sp+$17
    ret z

    dec sp
    add h
    jr c, jr_00d_618d

    jr c, jr_00d_618c

    ld b, c
    or e

jr_00d_620a:
    ld c, b
    ld b, c
    rst $00
    jr nc, @-$56

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
    jr nz, jr_00d_6262

    ld b, c
    db $10
    jr nz, jr_00d_6267

    ld [$0310], sp
    inc b
    ld [$0403], sp
    rst $00
    ld [bc], a
    ld a, c

Jump_00d_6230:
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
    call c, $0b22
    adc c
    db $76
    add c
    ld e, d

jr_00d_6262:
    ld bc, $0182
    ld [bc], a
    nop

jr_00d_6267:
    ld bc, $0000
    xor e

jr_00d_626b:
    ld [bc], a
    nop
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
    add h
    ld [bc], a
    db $10
    inc bc
    inc e
    inc e
    ld [hl+], a
    ld [hl+], a
    inc hl
    ld h, e
    nop
    ld a, a
    call nz, $2a03
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

    inc bc
    jr c, @+$03

    ld a, $3e
    inc hl
    ld h, e
    nop
    ld h, b
    adc $03
    ld c, b
    nop
    ld h, e
    add $03
    ld e, b
    ret


    nop
    ld h, c
    ld [bc], a
    rst $38
    rst $38
    nop
    jp z, Jump_00d_6100

    ld bc, $0055
    add $02
    inc e
    inc bc
    rlca
    rlca
    jr c, jr_00d_62eb

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
    jr nc, jr_00d_626b

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

    ld [bc], a
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

jr_00d_62eb:
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


Jump_00d_6301:
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
    inc b
    jr nz, jr_00d_632d

    nop
    ld a, [hl]
    inc h

jr_00d_632d:
    jp $4241


    add c
    rlca
    inc h
    jp Jump_00d_7e00


    ld [$2c66], sp
    ld b, d

jr_00d_633a:
    jp $fe02


    ld [$0400], sp
    nop
    ld [$1000], sp
    nop
    jr nz, jr_00d_6347

jr_00d_6347:
    and e
    ld [bc], a
    ei
    ld bc, $aaff
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
    jr c, jr_00d_633a

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
    db $f4
    cpl
    ld [bc], a
    ret nc

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

jr_00d_63cf:
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
    jr nc, jr_00d_63e6

jr_00d_63e6:
    rst $38
    daa
    rst $28
    ld [bc], a

jr_00d_63ea:
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

Jump_00d_6401:
    nop

Call_00d_6402:
Jump_00d_6402:
    rra
    add h
    inc b
    ld e, d
    rlca
    ld b, b
    dec [hl]
    ld b, b
    rrca
    jr nc, jr_00d_640d

jr_00d_640d:
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
    jr nz, jr_00d_63ea

    jr nc, jr_00d_63cf

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

jr_00d_6437:
    ld e, d
    dec b
    cp a
    inc b
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
    jr c, jr_00d_6458

    ld d, h
    ld [$0893], sp
    db $10
    add hl, bc
    inc b
    ld c, c

jr_00d_6458:
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
    add a
    inc bc
    ld b, b
    rlca
    ld l, e
    ld l, e
    ld l, a
    ld l, a
    ld h, [hl]
    ld h, [hl]
    dec sp
    dec sp
    add l
    inc bc
    ld b, b
    inc bc
    ld h, b
    ld h, b
    ld l, a
    ld l, a
    add a
    inc bc
    ld c, d
    ld bc, $6363
    adc c
    inc bc
    ld h, $83
    inc bc
    ld l, $01
    inc a
    inc a
    add hl, hl
    jr jr_00d_6437

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
    ld [bc], a
    ld l, $07
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
    ld c, d
    ld bc, $7e7e
    jp $d506


    adc c
    inc bc
    jr nc, jr_00d_64fb

    ld l, h
    ld l, h
    ld h, [hl]

jr_00d_64fb:
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
    ld c, h
    dec hl
    jr jr_00d_650f

    nop
    nop
    ld h, e

jr_00d_650f:
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
    ld [bc], a
    jr nz, jr_00d_6541

    rlca
    rlca
    ld c, $0e
    inc e
    inc e
    jr c, @+$3a

    ld [hl], b
    ld [hl], b
    ld a, a

jr_00d_6541:
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
    push bc
    nop
    add hl, sp
    adc c
    nop
    nop
    rst $08
    nop
    ld c, c
    ld hl, sp+$4c
    nop
    ld e, c
    ld b, $33
    ld l, l
    ld l, d
    ld [hl], c
    ld [hl], c
    ld [hl+], a
    ld [hl], d
    ldh a, [$34]
    nop
    ld c, $03
    ld l, h
    ld [hl-], a
    inc sp
    ld [hl], l
    ldh a, [rNR50]
    nop
    rlca
    ld b, $73
    ld h, a
    ld [hl], l
    ld l, d
    ld [hl], e
    ld l, c
    ld a, c
    ldh a, [$6e]
    nop
    inc de
    ld [bc], a
    inc [hl]
    ld [hl], b
    ld l, a
    add h
    nop
    xor h
    dec b
    ld [hl], a
    ld l, d
    ld a, d
    ld a, d
    ld [hl+], a
    ld [hl], d
    ld hl, sp-$5d
    nop
    and e
    adc l
    nop
    inc d
    rlca
    jr z, jr_00d_65b4

    jr z, jr_00d_65e0

    dec c
    ld c, $7f
    ld a, a
    add e
    ld [bc], a
    ld b, h
    ld bc, $0e28
    sub c
    nop

jr_00d_65b4:
    db $10
    rlca
    dec hl
    ld a, [hl-]
    add hl, hl
    ld a, a
    ld a, a
    rrca
    ld a, a
    ld a, a
    add e
    ld [bc], a
    ld h, h
    inc bc
    dec hl
    ld a, [hl-]
    jr z, jr_00d_65fe

    sub b
    ld [bc], a
    ld [hl-], a
    nop
    jr c, @+$24

    ld a, a
    add hl, bc
    add hl, sp
    ld a, a
    ld a, a
    ld a, [hl+]
    ld a, a
    ld a, a
    dec l
    dec a
    ld c, l
    add hl, hl
    sub b
    nop
    ld de, $0283
    sub b
    ld a, [bc]
    daa

jr_00d_65e0:
    ld a, [hl-]
    ld a, a
    ld a, a
    dec hl
    dec sp
    ld e, $2e
    ld a, $4e
    ld e, [hl]
    sub h
    nop
    ld de, $0285
    ld c, h
    inc b
    rra
    cpl
    ccf
    ld c, a
    ld e, a
    sub c
    nop
    ld de, $2d02
    dec a
    ld c, l
    add e

jr_00d_65fe:
    ld [bc], a
    ld l, h
    add e
    ld [bc], a

jr_00d_6602:
    adc h
    nop
    inc l
    sub d
    nop
    rrca
    add l
    ld [bc], a
    xor h
    ld bc, $0e0d
    add e
    ld [bc], a
    xor h
    sub e
    ld [bc], a
    xor $84
    ld [bc], a
    call z, Call_00d_5d22
    add e
    ld [bc], a
    call z, $2c00
    ld [hl+], a
    ld e, l
    sub c
    nop
    ld [de], a
    nop
    inc l
    ld h, $7f
    dec b
    inc l
    ld a, a
    inc l
    ld a, a
    ld a, a
    ld a, a
    sbc a
    inc bc
    ld [hl-], a
    adc a
    nop
    ld [de], a
    nop
    inc c
    inc l
    inc e
    nop
    dec e
    sub b
    nop
    ld de, $4200
    inc l
    ld d, d
    nop
    ld b, e
    sub c
    nop
    ld de, $1b2c
    sub c
    nop
    stop
    ld e, c
    ld b, l
    ld c, b
    ld e, b
    ld [bc], a
    ld c, b
    ld e, c
    ld c, c
    adc l
    nop
    ld [de], a
    rst $38
    dec bc
    db $fc
    inc bc
    di
    rrca
    rst $38
    inc e
    db $e4
    jr c, jr_00d_6602

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
    jr z, jr_00d_6693

    add b
    ret nz

    rst $38
    nop

jr_00d_6693:
    rst $38
    dec h
    nop
    dec b
    inc a
    nop
    rst $38
    inc a
    jp Jump_00d_41ff


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
    jr c, jr_00d_674d

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

    jr nz, jr_00d_6734

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

jr_00d_6734:
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

jr_00d_674d:
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
    jr z, jr_00d_6767

    ld b, $24
    jr jr_00d_679f

jr_00d_6767:
    inc b
    add sp, -$21
    call nz, $bf41

jr_00d_676d:
    rst $00
    nop
    cp h
    ld b, c
    ld c, h
    ei
    ld b, c
    jr c, jr_00d_676d

    inc b
    rst $38
    rst $38
    nop
    rst $38

jr_00d_677b:
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
    call nz, Call_00d_723c
    ld c, $3a
    ld b, $fa
    rlca
    ld b, c
    rst $38

jr_00d_6791:
    inc bc

jr_00d_6792:
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

jr_00d_679f:
    ccf
    ld b, d
    add b
    ld a, a
    inc c
    add b
    dec a
    jp nz, $42bd

    jr c, jr_00d_67f2

    jr c, jr_00d_67f1

    jr jr_00d_67d3

    nop
    jr jr_00d_677b

    nop
    or b
    ld b, $c0
    ld b, b
    or b
    ld [hl], b
    ld c, a
    cp a
    rst $38

jr_00d_67bc:
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

jr_00d_67d3:
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
    jr jr_00d_680f

    nop
    ld a, a

jr_00d_67f1:
    ld b, b

jr_00d_67f2:
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
    jr c, jr_00d_6792

    jr c, jr_00d_6791

    ld b, c
    or e

jr_00d_680f:
    ld c, b
    ld b, c
    rst $00
    jr nc, jr_00d_67bc

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
    jr nz, jr_00d_6867

    ld b, c
    db $10
    jr nz, jr_00d_686c

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
    call c, $0b22
    adc c
    db $76
    add c
    ld e, d

jr_00d_6867:
    ld bc, $0182
    ld [bc], a
    nop

jr_00d_686c:
    ld bc, $0000
    xor e
    ld [bc], a
    nop
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

jr_00d_6886:
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
    jp z, Jump_00d_6100

    ld bc, $0055
    add $02
    inc e
    inc bc
    rlca
    rlca
    jr c, @+$32

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
    jr nc, jr_00d_6886

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

    ld [bc], a
    ei
    nop
    rst $18
    ld [hl+], a
    nop
    ld bc, $7e7e
    add hl, hl
    ld h, e
    jp $d303


    ld bc, $7f7f
    inc hl
    ld h, b
    nop
    ld a, h
    add $03
    add sp, -$73
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
    jr nz, jr_00d_693a

    nop
    ld a, [hl]
    inc h

jr_00d_693a:
    jp $4241


    add c
    rlca
    inc h
    jp Jump_00d_7e00


    ld [$2c66], sp
    ld b, d

jr_00d_6947:
    jp $fe02


    ld [$0400], sp
    nop
    ld [$1000], sp
    nop
    jr nz, jr_00d_6954

jr_00d_6954:
    and e
    ld [bc], a
    ei
    ld bc, $aaff
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
    jr c, jr_00d_6947

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
    inc bc
    rst $38
    rst $38
    ld b, b
    ld a, a
    add e
    inc bc
    xor $03
    inc e
    inc e
    ld [hl+], a
    ld [hl+], a
    inc hl
    ld h, e
    nop
    ld a, a
    call nz, $da04
    add a
    inc bc
    ret nc

    nop
    ld a, [hl]
    ret z

    inc b
    add sp, $01
    ld a, $3e
    inc hl
    ld h, e
    nop
    ld h, b
    add $04
    ld hl, sp+$41
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

jr_00d_69f8:
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
    jr nc, jr_00d_6a0f

jr_00d_6a0f:
    rst $38
    daa
    rst $28
    ld [bc], a

jr_00d_6a13:
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
    jr nc, jr_00d_6a36

jr_00d_6a36:
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
    jr nz, jr_00d_6a13

    jr nc, jr_00d_69f8

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

jr_00d_6a64:
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
    jr c, jr_00d_6a81

    ld d, h
    ld [$0893], sp
    db $10
    add hl, bc
    inc b
    ld c, c

jr_00d_6a81:
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
    inc b
    ldh a, [$03]
    ld h, b
    ld h, b
    ld l, a
    ld l, a
    rst $00
    inc b
    rst $30
    ld bc, $6363
    adc c
    inc b
    sub $83
    inc b
    sbc $01
    inc a
    inc a
    add hl, hl
    jr jr_00d_6a64

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
    call $f704
    add e
    inc bc
    call c, $06c3
    push de
    adc c
    inc b
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
    jr jr_00d_6b3c

    nop
    nop
    ld h, e

jr_00d_6b3c:
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
    jr c, jr_00d_6ba3

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
    ld l, c
    push bc
    nop
    ld a, c
    adc c

jr_00d_6ba3:
    nop
    nop
    rst $08
    nop
    adc c
    push bc
    nop
    sbc c
    ldh a, [$9f]
    nop
    nop
    daa
    ld a, a
    ld b, $6c
    ld c, l
    ld c, [hl]
    ld [hl], b
    ld [hl], b
    ld l, l
    ld c, l
    ldh a, [$f2]
    nop
    rrca
    dec b
    dec c
    ld c, $7f
    ld a, a
    jr z, jr_00d_6bfc

    add h
    ld [bc], a
    ld b, d
    add h
    ld [bc], a
    ld b, e
    sub b
    nop
    ld [de], a
    inc bc
    rrca
    ld a, a
    ld a, a
    add hl, hl
    add h
    ld [bc], a
    ld h, c
    inc b
    dec hl
    ld a, [hl-]
    ld a, a
    ld a, a
    add hl, hl
    sub d
    nop
    ld de, $0d05
    ld c, $2a
    ld a, a
    ld a, a
    add hl, sp
    dec h
    ld a, a
    nop

jr_00d_6be8:
    ld a, [hl+]
    sub e
    nop
    ld de, $0f04
    dec hl
    dec sp
    daa
    ld a, [hl-]
    add l
    ld [bc], a
    ld b, [hl]
    ld bc, $3b2b
    sub b
    nop
    ld [de], a
    inc b

jr_00d_6bfc:
    inc h
    inc [hl]
    add hl, sp
    ld a, a
    ld a, a
    push bc
    ld [bc], a
    ld l, b
    sub e
    nop
    ld c, $03
    dec sp
    dec h
    dec [hl]
    ld a, [hl-]
    add l
    ld [bc], a
    ld c, [hl]
    add e
    ld [bc], a
    ld b, b
    sub d
    nop
    db $10
    dec b
    dec h
    dec [hl]
    ld a, a
    jr z, jr_00d_6c29

    add hl, hl
    add $02
    db $d3
    ld bc, $0e28
    sub e
    ld [bc], a
    ld a, [c]
    ld bc, $3a2b
    rst $00

jr_00d_6c29:
    ld [bc], a
    sub b
    ld bc, $3a2b
    sub e
    ld [bc], a
    ld a, [c]

jr_00d_6c31:
    add l
    ld [bc], a
    xor [hl]
    inc bc
    ld a, a
    ld a, a
    daa
    ld a, [hl-]
    sub c
    ld [bc], a
    ld d, b
    inc h
    ld a, [bc]
    ld [bc], a
    jr @+$81

    ld a, a
    add e
    ld [bc], a
    add [hl]
    sub e
    ld [bc], a
    ld l, [hl]
    inc h
    dec bc
    ld [bc], a
    add hl, de
    ld a, a
    ld a, a
    add l
    ld [bc], a
    and [hl]
    ld bc, $3424
    sbc e
    nop
    ld [de], a
    inc bc
    add hl, hl
    ld a, a
    dec h
    dec [hl]
    adc a
    nop
    ld [de], a
    nop
    jr z, jr_00d_6be8

    ld [bc], a
    ld b, e
    add e
    ld [bc], a
    ld c, h

jr_00d_6c67:
    ld bc, $082a
    pop de
    inc bc
    ld h, e
    add [hl]
    ld [bc], a
    ld l, h
    nop
    rrca
    add e
    ld [bc], a
    ld l, h
    ld bc, $092b
    rst $08
    inc bc
    add e
    rst $38
    dec b
    nop
    rlca
    rlca
    jr jr_00d_6c9a

    jr nz, jr_00d_6cc5

    jr nz, jr_00d_6cc6

    ld b, d
    ld b, b
    add b
    add hl, bc
    ld hl, sp+$07
    rst $20
    jr jr_00d_6c67

    jr nz, jr_00d_6c31

    ld b, b

jr_00d_6c92:
    and b
    ld b, b
    ld b, l
    ld b, b
    add b
    ld b, c
    jr nz, jr_00d_6cda

jr_00d_6c9a:
    dec b
    jr jr_00d_6cbd

    rlca
    jr jr_00d_6ca0

jr_00d_6ca0:
    rlca
    ld b, d
    ld b, b
    add b
    ld b, c

jr_00d_6ca5:
    and b
    ld b, b
    dec b
    ret c

    jr nz, jr_00d_6c92

    jr jr_00d_6ca5

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
    jr z, jr_00d_6cbc

jr_00d_6cbc:
    and [hl]

jr_00d_6cbd:
    nop
    add b
    jr nc, jr_00d_6cc1

jr_00d_6cc1:
    rlca
    add b
    nop
    ld h, b

jr_00d_6cc5:
    add b

jr_00d_6cc6:
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

jr_00d_6cda:
    ld b, b
    ld bc, $20d0
    xor a
    nop

jr_00d_6ce0:
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

    jr nz, jr_00d_6ce0

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

jr_00d_6d17:
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

jr_00d_6d31:
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

jr_00d_6d4b:
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

    jr nc, jr_00d_6d9f

    rst $38
    nop
    ld b, $fb
    rlca
    ld hl, sp+$0f
    rst $30
    jr jr_00d_6d31

    ld b, c
    jr nc, jr_00d_6d4b

    nop
    jr nc, jr_00d_6d17

    ld bc, $00c0
    db $10
    xor [hl]
    ld bc, $00cb
    inc de
    and h
    ld bc, $0bdb
    ld h, l
    jr c, jr_00d_6da8

    dec [hl]
    inc c
    inc sp
    rla
    jr jr_00d_6d8c

    rrca
    inc bc
    rlca
    add e
    nop
    sub [hl]
    dec bc
    db $e4

jr_00d_6d8c:
    jr c, @-$13

    inc [hl]
    db $ec
    inc sp
    rst $30
    jr jr_00d_6d8c

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

jr_00d_6d9f:
    inc e
    ld d, a
    xor h
    inc sp
    and h
    ld [bc], a
    dec d
    nop
    rst $18

jr_00d_6da8:
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
    jr nc, jr_00d_6dc3

jr_00d_6dc3:
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
    jr nz, jr_00d_6e25

    dec de
    ld b, b
    add hl, bc
    dec bc
    ld b, b
    inc bc
    jr nz, jr_00d_6dec

jr_00d_6dec:
    jr jr_00d_6dee

jr_00d_6dee:
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
    jr nc, jr_00d_6dfe

jr_00d_6dfe:
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

jr_00d_6e25:
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

jr_00d_6e50:
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
    call nz, Call_00d_4a03
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
    jr nz, jr_00d_6e50

    ccf
    push bc

jr_00d_6eb3:
    inc bc
    and e

jr_00d_6eb5:
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
    jp Jump_00d_5303


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
    jr z, jr_00d_6f2c

    ld e, a
    jr nz, jr_00d_6f2f

    ccf
    sub b
    ld h, b
    ld b, c
    jr nz, jr_00d_6eb5

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
    jr c, jr_00d_6eb3

    ld d, h
    ld de, $40e6
    and l
    ld c, b
    and l
    jr nz, @-$2f

    xor a
    inc b
    jr nz, jr_00d_6f19

    nop

jr_00d_6f19:
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
    jr jr_00d_6f3f

    inc h
    nop
    rst $20
    nop
    inc h

jr_00d_6f2c:
    ld b, d
    inc h
    inc h

jr_00d_6f2f:
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

jr_00d_6f3f:
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
    jp $0000


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

jr_00d_6fe7:
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
    jr jr_00d_6fe7

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
    jr nz, jr_00d_7078

jr_00d_7078:
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

    jr nz, jr_00d_70a6

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

jr_00d_70a6:
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
    jp z, Jump_00d_6301

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
    jp z, Jump_00d_7e01

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
    jr c, jr_00d_71a0

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
    push bc
    nop
    ld e, c
    adc c
    nop
    nop
    ld hl, sp+$61
    nop
    ld l, c
    inc b
    ld [hl], c
    ld [hl], l

jr_00d_71a0:
    ccf
    ccf
    ld a, c
    sub d
    nop
    ld de, $6c06
    ld [hl], b
    ld [hl], b
    ld l, h
    ld l, l
    ld a, $72
    ldh a, [$60]
    nop
    dec bc
    dec b
    ld [hl], e
    inc a
    inc [hl]
    ld [hl], d
    ccf
    ld a, c
    sub c
    nop
    ld [de], a
    inc b
    dec a
    ld l, d
    ld a, d
    ld a, d
    ld a, c
    ldh a, [$3d]
    nop
    add hl, bc
    ld [bc], a
    ld [hl], e
    ld l, d
    ld [hl], d
    sbc h
    nop
    ld a, [bc]
    dec b
    ld l, h
    ld l, d
    dec [hl]
    dec [hl]
    ld l, l
    ld a, $f0
    ld [hl], h
    nop
    dec c
    inc h
    ld a, [hl]
    ld bc, $1514
    inc h
    ld a, [hl]
    inc bc
    inc bc
    ld a, a
    ld a, a
    ld [hl], $90
    nop
    ld [de], a
    add e
    ld [bc], a
    ld c, b
    ld bc, $1716
    dec h
    ld a, [hl]
    ld bc, $0703
    sub c
    ld [bc], a
    ld d, c
    ld [bc], a
    rla
    jr c, jr_00d_7232

    add h
    ld [bc], a
    ld b, e
    add l
    ld [bc], a
    ld h, c
    nop
    ld [hl], $91
    ld [bc], a
    ld [hl-], a
    ld bc, $3736
    add h
    ld [bc], a
    adc b
    ld [bc], a
    ld a, a
    ld a, a
    rla
    sbc c
    ld [bc], a
    adc [hl]
    nop
    ld d, $84
    ld [bc], a
    xor e
    nop
    ld l, $98
    ld [bc], a
    adc a
    dec h
    ld a, [hl]
    ld [bc], a
    cpl
    db $10
    ld [$0290], sp
    ld d, c
    ld bc, $1109
    add l
    ld [bc], a
    db $e4
    dec b
    ld l, $7e
    ld a, [hl]
    inc d
    cpl
    inc c
    sub d

jr_00d_7232:
    ld [bc], a
    ld d, b
    nop
    dec c
    add h
    ld [bc], a
    and h
    dec b
    dec d
    cpl

Call_00d_723c:
    inc d
    ld a, a
    ld a, a
    cpl
    sub e
    ld [bc], a
    ld c, a
    inc bc
    ld a, a
    ld [hl], $37
    dec d
    add l
    inc bc
    dec hl
    nop
    nop
    sub e
    inc bc
    ld l, $04
    jr nc, jr_00d_7283

    jr c, jr_00d_728e

    inc b
    ld [hl+], a
    ld a, a
    rlca
    ld b, [hl]
    ld a, a
    nop
    ld a, a
    ld b, [hl]
    ld a, a
    jr nc, jr_00d_7299

    adc a
    nop
    ld [de], a
    inc b
    ld sp, $3a31
    dec sp
    ld a, a
    add e
    inc bc
    ld h, [hl]
    nop
    nop
    inc hl
    ld a, a
    ld bc, $3a31
    adc a
    nop
    ld [de], a
    ld b, $5c
    ld e, h
    ld e, e
    ld e, h
    ld e, h
    ld e, e
    ld e, h
    add $03
    xor b
    nop

jr_00d_7283:
    ld e, e
    ret nc

    inc bc

jr_00d_7286:
    and d
    ld bc, $5f5e
    ld h, d
    ld e, l
    nop
    ld e, l

jr_00d_728e:
    add l
    inc bc
    jp nz, Jump_00d_5e03

    ld e, a
    ld e, l
    ld e, a
    ldh a, [$2d]
    nop

jr_00d_7299:
    ld [de], a
    rst $38
    dec b
    nop
    rlca
    rlca
    jr jr_00d_72b9

    jr nz, jr_00d_72e4

    jr nz, jr_00d_72e5

    ld b, d
    ld b, b
    add b
    add hl, bc
    ld hl, sp+$07
    rst $20
    jr jr_00d_7286

    jr nz, @-$5e

    ld b, b

jr_00d_72b1:
    and b
    ld b, b
    ld b, l
    ld b, b
    add b
    ld b, c
    jr nz, jr_00d_72f9

jr_00d_72b9:
    dec b
    jr jr_00d_72dc

    rlca
    jr jr_00d_72bf

jr_00d_72bf:
    rlca
    ld b, d
    ld b, b
    add b
    ld b, c

jr_00d_72c4:
    and b
    ld b, b
    dec b
    ret c

    jr nz, jr_00d_72b1

    jr jr_00d_72c4

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
    jr z, jr_00d_72db

jr_00d_72db:
    and [hl]

jr_00d_72dc:
    nop
    add b
    jr nc, jr_00d_72e0

jr_00d_72e0:
    rlca
    add b
    nop
    ld h, b

jr_00d_72e4:
    add b

jr_00d_72e5:
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

jr_00d_72f9:
    ld b, b
    ld bc, $20d0
    xor a
    nop

jr_00d_72ff:
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

    jr nz, jr_00d_72ff

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

jr_00d_7336:
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

jr_00d_7350:
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

jr_00d_736a:
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

    jr nc, jr_00d_73be

    rst $38
    nop
    ld b, $fb
    rlca
    ld hl, sp+$0f
    rst $30
    jr jr_00d_7350

    ld b, c
    jr nc, jr_00d_736a

    nop
    jr nc, jr_00d_7336

    ld bc, $00c0
    db $10
    xor [hl]
    ld bc, $00cb
    inc de
    and h
    ld bc, $0bdb
    ld h, l
    jr c, jr_00d_73c7

    dec [hl]
    inc c
    inc sp
    rla
    jr jr_00d_73ab

    rrca
    inc bc
    rlca
    add e
    nop
    sub [hl]
    dec bc
    db $e4

jr_00d_73ab:
    jr c, @-$13

    inc [hl]
    db $ec
    inc sp
    rst $30
    jr jr_00d_73ab

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

jr_00d_73be:
    inc e
    ld d, a
    xor h
    inc sp
    and h
    ld [bc], a
    dec d
    nop
    rst $18

jr_00d_73c7:
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
    jr nc, jr_00d_73e2

jr_00d_73e2:
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
    jr nz, jr_00d_7444

    dec de
    ld b, b
    add hl, bc
    dec bc
    ld b, b
    inc bc
    jr nz, jr_00d_740b

jr_00d_740b:
    jr jr_00d_740d

jr_00d_740d:
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
    jr nc, jr_00d_741d

jr_00d_741d:
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

jr_00d_7444:
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

jr_00d_746f:
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
    call nz, Call_00d_4a03
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
    jr nz, jr_00d_746f

    ccf
    push bc

jr_00d_74d2:
    inc bc
    and e

jr_00d_74d4:
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
    jp Jump_00d_5303


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
    jr z, jr_00d_754b

    ld e, a
    jr nz, jr_00d_754e

    ccf
    sub b
    ld h, b
    ld b, c
    jr nz, jr_00d_74d4

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
    jr c, jr_00d_74d2

    ld d, h
    ld de, $40e6
    and l
    ld c, b
    and l
    jr nz, @-$2f

    xor a
    inc b
    jr nz, jr_00d_7538

    nop

jr_00d_7538:
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
    jr jr_00d_755e

    inc h
    nop
    rst $20
    nop
    inc h

jr_00d_754b:
    ld b, d
    inc h
    inc h

jr_00d_754e:
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

jr_00d_755e:
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
    jp $0000


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

jr_00d_7606:
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
    jr jr_00d_7606

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
    jr nz, jr_00d_7697

jr_00d_7697:
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

    jr nz, jr_00d_76c5

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

jr_00d_76c5:
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
    jp z, Jump_00d_6301

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
    jp z, Jump_00d_7e01

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
    jr c, jr_00d_77bf

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
    push bc
    nop
    ld e, c
    adc c
    nop
    nop
    rst $08
    nop
    ld l, c
    push bc
    nop
    ld a, c
    adc c

jr_00d_77bf:
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
    ldh a, [$bf]
    nop
    nop
    inc h
    ld a, a
    dec b
    ld l, h
    ld [hl], d
    inc [hl]
    inc a
    ld l, h
    ld [hl], b
    ldh a, [$88]
    nop
    dec bc
    ld bc, $7f7f
    add h
    ld bc, $f8f6
    inc h
    ld [bc], a
    ld a, [de]
    ld bc, $7f7f
    dec h
    inc l
    add hl, bc
    inc h
    dec h
    ld c, [hl]
    ld a, h
    ld a, h
    ld c, d
    ld c, l
    ld c, a
    ld c, e
    ld a, h
    adc a
    nop
    ld [de], a
    inc hl
    ld c, c
    rlca
    ld b, a
    inc l
    inc h
    dec h
    ld c, a
    ld a, h
    ld a, h
    ld c, e
    ld [hl+], a
    ld a, h
    sub b
    ld [bc], a
    ld d, c
    inc bc
    ld a, h
    ld c, l
    ld c, a
    ld a, h
    add e
    ld [bc], a
    ld h, [hl]
    ld bc, $4a7c
    inc hl
    ld a, h
    nop
    ld c, d
    db $d3
    ld [bc], a
    add d
    nop
    ld c, d
    add e
    ld [bc], a
    ld h, [hl]
    ld b, $4b
    ld a, h
    ld c, h
    ld c, [hl]
    ld a, h
    ld c, h
    ld c, [hl]
    sub b
    ld [bc], a
    ld d, c
    inc bc
    ld c, d
    ld a, h
    ld c, d
    ld c, e
    add h
    ld [bc], a
    add [hl]
    dec b
    ld a, h
    ld c, l
    ld l, $7c
    ld c, l
    ld c, a
    sub c
    ld [bc], a
    ld [hl], c
    ld bc, $7c4b
    add h
    ld [bc], a
    add l
    dec b
    ld c, d
    ld a, h
    ld a, h
    cpl
    ld a, h
    ld a, h
    jp nc, $c302

    ld bc, $4a7c
    add l
    ld [bc], a
    add l
    inc bc
    ld a, h
    ld a, h
    cpl
    ld c, d
    sub d
    ld [bc], a
    adc a
    inc hl
    ld h, b
    add e
    ld [bc], a
    ld h, [hl]
    ld [hl+], a
    ld h, b
    nop
    cpl
    db $d3
    inc bc
    dec h
    inc hl
    ld a, a
    inc bc
    ld b, a
    inc l
    ld b, b
    ld b, c
    ld [hl+], a
    ld a, a
    inc b
    cpl
    ld a, a
    ld a, a
    ld b, b
    ld b, c
    sub l
    ld [bc], a
    ld d, d
    ld bc, $4342
    add l
    inc bc
    ld c, d
    ld bc, $4342
    add e
    nop
    ld [de], a
    sub c
    ld [bc], a
    ld [hl], $09
    jr c, jr_00d_78c9

    ld b, h
    ld b, c
    ld a, a
    ld b, [hl]
    ld a, a
    ld a, a
    jr c, jr_00d_78d1

    sub l
    inc bc
    ld [hl], d
    ld [bc], a
    ld a, [hl-]
    dec sp
    ld b, l
    add e
    inc bc
    ld l, c
    ld [bc], a
    ld a, a
    ld a, [hl-]
    dec sp
    adc a
    nop
    ld [de], a
    ld b, $5c
    ld e, h
    ld e, e
    ld e, h
    ld e, h
    ld e, e
    ld e, h
    add $03
    ret z

    nop
    ld e, e
    ret nc

    inc bc
    jp nz, Jump_00d_5e01

    ld e, a
    ld h, d
    ld e, l
    nop
    ld e, l
    add l
    inc bc
    ld [c], a
    inc bc
    ld e, [hl]
    ld e, a
    ld e, l
    ld e, a
    adc l

jr_00d_78c9:
    nop
    ld [de], a
    rst $38
    inc sp
    ld a, a
    dec h
    ld a, h
    push bc

jr_00d_78d1:
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
    ld hl, sp+$4c
    nop
    ld e, c
    dec b
    ld [hl], h
    ld [hl], b
    ld [hl], b
    ld l, h
    ld h, [hl]
    ld a, c
    ldh a, [$96]
    nop
    dec c
    dec b
    ld l, h
    ld [hl], b
    ld [hl], b
    ld a, d
    ld h, [hl]
    ld [hl], d
    ldh a, [$61]
    nop
    ld a, [bc]
    ld b, $63
    ld l, l
    ld [hl], b
    ld [hl], c
    ld [hl], c
    ld h, [hl]
    ld [hl], d
    ldh a, [$8e]
    nop
    inc de
    inc b
    ld a, [hl]
    inc e
    ld a, [hl]
    dec de
    ld [$7d23], sp
    nop
    ld bc, $7e24
    nop
    inc e
    adc a
    nop
    ld [de], a
    inc b
    dec de
    inc e
    ld a, [hl]
    ld a, [hl]
    inc bc
    add e
    ld [bc], a
    ld c, b
    dec b
    inc e
    ld a, [hl]
    rla
    dec de
    ld a, [hl]
    ld a, [hl]
    ret nc

    ld [bc], a
    ld b, d
    inc bc
    ld a, [hl]
    ld a, [hl]
    rla
    ld a, [hl]
    add e
    ld [bc], a
    ld b, [hl]
    nop
    dec b
    inc h
    ld a, [hl]
    nop
    dec de
    sub b
    ld [bc], a
    ld [hl], c
    ld bc, $0508
    add h
    ld [bc], a
    add l
    add e
    ld [bc], a
    adc b
    jp Jump_00d_4502


    nop
    rlca
    adc a
    nop
    ld [de], a
    inc b
    ld a, l
    ld a, l
    ld a, [bc]
    add hl, bc
    ld b, $85
    ld [bc], a
    and [hl]
    inc bc
    ld [$7e05], sp
    rlca
    sub b
    nop
    ld de, $0602
    ld a, l
    add hl, bc
    add e
    ld [bc], a
    ldh [rTAC], a
    ld a, l
    ld a, l
    add hl, bc
    ld b, $09
    ld a, l
    ld a, [bc]
    ld l, $91
    nop
    ld de, $7d00
    inc hl
    ld a, a
    nop
    ld a, l
    add e
    ld [bc], a
    db $e3
    ld [bc], a
    ld a, a
    ld a, l
    dec bc
    sbc c
    ld [bc], a
    ldh a, [$c5]
    inc bc
    rlca
    sbc a
    inc bc
    db $10
    ldh a, [$31]
    inc bc
    db $10
    ld bc, $1110
    ld b, c
    ld [de], a
    db $10
    inc b
    ld de, $1011
    ld [de], a
    ld [de], a
    ld h, d
    db $10
    sub c
    ld [bc], a
    ldh a, [rNR44]
    ld c, e
    rlca
    ld c, h
    inc de
    inc d
    inc de
    inc de
    inc d
    inc de
    ld c, d
    db $d3
    inc bc
    and l
    inc h
    ld c, b
    ld [hl+], a
    ld c, e
    rst $10
    inc bc
    ret


    ld b, c
    dec d
    ld d, $29
    ld c, b
    ld bc, $1615
    adc l
    nop
    ld [de], a
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_00d_7e00:
    rst $38

Jump_00d_7e01:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38

Jump_00d_7f04:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
