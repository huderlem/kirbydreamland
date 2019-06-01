SECTION "ROM Bank $00f", ROMX[$4000], BANK[$f]

StageEntities_ExtraGame:
    dw GreenGreensEntities_ExtraGame
    dw CastleLololoEntities_ExtraGame
    dw FloatIslandsEntities_ExtraGame
    dw BubblyCloudsEntities_ExtraGame
    dw MtDededeEntities_ExtraGame

GreenGreensEntities_ExtraGame:
    dw GreenGreensScreen0_Entities_ExtraGame, $42d0
    dw GreenGreensScreen1_Entities_ExtraGame, $42d0
    dw GreenGreensScreen2_Entities_ExtraGame, $42d0
    dw GreenGreensScreen3_Entities_ExtraGame, $42d4
    dw GreenGreensScreen4_Entities_ExtraGame, $42f9

CastleLololoEntities_ExtraGame:
    dw CastleLololoScreen0_Entities_ExtraGame, $45b9
    dw CastleLololoScreen1_Entities_ExtraGame, $4625
    dw CastleLololoScreen2_Entities_ExtraGame, $46a2
    dw CastleLololoScreen3_Entities_ExtraGame, $45e0
    dw CastleLololoScreen4_Entities_ExtraGame, $46d7
    dw CastleLololoScreen5_Entities_ExtraGame, $473b
    dw CastleLololoScreen6_Entities_ExtraGame, $47b9
    dw CastleLololoScreen7_Entities_ExtraGame, $4828
    dw CastleLololoScreen8_Entities_ExtraGame, $5d4f
    dw CastleLololoScreen9_Entities_ExtraGame, $48dd
    dw CastleLololoScreen10_Entities_ExtraGame, $490c
    dw CastleLololoScreen11_Entities_ExtraGame, $4893
    dw CastleLololoScreen12_Entities_ExtraGame, $4953
    dw CastleLololoScreen13_Entities_ExtraGame, $49c9
    dw CastleLololoScreen14_Entities_ExtraGame, $5d60
    dw CastleLololoScreen15_Entities_ExtraGame, $4a13

FloatIslandsEntities_ExtraGame:
    dw FloatIslandsScreen0_Entities_ExtraGame, $4a9c
    dw FloatIslandsScreen1_Entities_ExtraGame, $4ada
    dw FloatIslandsScreen2_Entities_ExtraGame, $4b14
    dw FloatIslandsScreen3_Entities_ExtraGame, $4b67
    dw FloatIslandsScreen4_Entities_ExtraGame, $4b75
    dw FloatIslandsScreen5_Entities_ExtraGame, $4b86
    dw FloatIslandsScreen6_Entities_ExtraGame, $4b97
    dw FloatIslandsScreen7_Entities_ExtraGame, $4bae

BubblyCloudsEntities_ExtraGame:
    dw BubblyCloudsScreen0_Entities_ExtraGame, $4f92
    dw BubblyCloudsScreen1_Entities_ExtraGame, $50fc
    dw BubblyCloudsScreen2_Entities_ExtraGame, $51b8
    dw BubblyCloudsScreen3_Entities_ExtraGame, $5289
    dw BubblyCloudsScreen4_Entities_ExtraGame, $5d12
    dw BubblyCloudsScreen5_Entities_ExtraGame, $5373
    dw BubblyCloudsScreen6_Entities_ExtraGame, $5434
    dw BubblyCloudsScreen7_Entities_ExtraGame, $54ad
    dw BubblyCloudsScreen8_Entities_ExtraGame, $5534
    dw BubblyCloudsScreen9_Entities_ExtraGame, $5d2d

MtDededeEntities_ExtraGame:
    dw MtDededeScreen0_Entities_ExtraGame, $5e34
    dw MtDededeScreen1_Entities_ExtraGame, $5e34
    dw MtDededeScreen2_Entities_ExtraGame, $5dc4
    dw MtDededeScreen3_Entities_ExtraGame, $5dff
    dw MtDededeScreen4_Entities_ExtraGame, $5e0f
    dw MtDededeScreen5_Entities_ExtraGame, $5e34
    dw GreenGreensScreen4_Entities_ExtraGame, $42f9
    dw FloatIslandsScreen7_Entities_ExtraGame, $4bae
    dw CastleLololoScreen14_Entities_ExtraGame, $5d60
    dw BubblyCloudsScreen9_Entities_ExtraGame, $5d2d

