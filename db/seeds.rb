20.times do |x|

  Item.create(title:"Chat#{x}",description:"Race#{x}",price:rand(1..20))

end
