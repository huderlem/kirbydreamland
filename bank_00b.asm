SECTION "ROM Bank $00b", ROMX[$4000], BANK[$b]

    ld de, $f2fb
    nop
    ldh a, [rSB]
    ld a, [c]
    nop
    ldh a, [$f9]
    ld a, [c]
    ld bc, $fb0e
    db $f4
    nop
    ldh a, [rSB]
    db $f4
    nop
    ldh a, [$f9]
    db $f4
    ld bc, $fb0a
    db $f4
    nop
    ldh a, [rSB]
    db $fc
    nop
    ldh a, [$f9]
    db $fc
    ld bc, $f90d
    or $20
    dec c
    nop
    or $00
    pop af
    ld bc, $00f4
    ldh a, [$f9]
    ld a, [c]
    ld bc, $fb11
    or $20
    ld de, $f602
    nop
    add sp, $03
    db $f4
    ld b, b
    and $fb
    ld a, [c]
    ld bc, $02fe
    ld a, [$0d00]
    ld sp, hl
    or $20
    dec c
    nop
    or $00
    di
    ld [bc], a
    or $00
    ldh a, [$f9]
    ld a, [c]
    ld bc, $fa0f
    ld hl, sp+$00
    rrca
    ld [bc], a
    cp $10
    ldh a, [rSB]
    ld a, [c]
    nop
    ldh a, [$f9]
    ld a, [c]
    ld bc, $f60f
    ld hl, sp+$00
    rrca
    cp $fe
    db $10
    ldh a, [rSB]
    ld a, [c]
    nop
    ldh a, [$f9]
    ld a, [c]
    ld bc, $f30f
    ld hl, sp+$00
    rrca
    ei
    cp $10
    ldh a, [rSB]
    ld a, [c]
    nop
    ldh a, [$f9]
    ld a, [c]
    ld bc, $0004
    cp h
    nop
    inc b
    ld hl, sp-$48
    nop
    ld sp, hl
    cp $b4
    nop
    ld sp, hl
    or $b0
    ld bc, $0004
    cp h
    nop
    inc b
    ld hl, sp-$46
    nop
    ld sp, hl
    rst $38
    or h
    nop
    ld sp, hl
    rst $30
    or b
    ld bc, $fb04

jr_00b_40aa:
    cp d
    jr nz, jr_00b_40b1

    di
    cp h
    jr nz, jr_00b_40aa

jr_00b_40b1:
    nop
    or h
    nop
    ld sp, hl
    ld hl, sp-$50
    ld bc, $fc04

jr_00b_40ba:
    cp b
    jr nz, jr_00b_40c1

    db $f4
    cp h
    jr nz, jr_00b_40ba

jr_00b_40c1:
    ld bc, $00b4
    ld sp, hl
    ld sp, hl
    or b
    ld bc, $f206
    xor [hl]
    nop
    inc b
    nop
    cp h
    nop
    inc b
    ld hl, sp-$48
    nop
    ld sp, hl
    cp $b4
    nop
    ld sp, hl
    or $b0
    ld bc, $ed02
    xor [hl]
    nop
    inc b
    nop
    cp h
    nop
    inc b
    ld hl, sp-$48
    nop
    ld sp, hl
    cp $b6
    nop
    ld sp, hl
    or $b2
    ld bc, $e709
    ld h, [hl]
    nop
    add hl, bc
    rst $28
    halt
    nop
    ld b, $f2
    xor [hl]
    nop
    inc b
    nop
    cp h
    nop
    inc b
    ld hl, sp-$48
    nop
    ld sp, hl
    cp $b4
    nop
    ld sp, hl
    or $b0
    ld bc, $e4ff
    ld h, [hl]
    nop
    rst $38
    db $ec
    halt
    nop
    ld [bc], a
    rst $28
    xor [hl]
    nop
    inc b
    nop
    cp h
    nop
    inc b
    ld hl, sp-$48
    nop
    ld sp, hl
    cp $b6
    nop
    ld sp, hl
    or $b2
    ld bc, $e6f1
    ld h, [hl]
    nop
    pop af
    xor $76
    nop
    ld hl, sp-$11
    xor [hl]
    nop
    inc b
    nop
    cp h
    nop
    inc b
    ld hl, sp-$46
    nop
    ld sp, hl
    rst $38
    or [hl]
    nop
    ld sp, hl
    rst $30
    or d
    ld bc, $fae4
    halt
    nop
    db $e4
    ld a, [c]
    ld h, [hl]
    nop
    ldh a, [$f6]
    xor [hl]
    nop
    inc b
    ei

jr_00b_4152:
    cp d
    jr nz, jr_00b_4159

    di
    cp h
    jr nz, jr_00b_4152

jr_00b_4159:
    nop
    or [hl]
    nop
    ld sp, hl
    ld hl, sp-$4e
    ld bc, $0ceb
    halt
    nop
    db $eb
    inc b
    ld h, [hl]
    nop
    db $f4
    inc bc
    xor [hl]
    nop
    inc b
    db $fc

jr_00b_416e:
    cp b
    jr nz, jr_00b_4175

    db $f4
    cp h
    jr nz, jr_00b_416e

jr_00b_4175:
    ld bc, $00b6
    ld sp, hl
    ld sp, hl
    or d
    ld bc, $00f8
    jp nz, $f800

    ld hl, sp-$42
    ld bc, $00f8
    call nz, $f800
    ld hl, sp-$40
    ld bc, $f8f8
    jp nz, $f820

    nop
    cp [hl]
    ld hl, $f8f8
    call nz, $f820
    nop
    ret nz

    ld hl, $02f8
    sub $00
    ld hl, sp-$06
    ret nc

    ld bc, $fef8
    call nc, $f800
    or $d2
    ld bc, $f5f8
    sub $20
    ld hl, sp-$03
    ret nc

    ld hl, $f8f8
    call nc, $f820
    nop
    jp nc, $f821

    ld bc, $00da
    ld hl, sp-$07
    ret c

    ld bc, $f6f8
    jp c, $f820

    cp $d8
    ld hl, $00f8
    call c, $f820
    ld hl, sp-$24
    ld bc, $00f8
    ldh [rP1], a
    ld hl, sp-$08
    sbc $01
    ld hl, sp-$08
    ldh [rNR41], a
    ld hl, sp+$00
    sbc $21
    ld hl, sp-$08
    ldh [$60], a
    ld hl, sp+$00
    sbc $61
    ld hl, sp+$00
    ldh [rLCDC], a
    ld hl, sp-$08
    sbc $41
    ld hl, sp+$00
    jp z, $f800

    ld hl, sp-$3a
    ld bc, $00f7
    call z, $f700
    ld hl, sp-$3a
    ld bc, $00f9
    adc $00
    ld sp, hl
    ld hl, sp-$38
    ld bc, $f8f8
    jp z, $f820

    nop
    add $21
    rst $30
    ld hl, sp-$34
    jr nz, @-$07

    nop

jr_00b_421a:
    add $21
    ld sp, hl
    ld hl, sp-$32
    jr nz, jr_00b_421a

    nop
    ret z

    ld hl, $0400
    ldh a, [rNR41]
    nop
    db $fc
    xor $00
    nop
    db $f4
    ldh a, [rP1]
    ldh a, [rDIV]
    and $00
    ldh a, [$fc]
    db $e4
    nop
    ldh a, [$f4]
    ld [c], a
    ld bc, $04ff
    db $ec
    nop
    rst $38
    db $fc
    ld_long $ff00, a
    db $f4
    add sp, $00
    rst $28
    inc b
    and $00
    rst $28
    db $fc
    db $e4
    nop
    rst $28
    db $f4
    ld [c], a
    ld bc, $04ff
    ldh a, [rNR41]
    rst $38
    db $fc
    ld_long $ff00, a
    db $f4
    add sp, $00
    rst $28
    inc b
    and $00
    rst $28
    db $fc
    db $e4
    nop
    rst $28
    db $f4
    ld [c], a
    ld bc, $f400
    ldh a, [rP1]
    nop

jr_00b_4271:
    db $fc
    xor $20
    nop
    inc b
    ldh a, [rNR41]
    ldh a, [$f4]
    and $20
    ldh a, [$fc]
    db $e4
    jr nz, jr_00b_4271

    inc b
    ld [c], a
    ld hl, $f4ff
    db $ec
    jr nz, @+$01

    db $fc
    ld_long $ff20, a
    inc b
    add sp, $20
    rst $28
    db $f4
    and $20
    rst $28
    db $fc
    db $e4
    jr nz, @-$0f

    inc b
    ld [c], a
    ld hl, $f4ff
    ldh a, [rP1]

jr_00b_42a0:
    rst $38
    db $fc
    ld_long $ff20, a
    inc b
    add sp, $20
    rst $28
    db $f4
    and $20
    rst $28
    db $fc
    db $e4
    jr nz, jr_00b_42a0

    inc b
    ld [c], a
    ld hl, $04ff
    db $ec
    nop
    rst $38
    db $fc
    ld_long $ff00, a
    db $f4
    add sp, $00
    rst $28
    inc b
    and $00
    rst $28
    db $fc
    db $e4
    nop
    rst $28
    db $f4
    ld [c], a
    nop
    db $e3
    inc bc
    jp nz, $e300

    ei
    cp [hl]
    ld bc, $0400
    ldh a, [rNR41]
    nop
    db $fc
    xor $00
    nop
    db $f4
    ldh a, [rP1]
    ldh a, [rDIV]
    and $00
    ldh a, [$fc]
    db $e4
    nop
    ldh a, [$f4]
    ld [c], a
    nop
    push hl
    inc bc
    call nz, $e500
    ei
    ret nz

    ld bc, $00e8
    call nz, $e800
    ld hl, sp-$40
    nop
    ld hl, sp+$00
    ldh [rP1], a
    ld hl, sp-$08
    sbc $01
    add sp, -$08
    cp [hl]
    nop
    add sp, $00
    jp nz, $f800

    ld hl, sp-$20
    jr nz, @-$06

    nop
    sbc $21
    add sp, $00
    call nz, $e800
    ld hl, sp-$40
    nop
    ld hl, sp-$08
    ldh [$60], a
    ld hl, sp+$00
    sbc $61
    add sp, $00
    jp nz, $e800

    ld hl, sp-$42
    nop
    ld hl, sp+$00
    ldh [rLCDC], a

jr_00b_4330:
    ld hl, sp-$08
    sbc $41
    nop
    db $f4
    ldh a, [rP1]
    nop

jr_00b_4339:
    db $fc
    xor $20
    nop
    inc b
    ldh a, [rNR41]
    ldh a, [$f4]
    and $20
    ldh a, [$fc]
    db $e4
    jr nz, jr_00b_4339

    inc b
    ld [c], a
    jr nz, jr_00b_4330

    db $f4
    jp nz, $e320

    db $fc

jr_00b_4352:
    cp [hl]
    ld hl, $f4ff
    db $ec
    jr nz, @+$01

    db $fc
    ld_long $ff20, a
    inc b
    add sp, $20
    rst $28
    db $f4
    and $20
    rst $28
    db $fc
    db $e4
    jr nz, @-$0f

    inc b
    ld [c], a
    jr nz, jr_00b_4352

    db $f4
    call nz, $e520
    db $fc
    ret nz

    ld hl, $f8f8
    ret z

    nop
    ld hl, sp+$00
    jp z, $f801

    ld hl, sp-$34
    nop
    ld hl, sp+$00
    adc $01
    ld hl, sp-$08
    call z, $f800
    nop
    ret nc

    ld bc, $f8f8
    jp z, $f820

    nop
    ret z

    ld hl, $f8f8
    adc $20
    ld hl, sp+$00
    call z, $f821
    ld hl, sp-$30
    jr nz, @-$06

    nop
    call z, $f821
    ld hl, sp-$34
    ld b, b
    ld hl, sp+$00
    ret nc

    ld b, c
    ld hl, sp-$08
    ret nc

    ld h, b
    ld hl, sp+$00
    call z, $f861
    push af
    or d
    nop
    ld hl, sp-$03
    or h
    nop
    ld hl, sp+$05
    or [hl]
    ld bc, $f8f8
    cp b
    nop
    ld hl, sp+$00
    cp d
    ld bc, $f5f8
    or [hl]
    jr nz, @-$06

    db $fd
    or h
    jr nz, @-$06

jr_00b_43d1:
    dec b
    or d
    ld hl, $f8f8
    cp d
    jr nz, jr_00b_43d1

    nop
    cp b
    ld hl, $f8f8
    cp d
    ld h, b
    ld hl, sp+$00
    cp b
    ld h, c
    ld hl, sp-$08
    cp b
    ld b, b
    ld hl, sp+$00
    cp d
    ld b, c
    ld hl, sp-$08
    jp nc, $f800

    nop
    jp nc, $f821

    ld hl, sp-$2c
    nop
    ld hl, sp+$00
    call nc, $f821
    ld hl, sp-$2a
    nop
    ld hl, sp+$00
    sub $21
    db $f4
    db $fc
    ld [$f421], a
    db $fc
    ld [$f801], a
    ld hl, sp-$52
    nop
    ld hl, sp+$00
    or b
    ld bc, $f8f8
    or b
    jr nz, @-$06

    nop
    xor [hl]
    ld hl, $f8f8
    ret nz

    nop
    ld hl, sp+$00
    jp nz, $f801

    ld hl, sp-$3c
    nop
    ld hl, sp+$00
    add $01
    ld hl, sp-$08
    jp nz, $f820

    nop
    ret nz

    ld hl, $f8f8
    add $20
    ld hl, sp+$00
    call nz, $f821
    ld hl, sp-$20
    nop
    ld hl, sp+$00
    ldh [rNR42], a
    ld hl, sp-$08
    ld [c], a
    nop
    ld hl, sp+$00
    ld [c], a
    ld hl, $f8f8
    cp h
    ld bc, $00f8
    cp h
    ld hl, $f8f8
    cp [hl]
    nop
    ld hl, sp+$00
    cp [hl]
    ld hl, $f8f8
    call c, $f800
    nop
    sbc $01
    ld hl, sp-$08
    jp c, $f820

    nop
    ret c

    ld hl, $00f8
    jp c, $f800

    ld hl, sp-$28
    ld bc, $00f8
    call c, $f820
    ld hl, sp-$22
    ld hl, $00f8
    jp nc, $f860

    ld hl, sp-$2e
    ld b, c
    ld hl, sp-$08
    call nc, $f840
    nop
    call nc, $f861
    nop
    sub $60
    ld hl, sp-$08
    sub $41
    ld hl, sp+$00
    and $20
    ld hl, sp-$08
    and $01
    ld hl, sp-$04
    add sp, $21
    ld hl, sp+$00
    db $e4
    jr nz, @-$06

jr_00b_44a5:
    ld hl, sp-$1c
    ld bc, $00f8
    ld a, [c]
    jr nz, jr_00b_44a5

jr_00b_44ad:
    ld hl, sp-$0e
    ld bc, $00f8
    ld a, [c]
    jr nz, jr_00b_44ad

    ld hl, sp-$16
    ld bc, $00f8
    ld hl, sp+$00
    ld hl, sp-$08
    ld a, [$f801]
    nop
    db $ec
    nop
    ld hl, sp-$08
    ldh a, [rSB]
    ld hl, sp-$08
    ld hl, sp+$20
    ld hl, sp+$00
    ld a, [$f821]
    ld hl, sp-$14
    jr nz, @-$06

jr_00b_44d5:
    nop
    ldh a, [rNR42]
    ld hl, sp+$00
    db $fc
    jr nz, jr_00b_44d5

    ld hl, sp-$04
    ld bc, $00f8
    db $f4
    nop
    ld hl, sp-$08
    ld a, [c]
    ld bc, $00f8
    db $f4
    nop
    ld hl, sp-$08
    ld [$f801], a
    nop
    xor $00
    ld hl, sp-$08
    ldh a, [rSB]
    ld hl, sp+$00
    or $00
    ld hl, sp-$08
    ld a, [$f801]
    ld hl, sp-$12
    jr nz, @-$06

    nop
    ldh a, [rNR42]
    ld hl, sp-$08
    or $20
    ld hl, sp+$00
    ld a, [$f821]
    nop
    db $fc
    jr nz, @-$06

    ld hl, sp-$02
    ld bc, $f8f8
    cp b
    nop
    ld hl, sp+$00
    cp d
    ld bc, $f8f8
    cp h
    nop
    ld hl, sp+$00
    cp [hl]
    ld bc, $00f8
    cp b
    jr nz, @-$06

jr_00b_452d:
    ld hl, sp-$46
    ld hl, $00f8
    cp h
    jr nz, jr_00b_452d

    ld hl, sp-$42
    ld hl, $f8f8
    or b
    nop
    ld hl, sp+$00
    or d
    ld bc, $f8f8
    or h
    nop
    ld hl, sp+$00
    or [hl]
    ld bc, $f8f8
    or b
    ld b, b
    ld hl, sp+$00
    or d
    ld b, c
    ld hl, sp-$08
    or [hl]
    jr nz, @-$06

    nop
    or h
    ld hl, $f8f8
    ret nz

    nop
    ld hl, sp+$00
    jp nz, $f801

    ld hl, sp-$3c
    nop
    ld hl, sp+$00
    add $01
    ld hl, sp-$08
    add sp, $00
    ld hl, sp+$00
    add $01
    ld hl, sp-$08
    ld [$f800], a
    nop
    jp nz, $f801

    ld hl, sp-$16
    db $10
    ld hl, sp+$00
    jp nz, $f811

    ld hl, sp-$3e
    jr nz, @-$06

    nop
    ret nz

    ld hl, $f8f8
    add $20
    ld hl, sp+$00
    call nz, $f821
    ld hl, sp-$3a
    jr nz, @-$06

    nop
    add sp, $21
    ld hl, sp-$08
    jp nz, $f820

