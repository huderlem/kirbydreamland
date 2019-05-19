SECTION "ROM Bank $003", ROMX[$4000], BANK[$3]

    inc hl
    nop
    ld bc, $b0aa
    dec l
    nop
    dec hl
    cp $22
    nop
    ld [bc], a
    xor e
    xor l
    or c
    sbc h
    nop
    ld b, $02
    xor h
    xor [hl]
    or d
    daa
    nop
    ld bc, $6b5b
    sub d
    nop
    db $10
    dec c
    db $20, $af
    or e
    ld d, b
    ld h, b
    ld [hl], b
    inc c
    inc e
    inc l
    inc a
    ld c, h
    ld e, h
    ld l, h
    ld a, h
    adc a
    nop
    ld de, $0112
    ld de, $3121
    ld b, c
    ld d, c
    ld h, c
    ld [hl], c
    dec c
    dec e
    dec l
    dec a
    ld c, l
    ld e, l
    ld l, l
    ld a, l
    nop
    nop
    nop
    call z, $1700
    rrca
    ld [bc], a
    ld [de], a
    ld [hl+], a
    ld [hl-], a
    ld b, d
    ld d, d
    ld h, d
    ld [hl], d
    ld c, $1e
    ld l, $3e
    ld c, [hl]
    ld e, [hl]
    ld l, [hl]
    ld a, [hl]
    adc d
    nop
    sub c
    nop
    ld d, a
    inc hl
    nop
    rrca
    inc bc
    inc de
    inc hl
    inc sp
    ld b, e
    ld d, e
    ld h, e
    ld [hl], e
    rrca
    rra
    cpl
    ccf
    ld c, a
    ld e, a
    ld l, a
    ld a, a
    add a
    nop
    sub c
    ld h, d
    ld h, l
    ld c, $00
    jr nz, jr_003_40d7

    ld l, [hl]
    nop
    nop
    inc d
    inc h
    inc [hl]
    ld b, h
    ld d, h
    ld h, h
    ld [hl], h
    db $10
    ld b, b
    ld h, d
    inc b
    ld [bc], a
    ld l, c
    or [hl]
    ld e, d
    add a
    nop
    sub c
    ld d, $e4
    ld a, c
    ld a, [c]
    ldh a, [$e0]
    ld h, b
    ld [hl], b
    nop
    nop
    dec d
    dec h
    dec [hl]
    ld b, l
    ld d, l
    ld h, l
    ld [hl], l
    add b
    or l
    ld l, d
    ld a, d
    dec hl
    dec sp
    ld c, e
    ret


    nop
    sbc e
    add hl, de
    ld [de], a
    ld sp, $5176
    ld h, c
    ld [hl], c
    nop
    nop
    ld d, $26
    ld [hl], $46
    ld d, [hl]
    ld h, [hl]
    db $76
    add c
    and h
    add h
    adc b
    adc h
    adc a
    sub d
    sub [hl]
    and a
    sbc l
    xor b
    add h
    nop
    inc e
    add [hl]
    nop
    and d
    ld [de], a
    and c
    rlca
    rla
    daa
    scf
    ld b, a
    ld d, a
    ld h, a
    ld [hl], a
    add d
    and l
    add l

jr_003_40d7:
    adc c
    adc l
    sub b
    sub e
    sub a
    sbc d
    sbc [hl]
    add l
    nop
    sub e
    add [hl]
    nop
    jp nz, $b412

    ld [$2818], sp
    jr c, @+$4a

    ld e, b
    ld l, b
    ld a, b
    add e
    and [hl]
    add [hl]
    adc d
    adc [hl]
    sub c
    sub h
    sbc b
    sbc e
    sbc a
    add h
    nop
    sub e
    add a
    nop
    pop hl
    ld b, $00
    add hl, bc
    add hl, de
    add hl, hl
    add hl, sp
    ld c, c
    ld e, c
    inc hl
    nop
    rlca
    add a
    adc e
    nop
    xor c
    sub l
    sbc c
    sbc h
    and b
    add l
    nop
    sub e
    add h
    ld bc, $0702
    nop
    ld l, b
    nop
    ld a, [bc]
    ld a, [de]
    ld a, [hl+]
    ld a, [hl-]
    nop
    sub c
    nop
    ld b, $04
    nop
    nop
    ld h, $36
    ld b, [hl]
    inc hl
    nop
    inc bc
    dec bc
    dec de
    nop
    nop
    sub h
    ld bc, $02a5
    nop
    scf
    ld [hl], a
    add hl, hl
    nop
    inc b
    rst $30
    push af
    or $f6
    ld a, [$018e]
    call z, $0001
    ld a, b
    ld [hl+], a
    nop
    inc de
    rst $20
    ldh [$eb], a
    nop
    db $eb
    ldh [$e1], a
    xor $f0
    ldh [$f2], a
    xor $f0
    db $f4
    ld sp, hl
    add sp, -$13
    ld [c], a
    ld hl, sp-$49
    add h
    nop
    inc e
    ld b, c
    ld a, l
    ld a, [hl]
    jr z, jr_003_4164

jr_003_4164:
    rlca
    db $ed
    add sp, -$13
    ld a, [c]
    db $e4
    db $ed
    db $e3
    xor $8a
    ld bc, $41ae
    ld a, a
    dec bc
    ld [bc], a
    ld a, [hl]
    ld a, [hl]
    nop
    scf
    cp $00
    nop
    ld h, $10
    sbc b
    ld [bc], a
    ld b, b
    ld h, $11
    sbc b
    ld [bc], a
    ld b, b
    add [hl]
    ld bc, $98e1
    ld [bc], a
    ld b, b
    add [hl]
    ld [bc], a
    nop
    scf
    cp $07
    db $eb
    add sp, -$1e
    db $e4
    db $ed
    pop af
    db $e4
    db $e3
    sbc [hl]
    ld [bc], a
    add b
    nop
    nop
    db $e4
    cp a
    cp $e4
    ld d, e
    nop
    sub c
    ld [bc], a
    adc h
    add hl, bc
    and $e0
    db $ec
    db $e4
    nop
    pop af
    ld a, [c]
    ldh [$f0], a
    ld a, [c]
    push de
    inc b
    inc hl
    add hl, bc
    pop af
    xor $f3
    db $ed
    db $e3
    nop
    ld a, [c]
    db $e4
    pop af
    ld a, [c]
    ld hl, sp+$23
    inc b
    inc hl
    dec hl
    cp $ff
    dec b
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
    call nz, $0a00
    inc bc
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    inc hl
    ld h, e
    nop

jr_003_41dd:
    ld a, [hl]
    ret z

    nop
    jr @+$03

    ld a, $3e
    inc hl
    ld h, e
    nop
    ld h, b
    adc $00
    jr z, jr_003_41ec

jr_003_41ec:
    ld h, e
    ret z

    nop
    jr c, jr_003_41f2

    ld a, a

jr_003_41f2:
    ld a, a
    inc hl
    ld h, b
    nop
    ld a, h
    add $00
    ld c, b
    adc l
    nop
    ld b, b
    ld bc, $6060
    add l
    nop
    jr nz, jr_003_4207

    ld h, b
    ld h, b
    ld l, a

jr_003_4207:
    ld l, a
    add a
    nop
    ld a, [hl+]
    ld bc, $6363
    adc c
    nop
    ld b, $83
    nop
    ld c, $01
    inc a
    inc a
    add hl, hl
    jr jr_003_41dd

    nop
    add e
    ld bc, $0f0f
    dec h
    ld b, $23
    ld h, [hl]
    push bc
    nop
    add e
    inc b
    ld h, a
    ld h, a
    ld l, h
    ld l, h
    ld a, b
    ret z

    nop
    xor b
    dec hl
    ld h, b
    add e
    nop
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
    nop
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
    rlc b
    ld [hl], l
    ld bc, $6363
    adc a
    nop
    ld a, [hl+]
    ld bc, $7e7e
    adc c
    nop
    ld e, h
    push bc
    nop
    ld l, l
    inc bc
    ld h, [hl]
    ld h, [hl]
    dec sp
    dec sp
    adc c
    nop
    db $10
    inc bc
    ld l, h
    ld l, h
    ld h, [hl]
    ld h, [hl]
    add a
    nop
    sbc $05
    ld h, b
    ld h, b
    ld a, $3e
    inc bc
    inc bc
    add a
    nop
    inc l
    dec hl
    jr jr_003_427d

    nop
    nop
    ld h, e

jr_003_427d:
    ld h, e
    pop de
    nop
    db $ed
    inc hl
    ld h, e
    dec b
    ld [hl], $36
    inc e
    inc e
    ld [$8508], sp
    nop
    ld [hl], b

jr_003_428d:
    dec h
    ld l, e
    inc bc
    ld a, a
    ld a, a
    ld [hl], $36
    add l
    nop
    ret nz

    ld [bc], a
    ld a, $3e
    inc e
    ret z

    ld bc, $2578
    ld h, [hl]
    add a
    nop
    add d
    add e
    nop
    ld b, b
    add hl, bc
    rlca
    rlca
    ld c, $0e
    inc e
    inc e
    jr c, jr_003_42e7

    ld [hl], b
    ld [hl], b
    add l
    nop
    ld b, d
    inc bc
    jr nz, jr_003_42d7

    ld b, b
    ld b, b
    inc sp
    nop
    ld bc, $6060
    call $bd01
    add e
    ld bc, $e4a4
    cpl
    nop
    rst $38
    inc sp
    jr c, jr_003_42f0

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

jr_003_42d7:
    add hl, sp
    ldh a, [$3f]
    nop
    nop
    dec h
    jr c, jr_003_42e2

    ld [hl-], a
    ld [hl], $36

jr_003_42e2:
    inc sp
    sbc e
    nop
    ld a, [bc]
    inc bc

jr_003_42e7:
    inc [hl]
    scf
    scf
    dec [hl]
    add a
    nop
    add d
    adc l
    nop

jr_003_42f0:
    ld [de], a
    adc e
    nop
    adc b
    dec b
    ld [hl-], a
    ld [hl], $7f
    ld a, a
    scf
    dec [hl]
    adc l
    nop
    ld [de], a
    ld bc, $3537
    inc hl
    jr c, jr_003_428d

    nop
    and b
    ld bc, $3838
    adc a
    nop
    or d
    sbc l
    nop
    ld [bc], a
    inc b
    ld a, a
    ld a, a
    inc sp
    ld [hl-], a
    ld a, a
    adc e
    ld bc, $0201
    ld [hl-], a
    ld [hl], $36
    adc l
    ld bc, $2214
    ld a, a
    nop
    dec [hl]
    adc d
    nop
    add h
    ld [bc], a
    inc [hl]
    scf
    ld a, a
    adc a
    ld bc, $0034
    dec [hl]
    adc c
    nop
    and e
    inc bc
    ld [hl-], a
    ld [hl], $33
    ld [hl-], a
    sub b
    ld bc, $8a53
    nop
    adc c
    nop
    inc [hl]
    ret nc

    ld bc, $8d63
    ld bc, $0080
    ld [hl-], a
    sub h
    ld bc, $0490
    ld a, a
    inc sp
    ld [hl-], a
    ld [hl], $33
    add h
    nop
    add h
    nop
    ld a, a
    sub l
    ld bc, $c3b0
    ld bc, $01d2
    ld [hl], $36
    ret c

    ld bc, $03e7

jr_003_4362:
    ld a, a
    ld a, a
    ld d, d
    ld d, h
    ld [hl+], a
    ld d, [hl]
    ld bc, $5a58
    sbc b
    ld bc, $01ee
    ld d, e
    ld d, l
    ld [hl+], a
    ld d, a
    ld bc, $5b59
    sub c
    ld bc, $ffee
    inc sp
    jr c, @+$27

    ld a, h
    push bc
    nop
    add hl, de
    sbc a
    nop
    nop
    dec b
    jr c, @+$3a

    ld [hl-], a
    ld [hl], $7f
    inc sp
    sbc e
    nop
    ld b, $05
    inc [hl]
    scf
    ld a, a
    ld a, a
    ld [hl], $33
    sbc e
    nop
    ld [$3403], sp
    scf
    scf
    dec [hl]
    ldh a, [$27]
    nop
    ld [$3203], sp
    ld [hl], $36
    inc sp
    sub h
    nop
    inc d
    ld [bc], a
    ld [hl-], a
    ld [hl], $33
    add h
    nop
    ld b, b
    ld [bc], a
    ld a, a
    scf
    dec [hl]
    sub h
    nop
    inc d
    ld [bc], a
    inc [hl]
    scf
    dec [hl]
    add l
    nop
    add d
    ld hl, sp+$41
    nop
    ld b, c
    dec hl
    ld a, h
    ld [bc], a
    ld [hl], $36
    inc sp
    adc d
    nop
    xor c
    sub c
    nop
    ld c, $05
    ld a, a
    ld a, a
    dec [hl]
    jr c, jr_003_440c

    jr c, jr_003_4362

    nop
    add b
    nop
    ld [hl-], a
    adc l
    ld bc, $0154
    ld [hl], $36
    adc [hl]
    nop
    ld b, l
    nop
    inc [hl]
    adc l
    ld bc, $0154
    ld a, a
    ld a, a
    adc h
    nop
    ld b, h
    ld [bc], a
    ld [hl-], a
    ld [hl], $33
    sub b
    ld bc, $8b94
    nop
    ld h, l
    nop
    inc [hl]
    call Call_003_6101
    ld bc, $3537
    add e
    nop
    ld h, d
    adc d
    nop
    add [hl]
    ld [bc], a
    ld [hl-], a
    ld a, a
    ld a, a
    sbc c
    nop

jr_003_440c:
    inc d
    inc bc
    ld [hl-], a
    ld [hl], $36
    ld a, a
    sbc e
    ld bc, $00f2
    inc [hl]
    ld [hl+], a
    scf
    adc l
    ld bc, $ffd2
    dec h
    jr c, jr_003_4423

    ld [hl-], a
    ld [hl], $36

jr_003_4423:
    inc sp
    add hl, hl
    jr c, jr_003_4452

    ld a, h
    dec h
    jr c, jr_003_442e

    inc [hl]
    scf
    scf

jr_003_442e:
    dec [hl]
    sub l
    nop
    ld a, [bc]
    nop
    inc sp
    jr z, jr_003_446e

    sub l
    nop
    ld a, [bc]
    ld [bc], a
    ld a, a
    ld [hl], $33
    sbc l
    nop
    ld b, e
    ld bc, $7f7f
    add h
    nop
    rlca
    adc c

jr_003_4447:
    nop

jr_003_4448:
    nop
    sub b
    nop
    ld [hl], d
    ld [hl+], a
    ld a, a
    ld bc, $3833
    adc d

jr_003_4452:
    nop
    jr nz, jr_003_4455

jr_003_4455:
    ld [hl-], a
    sub b
    nop
    sub h
    adc e
    nop
    jr z, jr_003_445f

    jr c, @+$34

jr_003_445f:
    ld a, a
    adc a
    nop
    sub h
    ld bc, $3835
    adc e
    nop
    rst $00
    nop
    ld a, a
    sub b
    nop
    db $d3

jr_003_446e:
    nop
    inc sp
    adc e
    nop
    and $00
    ld a, a
    sub c
    nop
    ld a, [c]
    ld bc, $337f
    add l
    nop
    dec b
    inc b
    ld [hl-], a
    ld [hl], $36
    ld [hl], $7f
    sub e
    ld bc, $2411
    ld a, a
    push bc
    ld bc, $8949
    ld bc, $cf30
    ld bc, $f859
    dec [hl]
    ld bc, $2969
    ld h, [hl]
    db $dd
    ld bc, $03a9
    adc $cd
    call $87cf
    ld bc, $9f4c
    ld bc, $2bb4
    ld a, h
    inc bc
    call c, $dad2
    call nc, $0283
    nop
    add a
    ld [bc], a
    nop
    add e
    ld [bc], a
    nop
    dec hl
    ld a, h
    inc bc
    db $dd
    db $d3
    db $db
    push de
    add e
    ld [bc], a
    jr nz, jr_003_4448

    ld [bc], a
    jr nz, jr_003_4447

    ld [bc], a
    jr nz, jr_003_44f2

    ld a, h
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
    ld [bc], a
    ld a, a
    ld a, a
    sbc b
    dec l
    sub a
    nop
    sbc c
    adc a
    nop
    ld [de], a
    nop
    sub [hl]
    ld h, $7f

jr_003_44e2:
    rst $10

jr_003_44e3:
    nop
    ld l, c
    inc c
    sub [hl]
    ld a, a
    ld a, a
    ld a, [c]
    xor $f4
    db $ed
    db $e3
    ld a, a
    di
    db $e4
    ld a, [c]

jr_003_44f2:
    di
    ld hl, sp+$32
    nop
    add h
    ldh a, [rNR43]
    nop
    ld h, d
    add hl, bc
    ld a, a
    rst $00
    db $ec
    db $f4
    ld a, [c]
    add sp, -$1e
    ld a, a
    ld [hl], d
    ld [hl], d
    ldh a, [$37]
    nop
    xor a
    add h
    nop
    add l
    ld [bc], a
    ld a, a
    ld [hl], d
    ld [hl], d
    ldh a, [rRP]
    nop
    adc a
    ld h, $7f
    inc bc
    add b
    add h
    adc b
    adc h
    sbc e
    nop
    sub c
    inc bc
    add c
    add l
    adc c
    adc l
    sub b
    nop
    ld [hl], c
    nop
    sbc d
    add hl, hl
    sub a
    inc b
    add d
    add [hl]
    adc d
    adc [hl]
    sbc e
    sbc d
    nop
    ld [de], a
    inc b
    add e
    add a
    adc e
    adc a
    ld a, a
    ld hl, sp+$41
    nop
    ld b, c
    dec hl
    ld a, h
    rst $38
    inc bc
    xor h
    and b
    and e
    and a
    add e
    nop
    nop
    add a
    nop
    nop
    add e
    nop
    nop
    add hl, hl
    cp $05
    ld a, h
    ld a, h
    xor l
    and c
    and h
    xor b
    add e
    nop
    jr nz, jr_003_44e3

    nop
    jr nz, jr_003_44e2

    nop
    jr nz, jr_003_458d

    cp $03
    xor [hl]
    or c
    and l
    xor c
    add e
    nop
    ld b, b
    add a
    nop
    ld b, b
    add e
    nop
    ld b, b
    add e
    nop
    ld a, $01
    ld a, a
    xor c
    add e
    nop
    ld d, [hl]
    dec b
    cp $fe
    xor a
    or d
    or h
    xor d
    add e
    nop
    ld h, b
    add a
    nop
    ld h, b
    add e
    nop
    ld h, b
    add e
    nop
    ld e, [hl]

jr_003_458d:
    ld bc, $aa7f
    add e
    nop
    db $76
    dec de
    cp $fe
    or b
    ld [c], a
    xor $ed
    push hl
    add sp, -$1a
    db $f4
    pop af
    ldh [$f3], a
    add sp, -$12
    db $ed
    and [hl]
    db $ec
    xor $e3
    db $e4
    xor e
    cp $fe
    or b
    and d
    and [hl]
    xor e
    add e
    nop
    sub [hl]
    ld bc, $fefe
    sub d
    nop
    ld bc, $ac00
    adc c
    nop
    sbc [hl]
    ld bc, $fefe
    sub d
    nop
    ld hl, $ad00
    adc c
    nop
    cp [hl]
    ld bc, $fefe
    add e
    nop
    ld b, c
    ld b, $c6
    push af
    add sp, -$0d
    ldh [$eb], a
    jp $c225


    inc b
    and l
    xor c
    xor [hl]
    cp $fe
    add a
    nop
    ld b, c
    ld bc, $fefe
    sub d
    nop
    ld h, c
    ld [bc], a
    xor a
    rst $30
    cp $86
    nop
    ld [hl], a
    ld [bc], a
    xor a
    cp $fe
    add e
    nop
    sub a
    ld b, $c7
    ld [$f1e8], a
    pop hl
    ld hl, sp-$3d
    add a
    nop

Jump_003_4600:
    sub [hl]

Jump_003_4601:
    ld [bc], a
    or b
    cp $fe
    adc c
    ld bc, $922c
    nop
    and c
    nop
    and b
    adc c
    ld bc, $013e
    cp $fe
    add e
    nop
    ld [hl+], a
    ld a, [bc]
    rst $00
    ld a, [c]
    xor $f4
    db $ed
    db $e3
    xor l
    di
    db $e4
    ld a, [c]
    di
    add h
    nop
    ld hl, $f701
    cp $87
    nop
    ld [hl+], a
    ld bc, $fefe
    sub c
    nop
    ld b, d
    ld bc, $b1ae
    dec hl
    cp $92
    ld bc, $0001
    or d
    dec hl
    cp $83
    nop
    sbc b
    dec b
    rst $00
    db $e4
    rst $30
    add sp, -$0d
    xor e
    adc b
    ld bc, $002b
    and d
    dec hl
    cp $92
    ld bc, $0041
    and e
    rlc b
    ccf
    nop
    xor b
    sub d
    nop
    jr nz, jr_003_4687

    cp $92
    ld bc, $0081
    and l
    dec hl
    cp $ff
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
    inc h
    ld a, a
    add hl, bc
    and $e0

jr_003_4687:
    db $ec
    db $e4
    ld a, a
    ld a, a
    xor $f5
    db $e4
    pop af
    ldh a, [$88]
    nop
    rrca
    daa
    ld a, a
    add l
    ld bc, $cf40
    ld bc, $c965
    ld bc, $8575
    ld bc, $cf40
    ld bc, $c985
    ld bc, $8595
    ld bc, $cf40
    ld bc, $c9a5
    ld bc, $f0b5
    ld a, a
    ld bc, $ff40
    inc sp
    ld a, a
    dec hl
    cp $9f
    nop
    nop
    ldh a, [$3f]
    nop
    nop
    ld h, $7f
    rlca
    ld [c], a
    xor $ed
    ld a, [c]
    add sp, -$13
    di
    db $e4
    ldh a, [$37]
    nop
    rrca
    ld [bc], a
    db $e4
    db $ed
    db $e3
    ldh a, [$7c]
    nop
    ld a, [bc]
    ldh a, [$7f]
    nop
    rlca
    ldh a, [$78]
    nop
    rlca
    rst $38
    inc hl
    ld a, a
    inc hl
    ld a, [hl]
    inc hl
    ld a, l
    inc hl
    ld a, h
    add hl, bc
    ld a, a
    ld a, a
    ld a, [hl+]
    ld a, a
    add hl, hl
    ld a, a
    jr z, @+$81

    dec h
    inc h
    inc hl
    ld a, a
    ld bc, $2726
    ld [hl+], a
    ld a, a
    inc b
    dec hl
    dec l
    ld a, a
    ld a, a
    inc l
    ld b, c
    ld l, $7f
    ld b, c
    ld a, a
    cpl
    ld b, c
    cpl
    ld a, a
    ld de, $122f
    cpl
    inc d
    ld a, a
    ld a, a
    db $10
    ld [de], a
    ld a, a
    ld b, [hl]
    db $10
    ld [de], a
    jr c, jr_003_474f

    ld a, a
    ld a, a
    ld a, $3f
    ld [hl+], a
    ld a, a
    ld c, $39
    dec sp
    ld a, [hl-]
    ld b, b
    ld a, a
    ld b, c
    ld b, d
    inc a
    ld a, a
    dec a
    ld a, a
    ld a, a
    ld b, e
    ld a, a
    ld b, h
    ld b, d
    dec a
    ld a, a
    ld bc, $7f45
    ld b, d
    ld a, a
    ld b, h
    ld bc, $467f
    ld h, e
    inc sp
    ld b, c
    dec [hl]

jr_003_473e:
    ld [hl], $01
    ld a, a
    inc sp
    ld b, d
    ld a, a
    dec [hl]
    nop
    inc [hl]
    ld b, d
    ld a, a
    ld [hl], $01
    ld a, a
    db $10
    ld h, d
    ld [de], a

jr_003_474f:
    inc bc
    ld de, $1311
    inc d
    ld h, e
    ld de, $1004
    ld de, $1413
    ld a, [hl]
    ld b, c
    ld a, [hl]
    rla
    nop
    dec de
    ld b, c
    dec de
    inc e
    rrca
    inc e
    rla
    ld a, [hl]
    dec de
    ld a, [hl]
    ld a, [hl]
    ld a, a
    ld d, b
    ld a, a
    ld a, a
    jr nz, jr_003_47c1

    jr nz, jr_003_4793

    ld d, c
    ld d, c
    ld b, d
    ld hl, $2320
    jr nz, jr_003_473e

    nop
    xor c
    dec b
    ld a, a
    ld a, a
    ld b, a
    ld b, a
    ld a, a
    jr nc, jr_003_47a7

    ld a, a
    ld [$7f00], sp
    inc b
    ld [bc], a
    ld a, a
    rlca
    ld a, a
    inc b
    rlca
    add e
    nop
    cp [hl]

jr_003_4793:
    inc bc
    nop
    ld a, [hl]
    inc b
    ld a, [hl]
    add e
    nop
    jp nz, Jump_003_7e08

    ld [bc], a
    ld a, [hl]
    rlca
    rlca
    ld a, a
    ld a, [hl]
    ld a, [hl]
    rlca
    ld b, c
    inc b

jr_003_47a7:
    ld a, a
    ld [bc], a
    ld a, a
    dec b
    ld [$00c3], sp
    add hl, bc
    inc de
    dec b
    ld [$7e05], sp
    ld a, l
    dec b
    ld a, [hl]
    ld [$7d08], sp
    ld a, [hl]
    ld a, [hl]
    ld [$0805], sp
    ld a, [bc]
    ld a, l

