class Acquiretime < ApplicationRecord
	belongs_to :item
	has_and_belongs_to_many :users
	validates :required_time, :return_time, :item_id, presence: true
end
