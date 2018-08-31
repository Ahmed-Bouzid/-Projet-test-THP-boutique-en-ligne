class Cart < ApplicationRecord
	has_and_belongs_to_many :items

	def total_price
		prices = []
		self.items.each do |item|
			prices << item.price
		end
		return prices.sum.to_f.round(2)
	end
end
