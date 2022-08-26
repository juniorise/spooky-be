class AddDownloadableUrlToRelaxSound < ActiveRecord::Migration[7.0]
  def change
    add_column :relax_sounds, :downloadable_url, :string
  end
end
