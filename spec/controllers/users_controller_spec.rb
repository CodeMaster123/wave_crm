require 'rails_helper'

RSpec.describe UsersController, :type => :controller do

  before(:each) do
    @user = create(:user, account_type: 1)
    sign_in :user, @user
    @company = create(:company)
  end

  it 'should GET index' do
    get :index
    expect(response).to have_http_status(:success)
  end

  it 'should GET show' do
    get :show, id: @user.id
    expect(response).to have_http_status(:success)
  end

  it 'should GET new' do
    get :new
    expect(response).to have_http_status(:success)
  end

  it 'should GET edit' do
    get :edit, id: @user.id
    expect(response).to have_http_status(:success)
  end

  it 'should destroy a record' do
    expect{
      delete :destroy, id: @user.id
    }.to change(User, :count).by(-1)
  end

  describe 'create method' do
    it 'should create a user record' do
      user = FactoryGirl.attributes_for(:user, id: @user.id)
      post :create, user: user
    end
  end

  describe 'PUT update' do
    it 'should update a record for user' do
      new_user = FactoryGirl.attributes_for(:user)
      put :update, company_id: @company.id, id: @user.id, user: new_user
      expect(assigns(:user).first_name).to eq(new_user[:first_name])
    end
  end

end
