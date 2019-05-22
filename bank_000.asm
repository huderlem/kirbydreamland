SECTION "ROM Bank $000", ROM0[$0]

INCBIN "baserom.gb", $0, $40 - $0

SECTION "VBlankIntr", ROM0[$40]
    jp VBlank

INCBIN "baserom.gb", $43, $48 - $43

SECTION "STATInt", ROM0[$48]
    jp LCDCStatus

INCBIN "baserom.gb", $4b, $50 - $4b

SECTION "TimerInt", ROM0[$50]
    jp Timer

INCBIN "baserom.gb", $53, $100 - $53

SECTION "Entry", ROM0[$100]

Entry::
    nop
    jp Start

SECTION "Main", ROM0[$150]

Start:
    ldh a, [rLY]
    cp 145 ; Wait for VBlank. > 144 means V-Blank
    jr c, Start
InitGame:
    xor a
    ldh [rLCDC], a
    di
    ld sp, $fffe
    ld a, Bank(InitRAM)
    ld [wLoadedROMBank], a
    ld [MBC1RomBank], a
    call InitRAM
    call WriteDMACodeToHRAM
    call ClearSprites
    call InitRamFuncD099
    call Call_005_4b30
    ld a, Bank(InitSoundEngine)
    ld [wLoadedROMBank], a
    ld [MBC1RomBank], a
    call InitSoundEngine
    ld a, $01
    ld [wLoadedROMBank], a
    ld [MBC1RomBank], a
    call InitWindow
    ld a, %11100100 ; standard greyscale palette order
    ldh [rOBP1], a
    ld a, 8
    ldh [rSCY], a
    ld [$d055], a
    xor a
    ldh [rSCX], a
    ld [$d053], a
    ldh [rIF], a
    ld a, STATF_LYC
    ldh [rSTAT], a
    ld a, LCDCF_ON | LCDCF_WIN9C00 | LCDCF_WINON | LCDCF_OBJ16 | LCDCF_OBJON | LCDCF_BGON
    ldh [hLCDC], a
    ldh [rLCDC], a
    ld a, IEF_TIMER | IEF_VBLANK
    ldh [rIE], a
    ei
    xor a
    ldh [$8c], a
    ld [$d03a], a
    ld a, Bank(Call_006_4000)
    ld [wLoadedROMBank], a
    ld [MBC1RomBank], a
    ld a, $05
    ld [$d08a], a
    ld a, $06
    ld [$d088], a
    call Call_006_4000
    ld a, $0c
    ld [$d050], a
    ld a, [$d08a]
    ld [$d089], a
    call Call_000_231e
    ld a, [$d03a]
    ld [$d039], a
    ld a, Bank(Call_006_40e4)
    ld [wLoadedROMBank], a
    ld [MBC1RomBank], a
    call Call_006_40e4
    ld a, Bank(Jump_001_4783)
    ld [wLoadedROMBank], a
    ld [MBC1RomBank], a
    ld a, $32
    ldh [$8f], a
Jump_000_01f2:
    ld a, [wBGP]
    ldh [rBGP], a
.jr_000_01f7:
    ldh a, [$8c]
    bit 5, a
    jr nz, .jr_000_01f7
    bit 6, a
    jr nz, .jr_000_01f7
    bit 4, a
    jr z, .jr_000_020c
    and $0f
    jr nz, .jr_000_020c
    xor a
    ldh [$8c], a
.jr_000_020c:
    ldh a, [$94]
    bit 3, a
    jr z, .jr_000_021e
    xor a
    ldh [$8b], a
    ldh a, [$8c]
    and $10
    ldh [$8c], a
    jp Jump_001_4783
.jr_000_021e:
    ldh a, [$8e]
    bit 4, a
    jr z, .jr_000_022a
    ldh a, [$8b]
    and $4e
    ldh [$8b], a
.jr_000_022a:
    ldh a, [$8b]
    bit 3, a
    jr z, .jr_000_023b
    ld a, Bank(Call_006_459e)
    ld [wLoadedROMBank], a
    ld [MBC1RomBank], a
    call Call_006_459e
.jr_000_023b:
    ld a, Bank(Call_001_42bf)
    ld [wLoadedROMBank], a
    ld [MBC1RomBank], a
    jp Call_001_42bf

Func_000_246:
    xor a
    ld [wClearSpritesOffset], a
    ld a, [wLoadedROMBank]
    push af
    ld a, Bank(Call_005_432c)
    ld [wLoadedROMBank], a
    ld [MBC1RomBank], a
    call Call_005_432c
    call Call_005_47e4
    pop af
    ld [wLoadedROMBank], a
    ld [MBC1RomBank], a
    call Call_000_319d
    call Call_000_2e9c
    call ClearSprites
    ld hl, $ff95
    bit 3, [hl]
    jr z, .jr_000_0280
    ld a, [$d06a]
    inc a
    ld [$d06a], a
    cp $0f
    jr c, .jr_000_0280
    res 3, [hl]
.jr_000_0280:
    ld a, [$d05d]
    cp $88
    jp nc, Jump_000_1385
    ld a, [$d086]
    and a
    jp z, Jump_000_1390
    ld hl, $ff8f
    bit 5, [hl]
    jr z, .jr_000_029b
    res 5, [hl]
    call Call_000_1bd9
.jr_000_029b:
    ldh a, [$94]
    bit 2, a
    jp z, .Jump_000_02ad
    ld a, Bank(Jump_006_43bf)
    ld [wLoadedROMBank], a
    ld [MBC1RomBank], a
    jp Jump_006_43bf
.Jump_000_02ad:
    ld hl, $ff94
    bit 5, [hl]
    jr z, .jr_000_02d1
    ld hl, $ff8c
.jr_000_02b7:
    set 6, [hl]
.jr_000_02b9:
    bit 6, [hl]
    jr nz, .jr_000_02b9
    push hl
    xor a
    ld [wClearSpritesOffset], a
    call Call_000_2e9c
    call ClearSprites
    pop hl
    ldh a, [$94]
    bit 5, a
    jr nz, .jr_000_02b7
    jr .jr_000_029b
.jr_000_02d1:
    ld hl, $ff94
    bit 3, [hl]
    jr z, .jr_000_030a
    ldh a, [$8c]
    and $20
    jr nz, .jr_000_030a
    ld a, [$d069]
    ld c, a
    inc a
    ld [$d069], a
    ld b, $00
    ld hl, $488c
    add hl, bc
    ld a, [hl]
    and a
    jr z, .jr_000_0313
    ld [$d074], a
    xor a
    ld [$d075], a
    ld hl, $ff94
    bit 4, [hl]
    jr nz, .jr_000_0303
    call Call_001_4000
    jr .jr_000_0306
.jr_000_0303:
    call Call_001_417c
.jr_000_0306:
    xor a
    ld [$d074], a
.jr_000_030a:
    ldh a, [$8c]
    set 6, a
    ldh [$8c], a
    jp Jump_000_01f2
.jr_000_0313:
    ld hl, $ff94
    res 3, [hl]
    ld hl, $ff91
    set 6, [hl]
    xor a
    ld [$d074], a
    ld [$d075], a
    jr .jr_000_030a

Call_000_0326:
    ldh a, [$8e]
    bit 6, a
    ret nz
    ld hl, $ff95
    bit 5, [hl]
    jr z, .jr_000_0354
    res 5, [hl]
    ld a, $15
    call Call_000_1e96
    ld a, [$d02d]
    cp $09
    jr nz, .jr_000_0359
    ld a, [$d03c]
    call Call_000_1eb4
    xor a
    ld [$d3df], a
    ld [$d3e0], a
    ld hl, $d1a0
    res 4, [hl]
    jr .jr_000_0359
.jr_000_0354:
    ld a, $14
    call Call_000_1e96
.jr_000_0359:
    ldh a, [$8e]
    set 6, a
    set 5, a
    bit 4, a
    jr z, .jr_000_0365
    set 2, a
.jr_000_0365:
    ldh [$8e], a
    bit 7, a
    jr nz, .jr_000_0373
    ld a, [$d190]
    set 7, a
    ld [$d190], a
.jr_000_0373:
    and $2f
    ldh [$8d], a
    ldh a, [$92]
    and $f3
    ldh [$92], a
    xor a
    ld [$d064], a
    ld [$d035], a
    ld a, $00
    ld [$d076], a
    ld a, $a8
    ld [$d077], a
    ret


Call_000_38f:
; Something do with with the peak of kirby's jumping motion.
    ld a, $ff
    ld [$d078], a
    ld a, $d8
    ld [$d079], a
    ld a, $02
    ld [$d07a], a
    ld a, $00
    ld [$d07b], a
    ld a, $15
    ld [$d07e], a
    xor a
    ld [$d064], a
    ldh a, [$92]
    and $f3
    ldh [$92], a
    ret


Jump_000_3b3:
    ldh a, [$92]
    bit 6, a
    jr nz, .jr_000_03f2
    ld a, [$d07a]
    ld d, a
    ld a, [$d07b]
    ld e, a
    ld a, [$d079]
    ld b, a
    ld a, [$d07e]
    add b
    ld [$d079], a
    ld a, [$d078]
    adc $00
    ld [$d078], a
    bit 7, a
    jr nz, jr_000_0426
    cp d
    jr c, jr_000_0426
    ld a, [$d078]
    bit 7, a
    jr nz, jr_000_0426
    ld a, d
    ld [$d078], a
    ld a, [$d079]
    cp e
    jr c, jr_000_0426
    ld a, e
    ld [$d079], a
    jr jr_000_0426
.jr_000_03f2:
    ld a, $fe
    ld d, a
    ld a, $b3
    ld e, a
    ld a, [$d07e]
    ld b, a
    ld a, [$d079]
    sub b
    ld [$d079], a
    ld a, [$d078]
    sbc $00
    bit 7, a
    jr nz, .jr_000_0411
.jr_000_040c:
    ld [$d078], a
    jr jr_000_0426
.jr_000_0411:
    cp d
    jr z, .jr_000_0416
    jr nc, .jr_000_040c
.jr_000_0416:
    ld a, d
    ld [$d078], a
    ld a, [$d079]
    cp e
    jr z, .jr_000_0422
    jr nc, jr_000_0426
.jr_000_0422:
    ld a, e
    ld [$d079], a
jr_000_0426:
    ld a, [$d078]
    bit 7, a
    jr z, .jr_000_0455
    ldh a, [$8c]
    and $f7
    or $04
    ldh [$8c], a
    ld a, [$d079]
    cpl
    inc a
    ld b, a
    ld a, [$d056]
    sub b
    ld [$d056], a
    ld a, [$d078]
    sbc $00
    jr z, .jr_000_047a
    cpl
    ld b, a
    ldh a, [$8d]
    and $f8
    or b
    ldh [$8d], a
    jp Jump_001_4783
.jr_000_0455:
    ldh a, [$8c]
    and $fb
    or $08
    ldh [$8c], a
    ld a, [$d079]
    ld b, a
    ld a, [$d056]
    add b
    ld [$d056], a
    ld a, [$d078]
    adc $00
    jr z, .jr_000_047a
    ld b, a
    ldh a, [$8d]
    and $f8
    or b
    ldh [$8d], a
    jp Jump_001_4783
.jr_000_047a:
    ldh a, [$8c]
    and $f3
    ldh [$8c], a
    jp Jump_001_4783


Call_000_483:
    ld hl, $3b3d
.jr_000_0486:
    ld a, [$d03b]
    ld b, a
    ld a, [hl+]
    cp b
    jr z, .jr_000_0497
    cp $ff
    ret z
    ld bc, $0008
    add hl, bc
    jr .jr_000_0486
.jr_000_0497:
    ld a, [$d03e]
    ld b, a
    ld a, [hl+]
    cp b
    jr z, .jr_000_04a5
    ld bc, $0007
    add hl, bc
    jr .jr_000_0486
.jr_000_04a5:
    ld a, [$d051]
    ld b, a
    ld a, [$d053]
    and $0f
    ld c, a
    ld a, [$d05c]
    add c
    and $f0
    swap a
    add b
    ld b, a
    ld a, [$d03f]
    cp b
    jr nc, .jr_000_04c3
    ld c, a
    ld a, b
    sub c
    ld b, a
.jr_000_04c3:
    ld a, [hl+]
    cp b
    jr z, .jr_000_04cd
    ld bc, $0006
    add hl, bc
    jr .jr_000_0486
.jr_000_04cd:
    ld a, [$d052]
    ld b, a
    ld a, [$d055]
    and $0f
    ld c, a
    ld a, [$d05d]
    add c
    add $0a
    and $f0
    swap a
    add b
    ld b, a
    ld a, [hl+]
    cp b
    jr z, .jr_000_04ed
    ld bc, $0005
    add hl, bc
    jr .jr_000_0486
.jr_000_04ed:
    ld a, [hl+]
    ld [$d03e], a
    push hl
    ld a, [$d03b]
    cp $04
    jr c, .jr_000_0510
    ld a, [$d03e]
    ld c, a
    ld b, $00
    ld hl, $d043
    add hl, bc
    ld a, [hl]
    cp $01
    jr nz, .jr_000_0510
    xor a
    ld [$d03e], a
    pop hl
    ld a, $ff
    ret
.jr_000_0510:
    ld a, $07
    call Call_000_1e96
    ld hl, $ff93
    bit 4, [hl]
    jr nz, jr_000_0566
    ldh a, [$95]
    bit 5, a
    jr nz, jr_000_0548
    ld hl, $ff8e
    ld a, [hl]
    and $88
    jr z, jr_000_0566
    bit 2, [hl]
    jr nz, jr_000_0566
    set 2, [hl]
    ld a, [$d3be]
    and $f9
    ld [$d3be], a
    ld a, $04
    ld [$d094], a
    ld a, [hl]
    bit 7, a
    push af
Call_000_0541:
    call z, Call_000_380a
    pop af
    call nz, Call_000_385b
jr_000_0548:
    call Call_000_139b
    ld b, $13
.jr_000_054d:
    call Call_000_1def
    push bc
    xor a
    ld [wClearSpritesOffset], a
    call Call_000_2e9c
    call ClearSprites
    pop bc
    ld a, [$d094]
    cp $01
    jr z, jr_000_0566
    dec b
    jr nz, .jr_000_054d
jr_000_0566:
    xor a
    ld [$d082], a
    ld [$d083], a
    ldh a, [$92]
    bit 5, a
    jr nz, .jr_000_0578
    ld hl, $4566
    jr .jr_000_057b
.jr_000_0578:
    ld hl, $456c
.jr_000_057b:
    ld de, $157a
    ld bc, $0000
    call Call_000_21e6
    xor a
    ldh [$8c], a
    ldh [$8d], a
    ldh [$93], a
    call Call_000_19c9
    call Call_000_0648
    call Call_000_19f9
    pop hl
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld e, a
    ld a, [$d03f]
    ld b, a
    push de
    call Call_000_1c52
    pop de
    ld a, d
    add c
    ld c, a
    ld a, b
    adc $00
    ld b, a
    xor a
    ld [$d053], a
    ld [$d055], a
    ld a, d
    inc a
    ld [$d051], a
    ld a, e
    inc a
    ld [$d052], a
    ld a, [hl+]
    swap a
    add $08
    ld [$d05c], a
    ld a, [hl+]
    swap a
    ld [$d05d], a
    ldh a, [$8f]
    or $13
    ldh [$8f], a
    ldh a, [$92]
    and $20
    ldh [$92], a
    ld hl, $c100
    add hl, bc
    call Call_000_1964
    ld a, $16
    ld [$d065], a
    xor a
    ldh [$8e], a
    ld [$d074], a
    ld [$d075], a
    ld [$d078], a
    ld [$d079], a
    ld [$d064], a
    ld [wClearSpritesOffset], a
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
    call Call_000_21fb
    call Call_000_139b
    call Call_000_2e9c
    call ClearSprites
    call StopTimer
    call Call_000_0670
    ld a, $08
    ldh [$8c], a
    ld a, [$d03d]
    cp $ff
    jr z, .jr_000_0641
    ld [$d03c], a
    call Call_000_1eb4
    ld a, $ff
    ld [$d03d], a
.jr_000_0641:
    xor a
    ret


Call_000_0643:
    and $0f
    ret z
    scf
    ret


Call_000_0648:
    push hl
    ldh a, [$91]
    and $fb
    ldh [$91], a
    ldh a, [$90]
    or $c8
    ldh [$90], a
.jr_000_0655:
    xor a
    ld [wClearSpritesOffset], a
    call Call_000_2e9c
    call ClearSprites
    ld hl, $ff8c
    set 6, [hl]
.jr_000_0664:
    bit 6, [hl]
    jr nz, .jr_000_0664
    ldh a, [$90]
    bit 7, a
    jr nz, .jr_000_0655
    pop hl
    ret


Call_000_0670:
    ldh a, [$91]
    and $fb
    ldh [$91], a
    ldh a, [$90]
    and $3c
    or $88
    ldh [$90], a
.jr_000_067e:
    ld hl, $ff8c
    set 6, [hl]
.jr_000_0683:
    bit 6, [hl]
    jr nz, .jr_000_0683
    ldh a, [$90]
    bit 7, a
    jr nz, .jr_000_067e
    ret


ReadJoypad:
    ldh a, [$8c]
    bit 7, a
    ret nz
    ld a, P1F_5
    ldh [rP1], a
    push hl
    pop hl
    push hl
    pop hl
    push hl
    pop hl
    push hl
    pop hl
    push hl
    pop hl
    ldh a, [rP1]
    and $0f
    ld c, a
    ld a, P1F_4
    ldh [rP1], a
    push hl
    pop hl
    push hl
    pop hl
    push hl
    pop hl
    push hl
    pop hl
    push hl
    pop hl
    ldh a, [rP1]
    and $0f
    swap c
    or c
    cpl
    ld b, a
    and PADF_A | PADF_B | PADF_SELECT | PADF_START
    cp PADF_A | PADF_B | PADF_SELECT | PADF_START
    jr nz, .noSoftReset
    ld a, $80
    ldh [$8c], a
    ei
    call Call_000_0648
    call StartTimer
    jp InitGame
.noSoftReset:
    ld a, [$d050]
    ld c, a
    ldh a, [$93]
    and $02
    or c
    ld c, a
    ld a, [$d04f]
    and c
    and b
    xor b
    ldh [$8b], a
    ld a, b
    ld [$d04f], a
    ld a, P1F_4 | P1F_5
    ldh [rP1], a
    ret


Call_000_6ec:
    ldh a, [$8c]
    and $20
    ret nz
    ldh [$8c], a
    ld hl, $ff90
    bit 4, [hl]
    jr nz, .jr_000_0708
    ld hl, $ff91
    ld a, [$d05c]
    cp $45
    jr c, .jr_000_070e
    cp $4b
    jr nc, .jr_000_0733
.jr_000_0708:
    ld hl, $ff91
    res 6, [hl]
    ret
.jr_000_070e:
    bit 7, [hl]
    jr nz, .jr_000_0720
    ld a, [$d051]
    cp $01
    jr nz, .jr_000_0720
    ld a, [$d053]
    and $0f
    jr z, .jr_000_0708
.jr_000_0720:
    ld a, $02
    ld [$d062], a
    ld [$d063], a
    call Call_000_1268
    xor a
    ld [$d062], a
    call Call_000_110b
    ret
.jr_000_0733:
    jr z, .jr_000_0708
    bit 7, [hl]
    jr nz, .jr_000_0747
    ld a, [$d042]
    and a
    jr z, .jr_000_0708
    inc a
    ld b, a
    ld a, [$d051]
    cp b
    jr z, .jr_000_0759
.jr_000_0747:
    ld a, $02
    ld [$d062], a
    ld [$d063], a
    call Call_000_1272
    xor a
    ld [$d062], a
    jp Call_000_1062
.jr_000_0759:
    ld a, [$d053]
    and $f0
    ld [$d053], a
    jr .jr_000_0708


Call_000_0763:
    push bc
    push de
    ld a, [$d052]
    sub $01
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld b, $00
    ld a, [$d05f]
    ld c, a
    add hl, bc
    ld a, [$d055]
    and $0f
    ld b, $00
    ld c, a
    add hl, bc
    pop de
    pop bc
    ret


Call_000_0784:
    push bc
    push de
    ld a, [$d051]
    sub $01
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld b, $00
    ld a, [$d05e]
    sub $08
    ld c, a
    add hl, bc
    ld a, [$d053]
    and $0f
    ld b, $00
    ld c, a
    add hl, bc
    pop de
    pop bc
    ret


Call_000_07a7:
    ld [$d05f], a
    call Call_000_0763
    call Call_000_1ccb
    ld a, c
    dec a
    dec a
    jr jr_000_07bf

Call_000_07b5:
    ld [$d05f], a
    call Call_000_0763
    call Call_000_1ccb
    ld a, c
jr_000_07bf:
    ld [$d05f], a
    ld a, [$d05c]
    add $08
    ld [$d05e], a
    jp Call_000_07cd


Call_000_07cd:
    push bc
    push de
    push hl
    ld a, [$d05f]
    cp $ff
    jr z, .jr_000_0816
    ld b, a
    ld a, [$d03f]
    ld e, a
    call Call_000_1c52
    ld hl, $c100
    add hl, bc
    push hl
    call Call_000_0784
    call Call_000_1ccb
    pop hl
    ld a, [$d03f]
    cp c
    jr z, .jr_000_07ff
    xor a
    cp c
    jr z, .jr_000_07f7
    dec bc
    inc hl
.jr_000_07f7:
    ld a, [$d03f]
    sub $02
    cp c
    jr nc, .jr_000_0808
.jr_000_07ff:
    ld a, [$d03f]
    ld e, a
    ld a, c
    sub e
    ld c, a
    ld b, $00
.jr_000_0808:
    add hl, bc
    ld a, [hl]
    ld c, a
    ld b, $00
    ld hl, $ca00
    add hl, bc
    ld a, [hl]
.jr_000_0812:
    pop hl
    pop de
    pop bc
    ret
.jr_000_0816:
    xor a
    jr .jr_000_0812


Call_000_819:
    push bc
    push de
    push hl
    call Call_000_0763
    call Call_000_1ccb
    ld b, c
    ld a, [$d03f]
    ld e, a
    call Call_000_1c52
    ld hl, $c100
    add hl, bc
    ldh a, [$91]
    ld b, a
    ld a, [$d05e]
    ld c, a
    bit 7, b
    jr z, .jr_000_0850
    cp $01
    jr z, .jr_000_084b
    ld a, [$d03f]
    dec a
    cp c
    jr nc, .jr_000_0850
    inc a
    ld e, a
    ld a, c
    sub e
    ld c, a
    jr .jr_000_0850
