class ItemsController < ApplicationController

	def index
		@items = Item.order("created_at DESC")
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


	def edit
		@item = Item.find(params[:id])
	end

	
	def update
		@item = Item.find(params[:id])
		if @item.update(item_params)
			redirect_to root_path
		else
			redirect_to edit_item_path(params[:id])
		end
	end


	private

	def item_params
		
		params.require(:item).permit(:item_name, :item_detail, :item_price, :required_time, :return_time, :mobile)
	end

end