# Emacs Commands


## titles

* cut (selected)  
* cut (one word)  
* cut (one line)  
* cut (cursor to end)  
* copy (selected)  
* paste  
* paste (kill-ring)  
* undo  
* on/off toggle line number  
* save files  
* quit command   
* replace word  
* search word  
* jump to arbitrary line  
* split window  
* open new file  
* move between window
* delete the window
* use bash command
* affect commands to selected lines
* auto close bracket  
* close emacs  




***



## cut (selected)
```
Ctl-w
```



***



## cut (one word)
```
Alt-d
```



***



## cut (one line)
```
Ctl-Shift-Backspace
```



***



## cut (cursor to end)
```
Ctl-k
```



***



## copy (selected)
```
Alt-w
```



***



## paste
```
Ctl-y
```



***



## paste (kill-ring)
```
Ctl-y Alt-y
```
paste with `Ctl-y` and change what you pasted  
to the previous kill-ring content with `Alt-y`



***



## undo
```
Ctl-/
```



***



## on/off toggle line number
```
Alt-x linum-mode
```



***



## save files
```
Ctl-x s
y
```



***



## quit command
```
Ctl-g
```



***



## search word
```
Ctl-s [Enter word]
```
press `Ctl-g` to finish




***



## replace word
first, move the cursor to at least the head of the word you  
want to replace and replace each word "[before]" to "[after]" by
```
Alt-% [before] [Enter]
[after] [Enter]
y
```
this will keep searching word below cursor and asks  
if the word need replace.  

to replace all word below the cursor, type
**`!` instead of `y`.**



***



## jump to arbitrary line
```
Alt-g g [Enter line number]
```



***



## split window  
split to right and left by
```
Ctl-x 3
```

split to up and down by
```
Ctl-x 2
```



***



## open new file
```
Ctl-x Ctl-f
```
then select file you want to open.



***



## move between window
```
Ctl+x o
```



***



## delete the window
```
Ctl+x 0
```



***



## use bash command
```
Alt+!
```



***



## affect commands to selected lines
if you input 3 for [num] at the command below,  
you can affect [command] to the line where cursor is at  
current to 3 lines below.  
```
Ctl-u [num] [command]
```



***



## auto close bracket  
toggle the auto bracket by
```
Alt-x electric-pair-mode
```
even Japanese bracket will be paired.


***



## close emacs
```
Ctl-x Ctl-c
```



***



