/*-----------------DO NOT MODIFY--------*/
.global Welcomeprompt
.global printf
.global cr
.extern value
.extern getstring
.syntax unified

.text
Welcomeprompt:
/*----------------- gabofv --------------------*/

PUSH {lr}
PUSH {r0}
// Temp var to store curr
PUSH {r4}
// Size of array
PUSH {r5}
// Address to store elements
PUSH {r6}

LDR r6, =0x20001000

// Print Welcome
BL cr
LDR r0, =WelcomeString
bl printf

// Input for # of entries
N_ENTRIES_INPUT:
	BL cr
	LDR r0, =Prompt
	BL printf

	BL getstring

	MOV r5, r0

	BL value

	CMP r5, #3
	BLT TOO_LOW

	CMP r5, #10
	BGT TOO_HIGH


	STR r5, [SP, #0x14]

	//BL value
	//BL cr

// Input for elements
ELEMENTS_INPUT:

	CMP r5, #1
	BEQ LAST_ELEMENT_INPUT

	BL cr
	LDR r0, =Prompt1
	BL printf

	BL getstring

	MOVS r4, r0

	BL value

	CMP r4, #0x1
	BLT INVALID_ENTRY

	STR r4, [r6], #0x4

	SUB r5, #1

	B ELEMENTS_INPUT

LAST_ELEMENT_INPUT:
	BL cr
	LDR r0, =Prompt2
	BL printf

	// Receive input
	BL getstring

	MOVS r4, r0
	BL value

	CMP r4, #0x1
	BLT INVALID_ENTRY

	STR r4, [r6]

	BL cr
	B END

INVALID_ENTRY:
	BL cr
	LDR r0, =Prompt5
	BL printf

	B ELEMENTS_INPUT

TOO_LOW:
	BL cr
	LDR r0, =Prompt3
	BL printf
	B N_ENTRIES_INPUT

TOO_HIGH:
	BL cr
	LDR r0, =Prompt4
	BL printf
	B N_ENTRIES_INPUT

END:

POP {r6}
POP {r5}
POP {r4}
POP {r0}
POP {pc}


/*-------Code ends here ---------------------*/

/*-----------------DO NOT MODIFY--------*/
.data
/*--------------------------------------*/
WelcomeString:
.string "Welcome to Wing's Bubble Sort Program"
Prompt:
.string "Please enter the number(3min-10max) of enteries followed by `enter'"
Prompt1:
.string "Please enter a number(positive only) followed by `enter'"
Prompt2:
.string "Please enter the last number(positive only) followed by `enter'"
Prompt3:
.string "Invalid entry, Please enter more than 2 entry"
Prompt4:
.string "Too many entries"
Prompt5:
.string "Negative value entered, only postive ones accepted"

