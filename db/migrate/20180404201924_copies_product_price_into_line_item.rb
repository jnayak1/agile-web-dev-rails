class CopiesProductPriceIntoLineItem < ActiveRecord::Migration[5.1]
  def change
  	LineItem.all.each do |item| 
  		item.price = item.product.price
  		item.save!
  	end
  end
end
