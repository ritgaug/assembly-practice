@ r0 to r6 are general purpose registers
@ r7 has special functionality called syscal. used when talking to operating system. we can store a numeric value in r7 that will map in a table to maybe end a program
@ splr related to stack pointer
@ pc program counter
@ stack memory is stored in the RAM of the computer. List of numbers can be stored in memory
@ sp registers gives the address of the next available memory in stack
@ the stack memory grows in 4s
@ lr stores the location where the code would jump back to after a function is executed

/*this program will move data into r0
and then data will be moved to r7 (storing information about syscalls). We need a method to communicate with the OS. This method comes in 2 pieces. system interrupts, and system called numbers
we put a special number into r7 which tells the system what we would like it to do (we call an interrupt, which tells the OS that we need something done)
the OS will read r7, takes the number in r7 which will correspond to a number in a look up table the OS references. that number will correspond with a spesific task.
in this program the number will end the program*/

.global _start
_start:
	MOV R0,#30	@Move 1 into r0
	
	MOV R7,#1
	SWI 0