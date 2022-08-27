class CreateRelaxSoundImages < ActiveRecord::Migration[7.0]
  def change
    create_table :relax_sound_images do |t|
      t.string :alt

      t.timestamps
    end
  end
end
