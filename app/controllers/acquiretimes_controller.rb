class AcquiretimesController < ApplicationController

	def new
		@acquiretime = Acquiretime.new
		@acquiretime.save!
	end

	def create
		# binding.pry
		@item = Item.find(params[:item_id])

		@acquiretime = @item.acquiretimes.create(time_params)

		if @acquiretime.valid?
			flash[:success] = "You have successfully rented the item"
			redirect_to root_path
		else
			flash[:alert] = "Woops! Looks like there has been error. Please enter valid data."
			redirect_to root_path
		end
	end

	private

	def time_params
		params.require(:acquiretime).permit(:required_time, :return_time, :user_id)
	end
end