.jr_000_084b:
    ld a, [$d03f]
    add e
    ld c, a
.jr_000_0850:
    ld b, $00
    add hl, bc
    ld a, [hl]
    ld c, a
    ld b, $00
    ld hl, $ca00
    add hl, bc
    ld a, [hl]
    pop hl
    pop de
    pop bc
    ret


Call_000_0860:
    ld a, [$d07c]
    ld d, a
    ld a, [$d076]
    ld b, a
    ld a, [$d077]
    ld c, a
    ld a, [$d075]
    add d
    ld [$d075], a
    ld a, [$d074]
    adc $00
    cp b
    jr nc, .jr_000_087f
    ld [$d074], a
    ret
.jr_000_087f:
    ld a, b
    ld [$d074], a
    ld a, [$d075]
    cp c
    ret c
    ld a, c
    ld [$d075], a
    ret


Jump_000_088d:
    ldh a, [$8d]
    bit 5, a
    jr nz, .jr_000_08a4
    jr .jr_000_0895
.jr_000_0895:
    call Call_000_08b3
    call Call_001_4000
    jp nc, Jump_000_0990
    call Call_000_1062
    jp Jump_000_0990
.jr_000_08a4:
    call Call_000_08b3
    call Call_001_417c
    jp nc, Jump_000_09d6
    call Call_000_110b
    jp Jump_000_09d6

Call_000_08b3:
    ld a, [$d07d]
    ld b, a
    ld a, [$d075]
    sub b
    ld [$d075], a
    ld a, [$d074]
    sbc $00
    ld [$d074], a
    jr c, Call_000_8cb
    bit 7, a
    ret z
Call_000_8cb:
    xor a
    ld [$d075], a
    ld [$d074], a
    ld [$d04d], a
    ldh a, [$8d]
    res 4, a
    ldh [$8d], a
    ret


Call_000_8dc:
    ldh a, [$8e]
    bit 7, a
    ret nz
    ldh a, [$92]
    and $04
    ret nz
    ldh a, [$8d]
    bit 7, a
    ret nz
    set 7, a
    set 0, a
    ldh [$8d], a
    ldh a, [$92]
    and $b3
    ldh [$92], a
    ld a, $16
    ld [$d065], a
    xor a
    ld [$d064], a
    ld [$d078], a
    ld [$d079], a
    ld a, $02
    ld [$d07a], a
    ld a, $00
    ld [$d07b], a
    ldh a, [$8c]
    or $18
    ldh [$8c], a
    ret


Call_000_917:
    ldh a, [$90]
    bit 5, a
    jr nz, jr_000_097b
    ldh a, [$8d]
    bit 4, a
    jr z, jr_000_097b
    ldh a, [$8c]
    and $03
    jp z, Jump_000_088d
    swap a
    ld b, a
    ldh a, [$8d]
    and $20
    jr z, jr_000_0956
    and b
    jr nz, jr_000_097b
    ldh a, [$8c]
    res 0, a
    ldh [$8c], a
    bit 4, b
    jp z, Jump_000_088d
Jump_000_0941:
    ld a, [$d074]
    cp $01
    jp c, Jump_000_088d
    ld a, $00
    ld [$d074], a
    ld a, $80
    ld [$d075], a
    jp Jump_000_088d
jr_000_0956:
    bit 4, b
    jp nz, jr_000_097b
    ldh a, [$8c]
    res 1, a
    ldh [$8c], a
    bit 5, b
    jp z, Jump_000_088d
    ld a, [$d074]
    cp $01
    jp c, Jump_000_088d
    ld a, $00
    ld [$d074], a
    ld a, $80
    ld [$d075], a
    jp Jump_000_088d
jr_000_097b:
    ldh a, [$8c]
    bit 0, a
    jr z, jr_000_0998
    call Call_000_0860
    ldh a, [$8d]
    set 4, a
    ldh [$8d], a
    call $4000
    call c, Call_000_1062
Jump_000_0990:
    ldh a, [$8c]
    set 4, a
    res 0, a
    ldh [$8c], a
jr_000_0998:
    ld hl, $ff95
    bit 6, [hl]
    jr z, jr_000_09c0
    ldh a, [$90]
    bit 5, a
    jr z, jr_000_09c0
    ld a, [$d03b]
    cp $02
    jr z, jr_000_09b0
    cp $04
    jr nz, jr_000_09c0
jr_000_09b0:
    ld a, [$d03e]
    cp $07
    jr nz, jr_000_09c0
    ldh a, [$92]
    and $f3
    ldh [$92], a
    call Call_000_11de
jr_000_09c0:
    ldh a, [$8c]
    bit 1, a
    jp z, Jump_000_09de
    call Call_000_0860
    ldh a, [$8d]
    set 4, a
    ldh [$8d], a
    call $417c
    call c, Call_000_110b
Jump_000_09d6:
    ldh a, [$8c]
    set 4, a
    res 1, a
    ldh [$8c], a
Jump_000_09de:
    ldh a, [$8c]
    bit 2, a
    jp z, Jump_000_0caf
    ldh a, [$93]
    res 7, a
    ldh [$93], a
    ldh a, [$90]
    bit 5, a
    jp nz, Jump_000_0ab8
    ld a, [$d05d]
    ld [$d05f], a
    call Call_000_0763
    ld d, $00
    ldh a, [$8d]
    and $07
    jp z, Jump_000_0ab8
    ld e, a
jr_000_0a05:
    ld a, l
    call Call_000_0643
    jr nc, jr_000_0a13
    dec hl
    inc d
    dec e
    jr nz, jr_000_0a05
    jp Jump_000_0ab8

jr_000_0a13:
    call Call_000_1ccb
    ld a, c
    dec a
    dec a
    ld [$d05f], a
    ld a, [$d05c]
    add $03
    ld [$d05e], a
    call Call_000_07cd
    ld c, $00
    ld b, a
    and a
    jr z, .jr_000_0a3f
    cp $01
    jr z, .jr_000_0a3f
    cp $06
    jr z, .jr_000_0a3f
    cp $07
    jr nz, .jr_000_0a63
    ldh a, [$93]
    set 6, a
    ldh [$93], a
.jr_000_0a3f:
    ld a, [$d05c]
    add $0c
    ld [$d05e], a
    call Call_000_07cd
    ld c, a
    and a
    jp z, Jump_000_0ab8
    cp $01
    jp z, Jump_000_0ab8
    cp $06
    jp z, Jump_000_0ab8
    cp $07
    jr nz, .jr_000_0a63
    ldh a, [$93]
    set 6, a
    ldh [$93], a
.jr_000_0a63:
    ld a, [$d05d]
    cp $10
    jp z, Jump_000_0a9e
    jp c, Jump_000_0a9e
    ld a, [$d3f5]
    ld hl, $d3e1
    or [hl]
    inc hl
    or [hl]
    jr nz, jr_000_0aa4
    ld a, b
    and a
    jr z, .jr_000_0a87
    cp $07
    jr z, .jr_000_0a87
    cp $08
    jr nz, Jump_000_0a9e
    jr .jr_000_0a93

.jr_000_0a87:
    ld a, c
    and a
    jr z, .jr_000_0a93
    cp $07
    jr z, Jump_000_0ab8
    cp $08
    jr nz, Jump_000_0a9e
.jr_000_0a93:
    push bc
    push de
    call $4c9b
    pop de
    pop bc
    jr c, jr_000_0aa9
    jr Jump_000_0ab8

Jump_000_0a9e:
    ldh a, [$8e]
    bit 6, a
    jr nz, jr_000_0aa9
jr_000_0aa4:
    push de
    call Call_000_0c85
    pop de
jr_000_0aa9:
    ld a, $16
    ld [$d065], a
    xor a
    ld [$d078], a
    ld [$d079], a
    ld a, d
    jr jr_000_0abc

Jump_000_0ab8:
    ldh a, [$8d]
    and $07
jr_000_0abc:
    ld [$d061], a
    ld b, a
    ldh a, [$90]
    bit 4, a
    jr nz, .jr_000_0ad6
    ld c, $4c
    ld a, [$d052]
    cp $01
    jr nz, .jr_000_0ad8
    ld a, [$d055]
    and $0f
    jr nz, .jr_000_0ad8
.jr_000_0ad6:
    ld c, $10
.jr_000_0ad8:
    ld a, [$d05d]
    sub c
    ld [$d060], a
    sub b
    jr c, .jr_000_0b08
    ld a, [$d061]
    ld [$d060], a
    call Call_000_127d
    ld a, [$d05d]
    cp $08
    jp nz, Jump_000_0bba
.jr_000_0af3:
    call Call_000_0c85
    jp c, Jump_000_0bba
    ld a, $16
    ld [$d065], a
    xor a
    ld [$d078], a
    ld [$d079], a
    jp Jump_000_0bba

.jr_000_0b08:
    call Call_000_127d
    ldh a, [$90]
    bit 4, a
    jp nz, Jump_000_0bba
    ld a, [$d060]
    ld b, a
    ld a, [$d061]
    sub b
    jp z, Jump_000_0bba
    ld [$d061], a
    ld b, a
    ld a, [$d055]
    ld c, a
.jr_000_0b25:
    ld a, c
    call Call_000_0643
    jr nc, .jr_000_0b68
    dec c
    dec b
    jr nz, .jr_000_0b25
    ld a, [$d05d]
    cp $10
    jp nc, Jump_000_0baf
    jp Jump_000_0bba

.jr_000_0b3a:
    ld a, [$d05d]
    cp $10
    jr z, .jr_000_0af3
    ld a, [$d061]
    sub b
    ld [$d061], a
    ld a, b
    ld [$d060], a
    call Call_000_127d
    ld a, [$d05d]
    cp $10
    jp nz, Jump_000_0baf
    call Call_000_0c85
    xor a
    ld [$d078], a
    ld [$d079], a
    ld a, $16
    ld [$d065], a
    jr Jump_000_0baf

.jr_000_0b68:
    ld a, [$d052]
    ld c, a
    cp $01
    jr z, .jr_000_0b3a
    ldh a, [$8c]
    bit 5, a
    jp nz, Jump_000_0caf
    ld a, [$d055]
    sub $10
    ld [$d058], a
    ld a, [$d053]
    and $f0
    ld [$d057], a
    ld a, [$d052]
    dec a
    jr z, .jr_000_0b8e
    dec a
.jr_000_0b8e:
    ld e, a
    ld a, [$d03f]
    ld b, a
    call Call_000_1c52
    ld hl, $c100
    add hl, bc
    ld b, $00
    ld a, [$d051]
    dec a
    ld c, a
    add hl, bc
    call Call_000_12b4
    ld hl, $d052
    dec [hl]
    ldh a, [$8c]
    set 5, a
    ldh [$8c], a
Jump_000_0baf:
    ld a, [$d061]
    ld b, a
    ld a, [$d055]
    sub b
    ld [$d055], a
Jump_000_0bba:
    ldh a, [$8c]
    set 4, a
    res 2, a
    ldh [$8c], a
    ldh a, [$93]
    bit 6, a
    jr z, .jr_000_0be0
    ld a, [$d3f5]
    ld hl, $d3e1
    or [hl]
    inc hl
    or [hl]
    jr nz, .jr_000_0be0
    ld a, [$d05d]
    add $18
    call Call_000_07a7
    cp $07
    jp z, $4c9b
.jr_000_0be0:
    ldh a, [$8e]
    bit 6, a
    jp z, Jump_000_0caf
    ld a, [$d05d]
    cp $71
    jp nc, Jump_000_0caf
    dec a
    call Call_000_07b5
    cp $06
    jp z, Jump_000_0caf
    ldh a, [$92]
    and $3c
    ldh [$92], a
    ld a, [$d190]
    res 7, a
    ld [$d190], a
    ldh a, [$8e]
    and $9c
    ldh [$8e], a
    ldh a, [$95]
    bit 6, a
    jr nz, .jr_000_0c82
    ldh a, [$8e]
    bit 7, a
    jr nz, .jr_000_0c59
.jr_000_0c18:
    ld a, $02
    ld [$d07a], a
    ld a, $00
    ld [$d07b], a
    ld a, $01
    ld [$d076], a
    ld a, $33
    ld [$d077], a
    ldh a, [$90]
    res 3, a
    ldh [$90], a
    ldh a, [$92]
    res 6, a
    ldh [$92], a
    ldh a, [$8d]
    set 7, a
    res 6, a
    set 3, a
    ldh [$8d], a
    ld a, $16
    xor a
    ld [$d065], a
    ld [$d078], a
    ld [$d079], a
    ldh a, [$8e]
    bit 7, a
    ret z
    ld a, $16
    ld [$d065], a
    ret

.jr_000_0c59:
    bit 2, a
    jr nz, .jr_000_0c18
    ldh a, [$8d]
    res 6, a
    ldh [$8d], a
    ld a, $00
    ld [$d07a], a
    ld a, $cc
    ld [$d07b], a
    ld a, $00
    ld [$d076], a
    ld a, $00
    ld [$d076], a
    xor a
    ld [$d078], a
    ld [$d079], a
    ld [$d065], a
    ret

.jr_000_0c82:
    jp Call_000_3768


Call_000_0c85:
    ldh a, [$8e]
    bit 7, a
    jr nz, .jr_000_0cad
    ld a, [$d065]
    cp $03
    jr c, .jr_000_0cad
    ld a, [$d078]
    bit 7, a
    jp z, .jr_000_0cad
    cp $ff
    jp nc, .jr_000_0cad
    ld b, $81
    ldh a, [$92]
    and $fc
    or b
    ldh [$92], a
    call Call_000_37ac
    xor a
    ret

.jr_000_0cad:
    scf
    ret


Jump_000_0caf:
    ldh a, [$90]
    bit 3, a
    jr nz, .jr_000_0cba
    ldh a, [$8c]
    bit 3, a
    ret z
.jr_000_0cba:
    ldh a, [$93]
    res 6, a
    ldh [$93], a
    ldh a, [$90]
    res 3, a
    ldh [$90], a
    bit 5, a
    jp nz, .jump_000_0ee0
    ld a, [$d05d]
    cp $71
    jp nc, .jump_000_0ee0
    ld a, [$d05d]
    ld [$d05f], a
    call Call_000_0763
    ld d, $00
    ldh a, [$8d]
    and $07
    jp z, .jump_000_0cf5
    inc a
    ld e, a
.jr_000_0ce7:
    ld a, l
    call Call_000_0643
    jr nc, .jump_000_0cf5
    inc hl
    inc d
    dec e
    jr nz, .jr_000_0ce7
    jp .jump_000_0ee0

.jump_000_0cf5:
    call Call_000_1ccb
    ld a, c
    ld [$d05f], a
    ld a, [$d05c]
    add $03
    ld [$d05e], a
    call Call_000_07cd
    ld c, $00
    ld b, a
    and a
    jr z, .jr_000_0d24
    cp $01
    jr z, .jr_000_0d24
    cp $08
    jr z, .jr_000_0d1e
    cp $06
    jr nz, .jr_000_0d55
    call Call_000_0326
    jr .jr_000_0d24
.jr_000_0d1e:
    ldh a, [$93]
    set 7, a
    ldh [$93], a
.jr_000_0d24:
    ld a, [$d05c]
    add $0c
    ld [$d05e], a
    call Call_000_07cd
    ld c, a
    and a
    jp z, .jump_000_0d4f
    cp $01
    jr z, .jr_000_0d55
    cp $08
    jr z, .jr_000_0d46
    cp $06
    jr nz, .jr_000_0d55
    call Call_000_0326
    jp .jump_000_0ee0
.jr_000_0d46:
    ldh a, [$93]
    set 7, a
    ldh [$93], a
    jp .jump_000_0ee0
.jump_000_0d4f:
    ld a, $01
    cp b
    jp nz, .jump_000_0ee0
.jr_000_0d55:
    ld a, [$d3f5]
    ld hl, $d3e1
    or [hl]
    inc hl
    or [hl]
    jr nz, .jr_000_0d7f
    ld a, b
    and a
    jr z, .jr_000_0d6a
    cp $07
    jr nz, .jr_000_0d7f
    jr .jr_000_0d72
.jr_000_0d6a:
    ld a, c
    and a
    jr z, .jr_000_0d72
    cp $07
    jr nz, .jr_000_0d7f
.jr_000_0d72:
    push bc
    push de
    call $4ced
    pop de
    pop bc
    jp c, .jump_000_0ece
    jp .jump_000_0ee0
.jr_000_0d7f:
    ldh a, [$92]
    bit 2, a
    jr z, .jr_000_0da7
    ldh a, [$8e]
    and $18
    jp nz, .jump_000_0ec8
    ldh a, [$8e]
    set 2, a
    ldh [$8e], a
    bit 4, a
    jp z, .jump_000_0ece
    ld a, $01
    call Call_000_1e96
    ld a, [$d04f]
    or $01
    ld [$d04f], a
    jp .jump_000_0ece
.jr_000_0da7:
    bit 3, a
    jp nz, .jump_000_0e7f
    ldh a, [$93]
    bit 4, a
    jr nz, .jr_000_0df4
    ldh a, [$8b]
    bit 7, a
    jp z, .jump_000_0e57
    ld a, b
    and a
    jr z, .jr_000_0dc5
    cp $06
    jr z, .jr_000_0dc5
    cp $01
    jr nz, .jr_000_0df4
.jr_000_0dc5:
    ld a, c
    and a
    jr z, .jr_000_0dd1
    cp $06
    jr z, .jr_000_0dd1
    cp $01
    jr nz, .jr_000_0df4
.jr_000_0dd1:
    xor a
    ld [$d064], a
    ld hl, $ff93
    res 4, [hl]
    ldh a, [$92]
    and $e0
    or $80
    ldh [$92], a
    ld hl, $ff8e
    res 1, [hl]
    ldh a, [$8d]
    set 7, a
    res 6, a
    ldh [$8d], a
    inc d
    ld a, d
    jp .jump_000_0f19
.jr_000_0df4:
    ld hl, $ff8e
    bit 3, [hl]
    jr z, .jr_000_0e1b
    bit 7, [hl]
    jp nz, .jump_000_0e4f
    ldh a, [$93]
    bit 4, a
    jp nz, .jump_000_0ece
    ldh a, [$93]
    set 4, a
    ldh [$93], a
    xor a
    ld [$d3be], a
    push de
    ld a, $03
    call Call_000_1e96
    pop de
    jp .jump_000_0ece
.jr_000_0e1b:
    ldh a, [$8e]
    and $98
    jp nz, .jump_000_0ece
    ldh a, [$8e]
    and $f8
    ldh [$8e], a
    ldh a, [$92]
    and $08
    jp nz, .jump_000_0ece
    ldh a, [$95]
    and $7e
    jp nz, .jump_000_0ece
    ldh a, [$92]
    and $70
    or $10
    ldh [$92], a
    ldh a, [$8d]
    and $70
    or $40
    ldh [$8d], a
    xor a
    ld [$d078], a
    ld [$d079], a
    jr .jump_000_0ece
.jump_000_0e4f:
    ldh a, [$92]
    res 4, a
    ldh [$92], a
    jr .jump_000_0ece
.jump_000_0e57:
    ld a, [$d04f]
    or $01
    ld [$d04f], a
    ld a, [$d078]
    cp $01
    jr c, .jump_000_0ece
    ldh a, [$8e]
    and $70
    jr nz, .jump_000_0ece
    xor a
    ld [$d065], a
    ldh a, [$92]
    and $e0
    or $80
    ldh [$92], a
    push de
    call Call_000_37ac
    pop de
    jr .jump_000_0ece
.jump_000_0e7f:
    ld hl, $ff92
    res 3, [hl]
    ldh a, [$8e]
    and $f8
    jr nz, .jump_000_0ec8
    ldh a, [$95]
    bit 6, a
    jr nz, .jump_000_0ec8
    ldh a, [$92]
    set 2, a
    res 6, a
    ldh [$92], a
    ld a, $02
    ld [$d07a], a
    ld a, $00
    ld [$d07b], a
    ld a, $fd
    ld [$d078], a
    ld a, $00
    ld [$d079], a
    ld hl, $ff8e
    bit 4, [hl]
    jr nz, .jump_000_0ec8
    push de
    ld a, $1e
    call Call_000_1e96
    call Call_000_37b1
    pop de
    ldh a, [$8d]
    res 7, a
    res 6, a
    ldh [$8d], a
    ld a, d
    jr .jump_000_0f19
.jump_000_0ec8:
    ldh a, [$92]
    and $60
    ldh [$92], a
.jump_000_0ece:
    ldh a, [$8d]
    res 7, a
    set 6, a
    ldh [$8d], a
    xor a
    ld [$d078], a
    ld [$d079], a
    ld a, d
    jr .jump_000_0f19
.jump_000_0ee0:
    ld hl, $ff8d
    set 3, [hl]
    ldh a, [$8e]
    and $e0
    jr nz, .jr_000_0f0f
    ldh a, [$95]
    and $40
    jr nz, .jr_000_0f0f
    ld hl, $ff92
    ld a, [hl]
    and $0c
    jr nz, .jr_000_0f0f
    ld a, [$d064]
    inc a
    ld [$d064], a
    cp $1a
    jr c, .jr_000_0f0f
    ldh a, [$8e]
    bit 3, a
    jr nz, .jr_000_0f0f
    set 3, [hl]
    call Call_000_383b
.jr_000_0f0f:
    ldh a, [$8d]
    set 7, a
    res 6, a
    ldh [$8d], a
    and $07
.jump_000_0f19:
    ld [$d060], a
    ld b, a
    ldh a, [$90]
    bit 4, a
    jr nz, .jr_000_0f31
    ld c, $54
    ld a, [$d040]
    sub $07
    ld d, a
    ld a, [$d052]
    cp d
    jr nz, .jr_000_0f3b
.jr_000_0f31:
    ld c, $90
    ldh a, [$95]
    bit 6, a
    jr z, .jr_000_0f3b
    ld c, $80
.jr_000_0f3b:
    ld a, [$d05d]
    add b
    ld b, a
    ld a, c
    sub b
    jr c, .jr_000_0f5a
    call Call_000_1288
    ld a, [$d040]
    cp $08
    jp nz, .jump_000_1021
    ld a, [$d05d]
    cp $90
    jp c, .jump_000_1021
    jp .jump_000_0f92
