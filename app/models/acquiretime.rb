class Acquiretime < ApplicationRecord
	belongs_to :item
	belongs_to :user
	validates :required_time, :return_time, presence: true
end
