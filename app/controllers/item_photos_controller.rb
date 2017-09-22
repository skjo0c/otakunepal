class ItemPhotosController < ApplicationController

	def show
		@item_photos = @item.item_photos.all
	end

	def new
		@item = Item.new
		@item_photos = @item.item_photos.build
	end
end
