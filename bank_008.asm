SECTION "ROM Bank $008", ROMX[$4000], BANK[$8]

INCBIN "baserom.gb", $20000, $20587 - $20000

Unk20587:
    anim_duration 16, $5e55
    anim_duration 16, $5e5d
    anim_goto Unk20587

INCBIN "baserom.gb", $20590, $22fa7 - $20590

; free space padding
INCBIN "baserom.gb", $22fa7, $24000 - $22fa7
