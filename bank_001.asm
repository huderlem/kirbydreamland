SECTION "ROM Bank $001", ROMX[$4000], BANK[$1]

Call_001_4000:
    ldh a, [$8e]
    bit 6, a
    call z, Call_000_8dc
    ld a, [$d05c]
    cp $98
    jr c, .jr_001_401c
    call Call_000_8cb
    ldh a, [$8d]
    res 4, a
    ldh [$8d], a
    xor a
    ld [$d063], a
    ret
.jr_001_401c:
    ld a, [$d074]
    ld e, a
    ld a, [$d075]
    ld b, a
    ld a, [$d054]
    add b
    ld [$d054], a
    jr nc, .jr_001_402e
    inc e
.jr_001_402e:
    ld a, e
    and a
    ret z
    ld [$d062], a
    ldh a, [$90]
    bit 5, a
    jp nz, .jump_001_40e1
    inc e
    ld a, [$d05c]
    add $0d
    ld [$d05e], a
    call Call_000_0784
    ld d, $00
.jr_001_4049:
    ld a, l
    call Call_000_0643
    jr nc, .jr_001_4057
    inc hl
    inc d
    dec e
    jr nz, .jr_001_4049
    jp .jump_001_40e1
.jr_001_4057:
    call Call_000_1ccb
    ld a, c
    ld [$d05e], a
    ld a, [$d05d]
    sub $10
    ld [$d05f], a
    call Call_000_819
    and a
    jr z, .jr_001_4081
    cp $01
    jr z, .jr_001_4081
    cp $06
    jr z, .jr_001_4081
    cp $09
    jr z, .jr_001_4081
    cp $08
    jr nz, .jr_001_40a4
    call Call_000_1248
    jr c, .jr_001_40a4
.jr_001_4081:
    ld a, [$d05d]
    sub $01
    ld [$d05f], a
    call Call_000_819
    and a
    jr z, .jump_001_40e1
    cp $01
    jr z, .jump_001_40e1
    cp $06
    jr z, .jump_001_40e1
    cp $09
    jr z, .jump_001_40e1
    cp $08
    jr nz, .jr_001_40a4
    call $1257
    jr nc, .jump_001_40e1
.jr_001_40a4:
    ldh a, [$8e]
    bit 6, a
    jr nz, .jr_001_40d5
    call Call_000_11c9
    ldh a, [$92]
    and $0c
    jr nz, .jr_001_40d5
    ld a, [$d074]
    cp $01
    jr nc, .jr_001_40c1
    ld a, [$d075]
    cp $82
    jr c, .jr_001_40d5
.jr_001_40c1:
    ldh a, [$8d]
    res 4, a
    ldh [$8d], a
    ld b, $82
    ldh a, [$92]
    and $f0
    or b
    ldh [$92], a
    push de
    call Call_000_37ac
    pop de
.jr_001_40d5:
    call Call_000_8cb
    ld a, $ff
    ld [$d054], a
    ld a, d
    ld [$d062], a
.jump_001_40e1:
    ldh a, [$90]
    bit 4, a
    jr nz, .jr_001_4115
    ld hl, $ff94
    bit 3, [hl]
    jr nz, .jr_001_4115
    ld hl, $ff91
    bit 6, [hl]
    jr nz, .jr_001_4115
    ldh a, [$90]
    bit 5, a
    jr nz, .jr_001_4115
    ld c, $4c
    ldh a, [$91]
    bit 7, a
    jr nz, .jr_001_4117
    ldh a, [$90]
    bit 5, a
    jp nz, .jr_001_4115
    ld a, [$d042]
    inc a
    ld d, a
    ld a, [$d051]
    cp d
    jr nz, .jr_001_4117
.jr_001_4115:
    ld c, $98
.jr_001_4117:
    ld a, [$d062]
    ld b, a
    ld a, [$d05c]
    add b
    cp $98
    jr nc, .jr_001_4149
    ld b, a
    ld a, c
    sub b
    jr c, .jr_001_4133
    call Call_000_1268
    ld a, [$d05c]
    xor a
    ld [$d063], a
    ret
.jr_001_4133:
    cpl
    inc a
    ld [$d063], a
    ld b, a
    ld a, [$d062]
    sub b
    ld [$d062], a
    ld a, b
    ld [$d063], a
    call Call_000_1268
    scf
    ret
.jr_001_4149:
    ldh a, [$92]
    and $0c
    jr nz, .jr_001_416f
    ld a, [$d074]
    cp $01
    jr nc, .jr_001_415d
    ld a, [$d075]
    cp $82
    jr c, .jr_001_416f
.jr_001_415d:
    ld b, $82
    ldh a, [$92]
    and $f0
    or b
    ldh [$92], a
    call Call_000_37ac
    ldh a, [$8d]
    res 4, a
    ldh [$8d], a
.jr_001_416f:
    call Call_000_8cb
    ld a, $98
    ld [$d05c], a
    xor a
    ld [$d063], a
    ret


Call_001_417c:
    xor a
    ld [$d063], a
    ldh a, [$8e]
    bit 6, a
    call z, Call_000_8dc
    ld a, [$d05c]
    cp $08
    jr nz, .jr_001_4193
    call Call_000_8cb
    and a
    ret
.jr_001_4193:
    ld a, [$d074]
    ld e, a
    ld a, [$d075]
    ld b, a
    ld a, [$d054]
    sub b
    ld [$d054], a
    jr nc, .jr_001_41a5
    inc e
