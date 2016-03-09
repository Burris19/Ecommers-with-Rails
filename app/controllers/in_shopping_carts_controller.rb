# == Schema Information
#
# Table name: in_shopping_carts
#
#  id               :integer          not null, primary key
#  product_id       :integer
#  shopping_cart_id :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class InShoppingCartsController < ApplicationController
	def create
		in_shopping_cart = InShoppingCart.new(product_id: params[:product_id],
										shopping_cart: @shopping_cart)	
		if in_shopping_cart.save
			redirect_to "/carrito", notice: "Guardamos el producto en tu carrito"
		else
			redirect_to products_path(id: params[:product_id]), notice: "No pudimos agregar el producto a tu carrito"
		end	
	end

	def destroy
		@in_shopping_cart = InShoppingCart.find(params[:id])

		@in_shopping_cart.destroy

		redirect_to carrito_path
	end
end
