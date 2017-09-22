class CreateAcquiretimes < ActiveRecord::Migration[5.0]
  def change
    create_table :acquiretimes do |t|
    	t.integer :item_id
    	t.date :required_time, null: false
      	t.date :return_time, null: false
      	t.timestamps
    end
    add_index :acquiretimes, :item_id
  end
end