.jr_001_41a5:
    ld a, e
    ld [$d063], a
    and a
    ret z
    ldh a, [$90]
    bit 5, a
    jp nz, .jr_001_4250
    inc e
    ld a, [$d05c]
    add $03
    ld [$d05e], a
    call Call_000_0784
    ld bc, $0010
    call Call_000_1ce0
    ld d, $00
.jr_001_41c6:
    ld a, l
    call Call_000_0643
    jr nc, .jr_001_41d4
    dec hl
    inc d
    dec e
    jr nz, .jr_001_41c6
    jp .jr_001_4250
.jr_001_41d4:
    call Call_000_1ccb
    ld a, c
    ld [$d05e], a
    ld a, [$d05d]
    sub $10
    ld [$d05f], a
    call Call_000_819
    and a
    jr z, .jr_001_41fe
    cp $01
    jr z, .jr_001_41fe
    cp $06
    jr z, .jr_001_41fe
    cp $09
    jr z, .jr_001_41fe
    cp $07
    jr nz, .jr_001_4221
    call Call_000_1248
    jr c, .jr_001_4221
.jr_001_41fe:
    ld a, [$d05d]
    sub $01
    ld [$d05f], a
    call Call_000_819
    and a
    jr z, .jr_001_4250
    cp $01
    jr z, .jr_001_4250
    cp $06
    jr z, .jr_001_4250
    cp $09
    jr z, .jr_001_4250
    cp $08
    jr nz, .jr_001_4221
    call $1257
    jr c, .jr_001_4250
.jr_001_4221:
    ldh a, [$8e]
    bit 6, a
    jr nz, .jr_001_4245
    call Call_000_11c9
    ldh a, [$92]
    and $0c
    jr nz, .jr_001_4245
    ld a, [$d074]
    cp $01
    jr nz, .jr_001_4245
    ld b, $83
    ldh a, [$92]
    and $f0
    or b
    ldh [$92], a
    push de
    call Call_000_37ac
    pop de
.jr_001_4245:
    call Call_000_8cb
    xor a
    ld [$d054], a
    ld a, d
    ld [$d063], a
.jr_001_4250:
    ld a, [$d063]
    ld b, a
    ldh a, [$90]
    bit 4, a
    jr nz, .jr_001_427e
    ld hl, $ff94
    bit 3, [hl]
    jr nz, .jr_001_427e
    ld c, $44
    ldh a, [$90]
    bit 5, a
    jp nz, .jr_001_427e
    ldh a, [$91]
    bit 7, a
    jr nz, .jr_001_4280
    ld a, [$d051]
    cp $01
    jr nz, .jr_001_4280
    ld a, [$d053]
    and $0f
    jr nz, .jr_001_4280
.jr_001_427e:
    ld c, $08
.jr_001_4280:
    ld a, [$d05c]
    sub c
    ld [$d062], a
    sub b
    jr c, .jr_001_429c
    ld a, [$d063]
    ld [$d062], a
    call Call_000_1272
    ld a, [$d05c]
    cp $08
    jr z, .jr_001_42a1
    and a
    ret
.jr_001_429c:
    call Call_000_1272
    scf
    ret
.jr_001_42a1:
    ldh a, [$92]
    and $0c
    jr nz, .jr_001_42ba
    ld a, [$d074]
    cp $01
    jr c, .jr_001_42ba
    ld b, $83
    ldh a, [$92]
    and $f0
    or b
    ldh [$92], a
    call Call_000_37ac
.jr_001_42ba:
    call Call_000_8cb
    and a
    ret


Call_001_42bf:
    ldh a, [$8b]
    bit 7, a
    jr z, .jump_001_4301
    ldh a, [$8d]
    bit 6, a
    jr z, .jump_001_4301
    ldh a, [$8e]
    bit 7, a
    jr nz, .jump_001_4301
    ldh a, [$95]
    and $60
    jp nz, .jump_001_4301
    ld hl, $ff8e
    bit 2, [hl]
    jp nz, .jump_001_4301
    bit 4, [hl]
    jr nz, .jump_001_4301
    ldh a, [$92]
    bit 2, a
    jr nz, .jump_001_4301
    set 4, a
    ldh [$92], a
    call Call_000_8dc
    ld hl, $ff8d
    res 7, [hl]
    res 0, [hl]
    ldh a, [$8c]
    set 3, a
    ldh [$8c], a
    jp Jump_001_4783
.jump_001_4301:
    ld hl, $ff92
    res 4, [hl]
    ldh a, [$8e]
    bit 1, a
    jp nz, .jump_001_4778
    bit 0, a
    jp nz, Jump_001_4783
    ldh a, [$8e]
    and $f0
    jr nz, .jr_001_437c
    ldh a, [$92]
    bit 7, a
    jr nz, .jr_001_437c
    bit 2, a
    jr nz, .jr_001_437c
    ldh a, [$8b]
    bit 0, a
    jr z, .jr_001_4361
    ldh a, [$8d]
    bit 7, a
    jr nz, .jr_001_437c
    bit 6, a
    jr z, .jr_001_437c
    bit 3, a
    jr nz, .jr_001_437c
    ld hl, $ff90
    res 3, [hl]
    ld hl, $ff92
    res 6, [hl]
    ldh a, [$8d]
    set 7, a
    res 6, a
    set 3, a
    ldh [$8d], a
    xor a
    ld [$d414], a
    ld [$d065], a
    ld [$d064], a
    ldh a, [$92]
    and $f3
    ldh [$92], a
    ld a, $04
    call Call_000_1e96
    jr .jr_001_437c
