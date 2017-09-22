class Acquiretime < ApplicationRecord
	belongs_to :item
	validates :required_time, :return_time, :item_id, presence: true
end
