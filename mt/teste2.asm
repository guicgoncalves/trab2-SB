add: EQU 1
L2:
    EQU 0

SECTION TEXT
MUL_N:
	MACRO
	MULT N
	STORE N
	END
DIV_N:
	MACRO
	DIV N
	STORE N
	END
IF L1
LOAD SPACE
IF L2
INPUT SPACE
IF L1
MUL_N
IF L2
DIV_N

input n
load n
_l1:
    add m
    jmpp _l1

SECTION DATA
N: SPACE
m: const 1

;arquivo de saida depois de passar as macros:
;SECTION TEXT
;LOAD SPACE
;MULT N
;STORE N
;INPUT N
;LOAD N
;_L1: ADD M
;JMPP _L1
;SECTION DATA
;N: SPACE
;M: CONST 1