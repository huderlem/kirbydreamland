SECTION "ROM Bank $007", ROMX[$4000], BANK[$7]

StageEntities:
    dw GreenGreensEntities
    dw CastleLololoEntities
    dw FloatIslandsEntities
    dw BubblyCloudsEntities
    dw MtDededeEntities

GreenGreensEntities:
    dw GreenGreensScreen0_Entities_XTrip, GreenGreensScreen0_Entities_YTrip
    dw GreenGreensScreen1_Entities_XTrip, GreenGreensScreen1_Entities_YTrip
    dw GreenGreensScreen2_Entities_XTrip, GreenGreensScreen2_Entities_YTrip
    dw GreenGreensScreen3_Entities_XTrip, GreenGreensScreen3_Entities_YTrip
    dw GreenGreensScreen4_Entities_XTrip, GreenGreensScreen4_Entities_YTrip

CastleLololoEntities:
    dw CastleLololoScreen0_Entities_XTrip, CastleLololoScreen0_Entities_YTrip
    dw CastleLololoScreen1_Entities_XTrip, CastleLololoScreen1_Entities_YTrip
    dw CastleLololoScreen2_Entities_XTrip, CastleLololoScreen2_Entities_YTrip
    dw CastleLololoScreen3_Entities_XTrip, CastleLololoScreen3_Entities_YTrip
    dw CastleLololoScreen4_Entities_XTrip, CastleLololoScreen4_Entities_YTrip
    dw CastleLololoScreen5_Entities_XTrip, CastleLololoScreen5_Entities_YTrip
    dw CastleLololoScreen6_Entities_XTrip, CastleLololoScreen6_Entities_YTrip
    dw CastleLololoScreen7_Entities_XTrip, CastleLololoScreen7_Entities_YTrip
    dw CastleLololoScreen8_Entities_XTrip, CastleLololoScreen8_Entities_YTrip
    dw CastleLololoScreen9_Entities_XTrip, CastleLololoScreen9_Entities_YTrip
    dw CastleLololoScreen10_Entities_XTrip, CastleLololoScreen10_Entities_YTrip
    dw CastleLololoScreen11_Entities_XTrip, CastleLololoScreen11_Entities_YTrip
    dw CastleLololoScreen12_Entities_XTrip, CastleLololoScreen12_Entities_YTrip
    dw CastleLololoScreen13_Entities_XTrip, CastleLololoScreen13_Entities_YTrip
    dw CastleLololoScreen14_Entities_XTrip, CastleLololoScreen14_Entities_YTrip
    dw CastleLololoScreen15_Entities_XTrip, CastleLololoScreen15_Entities_YTrip

FloatIslandsEntities:
    dw FloatIslandsScreen0_Entities_XTrip, FloatIslandsScreen0_Entities_YTrip
    dw FloatIslandsScreen1_Entities_XTrip, FloatIslandsScreen1_Entities_YTrip
    dw FloatIslandsScreen2_Entities_XTrip, FloatIslandsScreen2_Entities_YTrip
    dw FloatIslandsScreen3_Entities_XTrip, FloatIslandsScreen3_Entities_YTrip
    dw FloatIslandsScreen4_Entities_XTrip, FloatIslandsScreen4_Entities_YTrip
    dw FloatIslandsScreen5_Entities_XTrip, FloatIslandsScreen5_Entities_YTrip
    dw FloatIslandsScreen6_Entities_XTrip, FloatIslandsScreen6_Entities_YTrip
    dw FloatIslandsScreen7_Entities_XTrip, FloatIslandsScreen7_Entities_YTrip

