class CreateRelaxSounds < ActiveRecord::Migration[7.0]
  def change
    create_table :relax_sounds do |t|
      t.references :relax_sound_category, foreign_key: true
      t.references :relax_sound_author, foreign_key: true

      t.string :icon
      t.string :license
      t.integer :color_of_day
      t.boolean :active

      t.timestamps
    end
  end
end
