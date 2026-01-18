.ifdef CONFIG_CBM_ALL
.segment "CODE"
CBM_ISCNTC:
        jsr     GETIN
        beq     @ret
        cmp     #$03
        bne     @ret
        jmp     STOP
@ret:
        rts
.endif
