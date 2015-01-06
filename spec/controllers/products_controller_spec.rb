require 'rails_helper'

RSpec.describe ProductsController, :type => :controller do
  before(:each) do
    @user = create(:user, account_type: 1)
    create(:company)
    create(:product)
  end

  it 'should GET index' do
    sign_in :user, @user
    get :index
    expect(response).to have_http_status(:success)
  end

  it 'should GET show' do
    sign_in :user, @user
    get :show, id: 1
    expect(response).to have_http_status(:success)
  end

  it 'should GET new' do
    sign_in :user, @user
    get :new
    expect(response).to have_http_status(:success)
  end

  it 'should GET edit' do
    sign_in :user, @user
    get :edit, id: 1
    expect(response).to have_http_status(:success)
  end
end