jr_00b_459d:
    nop
    ld [$f821], a
    ld hl, sp-$3e
    jr nc, jr_00b_459d

    nop
    ld [$f831], a
    db $fc
    adc b
    ld bc, $fcf4
    adc b
    ld bc, $00f8
    ret c

    nop
    ld hl, sp-$08
    ret z

    ld bc, $00f8
    jp c, $f800

    ld hl, sp-$36
    ld bc, $f8f8
    jp z, $f800

    nop
    sub $01
    ld hl, sp+$00
    call c, $f800

jr_00b_45cd:
    ld hl, sp-$34
    ld bc, $f8f8
    ret c

    jr nz, jr_00b_45cd

    nop
    ret z

    ld hl, $f8f8
    jp c, $f820

    nop
    jp z, $f821

    nop
    jp z, $f820

    ld hl, sp-$2a
    ld hl, $f8f8
    call c, $f820
    nop
    call z, $f821
    nop
    adc $20
    ld hl, sp-$08
    sbc $21
    ld a, [$d402]
    ld h, c
    ld hl, sp-$08
    adc $40
    ld hl, sp+$00
    sbc $41
    or $f6
    call nc, $f801
    ld hl, sp-$32
    nop
    ld hl, sp+$00
    sbc $01
    ld a, [$d4f6]
    ld b, c
    ld hl, sp+$00
    adc $60
    ld hl, sp-$08
    sbc $61
    or $03
    call nc, $f821
    nop
    ldh [rNR41], a
    ld hl, sp-$08
    ldh [rSB], a
    ld hl, sp+$00
    ld [c], a
    jr nz, @-$06

    ld hl, sp-$1e
    ld bc, $f8f8
    db $e4
    nop
    ld hl, sp+$00
    db $e4
    ld hl, $fcf8
    xor [hl]
    ld bc, $f7f8
    and $01
    ld hl, sp-$06
    and $01
    ld hl, sp-$02
    and $01
    ld hl, sp+$01
    and $01
    ld hl, sp-$0d
    and $01
    ld hl, sp+$05
    and $01
    ld hl, sp-$01
    ret nc

    jr nz, @-$06

jr_00b_4659:
    ld hl, sp-$30
    ld bc, $fff8
    jp nc, $f820

    ld hl, sp-$2e
    ld bc, $00f8
    sbc b
    nop
    ld hl, sp-$08
    sub d

jr_00b_466b:
    nop
    add sp, -$01
    ret nc

    jr nz, jr_00b_4659

    ld hl, sp-$30
    ld bc, $00f8
    sbc d
    nop
    ld hl, sp-$08
    sub h
    nop
    ld [$d0ff], a
    jr nz, jr_00b_466b

jr_00b_4681:
    ld hl, sp-$30
    ld bc, $00f8
    sub d

jr_00b_4687:
    jr nz, jr_00b_4681

    ld hl, sp-$68

jr_00b_468b:
    jr nz, @-$16

    rst $38
    ret nc

    jr nz, @-$16

jr_00b_4691:
    ld hl, sp-$30
    ld bc, $00f8
    sub h
    jr nz, jr_00b_4691

jr_00b_4699:
    ld hl, sp-$66
    jr nz, jr_00b_4687

    rst $38
    ret nc

    jr nz, jr_00b_468b

    ld hl, sp-$30
    ld bc, $00f8
    sbc b
    nop
    ld hl, sp-$08
    adc h

jr_00b_46ab:
    nop
    add sp, -$01
    ret nc

    jr nz, jr_00b_4699

    ld hl, sp-$30
    ld bc, $00f8
    sbc d
    nop
    ld hl, sp-$08
    adc [hl]
    nop
    ld [$d0ff], a
    jr nz, jr_00b_46ab

jr_00b_46c1:
    ld hl, sp-$30
    ld bc, $00f8
    adc h

jr_00b_46c7:
    jr nz, jr_00b_46c1

    ld hl, sp-$68

jr_00b_46cb:
    jr nz, @-$16

    rst $38
    ret nc

    jr nz, @-$16

jr_00b_46d1:
    ld hl, sp-$30
    ld bc, $00f8
    adc [hl]
    jr nz, jr_00b_46d1

    ld hl, sp-$66
    jr nz, jr_00b_46c7

    rst $38
    ret nc

    jr nz, jr_00b_46cb

    ld hl, sp-$30
    ld bc, $00f8
    xor h
    nop
    ld hl, sp-$08
    xor d
    nop

jr_00b_46ec:
    db $eb
    ld bc, $20d0
    db $eb
    ld a, [$01d0]
    ld hl, sp-$08
    and h
    ld b, b
    ld hl, sp+$00
    and h
    ld h, b
    db $eb
    nop
    ret nc

    jr nz, jr_00b_46ec

    ld sp, hl
    ret nc

    ld bc, $fff8
    jp c, $f800

    rst $30

jr_00b_470a:
    jp z, $e800

    ld bc, $20d0
    add sp, -$06
    ret nc

    ld bc, $00f8
    ld l, h
    jr nz, @-$06

    ld hl, sp+$6c
    nop
    jp hl


    rst $38
    ret nc

    jr nz, jr_00b_470a

    ld hl, sp-$30
    ld bc, $00f8
    ret c

    nop
    ld hl, sp-$08
    ret z

    ld bc, $00f8
    jp c, $f800

    ld hl, sp-$36
    ld bc, $f8f8
    jp z, $f800

    nop
    sub $01
    ld hl, sp+$00
    call c, $f800

jr_00b_4741:
    ld hl, sp-$34
    ld bc, $f8f8
    ret c

    jr nz, jr_00b_4741

    nop
    ret z

    ld hl, $f8f8
    jp c, $f820

    nop
    jp z, $f821

    nop
    jp z, $f820

    ld hl, sp-$2a
    ld hl, $f8f8
    call c, $f820
    nop
    call z, $f821
    nop
    adc $20
    ld hl, sp-$08
    sbc $21
    ld a, [$d402]
    ld h, c
    ld hl, sp-$08
    adc $40
    ld hl, sp+$00
    sbc $41
    or $f6
    call nc, $f801
    ld hl, sp-$32
    nop
    ld hl, sp+$00
    sbc $01
    ld a, [$d4f6]
    ld b, c
    ld hl, sp+$00
    adc $60
    ld hl, sp-$08
    sbc $61
    or $03
    call nc, $f821
    nop
    ldh [rNR41], a
    ld hl, sp-$08
    ldh [rSB], a
    ld hl, sp+$00
    ld [c], a
    jr nz, @-$06

    ld hl, sp-$1e
    ld bc, $f8f8
    db $e4
    nop
    ld hl, sp+$00
    db $e4
    ld hl, $fcf8
    xor [hl]
    ld de, $f7f8
    and $01
    ld hl, sp-$06
    and $01
    ld hl, sp-$02
    and $01
    ld hl, sp+$01
    and $01
    ld hl, sp-$0d
    and $01
    ld hl, sp+$05
    and $01
    ld [bc], a
    inc b
    adc [hl]
    nop
    ld [bc], a
    db $fc
    adc h
    nop
    ld [bc], a
    db $f4
    sub [hl]
    nop
    ld a, [c]
    inc b
    sub h
    nop
    ld a, [c]
    db $fc
    sub d
    nop
    ld a, [c]
    db $f4
    sub b

jr_00b_47df:
    ld bc, $f402
    adc [hl]

jr_00b_47e3:
    jr nz, jr_00b_47e7

    db $fc
    adc h

jr_00b_47e7:
    jr nz, jr_00b_47eb

    inc b
    sub [hl]

jr_00b_47eb:
    jr nz, jr_00b_47df

    db $f4
    sub h
    jr nz, jr_00b_47e3

    db $fc
    sub d
    jr nz, jr_00b_47e7

    inc b
    sub b
    ld hl, $0402
    adc [hl]
    nop
    ld [bc], a
    db $fc
    adc h
    nop
    ld [bc], a
    db $f4
    adc d
    nop
    ld a, [c]
    inc b
    adc b
    nop
    ld a, [c]
    db $fc
    add [hl]
    nop

Jump_00b_480c:
    ld a, [c]
    db $f4
    add h

jr_00b_480f:
    ld bc, $f502
    adc [hl]

jr_00b_4813:
    jr nz, jr_00b_4817

    db $fd
    adc h

jr_00b_4817:
    jr nz, jr_00b_481b

    dec b
    adc d

jr_00b_481b:
    jr nz, jr_00b_480f

    push af
    adc b
    jr nz, jr_00b_4813

    db $fd
    add [hl]
    jr nz, jr_00b_4817

    dec b
    add h
    ld hl, $0800
    sbc [hl]
    nop
    nop
    nop
    sbc h
    nop
    nop
    ld hl, sp-$66
    nop
    nop
    ldh a, [$98]
    nop
    ldh a, [rP1]
    adc b
    nop
    ldh a, [$f8]
    add [hl]
    nop
    ldh a, [$f0]
    add h
    ld bc, $f000
    sbc [hl]
    jr nz, jr_00b_4849

jr_00b_4849:
    ld hl, sp-$64
    jr nz, jr_00b_484d

jr_00b_484d:
    nop
    sbc d
    jr nz, jr_00b_4851

jr_00b_4851:
    ld [$2098], sp
    ldh a, [$f8]
    adc b
    jr nz, jr_00b_4849

    nop
    add [hl]
    jr nz, jr_00b_484d

    ld [$2184], sp
    ld hl, sp+$08
    xor h
    nop
    nop
    nop
    xor d
    nop
    nop
    ld hl, sp-$58
    nop
    nop
    ldh a, [$a6]
    nop
    ldh a, [rP1]
    and h
    nop
    ldh a, [$f8]
    and d
    nop
    ldh a, [$f0]
    and b
    ld bc, $f0f8
    xor h
    jr nz, jr_00b_4881

jr_00b_4881:
    ld hl, sp-$56
    jr nz, jr_00b_4885

jr_00b_4885:
    nop
    xor b
    jr nz, jr_00b_4889

jr_00b_4889:
    ld [$20a6], sp
    ldh a, [$f8]
    and h
    jr nz, jr_00b_4881

    nop
    and d
    jr nz, jr_00b_4885

jr_00b_4895:
    ld [$21a0], sp
    nop
    nop
    or h
    jr nz, jr_00b_489d

jr_00b_489d:
    ld [$20b2], sp
    ldh a, [rP1]
    or b
    jr nz, jr_00b_4895

    ld [$20ae], sp
    nop
    ld hl, sp-$4c
    nop
    nop
    ldh a, [$b2]
    nop
    ldh a, [$f8]
    or b
    nop
    ldh a, [$f0]
    xor [hl]
    ld bc, $0000
    cp b
    jr nz, jr_00b_48bd

jr_00b_48bd:
    ld [$20b6], sp
    nop
    ld hl, sp-$48
    nop
    nop
    ldh a, [$b6]
    ld bc, $00f0
    call nz, $0000
    ld [$00c2], sp
    nop
    nop
    ret nz

    nop
    nop
    ld hl, sp-$42
    nop
    ldh a, [$f8]
    cp h
    nop
    nop
    ldh a, [$ba]
    ld bc, $f8f0
    call nz, $0020
    ldh a, [$c2]
    jr nz, jr_00b_48e9

jr_00b_48e9:
    ld hl, sp-$40
    jr nz, jr_00b_48ed

jr_00b_48ed:
    nop
    cp [hl]
    jr nz, @-$0e

    nop
    cp h
    jr nz, jr_00b_48f5

jr_00b_48f5:
    ld [$21ba], sp
    ld [bc], a
    dec b
    adc [hl]
    nop
    ld [bc], a
    db $fd
    adc h
    nop
    ld [bc], a
    push af
    jp z, $f240

    push af
    jp z, $f200

    dec b
    ret z

    nop
    ld a, [c]
    db $fd
    add $01
    ld [bc], a
    db $f4
    adc [hl]
    jr nz, jr_00b_4917

    db $fc
    adc h

jr_00b_4917:
    jr nz, @+$04

    inc b
    jp z, $f260

    inc b
    jp z, $f220

    db $f4
    ret z

    jr nz, jr_00b_4917

    db $fc
    add $21
    ld [bc], a
    db $ed
    jp z, $f240

    db $ed
    jp z, $0200

    dec b
    adc [hl]
    nop
    ld [bc], a
    db $fd
    adc h
    nop
    ld [bc], a
    push af
    call z, $f240
    push af
    call z, $f200
    dec b
    ret z

    nop
    ld a, [c]
    db $fd
    add $01
    ld [bc], a
    inc c
    jp z, $f260

    inc c
    jp z, $0220

    db $f4
    adc [hl]
    jr nz, jr_00b_4957

    db $fc
    adc h

jr_00b_4957:
    jr nz, @+$04

    inc b
    call z, $f260
    inc b
    call z, $f220
    db $f4
    ret z

    jr nz, jr_00b_4957

    db $fc
    add $21
    rst $38
    ld [$00d6], sp
    nop
    nop
    sbc h
    nop
    nop
    ld hl, sp-$2c
    nop
    nop
    ldh a, [$d2]
    nop
    ldh a, [rP1]
    adc b
    nop
    ldh a, [$f8]
    ret nc

    nop
    ldh a, [$f0]
    adc $01
    rst $38
    ldh a, [$d6]
    jr nz, jr_00b_4989

jr_00b_4989:
    ld hl, sp-$64
    jr nz, jr_00b_498d

jr_00b_498d:
    nop
    call nc, $0020

jr_00b_4991:
    ld [$20d2], sp
    ldh a, [$f8]
    adc b
    jr nz, jr_00b_4989

    nop
    ret nc

    jr nz, jr_00b_498d

    ld [$21ce], sp
    db $ec
    ld c, $de
    jr nz, jr_00b_4991

    ld b, $de
    ld b, b
    nop
    ld [$009e], sp
    nop
    nop
    sbc h
    nop
    nop
    ld hl, sp-$66
    nop
    nop
    ldh a, [$98]
    nop
    ldh a, [rP1]
    adc b
    nop
    ldh a, [$f8]
    add [hl]
    nop
    ldh a, [$f0]
    add h
    ld bc, $eaec
    sbc $00
    db $ec
    ld a, [c]
    sbc $60
    nop
    ldh a, [$9e]
    jr nz, jr_00b_49d1

jr_00b_49d1:
    ld hl, sp-$64
    jr nz, jr_00b_49d5

jr_00b_49d5:
    nop
    sbc d
    jr nz, jr_00b_49d9

jr_00b_49d9:
    ld [$2098], sp
    ldh a, [$f8]
    adc b
    jr nz, jr_00b_49d1

    nop
    add [hl]
    jr nz, jr_00b_49d5

    ld [$2184], sp
    db $eb
    ld c, $de
    jr nz, @-$13

    ld b, $de
    ld b, b
    ld hl, sp+$08
    xor h
    nop
    nop
    nop
    xor d
    nop
    nop
    ld hl, sp-$58
    nop
    nop
    ldh a, [$a6]
    nop
    ldh a, [rP1]
    and h
    nop
    ldh a, [$f8]
    and d
    nop
    ldh a, [$f0]
    and b
    ld bc, $eaeb
    sbc $00
    db $eb
    ld a, [c]
    sbc $60
    ld hl, sp-$10
    xor h
    jr nz, jr_00b_4a19

jr_00b_4a19:
    ld hl, sp-$56
    jr nz, jr_00b_4a1d

jr_00b_4a1d:
    nop
    xor b
    jr nz, jr_00b_4a21

jr_00b_4a21:
    ld [$20a6], sp
    ldh a, [$f8]
    and h
    jr nz, jr_00b_4a19

    nop
    and d
    jr nz, jr_00b_4a1d

    ld [$21a0], sp
    ldh a, [$08]
    db $e4
    nop
    nop
    ld [$009e], sp
    nop
    nop
    sbc h
    nop
    nop
    ld hl, sp-$66
    nop
    nop
    ldh a, [$98]
    nop
    ldh a, [rP1]
    and $00
    ldh a, [$f8]
    add [hl]
    nop
    ldh a, [$f0]
    add h
    ld bc, $f0f0
    db $e4
    jr nz, jr_00b_4a55

jr_00b_4a55:
    ldh a, [$9e]
    jr nz, jr_00b_4a59

jr_00b_4a59:
    ld hl, sp-$64
    jr nz, jr_00b_4a5d

jr_00b_4a5d:
    nop
    sbc d
    jr nz, jr_00b_4a61

jr_00b_4a61:
    ld [$2098], sp
    ldh a, [$f8]
    and $20
    ldh a, [rP1]
    add [hl]
    jr nz, jr_00b_4a5d

    ld [$2184], sp
    ei
    ld [$00d6], sp
    db $fc
    nop
    sbc h
    nop
    db $fc
    ld hl, sp-$66
    nop
    db $fc
    ldh a, [$dc]
    nop
    db $ec
    nop
    adc b
    nop
    db $ec
    ld hl, sp-$7a
    nop
    db $ec
    ldh a, [$84]
    ld bc, $f0fb
    sub $20
    db $fc