.jr_001_4361:
    ldh a, [$8d]
    bit 7, a
    jr z, .jr_001_4377
    bit 3, a
    jr z, .jr_001_437c
    ld a, [$d065]
    cp $11
    jr nc, .jr_001_4377
    ld a, $11
    ld [$d065], a
.jr_001_4377:
    ld hl, $ff8d
    res 3, [hl]
.jr_001_437c:
    ldh a, [$8b]
    ld c, a
    bit 1, a
    jp z, .jr_001_4492
    ldh a, [$8e]
    bit 7, a
    jp z, .jump_001_4410
    bit 2, a
    jp nz, .jump_001_4410
    ld a, [$d094]
    cp $02
    jp nz, .jr_001_4492
    ld hl, $ff95
    bit 6, [hl]
    jr nz, .jr_001_43e8
    ldh a, [$8e]
    bit 6, a
    jp nz, .jump_001_440b
    ld a, $20
    ld [$d07c], a
    ld a, $0e
    ld [$d07d], a
    ld a, $01
    ld [$d076], a
    ld a, $33
    ld [$d077], a
    ld a, $02
    ld [$d07a], a
    ld a, $00
    ld [$d07b], a
    xor a
    ld [$d079], a
    ld a, $15
    ld [$d07e], a
.jr_001_43cd:
    ld hl, $ff8e
    set 2, [hl]
    ld a, $16
    ld [$d065], a
    ldh a, [$92]
    and $b3
    ldh [$92], a
    xor a
    ld [$d064], a
    ld hl, $ff95
    bit 5, [hl]
    jr nz, .jr_001_4403
.jr_001_43e8:
    bit 3, [hl]
    jp nz, .jr_001_4492
    set 3, [hl]
    set 2, [hl]
    xor a
    ld [$d06a], a
    call Call_000_385b
    jp nc, .jr_001_4492
    ld hl, $ff95
    res 2, [hl]
    jp .jr_001_4492
.jr_001_4403:
    ld hl, $ff93
    res 1, [hl]
    jp .jump_001_447d
.jump_001_440b:
    call $0326
    jr .jr_001_43cd
.jump_001_4410:
    ldh a, [$95]
    bit 5, a
    jr nz, .jr_001_446a
    ldh a, [$8e]
    bit 3, a
    jr nz, .jr_001_444e
    bit 6, c
    jp nz, .jr_001_4492
    ld hl, $ff93
    res 1, [hl]
    and $f7
    jr nz, .jr_001_4492
    ldh a, [$92]
    and $94
    jr nz, .jr_001_4492
    ld hl, $ff8e
    set 4, [hl]
    ldh a, [$92]
    and $f3
    ldh [$92], a
    xor a
    ld [$d064], a
    ld a, $01
    call Call_000_1e96
    xor a
    ld [$d066], a
    call Call_375D
    jp .jr_001_4590
.jr_001_444e:
    ld a, [$d094]
    cp $04
    jr nz, .jr_001_4492
    ldh a, [$93]
    bit 4, a
    jr nz, .jr_001_4492
    ldh a, [$8e]
    bit 2, a
    jr nz, .jr_001_4492
    set 2, a
    ldh [$8e], a
    call Call_000_380a
    jr .jr_001_4492
.jr_001_446a:
    bit 3, a
    jr nz, .jr_001_4492
    set 3, a
    set 4, a
    ldh [$95], a
    ld hl, $ff93
    res 1, [hl]
    xor a
    ld [$d04f], a
.jump_001_447d:
    xor a
    ld [$d06a], a
    call Call_000_11c9
    call Call_000_384e
    jr nc, .jr_001_4492
    ld hl, $ff95
    res 2, [hl]
    res 4, [hl]
    jr .jr_001_4492
.jr_001_4492:
    ldh a, [$8b]
    ld b, a
    bit 6, a
    jp z, .jr_001_452a
    ld a, [$d02e]
    cp $01
    jr nz, .jr_001_44a6
    ld a, $ff
    call Call_000_1e96
.jr_001_44a6:
    ldh a, [$8e]
    ld c, a
    and $03
    jp nz, .jr_001_452a
    bit 4, c
    jr nz, .jr_001_451a
    push bc
    push hl
    push de
    call Call_000_483
    pop de
    pop hl
    pop bc
    and a
    jr z, .jr_001_452a
    bit 1, b
    jr nz, .jr_001_452a
    ldh a, [$8e]
    and $7b
    jr nz, .jr_001_452a
    ldh a, [$92]
    and $f3
    ldh [$92], a
    ldh a, [$8e]
    bit 6, a
    jr nz, .jr_001_452a
    bit 7, a
    jr nz, .jr_001_452a
    set 7, a
    and $98
    ldh [$8e], a
    ld hl, $ff93
    set 1, [hl]
    ld hl, $ff95
    res 2, [hl]
    ldh a, [$8d]
    and $37
    ldh [$8d], a
    ld a, $00
    ld [$d07a], a
    ld a, $cc
    ld [$d07b], a
    ld a, $00
    ld [$d076], a
    ld a, $c0
    ld [$d077], a
    ld a, $16
    ld [$d07c], a
    ld a, $09
    ld [$d07d], a
    ld a, $ff
    call Call_000_1e96
    xor a
    ld [$d094], a
    ld [$d064], a
    jr .jr_001_452a
.jr_001_451a:
    ldh a, [$94]
    and $c0
    jr nz, .jr_001_452a
    ld hl, $ff8e
    set 2, [hl]
    ld hl, $ff93
    set 1, [hl]
