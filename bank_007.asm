SECTION "ROM Bank $007", ROMX[$4000], BANK[$7]

Unk1c000:
    dw Unk1c00a
    dw Unk1c01e
    dw Unk1c05e
    dw Unk1c07e
    dw Unk1c0a6

Unk1c00a:
    dw Unk1c202, $42d0
    dw $4245, $42d0
    dw $424f, $42d0
    dw $42a1, $42d4
    dw $42c9, $42f9

Unk1c01e:
    dw $45b2, $45b9
    dw $4621, $4625
    dw $4692, $46a2
    dw $45ca, $45e0
    dw $46d0, $46d7
    dw $4729, $4748
    dw $47c2, $47c6
    dw $4819, $4835
    dw $5936, $593d
    dw $48e0, $48ea
    dw $4909, $4919
    dw $488a, $48a0
    dw $4947, $4960
    dw $49c0, $49d6
    dw $5944, $594e
    dw $4a16, $4a20

Unk1c05e:
    dw $4a39, $4aa9
    dw $4aad, $4ae4
    dw $4b1b, $4b31
    dw $4b47, $4b84
    dw $4b88, $4b92
    dw $4b9c, $4ba3
    dw $4bad, $4bb4
    dw $4bb8, $4bcb

Unk1c07e:
    dw $4f48, $4fa3
    dw $50d3, $510d
    dw $51c5, $51c9
    dw $5269, $529a
    dw $58f9, $5900
    dw $535f, $5384
    dw $5426, $5445
    dw $54a5, $54be
    dw $5541, $5545
    dw $5914, $591b

Unk1c0a6:
    dw $5976, $5a22
    dw $597a, $5a22
    dw $5993, $59b2
    dw $59d1, $59ed
    dw $5a22, $59fd
    dw $5a26, $5a22

INCBIN "baserom.gb", $1c0be, $1c202 - $1c0be

Unk1c202:
    dbw $00, $0000
    dbw $0F, Unk1c304
    dbw $11, Unk1c318
    dbw $15, Unk1c322
    dbw $16, Unk1c32C
    dbw $18, Unk1c336
    dbw $1F, Unk1c340
    dbw $21, Unk1c34A
    dbw $29, Unk1c354
    dbw $30, Unk1c35E
    dbw $30, Unk1c368
    dbw $31, Unk1c372
    dbw $39, Unk1c386
    dbw $3D, Unk1c390
    dbw $40, Unk1c39A
    dbw $42, Unk1c3A4
    dbw $43, Unk1c3AE
    dbw $46, Unk1c3B8
    dbw $47, Unk1c3C2
    dbw $4A, Unk1c3CC
    dbw $4F, Unk1c3D6
    dbw $4E, Unk1c3E0
    db $FF

INCBIN "baserom.gb", $1c245, $1c304 - $1c245

Unk1c304:
    db $0F, $05, $00, $00
    dw Unk20587
    dw Unk102c8
    db $8C, $34

Unk1c30e:
    db $11, $05, $F8, $00
    dw $4d19
    db $D8, $51, $FF, $34

Unk1c318:
    db $11, $05, $00, $00
    dw Unk20587
    dw Unk102c8
    db $8C, $34

Unk1c322:
    db $15, $04, $00, $00
    dw $45ae
    dw Unk103ff
    db $8C, $34

Unk1c32C:
    db $16, $02, $00, $00
    dw $4c52
    db $5D, $4D, $1A, $35

Unk1c336:
    db $18, $04, $00, $00
    dw $4c5b
    db $99, $4D, $1A, $35

Unk1c340:
    db $1F, $01, $00, $00
    dw $4647
    db $08, $45, $8C, $34

Unk1c34A:
    db $21, $05, $00, $00
    dw $45ae
    dw Unk103ff
    db $8C, $34

Unk1c354:
    db $29, $05, $08, $00
    dw $4d0b
    db $E4, $51, $FF, $34

Unk1c35E:
    db $30, $02, $00, $00
    dw $4d28
    db $7D, $46, $8C, $34

Unk1c368:
    db $30, $05, $F8, $00
    dw $4d19
    db $D8, $51, $FF, $34

Unk1c372:
    db $31, $02, $00, $08
    dw $4d28
    db $7D, $46, $8C, $34

Unk1c37c:
    db $33, $03, $00, $00
    dw $4c5b
    db $99, $4D, $1A, $35

Unk1c386:
    db $39, $04, $00, $00
    dw $4c5b
    db $99, $4D, $1A, $35

Unk1c390:
    db $3D, $01, $00, $00
    dw $4647
    db $08, $45, $8C, $34

Unk1c39A:
    db $40, $05, $00, $00
    dw $45cc
    db $2F, $44, $8C, $34

Unk1c3A4:
    db $42, $05, $00, $00
    dw $4d3f
    db $AE, $4E, $23, $35

Unk1c3AE:
    db $43, $05, $08, $00
    dw $4d19
    db $D8, $51, $FF, $34

Unk1c3B8:
    db $46, $05, $00, $00
    dw $45ae
    dw Unk103ff
    db $8C, $34

Unk1c3C2:
    db $47, $03, $00, $00
    dw $4c52
    db $5D, $4D, $1A, $35

Unk1c3CC:
    db $4A, $04, $00, $00
    dw $4c5b
    db $99, $4D, $1A, $35

Unk1c3D6:
    db $4F, $02, $00, $00
    dw $4647
    db $7D, $46, $8C, $34

Unk1c3E0:
    db $4E, $03, $FA, $00
    dw $4958
    db $1D, $43, $4D, $34

INCBIN "baserom.gb", $1c3ea, $1dba0 - $1c3ea

; free space padding
INCBIN "baserom.gb", $1dba0, $20000 - $1dba0
