class AddReferencesToRelaxSoundTranslation < ActiveRecord::Migration[7.0]
  def change
    add_reference :relax_sound_translations, :relax_sound, foreign_key: true
  end
end