.jr_001_452a:
    ldh a, [$8b]
    bit 5, a
    jr z, .jr_001_4560
    ldh a, [$93]
    bit 4, a
    jr nz, .jr_001_4560
    ldh a, [$8e]
    bit 4, a
    jr nz, .jr_001_4560
    bit 2, a
    jr nz, .jr_001_4556
    bit 7, a
    jr z, .jr_001_4551
    ld a, [$d094]
    cp $02
    jr nz, .jr_001_4560
    ldh a, [$91]
    bit 1, a
    jr nz, .jr_001_4556
.jr_001_4551:
    ld hl, $ff92
    set 5, [hl]
.jr_001_4556:
    ldh a, [$8d]
    bit 4, a
    jr nz, .jr_001_4560
    set 5, a
    ldh [$8d], a
.jr_001_4560:
    ldh a, [$8b]
    bit 4, a
    jr z, .jr_001_4590
    ldh a, [$93]
    bit 4, a
    jr nz, .jr_001_4590
    ldh a, [$8e]
    bit 4, a
    jr nz, .jr_001_4590
    bit 2, a
    jr nz, .jr_001_4586
    bit 7, a
    jr z, .jr_001_4581
    ld a, [$d094]
    cp $02
    jr nz, .jr_001_4590
.jr_001_4581:
    ld hl, $ff92
    res 5, [hl]
.jr_001_4586:
    ldh a, [$8d]
    bit 4, a
    jr nz, .jr_001_4590
    res 5, a
    ldh [$8d], a
.jr_001_4590:
    ldh a, [$8e]
    bit 6, a
    jp z, .jump_001_466a
    ldh a, [$8b]
    swap a
    ld b, a
    and $03
    ldh [$8c], a
    ld [$d04d], a
    ldh a, [$8e]
    bit 5, a
    jr nz, .jr_001_45eb
    bit 7, a
    jr nz, .jr_001_460c
    ld hl, $ff8d
    set 7, [hl]
    bit 4, b
    jr nz, .jr_001_4629
    bit 2, b
    jr nz, .jr_001_4629
    ld a, [$d064]
    and a
    jr nz, .jr_001_4629
.jr_001_45c0:
    ld hl, $d190
    set 7, [hl]
    ldh a, [$8e]
    bit 3, a
    jr nz, .jr_001_45d9
    ld a, $15
    ld [$d07e], a
    ld a, $00
    ld [$d078], a
    ld a, $cc
    jr .jr_001_45e5
.jr_001_45d9:
    ld a, $30
    ld [$d07e], a
    ld a, $01
    ld [$d078], a
    ld a, $54
.jr_001_45e5:
    ld [$d079], a
    jp jr_000_0426
.jr_001_45eb:
    ld a, $00
    ld [$d078], a
    ld a, $b3
    ld [$d079], a
    ld a, [$d035]
    cp $0a
    jp c, jr_000_0426
    ld hl, $ff8e
    res 5, [hl]
    xor a
    ld [$d035], a
    ld [$d064], a
    jp jr_000_0426
.jr_001_460c:
    bit 2, a
    jr nz, .jr_001_45c0
    ld a, $ff
    ld [$d078], a
    ld a, $c0
    ld [$d079], a
    ld a, [$d035]
    cp $0a
    jp c, jr_000_0426
    xor a
    ld [$d035], a
    jp jr_000_0426
.jr_001_4629:
    ld a, [$d064]
    and a
    jr nz, .jr_001_4638
    push af
    push bc
    ld a, $1f
    call Call_000_1e96
    pop bc
    pop af
.jr_001_4638:
    ld c, a
    inc a
    ld [$d064], a
    cp $21
    jr nc, .jr_001_4655
    ld b, $00
    ld a, c
    add c
    ld c, a
    ld hl, Unk4820
    add hl, bc
    ld a, [hl+]
    ld [$d078], a
    ld a, [hl]
    ld [$d079], a
    jp jr_000_0426
.jr_001_4655:
    xor a
    ld [$d064], a
    ldh a, [$92]
    and $f3
    ldh [$92], a
    bit 4, b
    jr nz, .jr_001_4629
    bit 2, b
    jr nz, .jr_001_4629
    jp .jr_001_45c0
.jump_001_466a:
    ldh a, [$95]
    bit 6, a
    jr nz, .jr_001_4692
.jr_001_4670:
    ldh a, [$8e]
    bit 7, a
    jp z, .jr_001_4709
    bit 2, a
    jp nz, .jr_001_4709
    ldh a, [$8b]
    swap a
    ld b, a
    and $03
    ldh [$8c], a
    ld [$d04d], a
    bit 2, b
    jr nz, .jr_001_46ef
    bit 4, b
    jr nz, .jr_001_46ef
    jr .jr_001_46fc
.jr_001_4692:
    ld hl, $ff91
    bit 0, [hl]
    jr z, .jr_001_4670
    ldh a, [$8b]
    swap a
    ld b, a
    and $03
    ldh [$8c], a
    ld a, $ff
    ld [$d07d], a
    ld [$d07c], a
    inc a
    ld [$d075], a
    inc a
    ld [$d074], a
    ldh a, [$8b]
    bit 6, a
    jr nz, .jr_001_46c8
    bit 7, a
    jr nz, .jr_001_46dc
    xor a
    ld [$d078], a
    ld [$d079], a
    ld [$d07e], a
    jr .jr_001_4709
