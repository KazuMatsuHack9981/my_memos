# GDB Usage


## titles

* activate gdb  
* compile in debuggable way  
* stop gdb  
* start a program  
* execute shell command  
* set a breakpoint  
* breakpoint list  
* delete breakpoint  
* execute program  
* check/edit value of the variable  
* trace back  
* show source code  
* check macros  
* check all the local variables  




***


## activate gdb
```
gdb filepath
```



***



## compile in debuggable way
compile with the availability of expanding macros are
```
gcc -g3 filename
```



***



## stop gdb
```
(gdb) quit
```



***



## start a program
```
(gdb) run 
```
to run with command argument, 
```
(gdb) run arg1 arg2 ...
```
don't forget to make a breakpoint before running.  
otherwise, it will just execute the whole script.  



***



## execute shell command
to execute shell command from gdb, type
```
(gdb) shell command
```



***



## set a breakpoint
set a breakpoint on "func" by,
```
(gdb) break func
```
set a breakpoint by line number,
```
(gdb) break num
```



***



## breakpoint list
get the list of current breakpoint by
```
(gdb) info breakpoints
```



***



## delete breakpoint
delete the breakpoint on line "num" by,
```
(gdb) delete num
```



***



## execute prgram
step one line (of program) by
```
n  :  skip function
s  :  go into function
```
execute program until the next breakpoint by
```
c
```
execute program until the end of the function by
```
f
```
execute program until it breaks the current loop by
```
u
``
forcely break current function returning the value "-1" by
```
ret -1
```



***



## check/edit value of the variable
check the value of variable `var1` by
```
p var1
```
edit the value of variable by
```
p val1=val
```



***



## trace back
backtrace(trace route until the current function gets called) by 
```
bt
```



***



## show source code
```
I
```



***



## check macros
check the value of macro "name" by,
```
info macro name
```



***


## check all the local variable
```
i lo
```



***



