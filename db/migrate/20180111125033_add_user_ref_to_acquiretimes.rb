class AddUserRefToAcquiretimes < ActiveRecord::Migration[5.0]
  def change
    add_reference :acquiretimes, :user, foreign_key: true
  end
end
