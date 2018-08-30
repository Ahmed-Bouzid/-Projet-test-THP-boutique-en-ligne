class CreateOrders < ActiveRecord::Migration[5.2]
	def change
		create_table :orders do |t|
			t.string :title
			t.decimal :price
			t.string :image_url
			t.timestamps
		end
	end
end
