class Acquiretime < ApplicationRecord
	belongs_to :item
	belongs_to :users
	validates :required_time, :return_time, presence: true
end