jr_00b_4a91:
    ld hl, sp-$64
    jr nz, jr_00b_4a91

jr_00b_4a95:
    nop
    sbc d
    jr nz, jr_00b_4a95

    ld [$20dc], sp
    db $ec
    ld hl, sp-$78
    jr nz, @-$12

    nop
    add [hl]
    jr nz, jr_00b_4a91

    ld [$2184], sp
    push hl
    ld a, [bc]
    sbc $40
    push hl
    ld [de], a
    sbc $21
    pop hl
    ld [$20e2], sp
    pop hl
    nop
    ld [c], a
    ld b, c
    pop hl
    rst $30
    ld [c], a
    ld h, b
    pop hl
    rst $28
    ld [c], a
    ld bc, $e5e6
    sbc $00
    and $ed
    sbc $61
    di
    ldh [$e0], a
    ld b, b
    di
    add sp, -$20
    ld hl, $e1ff
    ldh [rP1], a
    rst $38
    jp hl


    ldh [$61], a
    dec b
    db $eb
    sbc $20
    dec b
    db $e3
    sbc $41
    di
    add hl, de
    ldh [$60], a
    di
    ld de, $01e0
    rst $38
    add hl, de
    ldh [rNR41], a
    rst $38
    ld de, $41e0
    ld b, $0e
    sbc $00
    ld b, $16
    sbc $61
    rst $38
    ld [$00d6], sp
    nop
    nop
    sbc h
    nop
    nop
    ld hl, sp-$2c
    nop
    nop
    ldh a, [$d2]
    nop
    ldh a, [rP1]
    adc b
    nop
    ldh a, [$f8]
    jp c, $f000

    ldh a, [$d8]
    ld bc, $f0ff
    sub $20
    nop

jr_00b_4b19:
    ld hl, sp-$64
    jr nz, jr_00b_4b1d

jr_00b_4b1d:
    nop
    call nc, $0020
    ld [$20d2], sp
    ldh a, [$f8]
    adc b
    jr nz, jr_00b_4b19

    nop
    jp c, $f020

    ld [$21d8], sp
    jr nz, jr_00b_4b4a

    db $ec
    jr nz, @+$22

    db $10
    db $ec
    jr nz, @+$12

    db $10
    db $ec
    jr nz, @+$22

    ld [$20ec], sp
    db $10
    ld [$20ec], sp
    nop
    ld [$20ec], sp
    jr nz, jr_00b_4b4a

jr_00b_4b4a:
    add sp, $20
    stop

jr_00b_4b4e:
    add sp, $20
    nop
    nop

jr_00b_4b52:
    add sp, $20
    ldh a, [rP1]
    add sp, $20
    jr nz, jr_00b_4b52

    add sp, $00
    jr nz, jr_00b_4b4e

    db $ec
    nop
    jr nz, jr_00b_4b4a

    db $ec
    nop
    jr nz, @-$1e

    db $ec

jr_00b_4b67:
    nop
    db $10
    ld hl, sp-$18
    nop
    nop
    ld hl, sp-$18
    nop
    db $10
    ldh a, [$ec]
    nop
    ldh a, [$f8]
    db $ec
    nop
    nop
    ldh a, [$ec]
    nop
    db $10
    add sp, -$14
    nop
    jr nz, jr_00b_4ba2

    ld [$2020], a

jr_00b_4b85:
    ret c

    ld [$1000], a
    jr @-$14

    jr nz, jr_00b_4b8d

jr_00b_4b8d:
    db $10
    ld [$f020], a
    ld [$20ea], sp
    db $10
    ldh [$ea], a
    nop
    nop
    add sp, -$16
    nop
    ldh a, [$f0]
    ld [$e000], a
    nop

jr_00b_4ba2:
    xor $20
    ldh [$f8], a
    xor $01
    ld hl, sp-$08
    and d
    ld bc, $f8f8
    jp nz, $f801

    ld hl, sp-$3c
    ld bc, $fcfa
    jp nz, $f821

    db $fc
    call nz, $0621
    jr jr_00b_4b67

    nop
    ldh a, [$08]
    and h
    nop
    ld hl, sp+$00
    or d
    nop
    ld hl, sp-$08
    or b
    ld bc, $1806
    xor d
    nop
    ldh a, [$08]
    and [hl]
    nop
    ld hl, sp+$00
    or d
    nop
    ld hl, sp-$08
    or b
    ld bc, $1ef8
    adc [hl]
    nop
    ld hl, sp+$12
    adc [hl]
    jr nz, @-$06

    jr jr_00b_4b85

    nop
    add sp, $00
    and d
    nop
    ld hl, sp-$08

jr_00b_4bee:
    or b
    nop
    ld hl, sp+$00
    or h
    ld bc, $24f4
    adc [hl]
    nop
    db $f4
    dec c
    adc [hl]
    jr nz, jr_00b_4bee

    jr @-$60

    nop
    db $ec
    di
    and b
    nop
    ld hl, sp-$08
    ld [$f800], sp
    nop
    cp h
    ld bc, $f0fd
    and [hl]
    ld h, b
    ld hl, sp+$00
    ld [$f820], sp

jr_00b_4c15:
    ld hl, sp+$18
    ld hl, $f2ec
    and [hl]
    jr nz, jr_00b_4c15

jr_00b_4c1d:
    nop
    ld [$f820], sp
    ld hl, sp+$1a
    ld hl, $f8e2
    and d
    jr nz, @-$0e

    nop
    inc h
    jr nz, jr_00b_4c1d

    ld hl, sp+$34
    jr nz, jr_00b_4c31

jr_00b_4c31:
    nop
    ld h, $20
    nop
    ld hl, sp+$36
    ld hl, $f8e0
    and d
    jr nz, jr_00b_4c3d

jr_00b_4c3d:
    db $fc
    jr nc, jr_00b_4c40

jr_00b_4c40:
    nop
    inc b
    jr z, @+$22

    nop
    db $f4
    jr z, jr_00b_4c48

jr_00b_4c48:
    ldh a, [rDIV]
    ld c, $20
    ldh a, [$fc]
    jr nz, @+$22

    ldh a, [$f4]
    ld a, [hl-]
    ld hl, $f2ec
    and h
    jr nz, @-$06

    nop
    ld [$f820], sp

jr_00b_4c5d:
    ld hl, sp+$0a
    ld hl, $f2ec
    and h
    jr nz, jr_00b_4c5d

    nop
    ld [$f820], sp

jr_00b_4c69:
    ld hl, sp-$46
    ld bc, $f5e9
    and h
    jr nz, jr_00b_4c69

    ldh a, [$c0]
    nop
    ld hl, sp+$00
    ld [$f820], sp
    ld hl, sp-$42
    ld bc, $f8f8
    xor h
    ld bc, $f8f8
    xor h
    ld hl, $f5e1
    and d
    jr nz, jr_00b_4c89

jr_00b_4c89:
    db $fc
    jr nc, jr_00b_4c8c

jr_00b_4c8c:
    nop
    inc b
    jr z, @+$22

    nop
    db $f4
    jr z, jr_00b_4c94

jr_00b_4c94:
    ldh a, [rDIV]
    ld c, $20
    ldh a, [$fc]
    jr nz, jr_00b_4cbc

    ldh a, [$f4]
    inc c
    ld hl, $00f8
    cp b
    nop
    ld hl, sp-$08
    or [hl]
    ld bc, $00f8
    or [hl]
    jr nz, @-$06

    ld hl, sp-$48
    ld hl, $00f8
    cp b
    ld b, b
    ld hl, sp-$08
    or [hl]
    ld b, c
    ld hl, sp+$00
    or [hl]
    ld h, b

jr_00b_4cbc:
    ld hl, sp-$08
    cp b
    ld h, c
    ld hl, sp-$04
    ld d, h
    ld h, c
    ld hl, sp-$08
    ld [$f840], sp
    nop
    jr @+$43

    ldh a, [$f4]
    ld [hl+], a
    ld b, b
    ldh a, [$fc]
    jr nc, jr_00b_4d14

    ldh a, [rDIV]
    ld [hl-], a
    ld b, b
    nop
    db $f4
    ld c, $40
    nop
    db $fc
    jr nz, @+$42

    nop
    inc b
    inc c
    ld b, c
    ldh a, [rDIV]
    jr c, @+$62

    ldh a, [$fc]
    jr nc, jr_00b_4d2c

    ldh a, [$f4]
    jr c, jr_00b_4d30

    nop
    inc b
    ld c, $60
    nop
    db $fc
    jr nz, jr_00b_4d58

    nop
    db $f4
    inc c
    ld h, c
    ld [$aef8], sp
    jr nz, jr_00b_4d09

    ldh a, [$ae]
    nop
    nop
    db $10
    sbc $00
    nop

jr_00b_4d09:
    jr @-$22

    nop
    add sp, $08
    xor [hl]
    ld h, b
    add sp, $00
    xor [hl]
    ld b, b

jr_00b_4d14:
    ldh a, [$e8]
    sbc $60
    ldh a, [$e0]
    call c, $0861
    ldh a, [$ae]
    jr nz, jr_00b_4d29

    add sp, -$52
    nop
    ld [$ae10], sp
    jr nz, @+$0a

jr_00b_4d29:
    ld [$00ae], sp

jr_00b_4d2c:
    add sp, $10
    xor [hl]
    ld h, b

jr_00b_4d30:
    add sp, $08
    xor [hl]
    ld b, b
    add sp, -$10
    xor [hl]
    ld h, b
    add sp, -$18
    xor [hl]
    ld b, c
    ld [$ae08], sp
    jr nz, jr_00b_4d49

    nop
    xor [hl]
    nop
    nop
    add sp, -$22
    jr nz, jr_00b_4d49

jr_00b_4d49:
    ldh [$dc], a
    jr nz, @-$0e

    db $10
    sbc $40
    ldh a, [rNR23]
    call c, $e840
    ld hl, sp-$52
    ld h, b

jr_00b_4d58:
    add sp, -$10
    xor [hl]
    ld b, c
    add sp, $00
    xor [hl]
    ld h, b
    add sp, -$08

jr_00b_4d62:
    xor [hl]
    ld b, b
    ld [$ae00], sp
    jr nz, jr_00b_4d71

    ld hl, sp-$52
    ld bc, $f6f1
    adc [hl]
    jr nz, jr_00b_4d62

jr_00b_4d71:
    inc bc
    adc [hl]
    nop
    pop af
    db $fd
    sbc [hl]
    ld bc, $09e8
    adc [hl]
    nop
    add sp, -$10
    adc [hl]
    jr nz, @-$19

    db $fc
    sbc [hl]
    ld hl, $00f8
    jp z, $f800

    ld hl, sp-$38
    ld bc, $f200
    ret nc

    nop
    ld hl, sp+$04
    adc $00
    ld hl, sp-$04
    call z, $f001
    push af
    stop
    ldh a, [rTIMA]
    db $10
    jr nz, @-$0e

    db $fd
    jr nz, jr_00b_4da4

jr_00b_4da4:
    nop
    db $ed
    ld [bc], a
    nop
    db $10
    db $ed
    inc b
    nop
    nop
    push af
    ld [de], a
    nop
    db $10
    push af
    inc d
    nop
    db $10
    db $fd
    inc h
    jr nz, jr_00b_4db9

jr_00b_4db9:
    db $fd
    ld [hl+], a
    jr nz, @+$12

    dec b
    inc d
    jr nz, jr_00b_4dc1

jr_00b_4dc1:
    dec b
    ld [de], a
    jr nz, jr_00b_4dc5

jr_00b_4dc5:
    dec c
    ld [bc], a
    jr nz, jr_00b_4dd9

    dec c
    inc b
    ld hl, $f5f0
    stop
    ldh a, [rTIMA]
    db $10
    jr nz, jr_00b_4dc5

    db $fd
    jr nz, jr_00b_4dd8

jr_00b_4dd8:
    nop

jr_00b_4dd9:
    db $ed
    ld [bc], a
    nop
    db $10
    db $ed
    inc b
    nop
    nop
    push af
    ld [de], a
    nop
    db $10
    push af
    inc d
    nop
    db $10
    db $fd
    inc h
    jr nz, jr_00b_4ded

jr_00b_4ded:
    db $fd
    nop
    jr nz, @+$12

    dec b
    inc d
    jr nz, jr_00b_4df5

jr_00b_4df5:
    dec b
    ld d, $20
    nop

jr_00b_4df9:
    dec c
    ld b, $20
    db $10
    dec c
    inc b
    ld hl, $f5f0
    stop
    ldh a, [rTIMA]
    db $10
    jr nz, jr_00b_4df9

    db $fd
    jr nz, jr_00b_4e0c

jr_00b_4e0c:
    nop
    db $ed
    ld [bc], a
    nop
    db $10
    db $ed
    inc b
    nop
    nop
    push af
    ld [de], a
    nop
    db $10
    push af
    inc d
    nop
    db $10
    db $fd
    inc h
    jr nz, jr_00b_4e21

jr_00b_4e21:
    db $fd
    nop
    jr nz, @+$12

    dec b
    inc d
    jr nz, jr_00b_4e29

jr_00b_4e29:
    dec b
    jr jr_00b_4e4c

    nop

jr_00b_4e2d:
    dec c
    ld [$1020], sp
    dec c
    inc b
    ld hl, $f5f0
    stop
    ldh a, [rTIMA]
    db $10
    jr nz, jr_00b_4e2d

    db $fd
    jr nz, jr_00b_4e40

jr_00b_4e40:
    nop
    db $ed
    ld [bc], a
    nop
    db $10
    db $ed
    inc b
    nop
    nop
    push af
    ld [de], a
    nop

jr_00b_4e4c:
    db $10
    push af
    inc d
    nop
    db $10
    db $fd
    inc h
    jr nz, jr_00b_4e55

jr_00b_4e55:
    db $fd
    nop
    jr nz, @+$12

    dec b
    inc d
    jr nz, jr_00b_4e5d

jr_00b_4e5d:
    dec b
    ld a, [de]
    jr nz, jr_00b_4e61

jr_00b_4e61:
    dec c
    ld a, [bc]
    jr nz, jr_00b_4e75

    dec c
    inc b
    ld hl, $02f0
    inc c
    jr nz, jr_00b_4e5d

    ld a, [$201c]
    nop
    db $ed
    ld [bc], a
    nop
    db $10

jr_00b_4e75:
    db $ed
    inc b
    nop
    nop
    push af
    ld [de], a
    nop
    db $10
    push af
    inc d
    nop
    db $10
    db $fd
    inc h
    jr nz, jr_00b_4e85

jr_00b_4e85:
    db $fd
    nop
    jr nz, @+$12

    dec b
    inc d
    jr nz, jr_00b_4e8d

jr_00b_4e8d:
    dec b
    ld a, [de]
    jr nz, jr_00b_4e91

jr_00b_4e91:
    dec c
    ld a, [bc]
    jr nz, @+$12

    dec c
    inc b
    ld hl, $eef2
    ld a, [hl+]
    nop
    ld a, [c]
    inc c
    ld a, [hl+]
    jr nz, jr_00b_4e91

    ld [bc], a
    ld c, $20
    ldh a, [$fa]
    ld e, $20
    nop
    db $ed
    ld [bc], a
    nop
    db $10
    db $ed
    inc b
    nop
    nop
    push af
    ld [de], a
    nop
    db $10
    push af
    inc d
    nop
    db $10
    db $fd
    inc h
    jr nz, jr_00b_4ebd

jr_00b_4ebd:
    db $fd
    nop
    jr nz, @+$12

    dec b
    inc d
    jr nz, jr_00b_4ec5

jr_00b_4ec5:
    dec b
    ld a, [de]
    jr nz, jr_00b_4ec9

jr_00b_4ec9:
    dec c
    ld a, [bc]
    jr nz, @+$12

    dec c
    inc b
    ld hl, $e3fd
    ld a, [hl+]
    ld h, b
    rst $38
    dec d
    ld a, [hl+]
    nop
    ldh a, [$f1]
    jr z, jr_00b_4edc

jr_00b_4edc:
    ldh [$f1], a
    ld h, $00
    ldh [$f9], a
    ld [hl], $00
    ldh a, [$f9]
    jr c, jr_00b_4ee8

jr_00b_4ee8:
    ldh [rSB], a
    ld [hl], $20
    ldh [$09], a
    ld h, $20
    ldh a, [$09]
    jr z, @+$22

    ldh a, [rSB]
    jr c, @+$22

    nop
    db $ed
    ld [bc], a
    nop
    db $10
    db $ed
    inc b
    nop
    nop
    push af
    ld [de], a
    nop
    db $10
    push af
    inc d
    nop
    db $10
    db $fd
    inc h
    jr nz, jr_00b_4f0d

jr_00b_4f0d:
    db $fd
    nop
    jr nz, @+$12

    dec b
    inc d
    jr nz, jr_00b_4f15

jr_00b_4f15:
    dec b
    ld a, [de]
    jr nz, jr_00b_4f19

jr_00b_4f19:
    dec c
    ld a, [bc]
    jr nz, jr_00b_4f2d

    dec c
    inc b
    ld hl, $f1e0
    ld b, d
    nop
    ldh [$09], a
    ld b, d
    nop
    db $10
    push af
    inc d
    nop
    db $10

