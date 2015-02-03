require 'rails_helper'

RSpec.describe ProductsController, :type => :controller do
  before(:each) do
    @user = create(:user, account_type: 1)
    sign_in :user, @user
    create(:company)
  end

  it 'should GET index' do
    get :index
    expect(response).to have_http_status(:success)
  end

  it 'should GET show' do
    product = create(:product)
    get :show, id: product.id
    expect(response).to have_http_status(:success)
  end

  it 'should GET new' do
    get :new
    expect(response).to have_http_status(:success)
  end

  it 'should GET edit' do
    product = create(:product)
    get :edit, id: product.id
    expect(response).to have_http_status(:success)
  end

  describe 'create method' do
    it 'should create a product record' do
      product = FactoryGirl.attributes_for(:product, id: 10, name: 'demo_product')
      expect {
      post :create, product: product
      }.to change(Product, :count).by(1)
    end

    it 'should render new view' do
    create(:product)
      product = FactoryGirl.attributes_for(:product, name: 'television')
      post :create, product: product
      expect(response).to render_template('new')
    end
  end

  describe 'PUT Update' do
    it 'should update a product record' do
      product = create(:product)
      new_product = FactoryGirl.attributes_for(:product, name: 'LCD television')
      put :update, id: product.id, product: new_product
      expect(assigns(:product).name).to eq(new_product[:name])
    end

    it 'should render edit if product not updated' do
      create(:product)
      product = create(:product, id: 10, name: 'AC')
      new_product = FactoryGirl.attributes_for(:product, name: 'television')
      put :update, id: product.id, product: new_product
      expect(response).to render_template('edit')
    end
  end

  it 'should DELETE destroy' do
    product = create(:product)
    expect {
    delete :destroy, id: product.id
    }.to change(Product, :count).by(-1)
  end
end
