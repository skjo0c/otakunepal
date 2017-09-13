class Item < ApplicationRecord
	belongs_to :user
	has_one :acquiretime
	mount_uploader :photo, PhotoUploader
end