.jr_001_46c8:
    ld a, $fe
    ld [$d078], a
    xor a
    ld [$d079], a
    ld [$d07e], a
    ld hl, $ff92
    set 6, [hl]
    jp jr_000_0426
.jr_001_46dc:
    xor a
    ld [$d079], a
    ld [$d07e], a
    inc a
    ld [$d078], a
    ld hl, $ff92
    res 6, [hl]
    jp jr_000_0426
.jr_001_46ef:
    ld hl, $ff92
    set 6, [hl]
    ld a, $50
    ld [$d07e], a
    jp Jump_000_3b3
.jr_001_46fc:
    ld hl, $ff92
    res 6, [hl]
    ld a, $14
    ld [$d07e], a
    jp Jump_000_3b3
.jr_001_4709:
    ldh a, [$92]
    bit 2, a
    jr z, .jr_001_4726
    ld hl, $ff8d
    set 3, [hl]
    ld hl, $ff92
    res 6, [hl]
    ld a, $40
    ld [$d07e], a
    ld a, [$d04d]
    ldh [$8c], a
    jp Jump_000_3b3
.jr_001_4726:
    ldh a, [$8d]
    bit 7, a
    jp z, .jump_001_476b
    ldh a, [$92]
    res 6, a
    ldh [$92], a
    ldh a, [$8b]
    swap a
    and $03
    ld b, a
    ld a, b
    ld [$d04d], a
    ldh [$8c], a
    ld a, [$d065]
    cp $16
    jp nc, Jump_000_3b3
    ld c, a
    inc a
    ld [$d065], a
    cp $16
    jr nc, .jr_001_4765
    ld b, $00
    ld a, c
    add c
    ld c, a
    ld hl, $4860
    add hl, bc
    ld a, [hl+]
    ld [$d078], a
    ld a, [hl]
    ld [$d079], a
    jp jr_000_0426
.jr_001_4765:
    call Call_000_38f
    jp Jump_000_3b3
.jump_001_476b:
    ldh a, [$8b]
    swap a
    and $03
    ld [$d04d], a
    ldh [$8c], a
    jr Jump_001_4783
.jump_001_4778:
    ld a, [$d04d]
    ldh [$8c], a
    ldh a, [$8e]
    res 1, a
    ldh [$8e], a
Jump_001_4783:
    ldh a, [$8e]
    bit 4, a
    jr z, .jr_001_47ab
    ld a, [$d066]
    inc a
    ld [$d066], a
    cp $1f
    jr c, .jr_001_47ab
    ldh a, [$94]
    bit 7, a
    jr nz, .jr_001_47ab
    ldh a, [$8b]
    bit 1, a
    jr nz, .jr_001_47ab
    ldh a, [$8e]
    set 2, a
    ldh [$8e], a
    ld a, $ff
    call Call_000_1e96
.jr_001_47ab:
    ld a, [$d094]
    cp $01
    jr nz, .jr_001_47bf
    call Call_000_8dc
    ldh a, [$92]
    res 7, a
    ldh [$92], a
    xor a
    ld [$d094], a
.jr_001_47bf:
    cp $06
    jr nz, .jr_001_47fe
    ldh a, [$8e]
    bit 6, a
    jr nz, .jr_001_47fe
    set 7, a
    and $98
    ldh [$8e], a
    ldh a, [$93]
    set 1, a
    ldh [$93], a
    ldh a, [$8d]
    and $37
    ldh [$8d], a
    ld a, $00
    ld [$d07a], a
    ld a, $cc
    ld [$d07b], a
    ld a, $00
    ld [$d076], a
    ld a, $c0
    ld [$d077], a
    ld a, $16
    ld [$d07c], a
    ld a, $09
    ld [$d07d], a
    ld a, $02
    ld [$d094], a
.jr_001_47fe:
    call Call_000_917
    call $139b
    ld hl, $ff91
    bit 6, [hl]
    call nz, Call_000_6ec
    ld hl, $d3e1
    ld a, [hl+]
    or [hl]
    jr z, .jr_001_481d
    ld a, [$d034]
    and $07
    jr nz, .jr_001_481d
    call Call_000_37a7
.jr_001_481d:
    jp Func_000_246

Unk4820:
    cp $80
    cp $80
    cp $80
    cp $80
    cp $80
    cp $80
    cp $80
    cp $80
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ccf
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    inc b
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $c500
    ld a, [$d3ba]
    ld c, a
    ld b, $00
    call Call_000_21dc
    pop bc
    ret


Call_001_48a3:
    ld a, c
    ld [$d3ba], a
    ret


Call_001_48a8:
    ld a, [$d140]
    ld [$d3bc], a
    ret


Call_001_48af:
    ld a, c
    ld [$d3bb], a
    ret


Call_001_48b4:
    push bc
    ld d, b
    ld e, c
    ld a, [$d3bb]
    ld c, a
    call Call_000_2755
    pop bc
    ret

Call_001_48c0:
    push bc
    ld a, [$d3bb]
    ld c, a
    ld hl, $d39a
    add hl, bc
    dec [hl]
    jr nz, .jr_001_48df
    ld hl, $d1e0
    add hl, bc
    add hl, bc
    ld a, [hl+]
    add $07
    ld h, [hl]
    jr nc, .jr_001_48d8
    inc h
.jr_001_48d8:
    ld l, a
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    call Call_000_23af
.jr_001_48df:
    pop bc
    ret


Call_001_48e1:
    ld hl, $d1a0
    add hl, bc
    set 1, [hl]
    ret


