class CreatePaintings < ActiveRecord::Migration[5.2]
  def change
    create_table :paintings do |t|
      t.references :artist, foreign_key: true
      t.date :date_created
      t.string :genre
      t.string :copyright

      t.timestamps
    end
  end
end