BubblyCloudsEntities:
    dw BubblyCloudsScreen0_Entities_XTrip, BubblyCloudsScreen0_Entities_YTrip
    dw BubblyCloudsScreen1_Entities_XTrip, BubblyCloudsScreen1_Entities_YTrip
    dw BubblyCloudsScreen2_Entities_XTrip, BubblyCloudsScreen2_Entities_YTrip
    dw BubblyCloudsScreen3_Entities_XTrip, BubblyCloudsScreen3_Entities_YTrip
    dw BubblyCloudsScreen4_Entities_XTrip, BubblyCloudsScreen4_Entities_YTrip
    dw BubblyCloudsScreen5_Entities_XTrip, BubblyCloudsScreen5_Entities_YTrip
    dw BubblyCloudsScreen6_Entities_XTrip, BubblyCloudsScreen6_Entities_YTrip
    dw BubblyCloudsScreen7_Entities_XTrip, BubblyCloudsScreen7_Entities_YTrip
    dw BubblyCloudsScreen8_Entities_XTrip, BubblyCloudsScreen8_Entities_YTrip
    dw BubblyCloudsScreen9_Entities_XTrip, BubblyCloudsScreen9_Entities_YTrip

MtDededeEntities:
    dw MtDededeScreen0_Entities_XTrip, MtDededeScreen0_Entities_YTrip
    dw MtDededeScreen1_Entities_XTrip, MtDededeScreen1_Entities_YTrip
    dw MtDededeScreen2_Entities_XTrip, MtDededeScreen2_Entities_YTrip
    dw MtDededeScreen3_Entities_XTrip, MtDededeScreen3_Entities_YTrip
    dw MtDededeScreen4_Entities_XTrip, MtDededeScreen4_Entities_YTrip
    dw MtDededeScreen5_Entities_XTrip, MtDededeScreen5_Entities_YTrip
    dw GreenGreensScreen4_Entities_XTrip, GreenGreensScreen4_Entities_YTrip
    dw FloatIslandsScreen7_Entities_XTrip, FloatIslandsScreen7_Entities_YTrip
    dw CastleLololoScreen14_Entities_XTrip, CastleLololoScreen14_Entities_YTrip
    dw BubblyCloudsScreen9_Entities_XTrip, BubblyCloudsScreen9_Entities_YTrip

INCBIN "baserom.gb", $1c0ce, $1c202 - $1c0ce

GreenGreensScreen0_Entities_XTrip:
    dbw 0, $0000
    dbw 15, Unk1c304
    dbw 17, Unk1c318
    dbw 21, Unk1c322
    dbw 22, Unk1c32C
    dbw 24, Unk1c336
    dbw 31, Unk1c340
    dbw 33, Unk1c34A
    dbw 41, Unk1c354
    dbw 48, Unk1c35E
    dbw 48, Unk1c368
    dbw 49, Unk1c372
    dbw 57, Unk1c386
    dbw 61, Unk1c390
    dbw 64, Unk1c39A
    dbw 66, Unk1c3A4
    dbw 67, Unk1c3AE
    dbw 70, Unk1c3B8
    dbw 71, Unk1c3C2
    dbw 74, Unk1c3CC
    dbw 79, Unk1c3D6
    dbw 78, Unk1c3E0
    db $FF

GreenGreensScreen1_Entities_XTrip:
    dbw 0, $0000
    dbw 5, $43eb
    dbw 10, $43f6
    db $FF

GreenGreensScreen2_Entities_XTrip:
    dbw 0, $0000
    dbw 10, $445b
    dbw 15, $440b
    dbw 18, $4401
    dbw 21, $4415
    dbw 25, $441f
    dbw 27, $4429
    dbw 31, $4433
    dbw 33, $443d
    dbw 36, $4447
    dbw 38, $4451
    dbw 42, $4470
    dbw 43, $447a
    dbw 42, $4484
    dbw 47, $4498
    dbw 48, $44a2
    dbw 50, $44ac
    dbw 56, $44b6
    dbw 58, $44c0
    dbw 59, $44ca
    dbw 63, $44de
    dbw 65, $44e8
    dbw 66, $44f2
    dbw 68, $44fc
    dbw 69, $4506
    dbw 70, $4510
    dbw 76, $451a
    db $FF

