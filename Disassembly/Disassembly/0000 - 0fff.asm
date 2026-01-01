0000  00             nop
0001  00             nop
0002  C3 38 00       jp $0038
0005  FF             rst 38h
0006  FF             rst 38h
0007  FF             rst 38h
0008  FF             rst 38h
0009  FF             rst 38h
000A  FF             rst 38h
000B  FF             rst 38h
000C  FF             rst 38h
000D  FF             rst 38h
000E  FF             rst 38h
000F  FF             rst 38h
0010  FF             rst 38h
0011  FF             rst 38h
0012  FF             rst 38h
0013  FF             rst 38h
0014  FF             rst 38h
0015  FF             rst 38h
0016  FF             rst 38h
0017  FF             rst 38h
0018  FF             rst 38h
0019  FF             rst 38h
001A  FF             rst 38h
001B  FF             rst 38h
001C  FF             rst 38h
001D  FF             rst 38h
001E  FF             rst 38h
001F  FF             rst 38h
                   $0020:
0020  E9             jp hl
0021  FF             rst 38h
0022  FF             rst 38h
0023  FF             rst 38h
0024  FF             rst 38h
0025  FF             rst 38h
0026  FF             rst 38h
0027  FF             rst 38h
                   $0028:
0028  22             ld (hl+), a
0029  0D             dec c
002A  20 FC          jr nz, $0028
002C  C9             ret
002D  FF             rst 38h
002E  FF             rst 38h
002F  FF             rst 38h
                   $0030:
0030  1A             ld a, (de)
0031  22             ld (hl+), a
0032  13             inc de
0033  0D             dec c
0034  20 FA          jr nz, $0030
0036  C9             ret
0037  FF             rst 38h
0038  F3             di
0039  C3 00 02       jp $0200
003C  FF             rst 38h
003D  FF             rst 38h
003E  FF             rst 38h
003F  FF             rst 38h
                   $0040:
0040  F5             push af
0041  E5             push hl
0042  21 A5 C0       ld hl, $c0a5
0045  C3 80 00       jp $0080
                   $0048:
0048  C3 6B 3C       jp $3c6b
004B  FF             rst 38h
004C  FF             rst 38h
004D  FF             rst 38h
004E  FF             rst 38h
004F  FF             rst 38h
                   $0050:
0050  FB             ei
0051  C3 44 1A       jp $1a44
0054  FF             rst 38h
0055  FF             rst 38h
0056  FF             rst 38h
0057  FF             rst 38h
0058  FB             ei
0059  C3 EA 19       jp $19ea
005C  FF             rst 38h
005D  FF             rst 38h
005E  FF             rst 38h
005F  FF             rst 38h
0060  FF             rst 38h
0061  FF             rst 38h
0062  FF             rst 38h
0063  FF             rst 38h
0064  FF             rst 38h
0065  FF             rst 38h
0066  FF             rst 38h
0067  FF             rst 38h
0068  FF             rst 38h
0069  FF             rst 38h
006A  FF             rst 38h
006B  FF             rst 38h
006C  FF             rst 38h
006D  FF             rst 38h
006E  FF             rst 38h
006F  FF             rst 38h
0070  FF             rst 38h
0071  FF             rst 38h
0072  FF             rst 38h
0073  FF             rst 38h
0074  FF             rst 38h
0075  FF             rst 38h
0076  FF             rst 38h
0077  FF             rst 38h
0078  FF             rst 38h
0079  FF             rst 38h
007A  FF             rst 38h
007B  FF             rst 38h
007C  FF             rst 38h
007D  FF             rst 38h
007E  FF             rst 38h
007F  FF             rst 38h
                   $0080:
0080  C5             push bc
0081  D5             push de
                   $0082:
0082  2A             ld a, (hl+)
0083  B6             or (hl)
0084  28 0B          jr z, $0091
0086  E5             push hl
0087  3A             ld a, (hl-)
0088  6E             ld l, (hl)
0089  67             ld h, a
008A  E7             rst 20h
008B  E1             pop hl
008C  23             inc hl
008D  18 F3          jr $0082
008F               --------data--------
008F  00 00        .db $E8 $04
0090               ----------------
                   $0091:
0091  D1             pop de
0092  C1             pop bc
0093  E1             pop hl
0094  F0 41          ldh a, (STAT_FF41)
0096  E6 02          and $02
0098  20 FA          jr nz, $0094
009A  F1             pop af
009B  D9             reti
                   ----------------
                   $009c:
009C  21 A3 C0       ld hl, $c0a3
009F  34             inc (hl)
00A0  20 02          jr nz, $00a4
00A2  23             inc hl
00A3  34             inc (hl)
                   $00a4:
00A4  3E 01          ld a, $01
00A6  E0 91          ldh ($ff91), a
00A8  C3 80 FF       jp $ff80
00AB  F0 41          ldh a, (STAT_FF41)
00AD  E6 02          and $02
00AF  20 FA          jr nz, $00ab
00B1  3E C0          ld a, $c0
00B3  C3 84 FF       jp $ff84
                   --------sub start--------
                   $00b6:
00B6  AF             xor a
00B7  01 22 1A       ld bc, $1a22
00BA  21 A0 C0       ld hl, $c0a0
00BD  CD B9 10       call $10b9
00C0  3E C0          ld a, $c0
00C2  E0 92          ldh ($ff92), a
00C4  67             ld h, a
00C5  AF             xor a
00C6  6F             ld l, a
00C7  0E A0          ld c, $a0
00C9  C3 28 00       jp $0028
00CC  F3             di
00CD  E0 FF          ldh (IE_FFFF), a
00CF  AF             xor a
00D0  FB             ei
00D1  E0 0F          ldh (IF_FF0F), a
00D3  C9             ret
                   ----------------
00D4  F0 92          ldh a, ($ff92)
00D6  B7             or a
00D7  C8             ret z
                   ----------------
00D8  E0 46          ldh (DMA_FF46), a
00DA  3E 28          ld a, $28
00DC  3D             dec a
00DD  20 FD          jr nz, $00dc
00DF  C9             ret
                   ----------------
00E0  FF             rst 38h
00E1  FF             rst 38h
00E2  FF             rst 38h
00E3  FF             rst 38h
00E4  FF             rst 38h
00E5  FF             rst 38h
00E6  FF             rst 38h
00E7  FF             rst 38h
00E8  FF             rst 38h
00E9  FF             rst 38h
00EA  FF             rst 38h
00EB  FF             rst 38h
00EC  FF             rst 38h
00ED  FF             rst 38h
00EE  FF             rst 38h
00EF  FF             rst 38h
00F0  C9             ret
                   ----------------
00F1  FF             rst 38h
00F2  FF             rst 38h
00F3  FF             rst 38h
00F4  FF             rst 38h
00F5  FF             rst 38h
00F6  FF             rst 38h
00F7  FF             rst 38h
00F8  FF             rst 38h
00F9  FF             rst 38h
00FA  FF             rst 38h
00FB  FF             rst 38h
00FC  FF             rst 38h
00FD  FF             rst 38h
00FE  FF             rst 38h
00FF  FF             rst 38h
0100  18 55          jr $0157
0102  FF             rst 38h
0103  FF             rst 38h
0104               --------data--------
0104  00 00 00 00 00 00 00 00 .db $CE $ED $66 $66 $CC $0D $00 $0B
010C  00 00 00 00 00 00 00 00 .db $03 $73 $00 $83 $00 $0C $00 $0D
0114  00 00 00 00 00 00 00 00 .db $00 $08 $11 $1F $88 $89 $00 $0E
011C  00 00 00 00 00 00 00 00 .db $DC $CC $6E $E6 $DD $DD $D9 $99
0124  00 00 00 00 00 00 00 00 .db $BB $BB $67 $63 $6E $0E $EC $CC
012C  00 00 00 00 00 00 00 00 .db $DD $DC $99 $9F $BB $B9 $33 $3E
0134  00 00 00 00 00 00 00 00 .db $42 $41 $43 $4B $4F $4E $4D $4F
013C  00 00 00 00 00 00 00 00 .db $55 $4E $54 $41 $49 $4E $00 $C0
0144  00 00 00 00 00 00 00 00 .db $30 $30 $00 $1E $06 $03 $00 $33
014C  00 00 00 00  .db $01 $53 $F6 $84
014F               ----------------
0150  FA A1 C0       ld a, ($c0a1)
0153  47             ld b, a
0154  FA A0 C0       ld a, ($c0a0)
                   $0157:
0157  F3             di
0158  57             ld d, a
0159  58             ld e, b
015A  31 00 DF       ld sp, $df00
015D  D5             push de
015E  CD DF 10       call $10df
0161  CD B6 00       call $00b6
0164  D1             pop de
0165  7A             ld a, d
0166  EA A0 C0       ld ($c0a0), a
0169  FE 11          cp $11
016B  20 07          jr nz, $0174
016D  AF             xor a
016E  CB 3B          srl e
0170  17             rla
0171  EA A1 C0       ld ($c0a1), a
0174  AF             xor a
0175  E0 42          ldh (SCY_FF42), a
0177  E0 43          ldh (SCX_FF43), a
0179  E0 41          ldh (STAT_FF41), a
017B  E0 4A          ldh (WY_FF4A), a
017D  3E 07          ld a, $07
017F  E0 4B          ldh (WX_FF4B), a
0181  11 D4 00       ld de, $00d4
0184  21 80 FF       ld hl, $ff80
0187  0E 0C          ld c, $0c
0189  F7             rst 30h
018A  CD 80 FF       call $ff80
018D  11 9C 00       ld de, $009c
0190  CD ED 01       call $01ed
0193  3E E4          ld a, $e4
0195  E0 47          ldh (BGP_FF47), a
0197  E0 48          ldh (OBP0_FF48), a
0199  3E 1B          ld a, $1b
019B  E0 49          ldh (OBP1_FF49), a
019D  3E C0          ld a, $c0
019F  E0 40          ldh (LCDC_FF40), a
01A1  3E 01          ld a, $01
01A3  E0 FF          ldh (IE_FFFF), a
01A5  AF             xor a
01A6  E0 0F          ldh (IF_FF0F), a
01A8  21 A3 C0       ld hl, $c0a3
01AB  22             ld (hl+), a
01AC  77             ld (hl), a
01AD  E0 26          ldh (NR52_FF26), a
01AF  3C             inc a
01B0  E0 90          ldh ($ff90), a
01B2  CD 24 3E       call $3e24
01B5  FB             ei
01B6  CD 79 05       call $0579
01B9  76             halt
01BA  00             nop
01BB  18 FC          jr $01b9
                   --------sub start--------
                   $01bd:
01BD  F0 40          ldh a, (LCDC_FF40)
01BF  E6 80          and $80
01C1  C8             ret z
                   ----------------
01C2  AF             xor a
01C3  E0 91          ldh ($ff91), a
                   $01c5:
01C5  76             halt
01C6  00             nop
01C7  F0 91          ldh a, ($ff91)
01C9  B7             or a
01CA  28 F9          jr z, $01c5
01CC  C9             ret
                   ----------------
01CD  21 A5 C0       ld hl, $c0a5
                   $01d0:
01D0  2A             ld a, (hl+)
01D1  4F             ld c, a
01D2  2A             ld a, (hl+)
01D3  47             ld b, a
01D4  B1             or c
01D5  C8             ret z
                   ----------------
01D6  7B             ld a, e
01D7  B9             cp c
01D8  20 F6          jr nz, $01d0
01DA  7A             ld a, d
01DB  B8             cp b
01DC  20 F2          jr nz, $01d0
01DE  44             ld b, h
01DF  4D             ld c, l
01E0  0B             dec bc
01E1  0B             dec bc
01E2  2A             ld a, (hl+)
01E3  02             ld (bc), a
01E4  03             inc bc
01E5  57             ld d, a
01E6  2A             ld a, (hl+)
01E7  02             ld (bc), a
01E8  03             inc bc
01E9  B2             or d
01EA  20 F6          jr nz, $01e2
01EC  C9             ret
                   ----------------
                   --------sub start--------
                   $01ed:
01ED  21 A5 C0       ld hl, $c0a5
                   $01f0:
01F0  2A             ld a, (hl+)
01F1  B6             or (hl)
01F2  28 03          jr z, $01f7
01F4  23             inc hl
01F5  18 F9          jr $01f0
                   $01f7:
01F7  7A             ld a, d
01F8  32             ld (hl-), a
01F9  73             ld (hl), e
01FA  C9             ret
                   ----------------
