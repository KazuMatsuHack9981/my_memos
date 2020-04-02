# FactoryBot



## title

* install
* settings of databasecleaner
* make factorybot data
* create DB data
* create model instance withoud assigning into DB
* create model overwriting attributes
* get attribute of factorybot data
* trait
* traits
* transient
* callback



***



## install
```
group :test do
  gem 'factory_bot_rails'
  gem 'database_cleaner'
end
```
```
bundle install
```
`database_cleaner` is for deleting DB data created by factorybot  
after the test is done.



***



## settings of databasecleaner
in `spec/rails_helper.rb`, write
```
RSpec.configure do |config|
  config.include FactoryBot::Syntax::Methods

  config.before(:suite) do
    DatabaseCleaner.strategy = :truncation
  end

  config.before(:each) do
    DatabaseCleaner.start
  end

  config.after(:each) do
    DatabaseCleaner.clean
  end

  config.before(:all) do
    DatabaseCleaner.start
  end

  config.after(:all) do
    DatabaseCleaner.clean
  end
end
```



***



## make factorybot data
to make `User` model with `name` attribute, write
```
FactoryBot.define do
  factory :user do
    name { "testuser1" }
  end
end
```
or you can seperate name like
```
FactoryBot.define do
  factory :testuser, class: User do
    name { "testuser2" }
  end
end
```
note that the file name will be such as "spec/factories/user.rb".



***



## create DB data
```
@user = create(:user)
```
instance of `User` which has `name=testuser1` will be created and  
will be assigned in `@user`. note that this program is written in the  
rspec file.



***



## create model instance withoud assigning into DB
```
@user = build(:testuser)
```



***



## create model overwriting attributes
```
@user = create(:user, name: "username")
```



***



## get attribute of factorybot data
```
attributes_for(:user)
```
you can get the attributes in a hash format.



***



## trait
divide case by using trait.
```
FactoryBot.define do
  factory :product do
    title 'iPad'

    trait :modify do
      title 'iPhone'
    end
  end
end
```
```
[1] pry(main)> FactoryBot.reload
[2] pry(main)> FactoryBot.attributes_for(:product)
=> {
    :title => "iPad"
}
[3] pry(main)> FactoryBot.attributes_for(:product, :modify)
=> {
    :title => "iPhone"
}
```



***



## traits
group up each `trait` by `traits`
```
trait :base do
  vendor 'Apple'
end

trait :activate do
  state :active
end

factory :product_activate, traits: [:base, :activate]
```



***



## transient
```
transient do
  time true
end

trait :cancel do
  state :canceled
  canceled_at { Time.now if time }
end

factory :product_cancel, traits: [:base, :cancel]
```
```
[7] pry(main)> FactoryBot.reload
[8] pry(main)> FactoryBot.attributes_for(:product_cancel)
=> {
          :title => "iPad",
         :vendor => "Apple",
          :state => :canceled,
    :canceled_at => 2018-02-22 22:22:22 +0900
}
[9] pry(main)> FactoryBot.attributes_for(:product_cancel, time: false)
=> {
          :title => "iPad",
         :vendor => "Apple",
          :state => :canceled,
    :canceled_at => nil
}
```



***



## callback
change factorybot's instance after `create`, `build`.
```
factory :shop, class: Shop do
  name "testshop"
  after(:create) do |shop|
    shop.staffs << FactoryBot.create(:staff, name: "taro")
    shop.staffs << FactoryBot.create(:staff, name: "jirou")
  end
end
```



***



