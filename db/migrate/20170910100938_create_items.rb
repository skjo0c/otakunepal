class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.timestamps
      t.integer :user_id
      t.text :item_name, null: false
      t.text :item_detail, null: false
      t.integer :item_price, null: false
      t.boolean :rented, default: false
    end
    add_index :items, :user_id
  end
end
