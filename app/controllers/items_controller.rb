class ItemsController < ApplicationController

before_action :authenticate_user!, only: [:new, :create]
before_action :is_owner?, only: [:edit, :update]

	def index
		@items = Item.all.order("created_at DESC")
	end

	def new
		@item = Item.new
		@item.save!
	end


	def create
		@item = current_user.items.create(item_params)
		if @item.valid?
			flash[:success] = "You have successfully added the item"
			redirect_to root_path
		else
			flash[:alert] = "Woops! Looks like there has been error. Please enter valid data."
			render :new, status: :unprocessable_entity
		end
		
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

	def show
		@item = Item.find(params[:id])
	end

	private

	def item_params
		params.require(:item).permit(:item_name, :item_detail, :item_price, {photos: []})
	end

	def is_owner?
  		redirect_to root_path if Item.find(params[:id]).user != current_user
	end

end