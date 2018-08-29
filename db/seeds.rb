20.times do |x|
	Item.create(title:"Chat#{x}",description:"Race numero #{x}",price: rand(100..200), image_url:"Chat#{x}")
end


# CART
Cart.destroy_all
puts "\nTotal cart count: #{Cart.all.count}"
