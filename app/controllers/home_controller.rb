class HomeController < ApplicationController



	def index


		

		@items = Item.all

	end

	def new


	end

	def show


		@item_id = params[:id]

		puts  Item.find(@item_id).title
		puts  Item.find(@item_id).description
		puts  Item.find(@item_id).price
		puts  Item.find(@item_id).image_url


		@item_id = params[:id]
		@item_title = Item.find(@item_id).title
		@item_description = Item.find(@item_id).description
		@item_price = Item.find(@item_id).price
		@image_url = Item.find(@item_id).image_url
		@item = Item.find(@item_id) 


	end

end
