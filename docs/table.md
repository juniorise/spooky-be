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