class CreateAbouts < ActiveRecord::Migration
  def change
    create_table :abouts do |t|
      t.belongs_to :post
      t.belongs_to :hashtag
      t.timestamps null: false
    end
  end
end