INCBIN "baserom.gb", $3c0ce, $3c202 - $3c0ce

GreenGreensScreen0_Entities_ExtraGame:
    dbw 0, $0000
    dbw 15, $4304
    dbw 17, $4318
    dbw 21, $4322
    dbw 22, $432c
    dbw 24, $4336
    dbw 31, $4340
    dbw 33, $434a
    dbw 41, $4354
    dbw 48, $435e
    dbw 48, $4368
    dbw 49, $4372
    dbw 57, $4386
    dbw 61, $4390
    dbw 64, $439a
    dbw 66, $43a4
    dbw 67, $43ae
    dbw 70, $43b8
    dbw 71, $43c2
    dbw 74, $43cc
    dbw 79, $43d6
    dbw 78, $43e0
    db $FF

GreenGreensScreen1_Entities_ExtraGame:
    dbw 0, $0000
    dbw 5, $43eb
    dbw 10, $43f6
    db $FF

GreenGreensScreen2_Entities_ExtraGame:
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

GreenGreensScreen3_Entities_ExtraGame:
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

GreenGreensScreen4_Entities_ExtraGame:
    dbw 0, $0000
    dbw 7, $459e
    db $FF

INCBIN "baserom.gb", $3c2d0, $3c5b2 - $3c2d0

CastleLololoScreen0_Entities_ExtraGame:
    dbw 0, $0000
    dbw 8, $45c0
    db $FF

INCBIN "baserom.gb", $3c5b9, $3c5ca - $3c5b9

CastleLololoScreen3_Entities_ExtraGame:
    dbw 0, $0000
    dbw 10, $4603
    dbw 11, $45e4
    dbw 11, $45f8
    dbw 20, $460d
    dbw 21, $45ee
    dbw 22, $4617
    db $FF

INCBIN "baserom.gb", $3c5e0, $3c621 - $3c5e0

CastleLololoScreen1_Entities_ExtraGame:
    dbw 0, $0000
    db $FF

INCBIN "baserom.gb", $3c625, $3c692 - $3c625

CastleLololoScreen2_Entities_ExtraGame:
    dbw 0, $0000
    dbw 0, $46a6
    dbw 2, $46c5
    dbw 7, $46ba
    dbw 9, $46b0
    db $FF

INCBIN "baserom.gb", $3c6a2, $3c6d0 - $3c6a2

CastleLololoScreen4_Entities_ExtraGame:
    dbw 0, $0000
    dbw 9, $4708
    db $FF

INCBIN "baserom.gb", $3c6d7, $3c71c - $3c6d7

CastleLololoScreen5_Entities_ExtraGame:
    dbw 0, $0000
    dbw 2, $4765
    dbw 5, $4797
    dbw 8, $475a
    dbw 9, $4783
    dbw 9, $47a1
    dbw 11, $47ab
    dbw 13, $476f
    dbw 14, $478d
    dbw 15, $4779
    db $FF

INCBIN "baserom.gb", $3c73b, $3c7b5 - $3c73b

CastleLololoScreen6_Entities_ExtraGame:
    dbw 0, $0000
    db $FF

INCBIN "baserom.gb", $3c7b9, $3c80c - $3c7b9

CastleLololoScreen7_Entities_ExtraGame:
    dbw 0, $0000
    dbw 7, $4837
    dbw 10, $485f
    dbw 11, $4841
    dbw 15, $4869
    dbw 15, $484b
    dbw 17, $4855
    dbw 20, $4873
    dbw 25, $482c
    db $FF

INCBIN "baserom.gb", $3c828, $3c87d - $3c828

CastleLololoScreen11_Entities_ExtraGame:
    dbw 0, $0000
    dbw 6, $48ab
    dbw 8, $48b5
    dbw 10, $48bf
    dbw 11, $4897
    dbw 15, $48c9
    dbw 15, $48a1
    db $FF