.jr_000_0f5a:
    cpl
    inc a
    ld [$d061], a
    ld b, a
    ld a, [$d060]
    sub b
    ld [$d060], a
    call nz, Call_000_1288
    ld a, [$d052]
    ld b, a
    ld a, [$d040]
    sub b
    cp $08
    jp c, .jump_000_0f92
    ld a, [$d061]
    ld b, a
    ld a, [$d055]
    inc a
    ld c, a
.jr_000_0f80:
    ld a, c
    call Call_000_0643
    jr nc, .jr_000_0fc3
    inc c
    dec b
    jr nz, .jr_000_0f80
    ld a, [$d05d]
    cp $90
    jp nz, .jump_000_1019
.jump_000_0f92:
    ldh a, [$8d]
    and $7f
    set 6, a
    ldh [$8d], a
    ldh a, [$92]
    and $33
    ldh [$92], a
    ldh a, [$8c]
    and $fc
    ldh [$8c], a
    jp .jump_000_1021
.jr_000_0fa9:
    ld a, [$d061]
    sub b
    inc a
    ld [$d061], a
    ld a, b
    dec a
    ld [$d060], a
    call Call_000_1288
    ld a, [$d040]
    sub $07
    ld [$d052], a
    jr .jump_000_1019
.jr_000_0fc3:
    ld a, [$d040]
    sub $08
    ld c, a
    ld a, [$d052]
    cp c
    jr z, .jr_000_0fa9
    jr nc, .jump_000_0f92
    ldh a, [$8c]
    bit 5, a
    ret nz
    ld a, [$d055]
    and $0f
    ld b, a
    jr z, .jr_000_0fe2
    ld a, $10
    sub b
    ld b, a
.jr_000_0fe2:
    ld a, [$d055]
    add $80
    add b
    ld [$d058], a
    ld a, [$d053]
    and $f0
    ld [$d057], a
    ld a, [$d052]
    add $08
    ld e, a
    ld a, [$d03f]
    ld b, a
    call Call_000_1c52
    ld hl, $c100
    add hl, bc
    ld b, $00
    ld a, [$d051]
    dec a
    ld c, a
    add hl, bc
    call Call_000_12b4
    ldh a, [$8c]
    set 5, a
    ldh [$8c], a
    ld hl, $d052
    inc [hl]
.jump_000_1019:
    ld hl, $d055
    ld a, [$d061]
    add [hl]
    ld [hl], a
.jump_000_1021:
    ldh a, [$8c]
    set 4, a
    res 3, a
    ldh [$8c], a
    ldh a, [$93]
    bit 7, a
    ret z
    ld a, [$d3f5]
    ld hl, $d3e1
    or [hl]
    inc hl
    or [hl]
    ret nz
    ld a, [$d05d]
    sub $08
    call Call_000_07b5
    cp $08
    ret nz
    jp $4ced


Call_000_1046:
    push bc
    push de
    ld hl, $c100
    ld a, [$d052]
    dec a
    ld b, a
    ld a, [$d03f]
    ld e, a
    call Call_000_1c52
    add hl, bc
    ld b, $00
    ld a, [$d051]
    ld c, a
    add hl, bc
    pop de
    pop bc
    ret


Call_000_1062:
    ldh a, [$90]
    bit 4, a
    ret nz
    ld a, [$d063]
    and a
    ret z
    ld b, a
    ld a, [$d053]
    inc a
    ld c, a
.jr_000_1072:
    ld a, c
    call Call_000_0643
    jr nc, .jr_000_109b
    inc c
    dec b
    jr nz, .jr_000_1072
    ld a, [$d05c]
    cp $98
    jp nz, .jump_000_1102
.jr_000_1084:
    ld a, [$d063]
    sub b
    ld [$d063], a
    ld a, b
    ld [$d062], a
    call Call_000_1268
    ld a, [$d042]
    inc a
    ld [$d051], a
    jr .jump_000_1102
.jr_000_109b:
    ldh a, [$91]
    bit 7, a
    jr nz, .jr_000_10ac
    ld a, [$d042]
    inc a
    ld c, a
    ld a, [$d051]
    cp c
    jr z, .jr_000_1084
.jr_000_10ac:
    ld a, [$d053]
    and $0f
    ld b, a
    jr z, .jr_000_10b8
    ld a, $10
    sub b
    ld b, a
.jr_000_10b8:
    ld a, [$d053]
    add $a0
    add b
    ld [$d057], a
    ld a, [$d055]
    and $f0
    ld [$d058], a
    call Call_000_1046
    ld b, $00
    ld c, $0a
    add hl, bc
    ld a, [$d051]
    add $0b
    ld c, a
    ld a, [$d03f]
    cp c
    jr nc, .jr_000_10e1
    ld c, a
    call Call_000_1ce0
.jr_000_10e1:
    call Call_000_1292
    ldh a, [$8c]
    set 5, a
    ldh [$8c], a
    ld a, [$d051]
    ld b, a
    ld a, [$d03f]
    cp b
    jr nz, .jr_000_10fe
    ldh a, [$91]
    bit 7, a
    jr z, .jr_000_10fe
    xor a
    ld [$d051], a
.jr_000_10fe:
    ld hl, $d051
    inc [hl]
.jump_000_1102:
    ld hl, $d053
    ld a, [$d063]
    add [hl]
    ld [hl], a
    ret


Call_000_110b:
    ldh a, [$90]
    bit 4, a
    ret nz
    ldh a, [$90]
    bit 5, a
    ret nz
    ld hl, $ff94
    bit 3, [hl]
    ret nz
    ld a, [$d062]
    ld b, a
    ld a, [$d063]
    sub b
    ret z
    ld [$d063], a
    ld b, a
    ld a, [$d053]
    ld c, a
.jr_000_112c:
    ld a, c
    call Call_000_0643
    jr nc, .jr_000_115d
    dec c
    dec b
    jr nz, .jr_000_112c
    ld a, [$d05c]
    cp $08
    jp nc, .jump_000_11be
    ret
.jr_000_113f:
    ld a, [$d05c]
    cp $08
    jp z, $42a1
    ld a, [$d063]
    sub b
    ld [$d063], a
    ld b, a
    ld [$d062], a
    call Call_000_1272
    ld a, $01
    ld [$d051], a
    jp .jump_000_11be
.jr_000_115d:
    ldh a, [$91]
    bit 7, a
    jr nz, .jr_000_116d
    ld a, [$d051]
    cp $01
    jr z, .jr_000_113f
    jp c, $42a1
.jr_000_116d:
    ldh a, [$8c]
    bit 5, a
    ret nz
    ld a, [$d053]
    sub $10
    ld [$d057], a
    ld a, [$d055]
    and $f0
    ld [$d058], a
    ld a, [$d051]
    cp $01
    jr nz, .jr_000_11ac
    ldh a, [$91]
    bit 7, a
    jr z, .jr_000_11ac
    ld a, [$d03f]
    inc a
    ld [$d051], a
    call Call_000_1046
    dec hl
    dec hl
    ld a, [$d03f]
    ld [$d051], a
    call Call_000_1292
    ldh a, [$8c]
    set 5, a
    ldh [$8c], a
    jr .jump_000_11be
.jr_000_11ac:
    call Call_000_1046
    dec hl
    dec hl
    call Call_000_1292
    ldh a, [$8c]
    set 5, a
    ldh [$8c], a
    ld hl, $d051
    dec [hl]
.jump_000_11be:
    ld hl, $d063
    ld a, [$d053]
    sub [hl]
    ld [$d053], a
    ret


Call_000_11c9:
    ldh a, [$8d]
    bit 6, a
    ret z
    ldh a, [$92]
    bit 2, a
    ret z
    res 2, a
    ldh [$92], a
    ldh a, [$8e]
    res 2, a
    ldh [$8e], a
    ret


Call_000_11de:
    ld b, $01
    ld a, [$d053]
    inc a
    ld c, a
.jr_000_11e5:
    ld a, c
    call Call_000_0643
    jr nc, .jr_000_11f6
    inc c
    dec b
    jr nz, .jr_000_11e5
    jr .jr_000_123f
.jr_000_11f1:
    ld a, $14
    ld [$d051], a
.jr_000_11f6:
    ld c, $1e
    ld a, [$d051]
    cp c
    jr z, .jr_000_11f1
    ld a, [$d053]
    and $0f
    ld b, a
    jr z, .jr_000_120a
    ld a, $10
    sub b
    ld b, a
.jr_000_120a:
    ld a, [$d053]
    add $a0
    add b
    ld [$d057], a
    xor a
    ld [$d058], a
    ld hl, $c100
    ld b, $00
    ld a, [$d051]
    bit 7, a
    jr z, .jr_000_122b
    cpl
    inc a
    ld c, a
    call Call_000_1ce0
    jr .jr_000_122d
.jr_000_122b:
    ld c, a
    add hl, bc
.jr_000_122d:
    ld b, $00
    ld c, $0a
    add hl, bc
    call Call_000_1292
    ldh a, [$8c]
    set 5, a
    ldh [$8c], a
    ld hl, $d051
    inc [hl]
.jr_000_123f:
    ld a, [$d053]
    add $01
    ld [$d053], a
    ret


Call_000_1248:
    ld hl, $d05d
    ld a, [$d055]
    and $0f
    add [hl]
    and $08
    jr nz, .jr_000_1266
    scf
    ret
    ld hl, $d05d
    ld a, [$d055]
    and $0f
    add [hl]
    and $08
    jr z, .jr_000_1266
    scf
    ret
.jr_000_1266:
    xor a
    ret


Call_000_1268:
    ld hl, $d05c
    ld a, [$d062]
    ld b, a
    add [hl]
    ld [hl], a
    ret


Call_000_1272:
    ld hl, $d05c
    ld a, [$d062]
    ld b, a
    ld a, [hl]
    sub b
    ld [hl], a
    ret


Call_000_127d:
    ld hl, $d05d
    ld a, [$d060]
    ld b, a
    ld a, [hl]
    sub b
    ld [hl], a
    ret


Call_000_1288:
    ld hl, $d05d
    ld a, [$d060]
    ld b, a
    add [hl]
    ld [hl], a
    ret


Call_000_1292:
    push bc
    ld de, $cb00
    ld c, $09
.jr_000_1298:
    ld a, [hl]
    call Call_000_131a
    push bc
    ld b, $00
    ld a, [$d03f]
    ld c, a
    add hl, bc
    pop bc
    ld a, [$d058]
    add $10
    ld [$d058], a
    dec c
    jr nz, .jr_000_1298
    xor a
    ld [de], a
    pop bc
    ret


Call_000_12b4:
    push bc
    ld de, $cb00
    ld a, [$d03f]
    ld b, a
    ld a, [$d051]
    add $0a
    sub b
    jr c, .jr_000_12cb
    ld b, a
    ld a, $0b
    sub b
    ld c, a
    jr .jr_000_12cf
.jr_000_12cb:
    ld c, $0b
    ld b, $00
.jr_000_12cf:
    push bc
.jr_000_12d0:
    ld a, [hl+]
    call Call_000_131a
    ld a, [$d057]
    add $10
    ld [$d057], a
    dec c
    jr nz, .jr_000_12d0
    pop bc
    xor a
    cp b
    jr z, .jr_000_1316
    push bc
    push de
    ld a, [$d052]
    ld c, a
    ldh a, [$8c]
    bit 2, a
    jr nz, .jr_000_12f4
    ld a, $0a
    add c
    ld c, a
.jr_000_12f4:
    dec c
    jr z, .jr_000_12f8
    dec c
.jr_000_12f8:
    ld e, c
    ld a, [$d03f]
    ld b, a
    call Call_000_1c52
    ld hl, $c100
    add hl, bc
    pop de
    pop bc
    ld c, b
.jr_000_1307:
    ld a, [hl+]
    call Call_000_131a
    ld a, [$d057]
    add $10
    ld [$d057], a
    dec c
    jr nz, .jr_000_1307
.jr_000_1316:
    xor a
    ld [de], a
    pop bc
    ret


Call_000_131a:
    push bc
    push hl
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    ld bc, $c600
    add hl, bc
    ld a, [$d057]
    ld [$d06b], a
    ld a, [$d058]
    ld [$d06c], a
    ld [$d07f], a
    call Call_000_1352
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    inc de
    ld a, [$d06b]
    ld [$d057], a
    ld a, [$d06c]
    ld [$d058], a
    pop hl
    pop bc
    ret


Call_000_1352:
    push bc
    push hl
    ld hl, $9800
    ld a, [$d057]
    srl a
    srl a
    srl a
    ld [$d06e], a
    ld a, [$d058]
    srl a
    srl a
    srl a
    jr z, .jr_000_1375
    ld bc, $0020
.jr_000_1371:
    add hl, bc
    dec a
    jr nz, .jr_000_1371
.jr_000_1375:
    ld b, $00
    ld a, [$d06e]
    ld c, a
    add hl, bc
    ld a, h
    ld [de], a
    inc de
    ld a, l
    ld [de], a
    inc de
    pop hl
    pop bc
    ret


Jump_000_1385:
    ld a, $06
    ld [wLoadedROMBank], a
    ld [MBC1RomBank], a
    jp $4639


Jump_000_1390:
    ld a, $06
    ld [wLoadedROMBank], a
    ld [MBC1RomBank], a
    jp $463d


Call_000_139b:
    ld hl, $ff94
    bit 5, [hl]
    ret nz
    ld a, $01
    ld [MBC1RomBank], a
    ld a, [$d05c]
    add $08
    ld [$d0a1], a
    ld a, [$d05d]
    add $08
    ld [$d0d1], a
    ld de, $157a
    ldh a, [$92]
    bit 5, a
    jr nz, .jr_000_13c4
    ld hl, UnkAnimations_157D
    jr .jr_000_13c7
.jr_000_13c4:
    ld hl, $15b7
.jr_000_13c7:
    ld c, $00
    ldh a, [$8d]
    bit 4, a
    jr z, .jr_000_13d1
    ld c, $01
.jr_000_13d1:
    bit 7, a
    jr z, .jr_000_13df
    ld c, $02
    ldh a, [$92]
    bit 3, a
    jr z, .jr_000_13df
    ld c, $0e
.jr_000_13df:
    ldh a, [$8e]
    bit 7, a
    jr z, .jr_000_1410
    ldh a, [$95]
    bit 2, a
    jr nz, .jr_000_13fe
    ld a, [$d094]
    cp $02
    jr nz, .jr_000_13fa
    ld c, $04
    ldh a, [$92]
    bit 6, a
    jr z, .jr_000_1408
.jr_000_13fa:
    ld c, $03
    jr .jr_000_1408
.jr_000_13fe:
    ldh a, [$95]
    bit 1, a
    jr nz, .jr_000_1408
    ld c, $1b
    jr .jr_000_1408
.jr_000_1408:
    ldh a, [$8e]
    bit 2, a
    jr z, .jr_000_1410
    ld c, $05
.jr_000_1410:
    ldh a, [$8e]
    and $80
    jr nz, .jr_000_1424
    ldh a, [$92]
    bit 7, a
    jr z, .jr_000_1424
    ld c, $07
    ldh a, [$92]
    and $03
    add c
    ld c, a
.jr_000_1424:
    ldh a, [$92]
    bit 4, a
    jr z, .jr_000_142c
    ld c, $0b
.jr_000_142c:
    ldh a, [$8e]
    bit 6, a
    jr z, .jr_000_146b
    ldh a, [$92]
    bit 4, a
    jr nz, .jr_000_146b
    ldh a, [$8e]
    and $fc
    ldh [$8e], a
    bit 7, a
    jr nz, .jr_000_1465
    ldh a, [$8d]
    bit 4, a
    jr nz, .jr_000_1453
    ld a, [$d078]
    bit 7, a
    jr z, .jr_000_1457
    ld c, $0d
    jr .jr_000_146b
.jr_000_1453:
    ld c, $0c
    jr .jr_000_146b
.jr_000_1457:
    ldh a, [$8d]
    bit 6, a
    jr nz, .jr_000_1461
    ld c, $02
    jr .jr_000_146b
.jr_000_1461:
    ld c, $00
    jr .jr_000_146b
.jr_000_1465:
    bit 2, a
    jr z, .jr_000_146b
    ld c, $05
.jr_000_146b:
    ldh a, [$92]
    bit 2, a
    jr z, .jr_000_147d
    ldh a, [$8e]
    bit 2, a
    jr nz, .jr_000_147b
    ld c, $0e
    jr .jr_000_147d
.jr_000_147b:
    ld c, $0f
.jr_000_147d:
    ldh a, [$8e]
    bit 4, a
    jr z, .jr_000_149f
    ld c, $10
    bit 2, a
    jr z, .jr_000_148d
    ld c, $11
    jr .jr_000_149f
.jr_000_148d:
    bit 3, a
    jr z, .jr_000_1495
    ld c, $16
    jr .jr_000_14dc
.jr_000_1495:
    ldh a, [$93]
    bit 3, a
    jr z, .jr_000_14dc
    ld c, $19
    jr .jr_000_14dc
.jr_000_149f:
    ldh a, [$8e]
    bit 3, a
    jr z, .jr_000_14dc
    ld a, [$d094]
    cp $04
    jr z, .jr_000_14b6
    ld c, $17
    ldh a, [$8e]
    res 2, a
    ldh [$8e], a
    jr .jr_000_14dc
.jr_000_14b6:
    ldh a, [$92]
    res 7, a
    ldh [$92], a
    ld c, $12
    ldh a, [$8d]
    bit 4, a
    jr z, .jr_000_14c6
    ld c, $13
.jr_000_14c6:
    bit 7, a
    jr z, .jr_000_14cc
    ld c, $14
.jr_000_14cc:
    ldh a, [$8e]
    bit 2, a
    jr z, .jr_000_14d4
    ld c, $15
.jr_000_14d4:
    ldh a, [$93]
    bit 4, a
    jr z, .jr_000_14dc
    ld c, $18
.jr_000_14dc:
    ldh a, [$8e]
    and $f8
    jr nz, .jr_000_14f0
    ldh a, [$95]
    bit 1, a
    jr nz, .jr_000_1510
    bit 4, a
    jr z, .jr_000_14f0
    ld c, $1a
    jr .jr_000_1510
.jr_000_14f0:
    ldh a, [$8e]
    and $f0
    jr nz, .jr_000_1510
    ldh a, [$92]
    and $9c
    jr nz, .jr_000_1510
    ldh a, [$95]
    bit 5, a
    jr z, .jr_000_1510
    ldh a, [$8e]
    and $e7
    ldh [$8e], a
    ldh a, [$93]
    res 4, a
    ldh [$93], a
    ld c, $1c
.jr_000_1510:
    ldh a, [$93]
    bit 2, a
    jr z, .jr_000_1524
    bit 0, a
    jr z, .jr_000_1524
    ld c, $00
    ldh a, [$91]
    bit 4, a
    jr z, .jr_000_1524
    ld c, $06
.jr_000_1524:
    ld a, c
    add c
    ld c, a
    ld a, $00
    adc $00
    ld b, a
    add hl, bc
    ld a, [hl+]
    ld c, a
    ld a, [hl]
    ld b, a
    push af
    ldh a, [$94]
    bit 6, a
    jr nz, .jr_000_1546
    pop af
    ld hl, $d082
    cp [hl]
    jr nz, .jr_000_1559
    ld a, c
    inc hl
    cp [hl]
    jr nz, .jr_000_1559
    jr .jr_000_1569
.jr_000_1546:
    res 6, a
    ldh [$94], a
    pop af
    ldh a, [$92]
    bit 5, a
    jr nz, .jr_000_1556
    ld de, $42bc
    jr .jr_000_1559
.jr_000_1556:
    ld de, $428c
.jr_000_1559:
    ld a, b
    ld h, a
    ld [$d082], a
    ld a, c
    ld l, a
    ld [$d083], a
    ld bc, $0000
    call Call_000_21e6
.jr_000_1569:
    ld a, [wLoadedROMBank]
    ld [MBC1RomBank], a
    ret


Call_000_1570:
    ld a, [$d088]
    ld [$d087], a
    ld [$d086], a
    ret

Unk157A:
    db 0, 0, 0

UnkAnimations_157D:
; animations
    dw Unk15F1 ; kirby standing facing right
    dw Unk15F4 ; kirby walking to the right
    dw Unk1602
    dw Unk1605
    dw Unk1623
    dw Unk162B
    dw $42B6
    dw Unk163F
    dw Unk1653
    dw Unk1667
    dw Unk167B
    dw Unk168F
    dw Unk1692
    dw Unk16A0
    dw Unk16AB
    dw Unk16AE
    dw Unk16CE
    dw Unk16DE
    dw Unk16F2
    dw Unk16FA
    dw Unk1707
    dw Unk170F
    dw Unk1723
    dw Unk1726
    dw Unk1732
    dw Unk1747
    dw Unk1753
    dw Unk175D
    dw Unk176A
    dw Unk1778
    dw Unk177B
    dw Unk1789
    dw Unk178C
    dw Unk17AA
    dw Unk17B2
    dw $4311
    dw Unk17C6
    dw Unk17DA
    dw Unk17EE
    dw Unk1802
    dw Unk1816
    dw Unk1819
    dw Unk1827
    dw Unk1832
    dw Unk1835
    dw Unk1855
    dw Unk1865
    dw Unk1879
    dw Unk1881
    dw Unk188E
    dw Unk1896
    dw Unk18AA
    dw Unk18AD
    dw Unk18B9
    dw Unk18CE
    dw Unk18DA
    dw Unk18E4
    dw Unk18F1

Unk15F1:
    db $00, $B9, $58

Unk15F4:
    db $0B, $C1, $58
    db $08, $C9, $58
    db $0B, $D1, $58
    db $08, $C9, $58
    db $E2, $F3

Unk1602:
    db $00, $D9, $58

Unk1605:
    db $EA, $94, $D0, $02, $1B, $16, $0A, $69, $5A, $0A, $71, $5A, $0A, $81, $5A, $02, $99, $5A, $F4, $94, $D0, $02, $04, $19, $59, $04, $31, $59, $E2, $F9

Unk1623:
    db $14, $19, $59, $14, $31, $59, $E2, $F9

Unk162B:
    db $0A, $81, $5A, $0A, $99, $5A, $0A, $69, $5A, $F9, $8E, $FF, $78, $00, $F4, $94, $D0, $01, $EC, $01