GreenGreensScreen3_Entities_XTrip:
    dbw 0, $0000
    dbw 1, $4556
    dbw 2, $4594
    dbw 3, $458a
    dbw 6, $4524
    dbw 6, $456c
    dbw 7, $4562
    dbw 9, $452e
    dbw 9, $454c
    dbw 10, $4538
    dbw 11, $4580
    dbw 11, $4542
    dbw 12, $454c
    db $FF

GreenGreensScreen4_Entities_XTrip:
    dbw 0, $0000
    dbw 7, $459e
    db $FF

GreenGreensScreen0_Entities_YTrip:
GreenGreensScreen1_Entities_YTrip:
GreenGreensScreen2_Entities_YTrip:
    dbw 0, $0000
    db $FF

GreenGreensScreen3_Entities_YTrip:
    dbw 0, $0000
    dbw 4, $452e
    dbw 4, $4524
    dbw 7, $4538
    dbw 14, $4556
    dbw 19, $4562
    dbw 19, $4542
    dbw 19, $454c
    dbw 23, $456c
    dbw 28, $4580
    dbw 32, $458a
    dbw 37, $4594
    db $FF

GreenGreensScreen4_Entities_YTrip:
    dbw 0, $0000
    dbw 22, $459e
    dbw 26, $45a8
    db $FF

    db $FF ; stray terminator... was all of this data entered by hand?

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

INCBIN "baserom.gb", $1c3ea, $1c5b2 - $1c3ea

CastleLololoScreen0_Entities_XTrip:
    dbw 0, $0000
    dbw 8, $45c0
    db $FF

CastleLololoScreen0_Entities_YTrip:
    dbw 0, $0000
    dbw 1, $45c0
    db $FF

INCBIN "baserom.gb", $1c5c0, $1c5ca - $1c5c0

CastleLololoScreen3_Entities_XTrip:
    dbw 0, $0000
    dbw 10, $4603
    dbw 11, $45e4
    dbw 11, $45f8
    dbw 20, $460d
    dbw 21, $45ee
    dbw 22, $4617
    db $FF

CastleLololoScreen3_Entities_YTrip:
    dbw 0, $0000
    db $FF

INCBIN "baserom.gb", $1c5e4, $1c621 - $1c5e4

CastleLololoScreen1_Entities_XTrip:
    dbw 0, $0000
    db $FF

CastleLololoScreen1_Entities_YTrip:
    dbw 0, $0000
    dbw 1, $464c
    dbw 1, $4656
    dbw 7, $4660
    dbw 11, $466a
    dbw 11, $4641
    dbw 14, $4674
    dbw 14, $467e
    dbw 14, $4688
    db $FF

INCBIN "baserom.gb", $1c641, $1c692 - $1c641

CastleLololoScreen2_Entities_XTrip:
    dbw 0, $0000
    dbw 0, $46a6
    dbw 2, $46c5
    dbw 7, $46ba
    dbw 9, $46b0
    db $FF

CastleLololoScreen2_Entities_YTrip:
    dbw 0, $0000
    db $FF

INCBIN "baserom.gb", $1c6a6, $1c6d0 - $1c6a6

CastleLololoScreen4_Entities_XTrip:
    dbw 0, $0000
    dbw 9, $4715
    db $FF

CastleLololoScreen4_Entities_YTrip:
    dbw 0, $0000
    dbw 1, $46ed
    dbw 6, $4701
    dbw 6, $471f
    dbw 9, $46f7
    dbw 10, $470b
    dbw 10, $4715
    db $FF

INCBIN "baserom.gb", $1c6ed, $1c729 - $1c6ed

CastleLololoScreen5_Entities_XTrip:
    dbw 0, $0000
    dbw 2, $4772
    dbw 5, $47a4
    dbw 8, $4767
    dbw 9, $4790
    dbw 9, $47ae
    dbw 11, $47b8
    dbw 13, $477c
    dbw 14, $479a
    dbw 15, $4786
    db $FF

