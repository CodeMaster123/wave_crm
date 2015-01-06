require 'rails_helper'

RSpec.describe InventoriesController, :type => :controller do
  before(:each) do
    @user = create(:user, account_type: 1)
    create(:company)
  end

  describe 'GET index' do
    it 'should GET index method' do
      sign_in :user, @user
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET show' do
    it 'should GET index method' do
      product = create(:product)
      sign_in :user, @user
      get :show, id: product.inventory.id
      expect(response).to have_http_status(:success)
    end
  end

  describe 'DELETE destroy' do
    it 'should destroy a record' do
      product = create(:product)
      sign_in :user, @user
      delete :destroy, id: product.inventory.id
      expect(response).to have_http_status(:found)
    end
  end
end