jr_003_47c1:
    ld a, l
    ld a, [bc]
    dec b
    ld [hl+], a
    ld a, l
    ld [$7d01], sp
    dec b
    inc bc
    ld a, l
    ld [$067d], sp
    add hl, bc
    ld [hl+], a
    ld a, a
    dec b
    ld b, $7f
    ld a, a
    ld b, $7d
    ld a, a
    add h
    ld bc, $0f08
    ld a, l
    add hl, bc
    add hl, bc
    ld a, a
    ld a, l
    ld a, l
    add hl, bc
    ld b, $0b
    ld b, $7f
    ld a, a
    add hl, bc
    dec bc
    ld a, a
    ld a, a
    ld [hl+], a
    ld a, l
    nop
    add hl, bc
    ld b, c
    ld a, l
    ld a, a
    ld bc, $7d06
    add e
    ld bc, $0927
    ld b, $7d
    inc b
    ld [$7d2f], sp
    cpl
    add hl, bc
    cpl
    ld a, a
    ld b, c
    ld a, a
    ld a, l
    nop
    ld c, c
    ld [hl+], a
    ld a, a
    inc bc
    ld e, $1d
    rra
    rra
    ld b, c
    cpl
    ld a, l
    nop
    inc a
    add e
    nop
    ld e, l
    inc b
    ld b, e
    ld a, a
    ld b, [hl]
    ld [hl+], a
    inc hl
    inc hl
    ld a, a
    dec c
    nop
    ld [bc], a
    ld [$0305], sp
    ld bc, $7d03
    ld a, [hl]
    inc bc
    ld a, l
    ld bc, $7e01
    ld b, c
    ld l, $2f
    ld b, c
    ld d, a
    ld d, [hl]
    dec c
    ld h, b
    ld a, a
    ld h, c
    ld h, d
    ld a, h
    ld a, h
    ld h, e
    ld h, h
    ld a, a
    ld a, a
    ld h, l
    ld h, [hl]
    ld c, e
    ld c, h
    ld b, d
    ld c, b
    ld c, l
    rlca
    ld e, b
    ld e, c
    ld a, h
    ld a, h
    ld e, b
    ld e, c
    ld d, a
    ld d, [hl]
    ld b, c
    ld c, [hl]
    ld c, b
    dec b
    ld c, b
    ld c, b
    dec d
    ld d, $4b
    ld c, e
    ld h, d
    dec d
    ld [bc], a
    add hl, de
    jr @+$1c

    add e
    ld bc, $0b9a
    ld c, b
    ld c, a
    ld c, a
    ld d, l
    ld c, b
    ld c, b
    ld c, a
    ld c, a
    ld c, e
    ld c, h
    ld c, b
    ld c, c
    inc hl
    ld c, b
    inc b
    ld d, h
    ld c, $0d
    rrca
    inc c
    add e
    ld bc, $1ab5
    ld d, d
    dec c
    ld d, d
    ld d, e
    ld c, $53
    rrca
    ld c, a
    ld c, a
    dec c
    ld d, d
    ld c, b
    ld c, a
    ld c, a
    rrca
    ld e, d
    ld e, d
    ld e, e
    ld e, e
    ld e, h
    ld e, d
    ld e, l
    ld e, e
    ld e, d
    ld e, [hl]
    ld e, e
    ld e, a
    inc h
    ld a, [hl]
    ld bc, $0707
    ld b, c
    ld a, a
    ld l, $08
    ld a, a
    ld sp, $2e32
    ld a, a
    ld c, d
    ld c, e
    ld c, [hl]
    ld c, b
    add e
    ld bc, $0380
    ld c, e
    ld c, e
    ld c, b
    ld c, b
    add e
    nop
    ret c

    ld b, c
    ld c, b
    ld c, l
    ld b, c
    ld l, $2f
    ld b, c
    dec [hl]
    ld [hl], $03
    add b
    sub b
    add c
    sub c
    add e
    ld [bc], a
    inc b
    add e
    ld bc, $e5e4
    rst $28
    ld a, a
    db $e4
    ld h, c
    nop
    ld bc, $0101
    inc a
    ld [bc], a
    ld [bc], a
    inc b
    dec b
    ld bc, $23ff
    ld a, a
    inc hl
    ld a, [hl]
    inc hl
    ld a, l
    inc hl
    ld a, h
    inc bc
    ld a, a
    ld a, a
    add e
    ld a, a
    inc hl
    inc a
    rrca
    ld b, b
    ld d, b
    ld b, c
    ld d, c
    ld c, e
    ld d, b
    ld c, e
    ld d, c
    ld b, b
    ld e, e
    ld b, c
    ld e, e
    ld e, a
    dec l
    ld e, $2e
    inc hl
    ld h, b
    ld [$7f7f], sp
    ld c, c
    ld e, c
    ld e, a
    ld e, l
    ld a, a
    ld a, a
    ld e, a
    ld [hl+], a
    ld a, a
    dec d
    inc l
    dec l
    inc l
    ld l, $2c
    cpl
    inc l
    ld a, a
    ld a, a
    dec l
    ld e, $2e
    dec a
    ld c, l
    ld a, $4e
    rra
    cpl
    ld a, a
    ld a, a
    ccf
    ld c, a
    jp $3800


    dec b
    ld e, [hl]
    ld a, a
    dec c
    ld c, $5e
    rrca
    ld b, c
    inc l
    ld a, a
    ld [hl+], a
    ld a, a
    dec bc
    ld b, h
    ld a, a
    ld b, l
    ld a, [de]
    ld a, [de]
    ld a, a
    ld a, a
    ld a, [de]
    ld a, [de]
    ld a, a
    ld b, l
    ld b, l
    ld b, c
    ld a, a
    ld d, e
    inc c
    ld a, [de]
    ld d, e
    ld b, l
    ld d, e
    ld a, a
    ld d, e
    jr c, jr_003_4999

    ld a, a
    ld h, b
    ld h, b
    ld a, [de]
    ld a, [de]
    ld b, c
    dec h
    dec [hl]
    dec bc
    ld a, a
    ld d, [hl]
    ld a, a
    ld a, a
    ld e, l
    ld e, l
    ld a, a
    ld a, a
    jr z, jr_003_4991

    ld a, [de]
    ld a, [de]
    ld b, c
    ld c, d
    ld e, d
    ld b, c
    ld c, e
    ld e, e
    rla
    inc h
    inc [hl]
    dec h
    dec [hl]
    dec c
    ld c, $7f
    rrca
    ld a, a
    add hl, sp
    daa
    ld a, [hl-]
    jr z, @+$3a

    add hl, hl
    ld a, a
    ld a, [hl+]
    ld a, a
    dec hl
    dec sp
    jr z, jr_003_4986

    dec hl
    ld a, [hl-]
    ld b, c
    ld d, e
    ld a, a
    rlca
    ld b, b
    ld d, b
    ld h, e
    ld h, h
    ld b, [hl]
    ld b, [hl]
    ld h, e
    ld h, h

jr_003_4986:
    inc hl
    ld a, a
    rrca
    ld a, h
    ld a, h
    ld h, l
    ld h, [hl]
    inc l
    ld e, l
    inc l
    ld a, a

jr_003_4991:
    rra
    cpl
    add hl, hl
    ld a, a
    dec c
    dec l
    ld e, $2e

jr_003_4999:
    inc hl
    ld b, [hl]
    ld b, c
    ld d, e
    ld b, [hl]
    rlca
    ld d, $16
    ld b, [hl]
    ld b, [hl]
    inc b
    inc b
    ld d, e
    ld b, [hl]
    jp $d900


    ldh [rNR42], a
    inc b
    inc b
    ld c, e
    ld d, c
    inc b
    inc b
    ld b, c
    ld d, c
    ld d, $16
    ld a, h
    ld a, h
    ld d, $16
    ld c, d
    ld e, d
    ld [$090a], sp
    dec bc
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    ld a, [bc]
    jr jr_003_49d2

    add hl, de
    ld c, h
    ld [hl], $7f
    ld a, a
    inc b
    inc b
    add l
    nop
    or [hl]
    ld [bc], a

jr_003_49d2:
    ld b, $17
    ld b, $c4
    ld bc, $2308
    ld a, a
    adc e
    nop
    ldh a, [rNR22]
    ld [hl+], a
    ld [hl-], a
    inc hl
    inc sp
    dec de
    dec de
    ld c, b
    ld e, b
    ld b, $17
    ld b, a
    ld d, a
    ld hl, $3121
    ld sp, $2021
    ld sp, $3031
    ld hl, $3131
    inc hl
    ld h, $23
    dec de
    ld bc, $0402
    ld b, c
    inc d
    inc a
    inc bc
    inc bc
    dec b
    inc b
    ld [de], a
    ld b, c
    inc a
    dec d
    ld bc, $1305
    inc hl
    ld b, $23
    ld b, [hl]

jr_003_4a0f:
    inc bc
    inc a
    inc a
    ld h, e
    ld h, h
    ld b, c
    ld b, $17
    ld b, c
    rlca
    ld b, $0b
    ld [hl], $36
    ld b, $06
    ld [hl], $36
    ld b, a
    ld d, a
    ld b, $06
    ld b, a
    ld d, a
    ld [hl+], a
    inc a
    ld [bc], a
    nop
    inc a
    ld bc, $3c23
    ld [bc], a
    db $10
    inc a
    ld de, $3c22
    nop
    inc b
    jp $8001


    ld [bc], a
    inc a
    dec b
    dec b
    ld b, c
    inc d
    inc a
    ld b, c
    inc a
    dec d
    ldh [$28], a
    ld c, d
    ld e, d
    ld d, $16
    ld [hl], $5c
    ld b, $17
    ld c, h
    ld [hl], $07
    ld b, $1c
    dec e
    ld d, d
    ld b, e
    inc c
    inc e
    ld b, d
    ld d, d
    inc e
    inc e
    ld d, d
    ld d, d
    rlca
    ld b, $49
    ld d, a
    rlca
    ld b, $7f
    rlca
    ld b, [hl]
    ld b, [hl]
    scf
    ld b, [hl]
    ld c, h
    ld [hl], $7f
    rlca
    ld [hl], $83
    ld bc, $02b5
    ld e, h
    rla
    ld a, a
    add e
    ld bc, $8384
    ld bc, $8380
    nop
    db $ec
    cpl
    ld a, a
    inc bc
    add b
    sub b
    add c
    sub c
    add e
    ld bc, $11dc
    jr z, jr_003_4a0f

    dec hl
    ld a, [hl-]
    ld a, a
    add e
    add e
    ld a, a
    ld a, a
    add e
    scf
    scf
    ld h, d
    ld h, d
    ld a, h
    ld a, h
    ld h, c
    ld h, c
    add e
    ld bc, $23f0
    ld d, h
    ld bc, $5555
    push hl
    rst $38
    ld a, a
    db $e4
    inc [hl]
    nop
    dec hl
    ld bc, $28e4
    ld [bc], a
    dec h
    inc bc
    ld [bc], a
    ld [$0207], sp
    inc hl
    nop
    ld h, d
    inc b
    dec b
    ld b, $06
    nop
    rlca
    nop
    ld [$002f], sp
    rst $38
    inc hl
    ld a, a
    inc hl
    ld a, [hl]
    inc hl
    ld a, l
    inc hl
    ld a, h
    inc e
    nop
    inc bc
    inc bc
    nop
    ld [bc], a
    ld bc, $0201
    nop
    ld [bc], a
    ld bc, $0403
    rlca
    rlca
    inc b
    ld b, $05
    dec b
    ld b, $04
    ld b, $05
    rlca
    nop
    ld b, $01
    inc bc
    inc b
    add e
    nop
    add hl, hl
    inc de
    ld [bc], a
    dec b
    inc bc
    nop
    ld [bc], a
    dec b
    inc bc
    inc b
    ld b, $05
    inc bc
    inc b
    ld [bc], a
    ld bc, $0603
    dec b
    ld a, h
    ld b, $7c
    add e
    nop
    ld b, c
    ld b, $05
    dec b
    ld b, $7c
    ld a, h
    dec b
    ld b, $c3
    nop
    ld b, e
    rla
    add hl, hl
    dec hl
    dec hl
    add hl, hl
    ld a, [hl+]
    inc l
    inc l
    ld a, [hl+]
    dec l
    dec hl
    dec l
    add hl, hl
    add hl, hl
    cpl
    dec hl
    cpl
    add hl, hl
    dec hl
    dec hl
    ld a, [hl+]
    add hl, hl
    dec hl
    inc l
    add hl, hl
    add e
    nop
    ld l, b
    nop
    ld a, [hl+]
    call nz, Call_003_6a00
    dec c
    inc l
    add hl, hl
    ld [$0908], sp
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    ld [hl], $36
    scf
    scf
    ld b, c
    inc e
    dec e
    ld b, c
    ld e, $1f
    ld b, c
    ld a, [hl-]
    dec sp
    rla
    jr c, jr_003_4b83

    add hl, sp
    add hl, sp
    ld a, a
    ld a, a
    ld h, d
    ld h, d
    jr jr_003_4b67

    ld d, $7f
    dec d
    add hl, de
    ld a, a
    rla
    ld c, h
    ld c, h
    ld c, l
    ld c, l
    ld a, a
    ld a, a
    ld sp, $2235
    ld a, a
    ld [bc], a
    ld sp, $7f7f

jr_003_4b67:
    add e
    nop
    and a
    rlca
    inc [hl]
    dec [hl]
    inc sp
    ld a, a
    ld a, [hl]
    inc [hl]
    ccf
    ccf
    inc hl
    ld a, a
    ld bc, $2222
    dec h
    inc hl
    add e
    nop
    ld a, h
    ld bc, $7f7f
    ld h, e
    inc h
    ld [bc], a

jr_003_4b83:
    ld a, a
    ld a, a
    jr z, jr_003_4ba9

    ld a, a
    adc c
    nop
    call z, Call_003_7c0b
    ld a, h
    ld h, e
    ld h, h
    ld a, a
    ld a, a
    ld h, l
    ld h, [hl]
    ld de, $107f
    ld a, a
    jp $eb00


    ld bc, $1213
    inc hl
    ld a, a
    ld b, $12
    inc de
    ld a, a
    ld a, a
    inc c
    ld a, a
    dec c
    dec h

jr_003_4ba9:
    ld a, a
    ld [bc], a
    ld c, $7f
    rrca
    add e
    nop
    ld hl, sp+$02
    db $10
    ld a, a
    ld de, $0083
    ei
    nop
    ld c, $c4
    ld bc, $000d
    rrca
    inc hl
    ld a, a
    add hl, bc
    ld l, $2c
    ld l, $29
    add hl, hl
    dec hl
    ld h, l
    ld h, [hl]
    ld a, a
    ld a, a
    add e
    nop
    add b
    inc hl
    ld a, a
    ld b, $21
    jr nz, jr_003_4c54

    ld a, $7f
    ld a, a
    ld a, $c3
    ld bc, $2233
    ld a, a
    ld b, c
    ld a, [de]
    dec de
    ld [hl+], a
    ld b, $03
    ld a, a
    ld b, $06
    ld a, a
    push bc
    ld bc, $ca46
    ld bc, $414a
    ld b, $7f
    ld b, c
    ld a, a
    ld b, $00
    ld [hl-], a
    inc hl
    ld a, [hl]
    nop
    dec [hl]
    jp $0500


    ld b, c
    ld [hl-], a

Call_003_4bff:
    inc [hl]
    inc b
    ld a, [hl]
    ld a, [hl]
    ld l, $2c
    dec l
    call nz, Call_003_5f00
    jp $a900


    ld b, c
    nop
    inc bc
    inc b
    ld a, h
    ld h, [hl]
    ld a, h
    ld a, h
    ld h, l
    ld [hl+], a
    ld a, h
    ld b, c
    ld a, [de]
    ld a, h
    ld b, c
    ld a, h
    dec de
    inc bc
    ld [hl], $36
    ld h, l
    ld h, [hl]
    add a
    ld bc, $0930
    inc b
    rlca
    ld h, l
    ld h, [hl]
    nop
    ld [bc], a
    ld h, l
    ld h, [hl]
    inc b
    ld b, $83
    ld bc, $3122
    ld a, a
    ld de, $3d3c
    nop
    inc bc
    dec l
    ld b, h
    dec l
    dec hl
    ld b, l
    ld b, h
    dec hl
    dec hl
    inc a
    dec a
    ld a, h
    ld a, h
    inc a
    dec a
    add e
    ld bc, $15ba
    ld bc, $3c03
    dec a
    dec b
    inc bc
    inc a
    dec a

jr_003_4c54:
    inc e
    dec e
    inc a
    dec a
    scf
    scf
    inc a
    dec a
    ld c, l
    ld c, l
    add b
    sub b
    add c
    sub c
    inc hl
    ld a, [hl+]
    inc sp
    ld a, a
    ld de, $5c5a
    ld e, e
    ld e, l
    ld e, d
    ld e, [hl]
    ld e, e
    ld e, a
    ld e, [hl]
    ld e, h
    ld e, a
    ld e, l
    ld e, h
    ld e, d
    ld e, l
    ld e, e
    ld e, d
    ld e, h
    ld b, c
    ld h, b
    ld h, c
    ld b, c
    ld e, e
    ld e, l
    ld de, $5c5a
    ld e, d
    ld e, [hl]
    ld h, b
    ld a, a
    ld e, [hl]
    ld e, h
    ld a, a
    ld h, c
    ld h, b
    ld a, a
    ld e, e
    ld e, a
    ld a, a
    ld h, c
    ld e, a
    ld e, l
    ld b, c
    ld h, b
    ld a, a
    ld b, c
    ld a, a
    ld h, c
    rlca
    ld c, c
    ld c, b
    inc bc
    nop
    ld b, b
    ld b, d
    ld b, c
    ld b, e
    ld h, d
    ld c, [hl]
    ld b, d
    ld d, d
    ld d, b
    ld [bc], a
    ld d, d
    ld b, [hl]
    ld b, a
    ld b, c
    ld d, c
    ld d, e
    add hl, de
    ld d, h
    ld d, h
    ld d, a
    ld d, a
    ld d, l
    ld d, h
    ld e, b
    ld d, a
    ld d, h
    ld d, [hl]
    ld d, a
    ld e, c
    ld c, d
    ld c, d
    ld c, e
    ld c, e
    ld d, h
    ld d, h
    nop
    inc bc
    ld d, l
    ld d, h
    nop
    inc bc
    ld d, h
    ld d, [hl]
    add e
    nop
    db $10
    inc b
    inc b
    rlca
    ld e, [hl]
    ld e, [hl]
    ld e, a
    ld h, d
    ld e, a
    dec b
    ld h, b
    ld h, c
    ld a, h
    ld a, h
    ld d, b
    ld d, d
    add e
    ld [bc], a
    inc [hl]
    inc hl
    ld a, a
    nop
    ld e, [hl]
    call nz, $8002
    nop
    ld e, a
    call nz, $8602
    push hl
    ld [hl], e
    ld a, a
    db $e4
    ld c, e
    nop
    ld [hl+], a
    ld b, $3f
    nop
    add hl, hl
    ld bc, $0400
    dec h
    nop
    db $e4
    ld [hl+], a
    ld [bc], a
    nop
    nop
    rst $38
    inc hl

Jump_003_4d00:
    ld a, a
    inc hl
    ld a, [hl]
    inc hl
    ld a, l
    inc hl
    ld a, h
    inc hl
    ld c, b
    inc h
    inc l
    ld [bc], a
    ld b, a
    inc l
    ld b, a
    ld b, c
    ld b, a
    inc l
    ld b, c
    ld [hl], $37
    ld b, c
    inc h
    dec h
    dec bc
    jr nc, jr_003_4d4b

    ld sp, $3231
    jr nc, jr_003_4d53

    ld sp, $3232
    inc sp
    inc sp
    ld h, e
    jr c, @+$14

    jr c, jr_003_4d63

    inc h
    scf
    ld d, h
    ld d, h
    ld d, l
    ld d, l
    ld a, a
    ld l, $7f
    cpl
    ld a, [hl]
    ld l, $7e
    cpl
    ld a, h
    ld l, $7c
    ld b, c
    cpl
    ld a, a
    ld b, c
    cpl
    ld a, [hl]
    ld b, d
    cpl
    ld a, h
    ld bc, $602f
    ld b, d
    cpl
    ld a, a
    dec bc

jr_003_4d4b:
    ld b, [hl]
    ld a, a
    ld a, a
    ld a, h
    ld c, d
    ld a, h
    ld a, h
    ld c, d

jr_003_4d53:
    ld a, h
    ld a, h
    ld c, d
    ld c, e
    ld [hl+], a
    ld a, h
    rrca
    ld c, d
    ld a, h
    ld a, h
    ld c, e
    ld c, h
    ld c, [hl]
    ld c, l
    ld c, a
    ld h, [hl]

jr_003_4d63:
    ld d, a
    ld e, d
    ld e, c
    ld b, h
    ld b, h
    ld b, l
    ld b, l
    ld h, e
    ld b, b
    rlca
    ld b, b
    ld b, h
    ld b, d
    ld b, l
    ld b, h
    ld b, c
    ld b, l
    ld b, e
    ld b, c
    dec l
    inc l
    ld [hl+], a
    dec l
    ld [hl+], a
    inc l
    ld b, c
    dec l
    inc l
    ld a, [bc]
    inc l
    inc l
    ld [hl], $2a
    ld h, $7f
    ld h, $2b
    daa
    ld a, a
    ld a, [hl+]
    inc hl
    ld a, a
    inc bc
    ld h, $7f
    daa
    jr z, jr_003_4db5

    ld a, a
    dec bc
    dec hl
    scf
    ld a, a
    jr z, jr_003_4dc4

    jr z, @+$81

    add hl, hl
    ld a, a
    dec hl
    ld a, a
    ld a, a
    add e
    nop
    or l
    ldh [rNR42], a
    ld a, l
    ld a, l
    inc [hl]
    dec [hl]
    ld d, h
    ld d, b
    ld d, l
    ld d, c
    ld d, d
    ld d, h
    ld d, e
    ld d, l
    ld a, a
    ld a, a
    ld h, d

jr_003_4db5:
    ld h, d
    nop
    ld a, a
    ld h, d
    ld h, d
    ld h, c
    ld h, c
    ld a, a
    ld a, a
    inc l
    inc l
    ld h, l
    ld h, [hl]
    ld a, h
    ld a, h

jr_003_4dc4:
    ld d, [hl]
    ld d, a
    ld c, c
    ld c, c
    inc hl
    ld c, b
    ld bc, $4949
    add e
    nop
    inc a
    add e
    nop
    sub c
    rlca
    ld a, h
    ld a, h
    ld h, b
    ld h, b
    ld a, h
    ld l, $60
    cpl
    add e
    nop
    sub a
    inc bc
    jr nc, jr_003_4e14

    ld sp, $c333
    nop
    xor d
    inc bc
    dec b
    ld a, [hl]
    inc e
    jr jr_003_4e2c

    ld a, a
    ld b, c
    inc h
    scf
    ld b, c
    ld [hl], $25
    ld b, c
    inc h
    ld a, a
    ld b, c
    ld a, a
    inc h
    ld b, c
    ld a, a
    dec h
    ld b, c
    dec h
    ld a, a
    inc bc
    inc d
    ld h, e
    ld d, $64
    ld h, e
    inc d
    dec b
    ld h, e

Call_003_4e09:
    dec d
    ld h, h
    rla
    ld a, [hl]
    ld a, [hl]
    ld b, c
    ld h, e
    dec d
    add e
    nop
    ld [bc], a

jr_003_4e14:
    ld b, c
    inc d
    ld h, e
    inc bc
    ld a, a
    ld a, a
    ld d, $64
    jp $0500


    ld bc, $6416
    add e
    ld bc, $094a
    ld a, a
    ld a, a
    ld h, h
    rla
    ld a, a
    ld a, a

jr_003_4e2c:
    ld h, l
    ld h, [hl]
    ld h, h
    ld h, h
    inc hl
    ld a, [hl]
    ld bc, $6363
    add e
    nop
    ld [de], a
    ld b, $2d
    ld c, b
    dec l
    inc l
    ld a, [hl]
    ld bc, $8301
    nop
    inc bc
    ld a, [bc]
    ld bc, $7e05
    ld a, a
    dec b
    ld a, [hl]
    ld a, [hl]
    dec b
    ld a, [hl]
    inc bc
    ld a, a
    ld b, c
    ld a, [hl]
    inc bc
    inc bc
    ld a, [hl]
    ld a, [hl]
    ld a, a
    rlca
    ld b, c
    rlca
    ld a, [hl]
    inc hl
    ld a, [hl]
    dec bc
    ld bc, $7e05
    ld bc, $037e
    dec b
    ld a, [hl]
    rlca
    ld a, [hl]
    inc bc
    rlca
    add e
    ld bc, $0985
    inc bc
    rlca
    ld a, [hl]
    cpl
    inc d
    cpl
    ld c, b
    ld c, b
    ld h, l
    ld h, [hl]
    inc h
    ld a, a
    nop
    nop
    call nz, $c101
    ld a, [bc]
    nop
    inc b
    ld a, a
    ld a, a
    inc b
    ld a, a
    ld a, a
    inc b
    ld a, a
    ld [bc], a
    ld a, a
    ld b, c
    ld a, a
    ld [bc], a
    ld [hl+], a
    ld a, a
    nop
    ld b, $41
    ld b, $7f
    add [hl]
    ld bc, $08c3
    nop
    ld a, a
    ld [bc], a
    inc b
    ld a, a
    ld b, $7f
    ld [bc], a
    ld b, $83
    ld bc, $09c5
    ld [bc], a
    ld b, $1a
    ld a, a
    ld d, [hl]
    ld a, a
    ld a, a
    dec de
    ld a, a
    ld d, a
    inc hl
    ld a, a
    nop
    ld d, [hl]
    push bc
    ld bc, $22ff
    ld a, a
    nop
    ld e, b
    inc hl
    ld a, a
    ldh [rNR41], a
    ld e, c
    db $10
    ld [$7f0c], sp
    add hl, bc
    ld de, $0d7f
    ld c, $7f
    ld [de], a
    ld a, [bc]
    ld a, a
    rrca
    dec bc
    inc de
    add hl, bc
    ld [$7f7f], sp
    ld c, $7f
    inc c
    ld a, a
    ld a, a
    rrca
    ld a, a
    dec c
    ld a, a
    ld a, a
    dec bc
    ld a, [bc]
    ld sp, $127f
    inc e
    jr jr_003_4f63

    ld a, [hl]
    dec e
    jr jr_003_4f68

    ld a, a
    jr jr_003_4f0a

    ld a, [hl]
    ld a, [hl]
    jr @+$21

    ld a, a
    ld a, a
    jr jr_003_4f0c

    ld a, [hl]
    jp Jump_003_5402


    inc e
    nop
    jr jr_003_4f14

    ld a, [hl]
    ld bc, $1818
    inc b
    ld a, a
    jr jr_003_4f1c

    dec b
    ld a, [hl]
    jr jr_003_4f20

    inc d
    ld h, e

jr_003_4f0a:
    jr jr_003_4f24

jr_003_4f0c:
    ld h, e
    dec d
    jr @+$1a

    ld a, a
    dec de
    jr jr_003_4f2c

jr_003_4f14:
    ld a, [de]
    ld a, a
    jp Jump_003_5302


    add hl, de
    ld a, $3e

jr_003_4f1c:
    dec a
    dec a
    inc l
    inc l

jr_003_4f20:
    ld a, [de]
    ld a, a
    jr nz, jr_003_4f3d

jr_003_4f24:
    ld a, [de]
    ld a, a
    ld hl, $7f19
    dec de
    add hl, de
    ld [hl+], a

jr_003_4f2c:
    ld a, a
    dec de
    add hl, de
    inc hl
    ld a, a
    ld a, a
    add hl, de
    add hl, de
    ld b, c
    ld a, a
    dec de
    ld b, c
    ld a, [de]
    ld a, a
    rlca
    ld d, b
    ld d, d