01FB  FF             rst 38h
01FC  FF             rst 38h
01FD  FF             rst 38h
01FE  FF             rst 38h
01FF  FF             rst 38h
0200  E5             push hl
0201  21 00 20       ld hl, $2000
0204  36 32          ld (hl), $32
0206  E1             pop hl
0207  C3 0B 40       jp $400b
020A  3E 01          ld a, $01
020C  EA 18 C6       ld ($c618), a
020F  3E 01          ld a, $01
0211  E0 02          ldh (SC_FF02), a
0213  F8 02          ld hl, sp+$02
0215  7E             ld a, (hl)
0216  E0 01          ldh (SB_FF01), a
0218  3E 81          ld a, $81
021A  E0 02          ldh (SC_FF02), a
021C  C9             ret
                   ----------------
021D  3E 02          ld a, $02
021F  EA 18 C6       ld ($c618), a
0222  AF             xor a
0223  E0 02          ldh (SC_FF02), a
0225  3E 55          ld a, $55
0227  E0 01          ldh (SB_FF01), a
0229  3E 80          ld a, $80
022B  E0 02          ldh (SC_FF02), a
022D  C9             ret
                   ----------------
                   --------sub start--------
                   $022e:
022E  F0 40          ldh a, (LCDC_FF40)
0230  CB 77          bit 6, a
0232  28 08          jr z, $023c
0234  18 0A          jr $0240
0236  F0 40          ldh a, (LCDC_FF40)
0238  CB 5F          bit 3, a
023A  20 04          jr nz, $0240
023C  11 00 98       ld de, $9800
023F  C9             ret
                   ----------------
                   $0240:
0240  11 00 9C       ld de, $9c00
0243  C9             ret
                   ----------------
                   --------sub start--------
                   $0244:
0244  21 81 05       ld hl, $0581
0247  18 03          jr $024c
                   --------sub start--------
                   $0249:
0249  21 87 05       ld hl, $0587
                   $024c:
024C  FA 36 C5       ld a, ($c536)
024F  5F             ld e, a
0250  87             add a, a
0251  83             add a, e
0252  85             add a, l
0253  6F             ld l, a
0254  8C             adc a, h
0255  95             sub l
0256  67             ld h, a
0257  F0 90          ldh a, ($ff90)
0259  F5             push af
025A  2A             ld a, (hl+)
025B  E0 90          ldh ($ff90), a
025D  EA 00 20       ld ($2000), a
0260  2A             ld a, (hl+)
0261  66             ld h, (hl)
0262  6F             ld l, a
0263  E7             rst 20h
0264  F1             pop af
0265  E0 90          ldh ($ff90), a
0267  EA 00 20       ld ($2000), a
026A  C9             ret
                   ----------------
026B  00             nop
026C  00             nop
026D  01 03 07       ld bc, $0703
0270  0F             rrca
0271  1F             rra
0272  3F             ccf
0273  F8 06          ld hl, sp+$06
0275  F0 90          ldh a, ($ff90)
0277  F5             push af
0278  3A             ld a, (hl-)
0279  E0 90          ldh ($ff90), a
027B  EA 00 20       ld ($2000), a
027E  3A             ld a, (hl-)
027F  57             ld d, a
0280  3A             ld a, (hl-)
0281  5F             ld e, a
0282  3A             ld a, (hl-)
0283  6E             ld l, (hl)
0284  67             ld h, a
0285  3E 08          ld a, $08
0287  F5             push af
0288  1A             ld a, (de)
0289  4F             ld c, a
028A  FA 30 CA       ld a, ($ca30)
028D  A9             xor c
028E  4F             ld c, a
028F  13             inc de
0290  1A             ld a, (de)
0291  47             ld b, a
0292  FA 30 CA       ld a, ($ca30)
0295  A8             xor b
0296  47             ld b, a
0297  13             inc de
0298  FA 2F CA       ld a, ($ca2f)
029B  CB 27          sla a
029D  28 34          jr z, $02d3
029F  38 1A          jr c, $02bb
02A1  CB 3F          srl a
02A3  CB 3F          srl a
02A5  30 04          jr nc, $02ab
02A7  CB 39          srl c
02A9  CB 38          srl b
02AB  B7             or a
02AC  28 25          jr z, $02d3
02AE  CB 39          srl c
02B0  CB 38          srl b
02B2  CB 39          srl c
02B4  CB 38          srl b
02B6  3D             dec a
02B7  20 F5          jr nz, $02ae
02B9  18 18          jr $02d3
02BB  CB 3F          srl a
02BD  CB 3F          srl a
02BF  30 04          jr nc, $02c5
02C1  CB 21          sla c
02C3  CB 20          sla b
02C5  B7             or a
02C6  28 0B          jr z, $02d3
02C8  CB 21          sla c
02CA  CB 20          sla b
02CC  CB 21          sla c
02CE  CB 20          sla b
02D0  3D             dec a
02D1  20 F5          jr nz, $02c8
02D3  FA 2E CA       ld a, ($ca2e)
02D6  A6             and (hl)
02D7  77             ld (hl), a
02D8  FA 2E CA       ld a, ($ca2e)
02DB  2F             cpl
02DC  A1             and c
02DD  B6             or (hl)
02DE  22             ld (hl+), a
02DF  FA 2E CA       ld a, ($ca2e)
02E2  A6             and (hl)
02E3  77             ld (hl), a
02E4  FA 2E CA       ld a, ($ca2e)
02E7  2F             cpl
02E8  A0             and b
02E9  B6             or (hl)
02EA  22             ld (hl+), a
02EB  F1             pop af
02EC  3D             dec a
02ED  20 98          jr nz, $0287
02EF  F1             pop af
02F0  E0 90          ldh ($ff90), a
02F2  EA 00 20       ld ($2000), a
02F5  C9             ret
                   ----------------
                   --------sub start--------
                   $02f6:
02F6  F8 05          ld hl, sp+$05
02F8  3A             ld a, (hl-)
02F9  4F             ld c, a
02FA  3A             ld a, (hl-)
02FB  5F             ld e, a
02FC  3A             ld a, (hl-)
02FD  6E             ld l, (hl)
02FE  67             ld h, a
02FF  79             ld a, c
0300  B7             or a
0301  28 24          jr z, $0327
                   $0303:
0303  F0 41          ldh a, (STAT_FF41)
0305  E6 02          and $02
0307  20 FA          jr nz, $0303
0309  73             ld (hl), e
030A  23             inc hl
030B  0D             dec c
030C  28 19          jr z, $0327
030E  1C             inc e
030F  41             ld b, c
0310  05             dec b
0311  28 0C          jr z, $031f
                   $0313:
0313  F0 41          ldh a, (STAT_FF41)
0315  E6 02          and $02
0317  20 FA          jr nz, $0313
0319  73             ld (hl), e
031A  23             inc hl
031B  0D             dec c
031C  05             dec b
031D  20 F4          jr nz, $0313
031F  1C             inc e
                   $0320:
0320  F0 41          ldh a, (STAT_FF41)
0322  E6 02          and $02
0324  20 FA          jr nz, $0320
0326  73             ld (hl), e
0327  C9             ret
                   ----------------
0328  99             sbc a, c
0329  41             ld b, c
032A  09             add hl, bc
032B  02             ld (bc), a
032C  C4 41 09       call nz, $0941
032F  01 00 00       ld bc, $0000
0332  00             nop
0333  00             nop
0334  00             nop
0335  40             ld b, b
0336  09             add hl, bc
0337  02             ld (bc), a
0338  42             ld b, d
0339  40             ld b, b
033A  09             add hl, bc
033B  01 9D 38       ld bc, $389d
033E  09             add hl, bc
033F  06 FF          ld b, $ff
0341  41             ld b, c
0342  09             add hl, bc
0343  05             dec b
0344  30 2C          jr nc, $0372
0346  09             add hl, bc
0347  04             inc b
0348  8A             adc a, d
0349  42             ld b, d
034A  09             add hl, bc
034B  02             ld (bc), a
034C  A2             and d
034D  40             ld b, b
034E  09             add hl, bc
034F  03             inc bc
0350  21 41 09       ld hl, $0941
0353  01 00 00       ld bc, $0000
0356  00             nop
0357  00             nop
0358  03             inc bc
0359  43             ld b, e
035A  09             add hl, bc
035B  06 61          ld b, $61
035D  2D             dec l
035E  09             add hl, bc
035F  06 BF          ld b, $bf
0361  44             ld b, h
0362  09             add hl, bc
0363  08 6B 47       ld ($476b), sp
0366  09             add hl, bc
0367  02             ld (bc), a
0368  19             add hl, de
0369  47             ld b, a
036A  09             add hl, bc
036B  02             ld (bc), a
036C  37             scf
036D  48             ld c, b
036E  09             add hl, bc
036F  01 65 48       ld bc, $4865
0372  09             add hl, bc
0373  04             inc b
0374  C6 48          add a, $48
0376  09             add hl, bc
0377  04             inc b
0378  85             add a, l
0379  2E 09          ld l, $09
037B  00             nop
037C  30 44          jr nc, $03c2
037E  09             add hl, bc
037F  02             ld (bc), a
0380  92             sub d
0381  44             ld b, h
0382  09             add hl, bc
0383  02             ld (bc), a
0384  8A             adc a, d
0385  49             ld c, c
0386  09             add hl, bc
0387  00             nop
0388  F2             ld a, ($ff00+c)
0389  48             ld c, b
038A  09             add hl, bc
038B  04             inc b
038C  04             inc b
038D  46             ld b, (hl)
038E  09             add hl, bc
038F  08 00 00       ld ($0000), sp
0392  00             nop
0393  00             nop
0394  00             nop
0395  00             nop
0396  00             nop
0397  00             nop
0398  00             nop
0399  00             nop
039A  00             nop
039B  00             nop
039C  00             nop
039D  00             nop
039E  00             nop
039F  00             nop
03A0  00             nop
03A1  00             nop
03A2  00             nop
03A3  00             nop
03A4  00             nop
03A5  00             nop
03A6  00             nop
03A7  00             nop
03A8  00             nop
03A9  00             nop
03AA  00             nop
03AB  00             nop
03AC  00             nop
03AD  00             nop
03AE  00             nop
03AF  00             nop
03B0  96             sub (hl)
03B1  49             ld c, c
03B2  09             add hl, bc
03B3  02             ld (bc), a
03B4  C2 49 09       jp nz, $0949
03B7  06 04          ld b, $04
03B9  4A             ld c, d
03BA  09             add hl, bc
03BB  00             nop
03BC  13             inc de
03BD  4A             ld c, d
03BE  09             add hl, bc
03BF  00             nop
03C0  26 4A          ld h, $4a
03C2  09             add hl, bc
03C3  02             ld (bc), a
03C4  68             ld l, b
03C5  4A             ld c, d
03C6  09             add hl, bc
03C7  04             inc b
03C8  E3             ill_e3
03C9  4A             ld c, d
03CA  09             add hl, bc
03CB  04             inc b
03CC  7F             ld a, a
03CD  49             ld c, c
03CE  09             add hl, bc
03CF  01 5E 4B       ld bc, $4b5e
03D2  09             add hl, bc
03D3  02             ld (bc), a
03D4  E0 47          ldh (BGP_FF47), a
03D6  09             add hl, bc
03D7  02             ld (bc), a
03D8  0B             dec bc
03D9  39             add hl, sp
03DA  09             add hl, bc
03DB  03             inc bc
03DC  B9             cp c
03DD  41             ld b, c
03DE  3D             dec a
03DF  09             add hl, bc
03E0  AA             xor d
03E1  41             ld b, c
03E2  3D             dec a
03E3  01 00 40       ld bc, $4000
03E6  04             inc b
03E7  02             ld (bc), a
03E8  7C             ld a, h
03E9  4A             ld c, d
03EA  04             inc b
03EB  02             ld (bc), a
03EC  EC             ill_ec
03ED  4B             ld c, e
03EE  04             inc b
03EF  03             inc bc
03F0  CD 4A 04       call $044a
03F3  02             ld (bc), a
03F4  35             dec (hl)
03F5  4C             ld c, h
03F6  04             inc b
03F7  04             inc b
03F8  C3 4C 04       jp $044c
03FB  02             ld (bc), a
03FC  A7             and a
03FD  4E             ld c, (hl)
03FE  04             inc b
03FF  05             dec b
0400  6B             ld l, e
0401  4F             ld c, a
0402  04             inc b
0403  06 C9          ld b, $c9
0405  4F             ld c, a
0406  04             inc b
0407  05             dec b
0408  93             sub e
0409  50             ld d, b
040A  04             inc b
040B  08 3D 4D       ld ($4d3d), sp
040E  04             inc b
040F  02             ld (bc), a
0410  00             nop
0411  00             nop
0412  00             nop
0413  00             nop
0414  AC             xor h
0415  4D             ld c, l
0416  04             inc b
0417  04             inc b
0418  FE 50          cp $50
041A  04             inc b
041B  03             inc bc
041C  3C             inc a
041D  51             ld d, c
041E  04             inc b
041F  03             inc bc
0420  9D             sbc a, l
0421  53             ld d, e
0422  04             inc b
0423  04             inc b
0424  DA 29 19       jp c, $1929
0427  01 2D 47       ld bc, $472d
042A  19             add hl, de
042B  02             ld (bc), a
042C  B0             or b
042D  47             ld b, a
042E  19             add hl, de
042F  02             ld (bc), a
0430  00             nop
0431  00             nop
0432  00             nop
0433  00             nop
0434  CA 47 19       jp z, $1947
0437  02             ld (bc), a
0438  5A             ld e, d
0439  48             ld c, b
043A  19             add hl, de
043B  03             inc bc
043C  A9             xor c
043D  49             ld c, c
043E  19             add hl, de
043F  04             inc b
0440  D7             rst 10h
0441  48             ld c, b
0442  19             add hl, de
0443  06 F7          ld b, $f7
0445  49             ld c, c
0446  19             add hl, de
0447  04             inc b
0448  00             nop
0449  00             nop
044A  00             nop
044B  00             nop
044C  00             nop
044D  00             nop
044E  00             nop
044F  00             nop
0450  12             ld (de), a
0451  4B             ld c, e
0452  19             add hl, de
0453  01 0E 4C       ld bc, $4c0e
0456  19             add hl, de
0457  02             ld (bc), a
0458  41             ld b, c
0459  4B             ld c, e
045A  19             add hl, de
045B  05             dec b
045C  9E             sbc a, (hl)
045D  48             ld c, b
045E  19             add hl, de
045F  05             dec b
0460  A2             and d
0461  4B             ld c, e
0462  19             add hl, de
0463  06 D1          ld b, $d1
0465  45             ld b, l
0466  0B             dec bc
0467  05             dec b
0468  00             nop
0469  40             ld b, b
046A  0B             dec bc
046B  01 17 40       ld bc, $4017
046E  0B             dec bc
046F  01 6B 40       ld bc, $406b
0472  0B             dec bc
0473  02             ld (bc), a
0474  95             sub l
0475  40             ld b, b
0476  0B             dec bc
0477  03             inc bc
0478  40             ld b, b
0479  40             ld b, b
047A  0B             dec bc
047B  04             inc b
047C  0F             rrca
047D  4D             ld c, l
047E  19             add hl, de
047F  09             add hl, bc
0480  C9             ret
                   ----------------
