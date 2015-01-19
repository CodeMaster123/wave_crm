require 'rails_helper'

RSpec.describe InventoryAddition, :type => :model do
  it 'should update quantity for inventory' do
    product = create(:product)
    inventory_addition = create(:inventory_addition)
    inventory_addition.inventory.quantity.should == inventory_addition.quantity
  end
end