jr_003_4f3d:
    ld d, c
    ld d, e
    ld c, c
    ld c, c
    ld [hl], $37
    ld h, e
    ld e, e
    rlca
    ld e, h
    ld e, e
    ld e, a
    ld e, l
    ld e, h
    ld e, h
    ld e, [hl]
    ld e, a
    add e
    nop
    call z, $3641
    scf
    rlca
    ld a, $3e
    ccf
    ccf
    inc a
    inc a
    dec a
    dec a
    inc hl
    ld a, a
    rlca
    ld [hl], $37
    ld c, c

jr_003_4f63:
    ld c, c
    add b
    sub b
    add c
    sub c

jr_003_4f68:
    add e
    ld [bc], a
    ret z

    dec b
    ld h, c
    ld h, c
    ld a, a
    add e
    add e
    ld a, a
    add e
    ld [bc], a
    jp nc, Jump_003_6201

    ld h, d
    add e
    nop
    ld [hl], $87
    nop
    add h
    add e
    nop
    ld a, h
    add e
    nop
    inc a
    add e
    nop
    jr c, jr_003_4f8f

    inc l
    inc l
    ld a, $3e
    ld a, [hl-]
    dec sp
    dec sp

jr_003_4f8f:
    ld a, [hl-]
    inc hl
    ld a, a
    add e
    ld [bc], a
    sbc h
    add hl, bc
    jr c, @+$3b

    ld b, b
    ld b, c
    ld a, [hl-]
    dec sp
    ld b, d
    ld b, e
    jr c, jr_003_4fd9

    ld h, e
    ld [hl], $01
    ld b, d
    ld b, e
    db $e4
    db $eb
    ld a, a
    db $e4
    ld a, h
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    inc hl
    ld [bc], a
    sbc d
    inc b
    ld h, l
    add h
    inc b
    ld a, a
    add hl, hl
    ld [bc], a
    inc bc
    ld [$0207], sp
    ld [bc], a
    ld h, d
    inc b
    ld [bc], a
    ld b, $06
    ld [bc], a
    inc h
    ld bc, $0003
    ld [bc], a
    nop
    rlca
    add h
    inc b
    add b
    rst $38
    nop
    jp $ff23


    nop
    inc a
    ld b, c
    rst $38
    nop
    nop

jr_003_4fd9:
    db $db
    ld b, c
    inc h
    rst $38
    ld b, c
    rst $20
    rst $38
    nop
    ld b, d
    ld b, e
    rst $38
    nop
    ld [hl+], a
    rst $38
    ld [hl-], a
    nop
    ld de, $0f0f
    rla
    jr jr_003_502e

    ccf
    jr nz, jr_003_5031

    ld b, c
    ld a, [hl]
    ld b, a
    ld a, b
    ld e, a
    ld h, b
    ld e, [hl]
    ld h, c
    ld e, b
    ld h, a
    adc c
    nop
    ld a, [hl-]
    adc l
    nop
    ld a, [hl-]
    ldh [$2b], a
    ld e, [hl]
    ld h, c
    ld a, a
    ld a, a
    nop
    nop
    inc de
    inc de
    rlca
    ld b, $1f
    jr jr_003_5050

    inc h
    ccf
    ld [hl+], a
    ld a, a
    ld b, d
    ld a, a
    ld c, b
    ld a, a
    ld b, b
    ld a, a
    ld c, a
    ld a, $31
    cpl
    ccf
    ccf
    jr nc, jr_003_5082

    ld h, b
    ld e, a
    ld h, c
    ld e, a
    ld a, [hl]
    ld b, $06
    rrca
    add hl, bc
    ld c, a

jr_003_502d:
    ld c, c

jr_003_502e:
    ld b, $06
    dec h

jr_003_5031:
    nop
    rlca
    jr nz, jr_003_5055

    ld [hl], b
    ld d, b
    ccf
    ccf
    ld e, $11
    adc c
    nop
    db $76
    ld sp, $0100
    rra
    rra
    sub c
    nop
    sub h
    ldh [rNR44], a
    jr nc, jr_003_507a

    ld [hl], c
    ld d, c
    ldh a, [$90]
    ldh [$a0], a

jr_003_5050:
    ld b, e
    ld b, e
    rrca
    inc c
    ld c, a

jr_003_5055:
    ld c, b
    rra
    db $10
    sbc a
    sub b
    rra
    db $10
    rrca
    ld [$0407], sp
    inc bc
    nop
    ld b, b
    ld b, b
    rlca
    rlca
    rra
    jr jr_003_50a8

    jr nz, jr_003_50ea

    ld b, b
    ld b, h
    rst $38
    add b
    dec bc
    rst $38
    adc b
    ld a, a
    ld b, b
    ld a, a
    ld h, b
    ccf
    jr nc, @+$41

    inc a

jr_003_507a:
    adc a
    adc b
    dec sp
    nop
    nop
    ld bc, $0162

jr_003_5082:
    dec c
    ccf
    ccf
    ld a, a
    ld c, h
    ld [hl], a
    ld a, a
    or l
    adc $a5
    sbc $85
    cp $95
    xor $85
    ld bc, $1326
    ld d, l
    xor $f5
    adc $35
    xor $d5
    ld a, $df
    ccf
    sub a
    ld a, b
    rla
    ld hl, sp+$5f
    cp a
    ret nc

    ccf
    rst $10

jr_003_50a8:
    jr c, jr_003_502d

    ld bc, $073e
    ld d, a
    cp b
    rst $10
    jr c, jr_003_5082

    ccf
    sub b
    ld a, a
    add l
    ld bc, $0b4a
    sub a
    ld a, b
    rra
    rst $38
    ldh a, [$f0]
    ccf
    ccf
    rst $38
    call z, $3ff7
    ld b, c
    db $fd
    ld c, $01
    db $fd
    ld b, [hl]
    ld b, d
    db $fd
    ld b, $e0
    daa
    db $fd
    add [hl]
    db $fd
    adc [hl]
    db $fd
    adc $35
    cp $35
    xor $ff
    rst $38
    sub a
    ld a, b
    rra
    rra
    rrca
    inc c
    rrca
    rrca
    dec a
    ld a, $3d
    ld c, $7d
    ld a, [hl]

jr_003_50ea:
    ld [hl], l
    ld c, $f5
    cp $fd
    ld l, $f5
    ld a, [hl]
    or l
    cp $fd
    adc $35
    xor $8d
    ld bc, $0a7a
    dec c
    ld c, $7d
    ld a, [hl]
    dec d
    ld c, $f5
    cp $3d
    ld l, $75
    adc h
    ld bc, $2593
    nop
    inc bc
    jr jr_003_5127

    inc c
    inc c
    add e
    nop
    add [hl]
    dec b
    ret nz

    ret nz

    ld hl, sp+$38
    ld a, [$a30a]
    nop
    and $11
    db $fc
    nop
    rst $38
    inc bc
    ei
    inc b
    db $fd
    ld [bc], a

jr_003_5127:
    nop
    nop
    pop af
    pop af
    db $fc
    inc c
    cp $02
    cp $02
    ld b, [hl]
    rst $38
    ld bc, $fe41
    ld [bc], a
    inc bc
    db $fc
    inc b
    push af
    ld a, [bc]
    scf
    nop
    rlca
    inc a
    inc a
    rst $38
    jp $c43b


    dec b
    ld a, [$0089]
    nop
    add hl, bc
    rst $38
    nop
    rst $38
    add c
    rst $38
    jp $e7ff


    rst $38
    ld h, [hl]
    adc e
    nop
    inc d
    add e
    nop
    ld a, [de]
    ld [$ff00], sp
    rst $38
    nop
    db $db
    inc a
    cp l
    ld e, d
    ld a, [hl]
    ld b, [hl]
    db $db
    rst $38
    ld bc, $24db
    adc b
    nop
    ld e, $0f
    inc bc
    inc bc
    dec b
    ld b, $0b
    inc c
    rla
    jr jr_003_51a7

    jr nc, jr_003_51b9

    jr nz, jr_003_51db

    ld h, b
    ld a, a
    ld b, b
    ld b, d
    cp a
    ret nz

    inc bc
    sbc e
    db $fc
    ld l, a
    ldh a, [rSCY]
    cp a
    ret nz

    inc bc
    di
    db $fc
    ld c, a
    ld [hl], b
    ld b, c
    daa
    jr c, jr_003_519a

    rla
    jr jr_003_51a9

    inc e
    add hl, bc
    ld c, $04

jr_003_519a:
    rlca
    ret


    ld [bc], a
    ld h, a
    ld [bc], a
    nop
    nop
    ld [$02c4], sp
    and d
    inc bc
    ld b, b

jr_003_51a7:
    ld b, b
    nop

jr_003_51a9:
    nop
    adc e
    ld [bc], a
    sbc b
    or [hl]
    ld bc, $0107
    ret nz

    add b
    ld [hl+], a
    ret nz

    ld [bc], a
    ld b, b
    ldh [$60], a

jr_003_51b9:
    ld b, c
    ld h, b
    jr nz, jr_003_51c4

    jr nz, jr_003_51bf

jr_003_51bf:
    ld hl, $0320
    nop
    rlca

jr_003_51c4:
    nop
    add e
    nop
    add a
    ld b, $01
    add hl, de
    dec de
    ld b, $0e
    ld [bc], a
    ld b, $23
    ld [bc], a
    ld bc, $0202
    sbc a
    ld bc, $8300
    ld [bc], a
    ld l, b

jr_003_51db:
    add e
    ld [bc], a
    ld l, d
    add e
    ld [bc], a
    ld l, h
    inc bc
    ld l, $3f
    scf
    jr c, @+$44

    ld a, a
    ld h, b
    rlca
    ld [hl], e
    ld a, h
    ld c, h
    ld a, a
    ld b, e
    ld a, a
    ld c, c
    db $76
    ld b, e
    ld e, a
    ld h, b
    ld b, c
    cpl
    jr nc, @+$06

    rla
    jr c, jr_003_5213

    jr jr_003_5209

    add h
    ld [bc], a
    sub c
    ld bc, $0302
    rst $10
    ld bc, $051d
    ccf

jr_003_5209:
    ccf
    rst $18
    ldh [$7f], a
    add b
    ld c, c
    rst $38
    nop
    ld b, c
    rst $38

jr_003_5213:
    inc b
    add $03
    ld a, [hl]
    inc b
    ld [bc], a
    rst $38
    inc bc
    rst $38
    ld b, $44
    rst $38
    nop
    inc b
    ccf
    ret nz

    add c
    cp $71
    ld [hl+], a
    ld a, a
    ld bc, $2121
    add e
    ld bc, $0dc4
    ld a, b
    ld a, b
    ld a, a
    ld a, a
    rst $38
    rst $38
    db $fc
    db $fc
    jr c, jr_003_5271

    jr nc, @+$32

    jr nc, jr_003_526d

    inc sp
    nop
    inc c
    ld b, b
    ldh [$60], a
    ldh [rNR41], a
    ld [hl], b
    jr nc, jr_003_5278

    db $10
    jr c, jr_003_5263

    jr jr_003_5251

    add a
    ld [bc], a
    or a
    db $10

jr_003_5251:
    ld h, b
    nop
    db $e4
    ld [$10c8], sp
    jr @+$12

    db $10
    jr nc, @+$7a

    ret nc

    ld hl, sp+$08
    inc c
    ld b, $07
    add hl, sp

jr_003_5263:
    nop
    add hl, bc
    inc bc
    inc bc
    dec c
    ld c, $37
    jr c, jr_003_52cb

    ld h, b

jr_003_526d:
    cp a
    ret nz

    ld e, e
    rst $38

jr_003_5271:
    nop
    dec bc
    ld a, a
    add b
    ccf
    ret nz

    adc a

jr_003_5278:
    ldh a, [rLCDC]
    ld a, a
    jr nc, jr_003_52bc

    inc c
    rrca
    rst $08
    inc b
    rlca
    dec b
    inc c
    inc c
    ld c, $0e
    ld b, $06
    dec [hl]
    nop
    daa
    jr nz, jr_003_52b5

    db $10
    daa
    ld [$0433], sp
    dec l
    ld [$1025], sp
    rrca
    ld bc, $0700
    nop
    rrca
    nop
    rra
    nop
    dec a
    inc bc
    dec sp
    rlca
    ld [hl], a
    rrca
    ld a, a
    rrca
    ld b, c
    ld l, a
    rra
    ldh [$2b], a
    cpl
    rra
    ccf
    rrca
    rla
    rrca
    dec bc
    rlca

jr_003_52b5:
    inc b
    inc bc
    ld bc, $2a00
    ld a, $05

jr_003_52bc:
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

jr_003_52cb:
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
    ld a, $23
    nop
    ld bc, $7f7f
    ldh a, [$27]
    inc b
    ld c, $44
    ei
    inc c
    rlca
    rst $28
    db $10
    rst $38
    ld [$07fd], sp
    rst $38
    ld b, $41
    rst $38
    inc b
    ld bc, $18ef
    add l
    inc b
    ld b, h
    ld b, c
    rst $38
    add b
    ld b, c
    add b
    rst $38
    rlca
    ret nz

    rst $38
    ld a, a
    ld a, a

Jump_003_5302:
    ld b, b
    ld b, c
    ld h, b
    ld h, c
    ld b, c
    jr nz, jr_003_532a

    ld bc, $0000
    and e
    ld [bc], a
    rst $18
    add hl, bc
    ld [hl], b
    add b
    ret c

    ldh [$e8], a
    ldh a, [$f4]
    ld hl, sp-$04
    ld hl, sp+$42
    ld hl, sp-$04
    ld b, $f4
    ld hl, sp-$10
    ld hl, sp-$20
    ldh a, [$c0]
    call nz, $6405
    rlca
    nop

jr_003_532a:
    nop
    jr z, jr_003_5345

    jr c, jr_003_534b

    ld a, [hl]
    ld a, $41
    ld a, $7e
    nop
    ld a, [hl]
    sub b
    nop
    sbc a
    dec b
    ld b, b
    ld b, b
    ld hl, sp-$08
    ld a, h
    ld h, h
    ld b, c
    ld a, [hl]
    ld b, d
    inc b
    ccf

jr_003_5345:
    ld hl, $191f
    rlca
    sub b
    inc bc

jr_003_534b:
    db $eb
    ld b, d
    rst $38
    nop
    nop
    ld a, $36
    rst $38
    rlca
    ccf
    rst $38
    ld e, $1e
    ld hl, $5e3f
    ld h, c
    ld b, c
    rst $18
    ldh [rNR13], a
    ld [hl], a
    ld a, h
    ld c, a
    ld [hl], b
    rst $18
    ldh [$bf], a
    ret nz

    ld a, a
    ld b, b
    cp a
    call nz, $c1be
    sbc a
    ldh [$65], a
    ld a, [hl]
    inc a
    ccf
    add e
    dec b
    xor [hl]
    dec d
    ldh a, [$f0]
    ld hl, sp-$78
    cp a
    rst $00
    ld e, a
    ld h, b
    ld l, [hl]
    ld [hl], c
    pop af
    sbc a
    rst $38
    adc [hl]
    cp a
    ret nz

    ld e, a
    ld h, b
    ld hl, $3e3f
    ccf
    ld b, c
    ld a, a
    ld b, b
    ld bc, $3f20
    jp $b300


    rrca
    ld [hl], b
    ld [hl], b
    ld [hl], a
    ld d, a
    ld l, c
    ld e, [hl]
    rst $28
    sbc [hl]
    db $fd
    di
    ccf
    jr z, jr_003_53c4

    inc d
    dec de
    ld d, $41
    dec e
    inc de
    add hl, bc
    dec a
    inc hl
    ld a, e
    ld b, [hl]
    ld [hl], a
    ld c, h
    ld l, a
    ld e, h
    ld [hl], e
    ld [hl], e
    add e
    ld [bc], a
    ld h, h
    add hl, de
    inc b
    rlca
    dec b
    rlca
    ld [$300f], sp
    ccf
    ld b, d
    ld a, a

jr_003_53c4:
    ld d, b
    ld a, a
    ld c, h
    ld [hl], e
    ld h, $39
    dec sp
    inc a
    db $fd
    xor $fc
    add a
    cp [hl]
    rst $08
    reti


    jp hl


    inc hl
    ld a, b
    add hl, de
    ld c, [hl]
    ld a, [hl]
    ld e, a
    ld [hl], c
    ld a, a
    ld d, l
    ld a, a
    ld d, c
    ld a, [hl]
    ld l, a
    jr c, jr_003_5422

    inc h
    ccf
    inc l
    dec sp
    ld e, $19
    rrca
    ld [$0607], sp
    rlca
    rlca
    ld [bc], a
    ld [bc], a
    adc e
    ld bc, $8314
    nop
    ld [c], a
    ld bc, $393e
    jp $9102


    rlca
    ldh [rIE], a

Call_003_5400:
    add c
    rst $38

Jump_003_5402:
    adc a
    rst $38

jr_003_5404:
    sub b
    ldh a, [$c5]
    nop
    sub c
    ld de, $6e6e
    ld d, e
    ld a, a
    ld [hl], $3f
    inc d
    rra
    ld l, l
    ld a, a
    and l
    rst $38
    ld a, [hl]
    ld a, a
    add hl, hl
    ld a, $3b
    inc a
    ld b, d
    rrca
    ld [$06c5], sp
    ld b, l

jr_003_5422:
    rrca
    nop
    nop
    rlca
    rrca
    jr jr_003_5448

    jr nz, jr_003_546a

    jr nz, jr_003_54ac

    ld b, d
    ld a, l
    ld b, e
    db $fc
    add c
    cp $c9
    nop
    pop af
    push bc
    nop
    jp hl


    sub c
    dec b
    xor [hl]
    inc bc
    jr c, jr_003_5477

    ld b, h
    ld a, h
    ld b, e
    add d
    cp $01
    ld b, h
    ld a, h
    add e

jr_003_5448:
    inc bc
    xor h
    add hl, de
    ld a, $2e
    ld a, [hl]
    ld h, d
    and $be
    ld hl, sp+$58
    db $f4
    sbc h
    call nc, $fc3c
    inc h
    or h
    ld l, h
    ld [hl], h
    call z, $88f8
    add sp, $18
    ret nc

    jr nc, jr_003_5404

    ld h, b
    and a
    ld [bc], a
    sub [hl]
    inc c
    ret nz

jr_003_546a:
    ret nz

    jr nc, @-$0e

    add sp, $18
    db $f4
    adc h
    ld a, d
    add $be
    ld h, d
    db $ed
    ld b, e

jr_003_5477:
    inc sp
    db $dd
    ld b, $33
    cp [hl]
    ld [hl], d
    ld c, h
    call z, $8080
    and l
    ld b, $40
    inc de
    db $10
    ldh a, [rNR23]
    ld hl, sp+$44
    db $fc
    ld [bc], a
    cp $0a
    cp $02
    cp $26
    cp $0c
    db $fc
    sub b
    ldh a, [rNR10]
    ldh a, [$a7]
    ld [bc], a
    sub h
    ld a, [bc]
    ld b, b
    ld b, b
    ret nz

    ret nz

    and b
    ldh [$f0], a
    ldh a, [$50]
    ldh a, [rSVBK]
    ld b, c
    ldh a, [$30]
    and h

jr_003_54ac:
    ld b, $b2
    add hl, bc
    sub b
    ld [hl], b
    adc h
    db $fc
    ld b, d
    ld a, [hl]
    ld b, h
    ld a, h
    ld a, b
    ld a, b
    add e
    inc bc
    ld h, b
    add hl, bc
    ld sp, hl
    rst $20
    ld a, l
    rst $18
    ld a, a
    db $e3
    cp [hl]
    ld [$e23e], a
    ld b, c
    inc e
    db $fc
    dec b
    db $76
    cp $d8
    ld hl, sp-$10
    ldh a, [$ab]
    inc bc
    db $fc
    jp $d402


    inc bc
    ldh a, [$f0]
    ld a, b
    adc b
    ld b, c
    db $fc
    inc b
    ld bc, $06fc
    ld b, e
    cp $02
    dec e
    db $fc
    add e
    ld a, e
    db $fd
    inc bc
    rlca
    add b
    add b
    ld h, [hl]
    and $18
    db $fc
    sbc b
    db $fc
    ld [hl], h
    db $fc
    inc h
    db $fc
    sub d
    ld a, [hl]
    pop bc
    ccf
    ld h, c
    sbc a
    ld sp, $01cf
    rst $38
    ld [bc], a
    rst $38
    and h
    inc b
    ld c, [hl]
    ld bc, $c0f8
    or b
    inc bc
    db $eb
    inc b
    ld a, [hl-]
    ld a, [hl-]
    ld b, h
    ld a, h
    adc d
    adc d
    ld b, $f5
    ld [bc], a
    ldh [rP1], a
    db $fc
    sbc h
    inc b
    ld de, $0786
    ld e, $a6
    inc b
    pop bc
    nop
    ld hl, sp+$41
    nop
    db $fc
    ld b, d
    nop
    cp $86
    nop
    dec d
    and e
    nop
    ld [c], a
    add hl, bc
    or $0e
    rst $38
    rlca
    ei
    dec b
    rst $38
    ld bc, $41ff
    ld b, c
    cp $42
    rla
    ei
    rlca
    db $fd
    add a
    ld sp, hl
    rrca
    pop af
    rra
    and d
    cp $e4
    db $fc
    jr c, jr_003_5586

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
    ld [$3f7f], sp
    ld a, a
    ld a, $fe
    ld a, b
    ld hl, sp+$60
    ldh [$b0], a
    inc bc
    ld c, e
    rlca
    jr jr_003_5589

    ccf
    daa
    ld a, a
    ld h, c
    cp $82
    add e

jr_003_5578:
    dec b
    xor b
    ld bc, $2f3f
    sub c
    inc bc
    or b
    dec bc
    ld bc, $3a03
    ccf
    ld d, a

jr_003_5586:
    ld l, h
    ld a, a
    ld c, b

jr_003_5589:
    ccf
    ret z

    rst $30
    adc b
    ld b, c
    rst $28
    sub b
    ld b, d
    rst $38
    add b
    rla
    cp a
    ret nz

    ld a, a
    ret nz

    ld e, a
    ld h, b
    ld a, a
    ld h, b
    cp a
    ldh [$9f], a
    ldh a, [$97]
    ld hl, sp-$75
    db $fc
    ld b, l
    ld a, [hl]
    ld [hl+], a
    ccf
    ld de, $0c1f
    rrca
    xor a
    rlca
    sbc $03
    ld a, [hl]
    cp $bd
    jp $0392


    ld l, b
    ld b, c
    ld b, h
    rst $38
    nop
    ld b, h
    call z, $0809
    inc bc
    db $10
    cp e
    ld b, h
    add c
    ld [hl+], a
    rst $38
    ld bc, $8101
    add l
    ld bc, $0717
    rlca
    rrca
    dec sp
    inc a
    ld b, a
    ld a, b
    or a
    ret z

    ld b, c
    rst $38
    add b
    ld a, [bc]
    rst $18
    and b
    sbc a
    ldh [$5f], a
    ldh a, [$73]
    ld a, h
    adc h
    rst $38
    add e
    ld [hl+], a
    rst $38
    ld b, e
    rst $38
    add b
    ld b, c
    cp a
    ret nz

    ld b, c
    ld a, a
    ld b, b
    inc bc
    ld e, a
    ld h, b
    ccf
    jr nz, jr_003_5578

    inc bc
    inc a
    inc b
    ld a, e
    ld a, h
    add [hl]
    rst $38
    add e
    sub b
    nop
    inc e
    inc bc
    ld a, [hl]
    ld a, [hl]
    rst $38
    add c
    sbc c
    ld [$47fe], sp
    rst $38
    nop
    nop
    add c
    sub d
    nop
    inc e
    dec bc
    rra
    rra
    dec a
    ld h, $7f
    ld c, b
    cp a
    ret nc

    rst $38
    and b
    rst $18
    ldh [$c3], a
    add hl, bc
    ld c, h
    ld bc, $80ff
    ld b, e
    rst $38
    add h
    add e
    ld [$83c6], sp
    add hl, bc
    ld c, [hl]
    dec bc
    cpl
    ld [hl-], a
    ccf
    jr nc, jr_003_566d

    inc a
    ld b, h
    ld a, a
    add d
    rst $38
    add c
    rst $38
    add l
    ld [bc], a
    inc a
    ld b, e
    rst $38
    ld b, b
    adc e
    inc b
    ld a, $07
    rst $38
    nop
    inc a
    jp $ff81


    ld a, a
    rst $38
    push bc
    nop
    ld [hl+], a
    ld bc, $817e
    adc a
    ld [$17f8], sp
    cp e
    ld b, h
    rst $38
    nop
    cp e
    rst $10
    ld a, l
    ld a, l
    inc a
    inc a
    ld a, [hl]
    ld b, d
    rst $38
    add c
    rst $38
    jr z, @+$01

    xor c
    rst $38
    add e
    db $fd
    rst $00
    ld a, [hl]
    ld a, [hl]

jr_003_566d:
    ccf
    nop

jr_003_566f:
    rlca
    add b
    add b
    ld h, b
    ldh [$d0], a
    jr nc, jr_003_566f

    ld [$02a6], sp
    ld l, [hl]
    ld b, d
    inc bc
    db $fd
    ld b, c
    inc bc
    rst $38
    ld d, $01
    rst $38
    ld bc, $837d
    db $db
    ld h, a
    cp $3f

jr_003_568b:
    db $f4
    ld c, $e4
    inc e
    ret z

    inc a
    jr jr_003_568b

    ld h, h
    db $fc
    jp nz, $befe

    cp $90
    inc bc
    or $02
    rlca
    dec c
    ld c, $85
    ld [bc], a
    ld l, h
    call nz, Call_003_4e09
    xor b
    ld [bc], a
    sub a
    inc bc
    rlca
    rrca
    ld a, e
    db $fc
    adc b
    nop
    ld [$9043], a
    rst $38
    ld [bc], a
    sub c
    ei
    sbc l
    ld b, h
    rst $38
    sub l
    inc bc
    rst $38
    sub h
    rst $38
    sbc b
    ld b, c
    rst $38
    add c
    ld b, c
    rst $38
    add b
    rlca
    db $fc
    add e
    add a
    rst $38
    ld a, a
    rst $38
    jr c, jr_003_574b

    add a
    ld [$03aa], sp
    ld a, $7f
    rst $18
    ldh [rBGP], a
    rst $38
    nop
    inc bc
    cp a
    ld b, b
    rst $28
    ld e, h
    ld b, c
    rst $38
    ld d, h
    ld a, [bc]
    cp $55
    rst $38
    ld e, l
    ld a, a
    ret nc

    cp a
    call nc, $98ff
    rst $38
    add [hl]
    inc bc
    ld h, a
    rlca
    pop hl
    rra
    ccf
    rst $38
    cp $ff
    add $e5
    ld b, c
    ld b, $05
    dec b
    nop
    nop
    rrca
    rra
    rst $30
    ld hl, sp-$52
    inc bc
    ld [hl], h
    ld b, c
    jr nz, @+$01

    nop
    ld [hl+], a
    and l
    ld a, [bc]
    db $fc
    rlca
    cp $2b
    rst $38
    xor e
    rst $38
    xor c
    rst $38
    ld sp, $09a7
    add sp, $02
    ld hl, sp+$07
    rrca
    ld [hl+], a
    rst $38
    ld bc, $f8f0
    daa
    add b
    inc bc
    ld a, [hl]
    rst $38
    cp e
    rst $00
    ld c, b
    rst $38
    inc bc
    ld bc, $bb5f
    ld b, d
    rst $38
    xor e
    rlca
    rst $38
    cp e
    rst $38
    and e
    ld a, a
    xor e
    rst $38
    inc sp
    ld b, d
    rst $38
    inc bc
    add hl, bc
    ei
    rlca
    jp Jump_003_7e3f


    rst $38
    db $fc
    cp $80
    ret nz