0481  40             ld b, b
0482  0B             dec bc
0483  01 F9 40       ld bc, $40f9
0486  0B             dec bc
0487  04             inc b
0488  24             inc h
0489  41             ld b, c
048A  0B             dec bc
048B  02             ld (bc), a
048C  6A             ld l, d
048D  41             ld b, c
048E  0B             dec bc
048F  06 40          ld b, $40
0491  42             ld b, d
0492  0B             dec bc
0493  08 EB 42       ld ($42eb), sp
0496  0B             dec bc
0497  05             dec b
0498  BD             cp l
0499  43             ld b, e
049A  0B             dec bc
049B  01 D1 43       ld bc, $43d1
049E  0B             dec bc
049F  07             rlca
04A0  81             add a, c
04A1  40             ld b, b
04A2  0B             dec bc
04A3  01 3A 41       ld bc, $413a
04A6  3C             inc a
04A7  03             inc bc
04A8  87             add a, a
04A9  41             ld b, c
04AA  3C             inc a
04AB  00             nop
04AC  A9             xor c
04AD  41             ld b, c
04AE  3C             inc a
04AF  01 14 42       ld bc, $4214
04B2  3C             inc a
04B3  01 00 00       ld bc, $0000
04B6  00             nop
04B7  00             nop
04B8  E7             rst 20h
04B9  41             ld b, c
04BA  3C             inc a
04BB  04             inc b
04BC  1A             ld a, (de)
04BD  42             ld b, d
04BE  3C             inc a
04BF  05             dec b
04C0  0E 42          ld c, $42
04C2  3C             inc a
04C3  02             ld (bc), a
04C4  FE 43          cp $43
04C6  3D             dec a
04C7  00             nop
04C8  74             ld (hl), h
04C9  44             ld b, h
04CA  3D             dec a
04CB  00             nop
04CC  82             add a, d
04CD  44             ld b, h
04CE  3D             dec a
04CF  00             nop
04D0  8D             adc a, l
04D1  44             ld b, h
04D2  3D             dec a
04D3  00             nop
04D4  00             nop
04D5  40             ld b, b
04D6  35             dec (hl)
04D7  01 12 40       ld bc, $4012
04DA  35             dec (hl)
04DB  05             dec b
04DC  00             nop
04DD  00             nop
04DE  00             nop
04DF  00             nop
04E0  00             nop
04E1  00             nop
04E2  00             nop
04E3  00             nop
04E4  C6 43          add a, $43
04E6  2E 04          ld l, $04
04E8  19             add hl, de
04E9  46             ld b, (hl)
04EA  2E 02          ld l, $02
04EC  3F             ccf
04ED  41             ld b, c
04EE  0B             dec bc
04EF  01 53 41       ld bc, $4153
04F2  0B             dec bc
04F3  01 A5 4B       ld bc, $4ba5
04F6  04             inc b
04F7  02             ld (bc), a
04F8  7A             ld a, d
04F9  51             ld d, c
04FA  04             inc b
04FB  02             ld (bc), a
04FC  8E             adc a, (hl)
04FD  4B             ld c, e
04FE  09             add hl, bc
04FF  06 C8          ld b, $c8
0501  4B             ld c, e
0502  09             add hl, bc
0503  06 0E          ld b, $0e
0505  43             ld b, e
0506  3D             dec a
0507  00             nop
0508  16 43          ld d, $43
050A  3D             dec a
050B  03             inc bc
050C  7D             ld a, l
050D  43             ld b, e
050E  3D             dec a
050F  03             inc bc
0510  DB             ill_db
0511  43             ld b, e
0512  3D             dec a
0513  01 00 40       ld bc, $4000
0516  39             add hl, sp
0517  02             ld (bc), a
0518  00             nop
0519  00             nop
051A  00             nop
051B  00             nop
051C  8D             adc a, l
051D  29             add hl, hl
051E  01 00 B1       ld bc, $b100
0521  45             ld b, l
0522  0B             dec bc
0523  01 3B 42       ld bc, $423b
0526  3D             dec a
0527  03             inc bc
0528  7C             ld a, h
0529  42             ld b, d
052A  3D             dec a
052B  04             inc b
052C  00             nop
052D  00             nop
052E  00             nop
052F  00             nop
0530  BE             cp (hl)
0531  51             ld d, c
0532  04             inc b
0533  02             ld (bc), a
0534  08 52 04       ld ($0452), sp
0537  04             inc b
0538  96             sub (hl)
0539  47             ld b, a
053A  19             add hl, de
053B  01 26 4E       ld bc, $4e26
053E  04             inc b
053F  04             inc b
0540  90             sub b
0541  52             ld d, d
0542  04             inc b
0543  04             inc b
0544  46             ld b, (hl)
0545  4A             ld c, d
0546  04             inc b
0547  02             ld (bc), a
0548  00             nop
0549  40             ld b, b
054A  3C             inc a
054B  05             dec b
054C  9C             sbc a, h
054D  40             ld b, b
054E  3C             inc a
054F  05             dec b
0550  6E             ld l, (hl)
0551  4E             ld c, (hl)
0552  19             add hl, de
0553  04             inc b
0554  06 41          ld b, $41
0556  3D             dec a
0557  03             inc bc
0558  55             ld d, l
0559  41             ld b, c
055A  3D             dec a
055B  05             dec b
055C  1E 4B          ld e, $4b
055E  04             inc b
055F  02             ld (bc), a
0560  11 51 41       ld de, $4151
0563  D0             ret nc
                   ----------------
0564  80             add a, b
0565  04             inc b
0566  80             add a, b
0567  06 01          ld b, $01
0569  3F             ccf
056A  5A             ld e, d
056B  67             ld h, a
056C  10 0F          stop $0f
056E  0C             inc c
056F  70             ld (hl), b
0570  64             ld h, h
                   --------sub start--------
                   $0571:
0571  1E 2D          ld e, $2d
0573  21 00 40       ld hl, $4000
0576  C3 DE 3D       jp $3dde
                   --------sub start--------
                   $0579:
0579  1E 2D          ld e, $2d
057B  21 F3 42       ld hl, $42f3
057E  C3 DE 3D       jp $3dde
0581  03             inc bc
0582  D2 40 41       jp nc, $4140
0585  ED             ill_ed
0586  7F             ld a, a
0587  03             inc bc
0588  F9             ld sp, hl
0589  42             ld b, d
058A  41             ld b, c
058B  FD             ill_fd
058C  7F             ld a, a
                   --------sub start--------
                   $058d:
058D  62             ld h, d
058E  6B             ld l, e
058F  2A             ld a, (hl+)
0590  EA 69 DA       ld ($da69), a
0593  2A             ld a, (hl+)
0594  5F             ld e, a
0595  2A             ld a, (hl+)
0596  57             ld d, a
0597  1A             ld a, (de)
0598  EA 4E DA       ld ($da4e), a
059B  0E 12          ld c, $12
059D  11 4F DA       ld de, $da4f
                   $05a0:
05A0  2A             ld a, (hl+)
05A1  12             ld (de), a
05A2  13             inc de
05A3  0D             dec c
05A4  20 FA          jr nz, $05a0
05A6  0E 47          ld c, $47
05A8  21 6B DA       ld hl, $da6b
05AB  AF             xor a
                   $05ac:
05AC  22             ld (hl+), a
05AD  0D             dec c
05AE  20 FC          jr nz, $05ac
05B0  3E F0          ld a, $f0
05B2  EA 79 DA       ld ($da79), a
05B5  EA 89 DA       ld ($da89), a
05B8  3E 64          ld a, $64
05BA  EA 6A DA       ld ($da6a), a
05BD  0E 00          ld c, $00
                   --------sub start--------
                   $05bf:
05BF  21 4F DA       ld hl, $da4f
05C2  11 61 DA       ld de, $da61
05C5  CD D7 05       call $05d7
05C8  21 51 DA       ld hl, $da51
05CB  CD D7 05       call $05d7
05CE  21 53 DA       ld hl, $da53
05D1  CD D7 05       call $05d7
05D4  21 55 DA       ld hl, $da55
                   --------sub start--------
                   $05d7:
05D7  2A             ld a, (hl+)
05D8  81             add a, c
05D9  66             ld h, (hl)
05DA  6F             ld l, a
05DB  8C             adc a, h
05DC  95             sub l
05DD  67             ld h, a
05DE  2A             ld a, (hl+)
05DF  12             ld (de), a
05E0  13             inc de
05E1  7E             ld a, (hl)
05E2  12             ld (de), a
05E3  13             inc de
05E4  C9             ret
                   ----------------
05E5  47             ld b, a
05E6  4B             ld c, e
05E7  1E FE          ld e, $fe
05E9  78             ld a, b
05EA  B7             or a
05EB  28 07          jr z, $05f4
05ED  CB 21          sla c
05EF  CB 03          rlc e
05F1  3D             dec a
05F2  20 F9          jr nz, $05ed
05F4  FA 6B DA       ld a, ($da6b)
05F7  A3             and e
05F8  B1             or c
05F9  EA 6B DA       ld ($da6b), a
05FC  A1             and c
05FD  C2 5A 08       jp nz, $085a
0600  C9             ret
                   ----------------
                   --------sub start--------
                   $0601:
0601  FA 70 DA       ld a, ($da70)
                   --------sub start--------
                   $0604:
0604  67             ld h, a
0605  84             add a, h
0606  84             add a, h
0607  26 00          ld h, $00
0609  6F             ld l, a
060A  09             add hl, bc
060B  2A             ld a, (hl+)
060C  46             ld b, (hl)
060D  23             inc hl
060E  4E             ld c, (hl)
060F  C9             ret
                   ----------------
                   --------sub start--------
                   $0610:
0610  2A             ld a, (hl+)
0611  4F             ld c, a
0612  46             ld b, (hl)
0613  CD 01 06       call $0601
0616  21 00 00       ld hl, $0000
0619  FE 48          cp $48
061B  D0             ret nc
                   ----------------
061C  12             ld (de), a
                   --------sub start--------
                   $061d:
061D  87             add a, a
061E  C6 98          add a, $98
0620  6F             ld l, a
0621  CE 0C          adc a, $0c
0623  95             sub l
0624  67             ld h, a
0625  2A             ld a, (hl+)
0626  66             ld h, (hl)
0627  6F             ld l, a
0628  37             scf
0629  C9             ret
                   ----------------
                   --------sub start--------
                   $062a:
062A  C6 C0          add a, $c0
062C  2F             cpl
062D  FE 07          cp $07
062F  D8             ret c
                   ----------------
0630  67             ld h, a
0631  CB 3F          srl a
0633  CB 3F          srl a
0635  3D             dec a
0636  6F             ld l, a
0637  7C             ld a, h
0638  E6 03          and $03
063A  C6 04          add a, $04
063C  CB 35          swap l
063E  B5             or l
063F  C9             ret
                   ----------------
                   --------sub start--------
                   $0640:
0640  78             ld a, b
0641  CB 37          swap a
0643  82             add a, d
0644  C6 72          add a, $72
0646  6F             ld l, a
0647  CE DA          adc a, $da
0649  95             sub l
064A  67             ld h, a
064B  C9             ret
                   ----------------
                   $064c:
064C  26 00          ld h, $00
                   --------sub start--------
                   $064e:
064E  48             ld c, b
064F  FA 6B DA       ld a, ($da6b)
0652  0D             dec c
0653  28 17          jr z, $066c
0655  0D             dec c
0656  28 25          jr z, $067d
0658  0D             dec c
0659  28 33          jr z, $068e
065B  CB 47          bit 0, a
065D  C0             ret nz
                   ----------------
065E  7B             ld a, e
065F  EA 72 DA       ld ($da72), a
0662  E0 13          ldh (NR13_FF13), a
0664  7A             ld a, d
0665  EA 73 DA       ld ($da73), a
0668  B4             or h
0669  E0 14          ldh (NR14_FF14), a
066B  C9             ret
                   ----------------
                   $066c:
066C  CB 4F          bit 1, a
066E  C0             ret nz
                   ----------------
066F  7B             ld a, e
0670  EA 82 DA       ld ($da82), a
0673  E0 18          ldh (NR23_FF18), a
0675  7A             ld a, d
0676  EA 83 DA       ld ($da83), a
0679  B4             or h
067A  E0 19          ldh (NR24_FF19), a
067C  C9             ret
                   ----------------
                   $067d:
067D  CB 57          bit 2, a
067F  C0             ret nz
                   ----------------
0680  7B             ld a, e
0681  EA 92 DA       ld ($da92), a
0684  E0 1D          ldh (NR33_FF1D), a
0686  7A             ld a, d
0687  EA 93 DA       ld ($da93), a
068A  B4             or h
068B  E0 1E          ldh (NR34_FF1E), a
068D  C9             ret
                   ----------------
                   $068e:
068E  CB 5F          bit 3, a
0690  C0             ret nz
                   ----------------
0691  54             ld d, h
0692  7B             ld a, e
0693  CD 2A 06       call $062a
0696  21 A8 DA       ld hl, $daa8
0699  B6             or (hl)
069A  E0 22          ldh (NR43_FF22), a
069C  7A             ld a, d
069D  E0 23          ldh (NR44_FF23), a
069F  C9             ret
                   ----------------
06A0  18 06          jr $06a8
06A2  18 17          jr $06bb
06A4  18 28          jr $06ce
06A6  18 49          jr $06f1
                   --------sub start--------
                   $06a8:
06A8  FA 6B DA       ld a, ($da6b)
06AB  CB 47          bit 0, a
06AD  C0             ret nz
                   ----------------
06AE  21 72 DA       ld hl, $da72
06B1  2A             ld a, (hl+)
06B2  E0 13          ldh (NR13_FF13), a
06B4  FA 77 DA       ld a, ($da77)
06B7  B6             or (hl)
06B8  E0 14          ldh (NR14_FF14), a
06BA  C9             ret
                   ----------------
                   --------sub start--------
                   $06bb:
06BB  FA 6B DA       ld a, ($da6b)
06BE  CB 4F          bit 1, a
06C0  C0             ret nz
                   ----------------
06C1  21 82 DA       ld hl, $da82
06C4  2A             ld a, (hl+)
06C5  E0 18          ldh (NR23_FF18), a
06C7  FA 87 DA       ld a, ($da87)
06CA  B6             or (hl)
06CB  E0 19          ldh (NR24_FF19), a
06CD  C9             ret
                   ----------------
                   --------sub start--------
                   $06ce:
06CE  FA 6B DA       ld a, ($da6b)
06D1  CB 57          bit 2, a
06D3  C0             ret nz
                   ----------------
06D4  F0 25          ldh a, (NR51_FF25)
06D6  F5             push af
06D7  E6 BB          and $bb
06D9  E0 25          ldh (NR51_FF25), a
06DB  AF             xor a
06DC  E0 1A          ldh (NR30_FF1A), a
06DE  2F             cpl
06DF  E0 1A          ldh (NR30_FF1A), a
06E1  21 92 DA       ld hl, $da92
06E4  2A             ld a, (hl+)
06E5  E0 1D          ldh (NR33_FF1D), a
06E7  FA 97 DA       ld a, ($da97)
06EA  B6             or (hl)
06EB  E0 1E          ldh (NR34_FF1E), a
06ED  F1             pop af
06EE  E0 25          ldh (NR51_FF25), a
06F0  C9             ret
                   ----------------
                   --------sub start--------
                   $06f1:
06F1  FA 6B DA       ld a, ($da6b)
06F4  CB 5F          bit 3, a
06F6  C0             ret nz
                   ----------------
06F7  FA A2 DA       ld a, ($daa2)
06FA  E0 22          ldh (NR43_FF22), a
06FC  FA A7 DA       ld a, ($daa7)
06FF  E0 23          ldh (NR44_FF23), a
0701  C9             ret
                   ----------------
                   --------sub start--------
                   $0702:
0702  7E             ld a, (hl)
0703  34             inc (hl)
0704  E5             push hl
0705  CD 04 06       call $0604
0708  E1             pop hl
0709  C5             push bc
070A  57             ld d, a
070B  78             ld a, b
070C  E6 F0          and $f0
070E  CB 7A          bit 7, d
0710  28 04          jr z, $0716
0712  CB BA          res 7, d
0714  CB C7          set 0, a
                   $0716:
0716  CB 37          swap a
0718  28 02          jr z, $071c
071A  3D             dec a
071B  77             ld (hl), a
                   $071c:
071C  7A             ld a, d
071D  FE 5A          cp $5a
071F  28 21          jr z, $0742
0721  D6 24          sub $24
0723  43             ld b, e
0724  5F             ld e, a
0725  16 04          ld d, $04
0727  CD 40 06       call $0640
072A  7B             ld a, e
072B  86             add a, (hl)
072C  23             inc hl
072D  56             ld d, (hl)
072E  5F             ld e, a
072F  04             inc b
0730  CB 50          bit 2, b
0732  4A             ld c, d
0733  20 05          jr nz, $073a
0735  CD 1D 06       call $061d
0738  54             ld d, h
0739  5D             ld e, l
                   $073a:
073A  61             ld h, c
073B  CB BC          res 7, h
073D  05             dec b
073E  CD 4E 06       call $064e
0741  58             ld e, b
                   $0742:
0742  C1             pop bc
0743  16 01          ld d, $01
0745  18 02          jr $0749
                   --------sub start--------
                   $0747:
0747  16 00          ld d, $00
                   $0749:
0749  78             ld a, b
074A  E6 0F          and $0f
074C  B1             or c
074D  C8             ret z
                   ----------------
074E  78             ld a, b
074F  E6 0F          and $0f
0751  87             add a, a
0752  C6 67          add a, $67
0754  6F             ld l, a
0755  CE 07          adc a, $07
0757  95             sub l
0758  67             ld h, a
0759  2A             ld a, (hl+)
075A  66             ld h, (hl)
075B  6F             ld l, a
075C  CB 42          bit 0, d
075E  28 01          jr z, $0761
0760  23             inc hl
                   $0761:
0761  43             ld b, e
0762  FA 6D DA       ld a, ($da6d)
0765  B7             or a
0766  E9             jp hl
0767  E3             ill_e3
0768  08 16 09       ld ($0916), sp
076B  25             dec h
076C  09             add hl, bc
076D  34             inc (hl)
076E  09             add hl, bc
076F  BB             cp e
0770  08 87 07       ld ($0787), sp
0773  8C             adc a, h
0774  07             rlca
0775  DC 09 A6       call c, $a609
0778  07             rlca
0779  AB             xor e
077A  07             rlca
077B  A0             and b
077C  09             add hl, bc
077D  37             scf
077E  08 6D 08       ld ($086d), sp
0781  43             ld b, e
0782  08 49 08       ld ($0849), sp
0785  2F             cpl
0786  08 C0 79       ld ($79c0), sp
0789  E0 24          ldh (NR50_FF24), a
078B  C9             ret
                   ----------------
078C  00             nop
078D  21 5D DA       ld hl, $da5d
0790  3E 0F          ld a, $0f
0792  A1             and c
0793  87             add a, a
0794  86             add a, (hl)
0795  5F             ld e, a
0796  23             inc hl
0797  3E 00          ld a, $00
0799  8E             adc a, (hl)
079A  67             ld h, a
079B  6B             ld l, e
079C  2A             ld a, (hl+)
079D  66             ld h, (hl)
079E  6F             ld l, a
079F  50             ld d, b
07A0  59             ld e, c
07A1  FA 6D DA       ld a, ($da6d)
07A4  B7             or a
07A5  E9             jp hl
07A6  C0             ret nz
                   ----------------
07A7  79             ld a, c
07A8  E0 25          ldh (NR51_FF25), a
07AA  C9             ret
                   ----------------
07AB  C0             ret nz
                   ----------------
                   $07ac:
07AC  FA 6B DA       ld a, ($da6b)
07AF  05             dec b
07B0  28 0D          jr z, $07bf
07B2  05             dec b
07B3  28 1C          jr z, $07d1
07B5  05             dec b
07B6  28 0E          jr z, $07c6
07B8  CB 47          bit 0, a
07BA  C0             ret nz
                   ----------------
07BB  79             ld a, c
07BC  E0 11          ldh (NR11_FF11), a
07BE  C9             ret
                   ----------------
                   $07bf:
07BF  CB 4F          bit 1, a
07C1  C0             ret nz
                   ----------------
07C2  79             ld a, c
07C3  E0 16          ldh (NR21_FF16), a
07C5  C9             ret
                   ----------------
                   $07c6:
07C6  CB 5F          bit 3, a
07C8  C0             ret nz
                   ----------------
07C9  F0 22          ldh a, (NR43_FF22)
07CB  CB 9F          res 3, a
07CD  B1             or c
07CE  E0 22          ldh (NR43_FF22), a
07D0  C9             ret
                   ----------------
07D1  CB 57          bit 2, a
07D3  C0             ret nz
                   ----------------
07D4  79             ld a, c
07D5  21 6A DA       ld hl, $da6a
07D8  CD E0 07       call $07e0
07DB  06 02          ld b, $02
07DD  C3 E0 09       jp $09e0
                   --------sub start--------
                   $07e0:
07E0  77             ld (hl), a
07E1  CB 37          swap a
07E3  21 5F DA       ld hl, $da5f
07E6  86             add a, (hl)
07E7  23             inc hl
07E8  66             ld h, (hl)
07E9  6F             ld l, a
07EA  8C             adc a, h
07EB  95             sub l
07EC  67             ld h, a
07ED  F0 25          ldh a, (NR51_FF25)
07EF  F5             push af
07F0  E6 BB          and $bb
07F2  E0 25          ldh (NR51_FF25), a
07F4  AF             xor a
07F5  E0 1A          ldh (NR30_FF1A), a
07F7  2A             ld a, (hl+)
07F8  E0 30          ldh ($ff30), a
07FA  2A             ld a, (hl+)
07FB  E0 31          ldh ($ff31), a
07FD  2A             ld a, (hl+)
07FE  E0 32          ldh ($ff32), a
0800  2A             ld a, (hl+)
0801  E0 33          ldh ($ff33), a
0803  2A             ld a, (hl+)
0804  E0 34          ldh ($ff34), a
0806  2A             ld a, (hl+)
0807  E0 35          ldh ($ff35), a
0809  2A             ld a, (hl+)
080A  E0 36          ldh ($ff36), a
080C  2A             ld a, (hl+)
080D  E0 37          ldh ($ff37), a
080F  2A             ld a, (hl+)
0810  E0 38          ldh ($ff38), a
0812  2A             ld a, (hl+)
0813  E0 39          ldh ($ff39), a
0815  2A             ld a, (hl+)
0816  E0 3A          ldh ($ff3a), a
0818  2A             ld a, (hl+)
0819  E0 3B          ldh ($ff3b), a
081B  2A             ld a, (hl+)
081C  E0 3C          ldh ($ff3c), a
081E  2A             ld a, (hl+)
081F  E0 3D          ldh ($ff3d), a
0821  2A             ld a, (hl+)
0822  E0 3E          ldh ($ff3e), a
0824  2A             ld a, (hl+)
0825  E0 3F          ldh ($ff3f), a
0827  3E 80          ld a, $80
0829  E0 1A          ldh (NR30_FF1A), a
082B  F1             pop af
082C  E0 25          ldh (NR51_FF25), a
082E  C9             ret
                   ----------------
                   $082f:
