class Item < ApplicationRecord
	belongs_to :user
	has_many :items
	has_one :acquiretime
	mount_uploader :photo, PhotoUploader
	validates :photo, :item_name, :item_detail, :user_id, presence: true
end