CastleLololoScreen5_Entities_YTrip:
    dbw 0, $0000
    dbw 1, $4790
    dbw 1, $479a
    dbw 2, $47b8
    dbw 3, $47ae
    dbw 5, $4772
    dbw 6, $4786
    dbw 7, $4767
    dbw 9, $477c
    dbw 7, $47a4
    db $FF

INCBIN "baserom.gb", $1c767, $1c7c2 - $1c767

CastleLololoScreen6_Entities_XTrip:
    dbw 0, $0000
    db $FF

CastleLololoScreen6_Entities_YTrip:
    dbw 0, $0000
    dbw 5, $47dc
    dbw 6, $47f0
    dbw 7, $47fa
    dbw 8, $4804
    dbw 11, $480e
    dbw 18, $47e6
    db $FF

INCBIN "baserom.gb", $1c7dc, $1c819 - $1c7dc

CastleLololoScreen7_Entities_XTrip:
    dbw 0, $0000
    dbw 7, $4844
    dbw 10, $486c
    dbw 11, $484e
    dbw 15, $4876
    dbw 15, $4858
    dbw 17, $4862
    dbw 20, $4880
    dbw 25, $4839
    db $FF

CastleLololoScreen7_Entities_YTrip:
    dbw 0, $0000
    db $FF

INCBIN "baserom.gb", $1c839, $1c88a - $1c839

CastleLololoScreen11_Entities_XTrip:
    dbw 0, $0000
    dbw 6, $48b8
    dbw 8, $48c2
    dbw 10, $48cc
    dbw 11, $48a4
    dbw 15, $48d6
    dbw 15, $48ae
    db $FF

CastleLololoScreen11_Entities_YTrip:
    dbw 0, $0000
    db $FF

INCBIN "baserom.gb", $1c8a4, $1c8e0 - $1c8a4

CastleLololoScreen9_Entities_XTrip:
    dbw 0, $0000
    dbw 11, $48ff
    dbw 11, $48f4
    db $FF

CastleLololoScreen9_Entities_YTrip:
    dbw 0, $0000
    dbw 3, $48ff
    dbw 9, $48f4
    db $FF

INCBIN "baserom.gb", $1c8f4, $1c909 - $1c8f4

CastleLololoScreen10_Entities_XTrip:
    dbw 0, $0000
    dbw 1, $4931
    dbw 1, $491d
    dbw 7, $493c
    dbw 8, $4927
    db $FF

CastleLololoScreen10_Entities_YTrip:
    dbw 0, $0000
    db $FF

INCBIN "baserom.gb", $1c91d, $1c947 - $1c91d

CastleLololoScreen12_Entities_XTrip:
    dbw 0, $0000
    dbw 0, $4979
    dbw 3, $49b6
    dbw 6, $49a2
    dbw 8, $49ac
    dbw 10, $4984
    dbw 11, $498e
    dbw 12, $4998
    db $FF

CastleLololoScreen12_Entities_YTrip:
    dbw 0, $0000
    dbw 3, $49a2
    dbw 4, $498e
    dbw 5, $49b6
    dbw 7, $4998
    dbw 8, $49ac
    dbw 10, $4979
    dbw 14, $4984
    db $FF

INCBIN "baserom.gb", $1c979, $1c9c0 - $1c979

CastleLololoScreen13_Entities_XTrip:
    dbw 0, $0000
    dbw 1, $49da
    dbw 6, $49ee
    dbw 7, $49f8
    dbw 10, $4a02
    dbw 12, $4a0c
    dbw 13, $49e4
    db $FF

CastleLololoScreen13_Entities_YTrip:
    dbw 0, $0000
    db $FF

INCBIN "baserom.gb", $1c9da, $1ca16 - $1c9da

CastleLololoScreen15_Entities_XTrip:
    dbw 0, $0000
    dbw 1, $4a24
    dbw 5, $4a2e
    db $FF

