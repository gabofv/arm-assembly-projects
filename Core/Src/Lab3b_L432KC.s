/*-----------------DO NOT MODIFY--------*/
.global Sort
.global printf
.global cr
.extern value
.extern getstring
.syntax unified

.text
Sort:
/*----------------- gabofv --------------------*/

PUSH {lr}
PUSH {r0-r5}

// Get size of array from stack
LDR r0, [SP, #0x1C]

REPEAT_1:
LDR r2, =0x20001000
CMP r0, #0x1
BEQ END
MOV r1, r0

REPEAT_2:
CMP r1, #0
BEQ CONTINUE

// list[i]
LDR r3, [r2], #0x4
// list[i+1]
LDR r4, [r2]

CMP r3, r4
BHI SWAP
SUB r1, #0x1

CONTINUE:
SUB r0, #0x1
B REPEAT_1

SWAP:
MOV r5, r4
STR r3, [r2]
STR r5, [r2, #-0x4]

SUB r1, #0x1
B REPEAT_2

END:
POP {r0-r5}
POP {pc}

/*-------Code ends here ---------------------*/

/*-----------------DO NOT MODIFY--------*/
.data
/*--------------------------------------*/
