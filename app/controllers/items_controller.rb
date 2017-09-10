class ItemsController < ApplicationController

	def index
		@items = Item.all
	end


	def create
		@item = Item.create(item_params)
		if @item.valid?
			flash[:success] = "You have successfully added the item"
		else
			flash[:alert] = "Woops! Looks like there has been error. Please enter valid data."
		end
		redirect_to root_path
	end


	private

	def item_params
		
		params.require(:item).permit(:item_name, :item_price, :required_time, :return_time, :mobile)
	end

end