CastleLololoScreen15_Entities_YTrip:
    dbw 0, $0000
    db $FF

INCBIN "baserom.gb", $1ca24, $1ca39 - $1ca24

FloatIslandsScreen0_Entities_XTrip:
    dbw 0, $0000
    dbw 16, $4bcf
    dbw 18, $4bd9
    dbw 19, $4be3
    dbw 20, $4bed
    dbw 22, $4bf7
    dbw 25, $4c01
    dbw 27, $4c0b
    dbw 32, $4c15
    dbw 32, $4c1f
    dbw 34, $4c29
    dbw 37, $4c33
    dbw 45, $4c3d
    dbw 46, $4c47
    dbw 54, $4c51
    dbw 56, $4c5b
    dbw 60, $4c65
    dbw 61, $4c6f
    dbw 67, $4c79
    dbw 69, $4c83
    dbw 80, $4c8d
    dbw 80, $4c97
    dbw 80, $4ca1
    dbw 83, $4cab
    dbw 87, $4cb5
    dbw 90, $4cbf
    dbw 90, $4cc9
    dbw 92, $4cd4
    dbw 97, $4cde
    dbw 97, $4ce8
    dbw 103, $4cf2
    dbw 104, $4cfc
    dbw 106, $4d06
    dbw 107, $4d10
    dbw 111, $4d1a
    dbw 111, $4d24
    dbw 111, $4d2e
    db $FF

FloatIslandsScreen0_Entities_YTrip:
    dbw 0, $0000
    db $FF

FloatIslandsScreen1_Entities_XTrip:
    dbw 0, $0000
    dbw 1, $4d38
    dbw 2, $4d43
    dbw 5, $4d4d
    dbw 5, $4d57
    dbw 10, $4d61
    dbw 15, $4d6b
    dbw 16, $4d75
    dbw 21, $4d9d
    dbw 23, $4d7f
    dbw 24, $4da7
    dbw 26, $4d89
    dbw 30, $4d93
    dbw 35, $4db1
    dbw 40, $4dbb
    dbw 41, $4dc5
    dbw 43, $4dcf
    dbw 46, $4dd9
    db $FF

FloatIslandsScreen1_Entities_YTrip:
    dbw 0, $0000
    dbw 1, $4dbb
    dbw 2, $4dd9
    dbw 2, $4d6b
    dbw 2, $4d93
    dbw 3, $4d89
    dbw 3, $4d7f
    dbw 5, $4dc5
    dbw 5, $4d61
    dbw 8, $4db1
    dbw 9, $4d43
    dbw 9, $4d57
    dbw 9, $4dcf
    dbw 12, $4d75
    dbw 13, $4da7
    dbw 13, $4d38
    dbw 14, $4d9d
    dbw 14, $4d4d
    db $FF

FloatIslandsScreen2_Entities_XTrip:
    dbw 0, $0000
    dbw 1, $4de4
    dbw 2, $4dee
    dbw 6, $4df8
    dbw 5, $4e16
    dbw 7, $4e02
    dbw 15, $4e0c
    db $FF

FloatIslandsScreen2_Entities_YTrip:
    dbw 0, $0000
    dbw 1, $4e02
    dbw 2, $4de4
    dbw 3, $4dee
    dbw 3, $4df8
    dbw 7, $4e0c
    dbw 22, $4e16
    db $FF

FloatIslandsScreen3_Entities_XTrip:
    dbw 0, $0000
    dbw 10, $4e21
    dbw 14, $4e2b
    dbw 15, $4e35
    dbw 18, $4e40
    dbw 20, $4e4a
    dbw 28, $4e54
    dbw 29, $4e5e
    dbw 30, $4e68
    dbw 38, $4e72
    dbw 38, $4e7c
    dbw 39, $4e86
    dbw 44, $4e90
    dbw 46, $4e9a
    dbw 49, $4ea4
    dbw 49, $4eae
    dbw 51, $4eb8
    dbw 54, $4ec2
    dbw 60, $4ecc
    dbw 68, $4ed6
    db $FF

