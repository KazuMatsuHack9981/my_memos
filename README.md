# Search Command
this is the repostiory for the command `sc` (search command).  
the command itself is written in "coding_memo.sh".  
data are written by markdown file.  



***



## About "coding_memo.sh"

### Usage
the usage of the command `sc` can be achieved by `sc help`.  



***



### Behaviour
command `sc` is consisted as below.
```
sc $1 $2
```
"coding_memo.sh" uses `awk "/$2/,/\*\*\*/"` to get the sentence ranges    
from the sentence includes keyword \$2 to the symbol `***`.  
the keyword \$2 is also highlighted by `sed` piped to `awk`.    

However, some files don't require \$2 and for this file,  
`awk "/About/,/\*\*\*/"` is used.



***



### Add file to "coding_memo.sh"
here are the steps to add new files to "coding_memo.sh".

1. put filenames for \$1 in list\_all_commands()  
2. add behaviour to `case`  




***



## About Markdown files

### Create Markdown file
here are the rules to make new markdown file.

* write a title by `#` and subtitles by `##`  
* make `## titles` and list headings of the file  
* each `##` have to end with `***`  
* put 3 new line in front and back of the `***`  
* try writing description at the top of the commands  




***