jr_003_574b:
    adc b
    dec b
    or [hl]
    sub b
    dec bc
    rrca
    ld bc, $0705
    adc l
    ld [$8bb2], sp
    ld bc, $0012
    ld bc, $02a5
    ret nc

    ldh [rNR50], a
    inc b
    rrca
    inc c
    rla
    ld e, $21
    ccf
    ld [hl+], a
    dec a
    jr c, jr_003_57ab

    ld a, l
    ld l, [hl]
    ld a, a
    ld b, d
    ld a, a
    ld b, c
    rst $38
    add d
    rst $38
    add h
    rst $38
    and h
    rst $38
    adc b
    rst $38
    sub b
    rst $38
    call nc, $707f
    rra
    add hl, de
    rrca
    rrca
    rlca
    rlca
    adc l
    inc bc
    ld c, d
    ldh [$35], a
    ld h, b
    ld h, b
    ldh a, [$f0]
    call c, $f6bc
    ld l, $fb
    rrca
    cp $09
    rst $38
    inc d
    rst $38
    db $10
    rst $38
    ld hl, $62ff
    rst $38
    jp nz, $e47f

    ld a, a
    cp h
    ccf
    call z, $ee97
    db $e3
    rst $38

jr_003_57ab:
    di
    ld a, h
    ld hl, sp+$3f
    db $fc
    ld l, a
    rst $38
    ld b, a
    db $fc
    add h
    db $fc

jr_003_57b6:
    adc h
    ld hl, sp+$08
    ld hl, sp+$58
    ldh a, [rNR10]
    ldh a, [$b0]
    ldh [$e0], a
    or e
    ld [bc], a
    ld a, [c]
    ld bc, $c0c0
    jp $3b0c


    inc bc
    ret c

    jr c, jr_003_57b6

    ld e, b
    and e

jr_003_57d0:
    nop
    ret c

    inc bc
    ldh a, [$30]
    ldh [rNR41], a
    add h
    rlca
    and e
    db $10
    ret nz

    ldh [$60], a
    jr nc, jr_003_57d0

    inc c
    db $fc
    jp nz, $21fe

    ccf
    ld de, $091f
    rrca
    rlca
    rlca
    sub a
    inc bc
    ld c, d
    inc b
    add b
    ret nz

jr_003_57f2:
    ld h, b
    ldh [$d8], a
    add l
    ld a, [bc]
    ld d, l
    ld [bc], a
    ld b, $fa
    ld b, $a6
    add hl, bc
    cp h
    ld [bc], a
    ld bc, $09f7
    ld b, c
    rst $28
    ld de, $fd05
    inc de
    ld a, [c]
    ld e, $ee
    ld e, $a5
    inc bc
    ld a, [hl-]
    rlca
    sbc [hl]
    ld a, [hl]
    ld h, c
    rst $38
    pop bc
    rst $38
    ld a, a
    rst $38
    db $d3
    nop
    ld l, $09

jr_003_581d:
    ld [hl-], a
    call $00ff
    jr nc, jr_003_57f2

    rst $38
    nop
    ld [hl+], a
    db $dd
    inc h
    rst $38
    ld a, [bc]
    add b
    ld a, [c]
    xor l
    rst $38
    add b
    ldh a, [$8f]
    rst $38
    and b
    db $e3
    sbc h
    xor a
    inc c
    sbc $85
    nop
    dec e
    inc b
    add b
    nop
    db $fc
    sbc [hl]
    cp $26
    rst $38
    dec b
    cp $ff
    rst $38
    cp $ff
    cp $29
    rst $38
    add a
    ld a, [bc]
    and d
    ld bc, $7f3f
    dec [hl]
    rst $38
    push bc
    dec b
    or e
    dec bc
    ret c

    ret c

    and b
    jr nz, jr_003_581d

    add b
    db $e3
    ret nz

    rst $30
    ldh [rIE], a
    ldh a, [rSTAT]
    rst $38
    ld hl, sp+$02
    cp $fd
    db $fc
    add [hl]
    dec c
    inc d
    add e
    dec c
    ld h, $3b
    rst $38
    inc hl
    nop
    ld [bc], a
    ld hl, $1f00
    xor h
    dec c

jr_003_587b:
    rlca
    ld bc, $ff7f
    or c
    dec c
    ld d, $00
    db $fd
    sbc d
    dec c
    ld l, c
    and e
    dec c
    ld b, d
    inc bc
    jr jr_003_58a5

    rlca
    ld b, $f4
    inc sp
    dec c
    ld c, h
    rst $38
    ld b, c
    rst $38
    nop
    ld [hl+], a
    rst $38
    jr z, jr_003_589b

jr_003_589b:
    ld b, d
    rst $38
    nop
    inc bc
    rst $38
    ccf
    ret nz

    ldh [$8c], a
    nop

jr_003_58a5:
    ld a, [bc]
    ld [$ff00], sp
    inc bc
    db $fc
    ld e, $e0
    ldh a, [rP1]
    add b
    ld b, [hl]
    rst $38
    nop
    add hl, bc
    rst $38
    inc bc
    db $fc
    ld c, $f0
    jr c, jr_003_587b

    ldh [rP1], a
    add b
    adc [hl]
    nop
    ld [$010c], sp
    cp $07
    ld hl, sp+$0c
    ldh a, [$38]
    ret nz

    ld h, b
    add b
    ret nz

    nop
    add b
    dec hl
    nop
    add h
    nop
    ld d, h
    ld [$fc03], sp
    ld b, $f8
    inc c
    ldh a, [rNR23]
    ldh [$30], a
    add e
    nop
    ld e, [hl]
    inc b
    ret nz

    add b
    nop
    add b
    add b
    adc l
    nop
    rlca
    add hl, de
    ld bc, $03fe
    rst $38
    ld [bc], a
    db $fc
    ld b, $fe
    inc b
    ld hl, sp+$0c
    db $fc
    ld [$18f0], sp
    ld hl, sp+$10
    ldh [$30], a
    ldh a, [rNR41]
    ldh [rNR41], a
    ret nz

    ld h, b
    ldh [rSTAT], a
    ld b, b
    ret nz

    inc bc
    ld b, b
    add b
    ret nz

    ret nz

    ld h, $80
    nop
    add b
    adc h
    nop
    ld h, e
    inc bc
    nop
    ld bc, $0301
    db $f4
    ld [hl], c
    nop
    db $10
    inc b
    ld bc, $0001
    ld bc, $b000
    nop
    add a
    db $10
    ld a, a
    ld b, b
    ccf
    ld h, b
    ccf
    jr nz, @+$21

    jr nc, jr_003_594f

    db $10
    rrca
    jr @+$11

    ld [$0c07], sp
    rlca
    and h
    nop
    xor c
    nop
    inc bc
    and a
    nop
    xor a
    ld [hl-], a
    ld bc, $0301
    ld bc, $0341
    ld [bc], a
    ld a, [de]
    rlca
    ld [bc], a
    inc bc
    ld b, $07
    inc b

jr_003_594f:
    rrca
    inc b
    rlca
    inc c
    rra
    ld [$180f], sp
    ccf
    db $10
    rra
    jr nc, jr_003_59db

    jr nz, jr_003_599d

    ld h, b
    rst $38
    ld b, b
    ld a, a
    ret nz

    rst $38
    call z, $3301
    ld de, $0001
    nop
    ld bc, $0103
    dec b
    inc bc
    inc bc
    ld b, $07
    inc c
    rrca
    jr jr_003_5996

    jr nc, jr_003_59b8

    ld h, b
    add l
    ld bc, $08a8
    inc bc
    ld b, $0f
    inc e
    rra
    jr nc, @+$81

    ldh [rIE], a
    ret nc

    ld bc, $0655
    inc bc
    rlca
    rrca
    inc e
    ccf
    ld [hl], b
    rst $38
    adc $00
    rst $38
    rlca

jr_003_5996:
    nop
    nop
    rlca
    rrca
    ccf
    ld a, b
    rst $38

jr_003_599d:
    ret nz

    call $1600
    inc bc
    inc bc
    rlca
    rst $38
    db $fc
    adc $00
    inc d
    push bc
    nop
    rlca
    nop
    nop
    xor c
    ld bc, $0182
    add b
    ret nz

    ld b, d
    ret nz

    ld b, b
    and e

jr_003_59b8:
    ld bc, $1092
    ldh [rNR41], a
    ldh [$30], a
    ldh a, [rNR10]
    ldh a, [rNR23]
    ld hl, sp+$08
    ld hl, sp+$0c
    db $fc
    inc b
    db $fc
    ld b, $fe
    or b
    ld bc, $c6a7
    nop
    jp nz, $01b0

    cp a

jr_003_59d5:
    xor a
    nop
    ret nz

    add hl, bc
    ret nz

    ld h, b

jr_003_59db:
    ld hl, sp+$30
    db $ec
    jr jr_003_59d5

    ld c, $fd
    inc bc
    db $f4
    ld h, $01
    jp c, $8000

    db $f4
    inc hl
    ld [bc], a
    ld [bc], a
    dec b

jr_003_59ee:
    ld h, b
    ld h, b
    jr jr_003_5a0a

    inc c
    inc c
    daa
    inc b
    jp $eb02


    ld bc, $e0e0
    dec hl
    nop
    inc bc
    jr nc, @+$32

    rrca
    rrca
    adc $02
    adc h
    add e
    nop
    inc bc
    ld b, c

jr_003_5a0a:
    ld bc, $0eff
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
    nop
    xor a
    inc bc
    jr nz, jr_003_59ee

    inc bc
    ld l, $d0
    inc bc
    ccf
    nop
    or [hl]
    inc a
    nop
    nop
    ld l, l
    ld c, b
    nop
    rst $38
    ld b, d
    ld bc, $14ff
    nop
    rst $38
    dec b
    rst $38
    rlca
    rst $38
    ld e, $ff
    ccf
    db $e3
    ld hl, $5fff
    pop af
    ld h, b
    pop hl
    ld b, b
    adc $41
    ld sp, hl
    ld b, b
    add l
    inc bc
    and [hl]
    add a
    inc bc
    and [hl]
    ld [bc], a
    ldh [$5f], a
    rst $18
    ld b, l
    ld a, a
    rst $38
    inc b
    ccf
    rst $38
    rra
    rst $38
    rrca
    jp z, $9203

    ldh [rNR43], a
    ld de, $0ffe
    cp $14
    db $fc
    inc c
    ld sp, hl
    ld [hl], c
    di
    ld sp, $93f7
    rst $30
    sub a
    rst $30
    ld [hl], d
    or b
    db $10
    ldh a, [$f0]
    or c
    db $10
    rst $30
    rst $38
    ld hl, sp-$08
    rst $08
    rst $00
    ei
    db $fc
    cp e
    jp $95f7


    ld b, l
    call $028d
    call $8f8f
    inc h
    rst $38
    ld b, $fe
    rst $38
    ei
    db $fc
    cp $ff
    ei
    push bc
    inc b
    db $10
    dec c
    ld a, [$00ff]
    rst $38
    inc c
    ei
    dec bc
    pop af
    ld de, $1fff
    rst $28
    ld a, [c]
    add e
    add h
    ld bc, $1b6f
    ld [hl-], a
    ld [hl+], a
    dec sp
    dec sp
    ld a, [hl-]
    ld a, [hl-]
    dec sp
    inc de
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    rlca
    rlca
    ld a, c
    ld a, c
    sbc a
    add a
    ei
    ld a, l
    or c
    pop bc
    add e
    ld bc, $c9cd
    pop hl
    and c
    ld a, [hl+]
    or c
    ld bc, $bfbf
    inc h
    rst $38
    inc bc

jr_003_5acd:
    rst $18
    rst $20
    cp d
    ld b, l
    add e
    nop
    ld d, h
    add h
    inc b
    ld e, b
    nop
    ldh [$84], a
    nop
    nop
    ld e, $e0
    ccf
    db $10
    rst $18
    jr nc, jr_003_5b22

    ld de, $3ede
    scf
    rra
    db $dd
    inc sp
    ccf
    ld de, $31df
    ld a, a
    ccf

jr_003_5af0:
    db $e3
    ld b, b
    rst $38
    ld a, a
    pop bc
    pop bc
    add c
    ld bc, $001f
    ld a, a
    nop
    add e
    nop
    ld h, c
    nop
    ccf
    add a
    inc b
    adc l
    add hl, bc
    nop
    rst $38
    nop
    pop bc
    nop
    ld bc, $8000
    ld a, a
    rst $38
    and [hl]
    inc b
    dec bc
    dec b
    rst $38
    rst $38
    ld a, a
    cp a
    rst $38
    rst $38
    add h
    inc b
    ld e, b
    ld [bc], a
    di
    rst $38
    jr nz, jr_003_5acd

    inc bc

jr_003_5b22:
    add [hl]
    ld b, $40
    rst $38
    jr nz, @+$01

    ldh [rIE], a
    jr nz, jr_003_5af0

    inc b
    adc $41
    ldh [rIE], a
    ldh [rNR41], a
    ld h, b
    rst $38
    xor $77
    pop af
    ld a, a
    push af
    rst $18
    ld a, a
    rst $38
    ld e, c
    ld l, a
    db $dd
    ld a, a
    set 7, a
    ld c, c
    rst $38
    ld c, a
    ld a, a
    ret


    ld a, a
    call Call_003_4bff
    rst $38
    ret


    rst $38
    ld c, a
    rst $38
    db $eb
    rst $38
    ld sp, hl
    inc l
    rst $38
    ld [bc], a
    cp $ff
    db $f4
    and h
    ld [bc], a
    ld e, d
    ld [hl-], a
    nop
    and h
    ld [bc], a
    ld l, e
    and [hl]
    ld [bc], a
    dec sp
    ld b, c
    rlca
    dec b
    ldh [$27], a
    inc bc
    dec b
    rrca
    inc c
    dec c
    ld [$0809], sp
    add hl, de
    db $10
    ld sp, $3020
    inc hl
    rst $38
    rst $38
    rst $00
    add c
    add e

jr_003_5b7d:
    add b
    add e
    nop
    rlca
    nop

jr_003_5b82:
    rrca
    nop
    adc l
    inc bc
    or [hl]
    rrca
    push af
    ld c, $af
    ret c

    rst $08
    ld hl, sp+$59
    ldh a, [$78]
    ldh a, [rSTAT]
    jr nc, @-$1e

    ld b, $3f
    ldh [rIE], a
    rst $38
    jp $c381


    inc h
    add c
    ld c, $c1
    add c
    and e
    pop bc
    ld h, l
    jp Jump_003_63be


    cp [hl]
    ld [hl], a
    ld e, l
    ld a, $1d
    ld a, $0a
    ld b, c
    inc e
    ld a, [hl+]
    ld [bc], a
    inc e
    ld [$a31c], a
    dec b
    ld b, b
    rlca
    ld b, c
    add c
    ld b, c
    add b
    ld h, b
    add b
    jr nc, jr_003_5b82

    or e
    dec b
    ld c, h
    cp a
    dec b
    jr nz, jr_003_5bc9

jr_003_5bc9:
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
    jp $0002


    rst $38
    xor d
    ld b, h
    rst $38
    nop
    nop
    ld d, l
    and e
    dec b
    ret c

    ld bc, $5500
    add e
    dec b
    sbc $04
    nop
    nop
    nop
    xor d
    nop
    call nc, $2105
    dec c
    nop
    nop
    ld [$1400], sp
    nop
    ld [hl+], a
    jr @+$45

    jr jr_003_5b7d

    inc a
    add b
    ld a, [hl]
    and h
    ld [bc], a
    cp l
    ld [de], a
    nop
    ld [bc], a

Jump_003_5c05:
    nop
    inc b
    ld bc, $0318
    jr nc, @+$11

    ret nz

    rra
    nop
    rst $38
    ld h, $00
    ld b, b
    add hl, de
    add b
    ccf
    adc e
    ld bc, $84f5
    ld b, $02
    ld bc, $4210
    add e
    ld b, $09
    inc c
    ld a, h
    nop
    ld a, [hl]
    jr c, jr_003_5c28

jr_003_5c28:
    inc b
    ret nz

    ld [bc], a
    ld hl, sp+$01
    db $fc
    nop
    cp $89

jr_003_5c31:
    ld [bc], a
    add hl, bc
    and e
    ld b, $12
    ld [$0030], sp
    jr @-$3e

    rlca
    ldh [rP1], a
    ld hl, sp+$00
    pop de
    dec b
    ld [c], a
    ld bc, $ff00

jr_003_5c46:
    jp Jump_003_6706


    or d
    dec b
    add sp, $02
    add b
    nop
    ret nz

    xor a
    ld b, $7f
    add [hl]
    ld bc, $0db3
    ld [bc], a
    ld bc, $010a
    db $10
    dec bc
    ld d, $09
    ld [hl+], a
    dec e
    nop
    ccf
    ld [hl+], a
    dec e
    ld b, c
    ld b, b
    ccf
    ld b, e
    add b
    ld a, a
    and l
    ld b, $a2
    ld b, c
    jr nz, jr_003_5c31

    dec b
    nop
    ldh [$28], a
    ret nz

    inc [hl]
    ret z

    ld b, d
    ld [hl+], a
    call c, $0144
    cp $89
    ld b, $84
    add hl, bc
    ld b, b
    add b
    jr z, jr_003_5c46

    ld [hl], a
    adc b
    inc hl
    call c, $fe01
    xor [hl]
    ld [bc], a
    or e
    add h
    ld b, $13
    rlca
    ld [$3003], sp
    rrca
    ld b, b
    rra
    rst $38
    nop
    adc l
    ld b, $20
    ld bc, $2a80
    sub b
    inc bc
    ld a, a
    ld a, [hl+]
    nop
    rlca
    ld [de], a
    nop
    db $ed
    ld [de], a
    ld bc, $01fe
    cp $b0
    inc bc
    add c
    nop
    ld a, a
    adc a
    rlca
    ld h, $a5
    ld b, $c2
    rlca
    ld [$fc07], sp
    inc bc
    ld [$10f7], sp
    rst $28
    xor e
    rlca
    ld c, b
    add e
    rlca
    ld b, b
    adc e
    rlca
    inc h
    ccf
    nop
    ccf
    rst $38
    ld b, [hl]
    nop
    rst $38
    inc b
    nop
    rst $38
    rst $38
    nop
    rst $38
    sbc h
    rlca
    add h
    rst $38
    rra
    nop
    nop
    inc bc
    inc bc
    dec c
    ld c, $17
    jr @+$31

    jr nc, @+$41

    jr nz, jr_003_5d4a

    ld h, b
    ld a, a
    ld b, b
    ld a, a
    ld c, b
    ld a, a
    ld b, l
    ld e, a
    ldh [$df], a
    ld [c], a
    xor a
    ld a, [c]
    sub a
    ld hl, sp-$76
    rst $38
    ld [hl], l
    ld a, a
    xor c
    nop
    nop
    ld bc, $0cf4
    ld b, c
    ld a, [$1106]
    cp $c2
    ld a, [$f606]
    ld c, $e9
    rra
    pop de
    ccf
    and c
    ld a, a
    ld h, d
    cp $bc
    db $fc
    nop
    nop
    xor a
    nop
    jr nz, jr_003_5d2b

    ld e, a
    ld h, b
    ld e, a
    ld l, b
    ld a, a
    push hl
    xor a
    ldh a, [$97]
    ld a, [$f89f]
    ld l, l

jr_003_5d2b:
    ld a, a
    and a
    nop
    ld b, b
    ld bc, $38c8
    adc b
    nop
    jr z, jr_003_5d46

    ld [bc], a
    ld a, [$fdc6]
    rrca
    pop af
    rra
    pop de
    ccf
    ld [c], a
    ld a, [hl]
    cp h
    db $fc
    jr nz, @+$22

    add e

jr_003_5d46:
    add e
    adc b
    nop
    inc b

jr_003_5d4a:
    ld [de], a
    ld h, l
    ld [hl], l
    ld c, a
    ld a, a
    ld b, l
    ld a, a
    ld b, b
    ld a, a
    rst $08
    rst $10
    ld hl, sp-$41
    xor $9f
    ld a, [c]
    sub a
    ld a, [$7f6f]
    xor l
    nop
    nop
    dec d
    ld a, $c2
    cp $02
    ld a, [$fe06]
    add $e9
    ccf
    pop af
    rst $18
    pop hl
    cp a
    and d
    cp $fc
    db $fc
    jr jr_003_5d8e

    inc a
    inc h
    ld b, c
    ld a, [hl]
    ld b, d
    rlca
    inc a
    inc h
    jr @+$1a

    nop
    nop
    ld b, $06
    ld b, c
    rrca
    add hl, bc
    ld bc, $0606
    dec [hl]
    nop
    inc bc
    inc c

jr_003_5d8e:
    inc e
    ld l, $32
    ld b, c
    ld a, $22
    add hl, bc
    inc a
    inc h
    jr jr_003_5dc1

    jr nz, jr_003_5dcb

    nop
    jr nz, jr_003_5d9e

jr_003_5d9e:
    ld b, b
    dec h
    nop
    ld b, $0f
    rrca
    add hl, de
    db $10
    jr nz, jr_003_5dc8

    ld h, b
    ld [hl+], a
    ld b, b
    ld de, $88c8
    adc h
    adc b
    add a
    add a
    add h
    add h
    add [hl]
    add d
    rst $00
    add a
    ld h, h
    ld b, h
    ld a, $24
    dec de
    dec de
    dec h
    nop
    inc bc

jr_003_5dc1:
    add b
    add b
    ldh a, [$f0]
    ld b, d
    sbc b
    adc b

jr_003_5dc8:
    ld bc, $f0f8

jr_003_5dcb:
    ld b, d
    jr @+$0a

    ld a, [bc]
    ld hl, sp-$10
    db $10
    ld [$1010], sp
    ldh [$e0], a
    rlca
    rlca
    inc c
    ld [hl+], a
    ld [$1105], sp
    db $10
    ld h, c
    ld h, c
    pop bc
    add c
    inc hl
    add b
    ld bc, $8383
    inc hl
    add h
    rlca
    add [hl]
    add h
    ld b, a
    ld b, e
    ld h, h
    ld b, h
    ld a, $34
    jp $0300


    dec h
    add b
    inc b
    nop
    nop
    cp $fe
    ld de, $0122
    inc bc
    pop af
    pop hl
    ld e, $1e
    inc hl
    db $10
    ld bc, $e0f0
    inc hl
    db $10
    ld bc, $e0e0
    inc hl
    nop
    ld [bc], a
    ld [hl], b
    ld [hl], b
    ret c

    ld [hl+], a
    adc b
    inc bc
    add a
    add a
    rst $00
    add b
    inc hl
    ld b, b
    ld bc, $4060
    inc hl
    jr nz, @-$1e

    dec h
    jr nc, jr_003_5e47

    jr jr_003_5e39

    inc c
    inc c
    inc bc
    inc bc
    inc c
    inc c
    ld a, [de]
    ld [de], a
    ld sp, $6321
    ld b, c
    add $82
    adc h
    inc b

jr_003_5e39:
    jr c, jr_003_5e73

    ld l, h
    ld b, h
    add h
    add h
    adc [hl]
    add [hl]
    adc e
    adc c
    pop de
    sub c
    ld h, d
    ld h, d

jr_003_5e47:
    inc [hl]
    inc h
    jr c, jr_003_5e63

    inc hl
    ldh [rTIMA], a
    jr c, @+$1a

    inc c
    inc b
    ld b, $02
    ld b, c
    inc bc
    ld bc, $0601
    ld [bc], a
    ld b, c
    inc c
    inc b
    inc bc
    ld [$8c08], sp
    inc b
    and h

jr_003_5e63:
    ld bc, $03a6
    ld hl, $121a
    inc c
    ret z

    nop
    db $ec
    inc bc
    jr c, @+$3a

    db $10
    ld l, h
    ld b, d

jr_003_5e73:
    ld a, h
    ld b, h
    ld b, $10
    ld l, h
    jr c, jr_003_5ea2

    nop
    jr c, @+$12

    ld b, c
    stop
    nop

jr_003_5e81:
    db $10
    ld a, [hl+]
    nop
    add e
    nop
    ei
    inc h
    ld b, b
    nop
    nop
    jp $0a01


    ld [$0810], sp
    jr jr_003_5e97

    inc c
    ld b, $06
    inc bc

jr_003_5e97:
    rlca
    dec h
    nop
    ld [bc], a
    inc bc
    inc bc
    inc b

jr_003_5e9e:
    and e
    ld [bc], a
    inc de
    nop

jr_003_5ea2:
    inc c
    inc h
    ld [$1842], sp
    stop
    db $10
    ld b, c
    db $10
    jr nc, jr_003_5eaf

    db $10

jr_003_5eaf:
    jr nc, jr_003_5e81

    nop
    db $e3
    inc bc
    add hl, bc
    db $10
    stop
    and h
    ld bc, $03c4
    ret nz

    ret nz

    add b
    add b
    push de
    nop
    jp hl


    dec b
    ld de, $2019
    jr nz, jr_003_5f09

    ldh [$87], a
    ld [bc], a
    ld e, d
    ld [bc], a
    ld [$0000], sp
    add e
    ld [bc], a
    jr nc, jr_003_5ed7

    inc a
    inc e

jr_003_5ed7:
    ld e, [hl]
    inc hl
    ld a, [hl]
    ld [bc], a
    cp l
    ld a, [hl]
    ld a, [hl]
    ld [hl+], a
    nop
    nop
    inc a
    jr nc, jr_003_5ee4

jr_003_5ee4:
    add l
    ld [bc], a
    add d
    inc b
    inc a
    inc a
    sbc c
    ld a, [hl]
    ld a, [hl]
    add h
    ld [bc], a
    sub l
    nop
    jr jr_003_5e9e

    ld [bc], a
    ld b, e
    ld b, $00
    nop
    jr nz, jr_003_5f12

    inc a
    ld e, $5c
    ld h, $7e
    inc b

