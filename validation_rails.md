# Validation



## titles

* validation format  
* check the validation  
* validation rules  




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
numericality : { setting:value }
settings:
	only_integer
	greater_than
	greater_than_or_equal_to
	less_than
	less_than_or_equal_to
	equal_to
	even
	odd
uniqueness   : check if the same value doesn't exist
length       : {setting:value}
settings:
	maximum
	minimum
	is (have to be exactly that length)
	within (use A..B to determine range of word length)
	tokenizer
```





***



