class CreateRelaxSoundTranslations < ActiveRecord::Migration[7.0]
  def change
    create_table :relax_sound_translations do |t|
      t.string :locale
      t.string :name
      t.string :description
      t.boolean :active

      t.timestamps
    end
  end
end
