# Validation



## titles

* 
* 
* 




***



## validation format
write below at `/models/~.rb` file where the model  
class is written.  
```
validates :column, rule:val
```
for the "rule", check "validation rules" in this file.  
"val" are such as `true` or `false` but it's mostly `true`.



***



## check the validation
what you wrote on **validation at `/models/~.rb`   
are checked when saving** to the model by `@model.save`  
to check the form,
```
if @model.save then
	redirect_to "~~~"
else
	@msg = "there's an error"
	render "view"
```
note that in the "view", the name of the current  
view will be written.



***



## validation rules
for the validation, "rule" are such as,
```
presence     : require input forcely
numericality : input of number
uniqueness   : check if the same value doesn't exist
```





***



