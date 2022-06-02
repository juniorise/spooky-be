# Initial Project

```s
rails new spooky-be --database=postgresql
```

```s
rails db:create
```

```s
# decimal
# string
# integer
# text
rails generate model Product title:string description:text price:decimal currency:string
rails generate model UserIdentityProvider user_id:integer identity_type:string firebase_uid:string

# more files 
rails generate scaffold Product title:string description:text price:decimal currency:string

# migration to apply changes
rails db:migrate
```

In case sth wrong, we can rollback last migration (don't delete the migration file):
```s
bundle exec rails db:rollback
```

https://github.com/jsonapi-serializer/jsonapi-serializer#installation
```s
rails g serializer Product title:string description:text price:decimal currency:string
```

## Reference
- Setup RSpec: https://relishapp.com/rspec/rspec-rails/docs/gettingstarted