# MarkDown記法での書き方のメモ    

## 見出し(headings)
```
# 見出し1
## 見出し2
### 見出し3
...
```

## 結果
# 見出し1
## 見出し2
### 見出し3
...


    
***



## テキスト修飾(text alignment)
surrounding with \* or \_ makes the word *italic*  
surrounding with double makes the word **bold**
```
*イタリック*
**太字**
_イタリック_
__太字__
```



***



## リスト(list)
putting \* or \+ or \- at the beginning makes ul list  
putting 1. or 2. or 3. at the beginning makes ol list  
if you want to nest, indent and write children
```
(blank)
* ul list 1
	* ul list child 1
	+ ul list child 2
+ ul list 2
- ul list 3
(blank)

(blank)
1. ul list 1
	- ol list child 1
	+ ol list child 2
2. ul list 2
3. ul list 3
(blank)
```
  
## 結果

* ul list 1
	* ul list child 1
	+ ul list child 2
+ ul list 2
- ul list 3

1. ul list 1
	- ol list child 1
	+ ol list child 2
2. ul list 2
3. ul list 3
  


  
***



## 引用(reference)
putting \> at the beginning makes reference(citation)  
write \>> to reference in the reference
```
>引用スタート
>引用中
>>二重引用スタート
>>二重引用終了
>引用終了
```

## 結果

>引用スタート
>引用中
>>二重引用スタート
>>二重引用終了
>引用終了



***



## コードブロック(code block)
surround with \``` (back quote) makes a space for coding  



***



## 水平線(horizontal line)
```
***
___
* * *
```

## 結果
***
___
* * *

