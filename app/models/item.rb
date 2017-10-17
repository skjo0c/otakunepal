class Item < ApplicationRecord
	belongs_to :user
	has_many :photos
	has_many :acquiretimes
	mount_uploaders :photos, PhotoUploader
	validates :item_name, :item_detail, :user_id, presence: true
end
