require "administrate/base_dashboard"

class RelaxSoundDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    active: Field::Boolean,
    color_of_day: Field::Number,
    downloadable_url: Field::String,
    icon: Field::String,
    license: Field::String,
    relax_sound_author: Field::BelongsTo,
    relax_sound_category: Field::BelongsTo,
    relax_sound_translations: Field::HasMany,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = %i[
    id
    active
    color_of_day
    downloadable_url
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = %i[
    id
    active
    color_of_day
    downloadable_url
    icon
    license
    relax_sound_author
    relax_sound_category
    relax_sound_translations
    created_at
    updated_at
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = %i[
    active
    color_of_day
    downloadable_url
    icon
    license
    relax_sound_author
    relax_sound_category
    relax_sound_translations
  ].freeze

  # COLLECTION_FILTERS
  # a hash that defines filters that can be used while searching via the search
  # field of the dashboard.
  #
  # For example to add an option to search for open resources by typing "open:"
  # in the search field:
  #
  #   COLLECTION_FILTERS = {
  #     open: ->(resources) { resources.where(open: true) }
  #   }.freeze
  COLLECTION_FILTERS = {}.freeze

  # Overwrite this method to customize how relax sounds are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(relax_sound)
  #   "RelaxSound ##{relax_sound.id}"
  # end
end
