# Ruby Memo


## titles

* About this file  
* activate interpreter  
* run server  
* execute ruby program  
* fundamental grammer  
* standard output  
* change data type  
* if  
* case  
* while  
* array  
* for  
* range operator  
* hash  
* hash for  
* hash each  
* method  
* constructor  
* instantiation  
* accessor  
* class method  
* class variable  
* inheritance  




***



## About this file
this file has a hardlink.  
the originla file is in  
```
~/desktop/memos/
```

hardlink file is in  
```
~/document/ruby_on_rails/
```



***



## activate interpreter
```
irb
```
`exit` to get out.  
you can also use `ruby`.  
it seems it doesn't change anything, but its activating.  
`irb` is better.  



***



## run server
```
rails server
```
if you use docker, this is unnecessary.  



***



## execute ruby program
execute "filename" program.  
suffix is `.rb`.  
```
ruby filename
```



***
***


# fundamental grammer

## standard output
```
puts("")
```



***



## change data type
to string
```
val.to_s
```

to integer
```
val.to_i
```



***



## if
```
if condition then
	task 1
else
	task 2
end
```
don't require "\(\)"



***



## case
```
case condition
when val1
	task 1
when val2
	task 2
end
```



***



## while
```
while condition
	task
end
```



***



## array
```
val = Array.new
val = Array.new num
val = [val1, val2, val3, ...]
```



***



## for
```
for val in array
	task
end
```



***



## range operator
```
val..val
```



***



## hash
```
val = Hash.new
val = {key1=>val1, key2=>val2, ...}
```



***


	
## hash for
```
for val in hash
	val[0]：key
	val[1]：val
end
```



## hash each
by doing this, you can get key and value  
not caring about [0] or [1]. 
```
hash.each do |key, value|
	task
end
```



***



## method
declare method by
```
def name arg1, arg2, ...
	処理
end
```

call this method by
```
name val1, val2, ...
```

"\(\)" can be added both to declaration and call



***



## constructor
declare constructor by
```
def initialize arg, ...
	@val = arg
end
```
instance variable starts with "@".   
demand accessor to change instance variable.  
can't use instance variable in a class method.  



***



## instantiation
assign class name to "class".  
"arg" is the argument of constructor.  
```
val = class.new arg, ...
```



***



## accessor
accessor are used to write/read instance varialbe.   
"val" is an instance variable.  
```
attr_reader : val   　 ==>   　allow read only
attr_writer : val    　==>  　 allow write only
attr_accessor : val  　==>　   allow read and write
```
	
	

***



## class method
```
def self.method　arg
	task
end
```

or you can
```
def class.method　arg
	task
end
```



***
　	
　		
　		
## class variable
declare the class variable with
```
@@val
```
can use inside the class.  
able to read and write.  　		
　


***


　		
## inheritance
```
class class << superclass
end
```
declare same method as the superclass represent "override".  



***

　	