INCBIN "baserom.gb", $3c893, $3c8d3 - $3c893

CastleLololoScreen9_Entities_ExtraGame:
    dbw 0, $0000
    dbw 11, $48f2
    dbw 11, $48e7
    db $FF

INCBIN "baserom.gb", $3c8dd, $3c8fc - $3c8dd

CastleLololoScreen10_Entities_ExtraGame:
    dbw 0, $0000
    dbw 1, $4924
    dbw 1, $4910
    dbw 7, $492f
    dbw 8, $491a
    db $FF

INCBIN "baserom.gb", $3c90c, $3c93a - $3c90c

CastleLololoScreen12_Entities_ExtraGame:
    dbw 0, $0000
    dbw 0, $496c
    dbw 3, $49a9
    dbw 6, $4995
    dbw 8, $499f
    dbw 10, $4977
    dbw 11, $4981
    dbw 12, $498b
    db $FF

INCBIN "baserom.gb", $3c953, $3c9b3 - $3c953

CastleLololoScreen13_Entities_ExtraGame:
    dbw 0, $0000
    dbw 1, $49cd
    dbw 6, $49e1
    dbw 7, $49eb
    dbw 10, $49f5
    dbw 12, $49ff
    dbw 13, $49d7
    db $FF

INCBIN "baserom.gb", $3c9c9, $3ca09 - $3c9c9

CastleLololoScreen15_Entities_ExtraGame:
    dbw 0, $0000
    dbw 1, $4a17
    dbw 5, $4a21
    db $FF

INCBIN "baserom.gb", $3ca13, $3ca2c - $3ca13

FloatIslandsScreen0_Entities_ExtraGame:
    dbw 0, $0000
    dbw 16, $4bb2
    dbw 18, $4bbc
    dbw 19, $4bc6
    dbw 20, $4bd0
    dbw 22, $4bda
    dbw 25, $4be4
    dbw 27, $4bee
    dbw 32, $4bf8
    dbw 32, $4c02
    dbw 34, $4c0c
    dbw 37, $4c16
    dbw 45, $4c20
    dbw 46, $4c2a
    dbw 54, $4c34
    dbw 56, $4c3e
    dbw 60, $4c48
    dbw 61, $4c52
    dbw 67, $4c5c
    dbw 69, $4c66
    dbw 80, $4c70
    dbw 80, $4c7a
    dbw 80, $4c84
    dbw 83, $4c8e
    dbw 87, $4c98
    dbw 90, $4ca2
    dbw 90, $4cac
    dbw 92, $4cb7
    dbw 97, $4cc1
    dbw 97, $4ccb
    dbw 103, $4cd5
    dbw 104, $4cdf
    dbw 106, $4ce9
    dbw 107, $4cf3
    dbw 111, $4cfd
    dbw 111, $4d07
    dbw 111, $4d11
    db $FF

FloatIslandsScreen2_Entities_ExtraGame:
    dbw 0, $0000
    db $FF

FloatIslandsScreen1_Entities_ExtraGame:
    dbw 0, $0000
    dbw 1, $4d1b
    dbw 1, $4d26
    dbw 3, $4d3a
    dbw 5, $4d30
    dbw 10, $4d44
    dbw 15, $4d4e
    dbw 16, $4d58
    dbw 21, $4d80
    dbw 23, $4d62
    dbw 24, $4d8a
    dbw 26, $4d6c
    dbw 30, $4d76
    dbw 35, $4d94
    dbw 35, $4d9e
    dbw 40, $4da8
    dbw 41, $4db2
    dbw 43, $4dbc
    dbw 46, $4dc6
    db $FF

INCBIN "baserom.gb", $3cada, $3cb2a - $3cada