082F  C0             ret nz
                   ----------------
                   $0830:
0830  79             ld a, c
0831  EA 69 DA       ld ($da69), a
0834  C9             ret
                   ----------------
0835  4F             ld c, a
0836  AF             xor a
0837  C0             ret nz
                   ----------------
0838  21 6E DA       ld hl, $da6e
083B  B6             or (hl)
083C  20 02          jr nz, $0840
083E  36 01          ld (hl), $01
0840  23             inc hl
0841  71             ld (hl), c
0842  C9             ret
                   ----------------
                   $0843:
0843  C0             ret nz
                   ----------------
0844  79             ld a, c
0845  EA 6E DA       ld ($da6e), a
0848  C9             ret
                   ----------------
                   $0849:
0849  B9             cp c
084A  C0             ret nz
                   ----------------
084B  78             ld a, b
084C  C6 FE          add a, $fe
084E  CE 03          adc a, $03
0850  87             add a, a
0851  27             daa
0852  1F             rra
0853  57             ld d, a
0854  FA 6B DA       ld a, ($da6b)
0857  2F             cpl
0858  A2             and d
0859  C8             ret z
                   ----------------
085A  78             ld a, b
085B  87             add a, a
085C  87             add a, a
085D  80             add a, b
085E  C6 12          add a, $12
0860  6F             ld l, a
0861  26 FF          ld h, $ff
0863  AF             xor a
0864  22             ld (hl+), a
0865  78             ld a, b
0866  FE 02          cp $02
0868  C8             ret z
                   ----------------
0869  2C             inc l
086A  36 FF          ld (hl), $ff
086C  C9             ret
                   ----------------
                   $086d:
086D  C0             ret nz
                   ----------------
086E  CB 31          swap c
0870  FA 6B DA       ld a, ($da6b)
0873  05             dec b
0874  28 13          jr z, $0889
0876  05             dec b
0877  28 1D          jr z, $0896
0879  05             dec b
087A  28 36          jr z, $08b2
087C  CB 47          bit 0, a
087E  C0             ret nz
                   ----------------
087F  F0 12          ldh a, (NR12_FF12)
0881  E6 0F          and $0f
0883  B1             or c
0884  E0 12          ldh (NR12_FF12), a
0886  C3 A8 06       jp $06a8
                   $0889:
0889  CB 4F          bit 1, a
088B  C0             ret nz
                   ----------------
088C  F0 17          ldh a, (NR22_FF17)
088E  E6 0F          and $0f
0890  B1             or c
0891  E0 17          ldh (NR22_FF17), a
0893  C3 BB 06       jp $06bb
                   $0896:
0896  CB 57          bit 2, a
0898  C0             ret nz
                   ----------------
0899  79             ld a, c
089A  FE A0          cp $a0
089C  30 0F          jr nc, $08ad
089E  FE 50          cp $50
08A0  30 07          jr nc, $08a9
08A2  B7             or a
08A3  28 0A          jr z, $08af
08A5  3E 60          ld a, $60
08A7  18 06          jr $08af
                   $08a9:
08A9  3E 40          ld a, $40
08AB  18 02          jr $08af
                   $08ad:
08AD  3E 20          ld a, $20
                   $08af:
08AF  E0 1C          ldh (NR32_FF1C), a
08B1  C9             ret
                   ----------------
                   $08b2:
08B2  CB 5F          bit 3, a
08B4  C0             ret nz
                   ----------------
08B5  79             ld a, c
08B6  E0 21          ldh (NR42_FF21), a
08B8  C3 F1 06       jp $06f1
                   $08bb:
08BB  C8             ret z
                   ----------------
08BC  16 04          ld d, $04
08BE  CD 40 06       call $0640
08C1  79             ld a, c
08C2  E6 F0          and $f0
08C4  CB 37          swap a
08C6  5F             ld e, a
08C7  FA 6C DA       ld a, ($da6c)
08CA  A3             and e
08CB  7E             ld a, (hl)
08CC  28 07          jr z, $08d5
08CE  CD 1D 06       call $061d
08D1  54             ld d, h
08D2  5D             ld e, l
08D3  18 0B          jr $08e0
                   $08d5:
08D5  CD 1D 06       call $061d
08D8  79             ld a, c
08D9  E6 0F          and $0f
08DB  85             add a, l
08DC  5F             ld e, a
08DD  8C             adc a, h
08DE  93             sub e
08DF  57             ld d, a
                   $08e0:
08E0  C3 4C 06       jp $064c
08E3  00             nop
08E4  16 04          ld d, $04
08E6  CD 40 06       call $0640
08E9  56             ld d, (hl)
08EA  FA 6C DA       ld a, ($da6c)
08ED  3D             dec a
08EE  18 02          jr $08f2
08F0  D6 03          sub $03
08F2  FE 03          cp $03
08F4  30 FA          jr nc, $08f0
08F6  87             add a, a
08F7  C6 FF          add a, $ff
08F9  6F             ld l, a
08FA  CE 08          adc a, $08
08FC  95             sub l
08FD  67             ld h, a
08FE  E9             jp hl
08FF  18 09          jr $090a
0901  18 03          jr $0906
0903  7A             ld a, d
0904  18 08          jr $090e
0906  79             ld a, c
0907  CB 37          swap a
0909  FE 79          cp $79
090B  E6 0F          and $0f
090D  82             add a, d
090E  CD 1D 06       call $061d
0911  54             ld d, h
0912  5D             ld e, l
0913  C3 4C 06       jp $064c
                   $0916:
0916  C8             ret z
                   ----------------
0917  16 00          ld d, $00
0919  CD 40 06       call $0640
091C  2A             ld a, (hl+)
091D  81             add a, c
091E  5F             ld e, a
091F  8E             adc a, (hl)
0920  93             sub e
0921  57             ld d, a
0922  C3 4C 06       jp $064c
                   $0925:
0925  C8             ret z
                   ----------------
0926  16 00          ld d, $00
0928  CD 40 06       call $0640
092B  2A             ld a, (hl+)
092C  91             sub c
092D  5F             ld e, a
092E  9F             sbc a, a
092F  86             add a, (hl)
0930  57             ld d, a
0931  C3 4C 06       jp $064c
0934  28 55          jr z, $098b
0936  16 00          ld d, $00
0938  CD 40 06       call $0640
093B  E5             push hl
093C  2A             ld a, (hl+)
093D  5F             ld e, a
093E  2A             ld a, (hl+)
093F  57             ld d, a
0940  2A             ld a, (hl+)
0941  66             ld h, (hl)
0942  6F             ld l, a
0943  7C             ld a, h
0944  BA             cp d
0945  38 1A          jr c, $0961
0947  20 06          jr nz, $094f
0949  7D             ld a, l
094A  BB             cp e
094B  38 14          jr c, $0961
094D  28 2A          jr z, $0979
094F  79             ld a, c
0950  83             add a, e
0951  5F             ld e, a
0952  8A             adc a, d
0953  93             sub e
0954  57             ld d, a
0955  7C             ld a, h
0956  BA             cp d
0957  38 1E          jr c, $0977
0959  20 1E          jr nz, $0979
095B  7D             ld a, l
095C  BB             cp e
095D  38 18          jr c, $0977
095F  18 18          jr $0979
0961  7B             ld a, e
0962  91             sub c
0963  5F             ld e, a
0964  9F             sbc a, a
0965  82             add a, d
0966  57             ld d, a
0967  CB 7A          bit 7, d
0969  20 0C          jr nz, $0977
096B  7A             ld a, d
096C  BC             cp h
096D  38 08          jr c, $0977
096F  20 08          jr nz, $0979
0971  7B             ld a, e
0972  BD             cp l
0973  38 02          jr c, $0977
0975  18 02          jr $0979
0977  54             ld d, h
0978  5D             ld e, l
0979  E1             pop hl
097A  7B             ld a, e
097B  22             ld (hl+), a
097C  72             ld (hl), d
097D  3E 04          ld a, $04
097F  85             add a, l
0980  6F             ld l, a
0981  8C             adc a, h
0982  95             sub l
0983  67             ld h, a
0984  7E             ld a, (hl)
0985  CB BE          res 7, (hl)
0987  67             ld h, a
0988  C3 4E 06       jp $064e
098B  16 04          ld d, $04
098D  CD 40 06       call $0640
0990  3A             ld a, (hl-)
0991  54             ld d, h
0992  5D             ld e, l
0993  CD 1D 06       call $061d
0996  7C             ld a, h
0997  12             ld (de), a
0998  1B             dec de
0999  7D             ld a, l
099A  12             ld (de), a
099B  E1             pop hl
099C  F1             pop af
099D  A7             and a
099E  F5             push af
099F  E9             jp hl
09A0  C0             ret nz
                   ----------------
09A1  78             ld a, b
09A2  C6 FE          add a, $fe
09A4  CE 03          adc a, $03
09A6  87             add a, a
09A7  27             daa
09A8  1F             rra
09A9  57             ld d, a
09AA  FA 6B DA       ld a, ($da6b)
09AD  2F             cpl
09AE  A2             and d
09AF  C8             ret z
                   ----------------
09B0  79             ld a, c
09B1  E6 0F          and $0f
09B3  57             ld d, a
09B4  79             ld a, c
09B5  E6 F0          and $f0
09B7  5F             ld e, a
09B8  CB 33          swap e
09BA  78             ld a, b
09BB  87             add a, a
09BC  87             add a, a
09BD  80             add a, b
09BE  C6 12          add a, $12
09C0  4F             ld c, a
09C1  F2             ld a, ($ff00+c)
09C2  E6 F0          and $f0
09C4  CB 37          swap a
09C6  92             sub d
09C7  30 01          jr nc, $09ca
09C9  AF             xor a
09CA  83             add a, e
09CB  FE 10          cp $10
09CD  38 02          jr c, $09d1
09CF  3E 0F          ld a, $0f
09D1  CB 37          swap a
09D3  E2             ld ($ff00+c), a
09D4  0C             inc c
09D5  0C             inc c
09D6  F2             ld a, ($ff00+c)
09D7  F6 80          or $80
09D9  E2             ld ($ff00+c), a
09DA  18 04          jr $09e0
09DC  28 BD          jr z, $099b
09DE  B9             cp c
09DF  C0             ret nz
                   ----------------
09E0  78             ld a, b
09E1  87             add a, a
09E2  C6 A0          add a, $a0
09E4  6F             ld l, a
09E5  CE 06          adc a, $06
09E7  95             sub l
09E8  67             ld h, a
09E9  E9             jp hl
                   --------sub start--------
                   $09ea:
09EA  78             ld a, b
09EB  E6 F0          and $f0
09ED  CB 37          swap a
09EF  C8             ret z
                   ----------------
09F0  3D             dec a
09F1  87             add a, a
09F2  5F             ld e, a
09F3  87             add a, a
09F4  83             add a, e
09F5  85             add a, l
09F6  6F             ld l, a
09F7  8C             adc a, h
09F8  95             sub l
09F9  67             ld h, a
09FA  17             rla
09FB  C9             ret
                   ----------------
                   --------sub start--------
                   $09fc:
09FC  FA 6D DA       ld a, ($da6d)
09FF  B7             or a
0A00  C2 B1 0B       jp nz, $0bb1
0A03  21 61 DA       ld hl, $da61
0A06  11 76 DA       ld de, $da76
0A09  CD 10 06       call $0610
0A0C  F5             push af
0A0D  30 3F          jr nc, $0a4e
0A0F  78             ld a, b
0A10  E6 0F          and $0f
0A12  FE 03          cp $03
0A14  28 08          jr z, $0a1e
0A16  7D             ld a, l
0A17  EA 72 DA       ld ($da72), a
0A1A  7C             ld a, h
0A1B  EA 73 DA       ld ($da73), a
0A1E  21 57 DA       ld hl, $da57
0A21  2A             ld a, (hl+)
0A22  66             ld h, (hl)
0A23  6F             ld l, a
0A24  CD EA 09       call $09ea
0A27  FA 77 DA       ld a, ($da77)
0A2A  CB BF          res 7, a
0A2C  28 1D          jr z, $0a4b
0A2E  FA 6B DA       ld a, ($da6b)
0A31  CB 47          bit 0, a
0A33  20 19          jr nz, $0a4e
0A35  2A             ld a, (hl+)
0A36  E0 10          ldh (NR10_FF10), a
0A38  2A             ld a, (hl+)
0A39  E0 11          ldh (NR11_FF11), a
0A3B  2A             ld a, (hl+)
0A3C  E0 12          ldh (NR12_FF12), a
0A3E  2A             ld a, (hl+)
0A3F  EA 7A DA       ld ($da7a), a
0A42  2A             ld a, (hl+)
0A43  EA 7B DA       ld ($da7b), a
0A46  AF             xor a
0A47  EA 7C DA       ld ($da7c), a
0A4A  7E             ld a, (hl)
                   $0a4b:
