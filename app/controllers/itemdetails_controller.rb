class ItemdetailsController < ApplicationController

	def index
		@items = Item.all
	end
	
	def show
		@item = Item.find(params[:id])
		# render '/views/itemdetails/show.html.erb'
	end
end
