; Exercise 3
; Michalis Papadopoullos
; 031 14702

; general info
; 0x2000 INPUT PORT
; 0x3000 OUTPUT PORT
; RLC :: Each bit of the Accumulator
;        is rotated left by one position.
;        Bit D7 is placed in the position of D0 as well as in the CarryFlag.
;        CY is modified according to bit D7. Any other bit is not affected. 
jmp start	    ; start the program

;data -------------
limit:  equ 63h	    ; 0x63 = 99 (decimal)
;------------------

;code -------------
start:  lda 2000h   ; read from INPUT port
	cpi limit   ; compare input with 99
	jnc TOGGLE  ; (input > 99) ? toggleLeds() : continue
	mvi B, 0ffh ; use B register as a counter  
; process the number
DECA:   inr B	    ; initialize B = 0xff + 0x01 = 0x00
	sui 0ah	    ; subtract 10
	jnc DECA    ; (num > 0) ? goto DECA : continue
	adi 0ah	    ; fix quotient (accumulator)
	mov C, A    ; C <= Accumulator (C: temp var)
	mov A, B    ; Accumulator <= <DECADES>
	RLC	    ; Move LSB to MSB
	RLC	    ;   by rotating bits left
	RLC	    ;   we need a total of four (4)
	RLC	    ;   rotate operations
	add C	    ; now ACCUM holds <DECADES> in MSB and <UNITS> in LSB
	cma	    ; Complement ACCUMULATOR (A = ~A) for LEDS
	sta 3000h   ; print to OUTPUT port
	jmp start   ; loop from start
	
; toggleLeds() :: remember that a led is turned ON
; when the respective output line is set LOW	
TOGGLE: mvi A, 00h  ; set ACCUMULATOR = 0
	sta 3000h   ; store OUTPUT (all leds ON)
	call DELAY  ; a small delay of 5 cycles
	cma	    ; Complement Accumulator => set ACCUMULATOR = 255
	sta 3000h   ; store OUPTUT (all leds OFF)
	
DELAY:  nop
	nop
	nop
	nop
	nop
	ret

hlt		    ; halt program
; -----[ EOF ]---