Unk163F:
    db $F9, $8E, $FF, $FF, $02, $06, $C9, $5B, $F9, $92, $FF, $7F, $00, $F9, $8E, $FF, $FC, $00, $EC, $01

Unk1653:
    db $F9, $8E, $FF, $FF, $02, $06, $D1, $5B, $F9, $92, $FF, $7F, $00, $F9, $8E, $FF, $FC, $00, $EC, $01

Unk1667:
    db $F9, $8E, $FF, $FF, $02, $06, $D9, $5B, $F9, $92, $FF, $7F, $00, $F9, $8E, $FF, $FC, $00, $EC, $01

Unk167B:
    db $F9, $8E, $FF, $FF, $02, $06, $DD, $5B, $F9, $92, $FF, $7F, $00, $F9, $8E, $FF, $FC, $00, $EC, $01

Unk168F:
    db $00, $C9, $5B

Unk1692:
    db $10, $C1, $58, $0C, $C9, $58, $10, $D1, $58, $0C, $C9, $58, $E2, $F3

Unk16A0:
    db $08, $C1, $58, $08, $C9, $58, $10, $D1, $58, $E2, $F6

Unk16AB:
    db $00, $69, $5B

Unk16AE:
    db $F9, $8E, $FF, $FF, $02, $05, $69, $5B, $06, $C9, $5B, $F9, $92, $FF, $63, $00, $F9, $8E, $FF, $F8, $00, $F4, $64, $D0, $02, $F9, $8E, $FF, $FC, $00, $EC, $01

Unk16CE:
    db $EA, $94, $D0, $03, $DB, $16, $08, $69, $5A, $F4, $94, $D0, $03, $00, $71, $5A

Unk16DE:
    db $08, $71, $5A, $06, $69, $5A, $F9, $8E, $FF, $60, $00, $08, $E1, $5A, $F4, $94, $D0, $01, $EC, $01

Unk16F2:
    db $F9, $8E, $FF, $EC, $00, $00, $79, $59

Unk16FA:
    db $F9, $8E, $FF, $EC, $00, $0C, $A9, $59, $0C, $C1, $59, $E2, $F9

Unk1707:
    db $F9, $8E, $FF, $EC, $00, $00, $D9, $59

Unk170F:
    db $05, $B1, $5A, $05, $71, $5A, $06, $69, $5A, $F9, $8E, $FF, $60, $00, $F4, $94, $D0, $01, $EC, $01

Unk1723:
    db $00, $B1, $5A

Unk1726:
    db $0A, $C9, $5A, $0A, $91, $59, $F4, $94, $D0, $04, $EC, $01

Unk1732:
    db $05, $91, $59, $03, $C9, $5A, $03, $E1, $5A, $F9, $8E, $FF, $60, $00, $F9, $93, $FF, $EF, $00, $EC, $01

Unk1747:
    db $08, $71, $5A, $08, $71, $5A, $F4, $94, $D0, $06, $EC, $01

Unk1753:
    db $05, $69, $5A, $F9, $95, $FF, $EF, $00, $EC, $01

Unk175D:
    db $03, $81, $5A, $03, $99, $5A, $F9, $95, $FF, $FB, $00, $EC, $01

Unk176A:
    db $03, $C1, $58, $02, $C9, $58, $03, $D1, $58, $02, $C9, $58, $E2, $F3

Unk1778:
    db $00, $E9, $58

Unk177B:
    db $0B, $F1, $58, $08, $F9, $58, $0B, $01, $59, $08, $F9, $58, $E2, $F3

Unk1789:
    db $00, $09, $59

Unk178C:
    db $EA, $94, $D0, $02, $A2, $17, $0A, $E9, $5A, $0A, $F1, $5A, $0A, $01, $5B, $02, $19, $5B, $F4, $94, $D0, $02, $04, $49, $59, $04, $61, $59, $E2, $F9

Unk17AA:
    db $14, $49, $59, $14, $61, $59, $E2, $F9

Unk17B2:
    db $0A, $01, $5B, $0A, $19, $5B, $0A, $E9, $5A, $F9, $8E, $FF, $78, $00, $F4, $94, $D0, $01, $EC, $01

Unk17C6:
    db $F9, $8E, $FF, $FF, $02, $06, $AD, $5B, $F9, $92, $FF, $7F, $00, $F9, $8E, $FF, $FC, $00, $EC, $01

Unk17DA:
    db $F9, $8E, $FF, $FF, $02, $06, $B5, $5B, $F9, $92, $FF, $7F, $00, $F9, $8E, $FF, $FC, $00, $EC, $01

Unk17EE:
    db $F9, $8E, $FF, $FF, $02, $06, $BD, $5B, $F9, $92, $FF, $7F, $00, $F9, $8E, $FF, $FC, $00, $EC, $01

Unk1802:
    db $F9, $8E, $FF, $FF, $02, $06, $C1, $5B, $F9, $92, $FF, $7F, $00, $F9, $8E, $FF, $FC, $00, $EC, $01

Unk1816:
    db $00, $AD, $5B

Unk1819:
    db $10, $F1, $58, $0C, $F9, $58, $10, $01, $59, $0C, $F9, $58, $E2, $F3

Unk1827:
    db $08, $F1, $58, $08, $F9, $58, $10, $01, $59, $E2, $F6

Unk1832:
    db $00, $71, $5B

Unk1835:
    db $F9, $8E, $FF, $FF, $02, $05, $71, $5B, $06, $AD, $5B, $F9, $92, $FF, $63, $00, $F9, $8E, $FF, $F8, $00, $F4, $64, $D0, $02, $F9, $8E, $FF, $FC, $00, $EC, $01

Unk1855:
    db $EA, $94, $D0, $03, $62, $18, $08, $E9, $5A, $F4, $94, $D0, $03, $00, $F1, $5A

Unk1865:
    db $08, $F1, $5A, $06, $E9, $5A, $F9, $8E, $FF, $60, $00, $08, $61, $5B, $F4, $94, $D0, $01, $EC, $01

Unk1879:
    db $F9, $8E, $FF, $EC, $00, $00, $F1, $59

Unk1881:
    db $F9, $8E, $FF, $EC, $00, $0C, $21, $5A, $0C, $39, $5A, $E2, $F9

Unk188E:
    db $F9, $8E, $FF, $EC, $00, $00, $51, $5A

Unk1896:
    db $05, $31, $5B, $05, $F1, $5A, $06, $E9, $5A, $F9, $8E, $FF, $60, $00, $F4, $94, $D0, $01, $EC, $01

Unk18AA:
    db $00, $31, $5B

Unk18AD:
    db $0A, $49, $5B, $0A, $09, $5A, $F4, $94, $D0, $04, $EC, $01

Unk18B9:
    db $05, $09, $5A, $03, $49, $5B, $03, $61, $5B, $F9, $8E, $FF, $60, $00, $F9, $93, $FF, $EF, $00, $EC, $01

Unk18CE:
    db $08, $F1, $5A, $08, $F1, $5A, $F4, $94, $D0, $06, $EC, $01

Unk18DA:
    db $05, $E9, $5A, $F9, $95, $FF, $EF, $00, $EC, $01

Unk18E4:
    db $03, $01, $5B, $03, $19, $5B, $F9, $95, $FF, $FB, $00, $EC, $01

Unk18F1:
    db $03, $F1, $58, $02, $F9, $58, $03, $01, $59, $02, $F9, $58, $E2, $F3

Jump_000_18ff:
    ld [$d06b], a
    ld a, [wLoadedROMBank]
    push af
    ld a, $0b
    ld [wLoadedROMBank], a
    ld [MBC1RomBank], a
    ld a, [hl]
    cp $80
    jr z, .jr_000_1933
    ld a, [wClearSpritesOffset]
    ld e, a
    ld d, $c0
.jr_000_1919:
    ld a, [hl+]
    add c
    ld [de], a
    inc e
    ld a, [hl+]
    add b
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [$d06b]
    xor [hl]
    ld [de], a
    inc hl
    inc e
    bit 0, a
    jr z, .jr_000_1919
    ld a, e
    ld [wClearSpritesOffset], a
.jr_000_1933:
    pop af
    ld [wLoadedROMBank], a
    ld [MBC1RomBank], a
    ret


ClearSprites:
; Clears all OAM sprites after a specified offset.
; If [wClearAllSprites] == $ff, then all sprites are cleared.
; Otherwise, start clearing at offset in [wClearSpritesOffset].
    ld a, [wClearAllSprites]
    inc a
    jr nz, .startAtOffset ; $ff indicates that all OAM sprites should be cleared
    ld a, wOAMBufferEnd - wOAMBuffer
    ld c, a
    ld [wClearAllSprites], a
    xor a
    ld [wClearSpritesOffset], a
    jr .copyOamData
.startAtOffset:
    ld a, [wClearSpritesOffset]
    ld [wClearAllSprites], a
    ld c, wOAMBufferEnd - wOAMBuffer
.copyOamData:
    ld l, a
    ld h, wOAMBuffer >> 8
    ld de, 4 ; size of a single OAM sprite
    ld b, 0
.copyLoop:
    ld [hl], b
    add hl, de
    ld a, l
    cp c
    jr nz, .copyLoop
    ret


Call_000_1964:
    push bc
    push de
    xor a
    ld [$d057], a
    ld [$d058], a
    ld de, $cb00
    ld a, $0a
    ld b, a
.jr_000_1973:
    ld a, [$d03f]
    cp $0a
    jr z, .jr_000_197c
    ld a, $0b
.jr_000_197c:
    ld c, a
.jr_000_197d:
    ld a, [hl+]
    call Call_000_131a
    ld a, [$d057]
    add $10
    ld [$d057], a
    dec c
    jr nz, .jr_000_197d
    push bc
    ld b, $00
    ld a, [$d03f]
    sub $0a
    jr z, .jr_000_1998
    sub $01
.jr_000_1998:
    ld c, a
    add hl, bc
    pop bc
    xor a
    ld [$d057], a
    ld a, [$d058]
    add $10
    ld [$d058], a
    dec b
    jr nz, .jr_000_1973
    xor a
    ld [de], a
    ld [$d057], a
    ld [$d058], a
    xor a
    ldh [rSCX], a
    ldh [rSCY], a
    ldh a, [$8c]
    or $60
    ldh [$8c], a
    call Call_000_1ee3
    ld a, [$d06b]
    xor a
    ldh [$8c], a
    pop de
    pop bc
    ret


Call_000_19c9:
    ldh a, [$90]
    and $08
    ldh [$90], a
    ld hl, $38b1
    ld a, [$d03b]
    add a
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl+]
    ld c, a
    ld a, [hl]
    ld b, a
    ld h, b
    ld l, c
    ld a, [$d03e]
    add a
    add a
    add a
    ld c, a
    ld b, $00
    add hl, bc
    ld bc, $0005
    add hl, bc
    ld a, [hl+]
    and a
    jr z, .jr_000_19f8
    ldh a, [$90]
    set 2, a
    ldh [$90], a
.jr_000_19f8:
    ret


Call_000_19f9:
    push bc
    push hl
    ld a, $ff
    ld [$d03d], a
    ld [wClearAllSprites], a
    call StartTimer
    ld hl, $38b1
    ld a, [$d03b]
    add a
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl+]
    ld c, a
    ld a, [hl]
    ld b, a
    ld h, b
    ld l, c
    ld a, [$d03e]
    add a
    add a
    add a
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld e, a
    push hl
    ld h, d
    ld l, e
    ld de, $c100
    call Decompress
    pop hl
    ld a, [hl+]
    ld [$d03f], a
    sub $0a
    ld [$d041], a
    ld a, [hl+]
    ld [$d040], a
    ldh a, [$91]
    and $7f
    ldh [$91], a
    ldh a, [$8f]
    and $3f
    ldh [$8f], a
    inc hl
    ld a, [hl]
    and $15
    jr z, .jr_000_1a6e
    bit 0, a
    jr nz, .jr_000_1a60
    bit 4, a
    jr nz, .jr_000_1a68
    ldh a, [$91]
    set 7, a
    ldh [$91], a
    jr .jr_000_1a6e
.jr_000_1a60:
    ldh a, [$90]
    set 4, a
    ldh [$90], a
    jr .jr_000_1a6e
.jr_000_1a68:
    ldh a, [$8f]
    set 6, a
    ldh [$8f], a
.jr_000_1a6e:
    bit 3, [hl]
    jr z, .jr_000_1a79
    push hl
    ld a, $08
    ld [$d03d], a
    pop hl
.jr_000_1a79:
    inc hl
    ld a, [hl]
    ld [$d042], a
    ld a, [$d03b]
    cp $04
    jp nz, .jump_000_1bc2
    ld a, [$d03e]
    and a
    jr nz, .jr_000_1b09
    ldh a, [$90]
    set 4, a
    ldh [$90], a
    ld a, [$d044]
    and a
    jr z, .jr_000_1aae
    ld a, $15
    ld [$c16f], a
    ld a, $16
    ld [$c1ab], a
    ld a, $17
    ld [$c170], a
    ld a, $18
    ld [$c1ac], a
    ld b, $01
.jr_000_1aae:
    ld a, [$d045]
    and a
    jr z, .jr_000_1ac9
    ld a, $15
    ld [$c25f], a
    ld a, $16
    ld [$c29b], a
    ld a, $17
    ld [$c260], a
    ld a, $18
    ld [$c29c], a
    inc b
.jr_000_1ac9:
    ld a, [$d046]
    and a
    jr z, .jr_000_1ae4
    ld a, $15
    ld [$c175], a
    ld a, $16
    ld [$c1b1], a
    ld a, $17
    ld [$c176], a
    ld a, $18
    ld [$c1b2], a
    inc b
.jr_000_1ae4:
    ld a, [$d047]
    and a
    jr z, .jr_000_1aff
    ld a, $15
    ld [$c265], a
    ld a, $16
    ld [$c2a1], a
    ld a, $17
    ld [$c266], a
    ld a, $18
    ld [$c2a2], a
    inc b
.jr_000_1aff:
    ld a, $04
    cp b
    jr nz, .jr_000_1b08
    xor a
    ld [$d048], a
.jr_000_1b08:
    xor a
.jr_000_1b09:
    ld hl, $d043
    ld c, a
    ld b, $00
    add hl, bc
    ld a, $01
    ld [hl], a
    xor a
    ld [$d043], a
    ld [$d049], a
    ld [$d04b], a
    ld [$d04a], a
    ld [$d04c], a
    ld hl, Unk1bc5
    add hl, bc
    ld a, [hl]
    ld [$d06c], a
    cp $04
    jr z, .jr_000_1b69
    push af
    push hl
    push de
    ld a, [$d039]
    and a
    jr nz, .jr_000_1b50
    ld hl, $4000
    ld de, $8000
    ld c, $02
    call Decompress
    ld hl, $4855
    ld de, $9670
    ld c, $02
    call Decompress
    jr .jr_000_1b66
.jr_000_1b50:
    ld hl, $488d
    ld de, $8000
    ld c, $0a
    call Decompress
    ld hl, $50f3
    ld de, $9670
    ld c, $0a
    call Decompress
.jr_000_1b66:
    pop de
    pop hl
    pop af
.jr_000_1b69:
    ld c, a
    add a
    add a
    add c
    ld b, $00
    ld c, a
    ld hl, Unk2070
    ld a, [$d039]
    and a
    jr z, .jr_000_1b7c
    ld hl, Unk2089
.jr_000_1b7c:
    add hl, bc
    ld a, [hl+]
    ld [$d06b], a
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld h, b
    ld l, c
    ld a, [$d06b]
    ld c, a
    call Decompress
    ld a, [$d06c]
    ld c, a
    add a
    add c
    ld b, $00
    ld c, a
    ld hl, Unk20A2
    add hl, bc
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld e, a
    ld h, d
    ld l, e
    ld de, $c600
    call Decompress
    ld hl, $ff91
    bit 5, [hl]
    jr z, .jump_000_1bc2
    ld hl, $1bcf
    ld a, [$d03e]
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]
    ld [$d03d], a
.jump_000_1bc2:
    pop hl
    pop bc
    ret


Unk1bc5:
    db $04, $00, $01, $02, $03, $04, $00, $02, $01, $03, $12, $0D, $10, $0E, $0F, $11, $0D, $0E, $10, $0F


Call_000_1bd9:
    ld hl, $d08b
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld a, [hl]
    call Call_000_1c7d
    ld a, $7f
    ld e, a
    ld d, $05
    ld hl, $d06f
    ld bc, $d08e
.jr_000_1bef:
    ld a, [hl+]
    and a
    jr z, .jr_000_1bf5
    ld e, $72
.jr_000_1bf5:
    add e
    ld [bc], a
    inc bc
    dec d
    jr nz, .jr_000_1bef
    ld hl, $ff8f
    set 0, [hl]
    ret


InitWindow:
    ld a, 160
    ldh [rWX], a
    ld a, 144
    ldh [rWY], a
    ret


Call_000_1c0a:
    call StartTimer
    ld c, $40
    ld hl, $9c00
    ld a, $7f
.jr_000_1c14:
    ld [hl+], a
    dec c
    jr nz, .jr_000_1c14
    ld a, $07
    ldh [rWX], a
    ld a, $80
    ldh [rWY], a
    ld a, $67
    ld [$9c2e], a
    ld a, $6b
    ld [$9c2f], a
    ld a, $6f
    ld [$9c22], a
    ld a, $70
    ld [$9c23], a
    inc a
    ld [$9c24], a
    ld a, $7f
    ld [$9c06], a
    ld [$9c07], a
    ld [$9c08], a
    ld [$9c09], a
    ld [$9c0a], a
    ld [$9c30], a
    ld [$9c31], a
    jp StopTimer


Call_000_1c52:
    push af
    push hl
    ld hl, $0000
    ld c, h
    ld a, $08
.jr_000_1c5a:
    srl b
    rr c
    sla e
    jr nc, .jr_000_1c63
    add hl, bc
.jr_000_1c63:
    dec a
    jr nz, .jr_000_1c5a
    ld c, l
    ld b, h
    pop hl
    pop af
    ret


Call_000_1c6b:
    ld b, $ff
    ld c, b
.jr_000_1c6e:
    inc c
    sub $64
    jr nc, .jr_000_1c6e
    add $64
.jr_000_1c75:
    inc b
    sub $0a
    jr nc, .jr_000_1c75
    add $0a
    ret


Call_000_1c7d:
    ld l, c
    ld h, b
    ld de, $0000
    ld bc, $d8f0
.jr_000_1c85:
    inc d
    add hl, bc
    ccf
    sbc e
    jr nc, .jr_000_1c85
    dec d
    ld bc, $2710
    add hl, bc
    adc e
    ld bc, $fc18
.jr_000_1c94:
    inc e
    add hl, bc
    jr c, .jr_000_1c94
    dec e
    ld bc, $03e8
    add hl, bc
    ld b, a
    ld a, d
    ld [$d06f], a
    ld a, e
    ld [$d070], a
    ld a, b
    ld de, $0000
    ld bc, $ff9c
.jr_000_1cad:
    inc d
    add hl, bc
    jr c, .jr_000_1cad
    dec d
    ld bc, $0064
    add hl, bc
    ld a, l
.jr_000_1cb7:
    inc e
    sub $0a
    jr nc, .jr_000_1cb7
    dec e
    add $0a
    ld [$d073], a
    ld a, e
    ld [$d072], a
    ld a, d
    ld [$d071], a
    ret


Call_000_1ccb:
    push af
    ld a, l
    and $f0
    swap a
    ld c, a
    ld a, h
    swap a
    ld b, a
    and $f0
    or c
    ld c, a
    ld a, b
    and $0f
    ld b, a
    pop af
    ret


Call_000_1ce0:
    push de
    ld a, b
    ld d, a
    ld a, c
    ld e, a
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    pop de
    ret


Call_000_1ced:
    push de
    inc hl
    ld a, [hl]
    add c
    ld [hl-], a
    ld a, [hl]
    adc b
    ld [hl], a
    pop de
    ret


Call_000_1cf7:
    push de
    inc hl
    ld a, [hl]
    sub b
    ld [hl-], a
    ld a, [hl]
    sbc c
    ld [hl], a
    pop de
    ret


Call_000_1d01:
    push hl
    push de
    ld hl, $d02f
    ld a, [hl+]
    ld e, a
    adc [hl]
    ld d, a
    inc hl
    adc [hl]
    ld hl, $d02f
    ld [hl], d
    inc hl
    ld [hl+], a
    ld [hl], e
    pop de
    pop hl
    ret


VBlank:
    push af
    push bc
    push de
    push hl
    ld hl, $ff8c
    bit 6, [hl]
    jp z, .jump_000_1d9d
    ld hl, $ff91
    bit 2, [hl]
    jp nz, .jump_000_1da4
    ld hl, $d035
    inc [hl]
    ld hl, $d034
    inc [hl]
    ld hl, $d032
    inc [hl]
    call Call_000_1fb2
    call Call_000_1ee3
    call Call_000_1e2e
    call $ff80
    ldh a, [$8c]
    and $9f
    ldh [$8c], a
    call Call_000_1dfb
    call Call_000_1f08
    call ReadJoypad
    jr .jr_000_1d56
.jr_000_1d53:
    call Call_000_1dfb
.jr_000_1d56:
    ld hl, $ff91
    res 3, [hl]
    ld hl, $d037
    dec [hl]
    jr nz, .jr_000_1d6f
    ld d, $02
    ld a, [$d036]
    xor $01
    ld [$d036], a
    jr z, .jr_000_1d6e
    inc d
.jr_000_1d6e:
    ld [hl], d
.jr_000_1d6f:
    inc hl
    dec [hl]
    jr nz, .jr_000_1d82
    ld d, $04
    ld a, [$d036]
    xor $02
    ld [$d036], a
    jr z, .jr_000_1d81
    ld d, $06
.jr_000_1d81:
    ld [hl], d
.jr_000_1d82:
    ld a, [wLoadedROMBank]
    push af
    ld a, $05
    ld [wLoadedROMBank], a
    ld [MBC1RomBank], a
    call $4e0b
    pop af
    ld [wLoadedROMBank], a
    ld [MBC1RomBank], a
    pop hl
    pop de
    pop bc
    pop af
    reti
.jump_000_1d9d:
    ld b, $50
.jr_000_1d9f:
    dec b
    jr nz, .jr_000_1d9f
    jr .jr_000_1d53