jr_00b_4f2d:
    db $ed
    inc b
    nop
    nop
    db $ed
    ld [bc], a
    nop
    nop
    push af
    ld [de], a
    nop
    db $10
    db $fd
    inc h
    jr nz, jr_00b_4f4d

    dec b
    inc d
    jr nz, jr_00b_4f51

    dec c
    inc b
    jr nz, jr_00b_4f45

jr_00b_4f45:
    dec c
    ld a, [bc]
    jr nz, jr_00b_4f49

jr_00b_4f49:
    dec b
    ld a, [de]
    jr nz, jr_00b_4f4d

jr_00b_4f4d:
    db $fd
    nop
    nop
    ret nc

jr_00b_4f51:
    ld sp, hl
    ld d, b
    nop
    ret nc

    pop af
    ld b, b
    nop
    ret nc

jr_00b_4f59:
    jp hl


    jr nc, jr_00b_4f5c

jr_00b_4f5c:
    ldh [$e9], a
    ld [hl-], a
    nop
    ldh a, [$e9]
    inc [hl]
    nop
    ldh a, [$f1]
    ld b, h
    nop
    ldh a, [$f9]
    ld d, h
    nop
    ldh [$f9], a
    ld d, d
    nop
    ldh [rSB], a
    ld d, d
    jr nz, @-$0e

    ld bc, $2054
    ldh a, [$09]
    ld b, h
    jr nz, @-$0e

    ld de, $2034
    ret nc

    ld bc, $2050
    ret nc

    add hl, bc
    ld b, b
    jr nz, jr_00b_4f59

    ld de, $2030
    ldh [rNR11], a
    ld [hl-], a
    ld hl, $fcf7
    ld a, [hl-]
    ld hl, $00b8
    ld a, $00
    cp b
    ld hl, sp+$2e
    nop
    xor b
    nop
    inc a
    nop
    xor b
    ld hl, sp+$2c
    ld bc, $02e7
    ld c, d
    nop
    jp c, Jump_00b_480c

    jr nz, @-$14

    ld [$2048], sp
    rst $28
    pop af
    ld c, b
    nop
    rst $18
    db $ed
    ld c, b
    ld bc, $0000
    ld [hl], b
    ld bc, $0000
    cp $01
    db $fd
    ei
    ld b, [hl]
    ld bc, $00f8
    ld [hl], b
    nop
    ld hl, sp-$08
    ld h, b
    ld bc, $00f8
    ld h, d
    ld h, b
    ld hl, sp-$08
    ld [hl], d
    ld h, c
    ld hl, sp-$08
    ld [hl], b
    ld h, b
    ld hl, sp+$00
    ld h, b
    ld h, c
    ld hl, sp-$08
    ld h, d
    nop
    ld hl, sp+$00
    ld [hl], d
    ld bc, $00f8
    ld [hl], h
    nop
    ld hl, sp-$08
    ld h, h
    ld bc, $00f8
    ld [hl], h
    ld b, b
    ld hl, sp-$08
    ld h, h
    ld b, c
    ld hl, sp-$08
    ld [hl], h
    ld h, b
    ld hl, sp+$00
    ld h, h
    ld h, c
    ld hl, sp-$08
    ld [hl], h
    jr nz, @-$06

    nop
    ld h, h
    ld hl, $f8f8
    db $76
    ld h, b
    ld hl, sp+$00
    ld h, [hl]
    ld h, c
    ld hl, sp-$08
    ld a, b
    ld h, b
    ld hl, sp+$00
    ld l, b
    ld h, c
    ld hl, sp+$00
    halt
    nop
    ld hl, sp-$08
    ld h, [hl]
    ld bc, $00f8
    ld a, b
    nop
    ld hl, sp-$08
    ld l, b
    ld bc, $00f8
    ld a, d
    nop
    ld hl, sp-$08
    ld l, d
    ld bc, $f8f8
    ld a, d
    jr nz, @-$06

    nop
    ld l, d
    ld hl, $f8f8
    ld a, d
    ld h, b
    ld hl, sp+$00
    ld l, d
    ld h, c
    ld hl, sp+$00
    ld a, d
    ld b, b
    ld hl, sp-$08
    ld l, d
    ld b, c
    ld hl, sp+$00
    ld a, h
    nop
    ld hl, sp-$08
    ld l, h
    ld bc, $00f8
    ld a, h
    ld b, b
    ld hl, sp-$08
    ld l, h
    ld b, c
    ld hl, sp-$08
    ld a, h
    ld h, b
    ld hl, sp+$00
    ld l, h
    ld h, c
    ld hl, sp-$08
    ld a, h
    jr nz, @-$06

    nop
    ld l, h
    ld hl, $fdf4
    ld a, [hl]
    ld bc, $fdfc
    ld a, [hl]
    ld b, c
    db $fc
    db $fc
    ld a, [hl]
    ld h, c
    db $f4
    db $fc
    ld a, [hl]
    ld hl, $fcfc
    ld e, d
    ld bc, $fdfc
    ld e, d
    ld hl, $fdf5
    ld e, d
    ld h, c
    push af
    db $fd
    ld e, d
    ld b, c
    ld [$58f8], sp
    nop
    ld hl, sp+$00
    ld d, [hl]
    nop
    ld hl, sp-$08
    ld e, h
    nop
    ld hl, sp-$10
    ld c, h
    ld bc, $08f0
    add d
    add b
    ldh a, [$f0]
    add d
    and b
    nop
    ld [$c082], sp
    nop
    ldh a, [$82]
    ldh [rP1], a
    ld hl, sp-$80
    ldh [rP1], a
    nop
    add b
    ret nz

    ldh a, [$f8]
    add b
    and b
    ldh a, [rP1]
    add b
    add c
    nop
    dec c
    ld a, [bc]
    jr nz, jr_00b_50b9

jr_00b_50b9:
    dec b
    ld a, [de]
    jr nz, jr_00b_50cd

    dec c
    inc b
    jr nz, jr_00b_50d1

    dec b
    inc d
    jr nz, jr_00b_50d5

    db $ed
    inc b
    nop
    nop
    db $ed
    ld [bc], a
    nop
    nop

jr_00b_50cd:
    push af
    ld [de], a
    nop
    db $10

jr_00b_50d1:
    push af
    inc d
    nop
    db $10

jr_00b_50d5:
    db $fd
    inc h
    nop
    nop
    db $fd
    nop
    ld bc, $00f8
    add h
    nop
    ld hl, sp-$08
    add h
    ld hl, $f8f8
    add h
    jr nz, @-$06

    nop
    add h
    nop
    add sp, $03
    ld c, [hl]
    ld h, b
    add sp, -$05
    ld c, [hl]
    nop
    ld [$5efd], sp
    ld h, b
    ld [$5ef5], sp
    ld bc, $fdfc
    and d
    nop
    ldh a, [$0e]
    ld e, [hl]
    ld h, b
    ldh a, [rTMA]
    ld e, [hl]
    nop
    nop
    ld a, [c]
    ld c, [hl]
    ld h, b
    nop

jr_00b_510d:
    ld [$014e], a
    ld hl, sp-$08
    add h
    jr nz, jr_00b_510d

    nop
    add h
    nop
    ei
    db $10
    ld c, [hl]
    ld h, b
    ei
    ld [$004e], sp
    push af
    ldh a, [$5e]
    ld h, b
    push af
    add sp, $5e
    ld bc, $fdfc
    and d
    nop
    ld [$4eef], a
    ld b, b
    ld [$4ef7], a
    jr nz, jr_00b_513b

    ld bc, $405e
    ld b, $09
    ld e, [hl]

jr_00b_513b:
    ld hl, $f8f8
    add h
    jr nz, @-$06

    nop
    add h
    nop
    ld [$5e09], a
    ld h, b
    ld [$5e01], a
    nop
    ld b, $f7
    ld c, [hl]
    ld h, b
    ld b, $ef
    ld c, [hl]
    ld bc, $fdfc
    and d
    nop
    push af
    db $10
    ld c, [hl]
    ld h, b
    push af
    ld [$004e], sp
    ei
    ldh a, [$5e]
    ld h, b
    ei

jr_00b_5165:
    add sp, $5e
    ld bc, $f8f8
    add h
    jr nz, jr_00b_5165

    nop
    add h
    nop
    ldh a, [$ea]
    ld c, [hl]
    ld b, b
    ldh a, [$f2]
    ld c, [hl]
    jr nz, jr_00b_5179

jr_00b_5179:
    ld b, $5e
    nop
    nop
    ld c, $5e
    ld h, c
    db $fc
    db $fd
    and d
    nop
    add sp, -$0b
    ld e, [hl]
    ld b, b
    add sp, -$03
    ld e, [hl]
    jr nz, @+$0a

jr_00b_518d:
    ei
    ld c, [hl]
    ld b, b
    ld [$4e03], sp
    ld hl, $fdfc
    and d
    ld bc, $0800
    adc h
    jr nz, jr_00b_518d

    ld [$208a], sp
    ldh a, [rP1]
    adc [hl]
    nop
    nop
    ld hl, sp-$74
    nop
    ldh a, [$f8]
    adc d
    nop
    nop
    nop
    sub b
    ld bc, $0800
    sub d
    jr nz, jr_00b_51b5

jr_00b_51b5:
    nop
    and b
    nop
    nop
    ld hl, sp-$6e
    ld bc, $f8f0
    adc d
    nop
    nop
    ld hl, sp-$6c
    nop
    nop
    ld [$2094], sp
    ldh a, [$08]
    adc d
    jr nz, @-$0e

    nop
    sub [hl]
    jr nz, jr_00b_51d1

jr_00b_51d1:
    nop
    sbc b
    ld hl, $0800
    and [hl]
    nop
    ldh a, [$08]
    and h
    nop
    ldh a, [rP1]
    adc [hl]
    nop
    nop
    nop
    sbc [hl]
    nop
    nop
    ld hl, sp-$64
    nop
    ldh a, [$f8]
    sbc d
    ld bc, $0800
    and [hl]
    nop
    ldh a, [$08]
    and h
    nop
    ldh a, [rP1]
    adc [hl]
    nop
    nop
    nop
    sbc [hl]
    nop
    nop
    ld hl, sp-$64
    nop
    ldh a, [$f8]
    xor b
    ld bc, $e102
    cp [hl]
    ld b, b
    ld [bc], a
    pop af
    add $40
    ld [bc], a
    jp hl


    jp nz, $1240

    pop af
    call nz, $1240
    jp hl


    ret nz

    ld b, b
    ld [de], a
    pop hl
    cp h
    ld b, b
    nop
    ld [$00a6], sp
    ldh a, [$08]
    and h
    nop
    ldh a, [rP1]
    adc [hl]
    nop
    nop
    nop
    sbc [hl]
    nop
    nop
    ld hl, sp-$64
    nop
    ldh a, [$f8]
    sbc d
    ld bc, $e0f4
    cp [hl]
    nop
    db $f4
    ldh a, [$c6]
    nop
    db $f4
    add sp, -$3e
    nop
    db $e4
    ldh a, [$c4]
    nop
    db $e4
    add sp, -$40
    nop
    db $e4
    ldh [$bc], a
    nop
    nop
    ld [$00a6], sp
    ldh a, [$08]
    and h
    nop
    ldh a, [rP1]
    adc [hl]
    nop
    nop
    nop
    sbc [hl]
    nop
    nop
    ld hl, sp-$64
    nop
    ldh a, [$f8]
    sbc d
    ld bc, $08e8
    cp b
    nop
    ret c

    ld [$00b6], sp
    add sp, $00
    or h
    nop
    ret c

    nop
    or d
    nop
    add sp, -$08
    or b
    nop
    ret c

    ld hl, sp-$52
    nop
    add sp, -$10
    xor h
    nop
    ret c

    ldh a, [$aa]
    nop
    ldh a, [$f8]
    cp d
    nop
    nop
    ld hl, sp-$6c
    nop
    nop
    ld [$00ca], sp
    ldh a, [$08]
    ret z

    nop
    ldh a, [rP1]
    sub [hl]
    jr nz, jr_00b_5299

jr_00b_5299:
    nop
    sbc b
    ld hl, $0800
    ret nc

    stop
    ldh a, [$d8]
    stop
    nop
    sbc $10
    nop
    ld hl, sp-$2a
    ld de, $fcf7
    adc b
    ld bc, $f8f8
    sub b
    ld bc, $f8f8
    sub d
    ld bc, $f8f8
    sub d
    ld hl, $f8f8
    sub b
    ld hl, $f8f0
    sub h
    ld bc, $f800
    ld [de], a
    nop
    nop
    nop
    ld b, $00
    nop
    ld [$0016], sp
    nop
    ldh a, [rSC]
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$08]
    inc d
    nop
    ldh a, [rP1]
    inc b
    nop
    ldh a, [$f8]
    db $10
    ld bc, $08f0
    ld d, $40
    ldh a, [rP1]
    ld b, $40
    ldh a, [$f8]
    ld [de], a
    ld b, b
    ldh a, [$f0]
    ld [bc], a
    ld b, b
    nop
    ldh a, [rP1]
    ld b, b
    nop
    ld hl, sp+$10
    ld b, b
    nop
    nop
    inc b
    ld b, b
    nop
    ld [$4114], sp
    ldh a, [$f0]
    ld d, $60
    ldh a, [$f8]
    ld b, $60
    ldh a, [$08]
    ld [bc], a
    ld h, b
    ldh a, [rP1]
    ld [de], a
    ld h, b
    nop
    ld [$6000], sp
    nop
    nop
    db $10
    ld h, b
    nop
    ldh a, [rNR14]
    ld h, b
    nop
    ld hl, sp+$04
    ld h, c
    nop
    ldh a, [rNR21]
    jr nz, jr_00b_5329

jr_00b_5329:
    ld hl, sp+$06
    jr nz, jr_00b_532d

jr_00b_532d:
    nop
    ld [de], a
    jr nz, jr_00b_5331

jr_00b_5331:
    ld [$2002], sp
    ldh a, [$08]
    nop
    jr nz, jr_00b_5329

    nop
    db $10
    jr nz, jr_00b_532d

    ldh a, [rNR14]
    jr nz, jr_00b_5331

    ld hl, sp+$04
    ld hl, $00f0
    jr z, jr_00b_5348

jr_00b_5348:
    ldh a, [$f8]
    jr jr_00b_534c

jr_00b_534c:
    nop
    ldh a, [$0a]
    nop
    nop
    ld hl, sp+$1a
    nop
    nop
    nop
    ld a, [hl+]
    nop
    nop
    ld [$0136], sp
    ldh a, [$f0]
    inc c
    nop
    ldh a, [$08]
    ld l, $00
    ldh a, [rP1]
    inc l
    nop
    ldh a, [$f8]
    inc e
    nop
    nop
    ldh a, [$0e]
    nop
    nop
    ld hl, sp+$1e
    nop
    nop
    nop
    ld a, [hl+]
    nop
    nop
    ld [$0136], sp
    ldh a, [rP1]
    inc [hl]
    nop
    ldh a, [$f8]
    inc h
    nop
    nop
    ldh a, [rNR52]
    nop
    nop
    ld hl, sp+$1a
    nop
    nop
    nop
    ld a, [hl+]
    nop
    nop
    ld [$0136], sp
    ldh a, [$08]
    ld d, b
    nop
    ldh a, [rP1]
    ld b, b
    nop
    ldh a, [$f8]
    jr nc, jr_00b_53a0

jr_00b_53a0:
    ldh a, [$f0]
    jr nz, jr_00b_53a4

jr_00b_53a4:
    nop
    ldh a, [rNR43]
    nop
    nop
    ld hl, sp+$32
    nop
    nop
    nop
    ld b, d
    nop
    nop
    ld [$0152], sp
    ldh a, [$08]
    ld l, b
    nop
    nop
    ld [$006a], sp
    nop
    nop
    ld e, d
    nop
    nop
    ld hl, sp+$4a
    nop
    nop
    ldh a, [$3a]
    nop
    ldh a, [$f0]
    jr c, jr_00b_53cc

jr_00b_53cc:
    ldh a, [rP1]
    ld e, b
    nop
    ldh a, [$f8]
    ld c, b
    ld bc, $0800
    ld l, [hl]
    nop
    ldh a, [$08]
    ld l, h
    nop
    nop
    nop
    ld e, [hl]
    nop
    nop
    ld hl, sp+$4e
    nop
    nop
    ldh a, [$3e]
    nop
    ldh a, [$f0]
    inc a
    nop
    ldh a, [$f8]
    ld c, h
    nop
    ldh a, [rP1]
    ld e, h
    ld bc, $f4f0
    ld a, b
    nop
    nop
    db $f4
    ld a, d
    nop
    nop
    inc b
    ld a, [c]
    nop
    ldh a, [rDIV]
    ldh a, [rP1]
    ldh a, [$fc]
    adc b
    nop
    nop
    db $fc
    adc d
    ld bc, $08f0
    sub h
    nop
    nop
    ld [$0096], sp
    nop
    nop
    add [hl]
    nop
    nop
    ld hl, sp+$76
    nop
    ldh a, [$f0]
    ld h, h
    nop
    nop
    ldh a, [$66]
    nop
    ldh a, [$f8]
    ld [hl], h
    nop
    ldh a, [rP1]
    add h
    ld bc, $08f0
    ld h, h
    jr nz, jr_00b_5431

jr_00b_5431:
    ld [$2066], sp
    nop

jr_00b_5435:
    nop
    db $76
    jr nz, jr_00b_5439