Call_003_5f00:
    inc a
    nop
    inc e
    nop
    inc b
    and [hl]
    nop
    db $fd
    ld b, c

jr_003_5f09:
    nop
    rst $38
    ld [bc], a
    nop
    ld a, a
    add b
    ld b, c
    cp a
    ret nz

jr_003_5f12:
    add hl, bc
    ld e, a

jr_003_5f14:
    ldh [rVBK], a
    ld [hl], b
    inc hl
    ld a, h
    jr jr_003_5f5a

    rlca
    rrca
    dec hl
    nop
    dec b
    rlca
    rlca
    dec de
    inc e
    ccf
    jr nz, jr_003_5f68

    ld a, a
    ld b, b
    ld bc, $c0bf
    ld b, d
    rst $38
    add b
    ld bc, $c0bf
    and e
    nop
    or b
    rlca
    ccf
    jr nc, jr_003_5f88

    ld a, a
    add [hl]
    rst $38
    ld a, l
    ld a, l
    adc d
    nop
    ld h, h
    ld [bc], a
    rlca
    rst $38
    rrca
    and e
    inc bc
    ld a, [bc]
    inc de

jr_003_5f49:
    db $fd
    inc bc
    ld a, [$dc06]
    inc a
    jr c, jr_003_5f49

    call nz, $02fc
    cp $fc
    db $fc
    or b
    or b
    ret z

jr_003_5f5a:
    ld a, b
    db $f4
    adc h
    ld b, c
    db $fc
    inc b
    dec b
    db $f4
    inc c
    ld hl, sp+$08
    db $fc
    inc d
    add l

jr_003_5f68:
    inc bc
    ld b, [hl]
    ld bc, $38d8
    add a
    inc bc
    jr c, jr_003_5f14

    ld bc, $0b24
    ld b, $07
    dec bc
    inc c
    rla
    jr jr_003_5f9a

    db $10
    ld l, a
    ld [hl], b
    xor a
    ldh a, [rSTAT]
    rst $38
    and b
    ldh [$4c], a
    ld a, a
    ld h, b
    cpl

jr_003_5f88:
    dec [hl]
    ccf
    dec [hl]
    rla
    jr jr_003_5f99

    inc c
    rlca
    rlca
    ld c, $0e
    pop af
    rst $38
    ld a, l
    add e
    db $fd
    inc bc

jr_003_5f99:
    rst $38

jr_003_5f9a:
    inc bc
    and $1a
    sbc $3e
    sbc $36
    rst $18
    ld [hl-], a
    call z, $ee38
    ld e, $f7
    add hl, de
    rst $10
    add hl, sp
    sbc $3e
    ld h, b
    ldh [$80], a
    add b
    ld [hl], e
    ld [hl], e
    rst $28
    sbc h
    rst $38
    sub b
    rst $28
    or h
    ld e, a
    ld l, c
    ld a, a
    ld c, d
    rst $38
    ld [c], a
    rst $38
    sub b
    ei
    adc h
    cp e
    add $bf
    pop bc
    ld e, a
    ld h, b
    scf
    jr c, jr_003_601b

    ld a, a
    add e
    rst $38
    ld a, a
    ld a, a
    ldh [$a3], a
    inc bc
    ld h, l
    ld d, $b8
    cp $ae
    rst $30
    xor l
    rst $38
    dec b
    rst $38
    ld b, l
    db $fd
    rlca
    cp $06
    db $fc
    inc b
    ld a, [$f20e]
    ld e, $a2
    ld a, [hl]
    db $e4
    db $fc
    jp $e901


    ld a, [de]
    dec a
    ccf
    db $eb
    call c, $00ff
    rst $38
    inc b
    rst $38
    adc c
    rst $38
    ld b, d
    rst $28

jr_003_5ffe:
    jr nc, @-$0f

Jump_003_6000:
    jr jr_003_6081

    add h
    cp a
    jp nz, $615e

    cpl
    jr nc, jr_003_6045

    inc a
    ld b, a
    add h
    inc bc
    cp e
    add e
    nop
    nop
    dec bc
    ld b, $07
    rlca
    dec b
    dec b
    ld b, $03
    ld [bc], a

jr_003_601b:
    ld [bc], a
    inc bc
    ld bc, $af01
    ld [bc], a
    ld e, h
    inc bc
    inc e
    inc e
    ld a, $32
    ld b, d
    ccf
    ld hl, $7f0b
    ld h, c

jr_003_602d:
    cp $92
    rst $38
    adc a
    cp $8f
    ld a, h
    ld a, h
    jr @+$1a

    adc a
    ld [bc], a
    ld b, b
    inc de
    rrca
    add hl, bc
    dec e
    inc de
    ld a, [de]
    rla
    rla
    dec e
    ccf
    add hl, sp

jr_003_6045:
    ld e, l
    ld [hl], e
    cp d
    or $bc
    call z, $bcdc
    cp b
    ld hl, sp-$4b
    nop
    call nc, $25e0
    jr jr_003_606e

    ccf
    daa
    ld a, a
    ld h, c
    cp $82
    ld a, [hl]
    ld b, d
    ccf
    ld hl, $2f3f
    jr nc, @+$32

    inc bc
    rrca
    dec d
    ld a, [de]
    cpl
    dec sp
    ccf
    jr nc, jr_003_60c8

    ld h, h

jr_003_606e:
    ld sp, hl
    adc a
    rst $38
    adc a
    rst $18
    xor a
    cp c
    rst $28
    ld a, a
    ld h, b
    cpl
    jr nc, jr_003_5ffe

    inc bc
    cp b
    rlca
    add [hl]
    rst $38
    adc a

jr_003_6081:
    rst $38
    ld [hl], c
    ld [hl], c
    ldh [$f0], a
    add h
    nop
    and [hl]
    ld [bc], a
    add h
    cp $02
    ld b, c
    rst $38
    ld bc, $ef05
    ld de, $1ff1
    cp $1e
    add e
    inc bc
    ld d, [hl]
    rlca
    ret z

    ld hl, sp+$04
    db $fc
    ld [$f0f8], sp
    ldh a, [$83]
    ld [bc], a
    cp $01
    rra
    jr jr_003_602d

    nop
    ld c, h
    dec d
    ld a, a
    ld b, b
    cp e
    push hl
    sbc a
    or $bf
    rst $30
    sbc a
    ldh [rIE], a
    add b
    rst $38
    ldh a, [$7f]
    ld b, c
    ld [c], a
    rst $38
    sbc [hl]
    rst $38
    adc h
    rst $38
    xor c
    inc bc
    ld h, b
    nop
    db $fc

jr_003_60c8:
    and h
    inc b
    rst $00
    ld bc, $06fa
    add e
    inc bc
    ld d, h
    inc b
    or b
    ld [hl], b
    ldh a, [$f0]
    jr nc, jr_003_6119

    ldh a, [rNR10]
    xor d
    ld [bc], a
    di
    ld bc, $0202
    and e
    dec b
    ld [$0401], sp
    inc b
    and h
    ld [bc], a
    ld a, [hl]
    adc e
    ld bc, $07fd
    nop
    jr z, jr_003_611d

    ld d, c
    ld d, l
    ld b, a
    ld d, a
    ld d, d
    ld b, c
    ld b, l
    ld b, b
    jr @+$4f

    ld d, b
    ld b, l
    ld b, d
    ld d, l
    ld d, a
    ld d, a

Jump_003_6100:
    ld a, [hl]

Call_003_6101:
    ld a, h
    ld a, l
    ld a, l
    inc [hl]
    add b
    adc l
    sbc c
    add c
    or l
    add b
    or h
    add l
    or c
    sbc [hl]
    sbc a
    or h
    sbc b
    adc e
    inc b
    ld e, d
    ldh [rNR42], a
    xor $ee

jr_003_6119:
    ld bc, $0011
    ld d, l

jr_003_611d:
    nop
    ld de, $3300
    nop
    ld d, c
    nop
    ld d, l
    ld b, b
    ld d, c
    rst $38
    rst $38
    sbc l
    cp l
    add hl, bc
    dec d
    pop de
    ld b, l
    ld de, $4105
    ld d, l
    ld c, c
    push de
    xor h
    db $fc
    add e
    rlca
    call $2305
    ldh [rNR42], a
    xor b
    xor b
    ld c, b
    add sp, $5c
    ld e, h
    ld a, [bc]
    ld d, d
    ld b, $16
    ld [bc], a
    or [hl]
    xor d
    or d
    or [hl]
    and [hl]
    db $fc
    db $fc
    or [hl]
    ld a, [$a901]
    add hl, hl
    dec b
    ld l, c
    ld b, l
    add hl, hl
    ld bc, $3b62
    call c, $00fe
    adc h
    add hl, sp
    nop
    inc b
    inc d
    inc c
    jr nc, jr_003_6173

    ld a, d
    ld b, d
    ld b, $fa
    ld [bc], a
    ld b, $f8
    ld b, $45
    db $fd
    inc bc
    dec b

jr_003_6173:
    ld sp, hl
    rlca
    ld [bc], a
    rst $38
    db $fc
    cp $c8
    inc b
    add hl, de
    ld a, [bc]
    nop
    inc bc
    nop
    rlca
    nop
    rrca
    nop
    rra
    nop
    ccf
    nop
    jp $e402


    rlca
    rra
    ldh [$80], a
    rst $38
    inc a
    ccf
    ld bc, $ff01
    ld [hl+], a
    ld bc, $6c00
    inc hl
    ld bc, $24e0
    ld de, $5456
    ld d, e
    ld h, h
    add a
    ld bc, $0e69
    ld bc, $7b89
    nop
    ld [hl], d
    ld d, d
    ld bc, $010e
    add [hl]
    ld h, [hl]
    ld bc, $0060
    adc d
    ld c, $b2
    nop
    nop
    or d
    nop
    nop
    or d
    ld bc, $6001
    adc b
    add l
    ld [hl+], a
    ld bc, $1401
    dec bc
    dec h
    ld a, [bc]
    nop
    ld [$0087], sp
    ld sp, $0087
    ld sp, $0087
    ld hl, $6c08
    adc c
    nop
    ld h, [hl]
    ld bc, $5655
    inc de
    inc h
    dec h
    dec sp
    nop
    ld [$0087], sp
    ld e, c
    add a
    nop
    ld e, c
    inc b
    or d
    and a
    nop
    or d
    and a
    add e
    nop
    ld h, $07
    ld h, h
    add a
    ld bc, $0050
    nop
    inc de
    inc hl
    dec h
    dec b
    nop
    ld [$0087], sp

Jump_003_6200:
    add c

Jump_003_6201:
    add [hl]
    nop
    add c
    ld [$24a7], sp
    dec sp
    and a
    inc h
    dec sp
    and a
    inc h
    dec c
    ld [hl+], a
    inc c
    add hl, bc
    dec c
    ld bc, $5857
    inc de
    inc hl
    dec b
    ld b, $38
    rlca
    adc h
    nop
    add [hl]
    add e
    nop
    xor e
    dec c
    and a
    ld [$0523], sp
    ld a, $26
    dec b
    ld a, $26
    ld [$3605], sp
    dec b
    ld [$0083], sp
    dec l
    ld [bc], a
    inc hl
    dec b
    ld b, $22
    and a
    nop
    inc hl
    add h
    nop
    adc b
    add l
    nop
    push de
    ld bc, $3906
    add a
    nop
    xor l
    rlca
    ld [hl], $05
    dec b
    dec c
    dec b
    inc bc
    dec b
    dec c
    add l
    nop

jr_003_6252:
    call $0505
    ld a, $3b
    dec sp
    ld h, $0d
    add [hl]
    nop
    reti


    add h
    ld bc, $2200
    dec b
    add h
    ld bc, $0200
    inc bc
    dec b
    dec b
    ld h, d
    xor c
    ld h, d
    xor c
    ld bc, $aaa9
    ccf
    xor b
    rst $38
    ld d, $2a
    db $10
    ld de, $2614
    nop
    nop
    ld a, [hl+]
    nop
    nop
    add c
    nop
    add hl, hl
    daa
    nop
    nop
    add hl, hl
    nop
    nop
    daa
    add d
    nop
    nop
    add e
    nop
    nop
    inc bc
    nop
    add hl, hl
    daa
    add e
    add h
    nop
    rrca
    inc b
    nop
    nop
    add hl, hl
    daa
    add h
    ld [hl+], a
    nop
    add e
    nop
    inc c
    ld [bc], a
    nop
    add hl, hl
    add l
    jp $3000


    add h
    nop
    add hl, hl
    dec bc
    add [hl]
    nop
    db $10
    ld de, $2a14
    nop
    jr z, jr_003_62db

    nop
    add a
    ld a, [hl+]
    add l
    nop
    jr nz, @+$06

    ld a, [hl+]
    nop
    adc b
    jr z, @+$28

    add e
    nop
    add hl, hl
    dec b
    nop
    nop
    daa
    adc c
    nop
    ld a, [hl+]
    add h
    nop
    ld d, c
    rlca
    ld a, [hl+]
    jr z, jr_003_6252

    daa
    ld a, [hl+]
    ld [de], a
    inc de
    ld d, $83
    nop
    jr jr_003_62e0

jr_003_62db:
    add c
    jr z, jr_003_6304

    nop
    db $10

jr_003_62e0:
    rlca
    inc hl
    ld b, $04
    nop
    ld sp, $0d13
    nop
    add e
    nop
    ld d, d
    inc hl
    nop
    add e
    nop
    ld a, $0a
    add hl, hl
    daa
    nop
    db $10
    ld de, $0015
    ld [de], a
    inc de
    dec c
    ld a, [hl+]
    add h
    nop
    add e
    ld bc, $2729
    add e

jr_003_6304:
    nop
    ld b, d
    inc hl
    nop
    add [hl]
    nop
    sbc h
    add h
    nop
    jr nz, @+$03

    jr z, jr_003_6337

    jp Jump_003_6200


    add e
    nop
    adc a
    add e
    nop
    ld c, $02
    ld h, $00
    nop
    call nz, $af00
    add e
    nop
    and b
    add l
    nop
    xor h
    add h
    nop
    inc l
    add e
    nop
    ret nz

    add l
    nop
    sub [hl]
    inc bc
    db $10
    ld de, $1616
    add h
    nop

jr_003_6337:
    sub b
    inc bc
    add hl, hl
    daa
    jr nz, jr_003_6375

    inc h
    add hl, sp
    ld bc, $0028
    add e
    nop
    ld l, c
    add e
    nop
    ld d, d
    ld [bc], a
    jr z, @+$28

    ld a, [hl+]
    add h
    nop
    or [hl]
    nop
    nop
    add e
    nop
    ld a, b
    nop
    ld h, $84
    nop
    pop af
    add [hl]
    nop
    db $fc
    add e
    nop
    cp e
    nop
    ld a, [hl+]
    add l

jr_003_6362:
    nop
    ld a, [hl+]
    add e
    nop
    ld e, h
    add h
    nop
    inc c
    add h
    nop
    sub $02
    ld a, [hl+]
    nop
    ld d, $83
    nop
    ld b, d
    add [hl]

jr_003_6375:
    ld bc, $8323
    nop
    ld b, c
    jp $c000


    add l
    nop
    adc $09
    nop
    nop
    jr z, jr_003_6395

    ld de, $2a15
    ld sp, $0913
    add h
    ld bc, $000b
    ld d, $41
    ld c, $11
    nop
    inc d

jr_003_6395:
    add e
    nop
    add d
    add h
    nop
    ld [hl], e
    ld [bc], a
    ld b, $00
    nop
    add e
    nop
    pop hl
    ld bc, $2600
    push bc
    nop
    pop bc
    add h
    ld bc, $c309
    ld bc, $0331
    nop
    ld h, $16
    ld [de], a
    add e

jr_003_63b4:
    ld bc, $0051
    ld c, $84
    nop
    ccf
    dec b
    nop
    nop

Jump_003_63be:
    ld h, $68
    ld l, c
    ld h, a
    add e
    nop
    ld b, d
    add l
    nop
    ret nz

    add [hl]
    nop
    or c
    add e
    ld bc, $0084
    ld c, b
    add a
    nop
    ld [bc], a
    add h
    nop
    push bc
    add $00
    add d
    add h
    ld bc, $009a
    jr z, jr_003_6362

    nop
    adc a
    ld bc, $1132
    add e
    nop
    pop hl
    add e
    nop
    sbc $41
    rrca
    inc de
    ld [bc], a
    add hl, bc
    ld de, $8314
    nop
    jp hl


    nop
    ld b, b
    ld [hl+], a
    add hl, sp
    nop
    ld hl, $2141
    jr nc, @+$2a

    ld hl, $3003
    ld [de], a
    inc de
    inc c
    call nz, $e701
    add h
    ld bc, $03e0
    ld [de], a
    inc de
    inc c
    rrca
    add h
    ld bc, $23f0
    ld hl, $4f00
    jr nc, jr_003_6439

    ld [bc], a
    jr nc, @+$14

    inc de
    ld [hl+], a
    ld c, b
    adc b
    ld [bc], a
    nop
    ld [hl-], a
    ld hl, $3003
    ld hl, $1312
    ld b, c
    jr nc, @+$23

    ld bc, $1312
    dec h
    jr nc, jr_003_63b4

    ld bc, $03ef
    rlca
    ld b, $06
    inc bc
    add e

jr_003_6439:
    nop
    ld [hl], l
    nop
    ld l, b
    daa
    ld l, c
    nop
    ld h, a
    ld [hl+], a
    nop
    rlca
    ld d, $00
    ld d, $77
    ld [hl], a
    db $10
    ld de, $8916
    ld [bc], a
    ld e, b
    add l
    ld [bc], a
    ld h, b
    ld [hl+], a
    nop
    nop
    ld c, a
    and e
    ld [bc], a
    ld h, e
    add a
    ld [bc], a
    ld a, c
    add h
    ld [bc], a
    add d
    adc [hl]
    ld [bc], a
    ld [hl], d
    dec l
    nop
    adc d
    ld [bc], a
    ld l, a
    inc [hl]
    ld l, c
    ld bc, $0b0b
    jr z, @+$4b

    dec hl
    ld l, c
    ld a, [hl+]
    ld c, c
    ld h, $0b
    add h
    ld [bc], a
    pop af
    add a
    ld [bc], a
    pop af
    call z, $f502
    dec [hl]
    dec bc
    ld a, $49
    ld bc, $7b7b
    ccf
    ld c, [hl]
    ld h, $7b
    add h
    inc bc
    ld l, c
    add a
    inc bc
    ld l, c
    call z, Call_003_6d03
    dec [hl]
    ld a, e
    ldh a, [rNR51]
    inc bc
    ld c, e
    db $e4
    ld [hl], b
    ld a, e
    db $e4
    ld [hl], a
    nop
    rst $38
    dec d
    nop
    daa
    ld a, [hl+]
    nop
    nop
    jr z, jr_003_64a6

jr_003_64a6:
    daa
    ld a, [hl+]
    jr z, jr_003_64d0

    nop
    nop
    dec h
    nop
    nop
    ld a, [hl+]
    nop
    add hl, hl
    nop
    nop
    daa
    jp $1100


    jp $1400


    dec b
    nop
    daa
    nop
    add hl, hl
    nop
    ld h, $85
    nop
    ld a, [de]
    nop
    daa
    add h
    nop
    jr @-$3a

    nop
    rlca
    ld [bc], a
    ld h, $00

jr_003_64d0:
    rra
    inc hl
    nop
    dec b
    jr z, jr_003_64d6

jr_003_64d6:
    daa
    dec h
    nop
    nop
    add h
    nop
    add hl, bc
    nop
    add hl, hl
    add e
    nop
    ld a, [hl+]
    nop
    add hl, hl
    add e
    nop
    dec d
    add e
    nop
    ld b, a
    ld bc, $2628
    add h
    nop
    ld d, $03
    add hl, hl
    dec h
    nop
    daa
    add l
    nop
    ld [hl], $00
    add hl, hl
    add h
    nop
    ld e, a
    add e
    nop
    ld b, a
    nop
    rra
    add l
    nop
    ld b, b
    add h
    nop
    ld b, c
    ld bc, $2800
    add l
    nop
    jr nz, jr_003_6514

    nop
    dec h
    nop
    rra
    daa

jr_003_6514:
    nop
    ld h, d
    inc a
    add h
    nop
    add d
    nop
    nop
    call nz, $8700
    ld [bc], a
    dec h
    nop
    rra
    add e
    nop
    stop
    ld h, $85
    nop
    ld sp, $0083
    ld de, $0084
    ld d, c
    nop
    rra
    add h
    nop
    adc d
    add e
    nop
    scf
    add e
    nop
    adc d
    ld b, c
    rra
    nop
    add h
    nop
    cp h
    add h
    nop
    dec l
    add e
    nop
    ld [de], a
    add h
    nop
    rla
    add h
    nop
    add hl, sp
    inc b
    rra
    ld h, $1f
    nop
    ld a, [hl+]
    add l
    nop
    ld [hl], $87
    nop
    cp a
    ld b, c
    rra
    nop
    add e
    nop
    add hl, bc
    add a
    nop
    ld c, a
    nop
    ld b, l
    dec sp
    ld b, [hl]
    nop
    ld b, a
    add h
    nop
    ld hl, $2802
    ld h, $2a
    add h
    nop
    ld a, [de]
    nop
    ld a, [hl+]
    rst $00
    nop
    ret c

    nop
    ld h, $85
    nop
    ld [hl], d
    call nz, $1a00
    push bc
    nop
    and e
    ld bc, $2a00
    push bc
    ld bc, $c51f
    nop
    ld [hl], $e4
    add hl, hl
    ld b, [hl]
    db $e4
    add hl, hl
    nop
    rst $38
    add hl, hl
    ld h, h
    ld [bc], a
    ld c, b
    inc sp
    dec l
    dec h
    inc sp
    inc bc
    ld c, b
    ld c, b
    inc sp
    inc bc
    add a
    nop
    dec c
    dec h
    ld c, b
    add e
    nop
    ld de, $0b27
    ld bc, $4848
    ld [hl+], a
    ld a, d
    nop
    ld a, c
    add e
    nop
    inc sp
    ld bc, $4848
    daa
    ld a, e
    ld a, [hl+]
    ld c, b
    rst $38
    dec b
    ld e, h
    ld h, c
    ld h, c
    ld h, d
    ld d, [hl]
    ld h, e
    ld [hl+], a
    ld h, c
    inc e
    ld e, [hl]
    ld h, e
    ld de, $5114
    inc bc
    ld d, e
    nop
    ld [de], a
    inc de
    ld h, d
    ld h, e
    inc de
    add hl, bc
    ld de, $0014
    db $10
    ld de, $6216
    ld h, e
    ld d, $12
    inc de
    dec c
    nop
    ld [de], a
    inc de
    add e
    nop
    inc e
    ld bc, $1600
    ld [hl+], a
    nop
    ld [$1616], sp
    ld h, d
    ld h, e
    ld l, c
    ld l, c
    ld h, a
    nop
    ld l, b
    ld [hl+], a
    ld l, c
    ld [bc], a
    ld h, d
    ld h, e
    ld c, c
    dec h
    dec bc
    inc c
    ld c, c
    ld h, d
    ld h, e
    ld c, [hl]
    ld a, c
    ld a, d
    ld a, d
    ld a, c
    ld a, d
    ld a, d
    ld c, [hl]
    ld h, d
    ld h, e
    rst $00
    nop
    ld c, [hl]
    ld bc, $5d62
    inc hl
    ld h, b
    nop
    ld d, d
    add e
    nop
    ld c, h
    ld a, [bc]
    ld h, b
    ld h, b
    ld d, d
    ld h, c
    ld h, c
    ld d, e
    ld a, c
    ld a, d
    ld c, [hl]
    ld h, d
    ld e, h
    add e
    nop
    ld l, b
    ld [hl+], a
    ld a, d
    ld [bc], a
    ld c, [hl]
    ld h, d
    ld h, e
    add h
    nop
    ld [hl], c
    add e
    nop
    ld d, [hl]
    nop
    ld h, e
    add h
    nop
    ld c, c
    nop
    ld d, b
    ld [hl+], a
    ld h, b
    add h
    nop
    ld a, b
    ld bc, $5179
    jp $0800


    add e
    nop
    ld c, d
    dec b
    ld a, d
    ld a, d
    ld a, c
    ld h, d
    dec b
    ld h, e
    add h
    nop
    add a
    inc hl
    ld h, b
    inc bc
    ld h, e
    ld a, c
    ld h, d
    ld e, h
    inc h
    ld h, c
    inc b
    ld e, [hl]
    ld h, e
    ld a, d
    ld h, d
    ld h, e
    ld [hl+], a
    nop
    ld [bc], a
    rlca
    inc l
    ld h, d
    add a
    nop
    or h
    nop
    inc bc
    add h
    nop
    cp l
    dec bc
    dec bc
    dec bc
    ld d, b
    ld h, b
    ld h, b
    ld e, a
    ld h, e
    ld a, c
    ld d, c
    ld d, e
    ld a, c
    ld a, d
    adc e
    nop
    sub d
    ld [bc], a
    ld a, d
    ld h, d
    ld h, e
    daa
    ld a, e
    nop
    ld h, d
    rst $38
    add hl, hl
    dec b
    inc bc
    ld e, h
    ld [hl], b
    ld [hl], b
    ld e, [hl]
    add e
    nop
    ld [$6103], sp
    ld [hl], b
    ld [hl], b
    ld h, c
    inc h
    ld [hl], b
    ld [bc], a
    ld h, c
    ld [hl], b
    ld h, c
    add e
    nop
    dec d
    inc b
    ld h, c
    ld h, c
    ld e, [hl]
    dec b
    ld e, h
    add hl, hl
    ld h, c
    adc d
    nop
    inc h
    dec bc
    ld d, e
    ld a, l
    ld a, l
    ld h, d
    ld e, h
    ld h, c
    ld d, e
    ld a, l
    inc h
    ld a, l
    ld a, h
    inc h
    ld b, c
    ld a, h
    ld a, l
    inc c
    ld a, h
    inc h
    ld a, h
    inc bc
    inc h
    ld a, l
    ld a, h
    ld a, l
    ld a, b
    ld a, b
    ld h, d
    dec b
    ld h, e
    inc hl
    inc bc
    dec b
    inc h
    inc bc
    inc bc
    nop
    nop
    inc bc
    add [hl]
    nop
    ld d, [hl]
    add $00
    ld e, a
    nop
    ld h, d
    add e
    nop
    ld e, b
    nop
    inc h
    rst $00
    nop
    ld l, [hl]
    add h
    nop
    db $76
    inc hl
    ld a, b
    ld [bc], a
    ld d, c
    ld h, c
    ld d, e
    adc [hl]
    nop
    ld e, c
    nop
    cpl
    sbc [hl]
    nop
    ld l, c
    ld [bc], a
    ld d, b
    ld h, b
    ld d, d
    ld [hl+], a
    inc bc
    nop
    ld d, b
    ld [hl+], a
    ld h, b
    inc bc
    ld c, b
    ld c, b
    ld h, b
    ld h, b
    add e
    nop
    ld d, a
    nop

