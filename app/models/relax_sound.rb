class RelaxSound < ApplicationRecord
  belongs_to :relax_sound_category
  belongs_to :relax_sound_author

  has_many :relax_sound_translations
end