FloatIslandsScreen3_Entities_YTrip:
    dbw 0, $0000
    db $FF

FloatIslandsScreen4_Entities_XTrip:
    dbw 0, $0000
    dbw 1, $4ee0
    dbw 2, $4eeb
    db $FF

FloatIslandsScreen4_Entities_YTrip:
    dbw 0, $0000
    dbw 4, $4ee0
    dbw 4, $4eeb
    db $FF

FloatIslandsScreen5_Entities_XTrip:
    dbw 0, $0000
    dbw 6, $4ef6
    db $FF

FloatIslandsScreen5_Entities_YTrip:
    dbw 0, $0000
    dbw 2, $4ef6
    dbw 21, $4f00
    db $FF

FloatIslandsScreen6_Entities_XTrip:
    dbw 0, $0000
    dbw 5, $4f0b
    db $FF

FloatIslandsScreen6_Entities_YTrip:
    dbw 0, $0000
    db $FF

FloatIslandsScreen7_Entities_XTrip:
    dbw 0, $0000
    dbw 10, $4f29
    dbw 13, $4f15
    dbw 14, $4f1f
    dbw 24, $4f33
    dbw 38, $4f3e
    db $FF

FloatIslandsScreen7_Entities_YTrip:
    dbw 0, $0000
    db $FF

INCBIN "baserom.gb", $1cbcf, $1cf48 - $1cbcf

BubblyCloudsScreen0_Entities_XTrip:
    dbw 0, $0000
    dbw 11, $5033
    dbw 14, $50c9
    dbw 19, $5001
    dbw 23, $4ff7
    dbw 27, $503d
    dbw 27, $5051
    dbw 35, $5047
    dbw 36, $5083
    dbw 37, $500b
    dbw 44, $4fc5
    dbw 45, $4fcf
    dbw 47, $4fd9
    dbw 48, $4fe3
    dbw 50, $4fed
    dbw 54, $4fa7
    dbw 60, $4fb1
    dbw 60, $4fbb
    dbw 65, $50a1
    dbw 71, $5097
    dbw 75, $508d
    dbw 79, $50b5
    dbw 83, $50bf
    dbw 83, $505b
    dbw 85, $50ab
    dbw 95, $5015
    dbw 98, $501f
    dbw 95, $5065
    dbw 96, $506f
    dbw 96, $5079
    db $FF

BubblyCloudsScreen0_Entities_YTrip:
    dbw 0, $0000
    db $FF

INCBIN "baserom.gb", $1cfa7, $1d0d3 - $1cfa7

BubblyCloudsScreen1_Entities_XTrip:
    dbw 0, $0000
    dbw 9, $5193
    dbw 11, $51bb
    dbw 16, $519d
    dbw 20, $516b
    dbw 25, $5175
    dbw 32, $51a7
    dbw 42, $5125
    dbw 43, $5139
    dbw 44, $512f
    dbw 44, $5143
    dbw 44, $514d
    dbw 52, $5111
    dbw 54, $511b
    dbw 55, $517f
    dbw 57, $5189
    dbw 60, $5157
    dbw 62, $5161
    dbw 66, $51b1
    db $FF

BubblyCloudsScreen1_Entities_YTrip:
    dbw 0, $0000
    db $FF

INCBIN "baserom.gb", $1d111, $1d1c5 - $1d111

BubblyCloudsScreen2_Entities_XTrip:
    dbw 0, $0000
    db $FF

BubblyCloudsScreen2_Entities_YTrip:
    dbw 0, $0000
    dbw 4, $51f1
    dbw 6, $5237
    dbw 7, $525f
    dbw 8, $5255
    dbw 11, $520f
    dbw 14, $5219
    dbw 18, $5223
    dbw 18, $522d
    dbw 20, $5205
    dbw 21, $51fb
    dbw 25, $524b
    dbw 29, $5241
    db $FF

