require 'rails_helper'

RSpec.describe AccountsController, :type => :controller do
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
    account = create(:account)
    get :show, id: account.id
    expect(response).to have_http_status(:success)
  end

  it 'should GET new' do
    get :new
    expect(response).to have_http_status(:success)
  end

  it 'should GET edit' do
    account = create(:account)
    get :edit, id: account.id
    expect(response).to have_http_status(:success)
  end

  it 'should destroy a record' do
    account = create(:account)
    delete :destroy, id: account.id
    expect(response).to have_http_status(:found)
  end

  it 'should POST create method' do
    expect {
      post :create, account: FactoryGirl.attributes_for(:account)
    }.to change(Account, :count).by(1)
  end

  describe 'PUT update' do
    it 'should update a record for account' do
      account = create(:account)
      new_account = FactoryGirl.attributes_for(:account)
      put :update, id: account.id, account: new_account
      expect(assigns(:account).account_name).to eq(new_account[:account_name])
    end
  end


end
