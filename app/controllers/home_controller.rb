class HomeController < ApplicationController

	def index

		@items = Item.all

		if session[:cart_id].nil?
			@cart = Cart.create
			session[:cart_id] = @cart.id
		else
			@cart = Cart.find(session[:cart_id])
		end
	end

	def new
	end

	def show

		@item_id = params[:id]
		@item_title = Item.find(@item_id).title
		@item_description = Item.find(@item_id).description
		@item_price = Item.find(@item_id).price
		@image_url = Item.find(@item_id).image_url
		@item = Item.find(@item_id) 

	end

end
