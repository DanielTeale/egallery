class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.references :user, foreign_key: true
      t.text :content
      t.integer :user_comment_id
      t.string :user_comment_type

      t.timestamps
    end
  end
end
