require 'rails_helper'

RSpec.describe TransactionsController, :type => :controller do
  before(:each) do
    user = create(:user, account_type: 1)
    sign_in :user, user
    create(:company)
  end

  it 'GET index' do
    get :index
    expect(response).to have_http_status(:success)
  end

  it 'should GET show' do
    transaction = create(:transaction)
    get :show, id: transaction.id
    expect(response).to have_http_status(:success)
  end

  it 'should GET new where matured_by is nil' do
    get :new
    expect(response).to have_http_status(:success)
  end

  it 'should GET edit' do
    transaction = create(:transaction)
    get :edit, id: transaction.id
    expect(response).to have_http_status(:success)
  end

  describe 'POST create' do
    it 'should create a record for transaction' do
      create(:account)
      create(:team_leader)
      create(:contact)
      create(:lead)
      transaction = FactoryGirl.attributes_for(:transaction)
      expect{
        post :create, transaction: transaction
      }.to change(Transaction, :count).by(1)
    end
  end

  describe 'PUT update' do
    it 'should update a record for transaction' do
      transaction = create(:transaction)
      new_transaction = FactoryGirl.attributes_for(:transaction, transaction_type: 'cheque', micr_code: '019123')
      put :update, id: transaction.id, transaction: new_transaction
      expect(assigns(:transaction).transaction_type).to eq(new_transaction[:transaction_type])
    end

    it 'should render edit if record is not saved' do
      transaction = create(:transaction)
      new_transaction = FactoryGirl.attributes_for(:transaction, transaction_time: nil)
      put :update, id: transaction.id, transaction: new_transaction
      expect(response).to render_template('edit')
    end
  end

  it 'should destroy a record' do
    transaction = create(:transaction)
    expect{
      delete :destroy, id: transaction.id
    }.to change(Transaction, :count).by(-1)
  end

  it 'should generate pdf invoice' do
    transaction = create(:transaction)
    get :invoice, id: transaction.id
    expect(response).to render_template('invoice')
  end
end