jr_00b_5439:
    ldh a, [$96]
    jr nz, jr_00b_543d

jr_00b_543d:
    ld hl, sp-$7a
    jr nz, jr_00b_5431

    ldh a, [$94]
    jr nz, jr_00b_5435

    ld hl, sp-$7c
    jr nz, jr_00b_5439

    nop
    ld [hl], h
    ld hl, $f0f4
    and h
    nop
    db $f4
    ld hl, sp-$4c
    nop
    db $f4
    nop
    call nz, $f400
    ld [$00d4], sp
    inc b
    ld [$00d6], sp
    inc b
    nop
    add $00
    inc b
    ld hl, sp-$4a
    nop
    inc b
    ldh a, [$a6]
    ld bc, $f4f0
    ret nc

    nop
    nop
    db $f4
    jp nc, $0000

    inc b
    ld a, [c]
    nop
    ldh a, [rDIV]
    ldh a, [rP1]
    ldh a, [$fc]
    adc h
    nop
    nop
    db $fc
    ld [c], a
    ld bc, $f4f0
    ld a, h
    nop
    nop
    db $f4
    ld b, [hl]
    nop
    nop
    inc b
    ld a, [c]
    nop
    ldh a, [rDIV]
    ldh a, [rP1]
    ldh a, [$fc]
    ld a, [hl]
    nop
    nop
    db $fc
    ld d, [hl]
    ld bc, $f4f0
    ld a, h
    nop
    nop
    db $f4
    ld b, [hl]
    nop
    nop
    inc b
    ld a, [c]
    nop
    ldh a, [rDIV]
    ldh a, [rP1]
    ldh a, [$fc]
    adc [hl]
    nop
    nop
    db $fc
    ld d, [hl]
    ld bc, $f4f0
    ret nc

    nop
    nop
    db $f4
    jp nc, $0000

    inc b
    ld a, [c]
    nop
    ldh a, [rDIV]
    ldh a, [rP1]
    ldh a, [$fc]
    ldh [rP1], a
    nop
    db $fc
    ld [c], a
    ld bc, $09f0
    ret nz

    nop
    nop
    add hl, bc
    jp nz, $0000

    pop af
    db $ec
    nop
    ldh a, [$f1]
    ld [$0000], a
    ld bc, $00b2
    nop
    ld sp, hl
    and d
    nop
    ldh a, [rSB]
    or b
    nop
    ldh a, [$f9]
    ld a, [$f001]
    rlca
    ld [$0020], a
    rlca
    db $ec
    jr nz, @-$0e

jr_00b_54f5:
    rst $28
    ret nz

    jr nz, jr_00b_54f9

jr_00b_54f9:
    rst $28
    jp nz, $0020

    rst $38
    and d
    jr nz, jr_00b_5501

jr_00b_5501:
    rst $30
    or d
    jr nz, jr_00b_54f5

    rst $38
    ld a, [$f020]
    rst $30
    or b
    ld hl, $08f0
    call nc, $f000
    nop
    call nz, $f000
    ld hl, sp-$4c
    nop
    ldh a, [$f0]
    and h
    nop
    nop
    ld [$00d6], sp
    nop
    ldh a, [$a6]
    nop
    nop
    nop
    add $00
    nop
    ld hl, sp-$4a
    ld bc, $08f0
    ret c

    nop
    ldh a, [rP1]
    ret z

    nop
    ldh a, [$f8]
    cp b
    nop
    ldh a, [$f0]
    xor b
    nop
    nop
    ld [$00da], sp
    nop
    nop
    jp z, $0000

    ld hl, sp-$46
    nop
    nop

jr_00b_5549:
    ldh a, [$aa]
    ld bc, $f400
    ld a, [c]
    jr nz, jr_00b_5551

jr_00b_5551:
    db $fc
    adc d
    jr nz, jr_00b_5555

jr_00b_5555:
    inc b
    ld a, d
    jr nz, jr_00b_5549

    inc b
    ret nc

    jr nz, @-$0e

    db $fc
    ldh [rNR41], a
    ldh a, [$f4]
    ldh a, [rNR42]
    ldh a, [$f4]
    ld a, b
    nop
    nop
    db $f4
    jp nc, $0000

    inc b
    ld a, [c]
    nop
    ldh a, [rDIV]
    ldh a, [rP1]
    ldh a, [$fc]
    adc b
    nop
    nop
    db $fc
    ld [c], a
    ld bc, $f4f0
    ld a, b
    nop
    nop
    db $f4
    ld b, [hl]
    nop
    nop
    inc b
    ld a, [c]
    nop
    ldh a, [rDIV]
    ldh a, [rP1]
    ldh a, [$fc]
    adc b
    nop
    nop
    db $fc
    ld d, [hl]
    ld bc, $0400
    ret nc

    ld h, b
    nop
    db $fc
    ldh [$60], a
    nop
    db $f4
    ldh a, [$60]
    ldh a, [$f4]
    ld a, [c]
    ld h, b
    ldh a, [$fc]
    ld [c], a
    ld h, b
    ldh a, [rDIV]
    jp nc, $ec61

    ld [$60a6], sp
    db $ec
    nop
    or [hl]
    ld h, b
    db $ec
    ld hl, sp-$3a
    ld h, b
    db $ec
    ldh a, [$d6]
    ld h, b
    db $fc
    ldh a, [$d4]
    ld h, b
    db $fc
    ld hl, sp-$3c
    ld h, b
    db $fc
    nop
    or h
    ld h, b
    db $fc
    ld [$61a4], sp
    ldh a, [$08]
    call z, $f000
    nop
    cp h
    nop
    ldh a, [$f0]
    sbc h
    nop
    ldh a, [$f8]
    xor h
    nop
    nop
    ldh a, [$9e]
    nop
    nop
    ld [$00ce], sp
    nop
    nop
    cp [hl]
    nop
    nop
    ld hl, sp-$52
    ld bc, $0400
    ld a, b
    ld h, b
    nop
    db $fc
    adc b
    ld h, b
    nop
    db $f4
    ldh a, [$60]
    ldh a, [$f4]
    ld a, [c]
    ld h, b
    ldh a, [$fc]
    adc d
    ld h, b
    ldh a, [rDIV]
    ld a, d
    ld h, c
    ld hl, sp+$00
    ld d, h
    nop
    ld hl, sp-$08
    ld b, h
    ld bc, $08f0
    ld d, h
    nop
    ldh a, [rP1]
    ld b, h
    nop
    ldh a, [$f8]
    jr nc, jr_00b_5618

jr_00b_5618:
    ldh a, [$f0]
    jr nz, jr_00b_561c

jr_00b_561c:
    nop
    ldh a, [rNR43]
    nop
    nop
    ld hl, sp+$32
    nop
    nop
    nop
    ld b, [hl]
    nop
    nop
    ld [$0156], sp
    ld [bc], a
    nop
    add d
    nop
    ld [bc], a
    ld hl, sp+$72
    nop
    ld [bc], a
    ldh a, [$62]
    nop
    ld a, [c]
    ldh a, [$60]
    nop
    ld a, [c]
    ld hl, sp+$70
    nop
    ld a, [c]
    nop
    add b
    ld bc, $0002
    add [hl]
    nop
    ld [bc], a
    ld hl, sp+$76
    nop
    ld [bc], a
    ldh a, [$66]
    nop
    ld a, [c]
    nop
    add b
    nop
    ld a, [c]
    ld hl, sp+$70
    nop
    ld a, [c]
    ldh a, [$60]
    ld bc, $0000
    add h
    nop
    nop
    ld hl, sp+$74
    nop
    nop
    ldh a, [$64]
    nop
    ldh a, [$f0]
    ld h, b
    nop
    ldh a, [$f8]
    ld [hl], b
    nop
    ldh a, [rP1]
    add b
    ld bc, $00f8
    ldh a, [rP1]
    ld hl, sp-$08
    ldh [rSB], a
    or $00
    ld a, [c]
    nop
    or $f8
    ld [c], a
    ld bc, $00f8
    db $f4
    nop
    ld hl, sp-$08
    db $e4
    ld bc, $f8f8
    and $00
    ld hl, sp+$00
    or $01
    ld hl, sp-$08
    add sp, $00
    ld hl, sp+$00
    ld hl, sp+$01
    ld hl, sp+$00
    ld a, [$f800]
    ld hl, sp-$16
    ld bc, $00f8
    ret nc

    nop
    ld hl, sp-$08
    ret nz

    ld bc, $f8f8
    add $00
    ld hl, sp+$00
    sub $01
    ld hl, sp-$08
    call nz, $f800
    nop
    call nc, $f801
    ld hl, sp-$3e
    nop
    ld hl, sp+$00
    jp nc, $f801

    ld hl, sp-$12
    nop
    ld hl, sp+$00
    ret nc

    ld bc, $f8f8
    ret


    nop
    ld hl, sp+$00
    reti


    ld bc, $08f0
    ld d, h
    nop
    ldh a, [rP1]
    ld b, h
    nop
    ldh a, [$f8]
    jr nc, jr_00b_56e0

jr_00b_56e0:
    ldh a, [$f0]
    jr nz, jr_00b_56e4

jr_00b_56e4:
    nop
    ldh a, [rNR43]
    nop
    nop
    ld hl, sp+$32
    nop
    nop
    nop
    ld a, b
    nop
    nop
    ld [$0188], sp
    ldh a, [$08]
    ld d, h
    nop
    ldh a, [rP1]
    ld b, h
    nop
    ldh a, [$f8]
    jr nc, jr_00b_5700

jr_00b_5700:
    ldh a, [$f0]
    jr nz, jr_00b_5704

jr_00b_5704:
    nop
    ldh a, [rNR43]
    nop
    nop
    ld hl, sp+$32
    nop
    nop
    nop
    ld a, d
    nop
    nop
    ld [$018a], sp
    ldh a, [$08]
    ld d, h
    nop
    ldh a, [rP1]
    ld b, h
    nop
    ldh a, [$f8]
    jr nc, jr_00b_5720

jr_00b_5720:
    ldh a, [$f0]
    jr nz, jr_00b_5724

jr_00b_5724:
    nop
    ldh a, [rNR43]
    nop
    nop
    ld hl, sp+$32
    nop
    nop
    nop
    ld a, h
    nop
    nop
    ld [$018c], sp
    ld hl, sp-$08
    call z, $f800
    nop
    call c, $0001
    rrca
    ret c

    nop
    ldh a, [rIE]
    inc [hl]
    nop
    ldh a, [$f7]
    inc h
    nop
    nop
    rst $28
    ld h, $00
    nop
    rst $30
    ld a, [de]
    nop
    nop
    rst $38
    ld a, [hl+]
    nop
    nop
    rlca
    ret z

    ld bc, $1000
    jp c, $f000

    nop
    inc [hl]
    nop
    ldh a, [$f8]
    inc h
    nop
    nop
    ldh a, [rNR52]
    nop
    nop
    ld hl, sp+$1a
    nop
    nop
    nop
    ld a, [hl+]
    nop
    nop
    ld [$01ca], sp
    ld hl, sp+$00
    sbc $00
    ld hl, sp-$08
    and $01
    ld hl, sp+$00
    adc $00
    ld hl, sp-$08
    and $01
    add sp, $00
    ld [$0000], sp
    ld [$006a], sp
    nop
    nop
    ld e, d
    nop
    nop
    ld hl, sp+$4a
    nop
    nop
    ldh a, [$3a]
    nop
    ldh a, [$08]
    ld l, b
    nop
    ldh a, [rP1]
    ld e, b
    nop
    ldh a, [$f8]
    ld c, b
    nop
    ldh a, [$f0]
    jr c, @+$03

    add sp, -$0c
    ld [$0000], sp
    ld [$006a], sp
    nop
    nop
    ld e, d
    nop
    nop
    ld hl, sp+$4a
    nop
    nop
    ldh a, [$3a]
    nop
    ldh a, [$08]
    ld l, b
    nop
    ldh a, [rP1]
    ld e, b
    nop
    ldh a, [$f8]
    ld c, b
    nop
    ldh a, [$f0]
    jr c, jr_00b_57cd

    rst $20

jr_00b_57cd:
    pop af
    ld [$0000], sp
    ld [$006a], sp
    nop
    nop
    ld e, d
    nop
    nop
    ld hl, sp+$4a
    nop
    nop
    ldh a, [$3a]
    nop
    ldh a, [$08]
    ld l, b
    nop
    ldh a, [rP1]
    ld e, b
    nop
    ldh a, [$f8]
    ld c, b
    nop
    ldh a, [$f0]
    jr c, @+$03

    add sp, -$05
    ld [$0000], sp
    ld [$006e], sp
    nop
    nop
    ld e, [hl]
    nop
    nop
    ld hl, sp+$4e
    nop
    nop
    ldh a, [$3e]
    nop
    ldh a, [$08]
    ld l, h
    nop
    ldh a, [rP1]
    ld e, h
    nop
    ldh a, [$f8]
    ld c, h
    nop
    ldh a, [$f0]
    inc a
    ld bc, $02e8
    ld [$0000], sp
    ld [$006e], sp
    nop
    nop
    ld e, [hl]
    nop
    nop
    ld hl, sp+$4e
    nop
    nop
    ldh a, [$3e]
    nop
    ldh a, [$08]
    ld l, h
    nop
    ldh a, [rP1]
    ld e, h
    nop
    ldh a, [$f8]
    ld c, h
    nop
    ldh a, [$f0]
    inc a
    ld bc, $06e8
    ld [$0000], sp
    ld [$006e], sp
    nop
    nop
    ld e, [hl]
    nop
    nop
    ld hl, sp+$4e
    nop
    nop
    ldh a, [$3e]
    nop
    ldh a, [$08]
    ld l, h
    nop
    ldh a, [rP1]
    ld e, h
    nop
    ldh a, [$f8]
    ld c, h
    nop
    ldh a, [$f0]
    inc a
    ld bc, $00f8
    adc [hl]
    nop
    ld hl, sp-$08
    ld a, [hl]
    ld bc, $00f8
    adc [hl]
    nop
    ld hl, sp-$08
    ld a, [hl]
    ld bc, $f6f9
    adc h
    nop
    ld sp, hl
    dec b
    adc h
    ld hl, $0510
    adc h
    ld h, b
    db $10
    push af
    adc h
    ld b, c
    ld hl, sp+$00
    sub d
    nop
    ld hl, sp-$08
    sub b
    ld bc, $00f8
    sub [hl]
    nop
    ld hl, sp-$08
    sub h
    ld bc, $00f8
    sbc d
    nop
    ld hl, sp-$08
    sbc b
    ld bc, $f8f8
    sbc b
    ld b, b
    ld hl, sp+$00
    sbc h
    ld bc, $00f8
    add d
    nop
    ld hl, sp-$08
    add b
    ld bc, $00f8
    add [hl]
    nop
    ld hl, sp-$08
    add h
    ld bc, $f8f8
    adc h
    ld bc, $00f8
    adc d
    nop
    ld hl, sp-$08
    adc b
    ld bc, $f880
    ld hl, sp+$02
    nop
    ld hl, sp+$00
    ld [de], a
    ld bc, $f8f8
    inc b
    nop
    ld hl, sp+$00
    inc d
    ld bc, $f8f8
    ld b, $00
    ld hl, sp+$00
    ld d, $01
    ld hl, sp-$08
    ld [$f800], sp
    nop
    jr @+$03

    ld hl, sp-$08
    nop
    nop
    ld hl, sp+$00
    db $10
    ld bc, $f8f8
    ld [bc], a
    nop
    ld hl, sp+$00
    ld d, b
    ld bc, $00f8
    ld [bc], a
    jr nz, @-$06

jr_00b_58ee:
    ld hl, sp+$12
    ld hl, $00f8
    inc b
    jr nz, jr_00b_58ee

    ld hl, sp+$14
    ld hl, $00f8
    ld b, $20
    ld hl, sp-$08
    ld d, $21
    ld hl, sp+$00
    ld [$f820], sp

jr_00b_5906:
    ld hl, sp+$18
    ld hl, $00f8
    nop
    jr nz, jr_00b_5906

jr_00b_590e:
    ld hl, sp+$10
    ld hl, $00f8
    ld [bc], a
    jr nz, jr_00b_590e

    ld hl, sp+$50
    ld hl, $f401
    ld [hl+], a
    nop
    ld bc, $30fc
    nop
    ld bc, $3204
    nop
    pop af
    db $f4
    ld c, $00
    pop af
    db $fc
    jr nz, jr_00b_592d

jr_00b_592d:
    pop af
    inc b
    inc c
    ld bc, $0400
    ld [hl-], a
    nop
    nop
    db $f4
    ld [hl+], a
    nop
    nop
    db $fc
    jr nc, jr_00b_593d

jr_00b_593d:
    ldh a, [rDIV]
    inc e
    nop
    ldh a, [$fc]
    jr nz, jr_00b_5945

jr_00b_5945:
    ldh a, [$f4]

jr_00b_5947:
    ld e, $01
    ld bc, $2204
    jr nz, jr_00b_594f

    db $fc

jr_00b_594f:
    jr nc, jr_00b_5971

    ld bc, $32f4
    jr nz, jr_00b_5947

    inc b
    ld c, $20
    pop af
    db $fc
    jr nz, jr_00b_597d

    pop af

jr_00b_595e:
    db $f4
    inc c
    ld hl, $0400
    ld [hl+], a
    jr nz, jr_00b_5966

