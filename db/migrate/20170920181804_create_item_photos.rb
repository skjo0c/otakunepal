class CreateItemPhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :item_photos do |t|

      t.timestamps
    end
  end
end
