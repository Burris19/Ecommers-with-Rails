# == Schema Information
#
# Table name: shopping_carts
#
#  id         :integer          not null, primary key
#  status     :integer          default(0)
#  ip         :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe ShoppingCart, type: :model do
  describe "status" do
  	it "can be set as payed" do
  		shopping_cart = FactoryGirl.create(:shopping_cart)
  		shopping_cart.payed!
  		puts shopping_cart.status
  		#expect(shopping_cart.status).to eq("payed")
  		expect(shopping_cart.payed?).to be_truthy
  	end
  end

  describe "#total" do
  	it "returns the total cost of the shopping_cart" do
	  	shopping_cart = FactoryGirl.create(:shopping_cart)
	  	products = FactoryGirl.create_list(:product,5)

	  	products.each do |product|
	  		FactoryGirl.create(:in_shopping_cart, product: product, shopping_cart: shopping_cart)
	  	end

	  	expect(shopping_cart.total).to eq(products.first.pricing * 5 )
  	end
  end
end