INCBIN "baserom.gb", $1d1f1, $1d269 - $1d1f1

BubblyCloudsScreen3_Entities_XTrip:
    dbw 0, $0000
    dbw 3, $5333
    dbw 15, $5349
    dbw 18, $5315
    dbw 23, $531f
    dbw 28, $533e
    dbw 28, $5329
    dbw 38, $52c5
    dbw 40, $5354
    dbw 41, $52cf
    dbw 44, $52f7
    dbw 44, $5301
    dbw 44, $530b
    dbw 49, $52e3
    dbw 49, $52d9
    dbw 49, $52ed
    db $FF

BubblyCloudsScreen3_Entities_YTrip:
    dbw 0, $0000
    dbw 0, $52c5
    dbw 1, $531f
    dbw 3, $52d9
    dbw 3, $533e
    dbw 5, $52e3
    dbw 4, $5315
    dbw 5, $5349
    dbw 7, $52ed
    dbw 7, $5329
    dbw 8, $5354
    dbw 9, $5333
    dbw 10, $52cf
    dbw 10, $531f
    db $FF

INCBIN "baserom.gb", $1d2c5, $1d35f - $1d2c5

BubblyCloudsScreen5_Entities_XTrip:
    dbw 0, $0000
    dbw 1, $53f3
    dbw 4, $53bf
    dbw 25, $53e9
    dbw 28, $53df
    dbw 28, $53d4
    dbw 29, $53b4
    dbw 31, $53a9
    dbw 36, $5408
    dbw 38, $5412
    dbw 42, $53fe
    dbw 48, $53ca
    db $FF

BubblyCloudsScreen5_Entities_YTrip:
    dbw 0, $0000
    dbw 0, $53ca
    dbw 4, $5412
    dbw 4, $53bf
    dbw 4, $53d4
    dbw 5, $53df
    dbw 5, $53e9
    dbw 6, $53fe
    dbw 6, $5408
    dbw 8, $53b4
    dbw 8, $53f3
    dbw 10, $53a9
    db $FF

INCBIN "baserom.gb", $1d3a9, $1d426 - $1d3a9

BubblyCloudsScreen6_Entities_XTrip:
    dbw 0, $0000
    dbw 10, $548f
    dbw 16, $549a
    dbw 19, $5449
    dbw 29, $5453
    dbw 39, $545d
    dbw 49, $5467
    dbw 59, $5471
    dbw 69, $547b
    dbw 79, $5485
    db $FF

BubblyCloudsScreen6_Entities_YTrip:
    dbw 0, $0000
    db $FF

INCBIN "baserom.gb", $1d449, $1d4a5 - $1d449

BubblyCloudsScreen7_Entities_XTrip:
    dbw 0, $0000
    dbw 4, $5505
    dbw 4, $54fb
    dbw 6, $550f
    dbw 6, $5523
    dbw 9, $5519
    dbw 10, $552d
    dbw 10, $5537
    db $FF

BubblyCloudsScreen7_Entities_YTrip:
    dbw 0, $0000
    dbw 2, $5519
    dbw 2, $54fb
    dbw 5, $5523
    dbw 14, $54f1
    dbw 15, $5505
    dbw 16, $5537
    dbw 17, $550f
    dbw 24, $54dd
    dbw 29, $552d
    db $FF

INCBIN "baserom.gb", $1d4dd, $1d541 - $1d4dd

BubblyCloudsScreen8_Entities_XTrip:
    dbw 0, $0000
    db $FF

BubblyCloudsScreen8_Entities_YTrip:
    dbw 0, $0000
    dbw 32, $5558
    dbw 55, $5563
    dbw 58, $5579
    dbw 81, $556e
    dbw 85, $5584
    db $FF

INCBIN "baserom.gb", $1d558, $1d8f9 - $1d558

BubblyCloudsScreen4_Entities_XTrip:
    dbw 0, $0000
    dbw 8, $5922
    db $FF

