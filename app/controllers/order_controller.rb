class OrderController < ApplicationController


	def create

		@item_id = params[:id]
		@item = Item.find(@item_id).title
		
		@item_price = Item.find(@item_id).price
		

		Orders.create(title:"#{@item}", price:"#{@item_price}" )


	end


end
