class CreateAcquiretimes < ActiveRecord::Migration[5.0]
  def change
    create_table :acquiretimes do |t|
    	t.datetime :required_time, null: false
      	t.datetime :return_time, null: false
      	t.timestamps
    end
    add_index :acquiretimes, :rented
  end
end
