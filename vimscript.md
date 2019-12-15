# Vimscript


## titles

* echo  
* comment  
* variable assignment/statement  
* execute vim script  
* about operators  
* about quote  
* join string  
* split string  
* length of string  
* slice of string  
* size of list  
* remove from list  
* add to list  
* get/insert value of dictionary  
* get key/value list  
* check existance of key  
* delete key  
* if statement  
* while statement  
* for statement  
* condition statement  
* function  
* read/write file  
* exception  
* where to put code  
* flow of original vimscript making  
* back tab  
* command statement  




***



## echo
to output with return, type
```
echo "text"
```
to output with no return, type
```
echon "text"
```



***



## comment
comment one line (until end of line).
```
" comment
```



***



## variable assignment/statement
```
let var = 1
```
note that you CAN'T reassign the value after statement.  
you need to `unlet` before you do.  
or state as a new same name variable by putting `let` when using  
the variable.



***



## execute vim script
in edit mode
```
:source filename.vim
```



***



## about operators
can use
```
+=
-=
```
however, `/=` and `*=` are not allowed.



***



## about quote
double quote can use such as `\n`, though  
single quote can't.



***



## join string
have two ways
```
let join1 = 'aaa' . 'bbb'
let join2 = join(['aaa', 'bbb', 'ccc'], ',')
```



***



## split string
```
let record = split('aaa,bbb,ccc', ',')
```



***



## length of string
```
strlen("string")
```



***



## slice of string
```
"abcd"[0:1]  ==> "ab"
```
can also use negative value.  
note that the range is different from python.



***



## search string
search string2 from string1.
```
strdix(string1, string2)
```
if included, returns the location.  
if not, returns -1.



***



## size of list
```
len(list)
```



***



## remove from list
```
let first = remove(list, 0)
let end   = remove(list, -1)
```



***



## add to list
add "val" to the "index" location to the list by
```
:call insert(list, val, index)
```
or you can add to the end of the list by
```
:call add(list, val)
```



***



## get/insert value of dictionary
```
dict['key']
dict.key
```
can insert the value by
```
dict['key'] = val
dict.key    = val
```



***



## get key/value list
get key list by
```
let keylist = keys(dict)
```
get value list by
```
let valuelist = values(dict)
```
get both as `[[key, item], ...]` format by
```
let itemlist = items(dict)
```



***



## check existance of key
```
let exists = has_key(dict, 'a')
```



***



## delete key
```
:call remove(dict, 'key')
```



***



## if statement
```
if cond
elseif cond
end if
```



***



## while statement
```
let i=0
while i<5
	let i+=1
endwhile
```



***



## for statement
```
for e in [1,2,3]
	echo e
endfor
```



***



## condition operator
```
echo cond ? 'true' : 'false'
```



***



## function
```
function! Sum(v1, v2)
	return a:v1 + a:v2
endfunction
```
`!` is for overriding the function if already exists.  
note that you need `a:` inside the function.  
if you want to use variable that's outside the function, type
```
g:var
```



***



## read/write file
read files like
```
for line in readfile(filename)
	if line =~ 'Date'
		echo line
	endif
endfor
```

write files like
```
call writefile(['line1', 'line2', 'line3'], filename)
```



***



## exception
```
try 
	throw 'error message'
catch /error/
catch 
	" exception task
finally
	" task will always be done
endtry
```



***



## where to put code
it can be anywhere but, put it in here
```
~/document/vimscripts/
```



***



## flow of original vimscript making
first, make a vimscript file in
```
~/document/vimscripts/
```
then, on the editor you want to execute, type
```
:source ~/document/vimscripts/~.vim
```
after that, execute it by 
```
:call FuncOfYourScript()
```



***



## back tab
once you make a tab, it will keep the tab  
because of the editor auto indent settings.  
to make a "back" tab, make a **double** return  
then, delete one return by adding **two** backspace.   
```
return 0;\n\n\b\b}
```
this will become
```
	return 0;
}
```



***



## command statement
state a new command "name" in vimscript by
```
command! Name call func()
```

state a command with arguments by
```
command! -nargs=1 Name call func(<f-args>)
```



***



