require 'rails_helper'

RSpec.describe Product, type: :model do
  it{ should validate_presence_of :name }
  it{ should validate_presence_of :user }
  it{ should validate_presence_of :pricing }

  it "should validte pricing > 0" do
  	#con create lo guarda en la base de datos
  	#con build solamente lo guarda en memoria
  	#product = FactoryGirl.create(:product)
  	product = FactoryGirl.build(:product, pricing: 0)
  	#imprimo el producto
  	#puts product.inspect

  	#le indico que me muestre los errores 
  	puts product.errors.inspect

  	#espero que sea falso para que la prueba pase
  	expect(product.valid?).to be_falsy


  end

end