Call_001_48e8:
    ld hl, $d1a0
    add hl, bc
    res 1, [hl]
    ld hl, $d1b0
    add hl, bc
    res 5, [hl]
    ret


Call_001_48f5:
    push bc
    ld e, $03
    ld hl, $d150
    ld a, [hl]
    add hl, bc
    sub [hl]
    bit 7, a
    jr z, .jr_001_4906
    cpl
    inc a
    ld e, $00
.jr_001_4906:
    ld d, a
    ld hl, $d140
    ld a, [hl]
    add hl, bc
    sub [hl]
    bit 7, a
    jr z, .jr_001_4919
    cpl
    inc a
    push af
    ld a, e
    xor $07
    ld e, a
    pop af
.jr_001_4919:
    ld b, a
    cp d
    jr c, .jr_001_4923
    ld a, e
    xor $01
    ld e, a
    ld a, d
    ld d, b
.jr_001_4923:
    call Call_000_3410
    ld c, $00
    cp $33
    jr c, .jr_001_4932
    inc c
    cp $ad
    jr c, .jr_001_4932
    inc c
.jr_001_4932:
    ld a, c
    add a
    add a
    add a
    or e
    ld e, a
    ld d, $00
    ld hl, Unk4944
    add hl, de
    ld a, [hl]
    ld [$d3bd], a
    pop bc
    ret

Unk4944:
    db $00, $04, $04, $08, $08, $0C, $0C, $00, $01, $03, $05, $07, $09, $0B, $0D, $0F, $02, $02, $06, $06, $0A, $0A, $0E, $0E

Call_001_495c:
    push bc
    ld e, $00
    ld hl, $d140
    ld a, [hl]
    add $28
    add hl, bc
    ld b, a
    ld a, [hl]
    add $28
    sub b
    jr nc, .jr_001_4971
    set 3, e
    cpl
    inc a
.jr_001_4971:
    ld d, a
    pop bc
    push bc
    ld hl, $d150
    ld a, [hl]
    add hl, bc
    sub [hl]
    jr nc, .jr_001_4980
    set 2, e
    cpl
    inc a
.jr_001_4980:
    ld c, a
    cp d
    jr nc, .jr_001_4988
    set 1, e
    ld c, d
    ld d, a
.jr_001_4988:
    srl c
    ld a, c
    cp d
    jr nc, .jr_001_4990
    set 0, e
.jr_001_4990:
    ld d, $00
    ld hl, Unk499c
    add hl, de
    ld a, [hl]
    ld [$d3bd], a
    pop bc
    ret

Unk499c:
    db $04, $05, $06, $05, $00, $07, $06, $07, $04, $03, $02, $03, $00

Call_001_49a9:
    ld bc, $0102
    call Call_001_495c
    ld e, a
    ld d, $00
    ld hl, $49cc
    add hl, de
    ld a, [hl]
    bit 7, a
    jr z, .jr_001_49c8
    ld e, $04
    ld hl, $d140
    ld a, [hl]
    add hl, bc
    cp [hl]
    jr nc, .jr_001_49c7
    ld e, $00
.jr_001_49c7:
    ld a, e
.jr_001_49c8:
    ld [$d3bd], a
    ret


Unk49cc:
    db $02, $03, $04, $04, $FF, $00, $00

; TODO: where does this function actually start?
    ld bc, $1ec9
    ld bc, $a221
    ret nc

    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [hl-]
    and a
    jr nz, jr_001_49f0

    ld a, [hl]
    cp $48
    jr c, jr_001_49f6

    ld e, $00
    cp $e8
    jr c, jr_001_49f6

    ld e, $02
    jr jr_001_49f6

jr_001_49f0:
    bit 7, a
    jr nz, jr_001_49f6

    ld e, $02

jr_001_49f6:
    ld a, e
    ld [$d3bd], a
    ret


    ld d, $00
    ld hl, $d140
    add hl, bc
    ld a, [hl]
    cp $58
    jr c, jr_001_4a07

    inc d

jr_001_4a07:
    ld a, d
    ld [$d3ce], a
    ret


    ld d, $00
    ld hl, $d150
    add hl, bc
    ld a, [hl]
    cp e
    jr c, jr_001_4a17

    inc d

jr_001_4a17:
    ld a, d
    ld [$d3ce], a
    ret


Call_000_4a1c:
    push bc
    ld a, [$d053]
    and $0f
    ld hl, $d140
    add hl, bc
    add [hl]
    sub $08
    ld l, a
    ld h, $00
    call Call_000_2e96
    ld hl, $d051
    add [hl]
    dec a
    ld d, a
    ld a, [$d055]
    and $0f
    ld hl, $d150
    add hl, bc
    add [hl]
    sub $10
    ld l, a
    ld h, $00
    call Call_000_2e96
    ld hl, $d052
    add [hl]
    dec a
    ld e, a
    push de
    call Call_000_2e7f
    pop bc
    push bc
    ld a, $00
    add [hl]
    ld e, a
    ld a, $ca
    adc $00
    ld d, a
    ld a, [de]
    cp $04
    jr z, .jr_001_4a68
    cp $05
    jr z, .jr_001_4a6d
    pop de
    pop bc
    ret
.jr_001_4a68:
    xor a
    ld c, $7f
    jr .jr_001_4a71
.jr_001_4a6d:
    ld a, $03
    ld c, $7c
.jr_001_4a71:
    ld [hl], a
    pop de
    call Call_000_3076
    pop bc
    ld a, $02
    call Call_3168
    ld a, $0e
    call Call_000_1e96
    ret


