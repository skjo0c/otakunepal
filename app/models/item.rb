class Item < ApplicationRecord
	belongs_to :user
	has_many :acquiretimes
	has_many :photos
	mount_uploaders :photos, PhotoUploader
	validates :item_name, :item_detail, :user_id, presence: true
end
