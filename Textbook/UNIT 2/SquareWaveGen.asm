ORG 0000H
LJMP MAIN
ORG 001BH
CPL P1.5
CLR TR1
MOV TL1,R1
MOV 00,R3
MOV R3,01
MOV R1,00
MOV TH1,R2
MOV 00,R4
MOV R4,02
MOV R2,00
SETB TR1
CLR TF1
RETI
ORG 0100H
MAIN: SETB P1.5
	MOV IE,#88H
	MOV TMOD,#10H
	MOV R1,#83H
	MOV R2,#0FFH
	MOV R3,#89H
	MOV R4,#0FEH
	MOV TH1,R4
	MOV TL1,R3
	SETB TR1
HERE: SJMP HERE
END