Call_001_4a82:
    ld hl, $ff90
    set 4, [hl]
    ret


Call_001_4a88:
    ld hl, $ff90
    res 4, [hl]
    ld hl, $ff91
    set 6, [hl]
    ret

Call_001_4a93:
    push bc
    ld hl, $d0a1
    add hl, bc
    add hl, bc
    add hl, bc
    call Call_000_1d01
    sra a
    ld b, $00
    bit 7, a
    jr z, .jr_001_4aa6
    dec b
.jr_001_4aa6:
    add [hl]
    ld [hl+], a
    ld a, [hl]
    adc b
    ld [hl], a
    pop bc
    ret

Call_000_4aad:
    ld hl, $d3cc
    set 0, [hl]
    ret


Call_000_4ab3:
    ld hl, $d190
    add hl, bc
    res 4, [hl]
    ret


Call_000_4aba:
    ld hl, $d190
    add hl, bc
    set 4, [hl]
    ret


Call_000_4ac1:
    ld hl, $d140
    add hl, bc
    ld a, [hl]
    sub $08
    ld [$d05c], a
    ld hl, $d150
    add hl, bc
    ld a, [hl]
    sub $08
    ld [$d05d], a
    ret


Call_000_4ad6:
    ld hl, $d190
    add hl, bc
    res 5, [hl]
    res 3, [hl]
    ret


Call_000_4adf:
    ld hl, $d1b0
    add hl, bc
    set 4, [hl]
    ret


Call_000_4ae6:
    ld hl, $d1b0
    add hl, bc
    set 2, [hl]
    ret


Call_000_4aed:
    push bc
    ld hl, $416c
    call Call_000_2344
    ld d, b
    ld e, c
    pop bc
    call Call_000_2755
    ret


Call_000_4afb:
    ld hl, $d1a0
    add hl, bc
    set 0, [hl]
    ld hl, $4003
    ld de, $4000
    call Call_000_21e6
    ld hl, $ff94
    set 7, [hl]
    ld hl, $d3f6
    inc [hl]
    ld a, $ff
    ld [$d3d8], a
    ret


Call_000_4b19:
    ld hl, $d140
    ld a, [hl]
    add hl, bc
    sub [hl]
    ret nc
    cpl
    inc a
    cp $2e
    ret nc
    jr .jr_001_4b31
    ld hl, $d140
    ld a, [hl]
    add hl, bc
    sub [hl]
    ret c
    cp $2e
    ret nc
.jr_001_4b31:
    ld a, [$d3f5]
    and a
    ret nz
    ld hl, $d150
    ld a, [hl]
    add hl, bc
    sub [hl]
    jr nc, .jr_001_4b40
    cpl
    inc a
.jr_001_4b40:
    cp $14
    ret nc
    ld a, $ff
    ld [$d3d2], a
    push bc
    ld a, c
    ld [$d3d3], a
    ld c, $00
    ld hl, $43de
    ld de, $4008
    call Call_000_21e6
    pop bc
    ret
    ld de, $4194
    jr .jr_001_4b62
    ld de, $41df
.jr_001_4b62:
    push bc
    ld c, $00
    ld hl, $43f6
    call Call_000_21e6
    pop bc
    ret


Call_000_4b6d:
    ld a, [$d086]
    and a
    ret z
    dec a
    ld [$d086], a
    ret


Call_000_4b77:
    ld d, $00
    ld hl, Unk4b92
    add hl, de
    add hl, de
    ld de, $d08b
    ld a, [de]
    add [hl]
    ld [de], a
    inc hl
    inc de
    ld a, [de]
    adc [hl]
    ld [de], a
    inc de
    ld a, [de]
    adc $00
    ld [de], a
    call Call_000_317f
    ret


Unk4b92:
    db $2C, $01
    db $E8, $03
    db $90, $01
    db $8A, $02
    db $00, $00
    db $D0, $07
    db $EE, $02
    db $C4, $09
    db $00, $00
    db $10, $27


Call_001_4ba6:
    ld hl, $d190
    add hl, bc
    res 2, [hl]
    ret


Call_001_4bad:
    ld hl, $d190
    add hl, bc
    set 2, [hl]
    ret


Call_001_4bb4:
    ld hl, $d3bf
    res 0, [hl]
    set 3, [hl]
    bit 7, [hl]
    jr nz, .jr_001_4bde
    ld a, [$d083]
    push af
    ld a, [$d082]
    push af
    ld a, [$d2ba]
    push af
    ld a, [$d2bb]
    push af
    ld a, $01
    ld [$d180], a
    ld a, $05
    ld [$d2ba], a
    ld a, $44
    ld [$d2bb], a
.jr_001_4bde:
    ld bc, $0001
.jr_001_4be1:
    push bc
    ld hl, $d160
    add hl, bc
    ld a, [hl]
    and a
    jr z, .jr_001_4c4b
    ld hl, $d3bf
    res 1, [hl]
    ld hl, $d1b0
    add hl, bc
    ld a, [hl]
    ld hl, $437c
    bit 2, a
    jr nz, .jr_001_4c39
    ld hl, $d190
    add hl, bc
    ld a, [hl]
    and $44
    jr nz, .jr_001_4c4b
    ld hl, $d1e0
    add hl, bc
    add hl, bc
    ld a, [hl+]
    add $05
    ld h, [hl]
    jr nc, .jr_001_4c10
    inc h