.jump_000_1da4:
    ld a, [$d053]
    ldh [rSCX], a
    ld a, [$d055]
    ldh [rSCY], a
    ld hl, $cb00
.jr_000_1db1:
    ld a, [hl+]
    and a
    jr z, .jr_000_1dbc
    ld b, a
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld [bc], a
    jr .jr_000_1db1
.jr_000_1dbc:
    ld hl, $ff91
    res 2, [hl]
    jr .jr_000_1d53
Call_000_1dc3:
    push hl
    ld hl, $ff8c
.jr_000_1dc7:
    set 6, [hl]
.jr_000_1dc9:
    bit 6, [hl]
    jr nz, .jr_000_1dc9
    push hl
    push af
    xor a
    ld [wClearSpritesOffset], a
    call Call_000_2e9c
    call ClearSprites
    pop af
    pop hl
    dec a
    jr nz, .jr_000_1dc7
    pop hl
    ret


Call_000_1de0:
    push hl
    ld hl, $ff8c
.jr_000_1de4:
    set 6, [hl]
.jr_000_1de6:
    bit 6, [hl]
    jr nz, .jr_000_1de6
    dec a
    jr nz, .jr_000_1de4
    pop hl
    ret


Call_000_1def:
    push hl
    ld hl, $ff8c
    set 6, [hl]
.jr_000_1df5:
    bit 6, [hl]
    jr nz, .jr_000_1df5
    pop hl
    ret


Call_000_1dfb:
    ldh a, [hLCDC]
    ldh [rLCDC], a
    ld a, [$d053]
    ldh [rSCX], a
    ld a, [$d055]
    ldh [rSCY], a
    ld a, [wBGP]
    ldh [rBGP], a
    ret


LCDCStatus:
    push af
    push bc
    push hl
    ld b, $07
.jr_000_1e14:
    dec b
    jr nz, .jr_000_1e14
    ld hl, $ff40
    ld a, [$d05b]
    ld c, a
    ld a, $e4
    set 3, [hl]
    ldh [rBGP], a
    xor a
    ldh [rSCX], a
    ld a, c
    ldh [rSCY], a
    pop hl
    pop bc
    pop af
    reti


Call_000_1e2e:
    ld hl, $ff96
    bit 7, [hl]
    ret z
    res 7, [hl]
    ld hl, $d029
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld [de], a
    inc e
    ld [de], a
    ld hl, $0020
    add hl, de
    ld [hl-], a
    ld [hl], a
    ret


Timer:
    push af
    push bc
    push de
    push hl
    ld a, [wLoadedROMBank]
    push af
    ld a, Bank(HandleTimer)
    ld [wLoadedROMBank], a
    ld [MBC1RomBank], a
    call HandleTimer
    pop af
    ld [wLoadedROMBank], a
    ld [MBC1RomBank], a
    pop hl
    pop de
    pop bc
    pop af
    reti


StopTimer:
    ld a, TACF_STOP
    ldh [rTAC], a
    ldh a, [hLCDC]
    set 7, a
    ldh [hLCDC], a
    ldh [rLCDC], a
    ret


StartTimer:
    ld hl, hLCDC
    res 7, [hl] ; turn off LCDC
    ld hl, $ff91
    set 3, [hl]
.waitVBlank:
    bit 3, [hl]
    jr nz, .waitVBlank
    ld a, TACF_STOP
    ldh [rTAC], a
    ld a, 188
    ldh [rTMA], a
    ld a, TACF_START | TACF_4KHZ ; This timer will fire at ~60.24 times per second
    ldh [rTAC], a
    ret


Call_000_1e8f:
    ld hl, $ff8c
    set 6, [hl]
    db $76
    ret


Call_000_1e96:
    push bc
    ld [$d02e], a
    ld c, a
    ld a, [wLoadedROMBank]
    push af
    ld a, $05
    ld [wLoadedROMBank], a
    ld [MBC1RomBank], a
    ld a, c
    call $4c9e
    pop af
    ld [wLoadedROMBank], a
    ld [MBC1RomBank], a
    pop bc
    ret


Call_000_1eb4:
    push bc
    ld c, a
    cp $05
    jr z, .jr_000_1ec7
    ld a, [$d02e]
    cp $21
    jr z, .jr_000_1ec7
    ld a, [$d02d]
    cp c
    jr z, .jr_000_1ee1
.jr_000_1ec7:
    ld a, [wLoadedROMBank]
    push af
    ld a, $05
    ld [wLoadedROMBank], a
    ld [MBC1RomBank], a
    ld a, c
    ld [$d02d], a
    call $4dc5
    pop af
    ld [wLoadedROMBank], a
    ld [MBC1RomBank], a
.jr_000_1ee1:
    pop bc
    ret


Call_000_1ee3:
    ldh a, [$8c]
    bit 6, a
    ret z
    bit 5, a
    ret z
    ld bc, $cb00
.jr_000_1eee:
    ld a, [bc]
    inc bc
    ld h, a
    and a
    ret z
    ld a, [bc]
    inc bc
    ld l, a
    ld a, [bc]
    inc bc
    ld [hl+], a
    ld a, [bc]
    inc bc
    ld [hl], a
    ld a, [bc]
    inc bc
    ld de, $001f
    add hl, de
    ld [hl+], a
    ld a, [bc]
    inc bc
    ld [hl], a
    jr .jr_000_1eee
Call_000_1f08:
    ld a, [$d032]
    cp $05
    ret c
    xor a
    ld [$d032], a
    ldh a, [$90]
    bit 7, a
    ret z
    and $04
    ld e, a
    ldh a, [$90]
    and $03
    ld c, a
    cp $03
    jp z, .jump_000_1fab
    inc a
    ld b, a
    ldh a, [$90]
    and $fc
    or b
    ldh [$90], a
    ldh a, [$90]
    bit 6, a
    jr nz, .jr_000_1f78
    ld d, $00
    ld b, d
    ld hl, Unk20B9
    add hl, de
    add hl, bc
    ld a, [wBGP]
    bit 2, e
    jr nz, .jr_000_1f48
    srl a
    srl a
    jr .jr_000_1f4c
.jr_000_1f48:
    sla a
    sla a
.jr_000_1f4c:
    ld b, a
    ld a, [hl]
    or b
    ld [wBGP], a
    ldh [rBGP], a
    ldh [rOBP1], a
    ld d, $00
    ld b, d
    ld hl, Unk20B1
    add hl, de
    add hl, bc
    ld a, [$d081]
    bit 2, e
    jr nz, .jr_000_1f6b
    srl a
    srl a
    jr .jr_000_1f6f
.jr_000_1f6b:
    sla a
    sla a
.jr_000_1f6f:
    ld b, a
    ld a, [hl]
    or b
    ld [$d081], a
    ldh [rOBP0], a
    ret
.jr_000_1f78:
    ld a, [wBGP]
    bit 2, e
    jr nz, .jr_000_1f85
    sla a
    sla a
    jr .jr_000_1f8b
.jr_000_1f85:
    srl a
    srl a
    or $c0
.jr_000_1f8b:
    ld [wBGP], a
    ldh [rBGP], a
    ldh [rOBP1], a
    ld a, [$d081]
    bit 2, e
    jr nz, .jr_000_1f9f
    sla a
    sla a
    jr .jr_000_1fa5
.jr_000_1f9f:
    srl a
    srl a
    or $c0
.jr_000_1fa5:
    ld [$d081], a
    ldh [rOBP0], a
    ret
.jump_000_1fab:
    ldh a, [$90]
    and $7c
    ldh [$90], a
    ret


Call_000_1fb2:
    ld hl, $ff8c
    bit 5, [hl]
    ret nz
    ld hl, $ff90
    bit 6, [hl]
    ret nz
    ldh a, [$8f]
    bit 0, a
    jr z, .jr_000_2000
    ld hl, $9c06
    ld c, $0c
.jr_000_1fc9:
    ld a, $7f
    ld [hl+], a
    dec c
    jr nz, .jr_000_1fc9
    ldh a, [$8f]
    bit 7, a
    jr nz, .jr_000_1fea
    ld hl, $d08e
    ld bc, $9c06
    ld d, $05
.jr_000_1fdd:
    ld a, [hl+]
    ld [bc], a
    inc bc
    dec d
    jr nz, .jr_000_1fdd
    ld a, $72
    ld [$9c0b], a
    jr .jr_000_1ffa
.jr_000_1fea:
    ld hl, $9c06
    ld a, [$d093]
    and a
    jr z, .jr_000_1ffa
    ld c, a
    ld a, $69
.jr_000_1ff6:
    ld [hl+], a
    dec c
    jr nz, .jr_000_1ff6
.jr_000_1ffa:
    ldh a, [$8f]
    res 0, a
    ldh [$8f], a
.jr_000_2000:
    ldh a, [$8f]
    bit 1, a
    jr z, .jr_000_202d
    res 1, a
    ldh [$8f], a
    bit 7, a
    jr nz, .jr_000_201e
    ld a, $7f
    ld [$9c02], a
    ld a, $6c
    ld [$9c03], a
    inc a
    ld [$9c04], a
    jr .jr_000_202d
.jr_000_201e:
    ld a, $7f
    ld [$9c02], a
    ld a, $6a
    ld [$9c03], a
    ld a, $7f
    ld [$9c04], a
.jr_000_202d:
    ldh a, [$8f]
    bit 2, a
    jr nz, .jr_000_2054
    ld a, [$d086]
    ld c, a
    ld b, a
    ld hl, $9c26
    and a
    jr z, .jr_000_2044
    ld a, $68
.jr_000_2040:
    ld [hl+], a
    dec c
    jr nz, .jr_000_2040
.jr_000_2044:
    ld a, [$d087]
    sub b
    ld b, a
    jr z, .jr_000_2051
    ld a, $6e
.jr_000_204d:
    ld [hl+], a
    dec b
    jr nz, .jr_000_204d
.jr_000_2051:
    ld a, $7f
    ld [hl+], a
.jr_000_2054:
    ldh a, [$8f]
    bit 4, a
    ret z
    res 4, a
    ldh [$8f], a
    ld a, [$d089]
    dec a
    call Call_000_1c6b
    add $72
    ld [$9c31], a
    ld a, b
    add $72
    ld [$9c30], a
    ret


Unk2070:
    db $02, $49, $52, $E0, $8A, $02, $52, $66, $E0, $8A, $02, $5B, $2C, $E0, $8A, $02, $63, $EE, $E0, $8A, $02, $6C, $49, $00, $88

Unk2089:
    db $0A, $51, $F5, $E0, $8A, $0A, $5B, $0B, $E0, $8A, $0A, $63, $C1, $E0, $8A, $0A, $6C, $79, $E0, $8A, $02, $6C, $49, $00, $88

Unk20A2:
    db $03, $46, $E0, $03, $4A, $C3, $03, $48, $D9, $03, $4C, $FF, $06, $77, $7C

Unk20B1:
    db $00, $40, $C0, $00, $01, $00, $00, $00

Unk20B9:
    db $40, $80, $C0, $00, $02, $01, $00, $00


Decompress:
; Decompresses a compressed data stream.
; Input:  hl = source data
;          c = bank of source data
;         de = destination to store the decompressed data
    ld a, [wLoadedROMBank]
    push af
    ld a, c
    ld [wLoadedROMBank], a
    ld [MBC1RomBank], a
    ld [MBC1RomBank], a
    call HAL_Decompress
    pop af
    ld [wLoadedROMBank], a
    ld [MBC1RomBank], a
    ret


HAL_Decompress:
; HAL Laboratory used this decompression technique in many of their games.
; For more information, see the exhal tool: https://github.com/devinacker/exhal
; Input: hl = source data
;        de = destination to store the decompressed data
    ld a, e
    ld [wDestGfxAddress], a
    ld a, d
    ld [wDestGfxAddress + 1], a
.loadNextGfx:
    ld a, [hl]
    cp $ff
    ret z
    and $e0
    cp $e0
    jr nz, .jr_000_20fc
    ld a, [hl]
    add a
    add a
    add a
    and $e0
    push af
    ld a, [hl+]
    and $03
    ld b, a
    ld a, [hl+]
    ld c, a
    inc bc
    jr .jr_000_2104
.jr_000_20fc:
    push af
    ld a, [hl+]
    and $1f
    ld c, a
    ld b, $00
    inc c ; bc = [0] + 1
.jr_000_2104:
    inc b
    inc c
    pop af
    bit 7, a
    jr nz, .jr_000_2154
    cp $20
    jr z, .action_repeatSingleByte
    cp $40
    jr z, .action_repeatTwoBytes
    cp $60
    jr z, .jr_000_2146
.jr_000_2117:
    dec c
    jr nz, .jr_000_211e
    dec b
    jp z, .loadNextGfx
.jr_000_211e:
    ld a, [hl+]
    call wRAMFuncD099
    jr .jr_000_2117
.action_repeatSingleByte:
    ld a, [hl+]
.repeatSingleByte:
    dec c
    jr nz, .loadSingleByte
    dec b
    jp z, .loadNextGfx
.loadSingleByte:
    call wRAMFuncD099
    jr .repeatSingleByte
.action_repeatTwoBytes:
    dec c
    jr nz, .jr_000_2138
    dec b
    jp z, .jump_000_2142
.jr_000_2138:
    ld a, [hl+]
    call wRAMFuncD099
    ld a, [hl-]
    call wRAMFuncD099
    jr .action_repeatTwoBytes
.jump_000_2142:
    inc hl
    inc hl
    jr .loadNextGfx
.jr_000_2146:
    ld a, [hl+]
.jr_000_2147:
    dec c
    jr nz, .jr_000_214e
    dec b
    jp z, .loadNextGfx
.jr_000_214e:
    call wRAMFuncD099
    inc a
    jr .jr_000_2147
.jr_000_2154:
    push hl
    push af
    ld a, [hl+]
    ld l, [hl]
    ld h, a
    ld a, [wDestGfxAddress]
    add l
    ld l, a
    ld a, [wDestGfxAddress + 1]
    adc h
    ld h, a
    pop af
    cp $80
    jr z, .jr_000_2170
    cp $a0
    jr z, .jr_000_217b
    cp $c0
    jr z, .jr_000_2193
.jr_000_2170:
    dec c
    jr nz, .jr_000_2176
    dec b
    jr z, .jump_000_219f
.jr_000_2176:
    ld a, [hl+]
    ld [de], a
    inc de
    jr .jr_000_2170
.jr_000_217b:
    dec c
    jr nz, .jr_000_2182
    dec b
    jp z, .jump_000_219f
.jr_000_2182:
    ld a, [hl+]
    push bc
    ld bc, $0008
.jr_000_2187:
    rra
    rl b
    dec c
    jr nz, .jr_000_2187
    ld a, b
    pop bc
    ld [de], a
    inc de
    jr .jr_000_217b
.jr_000_2193:
    dec c
    jr nz, .jr_000_219a
    dec b
    jp z, .jump_000_219f
.jr_000_219a:
    ld a, [hl-]
    ld [de], a
    inc de
    jr .jr_000_2193
.jump_000_219f:
    pop hl
    inc hl
    inc hl
    jp .loadNextGfx


Call_000_21a5:
    ld a, $cb ; cb instruction prefix
    ld [wRAMFuncD099 + 0], a
    ld [wRAMFuncD099 + 3], a
    ld a, $37 ; swap a
    ld [wRAMFuncD099 + 1], a
    ld [wRAMFuncD099 + 4], a
    call HAL_Decompress
    jp InitRamFuncD099


InitRamFuncD099:
; TODO: There is some self-modifying code in RAM. What is it used for?
; Initializes to the following routine:
;   nop
;   nop
;   ld (de), a
;   inc de
;   ret
;
    ld hl, wRAMFuncD099
    xor a
    ld [hl+], a ; nop
    ld [hl+], a ; nop
    ld a, $12
    ld [hl+], a ; ld (de), a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld a, $13
    ld [hl+], a ; inc de
    ld a, $c9
    ld [hl], a ; ret
    ret


Call_000_21ce:
    ld hl, $d160
    add hl, bc
    ld [hl], $00
    ret


Call_000_21d5:
    ld hl, $d160
    add hl, bc
    ld [hl], $ff
    ret


Call_000_21dc:
    ld hl, $d160
    add hl, bc
    ld a, [hl]
    and a
    ret z
    ld [hl], $01
    ret


Call_000_21e6:
    push hl
    ld hl, $d21a
    add hl, bc
    add hl, bc
    ld a, e
    ld [hl+], a
    ld [hl], d
    pop de
    ld hl, $d2ba
    add hl, bc
    add hl, bc
    ld a, e
    ld [hl+], a
    ld [hl], d
    jp Jump_000_2419


Call_000_21fb:
    ld [$d3f2], a
    ld a, $ff
    ld [wClearAllSprites], a
    call ClearSprites
    ld a, [wLoadedROMBank]
    push af
    ld a, [$d039]
    and a
    ld a, $07
    jr z, .jr_000_2214
    ld a, $0f
.jr_000_2214:
    ld [$d3f0], a
    ld [wLoadedROMBank], a
    ld [MBC1RomBank], a
    ld d, $00
    ld a, [$d3f2]
    and a
    jr z, .jr_000_222b
    dec a
    ld hl, $40ce
    jr .jr_000_2249
.jr_000_222b:
    ld hl, $ff94
    bit 1, [hl]
    jr z, .jr_000_223a
    ld hl, $413a
    ld a, [$d03b]
    jr .jr_000_2249
.jr_000_223a:
    ld hl, $4000
    ld a, [$d03b]
    ld e, a
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$d03e]
.jr_000_2249:
    ld e, a
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld a, [hl+]
    ld [$d3e5], a
    ld a, [hl+]
    ld [$d3e6], a
    ld a, [hl+]
    ld [$d3e7], a
    ld a, [hl]
    ld [$d3e8], a
    pop af
    ld [wLoadedROMBank], a
    ld [MBC1RomBank], a
    call Call_000_231e
    xor a
    ld [$d3e9], a
    ld [$d3ea], a
    ld [$d3eb], a
    ld [$d3ec], a
    ld [$d3ed], a
    ld [$d3ee], a
    ld [$d3be], a
    ld [$d3c0], a
    ld [$d3f7], a
    ld [$d3c2], a
    ld [$d3f5], a
    ld [$d3f8], a
    inc a
    ld hl, $d037
    ld [hl+], a
    ld [hl], a
    ld_long a, $ff91
    and $fc
    ld_long $ff91, a
    ld a, [$d03f]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, l
    ld [$d3e3], a
    ld a, h
    ld [$d3e4], a
    ld a, [$d3f2]
    and a
    jr nz, .jr_000_22c5
    ld_long a, $ff94
    and $02
    jr nz, .jr_000_22c5
    ld hl, $414e
    ld de, $8080
    call Call_000_2338
    jr c, .jr_000_22dd
.jr_000_22c5:
    call Call_000_3199
    ld hl, $d3ed
    ld a, [$d051]
    cp [hl]
    jr nz, .jr_000_22c5
.jr_000_22d1:
    call Call_000_3199
    ld hl, $d3ee
    ld a, [$d052]
    cp [hl]
    jr nz, .jr_000_22d1
.jr_000_22dd:
    xor a
    ld [$d3f6], a
    ld [$d3cc], a
    ld hl, $ff95
    bit 0, [hl]
    ret nz
    ld hl, $ff94
    bit 1, [hl]
    ret nz
    ld b, $00
    ld hl, $d3df
    ld a, [hl+]
    or [hl]
    jr z, .jr_000_2305
    ld hl, $ff95
    bit 6, [hl]
    jr z, .jr_000_2303
    call Call_000_3768
.jr_000_2303:
    set 4, b
.jr_000_2305:
    ld hl, $d3e1
    ld a, [hl+]
    or [hl]
    jr z, .jr_000_230e
    set 4, b
.jr_000_230e:
    ld a, b
    ld [$d1a0], a
    xor a
    ld [$d190], a
    ret


Call_000_2317:
    ld b, $0f
    ld hl, $d161
    jr jr_000_2323

Call_000_231e:
    ld b, $10
    ld hl, $d160
jr_000_2323:
    xor a
.jr_000_2324:
    ld [hl+], a
    dec b
    jr nz, .jr_000_2324
    ret


Call_000_2329:
    push hl
    push bc
    xor a
    ld b, $08
    ld hl, $d3c4
.jr_000_2331:
    ld [hl+], a
    dec b
    jr nz, .jr_000_2331
    pop bc
    pop hl
    ret


Call_000_2338:
    ld c, $00
    ld b, $0d
    jr jr_000_234e

Call_000_233e:
    ld c, $01
    ld b, $0d
    jr jr_000_234e

Call_000_2344:
    ld c, $0d
    ld b, $0f
    jr jr_000_234e
    ld c, $0f
    ld b, $10
jr_000_234e:
    ld a, d
    swap a
    ld [$d3d6], a
    ld a, e
    swap a
    ld [$d3d7], a
    ld d, h
    ld e, l
    ld a, $60
    add c
    ld l, a
    ld h, $d1
    jr nc, .jr_000_2365
    inc h
.jr_000_2365:
    ld a, [hl+]
    and a
    jr z, .jr_000_2370
    inc c
    ld a, c
    cp b
    jr nz, .jr_000_2365
    scf
    ret
.jr_000_2370:
    push de
    ld b, $00
    ld a, $01
    ld hl, $d160
    add hl, bc
    ld [hl], a
    xor a
    ld hl, $d0a0
    add hl, bc
    add hl, bc
    add hl, bc
    ld [hl+], a
    ld a, [$d3d6]
    and $0f
    ld d, a
    ld a, [$d3d6]
    and $f0
    add $10
    ld [hl+], a
    ld a, d
    adc $00
    ld [hl], a
    ld hl, $d0d0
    add hl, bc
    add hl, bc
    add hl, bc
    xor a
    ld [hl+], a
    ld a, [$d3d7]
    and $0f
    ld d, a
    ld a, [$d3d7]
    and $f0
    add $18
    ld [hl+], a
    ld a, d
    adc $00
    ld [hl], a
    pop de
