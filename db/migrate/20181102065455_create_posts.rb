class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.belongs_to :user
      t.string :title
      t.text :content
      t.string :image
      t.belongs_to :category
      t.timestamps null: false
    end
  end
end
