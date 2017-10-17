class Acquiretime < ApplicationRecord
	belongs_to :item
	belongs_to :users
	validates :required_time, :return_time, :item_id, presence: true
end
