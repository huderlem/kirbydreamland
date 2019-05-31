SECTION "ROM Bank $004", ROMX[$4000], BANK[$4]

INCBIN "baserom.gb", $10000, $102c8 - $10000

Unk102c8:
    move_forever $85, $00

INCBIN "baserom.gb", $102cb, $103ff - $102cb

Unk103ff:
    move_duration 10, $85, $00
    move_duration 30, $86, $00
    move_duration 10, $85, $00
    move_duration 10, $75, $00
    move_duration 30, $76, $00
    move_duration 10, $75, $00
    move_goto Unk103ff

INCBIN "baserom.gb", $10414, $13636 - $10414

INCBIN "baserom.gb", $13636, $14000 - $13636