jr_00b_5966:
    db $fc
    jr nc, jr_00b_5989

    nop
    db $f4
    ld [hl-], a
    jr nz, jr_00b_595e

    inc b
    ld e, $20

jr_00b_5971:
    ldh a, [$fc]
    jr nz, jr_00b_5995

    ldh a, [$f4]
    inc e
    ld hl, $f400
    jr z, jr_00b_597d

jr_00b_597d:
    nop
    db $fc
    jr nc, jr_00b_59a1

    nop
    inc b
    jr z, jr_00b_59a5

    ldh a, [$f4]
    ld e, $00

jr_00b_5989:
    ldh a, [$fc]
    jr nz, jr_00b_598d

jr_00b_598d:
    ldh a, [rDIV]
    inc e
    ld bc, $f400
    jr z, jr_00b_5995

jr_00b_5995:
    nop
    db $fc
    jr nc, jr_00b_59b9

    nop
    inc b
    jr z, jr_00b_59bd

    ldh a, [$f4]
    ld c, $00

jr_00b_59a1:
    ldh a, [$fc]
    jr nz, jr_00b_59a5

jr_00b_59a5:
    ldh a, [rDIV]
    inc c
    ld bc, $f300
    jr z, jr_00b_59ad

jr_00b_59ad:
    nop
    ei
    jr nc, jr_00b_59d1

    nop
    inc bc
    jr c, jr_00b_59d5

    ldh a, [$f3]
    ld c, $00

jr_00b_59b9:
    ldh a, [$fb]
    jr nz, jr_00b_59bd

jr_00b_59bd:
    ldh a, [$03]
    inc e
    ld bc, $f501
    jr c, jr_00b_59c5

jr_00b_59c5:
    ld bc, $30fd
    jr nz, jr_00b_59cb

    dec b

jr_00b_59cb:
    jr z, jr_00b_59ed

    pop af
    push af
    ld e, $00

jr_00b_59d1:
    pop af
    db $fd
    jr nz, jr_00b_59d5

jr_00b_59d5:
    pop af
    dec b
    inc c
    ld bc, $f400
    jr c, jr_00b_59dd

jr_00b_59dd:
    nop
    db $fc
    jr nc, jr_00b_5a01

    nop
    inc b
    jr c, jr_00b_5a05

    ldh a, [$f4]
    ld c, $00
    ldh a, [$fc]
    jr nz, jr_00b_59ed

jr_00b_59ed:
    ldh a, [rDIV]
    inc c
    ld bc, $0400
    jr z, jr_00b_5a15

    nop
    db $fc
    jr nc, jr_00b_59f9

jr_00b_59f9:
    nop
    db $f4
    jr z, jr_00b_59fd

jr_00b_59fd:
    ldh a, [rDIV]
    ld e, $20

jr_00b_5a01:
    ldh a, [$fc]
    jr nz, jr_00b_5a25

jr_00b_5a05:
    ldh a, [$f4]
    inc e
    ld hl, $0400
    jr z, jr_00b_5a2d

    nop
    db $fc
    jr nc, jr_00b_5a11

jr_00b_5a11:
    nop
    db $f4
    jr z, jr_00b_5a15

jr_00b_5a15:
    ldh a, [rDIV]
    ld c, $20
    ldh a, [$fc]
    jr nz, jr_00b_5a3d

    ldh a, [$f4]
    inc c
    ld hl, $0500
    jr z, jr_00b_5a45

jr_00b_5a25:
    nop
    db $fd
    jr nc, jr_00b_5a29

jr_00b_5a29:
    nop
    push af
    jr c, jr_00b_5a2d

jr_00b_5a2d:
    ldh a, [rTIMA]
    ld c, $20
    ldh a, [$fd]
    jr nz, jr_00b_5a55

    ldh a, [$f5]
    inc e
    ld hl, $0301
    jr c, jr_00b_5a5d

jr_00b_5a3d:
    ld bc, $30fb
    nop
    ld bc, $28f3
    nop

jr_00b_5a45:
    pop af
    inc bc
    ld e, $20
    pop af
    ei
    jr nz, @+$22

    pop af
    di
    inc c
    ld hl, $0400
    jr c, jr_00b_5a75

jr_00b_5a55:
    nop
    db $fc
    jr nc, jr_00b_5a59

jr_00b_5a59:
    nop
    db $f4
    jr c, jr_00b_5a5d

jr_00b_5a5d:
    ldh a, [rDIV]
    ld c, $20
    ldh a, [$fc]
    jr nz, jr_00b_5a85

    ldh a, [$f4]
    inc c
    ld hl, $f8f8
    ld [$f800], sp
    nop
    ld a, [de]
    ld bc, $f800
    ld h, $00

jr_00b_5a75:
    nop
    nop
    ld [hl], $00
    ldh a, [$f8]
    inc h
    nop
    ldh a, [rP1]
    inc [hl]
    ld bc, $0401
    ld [hl-], a
    nop

jr_00b_5a85:
    ld bc, $22f4
    nop
    ld bc, $30fc
    nop
    pop af
    inc b
    ld b, b
    nop
    pop af
    db $fc
    jr nz, jr_00b_5a95

jr_00b_5a95:
    pop af
    db $f4
    ld c, $01
    nop
    inc b
    ld [hl-], a
    nop
    nop
    db $f4
    ld [hl+], a
    nop
    nop
    db $fc
    jr nc, jr_00b_5aa5

jr_00b_5aa5:
    ldh a, [rDIV]
    ld b, b
    nop
    ldh a, [$fc]
    jr nz, jr_00b_5aad

jr_00b_5aad:
    ldh a, [$f4]
    ld e, $01
    ld bc, $28f4
    nop
    ld bc, $30fc
    jr nz, jr_00b_5abb

    inc b

jr_00b_5abb:
    jr z, jr_00b_5add

    pop af
    db $f4
    ld c, $00
    pop af
    db $fc
    jr nz, jr_00b_5ac5

jr_00b_5ac5:
    pop af
    inc b
    ld b, b
    ld bc, $f400
    jr z, jr_00b_5acd

jr_00b_5acd:
    nop
    db $fc
    jr nc, @+$22

    nop
    inc b
    jr z, jr_00b_5af5

    ldh a, [$f4]
    ld c, $00
    ldh a, [$fc]
    jr nz, jr_00b_5add

jr_00b_5add:
    ldh a, [rDIV]
    ld a, [hl-]
    ld bc, $f8f8
    ld [$f800], sp
    nop
    ld a, [bc]
    ld bc, $00f8
    ld [$f820], sp

jr_00b_5aee:
    ld hl, sp+$1a
    ld hl, $0000
    ld h, $20

jr_00b_5af5:
    nop
    ld hl, sp+$36
    jr nz, @-$0e

    nop
    inc h
    jr nz, jr_00b_5aee

    ld hl, sp+$34
    ld hl, $0401
    ld [hl+], a
    jr nz, jr_00b_5b07

    db $fc

jr_00b_5b07:
    jr nc, jr_00b_5b29

    ld bc, $32f4
    jr nz, @-$0d

    inc b
    ld c, $20
    pop af
    db $fc
    jr nz, jr_00b_5b35

    pop af

jr_00b_5b16:
    db $f4
    ld b, b
    ld hl, $0400
    ld [hl+], a
    jr nz, jr_00b_5b1e

jr_00b_5b1e:
    db $fc
    jr nc, jr_00b_5b41

    nop
    db $f4
    ld [hl-], a
    jr nz, jr_00b_5b16

    inc b
    ld e, $20

jr_00b_5b29:
    ldh a, [$fc]
    jr nz, jr_00b_5b4d

    ldh a, [$f4]
    ld b, b
    ld hl, $0400
    jr z, jr_00b_5b55

jr_00b_5b35:
    nop
    db $fc
    jr nc, jr_00b_5b39

jr_00b_5b39:
    nop
    db $f4
    jr z, jr_00b_5b3d

jr_00b_5b3d:
    ldh a, [rDIV]
    ld c, $20

jr_00b_5b41:
    ldh a, [$fc]
    jr nz, @+$22

    ldh a, [$f4]
    ld b, b
    ld hl, $0400
    jr z, jr_00b_5b6d

jr_00b_5b4d:
    nop
    db $fc
    jr nc, jr_00b_5b51

jr_00b_5b51:
    nop
    db $f4
    jr z, jr_00b_5b55

jr_00b_5b55:
    ldh a, [rDIV]
    ld c, $20
    ldh a, [$fc]
    jr nz, @+$22

    ldh a, [$f4]
    ld a, [hl-]
    ld hl, $00f8
    ld [$f820], sp
    ld hl, sp+$0a
    ld hl, $f8f8
    ld b, d
    nop

jr_00b_5b6d:
    ld hl, sp+$00
    ld d, d
    ld bc, $00f8
    ld b, d
    jr nz, @-$06

    ld hl, sp+$52
    ld hl, $f8f8
    ld [$f800], sp
    nop
    ld d, b
    ld bc, $00f8
    inc d
    nop
    ld hl, sp-$08
    ld [$f801], sp
    nop
    ld [$f820], sp
    ld hl, sp+$44
    ld hl, $00f8
    ld [$f820], sp

jr_00b_5b96:
    ld hl, sp+$50
    ld hl, $f8f8
    inc d
    jr nz, jr_00b_5b96

    nop
    ld [$f821], sp
    ld hl, sp+$08
    nop
    ld hl, sp+$00
    ld b, h
    ld bc, $fcf8
    ld d, h
    ld hl, $00f8
    ld b, [hl]
    jr nz, @-$06

    ld hl, sp+$56
    ld hl, $00f0
    ld b, [hl]
    jr nz, @-$0e

    ld hl, sp+$56
    ld hl, $00f8
    ld d, h
    ld hl, $f8f8
    ld d, h
    ld hl, $fcf8
    ld d, h
    ld bc, $f8f8
    ld b, [hl]
    nop
    ld hl, sp+$00
    ld d, [hl]
    ld bc, $f8f0
    ld b, [hl]
    nop
    ldh a, [rP1]
    ld d, [hl]
    ld bc, $00f8
    ld d, h
    ld bc, $f8f8
    ld d, h
    ld bc, $f8f8
    ld c, b
    nop
    ld hl, sp+$00
    ld e, b
    ld bc, $f8f8
    ld c, b
    ld b, b
    ld hl, sp+$00
    ld e, b
    ld b, c
    ld hl, sp+$00
    ld c, b
    jr nz, @-$06

    ld hl, sp+$58
    ld hl, $f8f8
    ld e, b
    ld h, b
    ld hl, sp+$00
    ld c, b
    ld h, c
    nop
    inc b
    ld a, [hl+]
    nop
    ldh a, [rDIV]
    ld a, [hl+]
    ld b, b
    nop
    db $fc
    ld a, $00
    nop
    db $f4
    ld l, $00
    ldh a, [$fc]
    inc a
    nop
    ldh a, [$f4]
    inc l
    ld bc, $fcf8
    ld e, d
    ld bc, $fcf4
    add d
    ld bc, $fcf4
    add $01
    ld hl, sp+$00
    ld [hl], d
    jr nz, @-$06

    ld hl, sp+$72
    ld bc, $00f8
    ld [hl], h
    nop
    ld hl, sp-$08
    ld h, h
    ld bc, $00f8
    ld [hl], h
    db $10
    ld hl, sp-$08
    ld h, h
    ld de, $00f8
    ld [hl], d
    ld h, b
    ld hl, sp-$08
    ld [hl], d
    ld b, c
    ld hl, sp+$00
    ld h, h
    ld h, b
    ld hl, sp-$08
    ld [hl], h
    ld h, c
    ld hl, sp+$00
    halt
    nop
    ld hl, sp-$08
    ld h, [hl]
    ld bc, $00f6
    db $76
    db $10
    or $f8
    ld h, [hl]
    ld de, $00f8
    ld a, b
    nop
    ld hl, sp-$08
    ld l, b
    ld bc, $00f8
    ld a, d
    nop
    ld hl, sp-$08
    ld l, d
    ld bc, $00f8
    ld a, h
    ld h, b
    ld hl, sp-$08
    ld a, h
    ld bc, $00f8
    ld a, [hl]
    jr nz, @-$06

    ld hl, sp+$7e
    ld bc, $fcf8
    ld l, [hl]
    ld bc, $00f8
    ld l, h
    jr nz, @-$06

    ld hl, sp+$6c
    ld bc, $00f8
    ld [hl], b
    nop
    ld hl, sp-$08
    ld h, b
    ld bc, $fdf3
    add d

jr_00b_5c94:
    ld h, b
    ld a, [$7200]
    jr nz, jr_00b_5c94

    ld hl, sp+$72
    ld bc, $02f6
    add d
    ld h, b
    ld a, [$64f6]
    nop
    ld a, [$74fe]
    ld bc, $04fa
    add d
    ld h, b
    ld hl, sp-$04

jr_00b_5caf:
    ld [hl], d
    ld h, b
    ld hl, sp-$0c
    ld [hl], d
    ld b, c
    rst $30
    inc bc
    add d

jr_00b_5cb8:
    jr nz, jr_00b_5caf

    or $74

jr_00b_5cbc:
    ld h, b
    push af
    cp $64
    ld h, c
    ld a, [$82fd]
    jr nz, jr_00b_5cb8

    nop
    ld [hl], d
    jr nz, jr_00b_5cbc

    ld hl, sp+$72
    ld bc, $f8f8
    add d
    nop
    push af
    dec b
    ld [hl], h
    nop
    push af
    db $fd
    ld h, h
    ld bc, $f5fa
    add d
    ld b, b
    ld hl, sp-$03
    ld [hl], d
    ld b, b
    ld hl, sp+$05
    ld [hl], d
    ld h, c
    or $f7
    add d
    ld b, b

jr_00b_5ce9:
    ei
    inc b
    ld h, h
    jr nz, jr_00b_5ce9

    db $fc
    ld [hl], h
    ld hl, $f8f8
    ld c, h
    nop
    ld hl, sp+$00
    ld e, h
    ld bc, $f8f8
    ld e, h
    jr nz, @-$06

    nop
    ld c, h
    ld hl, $f8f8
    ld c, d
    db $10
    ld hl, sp+$00
    ld e, h
    ld de, $f8f8
    ld c, d
    ld d, b
    ld hl, sp+$00
    ld e, h
    ld d, c
    ld hl, sp+$00
    ld c, d
    jr nc, @-$06

    ld hl, sp+$5c
    ld sp, $00f8
    ld c, d
    ld [hl], b
    ld hl, sp-$08
    ld e, h
    ld [hl], c
    ld hl, sp+$00
    ld h, d
    jr nz, @-$06

    ld hl, sp+$62
    ld bc, $00f8
    ld e, [hl]
    ld h, b
    ld hl, sp-$08
    ld e, [hl]
    ld bc, $00f8
    ld c, [hl]
    ld h, b
    ld hl, sp-$08
    ld c, [hl]
    ld bc, $06f8
    ld h, d
    jr nz, @-$06

    cp $62
    nop
    add sp, $03
    ld c, [hl]
    ld h, b
    add sp, -$05
    ld c, [hl]
    nop
    ld [$5efd], sp
    ld h, b
    ld [$5ef5], sp
    ld bc, $04fc
    ld h, d
    jr nz, @-$02

    db $fc
    ld h, d
    nop
    ldh a, [$0e]
    ld e, [hl]
    ld h, b
    ldh a, [rTMA]
    ld e, [hl]
    nop
    nop
    ld a, [c]
    ld c, [hl]
    ld h, b
    nop
    ld [$014e], a
    cp $00
    ld h, d

jr_00b_5d6c:
    jr nz, jr_00b_5d6c

    ld hl, sp+$62
    nop
    ei
    db $10
    ld c, [hl]
    ld h, b
    ei
    ld [$004e], sp
    push af
    ldh a, [$5e]
    ld h, b
    push af
    add sp, $5e
    ld bc, $fcfc
    ld h, d
    jr nz, @-$02

    db $f4
    ld h, d
    nop
    ld [$4eef], a
    ld b, b
    ld [$4ef7], a
    jr nz, jr_00b_5d98

    ld bc, $405e
    ld b, $09
    ld e, [hl]

jr_00b_5d98:
    ld hl, $faf8
    ld h, d
    ld h, b
    ld hl, sp-$0e
    ld h, d
    nop
    ld [$5e09], a
    ld h, b
    ld [$5e01], a
    nop
    ld b, $f7
    ld c, [hl]
    ld h, b
    ld b, $ef
    ld c, [hl]
    ld bc, $fcf4
    ld h, d
    ld h, b
    db $f4
    db $f4
    ld h, d
    nop
    push af
    db $10
    ld c, [hl]
    ld h, b
    push af
    ld [$004e], sp
    ei
    ldh a, [$5e]
    ld h, b
    ei
    add sp, $5e
    ld bc, $00f2
    ld h, d
    ld h, b
    ld a, [c]
    ld hl, sp+$62
    nop
    ldh a, [$ea]
    ld c, [hl]
    ld b, b
    ldh a, [$f2]
    ld c, [hl]
    jr nz, jr_00b_5dda

