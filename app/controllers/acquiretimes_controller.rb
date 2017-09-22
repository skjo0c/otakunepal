class AcquiretimesController < ApplicationController

	def new
		@acquiretime = Acquiretime.new
	end

	def create
		@item = Item.find(params[:item_id])

		@acquiretime = @item.acquiretime.create(time_params)

		if @acquiretime.valid?
			flash[:success] = "You have successfully rented the item"
			redirect_to root_path
		else
			flash[:alert] = "Woops! Looks like there has been error. Please enter valid data."
			render :new, status: :unprocessable_entity
		end
	end

	private

	def time_params
		params.require(:acquiretime).permit(:required_time, :return_time, :item_id)
	end
end