FloatIslandsScreen3_Entities_ExtraGame:
    dbw 0, $0000
    dbw 10, $4e10
    dbw 14, $4e1a
    dbw 15, $4e24
    dbw 18, $4e2f
    dbw 20, $4e39
    dbw 28, $4e43
    dbw 29, $4e4d
    dbw 30, $4e57
    dbw 38, $4e61
    dbw 38, $4e6b
    dbw 39, $4e75
    dbw 44, $4e7f
    dbw 46, $4e89
    dbw 49, $4e93
    dbw 49, $4e9d
    dbw 51, $4ea7
    dbw 54, $4eb1
    dbw 60, $4ebb
    dbw 68, $4ec5
    db $FF

INCBIN "baserom.gb", $3cb67, $3cb6b - $3cb67

FloatIslandsScreen4_Entities_ExtraGame:
    dbw 0, $0000
    dbw 1, $4ecf
    dbw 2, $4eda
    db $FF

INCBIN "baserom.gb", $3cb75, $3cb7f - $3cb75

FloatIslandsScreen5_Entities_ExtraGame:
    dbw 0, $0000
    dbw 6, $4ee5
    db $FF

INCBIN "baserom.gb", $3cb86, $3cb90 - $3cb86

FloatIslandsScreen6_Entities_ExtraGame:
    dbw 0, $0000
    dbw 5, $4efa
    db $FF

INCBIN "baserom.gb", $3cb97, $3cb9b - $3cb97

FloatIslandsScreen7_Entities_ExtraGame:
    dbw 0, $0000
    dbw 10, $4f18
    dbw 13, $4f04
    dbw 14, $4f0e
    dbw 24, $4f22
    dbw 38, $4f2d
    db $FF

INCBIN "baserom.gb", $3cbae, $3cf37 - $3cbae

BubblyCloudsScreen0_Entities_ExtraGame:
    dbw 0, $0000
    dbw 11, $5022
    dbw 14, $50b8
    dbw 19, $4ff0
    dbw 23, $4fe6
    dbw 27, $502c
    dbw 27, $5040
    dbw 35, $5036
    dbw 36, $5072
    dbw 37, $4ffa
    dbw 44, $4fb4
    dbw 45, $4fbe
    dbw 47, $4fc8
    dbw 48, $4fd2
    dbw 50, $4fdc
    dbw 54, $4f96
    dbw 60, $4fa0
    dbw 60, $4faa
    dbw 65, $5090
    dbw 71, $5086
    dbw 75, $507c
    dbw 79, $50a4
    dbw 83, $50ae
    dbw 83, $504a
    dbw 85, $509a
    dbw 95, $5004
    dbw 98, $500e
    dbw 95, $5054
    dbw 96, $505e
    dbw 96, $5068
    db $FF

INCBIN "baserom.gb", $3cf92, $3d0c2 - $3cf92

BubblyCloudsScreen1_Entities_ExtraGame:
    dbw 0, $0000
    dbw 9, $5182
    dbw 11, $51aa
    dbw 16, $518c
    dbw 20, $515a
    dbw 25, $5164
    dbw 32, $5196
    dbw 42, $5114
    dbw 43, $5128
    dbw 44, $511e
    dbw 44, $5132
    dbw 44, $513c
    dbw 52, $5100
    dbw 54, $510a
    dbw 55, $516e
    dbw 57, $5178
    dbw 60, $5146
    dbw 62, $5150
    dbw 66, $51a0
    db $FF

INCBIN "baserom.gb", $3d0fc, $3d1b4 - $3d0fc

BubblyCloudsScreen2_Entities_ExtraGame:
    dbw 0, $0000
    db $FF

INCBIN "baserom.gb", $3d1b8, $3d258 - $3d1b8

BubblyCloudsScreen3_Entities_ExtraGame:
    dbw 0, $0000
    dbw 3, $5322
    dbw 15, $5338
    dbw 18, $5304
    dbw 23, $530e
    dbw 28, $532d
    dbw 28, $5318
    dbw 38, $52b4
    dbw 40, $5343
    dbw 41, $52be
    dbw 44, $52e6
    dbw 44, $52f0
    dbw 44, $52fa
    dbw 49, $52d2
    dbw 49, $52c8
    dbw 49, $52dc
    db $FF

INCBIN "baserom.gb", $3d289, $3d34e - $3d289