Jump_003_6706:
    nop
    sbc h
    nop
    ld l, c
    nop
    ld [hl], a
    add e
    nop
    ld d, l
    ld [hl+], a
    ld a, [hl-]
    nop
    ld d, c
    ld h, $61
    ld bc, $6305
    ld b, c
    ld a, [hl-]
    dec sp
    nop
    ld a, [hl-]
    sub c
    nop
    ld l, e
    add e
    nop
    ret nz

    ld bc, $5260
    inc h
    ld c, b
    add [hl]
    nop
    ld d, [hl]
    nop
    ld a, b
    inc h
    inc bc
    ld [bc], a
    ld h, d
    dec b
    ld e, l
    daa
    ld h, b
    inc b
    ld d, d
    inc bc
    inc bc
    ld d, c
    ld d, e
    add [hl]
    ld bc, $0e11
    ld h, b
    ld d, d
    inc bc
    ld h, d
    ld e, h
    ld [hl], b
    ld h, c
    ld e, [hl]
    ld h, e
    ld d, b
    ld h, b
    ld h, b
    ld d, d
    ld d, b
    ld e, a
    add a
    ld bc, $832c
    nop
    cp h
    nop
    ld h, d
    add hl, hl
    dec b
    ld [$0363], sp
    inc bc
    ld d, b
    ld d, d
    inc bc
    inc bc
    ld h, d
    ld e, h
    ld b, c
    ld h, c
    ld [hl], b
    dec bc
    ld d, e
    inc bc
    ld d, c
    ld d, e
    ld a, h
    ld a, l
    ld d, c
    ld d, e
    ld d, c
    ld [hl], b
    ld h, c
    ld d, e
    add a
    nop
    ld a, [c]
    nop
    ld h, c
    add h
    nop
    adc c
    rlca
    ld h, d
    dec b
    ld e, h
    ld h, c
    ld e, [hl]
    ld e, h
    ld h, c
    ld e, [hl]
    add l
    ld bc, $8365
    nop
    ld [hl], c
    ld bc, $6362
    add h
    nop
    ld c, e
    add l
    nop
    ld [hl], h
    ld [bc], a
    ld a, l
    ld a, l
    ld a, h
    add e
    nop
    add c
    add h
    nop
    ld e, e
    ld b, c
    ld a, b
    inc bc
    add h
    ld bc, $0028
    ld h, e
    add e
    nop
    ld [hl], b
    add e
    ld bc, $865d
    ld bc, $839a
    ld bc, $8439
    nop
    ld l, h
    add a
    nop
    db $76
    sub b
    ld bc, $05b2
    ld e, l
    ld h, b
    ld e, a
    ld e, l
    ld h, b
    ld e, a
    add l
    ld bc, $8465
    ld bc, $0039
    ld d, d
    sub d
    ld bc, $85d5
    ld bc, $843d
    ld bc, $0034
    ld h, d
    adc c
    nop
    ld h, $83
    nop
    adc d
    nop
    inc h
    add l
    nop
    ld l, a
    sub b
    ld bc, $87d7
    ld [bc], a
    dec h
    nop
    ld d, e
    add [hl]
    nop
    ld l, a
    nop
    ld a, b
    add h
    nop
    add e
    add [hl]
    nop
    ld e, c
    add l
    ld bc, $02d3
    ld a, [hl-]
    dec sp
    ld a, [hl-]
    adc h
    ld [bc], a
    ld b, b
    add l
    nop
    sub a
    add e
    ld [bc], a
    ld h, b
    add e
    nop
    ld [hl], c
    add [hl]
    ld [bc], a
    ld a, [de]
    ld [$3a52], sp
    dec sp
    ld a, [hl-]
    ld a, [hl-]
    dec sp
    ld a, [hl-]
    ld d, b
    ld d, d
    add e
    ld [bc], a
    ld l, [hl]
    ld bc, $2303
    adc l
    ld [bc], a
    ccf
    add l
    nop
    ret


    add h
    ld [bc], a
    add l
    ld bc, $605d
    add h
    ld bc, $83f9
    ld bc, $0765
    ld a, a
    inc hl
    ld a, [hl]
    ld a, a
    inc hl
    ld a, [hl]
    ld h, d
    ld h, e
    add e
    ld [bc], a
    ret


    inc c
    ld a, a
    inc hl
    ld a, [hl]
    inc h
    ld a, [hl]
    ld a, a
    inc h
    ld a, [hl]
    ld a, a
    ld a, [hl]
    ld c, b
    ld c, b
    ld a, a
    add e
    ld [bc], a
    ld a, h
    add h
    nop
    db $fc
    add h
    ld [bc], a
    add l
    add hl, hl
    dec b
    ld [$715d], sp
    ld h, b
    ld [hl], c
    ld [hl], c
    ld h, b
    ld [hl], c
    ld e, a
    ld e, l
    add e
    ld [bc], a
    ei
    ld b, c
    ld [hl], c
    ld h, b
    add h
    inc bc
    ld bc, $7103
    ld h, b
    ld h, b
    ld [hl], c
    adc b
    ld bc, $832e
    nop
    ret nz

    nop
    ld e, a
    rst $38
    ld bc, $2a00
    ld h, $00
    inc bc
    jr z, jr_003_6877

jr_003_6877:
    jr z, jr_003_689f

    call nz, $0400
    call nz, $0b00
    add e
    nop
    inc c
    ld [bc], a
    jr z, jr_003_6885

jr_003_6885:
    nop
    add hl, hl
    ld hl, $0033
    ld [hl+], a
    ld e, c
    inc bc
    ld h, l
    nop
    nop
    ld h, [hl]
    ld [hl+], a
    ld e, c
    ld [hl+], a
    ld d, h
    inc bc
    ld d, a
    inc sp
    inc sp
    ld e, b
    ld [hl+], a
    ld d, h
    inc hl
    inc bc
    nop

jr_003_689f:
    inc sp
    call nz, Call_003_5400
    adc c
    nop
    ld d, b
    sub e
    nop
    ld d, b
    ldh a, [$27]
    nop
    ld d, b
    inc hl
    ld c, b
    nop
    inc sp
    call nz, $a400
    nop
    inc hl
    daa
    inc sp
    nop
    inc hl
    adc c
    nop
    xor d
    sub e
    nop
    xor d
    ld [bc], a
    inc hl
    inc sp
    dec l
    adc b
    nop
    xor l
    nop
    inc bc
    add e
    nop
    and h
    ld [bc], a
    inc sp
    inc sp
    inc hl
    add hl, hl
    ld [hl], d
    rst $38
    dec b
    nop
    rlca
    rlca
    ld b, $08
    ld [$0026], sp
    nop
    ld a, [hl+]
    add h
    nop
    add hl, bc
    inc c
    nop
    ld a, [de]
    nop
    add hl, hl
    daa
    nop
    nop
    ld a, [de]
    ld a, [de]
    nop
    ld a, [bc]
    inc hl
    daa
    ld [hl+], a
    nop
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [de]
    dec hl
    add hl, hl
    nop
    ld a, [bc]
    dec hl
    nop
    inc hl
    ld a, [de]
    nop
    jp $2400


    rlca
    ld a, [hl+]
    nop
    dec hl
    add hl, hl
    daa
    nop
    ld a, [de]
    inc e
    call nz, $2400
    dec bc
    ld a, [hl+]
    nop
    inc hl
    nop
    dec hl
    nop
    nop
    rlca
    rlca
    inc l
    ld [$c708], sp
    nop
    ld c, $01
    jr z, jr_003_6946

    ld [hl+], a
    nop
    nop
    ld a, [de]
    inc h
    nop
    jp $1b00


    ld bc, $230a
    inc hl
    nop
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    nop
    dec hl
    jr z, jr_003_6935

jr_003_6935:
    ld a, [bc]
    dec hl
    ld a, [de]
    inc hl
    add h
    nop
    ld h, a
    ld [hl+], a
    nop
    nop
    dec hl
    add e
    nop
    jr @+$07

    dec hl
    ld a, [bc]

jr_003_6946:
    ld a, [bc]
    nop
    jr nz, jr_003_6980

    dec h
    scf
    inc bc
    nop
    rlca
    rlca
    inc bc
    add h
    nop
    inc b
    ld [$2628], sp
    ld a, [hl+]
    nop
    jr z, jr_003_695b

jr_003_695b:
    nop
    ld h, $17
    adc c
    nop
    ld e, c
    adc d
    nop
    ld h, d
    ld b, $29
    daa
    ld a, [bc]
    inc e
    ld a, [de]
    inc hl
    ld a, [hl+]
    add l
    nop
    ld [hl], h
    ld bc, $4848
    add e
    nop
    add hl, de
    add e
    nop
    add b
    ld [$3400], sp
    inc sp
    inc sp
    dec l
    inc sp
    inc sp

jr_003_6980:
    ld c, b
    ld h, $86
    nop
    ld bc, $2807
    nop
    daa
    nop
    jr z, jr_003_698c

jr_003_698c:
    ccf
    ld l, [hl]
    inc h
    ld e, c
    inc b
    ld l, a
    add hl, de
    jr @+$1a

    add hl, de
    add a
    nop
    and [hl]
    jp $2500


    dec b
    dec hl
    ld a, [hl+]
    nop
    ld a, [bc]
    inc e
    nop
    add h
    nop
    ld [hl], d
    nop
    ld a, [hl+]
    add e
    nop
    cp [hl]
    call nz, Call_003_7f00
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    nop
    jr z, jr_003_69e8

    inc sp
    inc sp
    inc bc
    inc sp
    ld c, b
    ld c, b
    add [hl]
    nop
    nop
    add e
    nop
    sbc c
    call nz, Call_003_5400
    nop
    ld l, e
    ld [hl+], a
    ld d, h
    nop
    ld b, d
    dec h
    ld e, c
    dec b
    ld l, a
    add hl, de
    ld e, $23
    add hl, de
    rla
    add e
    nop
    dec l
    add e
    nop
    ret nz

    ld bc, $2b0a
    ld [hl+], a
    ld c, b
    add e
    nop
    ld l, $0b
    jr z, @+$28

    ld c, b
    ld c, b
    ld a, [de]
    nop
    nop

jr_003_69e8:
    add hl, de

jr_003_69e9:
    dec de
    ld e, $1e
    ld l, l
    daa
    ld e, c
    daa
    ld l, c
    nop
    ld h, a
    daa
    nop
    add e
    ld bc, $2428
    ld d, h
    adc c
    ld bc, $222c
    ld c, b
    dec bc

Call_003_6a00:
    ld a, [de]

jr_003_6a01:
    jr jr_003_6a21

    dec de
    ld c, b
    inc bc
    ld [hl], a
    add hl, de
    ld e, $1e
    ld [hl+], a
    add hl, de
    jp Jump_003_4601


    nop
    nop
    add l
    ld bc, $2755
    ld d, h
    daa
    ld c, c
    add hl, hl
    dec bc
    nop
    ld l, d
    dec l
    ld e, e
    scf
    ld e, d
    inc l

jr_003_6a21:
    ld e, e
    daa
    ld c, [hl]
    ld a, [hl+]
    ld a, e
    nop
    ld l, h
    db $e4
    ld sp, $ff55
    ld [bc], a
    ld h, $00
    ld a, [hl+]
    dec h

jr_003_6a31:
    nop
    ld [bc], a
    ld bc, $2600
    call nz, $0600
    ld [bc], a
    jr z, jr_003_6a62

    jr z, jr_003_6a01

    nop
    dec c
    ld [bc], a
    nop
    nop
    jr z, jr_003_6a67

    nop
    add hl, hl
    ld hl, $0029
    inc hl
    ld c, e
    ld bc, $4d4c
    inc hl
    ld c, e
    inc sp
    inc bc
    rst $38
    ld [bc], a
    ld h, $00
    ld a, [hl+]
    daa
    nop
    nop
    ld h, $c4
    nop
    ld b, $02
    jr z, jr_003_6a88

jr_003_6a62:
    jr z, jr_003_69e9

    nop
    add hl, bc
    nop

jr_003_6a67:
    jr z, jr_003_6a8b

    nop
    add hl, hl
    ld hl, $0029
    inc hl
    ld c, e
    ld bc, $4d4c
    inc hl
    ld c, e
    inc sp
    inc bc
    rst $38
    inc b
    ld b, $04
    ld d, [hl]
    nop
    add b
    dec h
    inc bc
    ld [$0780], sp
    dec b
    nop
    ld d, [hl]
    rlca
    dec b

jr_003_6a88:
    ld [de], a
    db $10
    ret z

jr_003_6a8b:
    nop
    dec bc
    dec b
    nop
    ld d, [hl]
    ld [$1a13], sp
    ld d, h
    ret


    nop
    inc e
    dec b
    ld de, $0913
    ld d, l
    dec de
    ld a, [de]
    add h
    nop
    inc bc
    nop
    ld e, [hl]
    add h
    nop
    add hl, de
    dec b
    ld d, l
    db $10
    jr nz, jr_003_6ac6

    dec de
    jr nz, jr_003_6a31

    nop
    inc b
    nop
    nop
    jp Jump_003_4600


    ld [hl+], a
    jr nz, jr_003_6adb

    ld a, h
    ld [bc], a
    add b
    inc bc
    inc bc
    ld [hl+], a
    ld h, d
    push bc
    nop
    ld d, l
    inc hl
    ld l, h
    add a
    nop

jr_003_6ac6:
    inc b
    ld h, $6c
    nop
    ld [hl], h
    daa
    ld [hl], e
    nop
    ld [hl], l
    ld [hl+], a
    ld l, h
    rst $38
    inc bc
    nop
    nop
    dec bc
    dec h
    inc hl
    ld bc, $3504

jr_003_6adb:
    nop
    nop
    ld e, a
    dec bc
    dec h
    ld bc, $3102
    nop
    inc bc
    add l
    nop
    inc c
    ld bc, $3525
    dec h
    ld [hl], e
    add hl, bc
    ld [hl], l
    ld bc, $7374
    dec [hl]
    dec bc
    inc sp
    ld bc, $5825
    ld [hl+], a
    ld bc, $3c01
    ld h, b
    add [hl]
    nop
    inc c
    inc bc
    inc a
    ld e, d
    ld h, c
    inc sp
    add h
    nop
    jr @+$04

    ld bc, $3b59
    add l
    nop
    ld [hl+], a
    inc hl
    ld [hl], e
    dec c
    ld h, c
    daa
    daa
    inc h
    dec h
    daa
    ld h, $01
    ld e, b
    ld bc, $3461
    inc a
    dec sp
    ld [hl+], a
    ld bc, $2606
    ld bc, $6101
    dec bc
    ld b, a
    ld b, a
    inc hl
    ld bc, $2416
    ld bc, $0b61
    ld d, a
    inc sp
    ld bc, $393c
    dec sp
    ld bc, $6101
    inc sp
    ld bc, $0125
    ld b, a
    ld [bc], a
    ld b, a
    ld bc, $6124
    add e
    nop
    ld l, c
    inc bc
    dec [hl]
    ld [bc], a
    inc sp
    ld bc, $0141
    daa
    dec h
    ld bc, $00c5
    inc e
    nop
    ld e, b
    add h
    nop
    ld e, a
    ld bc, $2425
    add e
    nop
    adc [hl]
    ld [hl+], a
    db $76
    jp Jump_003_6100


    dec b
    dec h
    daa
    ld bc, $347d
    ld h, $41
    dec a
    ld bc, $3d05
    inc a
    dec sp
    ld a, b
    nop
    ld c, [hl]
    ld b, c
    ld [bc], a
    add hl, sp
    ldh [rNR44], a
    ld [bc], a
    ld [bc], a
    ld b, a
    ld a, b
    nop
    ld d, e
    ld c, h
    ld b, a
    ld b, a
    ld [bc], a
    ld b, [hl]
    ld c, h
    cpl
    ld a, c
    nop
    ld c, a
    ld d, b
    nop
    nop
    ld [bc], a
    nop
    ld d, b
    nop
    ld a, b
    nop
    inc c
    inc hl
    jr nz, @+$22

    ld hl, $2320
    jr nz, jr_003_6c14

    nop
    dec c
    add hl, hl
    ld [hl], e
    rst $38
    add hl, bc
    add hl, bc
    rlca
    dec b
    nop
    nop
    add hl, bc
    rlca
    dec b
    inc sp
    inc h
    ld b, c
    ld bc, $1325
    inc h
    daa
    ld bc, $2701
    ld bc, $0124
    ld bc, $0125
    ld h, $01
    daa
    ld bc, $0831
    ld b, $04
    nop
    add e
    nop
    ld e, $06
    inc sp
    inc h
    ld bc, $2427
    inc h
    daa
    add [hl]
    nop
    ld d, $02
    inc h
    daa
    dec h
    add e
    nop
    dec d
    dec e
    ld bc, $0125
    ld b, c
    ld [bc], a
    ld b, b
    ld bc, $2627
    daa
    ld bc, $3601
    ld [hl-], a
    nop
    ld [hl-], a
    inc [hl]
    ld bc, $2601
    ld h, h
    inc b
    nop
    nop
    ld d, [hl]
    ld [$0406], sp
    jr nc, jr_003_6bf9

    ld h, d

jr_003_6bf9:
    dec h
    nop
    daa
    jp $3500


    nop
    inc h
    rst $00
    nop
    ld a, [de]
    inc bc
    ld bc, $0126
    ld sp, $0083
    nop
    dec b
    add hl, bc
    rlca
    dec b
    jr nc, jr_003_6c13

    daa

jr_003_6c13:
    ld b, c

jr_003_6c14:
    ld h, $01
    add h
    nop
    ld h, l
    ld b, c
    ld h, $01
    add h
    nop
    scf
    jp $2a00


    inc b
    ld b, c
    ld [bc], a
    ld [bc], a
    dec sp
    ld h, $83
    nop
    dec d
    nop
    ld a, [bc]
    ld [hl+], a
    nop
    ld [$260b], sp
    daa
    ld bc, $0564
    ld [$0406], sp
    add h
    nop
    ld [hl], d
    add l
    nop
    add h
    inc h
    ld bc, $3708
    scf
    ld bc, $0126
    scf
    dec a
    dec a
    ld [hl], $22
    nop
    add e
    nop
    ld e, $00
    nop
    add h
    nop
    and a
    inc de
    ld [hl], $4e
    dec sp
    inc a
    dec sp
    scf
    scf
    ld bc, $0125
    scf
    dec a
    inc h
    ld bc, $2726
    daa
    inc a
    dec sp
    inc a
    inc hl
    ld [bc], a
    inc b
    ccf
    ld a, $3b
    dec a
    ld [hl], $84
    nop
    sub a
    inc bc
    inc [hl]
    ld bc, $643d
    add e
    nop
    inc b
    add e
    nop
    ld hl, $3405
    inc a
    add hl, sp
    dec sp
    ld [hl], $4e
    add e
    nop
    ld a, [$3b09]
    inc a
    ld a, [bc]
    dec bc
    dec sp
    dec a
    inc a
    ld e, e
    ld b, [hl]
    ld b, d
    add e
    nop
    ld hl, $0084
    nop
    ld b, $00
    inc [hl]
    inc a
    add hl, sp
    add hl, sp
    ld a, [bc]
    ld d, e
    ld [hl+], a
    ld [bc], a
    add l
    ld bc, $0004
    ld b, a
    add h
    nop
    rst $38
    inc hl
    ld [bc], a
    rlca
    ld b, a
    ld b, a
    ld b, [hl]
    ld b, d
    ld c, h
    ld b, a
    ld [bc], a
    ld a, [bc]
    add h
    nop
    sub a
    inc bc
    dec bc
    add hl, sp
    ld [bc], a
    ld h, h
    add h
    nop
    ret nz

    add e
    nop
    nop
    db $10
    ld c, b
    ld c, c
    ld b, h
    ld a, [bc]
    ld d, e
    ld [bc], a
    ld c, d
    ld a, [bc]
    ld d, e
    ld c, d
    ld c, l
    ld a, [bc]
    dec bc
    ld b, a
    ld [bc], a
    ld b, [hl]
    ld e, e
    ld [hl+], a
    nop
    add l
    ld bc, $2310
    nop
    add e
    ld bc, $1349
    ld c, a
    ld c, b
    ld [bc], a
    ld c, c
    ld a, [bc]
    dec bc
    ld b, h
    ld b, a
    ld c, d
    ld e, e
    nop
    ld b, h
    ld a, [bc]
    ld c, a
    ld c, h
    ld b, [hl]
    ld b, d
    ld c, h
    ld b, [hl]
    ld [bc], a
    inc hl
    nop
    ld de, $0050
    ld c, b
    ld a, [bc]
    ld a, [bc]
    nop
    ld e, l
    nop
    dec bc

Call_003_6d03:
    dec bc
    ld b, a
    ld c, d
    ld h, h
    add hl, bc
    ld a, [de]
    dec b
    nop
    ld d, [hl]
    inc h
    nop
    db $10
    ld d, [hl]
    nop
    ld a, [bc]
    ld c, a
    ld b, d
    ld c, e
    ld a, [bc]
    ld c, a
    ld c, e
    ld b, e
    ld a, [bc]
    dec bc
    nop
    ld a, d
    ld a, h
    ld a, h
    ld a, e
    daa
    nop
    ld bc, $1e1c
    inc h
    nop
    ld a, [bc]
    ld a, [bc]
    inc c
    nop
    ld [bc], a
    nop
    ld a, [bc]
    dec bc
    add c
    add c
    ld c, e
    ld e, e
    add e
    ld bc, $00b8
    ld d, b
    add e
    ld bc, $8681
    ld bc, $0d7e
    nop
    ld a, [bc]
    ld a, [bc]
    nop
    ld e, a
    nop
    dec bc
    dec bc
    nop
    ld c, e
    ld h, h
    nop
    dec de
    ld e, $83
    nop
    ld hl, $561e
    ld c, $00
    ld c, $20
    ld a, [bc]
    dec c
    jr nz, jr_003_6d7c

    ld a, [bc]
    dec c
    ld [hl+], a
    jr nz, jr_003_6d69

    dec bc
    jr nz, jr_003_6dc6

    ld l, h
    ld l, h
    ld a, [hl]
    jr nz, jr_003_6d87

    ld c, $0e

jr_003_6d69:
    jr nz, @+$22

    ld c, $00
    ld a, [de]
    ld a, [de]
    ld c, $41
    ld c, $20
    inc d
    ld a, [bc]
    dec c
    jr nz, jr_003_6d99

    jr nz, jr_003_6d84

    ld a, d
    ld a, h

jr_003_6d7c:
    ld a, e
    ld [hl+], a
    ld e, e
    jr nz, jr_003_6da1

    ld a, [bc]
    dec c
    inc hl

jr_003_6d84:
    jr nz, @+$22

    inc hl

jr_003_6d87:
    jr nz, jr_003_6daa

    inc hl
    jr nz, jr_003_6d98

    inc hl
    jr nz, @+$22

    ld a, [bc]
    ld a, [bc]
    nop
    inc bc
    nop
    dec bc
    dec bc
    jr nz, @+$24

jr_003_6d98:
    ld h, h

jr_003_6d99:
    ld [hl], $7c
    inc hl
    ld l, h
    sub a
    ld [bc], a
    ld [hl-], a
    inc a

jr_003_6da1:
    ld a, h
    rst $38
    inc c
    nop
    ld [$0406], sp
    nop
    add hl, bc

jr_003_6daa:
    rlca
    dec b
    ld [de], a
    db $10
    ld de, $0013
    add e
    nop
    inc b
    add e
    nop
    inc b
    add e
    nop
    ld bc, $0086
    ld bc, $0083
    ld bc, $5605
    nop
    ld [$0606], sp

jr_003_6dc6:
    inc b
    add e
    nop
    ld c, $03
    ld [$0406], sp
    ld d, [hl]
    add h
    nop
    inc c
    add e
    nop
    ld h, $22
    nop
    ld b, $14
    nop
    nop
    dec d
    ld [$0406], sp
    add e
    nop
    ld [$5600], sp
    add h
    nop
    dec c
    nop
    nop
    add h
    nop
    nop
    jr c, jr_003_6dee

jr_003_6dee:
    add h
    nop
    add hl, hl
    nop
    ld d, [hl]
    add l
    nop
    inc a
    add h
    nop
    add hl, bc
    inc hl
    nop
    add [hl]
    nop
    ld c, $83
    nop
    ld [hl], d
    ld [bc], a
    add hl, bc
    rlca
    dec b
    add h
    nop
    ld sp, $0083
    ld c, h
    add l
    nop
    ld c, c
    add h
    nop
    ld d, c
    add h
    nop
    sub h
    ld [$0856], sp
    ld d, $00
    nop
    jr jr_003_6e25

    rlca
    dec b
    adc c
    nop
    db $76
    add h
    nop
    ld c, c
    add l

jr_003_6e25:
    nop
    ld l, $26
    nop
    adc b
    nop
    push bc
    add e
    nop
    push bc
    add e
    nop
    sub b
    add e
    nop
    ld l, $83
    nop
    xor h
    inc b
    nop
    nop
    dec d
    ld d, [hl]
    nop
    add h
    nop
    ld b, l
    ld bc, $1e1c
    add l
    nop
    ld l, $84
    nop
    ld d, c
    ld bc, $7b7a
    add h
    nop
    ld d, c
    add h
    nop
    ld [$0800], sp
    add l
    nop
    jr z, jr_003_6e7f

    nop
    ld bc, $1609
    add l
    nop
    db $ec
    nop
    rla
    add a
    nop
    push hl
    adc c
    nop
    ld a, l
    inc l
    nop

jr_003_6e6a:
    add a
    nop
    push bc
    inc b
    ld d, [hl]
    ld b, $04
    inc e
    ld e, $83
    nop
    ld [de], a
    ld [$1c16], sp
    ld e, $18
    nop
    nop
    jr jr_003_6e85

jr_003_6e7f:
    inc b
    add e
    nop
    ld a, $02
    nop

jr_003_6e85:
    dec e
    ld a, [de]
    add l
    nop
    ld [de], a
    add h
    nop
    ld a, [hl+]
    ld bc, $7e64
    add h
    nop
    ld c, e
    inc bc
    inc d
    ld e, l
    nop
    dec d

jr_003_6e98:
    add [hl]
    nop
    ld c, d
    nop
    ld d, [hl]
    add h
    nop
    ld d, c
    ld a, [bc]
    ld [$0406], sp
    ld d, $00
    inc d
    inc e
    ld e, $15
    inc e
    ld e, $84
    nop
    db $ec
    nop
    add hl, de
    adc e
    nop
    jp z, $008e

    ld d, c
    ld h, $52
    inc bc
    rlca
    dec b
    dec e
    ld a, [de]
    add e
    nop
    add b
    rrca
    rla
    dec e
    ld a, [de]
    db $10
    ld de, $1813
    rlca
    dec b
    rla
    nop
    nop
    add hl, de
    ld c, $1a
    dec de
    ld [hl+], a
    ld c, $84
    nop
    ld c, e
    inc b
    ld a, [de]

