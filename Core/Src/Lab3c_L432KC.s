/*-----------------DO NOT MODIFY--------*/
.global Display
.global printf
.global cr
.extern value
.extern getstring
.syntax unified

.text
Display:
/*----------------- gabofv --------------------*/

PUSH {lr}
PUSH {r0-r5}

BL cr
LDR r0, =Hello
BL printf

BL cr
LDR r0, =Entries
BL printf

// Number of entries
LDR r0, [SP, #0x1C]
MOV r4, r0
BL value

// Start of array
LDR r5, [SP, #0x20]

REPEAT:

BL cr
LDR r0, [r5], 0x4
BL value

SUBS r4, #0x1

// Exit on zero
CBZ r4, END

B REPEAT

END:

BL cr
LDR r0, =endmsg
BL printf

POP {r0-r5}
POP {pc}

/*-------Code ends here ---------------------*/

/*-----------------DO NOT MODIFY--------*/
.data
/*--------------------------------------*/
Hello:
.string "The numbers are sorted with bubblesort algorithm"
Entries:
.string "The number of entries was "
Array:
.string "Sorted from smallest to biggest, the numbers are:"
endmsg:
.string "program ended"