.jr_001_4c10:
    ld l, a
    ld a, [hl+]
    bit 3, a
    jr nz, .jr_001_4c4b
    bit 0, a
    jr z, .jr_001_4c4b
    ld a, [hl]
    ld [$d40c], a
    ld hl, $d1a0
    add hl, bc
    bit 0, [hl]
    jr nz, .jr_001_4c4b
    bit 7, [hl]
    jr nz, .jr_001_4c2f
    call Call_000_21ce
    jr .jr_001_4c4b
.jr_001_4c2f:
    ld a, [$d40c]
    add a
    call Call_3168
    ld hl, $436c
.jr_001_4c39:
    ld de, $4008
    call Call_000_21e6
.jr_001_4c3f:
    ld a, $01
    call Call_000_1dc3
    ld hl, $d3bf
    bit 1, [hl]
    jr z, .jr_001_4c3f
.jr_001_4c4b:
    pop bc
    inc c
    ld a, c
    cp $10
    jr nz, .jr_001_4be1
    xor a
    ld [$d095], a
    ld hl, $d3bf
    res 0, [hl]
    res 3, [hl]
    bit 7, [hl]
    ret nz
    ld hl, $ff94
    res 5, [hl]
    ld a, $01
    ld [$d180], a
    pop af
    ld [$d2bb], a
    pop af
    ld [$d2ba], a
    pop af
    ld [$d082], a
    pop af
    ld [$d083], a
    ret


Call_001_4c7b:
    call Call_000_294f
    ld a, e
    ld [$d3f4], a
    ld a, d
    ld [$d3f3], a
    ret


Call_001_4c87:
    ld e, $10
    ld d, $00
.jr_001_4c8b:
    ld a, e
    cp c
    jr z, .jr_001_4c95
    ld hl, $d180
    add hl, de
    ld [hl], $00
.jr_001_4c95:
    ld a, e
    and a
    ret z
    dec e
    jr .jr_001_4c8b
    ld a, [$d3f5]
    and a
    jp nz, Jump_001_4d3d
    ld hl, $d3e1
    ld a, [hl+]
    or [hl]
    jp nz, Jump_001_4d3d
    ld a, [$d086]
    srl a
    ld [$d086], a
    ld a, $5a
    ld [$d3f5], a
    ld a, [$d1a0]
    set 5, a
    ld [$d1a0], a
    ld a, $15
    call Call_000_1e96
    ld de, $4162
    ld hl, $41dc
    ld bc, $0000
    call Call_000_21e6
.jr_001_4cd0:
    ld a, $01
    call Call_000_1dc3
    ld hl, $ff94
    bit 5, a
    jr nz, .jr_001_4cd0
    ld a, $01
    ld [$d082], a
    ld a, $01
    ld [$d078], a
    ld a, $80
    ld [$d079], a
    xor a
    ret


Call_001_4ced:
    ld a, [$d3f5]
    and a
    jr nz, Jump_001_4d3d
    ld hl, $d3e1
    ld a, [hl+]
    or [hl]
    jr nz, Jump_001_4d3d
    ld a, [$d086]
    srl a
    ld [$d086], a
    ld a, $15
    call Call_000_1e96
    ld a, $5a
    ld [$d3f5], a
    ld a, [$d1a0]
    set 5, a
    ld [$d1a0], a
    ld de, $4149
    ld hl, $41dc
    ld bc, $0000
    call Call_000_21e6
.jr_001_4d20:
    ld a, $01
    call Call_000_1dc3
    ld hl, $ff94
    bit 5, a
    jr nz, .jr_001_4d20
    ld a, $01
    ld [$d082], a
    ld a, $fe
    ld [$d078], a
    ld a, $80
    ld [$d079], a
    xor a
    ret

Jump_001_4d3d:
    scf
    ret


Call_001_4d3f:
    xor a
    ld [$d082], a
    ld [$d083], a
    xor a
    ld [$d053], a
    ld [$d055], a
    ld [$d054], a
    ld [$d056], a
    ld_long a, $ff8f
    or $13
    ld_long $ff8f, a
    ld_long a, $ff92
    and $20
    ld_long $ff92, a
    ld_long a, $ff8e
    and $98
    ld_long $ff8e, a
    ld_long a, $ff8d
    and $20
    ld_long $ff8d, a
    ld bc, $0000
    ld a, [$d03f]
    ld b, a
    ld a, [$d052]
    dec a
    ld e, a
    call Call_000_1c52
    ld h, $00
    ld a, [$d051]
    dec a
    ld l, a
    add hl, bc
    ld b, h
    ld c, l
    ld hl, $c100
    add hl, bc
    call Call_000_1964
    ld a, $16
    ld [$d065], a
    ld a, $20
    ld [$d07c], a
    ld a, $0e
    ld [$d07d], a
    ld a, $15
    ld [$d07e], a
    ld a, $01
    ld [$d076], a
    ld a, $33
    ld [$d077], a
    ld a, $02
    ld [$d07a], a
    ld a, $00
    ld [$d07b], a
    xor a
    ld [$d074], a
    ld [$d075], a
    ld [$d078], a
    ld [$d079], a
    ld [$d064], a
    ld [$d095], a
    call Call_000_21fb
    call Call_000_139b
    call Call_000_2e9c
    call Call_000_1e67
    call Call_000_0670
    ld a, [$d03d]
    cp $ff
    ret z
    ld [$d03c], a
    call Call_000_1eb4
    ld a, $ff
    ld [$d03d], a
    ret

; free space padding
INCBIN "baserom.gb", $4def, $8000 - $4def

