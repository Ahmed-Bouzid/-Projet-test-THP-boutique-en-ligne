class OrdersController < ApplicationController

	def new
		@cart = Cart.find(session[:cart_id])
		if current_user.nil?
			redirect_to new_user_session_path
		else
			if @cart.nil?
				puts "chariot vide"
				redirect_to root_path
				#flash message "Placer au moins un article dans votre chariot"
			else
				@amount = @cart.total_price
				@order = Order.create(price: @amount)	
			end 			
		end
	end
end