0A4B  EA 77 DA       ld ($da77), a
                   $0a4e:
0A4E  1E 00          ld e, $00
0A50  CD 47 07       call $0747
0A53  F1             pop af
0A54  DC A8 06       call c, $06a8
0A57  FA 7A DA       ld a, ($da7a)
0A5A  4F             ld c, a
0A5B  FA 7B DA       ld a, ($da7b)
0A5E  47             ld b, a
0A5F  B1             or c
0A60  21 7C DA       ld hl, $da7c
0A63  1E 00          ld e, $00
0A65  C4 02 07       call nz, $0702
0A68  21 63 DA       ld hl, $da63
0A6B  11 86 DA       ld de, $da86
0A6E  CD 10 06       call $0610
0A71  F5             push af
0A72  30 3D          jr nc, $0ab1
0A74  78             ld a, b
0A75  E6 0F          and $0f
0A77  FE 03          cp $03
0A79  28 08          jr z, $0a83
0A7B  7D             ld a, l
0A7C  EA 82 DA       ld ($da82), a
0A7F  7C             ld a, h
0A80  EA 83 DA       ld ($da83), a
0A83  21 57 DA       ld hl, $da57
0A86  2A             ld a, (hl+)
0A87  66             ld h, (hl)
0A88  6F             ld l, a
0A89  CD EA 09       call $09ea
0A8C  FA 87 DA       ld a, ($da87)
0A8F  CB BF          res 7, a
0A91  28 1B          jr z, $0aae
0A93  FA 6B DA       ld a, ($da6b)
0A96  CB 4F          bit 1, a
0A98  20 17          jr nz, $0ab1
0A9A  23             inc hl
0A9B  2A             ld a, (hl+)
0A9C  E0 16          ldh (NR21_FF16), a
0A9E  2A             ld a, (hl+)
0A9F  E0 17          ldh (NR22_FF17), a
0AA1  2A             ld a, (hl+)
0AA2  EA 8A DA       ld ($da8a), a
0AA5  2A             ld a, (hl+)
0AA6  EA 8B DA       ld ($da8b), a
0AA9  AF             xor a
0AAA  EA 8C DA       ld ($da8c), a
0AAD  7E             ld a, (hl)
0AAE  EA 87 DA       ld ($da87), a
                   $0ab1:
0AB1  1E 01          ld e, $01
0AB3  CD 47 07       call $0747
0AB6  F1             pop af
0AB7  DC BB 06       call c, $06bb
0ABA  FA 8A DA       ld a, ($da8a)
0ABD  4F             ld c, a
0ABE  FA 8B DA       ld a, ($da8b)
0AC1  47             ld b, a
0AC2  B1             or c
0AC3  21 8C DA       ld hl, $da8c
0AC6  1E 01          ld e, $01
0AC8  C4 02 07       call nz, $0702
0ACB  21 65 DA       ld hl, $da65
0ACE  11 96 DA       ld de, $da96
0AD1  CD 10 06       call $0610
0AD4  F5             push af
0AD5  D2 20 0B       jp nc, $0b20
0AD8  78             ld a, b
0AD9  E6 0F          and $0f
0ADB  FE 03          cp $03
0ADD  28 08          jr z, $0ae7
0ADF  7D             ld a, l
0AE0  EA 92 DA       ld ($da92), a
0AE3  7C             ld a, h
0AE4  EA 93 DA       ld ($da93), a
0AE7  21 59 DA       ld hl, $da59
0AEA  2A             ld a, (hl+)
0AEB  66             ld h, (hl)
0AEC  6F             ld l, a
0AED  CD EA 09       call $09ea
0AF0  FA 97 DA       ld a, ($da97)
0AF3  CB BF          res 7, a
0AF5  28 26          jr z, $0b1d
0AF7  FA 6B DA       ld a, ($da6b)
0AFA  CB 57          bit 2, a
0AFC  20 22          jr nz, $0b20
0AFE  2A             ld a, (hl+)
0AFF  E0 1B          ldh (NR31_FF1B), a
0B01  2A             ld a, (hl+)
0B02  E0 1C          ldh (NR32_FF1C), a
0B04  2A             ld a, (hl+)
0B05  E5             push hl
0B06  21 6A DA       ld hl, $da6a
0B09  BE             cp (hl)
0B0A  28 03          jr z, $0b0f
0B0C  CD E0 07       call $07e0
                   $0b0f:
0B0F  E1             pop hl
0B10  2A             ld a, (hl+)
0B11  EA 9A DA       ld ($da9a), a
0B14  2A             ld a, (hl+)
0B15  EA 9B DA       ld ($da9b), a
0B18  AF             xor a
0B19  EA 9C DA       ld ($da9c), a
0B1C  7E             ld a, (hl)
0B1D  EA 97 DA       ld ($da97), a
                   $0b20:
0B20  1E 02          ld e, $02
0B22  CD 47 07       call $0747
0B25  F1             pop af
0B26  DC CE 06       call c, $06ce
0B29  FA 9A DA       ld a, ($da9a)
0B2C  4F             ld c, a
0B2D  FA 9B DA       ld a, ($da9b)
0B30  47             ld b, a
0B31  B1             or c
0B32  21 9C DA       ld hl, $da9c
0B35  1E 02          ld e, $02
0B37  C4 02 07       call nz, $0702
0B3A  21 67 DA       ld hl, $da67
0B3D  2A             ld a, (hl+)
0B3E  4F             ld c, a
0B3F  46             ld b, (hl)
0B40  CD 01 06       call $0601
0B43  FE 48          cp $48
0B45  F5             push af
0B46  30 4C          jr nc, $0b94
0B48  EA A6 DA       ld ($daa6), a
0B4B  CD 2A 06       call $062a
0B4E  EA A2 DA       ld ($daa2), a
0B51  21 5B DA       ld hl, $da5b
0B54  2A             ld a, (hl+)
0B55  66             ld h, (hl)
0B56  6F             ld l, a
0B57  CD EA 09       call $09ea
0B5A  FA A7 DA       ld a, ($daa7)
0B5D  CB BF          res 7, a
0B5F  28 30          jr z, $0b91
0B61  FA 6B DA       ld a, ($da6b)
0B64  CB 5F          bit 3, a
0B66  20 2C          jr nz, $0b94
0B68  2A             ld a, (hl+)
0B69  E0 21          ldh (NR42_FF21), a
0B6B  2A             ld a, (hl+)
0B6C  EA AB DA       ld ($daab), a
0B6F  2A             ld a, (hl+)
0B70  EA AC DA       ld ($daac), a
0B73  AF             xor a
0B74  EA AD DA       ld ($daad), a
0B77  7E             ld a, (hl)
0B78  E6 3F          and $3f
0B7A  E0 20          ldh (NR41_FF20), a
0B7C  FA A2 DA       ld a, ($daa2)
0B7F  57             ld d, a
0B80  7E             ld a, (hl)
0B81  E6 80          and $80
0B83  CB 37          swap a
0B85  EA A8 DA       ld ($daa8), a
0B88  B2             or d
0B89  EA A2 DA       ld ($daa2), a
0B8C  7E             ld a, (hl)
0B8D  E6 40          and $40
0B8F  F6 80          or $80
0B91  EA A7 DA       ld ($daa7), a
                   $0b94:
0B94  1E 03          ld e, $03
0B96  CD 47 07       call $0747
0B99  F1             pop af
0B9A  DC F1 06       call c, $06f1
0B9D  FA AB DA       ld a, ($daab)
0BA0  4F             ld c, a
0BA1  FA AC DA       ld a, ($daac)
0BA4  47             ld b, a
0BA5  B1             or c
0BA6  21 AD DA       ld hl, $daad
0BA9  1E 03          ld e, $03
0BAB  C4 02 07       call nz, $0702
0BAE  C3 59 0C       jp $0c59
                   $0bb1:
0BB1  FA 6B DA       ld a, ($da6b)
0BB4  CB 47          bit 0, a
0BB6  20 12          jr nz, $0bca
0BB8  21 61 DA       ld hl, $da61
0BBB  2A             ld a, (hl+)
0BBC  4F             ld c, a
0BBD  46             ld b, (hl)
0BBE  CD 01 06       call $0601
0BC1  79             ld a, c
0BC2  B7             or a
0BC3  28 05          jr z, $0bca
0BC5  1E 00          ld e, $00
0BC7  CD 47 07       call $0747
                   $0bca:
0BCA  FA 7A DA       ld a, ($da7a)
0BCD  4F             ld c, a
0BCE  FA 7B DA       ld a, ($da7b)
0BD1  47             ld b, a
0BD2  B1             or c
0BD3  21 7C DA       ld hl, $da7c
0BD6  1E 00          ld e, $00
0BD8  C4 02 07       call nz, $0702
0BDB  FA 6B DA       ld a, ($da6b)
0BDE  CB 4F          bit 1, a
0BE0  20 12          jr nz, $0bf4
0BE2  21 63 DA       ld hl, $da63
0BE5  2A             ld a, (hl+)
0BE6  4F             ld c, a
0BE7  46             ld b, (hl)
0BE8  CD 01 06       call $0601
0BEB  79             ld a, c
0BEC  B7             or a
0BED  28 05          jr z, $0bf4
0BEF  1E 01          ld e, $01
0BF1  CD 47 07       call $0747
                   $0bf4:
0BF4  FA 8A DA       ld a, ($da8a)
0BF7  4F             ld c, a
0BF8  FA 8B DA       ld a, ($da8b)
0BFB  47             ld b, a
0BFC  B1             or c
0BFD  21 8C DA       ld hl, $da8c
0C00  1E 01          ld e, $01
0C02  C4 02 07       call nz, $0702
0C05  FA 6B DA       ld a, ($da6b)
0C08  CB 57          bit 2, a
0C0A  20 12          jr nz, $0c1e
0C0C  21 65 DA       ld hl, $da65
0C0F  2A             ld a, (hl+)
0C10  4F             ld c, a
0C11  46             ld b, (hl)
0C12  CD 01 06       call $0601
0C15  79             ld a, c
0C16  B7             or a
0C17  28 05          jr z, $0c1e
0C19  1E 02          ld e, $02
0C1B  CD 47 07       call $0747
                   $0c1e:
0C1E  FA 9A DA       ld a, ($da9a)
0C21  4F             ld c, a
0C22  FA 9B DA       ld a, ($da9b)
0C25  47             ld b, a
0C26  B1             or c
0C27  21 9C DA       ld hl, $da9c
0C2A  1E 02          ld e, $02
0C2C  C4 02 07       call nz, $0702
0C2F  FA 6B DA       ld a, ($da6b)
0C32  CB 5F          bit 3, a
0C34  20 12          jr nz, $0c48
0C36  21 67 DA       ld hl, $da67
0C39  2A             ld a, (hl+)
0C3A  4F             ld c, a
0C3B  46             ld b, (hl)
0C3C  CD 01 06       call $0601
0C3F  79             ld a, c
0C40  B7             or a
0C41  28 05          jr z, $0c48
0C43  1E 03          ld e, $03
0C45  CD 47 07       call $0747
                   $0c48:
0C48  FA AB DA       ld a, ($daab)
0C4B  4F             ld c, a
0C4C  FA AC DA       ld a, ($daac)
0C4F  47             ld b, a
0C50  B1             or c
0C51  21 AD DA       ld hl, $daad
0C54  1E 03          ld e, $03
0C56  C4 02 07       call nz, $0702
                   $0c59:
0C59  21 6C DA       ld hl, $da6c
0C5C  34             inc (hl)
0C5D  23             inc hl
0C5E  34             inc (hl)
0C5F  FA 69 DA       ld a, ($da69)
0C62  96             sub (hl)
0C63  C0             ret nz
                   ----------------
0C64  22             ld (hl+), a
0C65  B6             or (hl)
0C66  28 0D          jr z, $0c75
0C68  3D             dec a
0C69  47             ld b, a
0C6A  AF             xor a
0C6B  22             ld (hl+), a
0C6C  B6             or (hl)
0C6D  28 10          jr z, $0c7f
0C6F  36 00          ld (hl), $00
0C71  3D             dec a
0C72  87             add a, a
0C73  18 17          jr $0c8c
                   $0c75:
