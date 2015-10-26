class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :Post, index: true, foreign_key: true
      t.string :username
      t.text :content

      t.timestamps null: false
    end
  end
end
