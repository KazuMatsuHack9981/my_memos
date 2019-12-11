# tas usage for Computer Architecture




## titles

* introduction  
* assemble assembler file  
* execute tmips .dat file  
* assembler grammer  
* constant  
* register  
* memory operand  
* label  
* operator  
* comment  
* example code  
* pseudo instruction  
* MIPS instruction  
* R type instruction  
* I type instruction  
	* arithmetic/logical instruction  
	* branch instruction  
	* memory access instruction  
* J type instruction  




***



## introduction
tas is the assembler for the simulator of easy CPU used  
in the class Computer Architecture A.  
assember is written in Python.  
further applications will be introduce in the third grade class.  



***



## assemble assembler file
name is the name of assembler tas's filename.  
the file name's suffix is ".s"
```
tas name
```
output file's suffix will be ".dat".  



***



## execute tmips .dat file
make sure ".dat" file is in the same directory of "testbench.v"  
also make sure to **rename ".dat" file to "memfile.dat"**.  
then type the command below to execute machine language program.  
```
iverilog -s testbench -o testbench *.v
vvp testbench
```



***
***



# assembler grammer



## constant
decimal:
```
1234
```

decimal (negative):
```
-1244
```

hex:
```
0xa6c3
```



***



## register
you can write by \$number or \$name.  
ex)
```
$1 $2 ...
$zero, $t0
```

the correspondance are shown below

* `$zero    <==>  $0`
* `$at      <==>  $1`
* `$v0-$v1  <==>  $2-$3`
* `$a0-$a3  <==>  $4-$7`
* `$t0-$t7  <==>  $8-$15`
* `$s0-$s7  <==>  $16-$23`
* `$t8-$t9  <==>  $24-$25`
* `$k0-$k1  <==>  $26-$27`
* `$gp      <==>  $28`
* `$sp      <==>  $29`
* `$fa      <==>  $30`
* `$ra      <==>  $31`




***



## memory operand
used to indicate memory address in for example, load or store.  
the format is,
```
num(register)
```
(register)+num will be the value of memory address.  

* max amount of num is 16bit.  
* num must be multiples of 4.



***



## label
address can be described as a label.  
label starts with an alphabet.  
then it continues by alphabet or number.
```
label, F001
```



***



## operator
can use "hi()" and "lo()".  
argument must be constant integer or label.  

* hi() : get upper 16bit  
* lo() : get lower 16bit

ex)  
```
hi(0x12345678)  ==>  0x1234
lo(F001)        ==>  lower 16bit of F001's address
```



***



## comment
sentence after semi-colon ";" will be a comment.  



***



## example code
```
			add	$t0, $t1, $t2
label1: lw 	$s0, -4($t0)
			.dw	1234
```



***



## pseudo instruction
?



***
***




# MIPS instruction
here are the instructions supported in this tmips.  



## R type instruction
list of r type instructions are below.

* add  
* sub  
* and  
* or  
* nor  
* slt  
	+ destination register's value will be 1  
	+ if first source register is less than second source register  
	+ otherwise destination register's value will be 0  

ex)
```
add $t0, $t1, $t2   ===>   ($t0 <- $t1 + $t2)
```



***



## I type instruction
one of the (or part of) source operand will be the immediate value.  
it is divided in the

* arithmetic instruction  
* logical instruction  
* branch instruction  
* memmory access instruction  



***
  
  

### arithmetic/logical instruction
have 3 operands.  

* register  : destination and first source operand  
* immediate : second source operand  

instructions:

* addi   
* andi   
* ori   
* lui   
	+ assign immediate to the upper 16bit  
	+ of destination register    
	+ first source register should be \$zero
	
	
	
	
***
	
	
	
### branch instruction
have 3 operands.  
compare first and second operand and jump to the instruction addr  
represented in the third operand. 

* register  : first/second operand
* immediate : third operand

instructions:

* beq  
	+ if first and second operand matches,  
	+ jump to the third operand instruction.  
	
ex) 
```
beq $t0, $t1, LABEL
```


  
  
***

  
  
### memmory access instruction
have 2 operands.

* register  : first operand  
* immediate : second operand

instructions:

* lw  
	+ load instruction.  
	+ get 32bit value from the address indicated by second operand.  
	+ then assign to the first register.  
* sw  
	* store instruction.
	+ assign value of register to the 32bit value memmory address  
	+ of the second operand  
	



***



## J type instruction
have 1 operand.  
the operand is immediate value.  
only the jump instruction is included in this tmips.  

ex)
```
j LABEL
```
 


***