0C75  FA 70 DA       ld a, ($da70)
0C78  3C             inc a
0C79  FE 40          cp $40
0C7B  20 17          jr nz, $0c94
0C7D  06 00          ld b, $00
                   $0c7f:
0C7F  FA 4E DA       ld a, ($da4e)
0C82  4F             ld c, a
0C83  FA 71 DA       ld a, ($da71)
0C86  C6 02          add a, $02
0C88  B9             cp c
0C89  20 01          jr nz, $0c8c
0C8B  AF             xor a
                   $0c8c:
0C8C  EA 71 DA       ld ($da71), a
0C8F  4F             ld c, a
0C90  CD BF 05       call $05bf
0C93  78             ld a, b
                   $0c94:
0C94  EA 70 DA       ld ($da70), a
0C97  C9             ret
                   ----------------
0C98  2C             inc l
0C99  00             nop
0C9A  9C             sbc a, h
0C9B  00             nop
0C9C  06 01          ld b, $01
0C9E  6B             ld l, e
0C9F  01 C9 01       ld bc, $01c9
0CA2  23             inc hl
0CA3  02             ld (bc), a
0CA4  77             ld (hl), a
0CA5  02             ld (bc), a
0CA6  C6 02          add a, $02
0CA8  12             ld (de), a
0CA9  03             inc bc
0CAA  56             ld d, (hl)
0CAB  03             inc bc
0CAC  9B             sbc a, e
0CAD  03             inc bc
0CAE  DA 03 16       jp c, $1603
0CB1  04             inc b
0CB2  4E             ld c, (hl)
0CB3  04             inc b
0CB4  83             add a, e
0CB5  04             inc b
0CB6  B5             or l
0CB7  04             inc b
0CB8  E5             push hl
0CB9  04             inc b
0CBA  11 05 3B       ld de, $3b05
0CBD  05             dec b
0CBE  63             ld h, e
0CBF  05             dec b
0CC0  89             adc a, c
0CC1  05             dec b
0CC2  AC             xor h
0CC3  05             dec b
0CC4  CE 05          adc a, $05
0CC6  ED             ill_ed
0CC7  05             dec b
0CC8  0A             ld a, (bc)
0CC9  06 27          ld b, $27
0CCB  06 42          ld b, $42
0CCD  06 5B          ld b, $5b
0CCF  06 72          ld b, $72
0CD1  06 89          ld b, $89
0CD3  06 9E          ld b, $9e
0CD5  06 B2          ld b, $b2
0CD7  06 C4          ld b, $c4
0CD9  06 D6          ld b, $d6
0CDB  06 E7          ld b, $e7
0CDD  06 F7          ld b, $f7
0CDF  06 06          ld b, $06
0CE1  07             rlca
0CE2  14             inc d
0CE3  07             rlca
0CE4  21 07 2D       ld hl, $2d07
0CE7  07             rlca
0CE8  39             add hl, sp
0CE9  07             rlca
0CEA  44             ld b, h
0CEB  07             rlca
0CEC  4F             ld c, a
0CED  07             rlca
0CEE  59             ld e, c
0CEF  07             rlca
0CF0  62             ld h, d
0CF1  07             rlca
0CF2  6B             ld l, e
0CF3  07             rlca
0CF4  73             ld (hl), e
0CF5  07             rlca
0CF6  7B             ld a, e
0CF7  07             rlca
0CF8  83             add a, e
0CF9  07             rlca
0CFA  8A             adc a, d
0CFB  07             rlca
0CFC  90             sub b
0CFD  07             rlca
0CFE  97             sub a
0CFF  07             rlca
0D00  9D             sbc a, l
0D01  07             rlca
0D02  A2             and d
0D03  07             rlca
0D04  A7             and a
0D05  07             rlca
0D06  AC             xor h
0D07  07             rlca
0D08  B1             or c
0D09  07             rlca
0D0A  B6             or (hl)
0D0B  07             rlca
0D0C  BA             cp d
0D0D  07             rlca
0D0E  BE             cp (hl)
0D0F  07             rlca
0D10  C1             pop bc
0D11  07             rlca
0D12  C4 07 C8       call nz, $c807
0D15  07             rlca
0D16  CB 07          rlc a
0D18  CE 07          adc a, $07
0D1A  D1             pop de
0D1B  07             rlca
0D1C  D4 07 D6       call nc, $d607
0D1F  07             rlca
0D20  D9             reti
                   ----------------
0D21  07             rlca
0D22  DB             ill_db
0D23  07             rlca
0D24  DD             ill_dd
0D25  07             rlca
0D26  DF             rst 18h
0D27  07             rlca
0D28  F0 41          ldh a, (STAT_FF41)
0D2A  E6 02          and $02
0D2C  20 FA          jr nz, $0d28
0D2E  1A             ld a, (de)
0D2F  C9             ret
                   ----------------
0D30  F0 40          ldh a, (LCDC_FF40)
0D32  E6 40          and $40
0D34  28 08          jr z, $0d3e
0D36  18 0A          jr $0d42
0D38  F0 40          ldh a, (LCDC_FF40)
0D3A  E6 08          and $08
0D3C  20 04          jr nz, $0d42
0D3E  16 98          ld d, $98
0D40  18 02          jr $0d44
0D42  16 9C          ld d, $9c
0D44  F8 03          ld hl, sp+$03
0D46  3A             ld a, (hl-)
0D47  6E             ld l, (hl)
0D48  5A             ld e, d
0D49  CB 37          swap a
0D4B  07             rlca
0D4C  67             ld h, a
0D4D  E6 03          and $03
0D4F  83             add a, e
0D50  57             ld d, a
0D51  3E E0          ld a, $e0
0D53  A4             and h
0D54  85             add a, l
0D55  6F             ld l, a
0D56  62             ld h, d
0D57  F0 41          ldh a, (STAT_FF41)
0D59  E6 02          and $02
0D5B  20 FA          jr nz, $0d57
0D5D  5E             ld e, (hl)
0D5E  C9             ret
                   ----------------
0D5F  C5             push bc
0D60  0E 6A          ld c, $6a
0D62  18 03          jr $0d67
0D64  C5             push bc
0D65  0E 68          ld c, $68
0D67  F8 04          ld hl, sp+$04
0D69  2A             ld a, (hl+)
0D6A  87             add a, a
0D6B  87             add a, a
0D6C  87             add a, a
0D6D  F6 80          or $80
0D6F  E2             ld ($ff00+c), a
0D70  0C             inc c
0D71  2A             ld a, (hl+)
0D72  87             add a, a
0D73  87             add a, a
0D74  87             add a, a
0D75  47             ld b, a
0D76  2A             ld a, (hl+)
0D77  66             ld h, (hl)
0D78  6F             ld l, a
0D79  F0 41          ldh a, (STAT_FF41)
0D7B  E6 02          and $02
0D7D  20 FA          jr nz, $0d79
0D7F  2A             ld a, (hl+)
0D80  E2             ld ($ff00+c), a
0D81  05             dec b
0D82  20 F5          jr nz, $0d79
0D84  C1             pop bc
0D85  C9             ret
                   ----------------
0D86  C5             push bc
0D87  0E 6A          ld c, $6a
0D89  18 03          jr $0d8e
0D8B  C5             push bc
0D8C  0E 68          ld c, $68
0D8E  F8 04          ld hl, sp+$04
0D90  2A             ld a, (hl+)
0D91  87             add a, a
0D92  87             add a, a
0D93  47             ld b, a
0D94  2A             ld a, (hl+)
0D95  80             add a, b
0D96  87             add a, a
0D97  F6 80          or $80
0D99  E2             ld ($ff00+c), a
0D9A  0C             inc c
0D9B  2A             ld a, (hl+)
0D9C  66             ld h, (hl)
0D9D  6F             ld l, a
0D9E  F0 41          ldh a, (STAT_FF41)
0DA0  E6 02          and $02
0DA2  20 FA          jr nz, $0d9e
0DA4  7D             ld a, l
0DA5  E2             ld ($ff00+c), a
0DA6  7C             ld a, h
0DA7  E2             ld ($ff00+c), a
0DA8  C1             pop bc
0DA9  C9             ret
                   ----------------
                   --------sub start--------
                   $0daa:
0DAA  FE 28          cp $28
0DAC  D0             ret nc
                   ----------------
0DAD  57             ld d, a
0DAE  87             add a, a
0DAF  87             add a, a
0DB0  4F             ld c, a
0DB1  7B             ld a, e
0DB2  92             sub d
0DB3  D8             ret c
                   ----------------
0DB4  C8             ret z
                   ----------------
0DB5  21 D8 DA       ld hl, $dad8
0DB8  66             ld h, (hl)
0DB9  69             ld l, c
0DBA  11 04 00       ld de, $0004
0DBD  CB 3F          srl a
0DBF  30 03          jr nc, $0dc4
0DC1  72             ld (hl), d
0DC2  19             add hl, de
0DC3  C8             ret z
                   ----------------
                   $0dc4:
0DC4  CB 3F          srl a
0DC6  30 05          jr nc, $0dcd
0DC8  72             ld (hl), d
0DC9  19             add hl, de
0DCA  72             ld (hl), d
0DCB  19             add hl, de
0DCC  C8             ret z
                   ----------------
                   $0dcd:
0DCD  72             ld (hl), d
0DCE  19             add hl, de
0DCF  72             ld (hl), d
0DD0  19             add hl, de
0DD1  72             ld (hl), d
0DD2  19             add hl, de
0DD3  72             ld (hl), d
0DD4  19             add hl, de
0DD5  3D             dec a
0DD6  20 F5          jr nz, $0dcd
0DD8  C9             ret
                   ----------------
0DD9  4F             ld c, a
0DDA  18 02          jr $0dde
0DDC  4B             ld c, e
0DDD  5F             ld e, a
0DDE  7B             ld a, e
0DDF  17             rla
0DE0  9F             sbc a, a
0DE1  57             ld d, a
0DE2  AF             xor a
0DE3  18 2A          jr $0e0f
0DE5  4F             ld c, a
0DE6  17             rla
0DE7  9F             sbc a, a
0DE8  47             ld b, a
0DE9  7B             ld a, e
0DEA  17             rla
0DEB  9F             sbc a, a
0DEC  57             ld d, a
                   --------sub start--------
                   $0ded:
0DED  78             ld a, b
0DEE  BA             cp d
0DEF  38 06          jr c, $0df7
0DF1  7B             ld a, e
0DF2  59             ld e, c
0DF3  4F             ld c, a
0DF4  7A             ld a, d
0DF5  50             ld d, b
0DF6  47             ld b, a
                   $0df7:
0DF7  B7             or a
0DF8  CA 0F 0E       jp z, $0e0f
0DFB  2E 00          ld l, $00
0DFD  06 10          ld b, $10
                   $0dff:
0DFF  29             add hl, hl
0E00  CB 11          rl c
0E02  17             rla
0E03  30 01          jr nc, $0e06
0E05  19             add hl, de
                   $0e06:
0E06  05             dec b
0E07  20 F6          jr nz, $0dff
0E09  4D             ld c, l
0E0A  44             ld b, h
0E0B  C9             ret
                   ----------------
0E0C  4F             ld c, a
0E0D  AF             xor a
0E0E  57             ld d, a
                   $0e0f:
0E0F  6F             ld l, a
0E10  06 08          ld b, $08
0E12  79             ld a, c
                   $0e13:
0E13  29             add hl, hl
0E14  17             rla
0E15  30 01          jr nc, $0e18
0E17  19             add hl, de
                   $0e18:
0E18  05             dec b
0E19  20 F8          jr nz, $0e13
0E1B  4D             ld c, l
0E1C  44             ld b, h
0E1D  C9             ret
                   ----------------
                   --------sub start--------
                   $0e1e:
0E1E  21 41 FF       ld hl, $ff41
                   $0e21:
0E21  CB 4E          bit 1, (hl)
0E23  20 FC          jr nz, $0e21
0E25  12             ld (de), a
0E26  C9             ret
                   ----------------
                   --------sub start--------
                   $0e27:
0E27  57             ld d, a
0E28  F0 40          ldh a, (LCDC_FF40)
0E2A  E6 40          and $40
0E2C  28 09          jr z, $0e37
0E2E  18 0B          jr $0e3b
0E30  57             ld d, a
0E31  F0 40          ldh a, (LCDC_FF40)
0E33  E6 08          and $08
0E35  20 04          jr nz, $0e3b
0E37  06 98          ld b, $98
0E39  18 02          jr $0e3d
                   $0e3b:
0E3B  06 9C          ld b, $9c
0E3D  2E 1F          ld l, $1f
0E3F  7A             ld a, d
0E40  A5             and l
0E41  57             ld d, a
0E42  7B             ld a, e
0E43  A5             and l
0E44  48             ld c, b
0E45  CB 37          swap a
0E47  07             rlca
0E48  5F             ld e, a
0E49  E6 03          and $03
0E4B  81             add a, c
0E4C  47             ld b, a
0E4D  3E E0          ld a, $e0
0E4F  A3             and e
0E50  82             add a, d
0E51  4F             ld c, a
0E52  F8 02          ld hl, sp+$02
                   $0e54:
0E54  F0 41          ldh a, (STAT_FF41)
0E56  E6 02          and $02
0E58  20 FA          jr nz, $0e54
0E5A  7E             ld a, (hl)
0E5B  02             ld (bc), a
0E5C  E1             pop hl
0E5D  33             inc sp
0E5E  E9             jp hl
0E5F  4F             ld c, a
0E60  06 00          ld b, $00
0E62  C3 C9 0E       jp $0ec9
0E65  4F             ld c, a
0E66  06 00          ld b, $00
0E68  CD C9 0E       call $0ec9
0E6B  4B             ld c, e
0E6C  42             ld b, d
0E6D  C9             ret
                   ----------------
0E6E  16 00          ld d, $00
0E70  4F             ld c, a
0E71  07             rlca
0E72  9F             sbc a, a
0E73  47             ld b, a
0E74  C3 CD 0E       jp $0ecd
0E77  16 00          ld d, $00
0E79  4F             ld c, a
0E7A  07             rlca
0E7B  9F             sbc a, a
0E7C  47             ld b, a
0E7D  CD CD 0E       call $0ecd
0E80  4B             ld c, e
0E81  42             ld b, d
0E82  C9             ret
                   ----------------
0E83  4F             ld c, a
0E84  CD C5 0E       call $0ec5
0E87  C9             ret
                   ----------------
0E88  4F             ld c, a
0E89  CD C5 0E       call $0ec5
0E8C  4B             ld c, e
0E8D  42             ld b, d
0E8E  C9             ret
                   ----------------
                   --------sub start--------
                   $0e8f:
0E8F  7B             ld a, e
0E90  59             ld e, c
0E91  4F             ld c, a
0E92  7A             ld a, d
0E93  50             ld d, b
0E94  47             ld b, a
0E95  C3 CD 0E       jp $0ecd
0E98  7B             ld a, e
0E99  59             ld e, c
0E9A  4F             ld c, a
0E9B  7A             ld a, d
0E9C  50             ld d, b
0E9D  47             ld b, a
0E9E  CD CD 0E       call $0ecd
0EA1  4B             ld c, e
0EA2  42             ld b, d
0EA3  C9             ret
                   ----------------
                   --------sub start--------
                   $0ea4:
0EA4  4F             ld c, a
0EA5  CD 03 0F       call $0f03
0EA8  C9             ret
                   ----------------
0EA9  4F             ld c, a
0EAA  CD 03 0F       call $0f03
0EAD  4B             ld c, e
0EAE  42             ld b, d
0EAF  C9             ret
                   ----------------
0EB0  7B             ld a, e
0EB1  59             ld e, c
0EB2  4F             ld c, a
0EB3  7A             ld a, d
0EB4  50             ld d, b
0EB5  47             ld b, a
0EB6  C3 06 0F       jp $0f06
0EB9  7B             ld a, e
0EBA  59             ld e, c
0EBB  4F             ld c, a
0EBC  7A             ld a, d
0EBD  50             ld d, b
0EBE  47             ld b, a
0EBF  CD 06 0F       call $0f06
0EC2  4B             ld c, e
0EC3  42             ld b, d
0EC4  C9             ret
                   ----------------
0EC5  79             ld a, c
0EC6  07             rlca
0EC7  9F             sbc a, a
0EC8  47             ld b, a
0EC9  7B             ld a, e
0ECA  07             rlca
0ECB  9F             sbc a, a
0ECC  57             ld d, a
                   $0ecd:
0ECD  78             ld a, b
0ECE  F5             push af
0ECF  AA             xor d
0ED0  F5             push af
0ED1  CB 7A          bit 7, d
0ED3  28 06          jr z, $0edb
0ED5  97             sub a
0ED6  93             sub e
0ED7  5F             ld e, a
0ED8  9F             sbc a, a
0ED9  92             sub d
0EDA  57             ld d, a
                   $0edb:
0EDB  CB 78          bit 7, b
0EDD  28 06          jr z, $0ee5
0EDF  97             sub a
0EE0  91             sub c
0EE1  4F             ld c, a
0EE2  9F             sbc a, a
0EE3  90             sub b
0EE4  47             ld b, a
                   $0ee5:
0EE5  CD 06 0F       call $0f06
0EE8  38 16          jr c, $0f00
0EEA  F1             pop af
0EEB  E6 80          and $80
0EED  28 06          jr z, $0ef5
0EEF  97             sub a
0EF0  91             sub c
0EF1  4F             ld c, a
0EF2  9F             sbc a, a
0EF3  90             sub b
0EF4  47             ld b, a
                   $0ef5:
0EF5  F1             pop af
0EF6  E6 80          and $80
0EF8  C8             ret z
                   ----------------
0EF9  97             sub a
0EFA  93             sub e
0EFB  5F             ld e, a
0EFC  9F             sbc a, a
0EFD  92             sub d
0EFE  57             ld d, a
0EFF  C9             ret
                   ----------------
0F00  F1             pop af
0F01  F1             pop af
0F02  C9             ret
                   ----------------
                   --------sub start--------
                   $0f03:
0F03  06 00          ld b, $00
0F05  50             ld d, b
                   --------sub start--------
                   $0f06:
0F06  7B             ld a, e
0F07  B2             or d
0F08  20 07          jr nz, $0f11
0F0A  01 00 00       ld bc, $0000
0F0D  50             ld d, b
0F0E  59             ld e, c
0F0F  37             scf
0F10  C9             ret
                   ----------------
                   $0f11:
0F11  69             ld l, c
0F12  60             ld h, b
0F13  01 00 00       ld bc, $0000
0F16  B7             or a
0F17  3E 10          ld a, $10
                   $0f19:
0F19  F5             push af
0F1A  CB 15          rl l
0F1C  CB 14          rl h
0F1E  CB 11          rl c
0F20  CB 10          rl b
0F22  C5             push bc
0F23  79             ld a, c
0F24  9B             sbc a, e
0F25  4F             ld c, a
0F26  78             ld a, b
0F27  9A             sbc a, d
0F28  47             ld b, a
0F29  3F             ccf
0F2A  38 08          jr c, $0f34
0F2C  C1             pop bc
0F2D  F1             pop af
0F2E  3D             dec a
0F2F  B7             or a
0F30  20 E7          jr nz, $0f19
0F32  18 08          jr $0f3c
                   $0f34:
0F34  F1             pop af
0F35  F1             pop af
0F36  3D             dec a
0F37  37             scf
0F38  20 DF          jr nz, $0f19
0F3A  18 00          jr $0f3c
                   $0f3c:
0F3C  50             ld d, b
0F3D  59             ld e, c
0F3E  CB 15          rl l
0F40  4D             ld c, l
0F41  CB 14          rl h
0F43  44             ld b, h
0F44  B7             or a
0F45  C9             ret
                   ----------------
0F46  C5             push bc
0F47  E8 F0          add sp, $f0
0F49  F8 00          ld hl, sp+$00
0F4B  0E 10          ld c, $10
0F4D  AF             xor a
0F4E  EF             rst 28h
0F4F  F8 00          ld hl, sp+$00
0F51  3E 89          ld a, $89
0F53  22             ld (hl+), a
0F54  3E 03          ld a, $03
0F56  32             ld (hl-), a
0F57  CD 93 0F       call $0f93
0F5A  0E 00          ld c, $00
0F5C  3E 30          ld a, $30
0F5E  E2             ld ($ff00+c), a
0F5F  F2             ld a, ($ff00+c)
0F60  F2             ld a, ($ff00+c)
0F61  1E 04          ld e, $04
0F63  F2             ld a, ($ff00+c)
0F64  47             ld b, a
0F65  3E 20          ld a, $20
0F67  E2             ld ($ff00+c), a
0F68  F2             ld a, ($ff00+c)
0F69  F2             ld a, ($ff00+c)
0F6A  3E 10          ld a, $10
0F6C  E2             ld ($ff00+c), a
0F6D  F2             ld a, ($ff00+c)
0F6E  F2             ld a, ($ff00+c)
0F6F  3E 30          ld a, $30
0F71  E2             ld ($ff00+c), a
0F72  F2             ld a, ($ff00+c)
0F73  F2             ld a, ($ff00+c)
0F74  F2             ld a, ($ff00+c)
0F75  F2             ld a, ($ff00+c)
0F76  B8             cp b
0F77  20 07          jr nz, $0f80
0F79  1D             dec e
0F7A  20 E8          jr nz, $0f64
0F7C  1E 00          ld e, $00
0F7E  18 0A          jr $0f8a
0F80  F8 01          ld hl, sp+$01
0F82  3E 00          ld a, $00
0F84  32             ld (hl-), a
0F85  CD 93 0F       call $0f93
0F88  1E 01          ld e, $01
0F8A  E8 10          add sp, $10
0F8C  C1             pop bc
0F8D  C9             ret
                   ----------------
0F8E  F8 02          ld hl, sp+$02
0F90  2A             ld a, (hl+)
0F91  66             ld h, (hl)
0F92  6F             ld l, a
0F93  C5             push bc
0F94  7E             ld a, (hl)
0F95  E6 07          and $07
0F97  28 39          jr z, $0fd2
0F99  F5             push af
0F9A  0E 00          ld c, $00
0F9C  E2             ld ($ff00+c), a
0F9D  3E 30          ld a, $30
0F9F  E2             ld ($ff00+c), a
0FA0  06 10          ld b, $10
0FA2  1E 08          ld e, $08
0FA4  2A             ld a, (hl+)
0FA5  57             ld d, a
0FA6  CB 3A          srl d
0FA8  3E 10          ld a, $10
0FAA  38 02          jr c, $0fae
0FAC  3E 20          ld a, $20
0FAE  E2             ld ($ff00+c), a
0FAF  F2             ld a, ($ff00+c)
0FB0  F2             ld a, ($ff00+c)
0FB1  3E 30          ld a, $30
0FB3  E2             ld ($ff00+c), a
0FB4  F2             ld a, ($ff00+c)
0FB5  F2             ld a, ($ff00+c)
0FB6  1D             dec e
0FB7  20 ED          jr nz, $0fa6
0FB9  05             dec b
0FBA  20 E6          jr nz, $0fa2
0FBC  3E 20          ld a, $20
0FBE  E2             ld ($ff00+c), a
0FBF  F2             ld a, ($ff00+c)
0FC0  F2             ld a, ($ff00+c)
0FC1  3E 30          ld a, $30
0FC3  E2             ld ($ff00+c), a
0FC4  11 D0 20       ld de, $20d0
0FC7  F0 00          ldh a, (JOYP_FF00)
0FC9  1B             dec de
0FCA  7A             ld a, d
0FCB  B3             or e
0FCC  20 F9          jr nz, $0fc7
0FCE  F1             pop af
0FCF  3D             dec a
0FD0  20 C7          jr nz, $0f99
0FD2  C1             pop bc
0FD3  C9             ret
                   ----------------
0FD4  C5             push bc
0FD5  79             ld a, c
0FD6  CD E2 0F       call $0fe2
0FD9  C9             ret
                   ----------------
0FDA  F8 03          ld hl, sp+$03
0FDC  3A             ld a, (hl-)
0FDD  6E             ld l, (hl)
0FDE  60             ld h, b
0FDF  47             ld b, a
0FE0  7D             ld a, l
0FE1  69             ld l, c
0FE2  CB 38          srl b
0FE4  1F             rra
0FE5  4F             ld c, a
0FE6  30 09          jr nc, $0ff1
0FE8  F0 41          ldh a, (STAT_FF41)
0FEA  E6 02          and $02
0FEC  20 FA          jr nz, $0fe8
0FEE  2A             ld a, (hl+)
0FEF  12             ld (de), a
0FF0  13             inc de
0FF1  CB 38          srl b
0FF3  CB 19          rr c
0FF5  04             inc b
0FF6  0C             inc c
0FF7  30 26          jr nc, $101f
0FF9  18 12          jr $100d
0FFB  F0 41          ldh a, (STAT_FF41)
0FFD  E6 02          and $02
0FFF  20 FA          jr nz, $0ffb