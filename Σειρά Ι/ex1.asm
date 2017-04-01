; Michalis Papadopoullos
; 031 14702
; Exercise 1 - Microsystems
; Intel 8085 Disassembly process

jmp start ; jump to the program
; data section

; ------------
; code section
; start = 0x0800
start:  mvi C, 08 ; labels must be followed by an instruction
	lda 2000  ; load ACCUMULATOR = MEM[0x2000] (INPUT PORT)
L1:	ral	  ; rotate ACCUMULATOR left
	jc  L2	  ; jump @L2 if CARRY flag is set
	dcr C	  ; decrement C
	jnz L1 	  ; jump @L1 if not flag ZERO is set to 1
L2:	mov A, C  ; move contents of C to A
	cma	  ; complement ACCUMULATOR: A = ~A
	sta 3000  ; store contents of A at address 0x3000 (OUTPUT PORT)
	jmp start ; unconditional jump @start
	hlt 	  ; halt execution
; ---- [ EOF ] --