class CreateRelaxSoundAuthors < ActiveRecord::Migration[7.0]
  def change
    create_table :relax_sound_authors do |t|
      t.string :name
      t.string :page_url

      t.timestamps
    end
  end
end