Call_000_23af:
    ld a, [wLoadedROMBank]
    push af
    ld a, [$d3f0]
    ld [wLoadedROMBank], a
    ld [MBC1RomBank], a
    ld a, [de]
    inc de
    ld hl, $d2ba
    add hl, bc
    add hl, bc
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl], a
    ld a, [de]
    inc de
    ld hl, $d21a
    add hl, bc
    add hl, bc
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl], a
    ld hl, $d1e0
    add hl, bc
    add hl, bc
    push bc
    ld a, [de]
    ld [hl+], a
    ld c, a
    inc de
    ld a, [de]
    ld [hl], a
    inc de
    ld h, a
    ld l, c
    pop bc
    push hl
    ld hl, $d3aa
    add hl, bc
    ld a, [de]
    ld [hl], a
    pop hl
    pop af
    ld [wLoadedROMBank], a
    ld [MBC1RomBank], a
    push hl
    ld a, [hl]
    ld hl, $d190
    add hl, bc
    ld [hl], a
    pop hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [hl]
    ld hl, $d39a
    add hl, bc
    ld [hl], a
    xor a
    ld hl, $d1a0
    add hl, bc
    ld [hl], a
    ld hl, $d1b0
    add hl, bc
    ld [hl], a
    ld de, $58b8
    ld hl, $d1c0
    add hl, bc
    add hl, bc
    ld [hl], e
    inc hl
    ld [hl], d
Jump_000_2419:
    ld hl, $d170
    add hl, bc
    ld [hl], $01
    ld hl, $d180
    add hl, bc
    ld [hl], $01
    xor a
    ld hl, $d25a
    call Call_000_2441
    ld hl, $d2fa
    call Call_000_2441
    ld hl, $d23a
    call Call_000_2441
    ld hl, $d2da
    call Call_000_2441
    ld hl, $d35a
Call_000_2441:
    add hl, bc
    add hl, bc
    ld [hl+], a
    ld [hl], a
    xor a
    ret


Call_000_2447:
    cp $ef
    jp nc, .jump_000_253f
    cp $e0
    jr nz, .jr_000_245b
    ld hl, $d160
    add hl, bc
    xor a
    ld [hl], a
    dec a
    ld [$d3d8], a
    ret
.jr_000_245b:
    cp $e1
    jr nz, .jr_000_2462
    jp Call_000_2784
.jr_000_2462:
    cp $e2
    jr nz, .jr_000_2479
    ld a, [hl]
    ld d, $00
    ld e, a
    rlca
    jr nc, .jr_000_246f
    ld d, $ff
.jr_000_246f:
    add hl, de
    ld a, l
    ld [$d3d9], a
    ld a, h
    ld [$d3da], a
    ret
.jr_000_2479:
    cp $e8
    jr nz, .jr_000_248e
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, l
    ld [$d3d9], a
    ld a, h
    ld [$d3da], a
    ld h, d
    ld l, e
    jp .jump_000_24a4
.jr_000_248e:
    cp $e9
    jr nz, .jr_000_24bf
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    push af
    ld a, l
    ld [$d3d9], a
    ld a, h
    ld [$d3da], a
    ld h, d
    ld l, e
    pop af
    ld e, a
.jump_000_24a4:
    ld a, [wLoadedROMBank]
    ld [$d3ef], a
    push af
    ld a, $01
    ld [wLoadedROMBank], a
    ld [MBC1RomBank], a
    ld a, e
    call Call_000_2f33
    pop af
    ld [wLoadedROMBank], a
    ld [MBC1RomBank], a
    ret
.jr_000_24bf:
    cp $ea
    jr nz, .jr_000_24dc
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [de]
    cp [hl]
    jr nz, .jr_000_24cf
    inc hl
    jp Call_000_2784
.jr_000_24cf:
    ld de, $0003
    add hl, de
    ld a, l
    ld [$d3d9], a
    ld a, h
    ld [$d3da], a
    ret
.jr_000_24dc:
    cp $eb
    jr nz, .jr_000_24ed
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [de]
.Jump_000_24e5:
    add a
    ld e, a
    ld d, $00
    add hl, de
    jp Call_000_2784
.jr_000_24ed:
    cp $ed
    jr nz, .jr_000_2505
    ld d, h
    ld e, l
    ld hl, $d160
    add hl, bc
    ld a, [de]
    inc a
    ld [hl], a
    inc de
    ld a, [de]
    ld a, e
    ld [$d3d9], a
    ld a, d
    ld [$d3da], a
    ret
.jr_000_2505:
    cp $ee
    jr nz, .jr_000_252a
    ld d, h
    ld e, l
    ld hl, $d35a
    add hl, bc
    add hl, bc
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl], a
    inc de
    ld hl, $d37a
    add hl, bc
    add hl, bc
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl], a
    inc de
    ld a, e
    ld [$d3d9], a
    ld a, d
    ld [$d3da], a
    ret
.jr_000_252a:
    cp $ef
    jr nz, .jump_000_253f

    ld a, l
    ld [$d3d9], a
    ld a, h
    ld [$d3da], a
    xor a
    ld hl, $d35a
    add hl, bc
    add hl, bc
    ld [hl+], a
    ld [hl], a
    ret
.jump_000_253f:
    cp $f0
    jr nz, .jr_000_2568
    ld d, h
    ld e, l
    ld hl, $d0a0
    add hl, bc
    add hl, bc
    add hl, bc
    xor a
    ld [hl+], a
    ld a, [de]
    ld [hl+], a
    ld [hl], $00
    inc de
    ld hl, $d0d0
    add hl, bc
    add hl, bc
    add hl, bc
    xor a
    ld [hl+], a
    ld a, [de]
    ld [hl+], a
    ld [hl], $00
    inc de
    ld a, e
    ld [$d3d9], a
    ld a, d
    ld [$d3da], a
    ret
.jr_000_2568:
    cp $f1
    jr nz, .jr_000_25a3
    push bc
    ld d, h
    ld e, l
    ld hl, $d0a1
    add hl, bc
    add hl, bc
    add hl, bc
    ld b, $00
    ld a, [de]
    bit 7, a
    jr z, .jr_000_257d
    dec b
.jr_000_257d:
    add [hl]
    ld [hl+], a
    ld a, [hl]
    adc b
    ld [hl], a
    inc de
    pop bc
    push bc
    ld hl, $d0d1
    add hl, bc
    add hl, bc
    add hl, bc
    ld b, $00
    ld a, [de]
    bit 7, a
    jr z, .jr_000_2593
    dec b
.jr_000_2593:
    add [hl]
    ld [hl+], a
    ld a, [hl]
    adc b
    ld [hl], a
    inc de
    ld a, e
    ld [$d3d9], a
    ld a, d
    ld [$d3da], a
    pop bc
    ret
.jr_000_25a3:
    cp $f2
    jr nz, .jr_000_260c
    ld a, l
    ld [$d3d9], a
    ld a, h
    ld [$d3da], a
    ld hl, $d190
    add hl, bc
    set 0, [hl]
    ld a, [$d053]
    and $0f
    ld e, a
    ld a, [$d051]
    dec a
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, l
    or e
    ld l, a
    push hl
    ld hl, $d0a1
    add hl, bc
    add hl, bc
    add hl, bc
    ld e, [hl]
    ld d, $00
    pop hl
    add hl, de
    ld d, h
    ld e, l
    ld hl, $d0a1
    add hl, bc
    add hl, bc
    add hl, bc
    ld [hl], e
    inc hl
    ld [hl], d
    ld a, [$d055]
    and $0f
    ld e, a
    ld a, [$d052]
    dec a
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, l
    or e
    ld l, a
    push hl
    ld hl, $d0d1
    add hl, bc
    add hl, bc
    add hl, bc
    ld e, [hl]
    ld d, $00
    pop hl
    add hl, de
    ld d, h
    ld e, l
    ld hl, $d0d1
    add hl, bc
    add hl, bc
    add hl, bc
    ld [hl], e
    inc hl
    ld [hl], d
    ret
.jr_000_260c:
    cp $f3
    jr nz, .jr_000_2637
    ld a, l
    ld [$d3d9], a
    ld a, h
    ld [$d3da], a
    ld hl, $d190
    add hl, bc
    res 0, [hl]
    ld hl, $d140
    add hl, bc
    ld a, [hl]
    ld hl, $d0a1
    add hl, bc
    add hl, bc
    add hl, bc
    ld [hl], a
    ld hl, $d150
    add hl, bc
    ld a, [hl]
    ld hl, $d0d1
    add hl, bc
    add hl, bc
    add hl, bc
    ld [hl], a
    ret
.jr_000_2637:
    cp $f4
    jr nz, .jr_000_264a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld [de], a
    ld a, l
    ld [$d3d9], a
    ld a, h
    ld [$d3da], a
    ret
.jr_000_264a:
    cp $f5
    jr nz, .jr_000_265e
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, l
    ld [$d3d9], a
    ld a, h
    ld [$d3da], a
    ld h, d
    ld l, e
    inc [hl]
    ret
.jr_000_265e:
    cp $f6
    jr nz, .jr_000_2672
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, l
    ld [$d3d9], a
    ld a, h
    ld [$d3da], a
    ld h, d
    ld l, e
    dec [hl]
    ret
.jr_000_2672:
    cp $f7
    jr nz, .jr_000_2699
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [de]
    and [hl]
    cp [hl]
    jr nz, .jr_000_268d
.jr_000_267f:
    inc hl
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, e
    ld [$d3d9], a
    ld a, d
    ld [$d3da], a
    ret
.jr_000_268d:
    inc hl
    inc hl
    inc hl
    ld a, l
    ld [$d3d9], a
    ld a, h
    ld [$d3da], a
    ret
.jr_000_2699:
    cp $f8
    jr nz, .jr_000_26a8
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [de]
    and [hl]
    cp [hl]
    jr z, .jr_000_268d
    jr .jr_000_267f
.jr_000_26a8:
    cp $f9
    jr nz, .jr_000_26bf
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [de]
    and [hl]
    inc hl
    or [hl]
    ld [de], a
    inc hl
    ld a, l
    ld [$d3d9], a
    ld a, h
    ld [$d3da], a
    ret
.jr_000_26bf:
    cp $fa
    jr nz, .jr_000_26d8
    call Call_000_1d01
    cp [hl]
    inc hl
    jr nc, .jr_000_26cd
    jp Call_000_2784
.jr_000_26cd:
    inc hl
    inc hl
    ld a, l
    ld [$d3d9], a
    ld a, h
    ld [$d3da], a
    ret
.jr_000_26d8:
    cp $fb
    jr nz, .jr_000_26e4
    call Call_000_1d01
    and [hl]
    inc hl
    jp .Jump_000_24e5
.jr_000_26e4:
    cp $fc
    jr nz, .jr_000_2707
    push hl
    ld a, [$d3f0]
    push af
    ld a, [wLoadedROMBank]
    ld [$d3f0], a
    call Call_000_2708
    pop af
    ld [$d3f0], a
    pop hl
    ld de, $0006
    add hl, de
    ld a, l
    ld [$d3d9], a
    ld a, h
    ld [$d3da], a
.jr_000_2707:
    ret


Call_000_2708:
    push bc
    ld de, $0000
    call Call_000_233e
    jr nc, .jr_000_2713
    pop bc
    ret
.jr_000_2713:
    ld d, b
    ld e, c
    pop bc
    ld hl, $d200
    add hl, bc
    add hl, bc
    ld a, [hl+]
    push af
    ld a, [hl]
    ld hl, $d201
    add hl, de
    add hl, de
    ld [hl-], a
    pop af
    ld [hl], a
    ld hl, $d190
    add hl, de
    bit 0, [hl]
    jr nz, Call_000_2755
    ld hl, $d140
    add hl, bc
    ld a, [hl]
    ld hl, $d140
    add hl, de
    ld [hl], a
    ld hl, $d0a1
    add hl, de
    add hl, de
    add hl, de
    ld [hl+], a
    ld [hl], $00
    ld hl, $d150
    add hl, bc
    ld a, [hl]
    ld hl, $d150
    add hl, de
    ld [hl], a
    ld hl, $d0d1
    add hl, de
    add hl, de
    add hl, de
    ld [hl+], a
    ld [hl], $00
    ret

Call_000_2755:
    ld hl, $d0a0
    call Call_000_2771
    ld hl, $d0d0
    call Call_000_2771
    ld hl, $d140
    call Call_000_276a
    ld hl, $d150
Call_000_276a:
    push hl
    add hl, bc
    ld a, [hl]
    pop hl
    add hl, de
    ld [hl], a
    ret


Call_000_2771:
    push bc
    push hl
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld b, [hl]
    inc hl
    ld c, [hl]
    pop hl
    add hl, de
    add hl, de
    add hl, de
    ld [hl+], a
    ld [hl], b
    inc hl
    ld [hl], c
    pop bc
    ret


Call_000_2784:
    ld a, [hl+]
    ld [$d3d9], a
    ld a, [hl]
    ld [$d3da], a
    ret


Call_000_278d:
    inc hl
    cp $fd
    jr nz, .jr_000_27a4
    call Call_000_1d01
    cp [hl]
    inc hl
    jr c, .jr_000_27ca
    inc hl
    inc hl
    ld a, l
    ld [$d3d9], a
    ld a, h
    ld [$d3da], a
    ret
.jr_000_27a4:
    cp $fe
    jr nz, .jr_000_27c6
    ld d, [hl]
    push de
    call Call_000_1d01
    and [hl]
    inc hl
    add a
    ld e, a
    ld d, $00
    add hl, de
    pop de
    push hl
    ld hl, $d23a
    add hl, bc
    add hl, bc
    ld a, $04
    add d
    add d
    ld d, a
    ld a, [$d3d9]
    add d
    jr .jr_000_27d5
.jr_000_27c6:
    cp $e3
    jr nz, .jr_000_27e0
.jr_000_27ca:
    push hl
    ld hl, $d23a
    add hl, bc
    add hl, bc
    ld a, [$d3d9]
    add $03
.jr_000_27d5:
    ld [hl+], a
    ld a, [$d3da]
    adc $00
    ld [hl], a
    pop hl
    jp Call_000_2784
.jr_000_27e0:
    cp $e4
    jr nz, .jr_000_27ec
    ld hl, $d23a
    add hl, bc
    add hl, bc
    jp Call_000_2784
.jr_000_27ec:
    cp $e5
    jr nz, .jr_000_2813
    ld d, h
    ld e, l
    ld hl, $d2ba
    add hl, bc
    add hl, bc
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl], a
    inc de
    ld a, [de]
    ld [$d3d9], a
    inc de
    ld a, [de]
    ld [$d3da], a
    ld hl, $d180
    add hl, bc
    ld [hl], $01
    ld hl, $d170
    add hl, bc
    ld [hl], $01
    ret
.jr_000_2813:
    cp $e6
    jr nz, .jr_000_283e
    ld a, [hl+]
    push hl
    push af
    ld hl, $d29a
    ld de, $d25a
    add hl, bc
    ld a, [hl]
    and a
    jr z, .jr_000_282c
    ld hl, $d2aa
    ld de, $d27a
    add hl, bc
.jr_000_282c:
    pop af
    ld [hl], a
    ld h, d
    ld l, e
    add hl, bc
    add hl, bc
    pop de
    ld a, e
    ld [hl+], a
    ld [$d3d9], a
    ld a, d
    ld [hl], a
    ld [$d3da], a
    ret
.jr_000_283e:
    cp $e7
    jr nz, .jr_000_286b
    push hl
    ld hl, $d2aa
    ld de, $d27a
    add hl, bc
    ld a, [hl]
    and a
    jr nz, .jr_000_2855
    ld hl, $d29a
    ld de, $d25a
    add hl, bc
.jr_000_2855:
    dec [hl]
    jr z, .jr_000_2861
    ld h, d
    ld l, e
    add hl, bc
    add hl, bc
    call Call_000_2784
    pop hl
    ret
.jr_000_2861:
    pop hl
    ld a, l
    ld [$d3d9], a
    ld a, h
    ld [$d3da], a
    ret
.jr_000_286b:
    call Call_000_2447
    ret


Call_000_286f:
    inc hl
    cp $fd
    jr nz, .jr_000_2886
    call Call_000_1d01
    cp [hl]
    inc hl
    jr c, .jr_000_28ac
    inc hl
    inc hl
    ld a, l
    ld [$d3d9], a
    ld a, h
    ld [$d3da], a
    ret
.jr_000_2886:
    cp $fe
    jr nz, .jr_000_28a8
    ld d, [hl]
    push de
    call Call_000_1d01
    and [hl]
    inc hl
    add a
    ld e, a
    ld d, $00
    add hl, de
    pop de
    push hl
    ld hl, $d2da
    add hl, bc
    add hl, bc
    ld a, $04
    add d
    add d
    ld d, a
    ld a, [$d3d9]
    add d
    jr .jr_000_28b7
.jr_000_28a8:
    cp $e3
    jr nz, .jr_000_28c2
.jr_000_28ac:
    push hl
    ld hl, $d2da
    add hl, bc
    add hl, bc
    ld a, [$d3d9]
    add $03
.jr_000_28b7:
    ld [hl+], a
    ld a, [$d3da]
    adc $00
    ld [hl], a
    pop hl
    jp Call_000_2784
.jr_000_28c2:
    cp $e4
    jr nz, .jr_000_28ce
    ld hl, $d2da
    add hl, bc
    add hl, bc
    jp Call_000_2784
.jr_000_28ce:
    cp $e5
    jr nz, .jr_000_28f3
    ld a, [hl+]
    ld [$d3d9], a
    ld a, [hl+]
    ld [$d3da], a
    ld d, h
    ld e, l
    ld hl, $d21a
    add hl, bc
    add hl, bc
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl], a
    ld hl, $d180
    add hl, bc
    ld [hl], $01
    ld hl, $d170
    add hl, bc
    ld [hl], $01
    ret
.jr_000_28f3:
    cp $e6
    jr nz, .jr_000_291e
    ld a, [hl+]
    push hl
    push af
    ld hl, $d33a
    ld de, $d2fa
    add hl, bc
    ld a, [hl]
    and a
    jr z, .jr_000_290c
    ld hl, $d34a
    ld de, $d31a
    add hl, bc
.jr_000_290c:
    pop af
    ld [hl], a
    ld h, d
    ld l, e
    add hl, bc
    add hl, bc
    pop de
    ld a, e
    ld [hl+], a
    ld [$d3d9], a
    ld a, d
    ld [hl], a
    ld [$d3da], a
    ret
.jr_000_291e:
    cp $e7
    jr nz, .jr_000_294b
    push hl
    ld hl, $d34a
    ld de, $d31a
    add hl, bc
    ld a, [hl]
    and a
    jr nz, .jr_000_2935
    ld hl, $d33a
    ld de, $d2fa
    add hl, bc
.jr_000_2935:
    dec [hl]
    jr z, .jr_000_2941
    ld h, d
    ld l, e
    add hl, bc
    add hl, bc
    call Call_000_2784
    pop hl
    ret
.jr_000_2941:
    pop hl
    ld a, l
    ld [$d3d9], a
    ld a, h
    ld [$d3da], a
    ret
.jr_000_294b:
    call Call_000_2447
    ret


Call_000_294f:
    cp $70
    jr c, .jr_000_2967
    cp $90
    jr nc, .jr_000_2967
    sub $70
    ld hl, Unk2977
    add a
    add l
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    ret
.jr_000_2967:
    ld d, a
    ld e, $00
    sra d
    rr e
    sra d
    rr e
    sra d
    rr e
    ret

Unk2977:
    dw $0000
    dw $0004
    dw $0008
    dw $0010
    dw $0020
    dw $0040
    dw $0080
    dw $00C0
    dw $0100
    dw $0140
    dw $0200
    dw $0300
    dw $0400
    dw $0600
    dw $0800
    dw $1000
    dw $0000
    dw $FFFC
    dw $FFF8
    dw $FFF0
    dw $FFE0
    dw $FFC0
    dw $FF80
    dw $FF40
    dw $FF00
    dw $FEC0
    dw $FE00
    dw $FD00
    dw $FC00
    dw $FA00
    dw $F800
    dw $F000


Call_29b7:
    ld a, c
    cp $0d
    jr nc, .jr_000_29c3
    ld hl, $d1b0
    add hl, bc
    bit 1, [hl]
    ret nz
.jr_000_29c3:
    ld a, c
    and a
    jr nz, .jr_000_29ce
    ld hl, $ff91
    bit 4, [hl]
    jr nz, .jr_000_29d4
.jr_000_29ce:
    ld hl, $ff93
    bit 2, [hl]
    ret nz
.jr_000_29d4:
    call Call_000_2ce5
    ret c
    ld a, [$d039]
    and a
    ld a, $04
    jr z, .jr_000_29e2
    ld a, $0c
.jr_000_29e2:
    ld [wLoadedROMBank], a
    ld [MBC1RomBank], a
    ld hl, $d170
    add hl, bc
    ld a, [hl]
    and a
    jp z, .jump_000_2a80
    dec a
    jr z, .jr_000_29f8
    ld [hl], a
    jp .jump_000_2a80
.jr_000_29f8:
    ld hl, $d21a
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld [$d3d9], a
    ld a, [hl]
    ld [$d3da], a
.jr_000_2a05:
    ld a, [$d3d9]
    ld l, a
    ld a, [$d3da]
    ld h, a
    ld a, [hl]
    ld [$d3d8], a
    cp $e0
    jr c, .jr_000_2a3e
    cp $ec
    jr nz, .jr_000_2a2b
    inc hl
    ld a, [hl+]
    ld d, a
    ld a, l
    ld [$d3d9], a
    ld a, h
    ld [$d3da], a
    ld hl, $d170
    add hl, bc
    ld [hl], d
    jr .jr_000_2a73
.jr_000_2a2b:
    call Call_000_278d
    ld a, [$d3d8]
    cp $ff
    jr nz, .jr_000_2a05
    ld a, $01
    ld [wLoadedROMBank], a
    ld [MBC1RomBank], a
    ret
.jr_000_2a3e:
    ld a, [$d3d8]
    ld hl, $d170
    add hl, bc
    ld [hl], a
    ld a, [$d3d9]
    ld l, a
    ld a, [$d3da]
    ld h, a
    inc hl
    ld a, [hl+]
    push hl
    call Call_000_294f
    ld hl, $d100
    add hl, bc
    add hl, bc
    ld [hl], e
    inc hl
    ld [hl], d
    pop hl
    ld a, [hl+]
    push hl
    call Call_000_294f
    ld hl, $d120
    add hl, bc
    add hl, bc
    ld [hl], e
    inc hl
    ld [hl], d
    pop hl
    ld a, l
    ld [$d3d9], a
    ld a, h
    ld [$d3da], a
