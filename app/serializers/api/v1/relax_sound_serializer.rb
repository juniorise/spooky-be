module Api
  module V1
    class RelaxSoundSerializer < Api::V1::BaseSerializer
      attributes :relax_sound_category, :relax_sound_author, :icon, :license, :color_of_day, :downloadable_url, :active
    end
  end
end
