class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.timestamps
      t.text :item_name, null: false
      t.integer :item_price, null: false
      t.datetime :required_time, null: false
      t.datetime :return_time, null: false
      t.string :mobile, null: false
    end
  end
end
