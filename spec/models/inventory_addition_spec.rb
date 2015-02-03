require 'rails_helper'

RSpec.describe InventoryAddition, :type => :model do
  it 'should update quantity for a product' do
    product = create(:product)
    quantity_before_addition = product.quantity
    inventory_addition = create(:inventory_addition, product_id: product.id)
    quantity_after_addition = Product.find(inventory_addition.product_id).quantity
    quantity_after_addition.should == quantity_before_addition+inventory_addition.quantity
  end
end