.jr_000_2a73:
    ld a, [$d3d9]
    ld hl, $d21a
    add hl, bc
    add hl, bc
    ld [hl+], a
    ld a, [$d3da]
    ld [hl], a
.jump_000_2a80:
    ld a, [$d039]
    and a
    ld a, $08
    jr z, .jr_000_2a8a
    ld a, $09
.jr_000_2a8a:
    ld [wLoadedROMBank], a
    ld [MBC1RomBank], a
    ld hl, $d180
    add hl, bc
    ld a, [hl]
    and a
    ret z
    dec a
    jr z, .jr_000_2a9c
    ld [hl], a
    ret
.jr_000_2a9c:
    ld hl, $d2ba
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld [$d3d9], a
    ld a, [hl]
    ld [$d3da], a
.jr_000_2aa9:
    ld a, [$d3d9]
    ld l, a
    ld a, [$d3da]
    ld h, a
    ld a, [hl]
    ld [$d3d8], a
    cp $e0
    jr c, .jr_000_2ada
    cp $ec
    jr nz, .jr_000_2acf
    inc hl
    ld a, [hl+]
    ld d, a
    ld a, l
    ld [$d3d9], a
    ld a, h
    ld [$d3da], a
    ld hl, $d180
    add hl, bc
    ld [hl], d
    jr .jr_000_2b18
.jr_000_2acf:
    call Call_000_286f
    ld a, [$d3d8]
    cp $ff
    ret z
    jr .jr_000_2aa9
.jr_000_2ada:
    ld a, [$d3d8]
    ld hl, $d180
    add hl, bc
    ld [hl], a
    ld a, [$d3d9]
    ld l, a
    ld a, [$d3da]
    ld h, a
    inc hl
    ld a, l
    ld [$d3d9], a
    ld a, h
    ld [$d3da], a
    inc hl
    ld a, [hl]
    cp $ff
    jr z, .jr_000_2b06
    ld d, h
    ld e, l
    dec de
    ld a, [de]
    ld hl, $d1c0
    add hl, bc
    add hl, bc
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl], a
.jr_000_2b06:
    ld a, [$d3d9]
    ld l, a
    ld a, [$d3da]
    ld h, a
    inc hl
    inc hl
    ld a, l
    ld [$d3d9], a
    ld a, h
    ld [$d3da], a
.jr_000_2b18:
    ld a, [$d3d9]
    ld hl, $d2ba
    add hl, bc
    add hl, bc
    ld [hl+], a
    ld a, [$d3da]
    ld [hl], a
    ret


Call_000_2b26:
    ld hl, $ff93
    bit 2, [hl]
    jp nz, .jr_000_2c5b
    ld hl, $d1a0
    add hl, bc
    res 7, [hl]
    ld hl, $d1b0
    add hl, bc
    bit 1, [hl]
    jp nz, .jump_000_2b8b
    call Call_000_2ce5
    jp c, .jump_000_2b8b
    ld de, $d0a0
    ld hl, $d100
    call Call_000_2d0d
    ld hl, $ff91
    bit 7, [hl]
    jr z, .jr_000_2b82
    ld hl, $d190
    add hl, bc
    bit 0, [hl]
    jr z, .jr_000_2b82
    ld a, [$d3e3]
    ld e, a
    ld a, [$d3e4]
    ld d, a
    ld hl, $d0a1
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [hl+]
    sub e
    ld a, [hl]
    sbc d
    jr c, .jr_000_2b82
    bit 7, [hl]
    jr nz, .jr_000_2b7b
    dec hl
    ld a, [hl]
    sub e
    ld [hl+], a
    ld a, [hl]
    sbc d
    jr .jr_000_2b81
.jr_000_2b7b:
    dec hl
    ld a, [hl]
    add e
    ld [hl+], a
    ld a, [hl]
    adc d
.jr_000_2b81:
    ld [hl], a
.jr_000_2b82:
    ld de, $d0d0
    ld hl, $d120
    call Call_000_2d0d
.jump_000_2b8b:
    ld hl, $d3cc
    bit 0, [hl]
    jp nz, .jr_000_2c18
    ld hl, $d190
    add hl, bc
    bit 0, [hl]
    jr z, .jr_000_2bf9
    ld hl, $ff91
    bit 7, [hl]
    jr nz, .jr_000_2bca
    ld hl, $d0a1
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [hl+]
    swap a
    and $0f
    ld e, a
    ld a, [hl]
    swap a
    and $f0
    or e
    ld e, a
    ld a, [$d051]
    add $0e
    cp e
    jr c, .jr_000_2bc7
    sub $14
    jr nc, .jr_000_2bc2
    xor a
.jr_000_2bc2:
    cp e
    jr z, .jr_000_2bca
    jr c, .jr_000_2bca
.jr_000_2bc7:
    jp Call_000_21ce
.jr_000_2bca:
    ld hl, $d190
    add hl, bc
    bit 0, [hl]
    jr z, .jr_000_2c18
    ld hl, $d0d1
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [hl+]
    swap a
    and $0f
    ld e, a
    ld a, [hl]
    swap a
    and $f0
    or e
    ld e, a
    ld a, [$d052]
    add $0c
    cp e
    jr c, .jr_000_2bc7
    sub $12
    jr nc, .jr_000_2bf2
    xor a
.jr_000_2bf2:
    cp e
    jr z, .jr_000_2c18
    jr nc, .jr_000_2bc7
    jr .jr_000_2c18
.jr_000_2bf9:
    ld hl, $d0a1
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [hl]
    cp $a8
    jr nc, .jr_000_2bc7
    ld d, $90
    ld a, [$d3f2]
    and a
    jr z, .jr_000_2c0e
    ld d, $aa
.jr_000_2c0e:
    ld hl, $d0d1
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [hl]
    cp d
    jr nc, .jr_000_2bc7
.jr_000_2c18:
    ld hl, $d190
    add hl, bc
    ld a, [hl]
    bit 5, a
    jr z, .jr_000_2c26
    push af
    call Call_000_2e04
    pop af
.jr_000_2c26:
    bit 3, a
    jr z, .jr_000_2c5b
    call Call_000_2e20
    and a
    jr z, .jr_000_2c5b
    cp $06
    jr nz, .jr_000_2c4d
    ld hl, $d120
    add hl, bc
    add hl, bc
    ld [hl], $66
    inc hl
    xor a
    ld [hl], a
    ld hl, $d100
    add hl, bc
    add hl, bc
    ld [hl+], a
    ld [hl], a
    ld hl, $d190
    add hl, bc
    set 7, [hl]
    jr .jr_000_2c5b
.jr_000_2c4d:
    ld hl, $d120
    add hl, bc
    add hl, bc
    xor a
    ld [hl+], a
    ld [hl], a
    ld hl, $d1b0
    add hl, bc
    set 6, [hl]
.jr_000_2c5b:
    ld d, b
    ld e, c
    ld hl, $d190
    add hl, de
    bit 0, [hl]
    jr z, .jr_000_2c6b
    call Call_000_2d2d
    jr nc, .jr_000_2c6e
    ret
.jr_000_2c6b:
    call Call_000_2deb
.jr_000_2c6e:
    push bc
    ld b, $b0
    ld a, [$d3f2]
    and a
    jr nz, .jr_000_2c96
    ld b, $90
    ld hl, $ff94
    bit 1, [hl]
    jr z, .jr_000_2c96
    ld a, [$d03b]
    cp $04
    jr z, .jr_000_2c94
    ld hl, $d140
    add hl, de
    ld a, [hl]
    cp $18
    jr c, .jr_000_2ce3
    cp $98
    jr nc, .jr_000_2ce3
.jr_000_2c94:
    ld b, $9e
.jr_000_2c96:
    ld hl, $d150
    add hl, de
    ld a, [hl]
    cp b
    jr nc, .jr_000_2ce3
    pop bc
    ld hl, $d1a0
    add hl, de
    set 7, [hl]
    ld hl, $d190
    add hl, de
    ld a, [hl]
    and $90
    ld [$d06b], a
    ld hl, $ff94
    bit 5, [hl]
    jr nz, .jr_000_2cd4
    ld hl, $d1a0
    add hl, de
    ld a, [$d036]
    bit 0, a
    jr nz, .jr_000_2cc4
    bit 5, [hl]
    ret nz
.jr_000_2cc4:
    bit 1, a
    jr nz, .jr_000_2cd4
    bit 4, [hl]
    jr z, .jr_000_2cd4
    ld a, [$d06b]
    xor $10
    ld [$d06b], a
.jr_000_2cd4:
    ld a, [$d06b]
    ld hl, $d1c0
    add hl, de
    add hl, de
    ld e, [hl]
    inc hl
    ld h, [hl]
    ld l, e
    jp Jump_000_18ff
.jr_000_2ce3:
    pop bc
    ret


Call_000_2ce5:
    ld a, c
    and a
    jr z, .jr_000_2d0b
    ld hl, $d3bf
    bit 3, [hl]
    jr z, .jr_000_2d0b
    ld hl, $d190
    add hl, bc
    bit 2, [hl]
    jr nz, .jr_000_2d0b
    ld hl, $d1e0
    add hl, bc
    add hl, bc
    ld a, [hl+]
    add $05
    ld h, [hl]
    jr nc, .jr_000_2d04
    inc h
.jr_000_2d04:
    ld l, a
    bit 0, [hl]
    jr nz, .jr_000_2d0b
    scf
    ret
.jr_000_2d0b:
    xor a
    ret


Call_000_2d0d:
    push hl
    ld h, d
    ld l, e
    add hl, bc
    add hl, bc
    add hl, bc
    ld d, h
    ld e, l
    pop hl
    add hl, bc
    add hl, bc
    ld a, [de]
    add [hl]
    ld [de], a
    inc hl
    inc de
    ld a, [de]
    adc [hl]
    ld [de], a
    inc de
    ld a, $00
    bit 7, [hl]
    jr z, .jr_000_2d28
    dec a
.jr_000_2d28:
    ld h, a
    ld a, [de]
    adc h
    ld [de], a
    ret


Call_000_2d2d:
    xor a
    ld [$d06c], a
    push de
    ld a, [$d053]
    and $0f
    ld d, a
    ld a, [$d051]
    dec a
    swap a
    ld e, a
    and $0f
    ld c, a
    ld [$d3dc], a
    ld a, e
    and $f0
    or d
    ld b, a
    ld [$d3db], a
    pop de
    ld hl, $d0a1
    add hl, de
    add hl, de
    add hl, de
    ld a, [hl+]
    sub b
    ld b, a
    push af
    push hl
    ld hl, $d140
    add hl, de
    ld [hl], b
    pop hl
    pop af
    ld a, [hl-]
    sbc c
    jr nz, .jr_000_2d69
    ld a, b
    cp $b0
    jr c, .jr_000_2da5
.jr_000_2d69:
    ld_long a, $ff91
    bit 7, a
    jr z, .jr_000_2da2
    ld a, [$d3db]
    ld b, a
    ld a, [$d3dc]
    ld c, a
    push de
    ld d, h
    ld e, l
    ld a, [$d03f]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, [de]
    add l
    ld l, a
    inc de
    ld a, [de]
    adc h
    ld h, a
    pop de
    ld a, l
    sub b
    ld b, a
    push af
    push hl
    ld hl, $d140
    add hl, de
    ld [hl], a
    pop hl
    pop af
    ld a, h
    sbc c
    jr nz, .jr_000_2da2
    ld a, b
    cp $b0
    jr c, .jr_000_2da5
.jr_000_2da2:
    call Call_000_2de3
.jr_000_2da5:
    push bc
    push de
    ld a, [$d055]
    and $0f
    ld d, a
    ld a, [$d052]
    dec a
    swap a
    ld e, a
    and $0f
    ld c, a
    ld a, e
    and $f0
    or d
    ld b, a
    pop de
    ld hl, $d0d1
    add hl, de
    add hl, de
    add hl, de
    ld a, [hl+]
    sub b
    ld b, a
    push af
    push hl
    ld hl, $d150
    add hl, de
    ld [hl], b
    pop hl
    pop af
    ld a, [hl]
    sbc c
    call nz, Call_000_2de3
    ld a, b
    pop bc
    ld c, a
    cp $90
    call nc, Call_000_2de3
    ld a, [$d06c]
    and a
    ret z
    scf
    ret


Call_000_2de3:
    push af
    ld a, $01
    ld [$d06c], a
    pop af
    ret


Call_000_2deb:
    ld hl, $d0a1
    add hl, de
    add hl, de
    add hl, de
    ld b, [hl]
    ld hl, $d140
    add hl, de
    ld [hl], b
    ld hl, $d0d1
    add hl, de
    add hl, de
    add hl, de
    ld c, [hl]
    ld hl, $d150
    add hl, de
    ld [hl], c
    ret


Call_000_2e04:
    ld hl, $d120
    add hl, bc
    add hl, bc
    ld a, [hl]
    add $24
    ld [hl+], a
    jr nc, .jr_000_2e10
    inc [hl]
.jr_000_2e10:
    dec hl
    ld a, [hl+]
    cp $80
    ld a, [hl]
    cp $02
    jr c, .jr_000_2e1f
    ld a, $02
    ld [hl-], a
    ld a, $80
    ld [hl], a
.jr_000_2e1f:
    ret


Call_000_2e20:
    ld hl, $d1a0
    add hl, bc
    bit 0, [hl]
    jr z, .jr_000_2e2a
    xor a
    ret
.jr_000_2e2a:
    push bc
    ld hl, $d0a1
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $fff8
    add hl, de
    bit 7, h
    jr z, .jr_000_2e45
    ld a, [$d3e3]
    ld e, a
    ld a, [$d3e4]
    ld d, a
    add hl, de
.jr_000_2e45:
    call Call_000_2e96
    push af
    ld a, [$d03f]
    ld d, a
    pop af
    cp d
    jr c, .jr_000_2e52
    sub d
.jr_000_2e52:
    ld d, a
    push de
    ld hl, $d0d1
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $fff0
    ld a, c
    cp $0d
    jr nc, .jr_000_2e71
    ld de, $fff8
    ld a, [$d3c0]
    and a
    jr z, .jr_000_2e71
    ld de, $0000
.jr_000_2e71:
    add hl, de
    call Call_000_2e96
    pop de
    ld e, a
    call Call_000_2e7f
    call Call_000_2e90
    pop bc
    ret


Call_000_2e7f:
    ld a, [$d03f]
    ld b, a
    call Call_000_1c52
    ld hl, $c100
    add hl, bc
    ld e, d
    ld d, $00
    add hl, de
    ld e, [hl]
    ret


Call_000_2e90:
    ld hl, $ca00
    add hl, de
    ld a, [hl]
    ret


Call_000_2e96:
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, h
    ret


Call_000_2e9c:
    ld a, [wLoadedROMBank]
    push af
    ld a, $01
    ld [wLoadedROMBank], a
    ld [MBC1RomBank], a
    call Call_000_2fdf
    ld hl, $d3bf
    bit 0, [hl]
    call nz, $4bb4
    ld b, $10
    ld c, $00
.jr_000_2eb7:
    push bc
    ld b, $00
    ld hl, $d160
    add hl, bc
    ld a, [hl]
    and a
    jr z, .jr_000_2ecf
    cp $ff
    jr z, .jr_000_2ecf
    dec a
    jr z, .jr_000_2ecc
    ld [hl], a
    jr .jr_000_2ecf
.jr_000_2ecc:
    call Call_29b7
.jr_000_2ecf:
    pop bc
    inc c
    dec b
    jr nz, .jr_000_2eb7
    ld hl, $ff93
    bit 2, [hl]
    jr nz, .jr_000_2f15
    ld a, [wLoadedROMBank]
    push af
    ld a, $05
    ld [wLoadedROMBank], a
    ld [MBC1RomBank], a
    ld b, $10
    ld c, $00
.jump_000_2eeb:
    push bc
    ld b, $00
    ld hl, $d160
    add hl, bc
    ld a, [hl]
    cp $01
    jr nz, .jr_000_2f05
    ld hl, $d35a
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    or h
    jr z, .jr_000_2f05
    call Call_000_2f33
.jr_000_2f05:
    pop bc
    inc c
    dec b
    jp nz, .jump_000_2eeb
    pop af
    ld [wLoadedROMBank], a
    ld [MBC1RomBank], a
    call Call_000_2f34
.jr_000_2f15:
    ld b, $10
    ld c, $00
.jr_000_2f19:
    push bc
    ld b, $00
    ld hl, $d160
    add hl, bc
    ld a, [hl]
    cp $01
    call z, Call_000_2b26
    pop bc
    inc c
    dec b
    jr nz, .jr_000_2f19
    pop af
    ld [wLoadedROMBank], a
    ld [MBC1RomBank], a
    ret


Call_000_2f33:
    jp hl


Call_000_2f34:
    ld a, [$d3d4]
    and a
    jr z, .jr_000_2fa2
    dec a
    ld [$d3d4], a
    ld hl, $ff91
    bit 1, [hl]
    jr z, .jr_000_2f57
    ld a, [$d3d4]
    and a
    ret nz
    ld a, [$d3d5]
    ld e, a
    ld d, $00
    ld hl, $d190
    add hl, de
    res 4, [hl]
    ret
.jr_000_2f57:
    push bc
    ld e, $a3
    add e
    ld e, a
    ld d, $2f
    jr nc, .jr_000_2f61
    inc d
.jr_000_2f61:
    ld a, [de]
    ld e, a
    ld d, $00
    bit 7, a
    jr z, .jr_000_2f6a
    dec d
.jr_000_2f6a:
    ld a, [$d3d5]
    ld c, a
    ld hl, $d0a1
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [hl]
    add e
    ld [hl+], a
    ld a, [hl]
    adc d
    ld [hl], a
    pop bc
    push bc
    ld a, [$d3d4]
    ld e, $c1
    add e
    ld e, a
    ld d, $2f
    jr nc, .jr_000_2f88
    inc d
.jr_000_2f88:
    ld a, [de]
    ld e, a
    ld d, $00
    bit 7, a
    jr z, .jr_000_2f91
    dec d
.jr_000_2f91:
    ld a, [$d3d5]
    ld c, a
    ld hl, $d0d1
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [hl]
    add e
    ld [hl+], a
    ld a, [hl]
    adc d
    ld [hl], a
    pop bc
.jr_000_2fa2:
    ret


Unk2fa3:
    db $FF, $FF, $01, $01
    db $FF, $FF, $01, $01
    db $01, $FF, $FE, $FE
    db $02, $02, $FE, $FE
    db $02, $02, $02, $FE
    db $FF, $FF, $01, $01
    db $FF, $FF, $01, $01
    db $01, $FF, $FF, $01
    db $01, $01, $FF, $FF
    db $FF, $01, $01, $FF
    db $FE, $02, $02, $02
    db $FE, $FE, $FE, $02
    db $02, $FE, $FF, $01
    db $01, $01, $FF, $FF
    db $FF, $01, $01, $FF

Call_000_2fdf:
    ld_long a, $ff93
    bit 2, a
    ret nz
    ld_long a, $ff94
    bit 5, a
    ret nz
    call Call_000_3059
    ld a, [$d3f5]
    and a
    jr z, .jr_000_2fff
    dec a
    ld [$d3f5], a
    jr nz, .jr_000_2fff
    ld hl, $d1a0
    res 5, [hl]
.jr_000_2fff:
    call .call_000_303a
    ld_long a, $ff91
    bit 0, a
    ret nz
    ld hl, $d3df
    call Call_000_3047
    ret nz
    ld a, [$d1a0]
    and $cf
    ld [$d1a0], a
    ld hl, $d3be
    bit 0, [hl]
    jr z, .jr_000_3030
    ld hl, $ff8e
    set 2, [hl]
    ld hl, $ff90
    set 3, [hl]
    ld_long a, $ff91
    and $fc
    ld_long $ff91, a
.jr_000_3030:
    ld_long a, $ff95
    and $83
    ld_long $ff95, a
    jr .jr_000_3041
.call_000_303a:
    ld hl, $d3e1
    call Call_000_3047
    ret nz
.jr_000_3041:
    ld hl, $d1a0
    res 4, [hl]
    ret


Call_000_3047:
    ld a, [hl+]
    or [hl]
    jr nz, .jr_000_304e
    or $01
    ret
.jr_000_304e:
    dec hl
    dec [hl]
    ld a, [hl+]
    cp $ff
    jr nz, .jr_000_3056
    dec [hl]
.jr_000_3056:
    ld a, [hl-]
    or [hl]
    ret


Call_000_3059:
    ld a, [$d3e0]
    ld e, a
    ld a, [$d3e2]
    or e
    ret nz
    ld a, [$d3df]
    ld e, a
    ld a, [$d3e1]
    cp e
    jr nc, .jr_000_306d
    ld a, e
.jr_000_306d:
    cp $78
    ret nz
    ld a, [$d03c]
    jp Call_000_1eb4

Call_000_3076:
    ld a, [$d053]
    swap a
    ld b, a
    inc d
    ld hl, $d051
    ld a, d
    sub [hl]
    add b
    rlca
    and $1e
    ld d, a
    ld a, [$d055]
    swap a
    ld b, a
    inc e
    ld hl, $d052
    ld a, e
    sub [hl]
    add b
    rrca
    rrca
    ld e, a
    and $c0
    or d
    ld l, a
    ld a, e
    and $03
    ld h, a
    ld de, $9800
    add hl, de
    ld a, l
    ld d, h
    ld hl, $d029
    ld [hl+], a
    ld [hl], d
    inc hl
    ld [hl], c
    ld hl, $ff96
    set 7, [hl]
    ret


Call_30b2:
    ld a, [$d3ef]
    ld [wLoadedROMBank], a
    ld [MBC1RomBank], a
    ld hl, $d140
    ld a, [hl]
    add $28
    ld e, a
    add hl, bc
    ld a, [hl]
    add $28
    sub e
    ld a, [$d3d9]
    ld l, a
    ld a, [$d3da]
    ld h, a
    jr nc, .jr_000_30d3
    inc hl
    inc hl
.jr_000_30d3:
    ld a, [hl+]
    ld [$d3d9], a
    ld a, [hl]
    ld [$d3da], a
    ret


Call_30dc:
    ld a, [$d3ef]
    ld [wLoadedROMBank], a
    ld [MBC1RomBank], a
    ld hl, $d150
    ld a, [hl]
    add hl, bc
    sub [hl]
    bit 7, a
    jr z, .jr_000_30f1
    cpl
    inc a
