# Annotate



## titles

* about annotate
* install
* settings
* make annotation when migration
* make annotation by hand
* delete annotation by hand
* make annotation at the bottom
* don't add comment when migration




***



## about annotate
writes a model's schema information as a comment at the top  
of the file. Also it has a function which automatically puts the  
routing information.



***



## install
it's a gem so write
```
gem "annotate"
```
and
```
bundle install
```



***



## settings
make settings file by 
```
bundle exec rails g annotate:install
```
by doing this, `lib/tasks` and `auto_annotate_models.rake` will be made.



***



## make annotation when migration
when you do
```
rails g model User ...
rails db:migrate
```
Schema infomation will be automatically added to the model's file.



***



## make annotation by hand
```
bundle exec annotate
bundle exec annotate --routes # ルーティング情報(後述)を書き出す
bundle exec annotate --exclude fixtures # fixturesには書き出さない
bundle exec annotate --exclude tests,fixtures,factories,serializers # modelファイルのみに書き出す
```
you can also add annotation at specific file by
```
bundle exec annotate [path]
```



***



## delete annotation by hand
```
bundle exec annotate --delete
bundle exec annotate --routes --delete # ルーティング情報(後述)を削除する
```



***



## make annotation at the bottom
change settings file `lib/tasks/auto_annotate_models.rake` as
```
# 'position_in_class' => 'before'
'position_in_class' => 'after'
```



***



## don't add comment when migration
change settings file `lib/tasks/auto_annotate_models.rake` as
```
# 'skip_on_db_migrate' => 'false'
'skip_on_db_migrate' => 'true'
```
or type this command before doing migration
```
ANNOTATE_SKIP_ON_DB_MIGRATE=1 rails db:migrate
```



***