jr_00b_5dda:
    ld b, $5e
    nop
    nop
    ld c, $5e
    ld h, c
    db $f4
    inc b
    ld h, d
    jr nz, jr_00b_5dda

    db $fc
    ld h, d
    nop
    add sp, -$0b
    ld e, [hl]
    ld b, b
    add sp, -$03
    ld e, [hl]
    jr nz, @+$0a

    ei
    ld c, [hl]
    ld b, b
    ld [$4e03], sp
    ld hl, $00f8
    sub b
    db $10
    ld hl, sp-$08
    add b
    ld de, $fcf8
    add h
    ld de, $fcf8
    add h
    ld d, c
    ld hl, sp-$04
    add h
    ld [hl], c
    ld hl, sp-$04
    add h
    ld sp, $0000
    add [hl]
    nop
    nop
    ld hl, sp-$7a
    ld bc, $0800
    add [hl]
    nop
    nop
    nop
    add [hl]
    nop
    nop
    ld hl, sp-$7a
    nop
    nop
    ldh a, [$86]
    ld bc, $fcf8
    adc b
    ld bc, $fbf6
    adc b
    ld bc, $fdf6
    adc b
    ld bc, $fff8
    adc b
    ld bc, $fdfa
    adc b
    ld bc, $fbfa
    adc b
    ld bc, $faf8
    adc b
    ld bc, $00f8
    adc d
    jr nz, @-$06

    ld hl, sp-$76
    ld b, c
    ld hl, sp-$08
    adc d
    nop
    ld hl, sp+$00
    adc d
    ld h, c
    ld hl, sp+$00
    sbc b
    nop
    ld hl, sp-$08
    adc h
    ld bc, $00f8
    sbc d
    nop
    ld hl, sp-$08
    adc [hl]
    ld bc, $f8f8
    sbc b
    jr nz, @-$06

jr_00b_5e6a:
    nop
    adc h
    ld hl, $f8f8
    sbc d
    jr nz, jr_00b_5e6a

    nop
    adc [hl]
    ld hl, $00f8
    sbc b
    nop
    ld hl, sp-$08
    sub d
    ld bc, $00f8
    sbc d
    nop
    ld hl, sp-$08
    sub h
    ld bc, $f8f8
    sub [hl]
    nop
    ld hl, sp+$00
    sbc b
    ld bc, $01f8
    sbc b
    db $10
    ld hl, sp-$07
    sub d
    ld de, $01f8
    sbc b
    db $10
    ld hl, sp-$07
    sub [hl]
    ld de, $f8f8
    sbc b
    jr nz, @-$06

jr_00b_5ea2:
    nop
    sub d
    ld hl, $f8f8
    sbc d
    jr nz, jr_00b_5ea2

jr_00b_5eaa:
    nop
    sub h
    ld hl, $00f8
    sub [hl]
    jr nz, jr_00b_5eaa

jr_00b_5eb2:
    ld hl, sp-$68
    ld hl, $f7f8
    sbc b
    jr nc, jr_00b_5eb2

jr_00b_5eba:
    rst $38
    sub d
    ld sp, $f7f8
    sbc b
    jr nc, jr_00b_5eba

    rst $38
    sub [hl]
    ld sp, $00f8
    sbc [hl]
    nop
    ld hl, sp-$08
    sbc h
    ld bc, $00f8
    and d
    nop
    ld hl, sp-$08
    and b
    ld bc, $f8f8
    sbc [hl]
    jr nz, @-$06

jr_00b_5eda:
    nop
    sbc h
    ld hl, $f8f8
    and d
    jr nz, jr_00b_5eda

    nop
    and b
    ld hl, $00f8
    xor h
    nop
    ld hl, sp-$08
    xor d
    ld bc, $00f8
    xor b
    nop
    ld hl, sp-$08
    and [hl]
    ld bc, $00f8
    and h
    jr nz, @-$06

jr_00b_5efa:
    ld hl, sp-$5c
    ld bc, $f8f8
    xor b
    jr nz, jr_00b_5efa

jr_00b_5f02:
    nop
    and [hl]
    ld hl, $f8f8
    xor h
    jr nz, jr_00b_5f02

    nop
    xor d
    ld hl, $00f8
    and $20
    ld hl, sp-$08
    and $01
    ld hl, sp+$00
    add sp, $20
    ld hl, sp-$08
    add sp, $01
    ld hl, sp+$00
    db $e4
    jr nz, @-$06

jr_00b_5f22:
    ld hl, sp-$1c
    ld bc, $00f8
    ld a, [c]
    jr nz, jr_00b_5f22

jr_00b_5f2a:
    ld hl, sp-$0e
    ld bc, $00f8
    ld a, [c]
    jr nz, jr_00b_5f2a

    ld hl, sp-$16
    ld bc, $00f8
    ld hl, sp+$00
    ld hl, sp-$08
    ld a, [$f801]
    nop
    db $ec
    nop
    ld hl, sp-$08
    ldh a, [rSB]
    ld hl, sp-$08
    ld hl, sp+$20
    ld hl, sp+$00
    ld a, [$f821]
    ld hl, sp-$14
    jr nz, @-$06

jr_00b_5f52:
    nop
    ldh a, [rNR42]
    ld hl, sp+$00
    db $fc
    jr nz, jr_00b_5f52

    ld hl, sp-$04
    ld bc, $00f8
    db $f4
    nop
    ld hl, sp-$08
    ld a, [c]
    ld bc, $00f8
    db $f4
    nop
    ld hl, sp-$08
    ld [$f801], a
    nop
    xor $00
    ld hl, sp-$08
    ldh a, [rSB]
    ld hl, sp+$00
    or $00
    ld hl, sp-$08
    ld a, [$f801]
    ld hl, sp-$12
    jr nz, @-$06

    nop
    ldh a, [rNR42]
    ld hl, sp-$08
    or $20
    ld hl, sp+$00
    ld a, [$f821]
    nop
    db $fc
    jr nz, @-$06

    ld hl, sp-$02
    ld bc, $fff8
    or h
    db $10
    ld hl, sp-$09
    or b
    ld bc, $00f8
    or h
    db $10
    ld hl, sp-$08
    xor [hl]
    ld bc, $00f8
    or h
    db $10
    ld hl, sp-$08
    or d
    ld de, $f7f8
    or h
    jr nc, @-$06

jr_00b_5fb2:
    rst $38
    or b
    ld hl, $f6f8
    or h
    jr nc, jr_00b_5fb2

jr_00b_5fba:
    cp $ae
    ld hl, $f6f8
    or h
    jr nc, jr_00b_5fba

    cp $b2
    ld sp, $00f8
    adc $00
    ld hl, sp-$08
    call z, $f801
    nop
    jp nc, $f800

    ld hl, sp-$30
    ld bc, $01f8
    jp nc, $f810

    ld sp, hl
    ret nc

    ld de, $f8f8
    adc $20
    ld hl, sp+$00
    call z, $f821
    ld hl, sp-$2e
    jr nz, @-$06

    nop
    ret nc

    ld hl, $f7f8
    jp nc, $f830

    rst $38
    ret nc

    ld sp, $00f8
    sub $00
    ld hl, sp-$08
    call nc, $f801
    nop
    jp c, $f800

    ld hl, sp-$28
    ld bc, $00f8
    sbc $00
    ld hl, sp-$08
    call c, $f801
    nop
    ret c

    ld h, b
    ld hl, sp-$08
    sub $61
    ld hl, sp+$00
    call c, $f860
    ld hl, sp-$22
    ld h, c
    ld hl, sp-$08
    sub $20
    ld hl, sp+$00
    call nc, $f821
    ld hl, sp-$26
    jr nz, @-$06

    nop
    ret c

    ld hl, $f8f8
    sbc $20
    ld hl, sp+$00
    call c, $f821
    nop
    jp c, $f840

    ld hl, sp-$28
    ld b, c
    ld hl, sp+$00
    sbc $40
    ld hl, sp-$08
    call c, $f841
    nop
    cp d
    jr nz, @-$06

    ld hl, sp-$46
    ld bc, $00f8
    cp [hl]
    nop
    ld hl, sp-$08
    cp h
    ld bc, $00f8
    cp [hl]
    nop
    ld hl, sp-$08
    cp [hl]
    ld hl, $f8f8
    cp [hl]
    jr nz, @-$06

jr_00b_6062:
    nop
    cp h
    ld hl, $00f8
    cp b
    jr nz, jr_00b_6062

    ld hl, sp-$48
    ld bc, $fe07
    ld a, [c]
    ld b, b
    rlca
    or $f0
    ld b, b
    ld hl, sp+$08
    ld [c], a
    ld b, b
    add sp, $08
    ld [c], a
    nop
    ld hl, sp+$00
    add sp, $60
    add sp, $00
    add sp, $20
    ld hl, sp-$08
    add sp, $40
    add sp, -$08
    add sp, $00
    ld hl, sp-$10
    ldh [rLCDC], a
    add sp, -$10
    ldh [rSB], a
    cp $08
    db $e4
    ld b, b
    xor $08
    and $00
    cp $00
    xor $40
    xor $00
    ld [$fe20], a
    ld hl, sp-$14
    ld b, b
    xor $f8
    ld [$fe00], a
    ldh a, [$e0]
    ld b, b
    xor $f0
    ldh [rSB], a
    ld a, [c]
    ld [$00e4], sp
    ld [bc], a
    ld [$40e6], sp
    ld a, [c]
    nop
    xor $00
    ld [bc], a
    nop
    ld [$f260], a
    ld hl, sp-$14
    nop
    ld [bc], a
    ld hl, sp-$16
    ld b, b
    ld a, [c]
    ldh a, [$e0]
    nop
    ld [bc], a
    ldh a, [$e0]
    ld b, c
    jp hl


    cp $f2
    nop
    jp hl


    or $f0
    nop
    ld [$e208], sp
    ld b, b
    ld hl, sp+$08
    ld [c], a
    nop
    ld [$e800], sp
    ld h, b
    ld hl, sp+$00
    add sp, $20
    ld [$e8f8], sp
    ld b, b
    ld hl, sp-$08
    add sp, $00
    ld [$e0f0], sp
    ld b, b
    ld hl, sp-$10
    ldh [rSB], a
    rlca
    ld sp, hl
    ld e, [hl]
    jr nz, jr_00b_6109

    pop af
    ld e, [hl]
    ld b, b
    rlca
    ld a, [bc]
    ld a, [c]
    ld b, b

jr_00b_6109:
    rlca
    ld [bc], a
    ldh a, [rLCDC]
    ld hl, sp+$0d
    ld [c], a
    ld b, b
    add sp, $0d
    ld [c], a
    nop
    ld hl, sp+$05
    add sp, $60
    add sp, $05
    add sp, $20
    ld hl, sp-$03
    add sp, $40
    add sp, -$03
    add sp, $00
    ld hl, sp-$0b
    ldh [rLCDC], a
    add sp, -$0b
    ldh [rSB], a
    rlca
    rst $28
    ld c, [hl]
    jr nz, jr_00b_6139

    rst $20
    ld c, [hl]
    ld b, b
    rlca
    dec b
    ld a, [c]
    ld b, b

jr_00b_6139:
    rlca
    db $fd
    ldh a, [rLCDC]
    ld hl, sp+$0a
    ld [c], a
    ld b, b
    add sp, $0a
    ld [c], a
    nop
    ld hl, sp+$02
    add sp, $60
    add sp, $02
    add sp, $20
    ld hl, sp-$06
    add sp, $40
    add sp, -$06
    add sp, $00
    ld hl, sp-$0e
    ldh [rLCDC], a
    add sp, -$0e
    ldh [rSB], a
    rlca
    ldh [$4e], a
    ld h, b
    rlca
    ret c

    ld c, [hl]
    nop
    rlca
    ld bc, $40f2
    rlca
    ld sp, hl
    ldh a, [rLCDC]
    ld hl, sp+$09
    ld [c], a
    ld b, b
    add sp, $09
    ld [c], a
    nop
    ld hl, sp+$01
    add sp, $60
    add sp, $01
    add sp, $20
    ld hl, sp-$07
    add sp, $40
    add sp, -$07
    add sp, $00
    ld hl, sp-$0f
    ldh [rLCDC], a
    add sp, -$0f
    ldh [rSB], a
    jp hl


    ld sp, hl
    ld e, [hl]
    ld h, b
    jp hl


    pop af
    ld e, [hl]
    nop
    jp hl


    ld a, [bc]
    ld a, [c]
    nop
    jp hl


    ld [bc], a
    ldh a, [rP1]
    ld hl, sp+$0d
    ld [c], a
    nop
    ld [$e20d], sp
    ld b, b
    ld hl, sp+$05
    add sp, $20
    ld [$e805], sp
    ld h, b
    ld hl, sp-$03
    add sp, $00
    ld [$e8fd], sp
    ld b, b
    ld hl, sp-$0b
    ldh [rP1], a
    ld [$e0f5], sp
    ld b, c
    jp hl


    rst $28
    ld c, [hl]
    ld h, b
    jp hl


    rst $20
    ld c, [hl]
    nop
    jp hl


    dec b
    ld a, [c]
    nop
    jp hl


    db $fd
    ldh a, [rP1]
    ld hl, sp+$0a
    ld [c], a
    nop
    ld [$e20a], sp
    ld b, b
    ld hl, sp+$02
    add sp, $20
    ld [$e802], sp
    ld h, b
    ld hl, sp-$06
    add sp, $00
    ld [$e8fa], sp
    ld b, b
    ld hl, sp-$0e
    ldh [rP1], a
    ld [$e0f2], sp
    ld b, c
    jp hl


    ldh [$4e], a
    jr nz, @-$15

    ret c

    ld c, [hl]
    ld b, b
    jp hl


    ld bc, $00f2
    jp hl


    ld sp, hl
    ldh a, [rP1]
    ld hl, sp+$09
    ld [c], a
    nop
    ld [$e209], sp
    ld b, b
    ld hl, sp+$01
    add sp, $20
    ld [$e801], sp
    ld h, b
    ld hl, sp-$07
    add sp, $00
    ld [$e8f9], sp
    ld b, b
    ld hl, sp-$0f
    ldh [rP1], a
    ld [$e0f1], sp
    ld b, c
    ld hl, sp+$00
    jp z, $f800

    ld hl, sp-$38
    ld bc, $00f8
    add $00
    ld hl, sp-$08
    call nz, $f801
    ld hl, sp-$36
    jr nz, @-$06

    nop
    ret z

    ld hl, $f8f8
    add $20
    ld hl, sp+$00
    call nz, $f821
    nop
    ret nz

    jr nz, @-$06

    ld hl, sp-$40
    ld bc, $00f8
    jp nz, $f820

    ld hl, sp-$3e
    ld bc, $00f8
    or [hl]
    ld h, b
    ld hl, sp-$08
    or [hl]
    ld bc, $00f8
    cp $10
    ld hl, sp-$08
    db $fc
    ld de, $f9ea
    db $f4
    db $10
    ld hl, sp+$00
    cp $10
    ld hl, sp-$08
    db $fc
    ld de, $f9da
    db $f4
    db $10
    ld [$f6f9], a
    db $10
    ld hl, sp+$00
    cp $10
    ld hl, sp-$08
    db $fc
    ld de, $f9da
    or $10
    ld [$f6f9], a
    db $10
    ld hl, sp+$00
    cp $10
    ld hl, sp-$08
    db $fc
    ld de, $fada
    or $30
    ld [$f6fa], a
    jr nc, @-$06

    nop
    cp $10
    ld hl, sp-$08

jr_00b_6297:
    db $fc
    ld de, $0018
    ld hl, sp+$20
    jr jr_00b_6297

    ld hl, sp+$01
    inc e
    ld hl, sp+$58
    and b
    inc e
    nop
    ld c, b
    and c
    dec c
    ld hl, sp+$58
    jr nz, @+$0f

    nop
    ld c, b
    jr nz, jr_00b_62bf

    inc c
    db $f4
    jr nc, jr_00b_62c3

    db $ec
    db $f4
    db $10
    inc de
    ld b, $f4
    jr nc, @+$15

    ld a, [c]

jr_00b_62bf:
    db $f4
    db $10
    dec e
    nop

jr_00b_62c3:
    ld a, [$1df0]

jr_00b_62c6:
    ld hl, sp-$06
    sub c
    ld hl, sp-$08
    ld e, b
    jr nz, jr_00b_62c6

jr_00b_62ce:
    nop
    ld c, b
    jr nz, @-$06

    inc c
    db $f4
    jr nc, jr_00b_62ce

    db $ec
    db $f4
    db $10
    cp $06
    db $f4

jr_00b_62dc:
    jr nc, jr_00b_62dc

    ld a, [c]
    db $f4
    db $10
    ld [$fa00], sp
    ld [hl], b
    ld [$faf8], sp
    db $10
    jr jr_00b_62eb

jr_00b_62eb:
    ld a, [$18f0]
    ld hl, sp-$06
    sub c
    jr jr_00b_62f3

