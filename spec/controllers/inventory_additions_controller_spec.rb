require 'rails_helper'

RSpec.describe InventoryAdditionsController, :type => :controller do

  before(:each) do
    @user = create(:user, account_type: 1)
    sign_in :user, @user
    @company = create(:company)
    @product = create(:product)
  end

  it 'should GET new' do
    get :new, product_id: @product.id
    expect(response).to have_http_status(:success)
  end

  describe 'POST create' do
    it 'should create a record for inventory_addition' do
      inventory_addition = FactoryGirl.attributes_for(:inventory_addition, product_id: @product.id)
      expect{
        post :create, product_id: @product.id, inventory_addition: inventory_addition
      }.to change(InventoryAddition, :count).by(1)
    end
  end

  it 'should destroy a record' do
    inventory_addition = create(:inventory_addition, product_id: @product.id)
    expect{
      delete :destroy, product_id: @product.id, id: inventory_addition.id
    }.to change(InventoryAddition, :count).by(-1)
  end

end
