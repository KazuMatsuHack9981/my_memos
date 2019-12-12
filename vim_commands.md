# Vim Commands


## titles

* cut (one word)  
* cut (line)  
* copy (one word)  
* copy (one line)  
* select (visual mode)  
* paste  
* undo  
* redo  
* find word   
* shift line up and down  
* go back to shell  
* replace word  
* comment (multiple lines)  
* uncomment (multiple lines)  
* open new file  
* create new tab  
* move through tabs  
* show list of tabs  




*** 



## cut (one word)
```
dw
```



***



## cut (line)
```
dd
```
or you can `3dd` to cut 3 lines below.



***



## copy (one word)
```
yw
```



***



## copy (one line)
```
yy
```
or you can `3yy` to copy 3 lines below.



***



## select (visual mode)
```
v
```



***



## paste
```
p
```



***



## undo
```
u
```



***



## redo
```
ctl-r
```



***



## find word
```
/ [word]
```
to find word "word".  
press `*` to go next, and `#` to go back.  



***



## shift line up and down
shift line down and up once by
```
:m+
:m--
```
note that up needs two "-".  
it is able to shift line down 3 lines by
```
:m+3
```
while it shifts 3 lines up by
```
:m-4
```



***



## go back to shell
```
:terminal
```
go back to vim by typing in the shell
```
exit
```



***



## replace word
replace current line's word by
```
:s/before/after/g
```
replace all the word in the file by
```
:%s/before/after/g
```
note that `""` is not needed even if there's a  
space in the word.  if you put `""` it would also  
be in the replaced text.



***



## comment (multiple lines)
first, select the head of the line you want to  
comment by entering Visual Block Mode by  
```
Ctl-v
```
next, enter Insert mode by pressing  
```
shift-i
```
then the cursor will go to the head of all   
the lines selected. Type the symbol that would make   
the line comment. At this place, it would only be added to  
the first line of the selected lines.  
```
# or // ...
```
finally, apply to all the selection by
```
Esc
```



***



## uncomment (multiple lines)
first, select the symbol of commentation of the line  
you want to uncomment (for example, if the symbol is `#` select  
only the first line, though if it's `//` select first two words)  
by entering Visual Block Mode by  
```
Ctl-v
```
then delete the symbol by
```
d
```



***



## open new file
open new file on current tab by
```
:e [path]
```



***



## create new tab
```
:tabnew
```



***



## move through tabs
move to the right tab by
```
gt
```
move to the left tab by
```
gT
```



***



## show list of tabs
```
:ls
```



***



