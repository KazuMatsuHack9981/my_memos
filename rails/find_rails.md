# Database Search


## titles

* find by id  
* find by multiple id  
* search by column (exact)  
* search by expression
* abstract search  
* multiple condition search  
* search first/last data  
* order data  
* extract part of data  




***



## find by id
get one data from by id
```
@models = Array.new
obj = Model.find params["id"]
@models.push obj
```
if the data searched is one object not multiple,  
you need to push into the array of @models.  
note that push means to put the object into the head of array.   



***



## find by multiple id
search by multiple id giving a list of id to the find method
```
@models = Array.new
f = params[:find].split(",")
@people = Person.find(f)
```
it doesn't require push because it returns multiple object.  
note that push means to put the object into the head of array.   



***



## search by column (exact)
search data not only with id but the name of each column.  
for example, if "Model" has the column "title" and one data has  
the title "book", you can find this data by,
```@
@models = Array.new
@models = Model.where title: "book"
```



***



## search by expression
search people who's over "20" from model "Person" by
```
@people = Array.new
@people = Person.where "age >= ?", params[]
```
note that `?` is a place holder and can use multiple times.  
Also, paramas can be multiple so this doesn't use push.  



***



## abstract search
search with like by,
```
@people = Array.new
@people = Person.where "maile like ?", "%"+params[]+"%"
```
note that `%` is a wildcard and if there wasn't any `%`,  
it is same as the exact search using `.where mail: params[]`.



***



## multiple condition search
```
@people = Array.new
f = params[:find].split ","
@people = Person.where "age>=? and age<=?", f[0], f[1]
```
make sure to assign `params[:find]` such as "20,30".  



***



## search first/last data
search by `params["find"]` and get the first/last result by,
```
@people = Array.new
f = "%"+params[:find]+"%"
result = Person.where "name like ?  or  mail like ?", f, f
@people.push result.first
@people.push result.last
```
make sure that ".first/.last" is the Array method.  
it takes only one object so it requires push.  
note that push means to put the object into the head of array.  



***



## order data
order the data you get by where
```
@people = Array.new
@people = Person.where("name like ?", "%"+params[:find]+"%").order "age asc"
```
for the asc/dsc, here are the explanation
```
asc : small to large
dsc : large to small
```
note that () is required for rails to acknowledge correctly.  



***



## extract part of data
use limit/offset to take only a part of the data.  
limit and offset means,
```
limit 5  : take only the first 5 data
offset 5 : take from the 5th data.
```

here are the sample codes.
```
f = params[:find].split(",")
@people = Person.all.limit(f[0]).offset(f[i])
```
note that, if used `limit 5` and only 4 data fits the  
condition, only 4 data will received (not being error). 



***



