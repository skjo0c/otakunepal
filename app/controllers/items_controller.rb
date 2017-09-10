class ItemsController < ApplicationController

	def index
		@items = Item.all
	end


	def create
		@items = Item.create(item_params)
		if @items.save
			flash[:success] = "You have successfully added the item"
			redirect_to root_path
		else
			render 'create'
		end

	end


	private

	def item_params
		
		params.require(:item).permit(:item_name, :item_price, :required_time, :return_time, :mobile)
	end

end