require 'rails_helper'

RSpec.describe ProductsController, :type => :controller do
  before(:each) do
    @user = create(:user, account_type: 1)
    sign_in :user, @user
    @company = create(:company)
    @product = create(:product)

  end

  it 'should GET index' do
    get :index
    expect(response).to have_http_status(:success)
  end

  it 'should GET show' do
    get :show, id: @product.id
    expect(response).to have_http_status(:success)
  end

  it 'should GET new' do
    get :new
    expect(response).to have_http_status(:success)
  end

  it 'should GET edit' do
    get :edit, id: @product.id
    expect(response).to have_http_status(:success)
  end

  describe 'create method' do
    it 'should create a product record' do
      product = FactoryGirl.attributes_for(:product, id: @product.id, name: 'demo_product')
      expect {
      post :create, product: product
      }.to change(Product, :count).by(1)
    end

    it 'should render new view' do
      product = FactoryGirl.attributes_for(:product, name: 'television')
      post :create, product: product
      expect(response).to render_template('new')
    end
  end

  describe 'PUT Update' do
    it 'should update a product record' do
      new_product = FactoryGirl.attributes_for(:product, name: 'LCD television')
      put :update, id: @product.id, product: new_product
      expect(assigns(:product).name).to eq(new_product[:name])
    end
  end

  it 'should DELETE destroy' do
    expect {
    delete :destroy, id: @product.id
    }.to change(Product, :count).by(-1)
  end
end
