require 'rails_helper'

RSpec.describe InventoriesController, :type => :controller do
  before(:each) do
    @user = create(:user, account_type: 1)
    sign_in :user, @user

    create(:company)
  end

  describe 'GET index' do
    it 'should GET index method' do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET show' do
    it 'should GET index method' do
      product = create(:product)
      get :show, id: product.inventory.id
      expect(response).to have_http_status(:success)
    end
  end

  describe 'DELETE destroy' do
    it 'should destroy a record' do
      product = create(:product)
      delete :destroy, id: product.inventory.id
      expect(response).to have_http_status(:found)
    end
  end
end
