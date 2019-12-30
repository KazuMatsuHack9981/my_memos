# API Usage


## titles

* LINE api



***



## LINE api


### my account
my LINE developer account is [here](https://developers.line.biz/console/channel/1653719104/basics?status=success).


### send message
send message to one person indicated by user_id(can check in the developer account) using the  
account you already have by
```
curl -v -X POST https://api.line.me/v2/bot/message/push \
-H 'Content-Type:application/json' \
-H 'Authorization: Bearer CHANNEL_ACCESS_TOKEN' \
-d '{"to": "USER_ID", "messages":[{"type":"text", "text":"this is from colab!"}]}'
```
CHANNE_ACCESS_TOKEN are in the developer console(the web page hyperlinked in this file)  
USER_ID can also be found in the link.  


### making account
you to make

* channel : it can be any
* provider : it can be any

to make a account. 



***



