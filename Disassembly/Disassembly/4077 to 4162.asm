4077  CD 88 39       CALL $3988
407A  B7             OR A
407B  28 0F          JR Z, $408C
407D  FE 01          CP $01
407F  28 0B          JR Z, $408C
4081  FE 02          CP $02
4083  28 F2          JR Z, $4077
4085  D6 03          SUB $03
4087  CA 2F 41       JP Z, $412F
408A  18 EB          JR $4077
408C  CD C7 19       CALL $19C7
408F  FA 15 C6       LD A, ($C615)
4092  D6 F0          SUB $F0
4094  20 28          JR NZ, $40BE
4096  3E 01          LD A, $01
4098  F5             PUSH AF
4099  33             INC SP
409A  1E 09          LD E, $09
409C  21 45 4C       LD HL, $4C45
409F  CD DE 3D       CALL $3DDE
40A2  33             INC SP
40A3  11 00 40       LD DE, $4000
40A6  06 32          LD B, $32
40A8  AF             XOR A
40A9  F5             PUSH AF
40AA  33             INC SP
40AB  21 00 00       LD HL, $0000
40AE  E5             PUSH HL
40AF  D5             PUSH DE
40B0  C5             PUSH BC
40B1  33             INC SP
40B2  1E 09          LD E, $09
40B4  21 FC 4C       LD HL, $4CFC
40B7  CD DE 3D       CALL $3DDE
40BA  E8 06          ADD SP, $06
40BC  18 B9          JR $4077
40BE  21 8B CB       LD HL, $CB8B
40C1  7E             LD A, (HL)
40C2  D6 01          SUB $01
40C4  3E 00          LD A, $00
40C6  17             RLA
40C7  EE 01          XOR $01
40C9  20 19          JR NZ, $40E4
40CB  FA 15 C6       LD A, ($C615)
40CE  B7             OR A
40CF  28 03          JR Z, $40D4
40D1  CD 6B 18       CALL $186B
40D4  CD 49 02       CALL $0249
40D7  FA C3 DA       LD A, ($DAC3)
40DA  E6 0F          AND $0F
40DC  20 03          JR NZ, $40E1
40DE  CD 3E 19       CALL $193E
40E1  CD DE 1C       CALL $1CDE
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
412F  FA 8D CB       LD A, ($CB8D)
4132  3D             DEC A
4133  28 1A          JR Z, $414F
4135  FA 8D CB       LD A, ($CB8D)
4138  D6 02          SUB $02
413A  28 58          JR Z, $4194
413C  FA 8D CB       LD A, ($CB8D)
413F  D6 03          SUB $03
4141  CA 01 42       JP Z, $4201
4144  FA 8D CB       LD A, ($CB8D)
4147  D6 04          SUB $04
4149  CA 1E 42       JP Z, $421E
414C  C3 77 40       JP $4077
414F  1E 41          LD E, $41
4151  21 4C 40       LD HL, $404C
4154  CD DE 3D       CALL $3DDE
4157  CD 71 05       CALL $0571
415A  AF             XOR A
415B  F5             PUSH AF
415C  33             INC SP
415D  1E 09          LD E, $09
415F  21 45 4C       LD HL, $4C45
4162  CD DE 3D       CALL $3DDE