BubblyCloudsScreen5_Entities_ExtraGame:
    dbw 0, $0000
    dbw 1, $53e2
    dbw 4, $53ae
    dbw 26, $53d8
    dbw 28, $53c3
    dbw 29, $53ce
    dbw 29, $53a3
    dbw 31, $5398
    dbw 36, $53f7
    dbw 38, $5401
    dbw 42, $53ed
    dbw 48, $53b9
    db $FF

INCBIN "baserom.gb", $3d373, $3d415 - $3d373

BubblyCloudsScreen6_Entities_ExtraGame:
    dbw 0, $0000
    dbw 10, $547e
    dbw 16, $5489
    dbw 19, $5438
    dbw 29, $5442
    dbw 39, $544c
    dbw 49, $5456
    dbw 59, $5460
    dbw 69, $546a
    dbw 79, $5474
    db $FF

INCBIN "baserom.gb", $3d434, $3d494 - $3d434

BubblyCloudsScreen7_Entities_ExtraGame:
    dbw 0, $0000
    dbw 4, $54f4
    dbw 4, $54ea
    dbw 6, $54fe
    dbw 6, $5512
    dbw 9, $5508
    dbw 10, $551c
    dbw 10, $5526
    db $FF

INCBIN "baserom.gb", $3d4ad, $3d530 - $3d4ad

BubblyCloudsScreen8_Entities_ExtraGame:
    dbw 0, $0000
    db $FF

INCBIN "baserom.gb", $3d534, $3dd0b - $3d534

BubblyCloudsScreen4_Entities_ExtraGame:
    dbw 0, $0000
    dbw 8, $5d34
    db $FF

INCBIN "baserom.gb", $3dd12, $3dd26 - $3dd12

BubblyCloudsScreen9_Entities_ExtraGame:
    dbw 0, $0000
    dbw 10, $5d3e
    db $FF

INCBIN "baserom.gb", $3dd2d, $3dd48 - $3dd2d

CastleLololoScreen8_Entities_ExtraGame:
    dbw 0, $0000
    dbw 1, $5d6a
    db $FF

INCBIN "baserom.gb", $3dd4f, $3dd56 - $3dd4f

CastleLololoScreen14_Entities_ExtraGame:
    dbw 0, $0000
    dbw 1, $5d74
    dbw 9, $5d7e
    db $FF

INCBIN "baserom.gb", $3dd60, $3dd88 - $3dd60

MtDededeScreen0_Entities_ExtraGame:
    dbw 0, $0000
    db $FF

MtDededeScreen1_Entities_ExtraGame:
    dbw 0, $0000
    dbw 8, $5e80
    dbw 15, $5e6c
    dbw 20, $5e76
    dbw 29, $5e62
    dbw 32, $5e58
    dbw 35, $5e4d
    dbw 38, $5e42
    db $FF

MtDededeScreen2_Entities_ExtraGame:
    dbw 0, $0000
    dbw 3, $5ebe
    dbw 7, $5ea0
    dbw 10, $5ed2
    dbw 16, $5eaa
    dbw 18, $5ec8
    dbw 21, $5edc
    dbw 24, $5eb4
    dbw 26, $5e8a
    dbw 27, $5e95
    db $FF

INCBIN "baserom.gb", $3ddc4, $3dde3 - $3ddc4

MtDededeScreen3_Entities_ExtraGame:
    dbw 0, $0000
    dbw 1, $5ee6
    dbw 3, $5ef1
    dbw 5, $5f1a
    dbw 7, $5f10
    dbw 11, $5f2e
    dbw 18, $5f06
    dbw 19, $5efc
    dbw 19, $5f24
    db $FF

INCBIN "baserom.gb", $3ddff, $3de34 - $3ddff

MtDededeScreen4_Entities_ExtraGame:
    dbw 0, $0000
    db $FF

MtDededeScreen5_Entities_ExtraGame:
    dbw 0, $0000
    dbw 11, $5fa8
    db $FF

INCBIN "baserom.gb", $3de3f, $3dfb2 - $3de3f

; free space padding
INCBIN "baserom.gb", $3dfb2, $40000 - $3dfb2
