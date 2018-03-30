class RentbidsController < ApplicationController
	def show
		@rentbids = Acquiretime.where(:item_id => @current_item)
	end
end
