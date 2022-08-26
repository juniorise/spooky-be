class CreateRelaxSoundCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :relax_sound_categories do |t|
      t.string :name
      t.string :description
      t.boolean :active

      t.timestamps
    end
  end
end
