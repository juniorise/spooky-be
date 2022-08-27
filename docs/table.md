```
rails generate model relax_sound_author name:string page_url:string
rails generate model relax_sound_category name:string description:string active:boolean
rails generate model relax_sound category:references relax_sound_author:references icon:string license:string color_of_day:integer active:boolean
rails generate model relax_sound_translation locale:string name:string description:string active:boolean relax_sound:references

rails g serializer relax_sound category:references relax_sound_author:references icon:string license:string color_of_day:integer active:boolean
rails generate scaffold relax_sound category:references relax_sound_author:references icon:string license:string color_of_day:integer active:boolean

rails g migration add_references_to_relax_sound_translation relax_sound:references
rails g migration add_downloadable_url_to_relax_sound downloadable_url:string
```

```
bin/rails g model relax_sound_image alt:string file:attachment
bin/rails g controller relax_sound_images index create show new
```

Reference:
- Local active storage: https://blog.dennisokeeffe.com/blog/2022-04-07-local-activestorage-development-with-rails-7