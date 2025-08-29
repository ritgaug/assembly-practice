@pushing data on the stack

.global _start
_start:
	LDR R0,	=list				@Load data (location of the first value from our list) from stack to R0,
								
	LDR R1,[R0]					@R0 hold an address, the address hold the value, so this puts that value in R1.
	LDR R2,[R0,#4]				@R0 holds an address + 4 to incriment to next memory address, puts this value in R2


.data						@this is the data section
list:						@the name of the data
	.word 4,5,-9,1,0,2,-3	@.word says each number will be a word long
	
/*the shows where on the stack our first value (4) is located, now we retrieve it
  refer to line 7*/

 