jr_00b_62f3:
    ld a, [$18f0]
    ld hl, sp-$06
    sub b
    ld [$fa00], sp
    ldh a, [$08]
    ld hl, sp-$06
    sub b
    ret c

    ld hl, sp+$58
    and b
    ret c

    nop
    ld c, b
    and b
    ret c

    inc c
    db $f4
    or b
    ret c

    db $ec
    db $f4
    sub b
    sbc $06
    db $f4
    or b
    sbc $f2
    db $f4
    sub b
    add sp, $00
    ld a, [$e8f0]
    ld hl, sp-$06
    sub b
    ld hl, sp+$00
    ld a, [$f870]
    ld hl, sp-$06
    ld de, $0018
    ld a, [$18f0]
    ld hl, sp-$06
    sub b
    ld [$fa00], sp
    ld [hl], b
    ld [$faf8], sp
    db $10
    ld hl, sp+$00
    ld a, [$f870]
    ld hl, sp-$06
    db $10
    add sp, $00
    ld a, [$e8f0]
    ld hl, sp-$06
    sub b
    ret z

    nop
    ld a, [$c8f0]
    ld hl, sp-$06
    sub b
    ret c

    nop
    ld a, [$d8f0]
    ld hl, sp-$06
    sub c
    dec e
    ld hl, sp-$06
    ret nc

    dec e
    nop
    ld a, [$0db0]
    ld hl, sp-$06
    ld d, b
    dec c
    nop
    ld a, [$fd30]
    ld hl, sp-$06
    ld d, b
    db $fd
    nop
    ld a, [$ed30]
    ld hl, sp-$06
    ret nc

    db $ed
    nop
    ld a, [$cdb0]
    ld hl, sp-$06
    ret nc

    call $fa00
    or b
    db $dd
    ld hl, sp-$06
    ret nc

    db $dd
    nop
    ld a, [$90b1]
    nop
    ld a, [$8070]
    nop
    ld a, [$7070]
    nop
    ld a, [$6070]
    nop
    ld a, [$5070]
    nop
    ld a, [$4070]
    nop
    ld a, [$3070]
    nop
    ld a, [$2070]
    nop
    ld a, [$1070]
    nop
    ld a, [$9070]
    ld hl, sp-$06
    db $10
    add b
    ld hl, sp-$06
    db $10
    ld [hl], b
    ld hl, sp-$06
    db $10
    ld h, b
    ld hl, sp-$06
    db $10
    ld d, b
    ld hl, sp-$06
    db $10
    ld b, b
    ld hl, sp-$06
    db $10
    jr nc, @-$06

    ld a, [$2010]
    ld hl, sp-$06
    db $10
    db $10
    ld hl, sp-$06
    stop
    nop
    ld a, [$0070]
    ld hl, sp-$06
    ld de, $f890
    ld a, [$8050]
    ld hl, sp-$06
    ld d, b
    ld [hl], b
    ld hl, sp-$06
    ld d, b
    ld h, b
    ld hl, sp-$06
    ld d, b
    ld d, b
    ld hl, sp-$06
    ld d, b
    ld b, b
    ld hl, sp-$06
    ld d, b
    jr nc, @-$06

    ld a, [$2050]
    ld hl, sp-$06
    ld d, b
    db $10
    ld hl, sp-$06
    ld d, b
    sub b
    nop
    ld a, [$8030]
    nop
    ld a, [$7030]
    nop
    ld a, [$6030]
    nop
    ld a, [$5030]
    nop
    ld a, [$4030]
    nop
    ld a, [$3030]
    nop
    ld a, [$2030]
    nop
    ld a, [$1030]
    nop
    ld a, [$0030]
    ld hl, sp-$06
    ld d, b
    nop
    nop
    ld a, [$f831]
    ld [$00fe], sp
    ld hl, sp-$10
    cp $00
    ld hl, sp+$00
    db $fc
    nop
    ld hl, sp-$08
    ld a, [$0000]
    db $10
    xor $60
    ld [$f008], sp
    ld h, b
    ld [$f200], sp
    ld h, b
    ld [$f2f8], sp
    ld b, b
    ld [$f0f0], sp
    ld b, b
    nop
    add sp, -$12
    ld b, b
    ldh a, [rNR10]
    xor $20
    add sp, $08
    ldh a, [rNR41]
    add sp, $00
    ld a, [c]
    jr nz, @-$16

    ld hl, sp-$0e
    nop
    add sp, -$10
    ldh a, [rP1]
    ldh a, [$e8]
    xor $01
    ld hl, sp+$08
    cp $00
    ld hl, sp-$10
    cp $00
    ld hl, sp+$00
    db $fc
    nop
    ld hl, sp-$08
    ld a, [$0000]
    db $10
    db $f4
    ld h, b
    ld [$f608], sp
    ld h, b
    ld [$f800], sp
    ld h, b
    ld [$f8f8], sp
    ld b, b
    ld [$f6f0], sp
    ld b, b
    nop
    add sp, -$0c
    ld b, b
    ldh a, [rNR10]
    db $f4
    jr nz, @-$16

    ld [$20f6], sp
    add sp, $00
    ld hl, sp+$20
    add sp, -$08
    ld hl, sp+$00
    add sp, -$10
    or $00
    ldh a, [$e8]
    db $f4
    ld bc, $f0f8
    cp $20
    ld hl, sp+$08
    cp $20
    ld hl, sp-$08
    db $fc
    jr nz, @-$06

    nop
    ld a, [$0020]
    add sp, -$12
    ld b, b
    ld [$f0f0], sp
    ld b, b
    ld [$f2f8], sp
    ld b, b
    ld [$f200], sp
    ld h, b
    ld [$f008], sp
    ld h, b
    nop
    db $10
    xor $60
    ldh a, [$e8]
    xor $00
    add sp, -$10
    ldh a, [rP1]
    add sp, -$08
    ld a, [c]
    nop
    add sp, $00
    ld a, [c]
    jr nz, @-$16

    ld [$20f0], sp
    ldh a, [rNR10]
    xor $21
    ld hl, sp-$10
    cp $20
    ld hl, sp+$08
    cp $20
    ld hl, sp-$08
    db $fc
    jr nz, @-$06

    nop
    ld a, [$0020]
    add sp, -$0c
    ld b, b
    ld [$f6f0], sp
    ld b, b
    ld [$f8f8], sp
    ld b, b
    ld [$f800], sp
    ld h, b
    ld [$f608], sp
    ld h, b
    nop
    db $10
    db $f4
    ld h, b
    ldh a, [$e8]
    db $f4
    nop
    add sp, -$10
    or $00
    add sp, -$08
    ld hl, sp+$00
    add sp, $00
    ld hl, sp+$20
    add sp, $08
    or $20
    ldh a, [rNR10]
    db $f4
    ld hl, $08f8
    cp $40
    ld hl, sp-$10
    cp $40
    ld hl, sp+$00
    db $fc
    ld b, b
    ld hl, sp-$08
    ld a, [$f040]
    db $10
    xor $20
    add sp, $08
    ldh a, [rNR41]
    add sp, $00
    ld a, [c]
    jr nz, @-$16

    ld hl, sp-$0e
    nop
    add sp, -$10
    ldh a, [rP1]
    ldh a, [$e8]
    xor $00
    nop
    db $10
    xor $60
    ld [$f008], sp
    ld h, b
    ld [$f200], sp
    ld h, b
    ld [$f2f8], sp
    ld b, b
    ld [$f0f0], sp
    ld b, b
    nop

jr_00b_6566:
    add sp, -$12
    ld b, c
    ld hl, sp+$08
    cp $40
    ld hl, sp-$10
    cp $40
    ld hl, sp+$00
    db $fc
    ld b, b
    ld hl, sp-$08
    ld a, [$f040]
    db $10
    db $f4
    jr nz, jr_00b_6566

    ld [$20f6], sp
    add sp, $00
    ld hl, sp+$20
    add sp, -$08
    ld hl, sp+$00
    add sp, -$10
    or $00
    ldh a, [$e8]
    db $f4
    nop
    nop
    db $10
    db $f4
    ld h, b
    ld [$f608], sp
    ld h, b
    ld [$f800], sp
    ld h, b
    ld [$f8f8], sp
    ld b, b
    ld [$f6f0], sp
    ld b, b
    nop
    add sp, -$0c
    ld b, c
    ld hl, sp-$10
    cp $60
    ld hl, sp+$08
    cp $60
    ld hl, sp-$08
    db $fc
    ld h, b
    ld hl, sp+$00
    ld a, [$f060]
    add sp, -$12
    nop
    add sp, -$10
    ldh a, [rP1]
    add sp, -$08
    ld a, [c]
    nop
    add sp, $00
    ld a, [c]
    jr nz, @-$16

    ld [$20f0], sp
    ldh a, [rNR10]
    xor $20
    nop
    add sp, -$12
    ld b, b
    ld [$f0f0], sp
    ld b, b
    ld [$f2f8], sp
    ld b, b
    ld [$f200], sp
    ld h, b
    ld [$f008], sp
    ld h, b
    nop
    db $10
    xor $61
    ld hl, sp-$10
    cp $60
    ld hl, sp+$08
    cp $60
    ld hl, sp-$08
    db $fc
    ld h, b
    ld hl, sp+$00
    ld a, [$f060]
    add sp, -$0c
    nop
    add sp, -$10
    or $00
    add sp, -$08
    ld hl, sp+$00
    add sp, $00
    ld hl, sp+$20
    add sp, $08
    or $20
    ldh a, [rNR10]
    db $f4
    jr nz, jr_00b_6612

jr_00b_6612:
    add sp, -$0c
    ld b, b
    ld [$f6f0], sp
    ld b, b
    ld [$f8f8], sp
    ld b, b
    ld [$f800], sp
    ld h, b
    ld [$f608], sp
    ld h, b
    nop
    db $10
    db $f4
    ld h, c
    ld hl, sp+$08
    cp $00
    ld hl, sp+$00
    cp $00
    ld hl, sp-$08
    db $fc
    nop
    ld hl, sp-$10
    ld a, [$f000]
    add sp, -$12
    nop
    add sp, -$10
    ldh a, [rP1]
    add sp, -$08
    ld a, [c]
    nop
    add sp, $00
    ld a, [c]
    jr nz, @-$16

    ld [$20f0], sp
    ldh a, [rNR10]
    xor $20
    nop
    add sp, -$12
    ld b, b
    ld [$f0f0], sp
    ld b, b
    ld [$f2f8], sp
    ld b, b
    ld [$f200], sp
    ld h, b
    ld [$f008], sp
    ld h, b
    nop
    db $10
    xor $61
    ld hl, sp+$08
    cp $00
    ld hl, sp+$00
    cp $00
    ld hl, sp-$08
    db $fc
    nop
    ld hl, sp-$10
    ld a, [$f000]
    add sp, -$0c
    nop
    add sp, -$10
    or $00
    add sp, -$08
    ld hl, sp+$00
    add sp, $00
    ld hl, sp+$20
    add sp, $08
    or $20
    ldh a, [rNR10]
    db $f4
    jr nz, jr_00b_6692

jr_00b_6692:
    add sp, -$0c
    ld b, b
    ld [$f6f0], sp
    ld b, b
    ld [$f8f8], sp
    ld b, b
    ld [$f800], sp
    ld h, b
    ld [$f608], sp
    ld h, b
    nop
    db $10
    db $f4
    ld h, c
    ld hl, sp-$10
    cp $20
    ld hl, sp-$08
    cp $20
    ld hl, sp+$00
    db $fc
    jr nz, @-$06

    ld [$20fa], sp
    ldh a, [rNR10]
    xor $20
    add sp, $08
    ldh a, [rNR41]
    add sp, $00
    ld a, [c]
    jr nz, @-$16

    ld hl, sp-$0e
    nop
    add sp, -$10
    ldh a, [rP1]
    ldh a, [$e8]
    xor $00
    nop
    db $10
    xor $60
    ld [$f008], sp
    ld h, b
    ld [$f200], sp
    ld h, b
    ld [$f2f8], sp
    ld b, b
    ld [$f0f0], sp
    ld b, b
    nop

jr_00b_66e6:
    add sp, -$12
    ld b, c
    ld hl, sp-$10
    cp $20
    ld hl, sp-$08
    cp $20
    ld hl, sp+$00
    db $fc
    jr nz, @-$06

    ld [$20fa], sp
    ldh a, [rNR10]
    db $f4
    jr nz, jr_00b_66e6

    ld [$20f6], sp
    add sp, $00
    ld hl, sp+$20
    add sp, -$08
    ld hl, sp+$00
    add sp, -$10
    or $00
    ldh a, [$e8]
    db $f4
    nop
    nop
    db $10
    db $f4
    ld h, b
    ld [$f608], sp
    ld h, b
    ld [$f800], sp
    ld h, b
    ld [$f8f8], sp
    ld b, b
    ld [$f6f0], sp
    ld b, b
    nop
    add sp, -$0c
    ld b, c
    ld hl, sp-$08
    ld a, [$f800]
    nop
    db $fc
    nop
    nop
    db $ec
    ld c, [hl]
    nop
    nop
    db $f4
    ld c, [hl]
    ld h, b
    ldh a, [rDIV]
    ld c, [hl]
    nop
    ldh a, [$0c]
    ld c, [hl]
    ld h, c
    ld hl, sp+$00
    db $fc
    nop
    ld hl, sp-$08
    ld a, [$f800]
    ld c, $5e
    ld h, b
    ld hl, sp+$06
    ld e, [hl]
    nop
    ld hl, sp-$10
    ld e, [hl]
    ld h, b
    ld hl, sp-$18
    ld e, [hl]
    ld bc, $00f8
    db $fc
    nop
    ld hl, sp-$08
    ld a, [$0000]
    inc c
    ld c, [hl]
    ld h, b
    nop
    inc b
    ld c, [hl]
    nop
    ldh a, [$f4]
    ld c, [hl]
    ld h, b
    ldh a, [$ec]
    ld c, [hl]
    ld bc, $00f8
    db $fc
    nop
    ld hl, sp-$08
    ld a, [$0400]
    ld [$605e], sp
    inc b
    nop
    ld e, [hl]
    nop
    db $ec
    ld hl, sp+$5e
    ld h, b
    db $ec
    ldh a, [$5e]
    ld bc, $00f8
    db $fc
    nop
    ld hl, sp-$08
    ld a, [$0600]
    nop
    ld c, [hl]
    ld h, b
    ld b, $f8
    ld c, [hl]
    nop
    ld [$4e00], a
    ld h, b
    ld [$4ef8], a
    ld bc, $f8f8
    ld a, [$f800]
    nop
    db $fc
    nop
    inc b
    ldh a, [$5e]
    nop
    inc b
    ld hl, sp+$5e
    ld h, b
    db $ec
    nop
    ld e, [hl]
    nop
    db $ec
    ld [$615e], sp
    db $eb
    db $fc
    db $ec
    nop
    dec b
    db $fc
    db $ec
    nop
    ld hl, sp+$09
    db $ec
    nop
    ld hl, sp-$11
    db $ec
    nop
    ld hl, sp+$00
    db $fc
    nop
    ld hl, sp-$08
    ld a, [$0401]
    or $ec
    nop
    db $ec
    ld bc, $00ec
    cp $07
    db $ec
    nop
    ld a, [c]
    ldh a, [$ec]
    nop
    ld hl, sp+$00
    db $fc
    nop
    ld hl, sp-$08
    ld a, [$ef01]
    dec b
    db $ec
    nop
    ld bc, $ecf2
    nop
    ld bc, $ec05
    nop
    rst $28
    ld a, [c]
    db $ec
    nop
    ld hl, sp+$00
    db $fc
    nop
    ld hl, sp-$08
    ld a, [$f401]
    ld [$00ec], sp
    db $fd
    rst $28
    db $ec
    nop
    dec b
    nop
    db $ec
    nop
    db $ec
    rst $30
    db $ec
    nop
    ld hl, sp+$00
    db $fc
    nop
    ld hl, sp-$08
    ld a, [$eb01]
    db $fc
    db $ec
    nop
    dec b
    db $fc
    db $ec
    nop
    ld hl, sp-$11
    db $ec
    nop
    ld hl, sp+$09
    db $ec
    nop
    ld hl, sp-$08
    db $fc
    jr nz, @-$06

    nop
    ld a, [$f421]
    rst $28
    db $ec
    nop
    db $fd
    add hl, bc
    db $ec
    nop
    dec b
    ld hl, sp-$14
    nop
    db $ec

jr_00b_683e:
    ld bc, $00ec
    ld hl, sp-$08
    db $fc
    jr nz, jr_00b_683e

    nop
    ld a, [$ef21]
    di
    db $ec
    nop
    ld bc, $ec06
    nop
    ld bc, $ecf3
    nop
    rst $28

jr_00b_6856:
    ld b, $ec
    nop
    ld hl, sp-$08
    db $fc
    jr nz, jr_00b_6856

    nop
    ld a, [$0421]
    ld [bc], a
    db $ec
    nop
    db $ec
    rst $30
    db $ec
    nop
    cp $f1
    db $ec
    nop
    ld a, [c]

jr_00b_686e:
    ld [$00ec], sp
    ld hl, sp-$08
    db $fc
    jr nz, jr_00b_686e

    nop
    ld a, [$f821]
    nop
    db $fc
    nop
    ld hl, sp-$08
    ld a, [$f801]
    ld hl, sp-$04
    jr nz, @-$06

    nop
    ld a, [$f821]
    nop
    db $fc
    ld b, b
    ld hl, sp-$08
    ld a, [$f841]
    ld hl, sp-$04
    ld h, b
    ld hl, sp+$00
    ld a, [$fd61]
    db $fd
    add [hl]
    ld bc, $fbfd
    add [hl]
    ld hl, $fbf3
    add [hl]
    ld h, c
    di
    db $fd
    add [hl]
    ld b, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    ld [$0040], sp
    nop
    ld d, b
    and h
    nop
    nop
    dec d
    ld c, c
    nop
    nop
    dec b
    ld [hl], $00
    nop
    ld d, b
    adc a
    nop
    nop
    ld l, e
    inc c
    nop
    nop
    ldh a, [rKEY1]
    nop
    nop
    stop