BubblyCloudsScreen4_Entities_YTrip:
    dbw 0, $0000
    dbw 17, $5922
    dbw 26, $590a
    db $FF

INCBIN "baserom.gb", $1d90a, $1d914 - $1d90a

BubblyCloudsScreen9_Entities_XTrip:
    dbw 0, $0000
    dbw 10, $592c
    db $FF

BubblyCloudsScreen9_Entities_YTrip:
    dbw 0, $0000
    dbw 4, $592c
    db $FF

INCBIN "baserom.gb", $1d922, $1d936 - $1d922

CastleLololoScreen8_Entities_XTrip:
    dbw 0, $0000
    dbw 1, $5958
    db $FF

CastleLololoScreen8_Entities_YTrip:
    dbw 0, $0000
    dbw 1, $5958
    db $FF

CastleLololoScreen14_Entities_XTrip:
    dbw 0, $0000
    dbw 1, $5962
    dbw 9, $596c
    db $FF

CastleLololoScreen14_Entities_YTrip:
    dbw 0, $0000
    dbw 1, $5962
    dbw 9, $596c
    db $FF

INCBIN "baserom.gb", $1d958, $1d976 - $1d958

MtDededeScreen0_Entities_XTrip:
    dbw 0, $0000
    db $FF

MtDededeScreen1_Entities_XTrip:
    dbw 0, $0000
    dbw 8, $5a6e
    dbw 15, $5a5a
    dbw 20, $5a64
    dbw 29, $5a50
    dbw 32, $5a46
    dbw 35, $5a3b
    dbw 38, $5a30
    db $FF

MtDededeScreen2_Entities_XTrip:
    dbw 0, $0000
    dbw 3, $5aac
    dbw 7, $5a8e
    dbw 10, $5ac0
    dbw 16, $5a98
    dbw 18, $5ab6
    dbw 21, $5aca
    dbw 24, $5aa2
    dbw 26, $5a78
    dbw 27, $5a83
    db $FF

MtDededeScreen2_Entities_YTrip:
    dbw 0, $0000
    dbw 1, $5aac
    dbw 2, $5ac0
    dbw 2, $5a83
    dbw 3, $5ab6
    dbw 5, $5a78
    dbw 7, $5a98
    dbw 9, $5aca
    dbw 9, $5a8e
    dbw 10, $5aa2
    db $FF

MtDededeScreen3_Entities_XTrip:
    dbw 0, $0000
    dbw 1, $5ad4
    dbw 3, $5adf
    dbw 5, $5b08
    dbw 7, $5afe
    dbw 11, $5b1c
    dbw 18, $5af4
    dbw 19, $5aea
    dbw 19, $5b12
    db $FF

MtDededeScreen3_Entities_YTrip:
    dbw 0, $0000
    dbw 3, $5b12
    dbw 12, $5adf
    dbw 12, $5aea
    dbw 12, $5af4
    db $FF

MtDededeScreen4_Entities_YTrip:
    dbw 0, $0000
    dbw 0, $5b50
    dbw 0, $5b5a
    dbw 5, $5b64
    dbw 12, $5b82
    dbw 21, $5b8c
    dbw 33, $5b6e
    dbw 41, $5b78
    dbw 46, $5b26
    dbw 47, $5b31
    dbw 47, $5b3c
    dbw 47, $5b46
    db $FF

MtDededeScreen4_Entities_XTrip:
MtDededeScreen0_Entities_YTrip:
MtDededeScreen1_Entities_YTrip:
MtDededeScreen5_Entities_YTrip:
    dbw 0, $0000
    db $FF

MtDededeScreen5_Entities_XTrip:
    dbw 0, $0000
    dbw 11, $5b96
    db $FF

INCBIN "baserom.gb", $1da2d, $1dba0 - $1da2d

; free space padding
INCBIN "baserom.gb", $1dba0, $20000 - $1dba0
