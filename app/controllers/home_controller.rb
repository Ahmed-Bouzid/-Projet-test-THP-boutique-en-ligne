class HomeController < ApplicationController
	def index
		puts params

		@items = Item.all

	end

	def new
	end

	def show

		@item_id = params[:id]
		@item = Item.find(@item_id).title
		@item_description = Item.find(@item_id).description
		@item_price = Item.find(@item_id).price
		@image_url = Item.find(@item_id).image_url


	end

end
