# jbuilder



## titles
* very basic
* set!
* when key is doubled
* using instance variable (single)
* extract!
* merge!
* attributes
* using instance variable (multiple)/array




## very basic
```
json.text "テキスト"

#{"text": "テキスト"}
```
```
json.text1 "テキスト1"
json.text2 "テキスト2"

# {"text1": "テキスト1", "text2": "テキスト2"}
```



***



## set!
```
json.set! :tweet do
  json.text, "テキスト"
end

# {"tweet": {"text": "テキスト"} }
```
以下のように書くこともできる。  
```
json.set! :text, "テキスト"

# {"text": "テキスト"}
```



***



## when key is doubled
```
json.set! :tweet do
  json.text2 "テキスト2"
# json.set! text2, "テキスト2" でもOK
end

json.set! :tweet do
  json.text4 "テキスト4"
# json.set! text4, "テキスト4" でもOK
end

# {"tweet": {"text2": "テキスト2", "text4": "テキスト4"} }
```



***



## using instance variable (single)
controller
```
class Api::TweetsController < ApplicationController
  def show
    @tweet = Tweet.find(params[:id])
  end
end

```
jbuilder
```
json.text  @tweet.text
json.title @tweet.title

# {"text": "テキスト1", "title": "タイトル1"}
```
```
json.tweet do |tweet|
  tweet.title @tweet.title
  tweet.text  @tweet.text
end

# {"tweet": {"title": "タイトル1", "text": "テキスト1"} }
```
```
json.tweet do
  json.text  @tweet.text
  json.title @tweet.title
end
```



***



## extract!
make hash which the key is the instance column and value is the column value.
```
json.tweet do
  json.extract! @tweet, :text, :title
end

# {"tweet": {"text": "テキスト1", "title": "タイトル1"} }
```



***



## merge!
```
text_hash = { text: "テキスト" }

json.tweet do
  json.title "タイトル"
  json.merge! text_hash
end

# {"tweet": {"title": "タイトル", "text": "テキスト"} }
```



***



## attributes
```
json.merge! @tweet.attributes

# {"id": 1, "text": "テキスト1", "title": "タイトル1", "user_id": 1}
```



***



## using instance variable (multiple)/array
controller
```
class Api::TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
  end
end
```
jbuilder
```
json.array! @tweets, :title, :text

# [{"title": "タイトル1", "text": "テキスト1"}, {"title": "タイトル2", "text": "テキスト2"}]

```
```
json.tweet do
  json.array! @tweets, :title, :text
end

# {"tweet": [{"title": "タイトル1", "text": "テキスト1" }, {"title": "タイトル2",  "text": "テキスト2"}] }
```
returns the array of each instance.



***



