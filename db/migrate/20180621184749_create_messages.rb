class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.references :sender
      t.references :receiver
      t.string :content
      t.boolean :transaction, default: false


      t.timestamps
    end
  end
end
