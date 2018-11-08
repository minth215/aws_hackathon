class CreateInterests < ActiveRecord::Migration
  def change
    create_table :interests do |t|
      t.belongs_to :user
      t.belongs_to :category
      t.timestamps null: false
    end
  end
end