jr_003_6ed9:
    nop
    add hl, bc
    ld h, h
    ld a, [hl]
    ld [hl+], a
    nop
    dec b
    inc e
    ld e, $16
    ld e, a
    nop
    jr jr_003_6e6a

    ld bc, $06bb
    ld a, d
    ld a, e
    nop
    nop
    ld a, d
    ld a, h
    ld a, e
    add h
    nop
    inc c
    dec c
    ld d, $00
    rla
    ld a, [de]
    rra
    add hl, de
    dec e
    ld a, [de]
    nop
    ld d, h
    nop
    nop
    dec d
    ld a, d
    ld [hl+], a
    ld a, h
    nop
    ld l, e
    add a
    ld bc, $8b9e
    ld bc, $0130
    jr z, jr_003_6f3a

    daa
    dec l
    nop
    jr nz, jr_003_6e98

    ld bc, $02cd
    nop
    nop
    ld c, $84
    ld bc, $01cd
    dec d
    rrca
    ld [hl+], a
    ld c, $83
    ld [bc], a
    inc bc
    jp $0602


    ld bc, $207b
    ld [hl+], a
    ld c, $e0
    inc h
    nop
    dec de
    ld e, $0e
    ld h, h
    ld a, [hl]
    jr nz, @+$10

    ld c, $1a

jr_003_6f3a:
    ld a, [de]
    ld d, $03
    nop
    jr jr_003_6f5b

    ld e, $20
    ld a, d
    ld l, h
    ld a, [hl]
    ld b, $04
    ld h, h
    ld l, h
    ld l, h
    ld a, e
    jr nz, jr_003_6f6d

    ld c, $00
    rla
    ld c, $20
    dec de
    ld a, [de]
    jr nz, jr_003_6ed9

    ld bc, $07ce
    jr nz, jr_003_6fd5

jr_003_6f5b:
    ld a, h
    ld l, h
    ld l, h
    ld [hl], d
    ld [hl], c
    ld d, c
    adc h
    ld bc, $840a
    nop
    push bc
    adc c
    ld [bc], a
    inc e
    ld [bc], a
    dec l
    dec l

jr_003_6f6d:
    ld a, h
    ld [hl+], a
    ld h, [hl]
    ld [hl+], a
    ld a, h
    nop
    ld a, e
    dec h
    ld a, h
    add e
    ld [bc], a
    sub a
    ld b, c
    ld l, h
    ld h, l
    dec b
    ld h, l
    ld h, l
    ld l, h
    ld h, h
    ld l, h
    ld h, [hl]
    add e
    ld [bc], a
    sbc d
    ld [hl+], a
    ld h, [hl]
    nop
    ld h, l
    jp $b702


    nop
    ld h, [hl]
    add e
    ld [bc], a
    sub h
    inc hl
    ld h, [hl]
    rlca
    ld l, h
    ld l, h
    ld a, [hl]
    rlca
    dec b
    ld h, h
    ld l, h
    ld l, h
    add [hl]
    ld [bc], a
    cp b
    add h
    ld [bc], a
    cp l
    inc hl
    ld a, h
    ld [hl+], a
    ld l, h
    ld [bc], a
    ld l, c
    ld l, l
    ld l, a
    sub c
    ld bc, $022e
    ld d, [hl]
    nop
    dec hl
    ld [hl+], a
    inc l
    nop
    add hl, hl
    add l
    ld [bc], a
    dec e
    nop
    ld l, b
    ld [hl+], a
    ld h, a
    add hl, bc
    ld l, b
    ld h, l
    ld l, b
    ld a, [hl]
    ld h, l
    ld l, b
    ld h, l
    ld l, h
    ld h, l
    ld l, b
    add e
    inc bc
    dec b
    ld b, c
    ld l, b
    ld h, a
    inc bc
    ld h, a
    ld h, a
    ld l, b
    ld h, h
    add e
    inc bc

jr_003_6fd5:
    rrca
    nop
    ld a, e
    add e
    inc bc
    ld [bc], a
    dec h
    ld h, a
    add a
    inc bc
    ld hl, $6805
    ld h, l
    ld a, [hl]
    ld l, $2e
    ld h, h
    add $03
    inc [hl]
    add l
    inc bc
    inc d
    rlca
    ld h, a
    ld l, b
    ld l, h
    ld h, l
    ld h, l
    ld l, b
    ld h, l
    ld l, c
    ld h, d
    ld l, l
    inc sp
    ld l, $83
    ld [bc], a
    rst $30
    nop
    inc l
    add h
    inc bc
    ld h, l
    nop
    inc l
    rst $38
    inc bc
    ld h, $01
    dec h
    ld a, a
    daa
    ld [hl], e
    ld a, [bc]
    ld a, a
    dec h
    ld h, $01
    ld bc, $0127
    ld a, a
    ld h, d
    ld h, d
    ld h, e
    inc h
    ld h, d
    ld a, [bc]
    ld a, a
    ld bc, $2601
    dec a
    inc a
    add hl, sp
    ld a, a
    inc bc
    inc bc
    ld e, h
    inc h
    inc bc
    ld b, $7f
    dec h
    ld bc, $4701
    ld [bc], a
    ld b, a
    add h
    nop
    inc hl
    nop
    ld e, [hl]
    add e
    nop
    add hl, hl
    dec b
    dec a
    inc a
    add hl, sp
    inc b
    ld b, d
    nop
    add h
    nop
    inc hl
    nop
    nop
    add e
    nop
    add hl, hl
    ld [$0202], sp
    ld b, a
    dec b
    ld d, a
    ld d, a
    ld a, a
    inc bc
    ld [hl], h
    inc hl
    ld [hl], e
    ld [$0375], sp
    ld a, a
    ld b, [hl]
    ld b, d
    ld [$2733], sp
    ld bc, $00c3
    inc l
    nop
    ld e, h
    add e
    nop
    inc h
    rlca
    ld a, a
    ld d, a
    ld d, a
    add hl, bc
    ld bc, $2726
    add d
    add a
    nop
    ld h, h
    ld [$2482], sp
    ld bc, $2535
    ld [hl], h
    ld [hl], e
    ld [hl], e
    ld [hl], l
    add e
    nop
    dec d
    ld bc, $6263
    add e
    nop
    add c
    add $00
    cpl
    add h
    nop
    ld h, a
    ld b, $5c
    inc bc
    ld a, a
    ld h, $01
    ld bc, $8b24
    nop
    sub d
    ld bc, $2527
    adc d
    nop
    ld h, c
    inc b
    ld e, h
    inc bc
    ld a, a
    ld bc, $833c
    nop
    ld d, l
    nop
    ld [hl], l
    adc b
    nop
    sub l
    nop
    add hl, sp
    jp Jump_003_4d00


    nop
    add d
    adc c
    nop
    sub h
    ld bc, $4647
    adc l
    nop
    ret nc

    ld bc, $0406
    add h
    nop
    ld d, l
    add l
    nop
    jp nz, Jump_003_5c05

    inc bc
    ld a, a
    rlca
    dec b
    dec a
    call nz, $ae00
    add h
    nop
    ld h, h
    inc b
    ld e, h
    inc bc
    ld a, a
    ld [$c506], sp
    nop
    rst $08
    add a
    ld bc, $0306
    add hl, bc
    rlca
    ld b, a
    ld [bc], a
    adc e
    ld bc, $0302
    ld d, a
    nop
    nop
    ld b, d
    adc e
    ld bc, $0302
    ld bc, $0035
    nop
    add h
    ld bc, $8602
    nop
    ldh a, [rSB]
    ld [hl], e
    ld [hl], e
    add $00
    ld l, [hl]
    add l
    nop
    ld h, h
    inc bc
    add d
    inc h
    ld bc, $8701
    ld bc, $8401
    ld bc, $0159
    ld h, $01
    add [hl]
    nop
    ld a, [c]
    add [hl]
    ld bc, $0157
    ld bc, $2726
    ld [hl], e
    ld bc, $6275
    add e
    nop
    adc d
    ld [bc], a
    ld [hl], e
    ld [hl], e
    ld h, $86
    nop

jr_003_7124:
    ld h, e
    ret z

    ld bc, $8d68
    ld bc, $c391
    nop
    xor a
    adc e
    ld bc, $0093
    ld bc, $00c4
    dec a
    adc c
    ld bc, $0295
    inc a
    ld [bc], a
    ld a, a
    add l
    nop
    adc b

jr_003_7140:
    add [hl]
    nop
    ld b, $c3
    nop
    ld c, [hl]
    add e
    nop
    ld h, $c7
    ld bc, $0009
    ld b, a
    add $01
    rst $28
    add a
    ld bc, $86e7
    ld bc, $8840
    ld bc, $01e6
    inc b
    nop
    adc b
    nop
    inc bc
    add e
    nop
    call nz, Call_003_7f02
    dec b
    ld [$0086], sp
    inc hl
    ld [bc], a
    ld e, h
    inc bc
    inc bc
    jp $d401


    ld bc, $0900
    adc c
    ld [bc], a
    ld hl, $0187
    ei
    add h
    nop
    dec [hl]
    add a
    ld [bc], a
    jr z, jr_003_7181

jr_003_7181:
    jr nz, @-$78

    nop
    ld b, e
    add [hl]
    ld [bc], a

jr_003_7187:
    jr c, @+$03

    jr nz, jr_003_7206

    adc b
    ld bc, $8447
    nop
    ld d, [hl]
    ld bc, $7e7a
    dec l
    ld l, l
    nop
    ld h, h
    rst $38
    ld [hl+], a
    jr nz, jr_003_719c

jr_003_719c:
    ld [hl+], a
    ld b, c
    ld [hl+], a
    jr nz, jr_003_7124

jr_003_71a1:
    nop
    ld bc, $2227
    ld [bc], a
    jr nz, jr_003_7140

    sbc c
    add $00
    ld c, $02
    ld [hl+], a
    sbc d
    sbc d
    push bc
    nop
    ld [$2227], sp
    ld bc, $9998
    add h
    nop
    nop
    nop
    ld h, h
    call nz, $2200
    add e
    nop
    dec de
    nop
    inc bc
    add e
    nop
    inc bc
    nop
    ld [hl+], a
    add hl, hl
    sbc e
    rst $38
    nop
    sub b
    dec [hl]
    inc bc
    nop
    sub b
    add h
    nop
    nop
    inc bc
    ld h, $00
    nop
    daa
    add h
    nop
    inc e
    add l
    nop
    inc e
    add a
    nop
    inc d
    nop
    ld h, e
    inc hl
    cpl
    nop
    ld c, a
    add h
    nop
    dec [hl]
    inc hl
    cpl
    nop
    ld h, d
    adc b
    nop
    inc l
    inc hl
    jr nc, jr_003_71f7

jr_003_71f7:
    ld c, a
    add h
    nop
    ld c, l
    inc hl
    jr nc, jr_003_7187

    nop
    ld b, e
    inc hl
    ld sp, $4f00
    add h
    nop

jr_003_7206:
    ld h, l
    inc hl
    ld sp, $0087
    ld b, e
    ld bc, $6338
    inc hl
    ld [hl-], a
    nop
    ld c, a
    add h
    nop
    ld a, l
    inc hl
    ld [hl-], a
    ld [bc], a
    ld h, d
    inc bc
    jr c, jr_003_71a1

    nop
    ld d, $01
    nop
    ld h, e
    inc hl
    inc h
    nop
    ld c, a
    add h
    nop
    sub l
    inc hl
    inc h
    inc b
    ld h, d
    inc bc
    nop
    inc bc
    sub b
    scf
    sub e
    rst $38
    add hl, sp
    inc bc
    rlca
    sub h
    sub l
    nop
    nop
    ld [hl], $37
    nop
    dec [hl]
    add e
    nop
    inc e
    inc b
    dec [hl]
    nop
    nop
    inc sp
    inc [hl]
    add l
    nop
    jr nz, jr_003_724e

    ld a, [hl+]
    inc l

jr_003_724e:
    ld e, b
    ld [hl+], a
    rla
    ld b, $5d
    ld a, [de]
    dec d
    inc e
    dec d
    inc bc
    jr c, jr_003_727c

    inc bc
    ld b, a
    jr c, jr_003_7261

    dec h
    inc bc
    ld [bc], a

jr_003_7261:
    ld h, $33
    inc [hl]
    ld [hl+], a
    nop
    ld a, [bc]
    ld [hl], $37
    inc sp
    inc [hl]
    nop
    ld [hl], $37
    ld e, d
    dec hl
    inc sp
    inc [hl]
    add e
    nop
    ld e, l
    dec c
    ld a, [hl+]
    ld e, b
    ld bc, $1701
    inc bc

jr_003_727c:
    rla
    ld e, l
    ld a, [de]
    inc e
    add hl, de
    ld a, [de]
    inc bc
    add hl, hl
    ld [hl+], a
    inc bc
    ld b, $29
    inc bc
    dec l
    inc bc
    inc l
    inc bc
    ld a, [hl+]
    call nz, $8000
    add e
    nop
    ld a, a
    add l
    nop
    ld d, d
    ld [hl+], a
    nop
    ld [de], a
    add hl, hl
    nop
    nop
    add hl, hl
    ld e, d
    dec l
    inc l
    nop
    ld a, [hl+]
    ld e, b
    ld bc, $2c59
    nop
    nop
    add hl, hl
    ld a, [hl+]
    dec l
    ld e, b
    ld [hl+], a
    ld bc, $170b
    inc bc
    ld e, l
    rla
    inc e
    add hl, de
    ld a, [de]
    inc e
    ld e, $2e
    ld e, $38
    ld b, a

jr_003_72bd:
    ld e, $2e
    inc bc
    ld e, $1e
    sub h
    sub l
    add e
    nop
    ret z

    scf
    ld l, $87
    nop
    ld [hl], b
    ld [hl+], a
    rra
    nop
    nop
    ld sp, $011f
    sub b
    sub b
    add e
    ld bc, $3704
    cpl
    inc hl
    rla
    add e
    nop
    or b
    inc b
    nop
    nop
    sub h
    sub e
    sub l
    cpl
    nop
    ld b, $8e
    sub b
    sub b
    nop
    nop
    sub b
    sub b
    scf
    jr nc, jr_003_7333

    rla
    ld e, l
    add e
    nop
    ld [hl], h
    dec [hl]
    sub e
    add l
    ld bc, $3742
    ld sp, $5d41
    rla
    add e
    nop
    or b
    scf
    sub b
    inc bc
    dec h
    dec h
    sub b
    sub b
    scf
    ld l, $00
    ld e, l
    add e
    nop
    dec [hl]
    ld [bc], a
    inc e
    add hl, de
    ld a, [de]
    rst $38
    jr z, jr_003_731f

    nop
    ld h, c
    ld [hl+], a
    ld b, $22
    ld [hl], h

jr_003_731f:
    inc bc
    add c
    add d
    add b
    add c
    adc e
    nop
    nop
    add [hl]
    nop
    dec c
    nop
    add d
    adc d
    nop
    nop
    add a
    nop
    jr nz, jr_003_72bd

jr_003_7333:
    nop
    daa
    ld h, d
    add b
    ld h, d
    add b
    add e
    nop
    ld b, [hl]
    rst $38
    nop
    ld h, b
    daa
    ld e, a
    nop
    ld h, c
    ld b, c
    add c
    add d
    ld bc, $6f6f
    ld b, c
    add c
    add d
    adc c
    nop
    nop
    ld [bc], a
    add b
    ld l, a
    ld l, a
    ld h, d
    add b
    add e
    nop
    ld e, $9e
    nop
    nop
    ld bc, $8281
    add e
    nop
    ld hl, $8102
    add d
    add b
    rst $38
    ld b, l
    add c
    add d
    nop
    add d
    ld [hl+], a
    add b
    inc h
    dec bc
    ld b, $69
    dec bc
    dec bc
    ld c, $69
    dec bc
    dec bc
    inc h
    ld b, $03
    inc bc
    ld b, $06
    inc c
    push bc
    nop
    ld hl, $8100
    ld [hl+], a
    sbc e
    inc bc

jr_003_7386:
    add d
    add c
    sbc e
    add d
    ld [hl+], a
    ld b, $06
    add h
    nop
    add hl, sp
    nop
    ld a, c
    nop
    ld c, $84
    nop
    ld a, [de]
    ld [$009c], sp
    inc bc
    nop
    ld a, c
    nop
    inc c
    ld b, $68
    add [hl]
    nop
    jr z, jr_003_73a7

    sbc e
    add d

jr_003_73a7:
    inc c
    call nz, $2200
    dec h
    dec bc
    ld bc, $9b81
    add h
    nop
    ld sp, $0624
    ld [hl+], a
    nop
    nop
    ld a, c
    add a
    nop
    ld h, $01
    nop
    nop
    add l
    nop
    jr nc, jr_003_7386

    nop
    ld [hl], b
    ld [bc], a
    sbc e
    sbc e
    add d
    add l
    nop
    ld a, [de]
    inc b
    ld a, c
    nop
    nop
    add h
    ld c, $83
    nop
    dec de
    add l
    nop
    ld c, [hl]
    nop
    sbc h
    add h
    nop
    ld c, b
    ld b, $9c
    nop
    add hl, sp
    nop
    nop
    sbc h
    add l
    add h
    nop
    ld d, h
    add e
    nop
    ld b, d
    ld bc, $9c00
    dec hl
    sub e
    rst $38
    dec b
    nop
    inc sp
    inc [hl]
    nop
    dec [hl]
    nop
    add e
    nop
    nop
    add e
    nop
    dec b
    ld bc, $3736
    add e
    nop
    dec b
    add hl, bc

jr_003_7405:
    inc l
    ld a, [hl+]
    dec l
    dec hl
    add hl, hl
    nop
    add hl, hl
    ld a, [hl+]
    dec l
    dec hl
    add hl, hl
    ld l, $00
    adc a
    daa
    cpl
    ld bc, $908f
    ld [hl+], a
    dec d
    nop
    ld c, b
    inc hl
    dec d
    nop
    sub b
    add e
    nop
    ld [hl-], a
    nop
    inc bc
    add h
    nop
    scf
    add hl, hl
    sub e
    rst $38
    inc hl
    jr nc, jr_003_742e

jr_003_742e:
    ld [hl+], a
    add h
    nop
    nop
    adc c
    nop
    nop
    inc hl
    jr nz, @-$7a

    nop
    inc de
    inc bc
    ld [hl+], a
    jr nz, jr_003_745e

    ld h, h
    jp nc, $1900

    inc bc
    inc bc
    jr nc, jr_003_7468

    adc [hl]
    add e
    nop
    ld bc, $9324
    nop
    sub l
    ld [hl+], a
    jr nz, jr_003_7451

jr_003_7451:
    sub h
    adc c
    nop
    inc a
    nop
    inc c
    inc hl
    ld b, $04
    inc hl
    ld [hl], l
    ld b, $06

jr_003_745e:
    inc hl
    adc c
    nop
    ld d, b
    add l
    nop
    ld d, b
    ld bc, $740c

jr_003_7468:
    adc c
    nop
    ld h, d
    add l
    nop
    ld e, b
    inc b
    adc [hl]
    inc hl
    inc c
    ld b, $74
    add a
    nop
    ld h, e
    inc bc
    adc [hl]
    ld [hl], h
    inc hl
    sub l
    ld [hl+], a
    jr z, jr_003_7405

    nop
    ld b, l
    adc b
    nop
    adc l
    dec b
    ld hl, $0073
    dec sp
    ld hl, $2240
    dec a
    nop
    ld a, $89
    nop
    and b
    add hl, bc
    ld hl, $733a
    dec sp
    ld hl, $003b
    add hl, sp
    nop
    ld a, [hl-]
    add [hl]
    nop
    or h
    nop
    nop
    add e
    nop
    cp h
    rlca
    nop
    ld [hl], e
    ld hl, $3c8e
    inc bc
    inc a
    adc [hl]
    add h
    nop
    ret z

    nop
    ld b, c
    ld [hl+], a
    inc a
    nop
    ccf
    inc sp
    sub a
    rst $38
    dec h
    ld [$2103], sp
    ld h, $00
    ld b, b
    ld [hl+], a
    nop
    ld [bc], a
    ld a, $00
    daa
    add $00
    ld b, $85
    nop
    ld bc, $0041
    ld b, b
    ld b, c
    nop
    ld a, $c6
    nop
    dec e
    ld b, $98
    sub a
    sub a
    sbc c
    db $10
    ld [$4121], sp
    ld b, b
    nop
    nop
    add hl, sp
    ld b, c
    nop
    ld a, $00
    ld hl, $0084
    ld a, [hl+]
    inc hl
    sbc d
    nop
    ld de, $0084
    dec de
    ld bc, $0300
    add e
    nop
    dec bc
    ld [bc], a
    ld hl, $0808
    ld [hl+], a
    sbc d
    nop
    inc d
    ld [hl+], a
    inc de
    dec b
    ld [de], a
    ld [$0021], sp
    nop
    add a
    ld [hl+], a
    and b
    nop
    adc b
    jp Jump_003_6000


    inc bc
    ld [$1314], sp
    inc de
    add a
    nop
    ld d, $01
    ld b, c
    adc c
    ld [hl+], a
    and c
    ld bc, $3f8a
    adc l
    nop
    dec h
    ld b, c
    ld b, c
    nop
    nop
    nop
    ld b, c
    nop
    ccf
    adc l
    nop
    inc a
    ld b, c
    ld b, c
    nop
    ld b, c
    ccf
    nop
    adc [hl]
    nop
    ld d, d
    add l
    nop
    adc l
    adc [hl]
    nop
    ld h, a
    ld [hl+], a
    nop
    nop
    adc [hl]
    ret


    nop
    ret nc

    ld [hl+], a
    jr z, jr_003_754a

    adc [hl]
    jr z, @+$2a

jr_003_754a:
    ld hl, $2822
    ld [bc], a
    sub h
    sub e
    sub l
    ret z

    nop
    push hl
    inc hl
    sub e
    ld bc, $0095
    add e
    nop
    call z, Call_003_7922
    call nz, $fb00

jr_003_7561:
    nop
    sub h
    ld [hl+], a
    sub e
    dec h
    nop
    ld bc, $0021
    add h
    ld bc, $0003
    sub l
    ret z

    ld bc, $0210
    nop
    nop
    add hl, sp
    add h
    ld bc, $240c
    ld a, c
    jp z, $2601

    nop
    inc bc
    add a
    ld bc, $8600
    nop
    db $f4
    ld [bc], a
    inc bc
    nop
    nop
    dec [hl]
    sub [hl]
    rst $38
    ld b, $00
    nop
    inc sp
    inc [hl]
    ld [hl], $37
    rla
    ld [hl+], a
    dec d
    add hl, bc
    inc sp
    inc [hl]
    nop
    dec [hl]
    nop
    nop
    rla
    ld c, b
    dec d
    dec d
    ld [hl+], a
    nop
    inc c
    ld [hl], $37
    nop
    rla
    inc bc
    dec d
    dec d
    nop
    inc sp
    inc [hl]
    nop
    nop
    sub h
    inc hl
    sub e
    ld [hl+], a
    nop
    ld [bc], a
    inc sp
    inc [hl]
    nop
    add [hl]
    nop
    ld b, $02
    nop
    nop
    inc sp
    add e
    nop
    ld b, $c3
    nop
    rrca
    add a
    nop
    ld [hl+], a
    ld [bc], a
    ld [hl], $37
    nop
    add h
    nop
    dec l
    dec h
    cpl
    add e
    nop
    ld b, $24
    jr nc, @-$7a

    nop
    inc hl
    dec h
    jr nc, jr_003_7561

    nop
    ld b, $25
    ld sp, $0083
    ld b, $24
    ld [hl-], a
    add a
    nop
    inc hl
    ld b, $00
    nop
    sub h
    sub l
    ld c, b
    sub h
    sub l
    add [hl]
    nop
    add d
    ld [bc], a
    inc bc
    sub h
    sub l
    inc h
    ld c, e
    ld b, $91
    sub c
    ld c, e
    sub c
    sub c
    ld c, [hl]
    ld c, l
    ld h, d
    ld c, h
    ld [bc], a
    ld c, l
    ld c, [hl]
    ld c, l
    ld b, d
    ld c, h
    ld c, [hl]
    nop
    ld c, [hl]
    ld b, d
    ld c, [hl]
    ld c, h
    ld [bc], a
    ld c, [hl]

jr_003_7613:
    ld c, l
    ld c, h
    add e
    nop
    or h
    dec b
    ld c, [hl]
    ld c, l
    add e
    sbc e
    add d
    add c
    add e
    nop
    cp [hl]
    ld bc, $9b83
    rst $38
    inc de
    ld a, a
    inc sp
    inc [hl]
    nop
    dec [hl]
    nop
    nop
    rla
    add hl, de
    ld a, [de]
    nop
    nop
    inc sp
    inc [hl]
    ld [hl], $37
    nop
    ld e, h
    dec d
    add hl, de
    ld [hl+], a
    nop
    inc bc
    ld a, [hl+]
    dec hl
    ld a, [hl+]
    ld [hl], b
    ld [hl+], a
    ld [hl], c
    add hl, bc
    dec l
    ld e, [hl]
    dec l
    ld e, b
    ld e, c
    ld e, b
    ld e, h
    dec d
    add hl, de
    ld a, [de]
    dec h
    ld l, $02
    rla
    add hl, de
    ld a, [de]
    add e
    nop
    inc de
    ld [hl+], a
    nop
    inc bc
    ld e, h
    ld c, b
    inc e
    dec d
    dec h
    nop
    inc bc
    ld e, l
    inc bc
    inc e
    add hl, de
    add hl, hl
    sub [hl]
    rst $38
    ld [bc], a
    sub h
    sub e
    sub l
    ld a, [hl+]
    dec d
    dec b
    jr jr_003_7672

jr_003_7672:
    nop
    rla
    dec d
    jr nc, jr_003_769d

    dec d
    ld b, $48
    dec d
    dec d
    jr jr_003_7613

    nop
    rla
    ld [hl+], a
    jr nc, jr_003_76a8

    dec d
    inc b
    inc bc
    dec d
    sub h
    sub e
    sub l
    adc c
    nop
    db $10
    add e
    nop
    nop
    add h
    nop
    ld c, $88
    nop
    dec [hl]
    add e
    nop
    inc c
    nop
    dec l
    add h
    nop

jr_003_769d:
    ld b, c
    add a
    nop
    nop
    inc bc
    jr jr_003_76d1

    ld l, $17
    adc b
    nop

jr_003_76a8:
    ld d, h
    dec b
    jr nc, jr_003_76c1

    dec d
    jr jr_003_76dd

    sub h
    ld [hl+], a
    sub e
    add l
    nop
    ld [bc], a
    add e
    nop
    ld [hl+], a
    ld bc, $0018
    rst $38
    rlca
    dec [hl]
    nop
    nop
    inc sp

