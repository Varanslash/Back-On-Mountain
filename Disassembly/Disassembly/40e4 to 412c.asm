40E4  0E C0          LD C, $C0
40E6  F0 92          LDH A, ($FF92)
40E8  91             SUB C
40E9  20 07          JR NZ, $40F2
40EB  21 D8 DA       LD HL, $DAD8
40EE  36 DF          LD (HL), $DF
40F0  18 05          JR $40F7
40F2  21 D8 DA       LD HL, $DAD8
40F5  36 C0          LD (HL), $C0
40F7  21 07 C5       LD HL, $C507
40FA  36 00          LD (HL), $00
40FC  CD DF 16       CALL $16DF
40FF  1E 19          LD E, $19
4101  21 4A 40       LD HL, $404A
4104  CD DE 3D       CALL $3DDE
4107  CD F7 10       CALL $10F7
410A  CD 3E 1E       CALL $1E3E
410D  CD 55 28       CALL $2855
4110  1E 02          LD E, $02
4112  21 DF 4C       LD HL, $4CDF
4115  CD DE 3D       CALL $3DDE
4118  21 C3 DA       LD HL, $DAC3
411B  34             INC (HL)
411C  1E 28          LD E, $28
411E  FA 07 C5       LD A, ($C507)
4121  CD AA 0D       CALL $0DAA
4124  FA D8 DA       LD A, ($DAD8)
4127  E0 92          LDH ($FF92), A
4129  CD BD 01       CALL $01BD
412C  C3 77 40       JP $4077
