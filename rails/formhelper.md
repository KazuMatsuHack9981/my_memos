# Form Helper (Ruby on Rails)




## titles

* create <form> tag  
* input text field  
* submit tag  
* basic format  
* checkbox  
* label  
* radio button  
* select list (ordinary)  
* select list (multiple)  




***



## create <form> tag
```
<%= form_tag(controller: "", action: "") do %>
<% end %>
```



***



## input text field
id in the parameter is going to be an id of \<input\> tag
```
<%= text_field_tag("id") %>
```



***



## submit tag
name is the button's name displayed
```
%= submit_tag("name") %>
```



***



## basic format
```
<%= form_tag(controller: "", action: "") do %>
	<%= text_field_tag("id") %>
	<%= submit_tag("") %>
<% end %>
```



***



## checkbox
```
<%= check_box_tag("id") %>
```



***



## label
```
<%= label_tag("割当id", "表示テキスト") %>
```



***



## radio button
id will be "name_value"
```
<%= radio_button_tag("name", "value") %>
```



***



## select list (ordinary)
```
<%= select_tag("id", options_for_select(["item1", "item2", "item3"])) %>
```


## select list (multiple)
```
<%= %select_tag("id", options_for_select(["item1", "item2", "item3"]), {size: , multiple:true}) %>
```



***




