class CartController < ApplicationController

	def create

		
	end

	def add_item
		
		user = User.find(current_user.id)

		if user.cart == nil

			chariot = Cart.create(user_id: current_user.id)
			chariot
			puts "chariot créé"

		else
			puts "le chariot existe deja"
			b = params[:id]
			user_cart = user.cart
			a = user_cart.item_ids

			puts "---------------------------------"
			b = params[:id]
			puts b
			puts "voici l'ID de l'article"
			puts "---------------------------------"
			

			puts "---------------------------------"
			puts "ceci est l'interieur du chariot"
			puts user_cart.items.inspect
			puts "---------------------------------"

			

			puts "---------------------------------"
			puts "Voici les id present dans le chariot"
			a = user_cart.item_ids
			puts a
			puts "---------------------------------"

			puts "---------------------------------"
			puts "on rajoute dans le chariot"
			user_cart.item_ids << params[:id].to_i
			user_cart.save
			puts "---------------------------------"


			puts "---------------------------------"
			puts "on inspecte le chariot encore une derniere fois"
			puts user_cart.items.inspect
			puts "---------------------------------"
			puts a
			puts "---------------------------------"




		end
		
		redirect_to root_path


		

	end 


end
