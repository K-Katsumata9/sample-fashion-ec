class Cart < ApplicationRecord
	has_many :line_items
	has_many :products, through: :line_items

	def sub_total
		total = 0
		self.line_items.each do |i|
			total += i.amount
		end
		return total
	end
end
