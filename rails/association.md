# Association of Rails


## titles

* has_one  
* has_many  
* belongs_to  







***



## has_one  
relate one whole data of master to one whole data of  
slave. This statement is written on master models/~.rb as  
```
has_one :model
```
For example, if you have Person and Message data and on  
"models/person.rb" you wrote `has_one :message`, you can  
access Message's title column from Person by @data.message.title  



***



## has_many
if one of the person of Person has multiple message of Message,  
write below on master data models/person.rb 
```
has_many :message
```

since, there are multiple data associated, data of message you get  
by `@data.message` will be type of an array so you have to get the  
data like below.
```
@data.message.each do |obj|
	obj.title
end
```



***



## belongs_to
`has_~` enables master to use the data of slave,  
but `belongs_to` enables slave to use master data
```
belongs_to :person
```

use the Master Person Model from slave like below.
```
obj.person.name
```



***



