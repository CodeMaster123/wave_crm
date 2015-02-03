require 'rails_helper'

RSpec.describe TransactionsController, :type => :controller do

  before(:each) do
    user = create(:user, account_type: 1)
    sign_in :user, user
    @lead = create(:lead)
    @account = create(:account, lead_id: @lead.id)
    create(:company)
  end

  it 'GET index' do
    get :index, account_id: @account.id
    expect(response).to have_http_status(:success)
  end

  it 'should GET show' do
    transaction = create(:transaction)
    get :show, id: transaction.id, account_id: @account.id
    expect(response).to have_http_status(:success)
  end

  it 'should GET new where matured_by is nil' do
    get :new, account_id: @account.id
    expect(response).to render_template('new')
  end

  it 'should GET edit' do
    transaction = create(:transaction)
    get :edit, id: transaction.id, account_id: @account.id
    expect(response).to have_http_status(:success)
  end

  describe 'POST create' do
    it 'should create a record for transaction' do
      create(:contact)
      transaction = FactoryGirl.attributes_for(:transaction, lead_id: @lead.id, account_id: @account.id)
      expect{
        post :create, account_id: @account.id, transaction: transaction
      }.to change(Transaction, :count).by(1)
    end
  end

  describe 'PUT update' do
    it 'should update a record for transaction' do
      transaction = create(:transaction)
      new_transaction = FactoryGirl.attributes_for(:transaction, transaction_type: 'cheque', micr_code: '019123')
      put :update, account_id: @account.id, id: transaction.id, transaction: new_transaction
      expect(assigns(:transaction).transaction_type).to eq(new_transaction[:transaction_type])
    end

    it 'should render edit if record is not saved' do
      transaction = create(:transaction)
      new_transaction = FactoryGirl.attributes_for(:transaction, transaction_time: nil)
      put :update, account_id: @account.id, id: transaction.id, transaction: new_transaction
      expect(response).to render_template('edit')
    end
  end

  it 'should destroy a record' do
    transaction = create(:transaction)
    expect{
      delete :destroy, account_id: @account.id, id: transaction.id
    }.to change(Transaction, :count).by(-1)
  end

  it 'should generate pdf invoice' do
    transaction = create(:transaction)
    get :invoice, account_id: @account.id, transaction_id: transaction.id
    expect(response).to render_template('invoice')
  end
end
