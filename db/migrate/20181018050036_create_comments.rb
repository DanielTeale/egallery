class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.references :artist, foreign_key: true
      t.references :painting, foreign_key: true
      t.text :content
      t.integer :rating

      t.timestamps
    end
  end
end
