class CreateTransactionItems < ActiveRecord::Migration[5.2]
  def change
    create_table :transaction_items do |t|
      t.timestamps
      t.integer :item_id
      t.integer :transaction_id
    end
  end
end
