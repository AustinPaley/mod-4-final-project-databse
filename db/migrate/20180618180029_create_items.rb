class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :user_id
      t.string :img_src
      t.integer :amount
      t.string :price
      t.timestamps
    end
  end
end