.jr_000_30f1:
    cp $03
    jr nc, .jr_000_3110
    ld hl, $d140
    ld a, [hl]
    add hl, bc
    cp [hl]
    ld a, [$d3d9]
    ld l, a
    ld a, [$d3da]
    ld h, a
    jr c, .jr_000_3107
    inc hl
    inc hl
.jr_000_3107:
    ld a, [hl+]
    ld [$d3d9], a
    ld a, [hl]
    ld [$d3da], a
    ret
.jr_000_3110:
    ld a, [$d3d9]
    add $04
    ld [$d3d9], a
    ld a, [$d3da]
    adc $00
    ld [$d3da], a
    ret


Call_3121:
    ld a, [$d3ef]
    ld [wLoadedROMBank], a
    ld [MBC1RomBank], a
    ld hl, $d1e0
    add hl, bc
    add hl, bc
    push bc
    ld a, [$d3d9]
    ld e, a
    ld a, [$d3da]
    ld d, a
    ld a, [de]
    ld [hl+], a
    ld b, a
    inc de
    ld a, [de]
    ld [hl], a
    ld h, a
    ld l, b
    inc de
    ld a, e
    ld [$d3d9], a
    ld a, d
    ld [$d3da], a
    pop bc
    push hl
    ld a, [hl]
    ld hl, $d190
    add hl, bc
    ld [hl], a
    pop hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [hl]
    ld hl, $d39a
    add hl, bc
    ld [hl], a
    xor a
    ld hl, $d1a0
    add hl, bc
    ld [hl], a
    ld hl, $d1b0
    add hl, bc
    ld [hl], a
    ret


Call_3168:
    push hl
    ld hl, $ff8f
    set 5, [hl]
    ld hl, $d08b
    add [hl]
    ld [hl+], a
    jr nc, .jr_000_317a
    inc [hl]
    jr nz, .jr_000_317a
    inc hl
    inc [hl]
.jr_000_317a:
    call Call_000_317f
    pop hl
    ret


Call_000_317f:
    ld hl, $d08b
    ld a, [hl+]
    sub $9f
    ld a, [hl+]
    sbc $86
    ld a, [hl]
    sbc $01
    ret c
    ld hl, $d08b
    ld a, $9f
    ld [hl+], a
    ld a, $86
    ld [hl+], a
    ld a, $01
    ld [hl], a
    ret


Call_000_3199:
    ld d, $01
    jr jr_000_319f

Call_000_319d:
    ld d, $00
jr_000_319f:
    ld a, [wLoadedROMBank]
    push af
    ld a, [$d3f0]
    ld [wLoadedROMBank], a
    ld [MBC1RomBank], a
    call Call_000_31b7
    pop af
    ld [wLoadedROMBank], a
    ld [MBC1RomBank], a
    ret


Call_000_31b7:
    ld hl, $d3ed
    ld a, [$d051]
    cp [hl]
    jr z, .jr_000_31c4
    jr nc, .jr_000_31d2
    jr .jr_000_3220
.jr_000_31c4:
    ld hl, $d3ee
    ld a, [$d052]
    cp [hl]
    ret z
    jp nc, .jump_000_3271
    jp .jump_000_32bf
.jr_000_31d2:
    ld e, $05
    bit 0, d
    jr z, .jr_000_31da
    ld e, $03
.jr_000_31da:
    ld a, [$d3e9]
    and a
    jr z, .jr_000_31f0
    call Call_000_330f
    ld a, [$d051]
    add $0b
    cp [hl]
    jr c, .jr_000_31fa
    push de
    call Call_000_3329
    pop de
.jr_000_31f0:
    ld a, [$d3e9]
    add $03
    ld [$d3e9], a
    jr .jr_000_3200
.jr_000_31fa:
    ld a, [$d051]
    ld [$d3ed], a
.jr_000_3200:
    ld a, [$d3ea]
    add $03
    ld [$d3ea], a
    call Call_000_330f
    ld a, [$d051]
    sub e
    jr nc, .jr_000_3212
    xor a
.jr_000_3212:
    cp [hl]
    jr z, .jr_000_3217
    jr nc, .jr_000_3200
.jr_000_3217:
    ld a, [$d3ea]
    sub $03
    ld [$d3ea], a
    ret
.jr_000_3220:
    ld e, $0d
    bit 0, d
    jr z, .jr_000_3228
    ld e, $0b
.jr_000_3228:
    ld a, [$d3ea]
    and a
    jr z, .jr_000_324d
    call Call_000_330f
    ld a, [$d051]
    sub $03
    jr nc, .jr_000_3239
    xor a
.jr_000_3239:
    cp [hl]
    jr z, .jr_000_323e
    jr nc, .jr_000_324d
.jr_000_323e:
    push de
    call Call_000_3329
    pop de
    ld a, [$d3ea]
    sub $03
    ld [$d3ea], a
    jr .jr_000_3253
.jr_000_324d:
    ld a, [$d051]
    ld [$d3ed], a
.jr_000_3253:
    ld a, [$d3e9]
    and a
    jr z, .jr_000_3270
    sub $03
    ld [$d3e9], a
    call Call_000_330f
    ld a, [$d051]
    add e
    cp [hl]
    jr c, .jr_000_3253
    ld a, [$d3e9]
    add $03
    ld [$d3e9], a
.jr_000_3270:
    ret
.jump_000_3271:
    ld e, $04
    bit 0, d
    jr z, .jr_000_3279
    ld e, $03
.jr_000_3279:
    ld a, [$d3eb]
    and a
    jr z, .jr_000_328f
    call Call_000_331c
    ld a, [$d052]
    add $09
    cp [hl]
    jr c, .jr_000_3299
    push de
    call Call_000_3329
    pop de
.jr_000_328f:
    ld a, [$d3eb]
    add $03
    ld [$d3eb], a
    jr .jr_000_329f
.jr_000_3299:
    ld a, [$d052]
    ld [$d3ee], a
.jr_000_329f:
    ld a, [$d3ec]
    add $03
    ld [$d3ec], a
    call Call_000_331c
    ld a, [$d052]
    sub e
    jr nc, .jr_000_32b1
    xor a
.jr_000_32b1:
    cp [hl]
    jr z, .jr_000_32b6
    jr nc, .jr_000_329f
.jr_000_32b6:
    ld a, [$d3ec]
    sub $03
    ld [$d3ec], a
    ret
.jump_000_32bf:
    ld e, $0a
    bit 0, d
    jr z, .jr_000_32c7
    ld e, $09
.jr_000_32c7:
    ld a, [$d3ec]
    and a
    jr z, .jr_000_32ec
    call Call_000_331c
    ld a, [$d052]
    sub $03
    jr nc, .jr_000_32d8
    xor a
.jr_000_32d8:
    cp [hl]
    jr z, .jr_000_32dd
    jr nc, .jr_000_32ec
.jr_000_32dd:
    push de
    call Call_000_3329
    pop de
    ld a, [$d3ec]
    sub $03
    ld [$d3ec], a
    jr .jr_000_32f2
.jr_000_32ec:
    ld a, [$d052]
    ld [$d3ee], a
.jr_000_32f2:
    ld a, [$d3eb]
    and a
    ret z
    sub $03
    ld [$d3eb], a
    call Call_000_331c
    ld a, [$d052]
    add e
    cp [hl]
    jr c, .jr_000_32f2
    ld a, [$d3eb]
    add $03
    ld [$d3eb], a
    ret


Call_000_330f:
    ld l, a
    ld a, [$d3e5]
    add l
    ld l, a
    ld a, [$d3e6]
    adc $00
    ld h, a
    ret


Call_000_331c:
    ld l, a
    ld a, [$d3e7]
    add l
    ld l, a
    ld a, [$d3e8]
    adc $00
    ld h, a
    ret


Call_000_3329:
    inc hl
    ld a, [hl+]
    ld [$d06b], a
    ld h, [hl]
    ld l, a
    ld a, h
    ld [$d06c], a
    ld a, [hl+]
    ld d, a
    ld_long a, $ff91
    bit 7, a
    jr nz, .jr_000_3350
    ld a, [$d051]
    sub $03
    jr nc, .jr_000_3345
    xor a
.jr_000_3345:
    cp d
    jr z, .jr_000_3349
    ret nc
.jr_000_3349:
    ld a, [$d051]
    add $0b
    cp d
    ret c
.jr_000_3350:
    ld a, [hl+]
    ld e, a
    ld a, [$d052]
    sub $03
    jr nc, .jr_000_335a
    xor a
.jr_000_335a:
    cp e
    jr z, .jr_000_335e
    ret nc
.jr_000_335e:
    ld a, [$d052]
    add $09
    cp e
    ret c
    push hl
    push bc
    push de
    ld d, h
    ld e, l
    ld b, $0c
    ld de, $d161
    ld hl, $d202
.jr_000_3372:
    ld a, [de]
    and a
    jr z, .jr_000_3387
    ld a, [$d06b]
    cp [hl]
    jr nz, .jr_000_3387
    inc hl
    ld a, [$d06c]
    cp [hl]
    jr nz, .jr_000_3388
    pop de
    pop bc
    pop hl
    ret
.jr_000_3387:
    inc hl
.jr_000_3388:
    inc hl
    inc de
    dec b
    jr nz, .jr_000_3372
    pop de
    pop bc
    pop hl
    push hl
    inc hl
    inc hl
    call Call_000_233e
    jr nc, .jr_000_339a
    pop de
    ret
.jr_000_339a:
    pop de
    push de
    ld hl, $d190
    add hl, bc
    bit 6, [hl]
    jr z, .jr_000_33ce
    ld hl, $d3aa
    add hl, bc
    ld a, [hl]
    cp $ff
    jr z, .jr_000_33ce
    push bc
    ld e, a
    and $07
    ld c, a
    xor a
    ld b, a
    ld d, a
    srl e
    srl e
    srl e
    ld hl, $d3c4
    add hl, de
    ld a, [hl]
    ld hl, $3408
    add hl, bc
    and [hl]
    jr z, .jr_000_33cd
    pop bc
    call Call_000_21ce
    pop de
    ret
.jr_000_33cd:
    pop bc
.jr_000_33ce:
    pop de
    ld hl, $d0a1
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [de]
    push de
    ld d, $00
    bit 7, a
    jr z, .jr_000_33df
    ld d, $ff
.jr_000_33df:
    add [hl]
    ld [hl+], a
    ld a, [hl]
    adc d
    ld [hl], a
    pop de
    inc de
    ld hl, $d0d1
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [de]
    ld d, $00
    bit 7, a
    jr z, .jr_000_33f5
    ld d, $ff
.jr_000_33f5:
    add [hl]
    ld [hl+], a
    ld a, [hl]
    adc d
    ld [hl], a
    ld hl, $d200
    add hl, bc
    add hl, bc
    ld a, [$d06b]
    ld [hl+], a
    ld a, [$d06c]
    ld [hl], a
    ret

Unk3408:
    db $01, $02, $04, $08, $10, $20, $40, $80

Call_000_3410:
    push bc
    ld b, $08
.jr_000_3413
    add a
    cp d
    jr c, .jr_000_3418
    sub d
.jr_000_3418
    ccf
    rl c
    dec b
    jr nz, .jr_000_3413
    ld a, c
    pop bc
    ret

Unk3421:
    db $05, $00, $00, $00, $04, $00, $00, $00, $69, $08, $08, $00, $54, $41, $69
    db $08, $08, $00, $72, $41, $69, $08, $08, $01, $72, $41, $69, $08, $08, $02, $72
    db $41, $69, $08, $08, $03, $72, $41, $69, $08, $08, $04, $72, $41, $69, $08, $08
    db $05, $72, $41, $49, $08, $08, $05, $72, $41, $69, $08, $08, $06, $72, $41, $49
    db $08, $08, $06, $72, $41, $69, $06, $08, $07, $72, $41, $49, $08, $08, $08, $72
    db $41, $48, $08, $08, $08, $72, $41, $69, $08, $08, $09, $72, $41, $41, $08, $08
    db $0A, $72, $41, $29, $06, $06, $01, $01, $03, $14, $54, $41, $01, $06, $06, $01
    db $01, $03, $14, $54, $41, $01, $06, $06, $01, $01, $01, $14, $54, $41, $05, $06
    db $06, $01, $01, $00, $14, $54, $41, $00, $06, $06, $01, $01, $03, $14, $54, $41
    db $01, $06, $06, $01, $01, $03, $28, $54, $41, $01, $06, $06, $03, $64, $00, $00
    db $00, $06, $06, $03, $64, $01, $00, $54, $41, $01, $03, $03, $01, $00, $11, $01
    db $54, $41, $01, $03, $03, $01, $64, $01, $00, $54, $41, $01, $06, $06, $01, $64
    db $01, $03, $54, $41, $01, $06, $06, $01, $01, $03, $28, $60, $41, $01, $06, $06
    db $01, $01, $01, $46, $54, $41, $01, $06, $06, $01, $01, $03, $1E, $BA, $41, $09
    db $06, $06, $01, $01, $03, $14, $54, $41, $09, $06, $06, $01, $01, $03, $14, $54
    db $41, $01, $06, $06, $01, $01, $03, $05, $54, $41, $01, $06, $06, $01, $01, $03
    db $14, $54, $41, $01, $06, $06, $01, $01, $03, $14, $54, $41, $09, $06, $06, $01
    db $01, $03, $14, $54, $41, $01, $0A, $0A, $02, $01, $03, $28, $54, $41, $29, $09
    db $09, $02, $01, $01, $28, $54, $41, $01, $0A, $0D, $02, $01, $03, $14, $A8, $41
    db $09, $06, $06, $01, $01, $03, $14, $54, $41, $09, $06, $06, $01, $01, $01, $14
    db $54, $41, $01, $08, $10, $01, $01, $03, $1E, $B4, $41, $01, $08, $0B, $01, $03
    db $09, $00, $C0, $41, $01, $06, $06, $01, $01, $03, $01, $60, $41, $00, $06, $06
    db $01, $01, $03, $01, $66, $41, $01, $0D, $20, $02, $06, $09, $00, $CC, $41, $05
    db $0D, $10, $06, $01, $01, $00, $01, $06, $06, $01, $3C, $01, $00, $00, $06, $06
    db $01, $01, $03, $14, $5A, $41, $04, $0D, $0A, $0A, $01, $0D, $0A, $0E, $01, $04
    db $0A, $0A, $01, $0D, $06, $06, $01, $0D, $14, $14, $01, $01, $14, $14, $01, $05
    db $00, $00, $60, $41, $00, $14, $14, $01, $05, $00, $00, $60, $41, $0D, $01, $12
    db $10, $01, $28, $09, $00, $D8, $41, $00, $03, $02, $01, $00, $10, $00, $54, $41
    db $00, $0A, $0A, $01, $03, $09, $00, $DE, $41, $01, $10, $0D, $01, $06, $09, $00
    db $EA, $41, $00, $06, $06, $01, $03, $09, $00, $D2, $41, $09, $06, $06, $01, $01
    db $03, $1E, $54, $41, $05, $00, $00, $00, $01, $00, $00, $FC, $41, $2D, $00, $00
    db $00, $01, $00, $00, $FC, $41, $01, $0B, $0D, $01, $0A, $09, $00, $F6, $41, $01
    db $00, $00, $01, $64, $00, $01, $FC, $41, $01, $0A, $08, $01, $01, $00, $00, $01
    db $1A, $08, $01, $01, $00, $00, $01, $01, $01, $00, $50, $01, $00, $54, $41, $01
    db $08, $08, $06, $64, $01, $00, $54, $41, $01, $06, $06, $01, $01, $02, $00, $01
    db $06, $06, $01, $01, $03, $1E, $54, $41, $01, $06, $06, $01, $01, $03, $32, $54
    db $41, $09, $03, $03, $01, $01, $03, $05, $54, $41, $29, $03, $03, $01, $01, $03
    db $05, $54, $41, $01, $09, $09, $01, $05, $01, $00, $72, $41, $01, $04, $04, $01
    db $01, $01, $05, $54, $41, $01, $06, $06, $01, $01, $03, $01, $54, $41, $29, $06
    db $06, $01, $01, $03, $32, $54, $41, $01, $06, $06, $01, $01, $03, $32, $54, $41
    db $01, $06, $06, $01, $01, $01, $32, $54, $41, $29, $06, $06, $01, $01, $03, $1E
    db $54, $41, $09, $06, $06, $01, $01, $03, $1E, $54, $41, $09, $06, $06, $01, $01
    db $03, $32, $54, $41, $29, $06, $06, $02, $01, $03, $14, $54, $41, $01, $06, $06
    db $02, $01, $03, $14, $54, $41, $01, $06, $06, $02, $01, $01, $14, $54, $41, $05
    db $06, $06, $02, $01, $00, $14, $54, $41, $00, $06, $06, $02, $01, $03, $14, $54
    db $41, $01, $06, $06, $02, $01, $03, $28, $54, $41, $01, $03, $03, $02, $00, $11
    db $01, $54, $41, $01, $06, $06, $02, $64, $01, $00, $54, $41, $09, $06, $06, $02
    db $01, $03, $14, $54, $41, $09, $06, $06, $02, $01, $03, $14, $54, $41, $01, $06
    db $06, $02, $01, $03, $14, $54, $41, $01, $06, $06, $02, $01, $03, $1E, $54, $41
    db $01, $06, $06, $02, $01, $03, $32, $54, $41, $29, $06, $06, $01, $01, $03, $32
    db $54, $41, $01, $06, $06, $02, $01, $03, $32, $54, $41, $01, $06, $06, $02, $01
    db $01, $32, $54, $41, $01, $04, $04, $02, $01, $01, $05, $54, $41


Call_375D:
    xor a
    ld hl, $d3f9
    ld c, $06
.jr_000_3763:
    ld [hl+], a
    dec c
    jr nz, .jr_000_3763
    ret


Call_000_3768:
    ld hl, $d1a0
    set 4, [hl]
    ld a, $40
    ld_long $ff95, a
    ld hl, $ff8d
    res 7, [hl]
    ld_long a, $ff92
    and $63
    ld_long $ff92, a
    ld a, $80
    ld_long $ff8e, a
    xor a
    ld_long $ff93, a
    ld a, $01
    ld [$d07a], a
    ld a, $33
    ld [$d07b], a
    ld a, $01
    ld [$d076], a
    ld a, $33
    ld [$d077], a
    ld a, $16
    ld [$d07c], a
    ld a, $09
    ld [$d07d], a
    ret


Call_000_37a7:
    ld hl, $417e
    jr jr_000_37b9

Call_000_37ac:
    ld a, $05
    call Call_000_1e96
Call_000_37b1:
    ld a, [$d414]
    and a
    ret nz
    ld hl, $4178
jr_000_37b9:
    call Call_000_233e
    ret c
    push bc
    ld hl, $d0a1
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [$d140]
    ld c, a
    ld a, [$d053]
    and $0f
    ld b, a
    ld a, [$d051]
    dec a
    swap a
    ld d, a
    and $0f
    ld e, a
    ld a, d
    and $f0
    add b
    add c
    ld [hl+], a
    ld a, e
    adc $00
    ld [hl], a
    pop bc
    push bc
    ld hl, $d0d1
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [$d150]
    ld c, a
    ld a, [$d055]
    and $0f
    ld b, a
    ld a, [$d052]
    dec a
    swap a
    ld d, a
    and $0f
    ld e, a
    ld a, d
    and $f0
    add b
    add c
    ld [hl+], a
    ld a, e
    adc $00
    ld [hl], a
    pop bc
    ret


Call_000_380a:
    push hl
    push bc
    push de
    ld hl, $4184
    call Call_000_2344
    jr c, jr_000_388a
    ld a, [wLoadedROMBank]
    push af
    ld a, $05
    ld [wLoadedROMBank], a
    ld [MBC1RomBank], a
    call $4a5f
    pop af
    ld [wLoadedROMBank], a
    ld [MBC1RomBank], a
    ld hl, $4190
    call Call_000_2344
    jr c, jr_000_3889
    ld hl, $d1b0
    add hl, bc
    set 1, [hl]
    jr jr_000_384a

Call_000_383b:
    push hl
    push bc
    push de
    ld hl, $418a
    call Call_000_2344
    jr c, jr_000_388a
    ld hl, $d1b0
    add hl, bc
jr_000_384a:
    set 0, [hl]
    jr jr_000_3873

Call_000_384e:
    push hl
    push bc
    push de
    ld hl, $4196
    call Call_000_2344
    jr c, jr_000_388a
    jr jr_000_3873

Call_000_385b:
    push hl
    push bc
    push de
    ld hl, $419c
    call Call_000_2344
    jr c, jr_000_388a
    ld_long a, $ff91
    bit 0, a
    jr nz, jr_000_3873
    ld hl, $d1b0
    add hl, bc
    set 3, [hl]
jr_000_3873:
    ld a, [wLoadedROMBank]
    push af
    ld a, $05
    ld [wLoadedROMBank], a
    ld [MBC1RomBank], a
    call $4a5f
    pop af
    ld [wLoadedROMBank], a
    ld [MBC1RomBank], a
jr_000_3889:
    xor a
jr_000_388a:
    pop de
    pop bc
    pop hl
    ret

Unk388e:
    INCBIN "baserom.gb", $388e, $3d2d - $388e

Jump_000_3d2d:
    ld hl, $ff94
    res 2, [hl]
    call Call_000_3d48
    ld a, $01
    ld [$d160], a
    call Call_000_139b
    ld a, $01
    ld [wLoadedROMBank], a
    ld [MBC1RomBank], a
    jp Jump_000_01f2


Call_000_3d48:
    ld a, $15
    ld [$d07e], a
    ld a, $16
    ld [$d065], a
    xor a
    ld_long $ff8d, a
    ld_long $ff8e, a
    ld_long $ff92, a
    ld_long $ff93, a
    ld [$d064], a
    ld [$d078], a
    ld [$d079], a
    ld hl, $ff90
    set 3, [hl]
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
    ld hl, $d082
    ld [hl+], a
    ld [hl], a
    ret


Call_000_3d92:
    ld a, [wLoadedROMBank]
    push af
    ld a, $01
    ld [wLoadedROMBank], a
    ld [MBC1RomBank], a
    call $4d3f
    pop af
    ld [wLoadedROMBank], a
    ld [MBC1RomBank], a
    ret


Call_000_3da9:
    ret nc
    ld [MBC1RomBank], a
    ret

; free space padding
INCBIN "baserom.gb", $3dae, $4000 - $3dae