jr_003_76c1:
    inc sp
    inc [hl]
    nop
    nop
    ld h, $24
    ld [bc], a
    nop
    ld [hl], $37

jr_003_76cb:
    inc hl
    nop
    ld [bc], a
    inc sp
    inc [hl]
    inc hl

jr_003_76d1:
    inc h
    jr z, jr_003_76d7

    inc hl
    nop
    nop

jr_003_76d7:
    adc a
    dec h
    cpl
    add hl, bc
    inc hl
    dec d

jr_003_76dd:
    dec d
    ld c, b
    dec d
    dec d
    inc hl
    nop
    nop
    sub b
    dec h
    dec d
    inc bc
    inc hl
    dec d
    dec d
    inc bc
    add e
    nop
    inc l
    ld [bc], a
    sub h
    sub e
    sub l
    inc hl
    dec d
    nop
    sub h
    ld h, $93
    inc bc
    sub l
    nop
    rla
    ld c, b
    add e
    nop
    ld b, h
    add h
    nop
    ld b, d
    ld b, $15
    dec d
    jr jr_003_7709

jr_003_7709:
    nop
    rla
    inc bc
    adc c
    nop
    ld d, h
    ld [bc], a
    dec d
    jr jr_003_7713

jr_003_7713:
    add h
    nop
    ld b, a
    add a
    nop
    ld h, [hl]
    ld [bc], a
    dec d
    jr jr_003_771d

jr_003_771d:
    rst $38
    ld bc, $4817
    ld h, $15
    ld [bc], a
    jr jr_003_773d

    inc bc
    add a
    nop
    ld [bc], a
    ld [bc], a
    add c
    sbc e
    add d
    inc hl
    dec d
    inc bc
    add c
    add d
    jr @+$19

    daa
    dec d
    inc b
    jr jr_003_775e

    inc h
    add c
    add d

jr_003_773d:
    dec h
    inc h
    add hl, hl
    jr z, jr_003_76cb

    nop
    ld e, $83
    nop
    ld e, $00
    add c
    add e
    nop
    ld d, $88
    nop
    dec e
    ld bc, $1848
    daa
    inc h
    nop
    inc bc
    add a
    nop
    ld sp, $8102
    sbc e
    add d
    adc l

jr_003_775e:
    nop
    nop
    add l
    nop
    ld c, d
    add [hl]
    nop
    inc d
    adc d
    nop
    ld c, l
    add e
    nop
    ld [de], a
    ld h, $9b
    nop
    add d
    rst $38
    ld c, b
    add c
    add d
    ld bc, $3900
    add hl, hl
    nop
    dec b
    add c
    sbc e
    add d
    nop
    nop
    inc bc
    ld a, [hl+]
    nop
    add [hl]
    nop
    inc c
    nop
    adc a
    ld [hl+], a
    nop
    add e
    nop
    ld [hl], $03
    add c
    sbc e
    add c
    add d
    inc hl
    ld c, e
    nop
    sub c
    add e
    nop
    ld b, e
    inc hl
    ld c, e
    inc c
    add c
    add c
    add d
    ld c, [hl]
    ld c, l
    ld c, h
    ld c, [hl]
    sub d
    ld c, h
    ld c, [hl]
    ld c, h
    sub d
    ld c, h
    ld [hl+], a
    ld c, [hl]
    ld bc, $8181
    inc hl
    sbc e
    ld a, [bc]
    add d
    sub d
    ld c, [hl]
    ld c, h
    add c
    sbc e
    sbc e
    add d
    ld c, [hl]
    ld c, h
    ld c, [hl]
    add l
    nop
    ld de, $9205
    ld c, [hl]
    ld c, l
    ld c, h
    sub d
    ld c, l
    add e
    nop
    ld e, h
    nop
    add d
    add h
    nop
    ld [hl+], a
    ld [bc], a
    add c
    add a
    adc b
    add h
    nop
    ld l, e
    inc b
    ld c, h
    add c
    add e
    add h
    add h
    add e
    nop
    ld b, c
    ld bc, $8a89
    inc h
    ld c, [hl]
    db $10
    add c
    sbc e
    add c
    sbc h
    sbc h
    add d
    ld c, [hl]
    ld c, l
    ld c, [hl]
    ld c, h
    ld c, [hl]
    ld c, l
    ld c, h
    ld c, h
    ld c, [hl]
    add c
    sbc e
    add e
    nop
    sbc a
    ld [bc], a
    sbc e
    sbc e
    add d
    add l
    nop
    ld h, b
    inc hl
    sbc e
    rst $38
    ld a, [bc]
    inc [hl]
    nop
    nop
    inc sp
    inc [hl]
    nop
    inc sp
    inc [hl]
    nop
    dec [hl]
    dec [hl]
    add e
    nop
    ld [bc], a
    add e
    nop
    ld bc, $3602
    ld [hl], $37
    add h
    nop
    ld c, $03
    nop
    nop
    ld a, [hl+]
    add hl, hl
    dec h
    nop
    inc c
    ld a, [hl+]
    dec l
    ld e, b
    ld bc, $2d59
    dec hl
    add hl, hl
    nop
    ld a, [hl+]
    ld e, b
    ld bc, $2901
    ld l, $00
    dec l
    and e
    nop
    dec c
    add e
    nop
    ld [hl+], a
    nop
    inc l
    ld h, d
    add b
    ld h, d
    add b
    add e
    nop
    ld b, [hl]
    rst $38
    rrca
    sub h
    sub d
    add a
    ld bc, $5101
    ld bc, $8601
    nop
    nop
    halt
    nop
    ld d, h
    ld d, e
    inc h
    ld bc, $5503
    ld d, [hl]
    nop
    ld a, b
    add a
    nop
    ld c, $00
    and [hl]
    inc hl
    or b
    ld [$b0a5], sp
    add e
    and d
    and b
    add d
    add e
    and d
    ld d, d
    dec h
    ld bc, $5006
    nop
    ld d, d
    ld bc, $0064
    ld h, [hl]
    add e
    nop
    rlca
    inc de
    add a
    ld bc, $5655
    ld d, h
    ld d, e
    ld bc, $0060
    add a
    ld bc, $5001
    ld d, h
    ld d, e
    ld bc, $0086
    ld c, d
    ld h, a
    add h
    nop
    ld [hl-], a
    ld bc, $0000
    ld h, $3a
    ld [bc], a
    and h
    and e
    ld d, b
    add e
    nop
    ld l, $1a
    ld d, l
    ld d, [hl]
    ld [hl], h
    ld h, [hl]
    ld d, a
    ld e, b
    nop
    ld e, d
    ld e, c
    ld bc, $9391
    ld bc, $0056
    nop
    ld [hl], b
    nop
    ld [hl], d
    nop
    ld d, h
    add h
    add l
    ld d, l
    ld d, [hl]
    nop
    and b
    inc hl
    and h
    ld b, $a2
    add e
    and d
    ld e, d
    ld e, c
    and c
    and e
    add e
    nop
    ld [de], a
    nop
    ld d, e
    add h
    nop
    ld b, d
    ld [hl+], a
    ld bc, $6b05
    ld d, c
    ld bc, $6401
    ld h, [hl]
    add e
    nop
    ld d, [hl]
    jr jr_003_7933

    ld e, c
    ld bc, $8786
    ld bc, $010d
    ld bc, $5957
    ld bc, $6b01
    ld c, d
    ld bc, $1101
    ld d, l
    ld d, [hl]
    nop
    ld [hl], b
    ld [hl], d
    dec c
    inc h
    inc h
    dec sp
    nop
    add a
    add e
    nop
    sub b
    ld [$0101], sp
    ld d, a
    ld e, h
    ld e, c
    sub c
    sub l
    sub l
    sub e
    ld [hl+], a
    ld bc, $a105
    and e
    ld bc, $5957
    add h
    ld [hl+], a
    nop
    dec c
    ld [hl], d
    ld [hl], b
    nop
    nop
    ld [hl], d
    nop
    ld e, d
    ld e, c
    ld d, c
    ld bc, $a101
    and h
    and d
    add h
    nop
    rrca
    add hl, bc
    sub c
    sbc d

Call_003_7922:
    sub h
    sub h
    sub d
    nop
    ld e, d
    ld e, b
    nop
    ld d, d
    add e
    nop
    inc b
    inc b
    ld bc, $0050
    ld d, h
    ld e, l

jr_003_7933:
    add l
    nop
    rrca
    inc b
    ld de, $5355
    ld bc, $834a
    nop
    db $fc
    ld b, $01
    ld de, $4a01
    ld d, l
    ld d, [hl]
    inc de
    add h
    nop
    ld e, c
    ld bc, $234a
    inc h
    dec b
    inc bc
    ld bc, $5001
    ld a, b
    add l
    nop
    inc c
    inc bc
    and c
    and h
    and h
    and e
    add h
    nop
    inc de
    inc c
    ld d, d
    ld bc, $0084
    sub b
    sub d
    nop
    sub b
    sub h
    sub d
    nop
    nop
    add l
    add l
    nop
    xor $05
    sub d
    ld e, d
    ld e, c
    ld d, l
    ld e, l
    ld d, e
    add e
    ld bc, $832f
    ld bc, $0032
    sub c
    add e
    nop
    ret nc

    dec b
    ld d, l
    ld d, [hl]
    ld d, h
    ld d, [hl]
    nop
    ld a, b
    ld [hl+], a
    nop
    ld [$0152], sp
    ld de, $6d01
    nop
    ld [hl], b
    add l
    ld c, d
    add h
    ld bc, $0c11
    inc d
    ld d, l
    ld c, d
    nop
    nop
    inc de
    nop
    ld a, b
    ld c, d
    inc h
    dec sp
    ld c, d
    ld e, a
    inc h
    ld e, [hl]
    rlca
    add l
    ld bc, $0084
    ld [hl], d
    ld e, d
    ld e, h
    ld e, c
    ld h, $01
    inc d
    ld d, b
    nop
    ld e, d
    ld e, c
    add h
    adc b
    nop
    nop
    and b
    and d
    nop
    and b
    and h
    and d
    nop
    sub b
    sub d
    ld h, d
    ld bc, $a055
    add e
    ld bc, $0031
    ld d, b
    add a
    ld bc, $078d
    ld h, b
    ld h, d
    ld bc, $b0a6
    ld a, [hl]
    sbc d
    sub d
    jp $e100


    ld c, $70
    nop
    ld [hl], d
    ld e, d
    ld e, c
    ld de, $6d01
    ld d, [hl]
    jr jr_003_7a59

    nop
    nop
    ld c, d
    ld d, e
    add h
    ld bc, $09ca
    nop
    ld c, d
    nop
    nop
    jr jr_003_7a67

    nop
    ld c, d
    inc hl
    dec b
    add e
    ld bc, $081f
    ld [hl], $05
    dec b
    nop
    adc b
    sub b
    sub h
    sub h
    sbc c
    ld [hl+], a
    sub l
    ld a, [bc]
    sub e
    ld bc, $0151
    ld h, b
    adc b
    ld h, d
    sub c
    sub l
    sub a
    sub h
    add e
    ld bc, $833e
    ld bc, $0a41
    nop
    nop
    and [hl]
    and l
    db $76
    ld d, [hl]
    nop
    nop
    ld a, b
    ld [hl], b
    ld h, d
    inc hl
    ld bc, $6808
    ld h, b
    ld h, d
    ld bc, $846c
    sub b
    sub h
    sbc c
    add e
    nop
    ld hl, $a502
    ld e, c
    ld h, b
    inc hl
    nop
    inc bc
    ld a, [bc]
    ld a, [bc]
    inc c
    dec bc
    ld h, $0a
    ld bc, $0a0d
    add l
    ld [bc], a
    inc l
    push bc
    ld [bc], a
    inc [hl]
    dec bc
    dec c
    ld e, a
    ld e, [hl]
    dec c
    ld e, a
    ld e, [hl]
    ld e, [hl]
    inc bc
    ld e, [hl]
    ld e, [hl]
    nop

jr_003_7a59:
    nop
    add h
    nop
    ld hl, $b007
    or b
    and l
    sub l
    sub l
    sub a
    sub d
    nop
    add h

jr_003_7a67:
    nop
    add d
    add e
    ld bc, $01a0
    and h
    and d
    add l
    ld [bc], a
    inc b
    inc bc
    ld [hl], d
    sub b
    sub h
    sub [hl]
    ld [hl+], a
    sub h
    inc bc
    sbc c
    sub e
    ld l, b
    ld h, b
    add e
    ld bc, $04ec
    sub a
    sub h
    and [hl]
    or b
    or b
    add h
    ld [bc], a
    ld e, $03
    add h
    nop
    nop
    ld [hl], c
    ld h, d
    xor c
    ld h, d
    xor c
    add l
    ld [bc], a
    adc c
    adc e
    ld [bc], a
    adc c
    adc h
    ld [bc], a
    adc c
    inc b
    inc sp
    inc sp
    and [hl]
    or b
    add e
    add h
    nop
    add h
    add e
    nop
    inc hl
    cpl
    inc sp
    ld [bc], a
    and [hl]
    and l
    inc sp
    add a
    ld [bc], a
    ld c, [hl]
    add e
    ld [bc], a
    xor [hl]
    call nz, $2500
    ld bc, $b0b0
    add h
    ld [bc], a
    ld e, h
    ld [hl+], a
    inc sp
    nop
    inc [hl]
    db $e4
    inc h
    xor h
    rst $38
    add hl, hl
    and h
    nop
    add d
    inc h
    or b

jr_003_7acb:
    ld [bc], a
    add e
    and h
    ld d, d
    ld [hl+], a
    ld bc, $4a06
    ld bc, $6284
    ld c, d
    ld d, b
    and [hl]
    inc h
    or b
    inc bc
    and l
    nop
    ld bc, $8351
    nop
    inc d
    dec b
    adc c
    nop
    ld c, d
    ld bc, $83a6
    inc hl
    and h
    nop
    and e
    inc hl
    ld bc, $21e0
    ld d, l
    ld c, d
    add h
    ld e, e
    nop
    ld c, d
    ld h, d
    and [hl]
    and l
    ld bc, $584a
    ld d, h
    ld d, e
    ld bc, $9101
    sbc d
    sub h
    dec c
    sub h
    inc bc
    sub h
    dec c
    sub h
    ld a, l
    and l
    ld d, l
    ld c, d
    ld d, e
    ld d, a
    ld e, b
    ld d, d
    ld bc, $0085
    inc e
    add e
    nop
    dec c
    inc bc
    and d
    nop
    ld c, d
    ld e, c
    ld [hl+], a
    ld bc, $9501
    ld a, l
    add e
    nop
    ld c, $23
    and h
    add hl, de
    and d
    nop
    nop
    ld c, d
    ld bc, $9101
    sub l
    or b
    nop
    or b
    or b
    and l
    ld e, c
    ld bc, $5751
    ld e, h
    ld e, b
    ld e, d
    ld e, c
    ld c, d
    ld bc, $a655
    or b
    adc b
    nop
    jr nc, jr_003_7acb

    nop
    ld a, d
    inc b
    dec c
    sbc d
    sub h
    ld a, l
    add e
    add e
    nop
    inc d
    inc bc
    ld bc, $5355
    sub c
    ld [hl+], a
    sub l
    nop
    ld a, l
    add l
    nop
    dec e
    rlca
    ld d, d
    ld bc, $014A
    ld d, b
    nop
    sub b
    ld a, l
    add l
    nop
    ld [hl], b
    add e
    nop
    ld [hl], e
    inc e
    ld bc, $4a01
    ld d, d
    sub c
    sub l
    ld a, l
    add e
    and d
    nop
    ld d, d
    ld d, c
    ld bc, $5857
    ld e, d
    ld e, h
    ld e, c
    sub c
    sub l
    dec c
    sub l
    ld a, l
    or b
    add e
    and d
    ld [hl], d
    ld [hl], b
    ld h, d
    add h
    nop
    sub a
    nop
    sub e
    add e
    nop
    ld e, d
    nop
    add e
    add h
    nop
    ld [hl], h
    rlca
    nop
    nop
    adc b
    ld b, c
    sub e
    ld bc, $a3a1
    add e
    nop
    ld e, d
    inc b
    ld a, [hl]
    sub a
    sub h
    sub h
    sub d
    inc hl
    nop
    inc b
    and [hl]
    and l
    nop
    ld d, d
    ld bc, $0087
    ld e, d
    nop
    and l
    inc hl
    or h
    dec b
    and [hl]
    and l
    ld e, c
    ld bc, $6284
    add h
    nop
    ld l, $02
    add d
    or b
    add c
    inc hl
    and a
    dec bc
    add b
    and l
    ld bc, $0084
    nop
    ld a, l
    and l
    add a
    ld bc, $a101
    ld h, $a4
    ld b, $a3
    add h
    nop
    sub b
    sub h
    or b
    and l
    add e
    nop
    ld a, d
    nop
    sbc d
    inc hl
    sub h
    ld b, $9b
    sub l
    sub a
    sub h
    sub h
    ld a, l
    or b
    add e
    ld bc, $8544
    ld bc, $8537
    nop
    ld a, [bc]
    add e
    nop
    rra
    ld [$5585], sp
    ld d, e
    ld d, a
    ld e, b
    nop
    nop
    ld d, h
    and b
    add a
    nop
    rlca
    inc c
    and l

Call_003_7c0b:
    nop
    ld [hl], d
    sub b
    sub d
    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    ld [hl], b
    nop
    add h
    nop
    inc e
    ld [$00a5], sp
    nop
    and b
    and d
    ld [hl], d
    ld [hl], b
    nop
    nop
    add e
    ld bc, $8792
    ld bc, $2288
    nop
    nop
    sub b
    ld [hl+], a
    sub h
    nop
    sub d
    adc h
    ld bc, $0498
    and [hl]
    add e
    and h
    add d
    and l
    add [hl]
    ld bc, $0098
    ld a, [hl]
    inc h
    sub h
    inc b
    ld a, l
    and l
    nop
    and b
    and d
    add [hl]
    ld bc, $0098
    nop
    add h
    ld bc, $0021
    nop
    add [hl]
    ld bc, $86b1
    nop
    ld h, b
    ld [bc], a
    nop
    nop
    and b
    add e
    nop
    ld [hl], l
    nop
    sub b
    add h
    ld bc, $8352
    nop
    jr nz, jr_003_7c68

jr_003_7c68:
    sub b
    add l
    ld bc, $8502
    ld bc, $0c87
    or b
    or b
    sub d
    ld a, [hl]
    sub h
    and [hl]
    or b
    and l
    sub h
    ld hl, $9422
    sub h
    add h
    nop
    inc e
    ld [$9490], sp
    and l
    xor c
    xor d
    and [hl]
    or b
    and l
    xor e
    ld h, d
    xor c
    ld h, d
    xor c
    ld h, d
    xor c
    inc b
    and [hl]
    or b
    and l
    inc sp
    inc sp
    add h
    ld [bc], a
    inc l
    daa
    inc sp
    ld bc, $b0a6
    rst $38
    dec h
    ld a, [bc]
    nop
    jr nz, jr_003_7ccb

    ld a, [bc]
    add a
    nop
    ld b, $01
    or c
    or c
    dec h
    and a
    ld bc, $b1b1
    ld [hl+], a
    xor l
    ld b, $b1
    ld e, d
    ld e, c
    ld bc, $5957
    add [hl]
    ld [hl+], a
    nop
    add hl, bc
    ld l, d
    ld bc, $5857
    ld e, d
    ld e, c
    ld bc, $0086
    ld h, [hl]
    ld [hl+], a
    ld bc, $0084

jr_003_7ccb:
    jr nc, jr_003_7cd2

    ld bc, $6401
    nop
    sub b

jr_003_7cd2:
    sub d
    dec h
    dec sp
    nop
    add hl, bc
    daa
    dec sp
    add a
    nop
    ld c, h
    inc bc
    add hl, bc
    dec b
    and a
    inc h
    ld [hl+], a
    dec sp
    ld [bc], a
    and a
    add hl, bc
    inc h
    ld [hl+], a
    or c
    add e
    nop
    ld a, $83
    nop
    ccf
    inc b
    ld c, $66
    ld bc, $0e01
    inc h
    ld bc, $6b00
    jr z, jr_003_7cfc

    dec b

jr_003_7cfc:
    ld d, l
    ld d, e
    ld bc, $a686
    and l
    dec h
    dec b
    ld b, $09
    dec b
    dec b
    ld b, $38
    jr c, jr_003_7d13

    adc b
    nop
    sub b
    inc b
    dec b
    add hl, bc
    dec b

jr_003_7d13:
    ld a, $26
    ld [hl+], a
    dec b
    add hl, bc
    dec sp
    add hl, bc
    inc hl
    dec b
    inc b
    add l
    ld l, b
    ld bc, $5250
    inc hl
    ld bc, $4a00
    ld [hl+], a
    rrca
    inc bc
    ld c, d
    ld bc, $1101
    add h
    nop
    add h
    dec c
    ld d, c
    ld bc, $5501
    ld d, [hl]
    ld d, d
    ld bc, $5857
    ld d, d
    ld bc, $a5a6
    dec c
    ld [hl+], a
    ld a, [hl-]
    nop
    dec c
    add h
    nop
    sub c
    ld bc, $0000
    add [hl]
    nop
    sbc b
    add e
    nop
    call c, $00c6
    sub d
    nop
    dec b
    add e
    nop
    xor e
    ld [bc], a
    nop
    nop
    add l
    inc hl
    ld bc, $110a
    ld d, [hl]
    ld c, d
    ld d, d
    ld bc, $4a55
    ld d, l
    ld d, [hl]
    inc de
    ld d, e
    add h
    nop
    rrc h
    ld d, l
    ld d, [hl]
    nop
    nop
    ld d, d
    ld bc, $9101
    sub e
    ld d, b
    and [hl]
    and l
    ld c, d
    ld [hl+], a
    inc b
    nop
    ld c, d
    add h
    nop
    sub c
    ld bc, $3939
    add [hl]
    nop
    sbc b
    add e
    ld bc, $8322
    nop
    jp hl


    nop
    cp l
    adc b
    nop
    xor $11
    nop
    ld h, d
    ld bc, $5655
    inc de
    nop
    ld c, d
    ld d, h
    ld d, [hl]
    nop
    ld c, d
    nop
    nop
    jr jr_003_7da3

jr_003_7da3:
    ld d, h
    ld d, e
    adc b
    nop
    jr c, jr_003_7dac

    ld l, b
    and [hl]
    and l

jr_003_7dac:
    ld d, [hl]
    add e
    ld bc, $0016
    ld l, [hl]
    add l
    ld bc, $001b
    dec b
    ld [hl+], a
    and a
    nop
    dec h
    add e
    nop
    sub c
    inc hl
    and a
    nop
    dec h
    add e
    nop
    jp hl


    ld bc, $bdc0
    add e
    nop
    rst $28
    ld [hl+], a
    xor b
    inc h
    ld a, [bc]
    ld bc, $1800
    add e
    ld bc, $0947
    nop
    ld c, d
    nop
    ld a, [bc]
    ld hl, $221f
    ld a, [bc]
    ld a, [bc]
    inc c
    add e
    nop
    cp [hl]
    ld b, $01
    ld bc, $0084
    and [hl]
    and l
    ld e, e
    add e
    ld bc, $0416
    inc bc
    inc b
    ld c, d
    dec b
    dec c
    ld [hl+], a
    dec b
    inc bc
    ld a, $3b
    dec sp
    ld h, $83
    ld bc, $00a9
    ld a, $22
    dec sp
    ld a, [bc]
    ld h, $0d
    dec b
    and a
    xor [hl]

Jump_003_7e08:
    and a
    ret nz

    xor [hl]
    and a
    xor b
    xor b
    ld [hl+], a
    xor l
    nop
    xor e
    ld h, d
    xor c
    ld h, d
    xor c
    add l
    ld bc, $8ac9
    ld bc, $09c9
    ld d, h
    ld d, e
    ld d, l
    ld [hl], h
    sub b
    ld a, l
    ld a, [hl]
    inc bc
    ld a, l
    and l
    jr c, @-$56

    dec h
    and a
    inc h
    xor l
    nop
    xor b
    ld a, [hl-]
    inc sp
    dec b
    and [hl]
    nop
    nop
    or b
    nop
    and l
    rst $38
    ldh [$28], a
    inc bc
    inc e
    dec de
    add hl, de

Jump_003_7e3f:
    dec de
    dec e
    add hl, de
    add hl, de
    inc e
    inc bc
    dec de
    inc e
    add hl, de
    dec e
    dec de
    dec de
    add hl, de
    dec e
    inc e
    dec de
    dec e
    dec de
    dec de
    inc e
    inc bc
    inc e
    dec e
    dec de
    inc e
    inc bc
    add hl, de
    dec e
    inc e
    inc bc
    inc bc
    ld a, [de]
    inc bc
    inc e
    ld a, [de]
    dec e
    add hl, de
    ld [hl+], a
    inc bc
    rrca
    dec e
    inc bc
    inc bc
    inc e
    inc bc
    inc bc
    dec de
    add hl, de
    inc bc
    dec de
    inc bc
    add hl, de
    inc bc
    dec de
    ld a, [de]
    add hl, de
    ld b, c
    add hl, de
    inc bc
    add e
    nop
    dec l
    add l
    nop
    ld a, $c4
    nop
    inc h
    nop
    inc bc
    inc sp
    inc a
    add hl, hl
    nop
    add hl, bc
    ld c, e
    add hl, bc
    ld c, l
    ld c, a
    nop
    nop
    ld c, l
    ld c, a
    add hl, bc
    ld c, d
    adc c
    nop
    ld l, [hl]
    sub e
    nop
    ld l, [hl]
    add h
    nop
    ld l, [hl]
    nop
    ld a, h
    adc c
    nop
    ld [hl], h
    ld bc, $2f40
    add e
    nop
    db $76
    ld bc, $2b2a
    ld [hl+], a
    nop
    dec b
    ld l, $2d
    ld c, d
    ld c, e
    jr z, jr_003_7edd

    dec h
    nop
    ld bc, $272c
    ld a, [hl+]
    nop
    nop
    ld c, $28
    nop
    nop
    ld c, d
    ld h, $00
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld c, d
    nop
    ld hl, $0022
    ld c, $0a
    ld a, [bc]
    add hl, hl
    xor b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_003_7edd:
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_003_7f00:
    rst $38
    rst $38

Call_003_7f02:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    rrca
    ld bc, $0000
    adc l
    nop
    nop
    nop
    push bc
    inc de
    nop
    nop
    add [hl]
    call nz, $0000
    sub b
    xor l
    nop
    nop
    inc hl
    pop bc
    nop
    nop
    sbc b
    di
    nop
    nop
    inc h
    nop
