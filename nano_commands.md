# Nano Commands


## titles

 * cut  
 * copy    
 * paste  
 * selection start/stop  
 * undo  
 * redo  
 * move cursor to the next word  
 * jump to arbitrary line number  
 * replace word
 * save  
 * paste all content of other files  
 * toggle comment
 * multi-buffer mode
 * show help
 * close nano  




***



## cut
if nothing is selected, command below   
would cut the whole current line.
```
Ctl-k
```
if selected with mouse, this would cut   
only the selected part.



***



## copy
if nothing is selected, command below   
would copy the whole current line.
```
Alt-^
```
if selected with mouse, this would copy  
only the selected part.



***



## paste
```
Ctl-u
```



***



## selection start/stop
start selection by pressing
```
Ctl-^
```
then, move the cursor by arrow keys  
and press `Ctl-v` again to end selection.  
or you can  
```
Alt-^
```
to copy and end selection.



***



## undo
```
Alt-u
```



***



## redo
```
Alt-e
```



***



## move cursor to the next word
```
Ctl-Space
```



***



## jump to arbitrary line number
```
Ctl-_ [line number]
```



***



## replace word
search and replace word by
```
Ctl-\ [before]
[after]
```
keep pressing y to keep replacing.  

if you want to replace all not considering  
the current cursor postion, press
```
a
```
instead of pressing `y`.



***



## save
```
Ctl-o
```



***



## paste all content of other files
```
Ctl-r [filename]
```



***



## toggle comment
toggle comment and comment out by
```
Alt-3
```



***



## multi-buffer mode
open multiple files by multi-buffer mode by
```
nano -F file1 file2 ...
```
move through buffer(files) by
```
Alt->
Alt-<
```



***



## show help
```
Ctl-g
```



***



## close nano
```
Ctl-x
```



***



