class AddBiographyToArtist < ActiveRecord::Migration[5.2]
  def change
    add_column :artists, :biography, :text
  end
end
