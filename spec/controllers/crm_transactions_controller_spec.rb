require 'rails_helper'

RSpec.describe CrmTransactionsController, :type => :controller do

  before(:each) do
    user = create(:user, account_type: 1)
    sign_in :user, user
    @company = create(:company)
    @lead = create(:lead, company: @company)
    @account = create(:account, lead_id: @lead.id)
    @crm_transaction = create(:crm_transaction, company: @company)
  end

  it 'GET index' do
    get :index, account_id: @account.id
    expect(response).to have_http_status(:success)
  end

  it 'should GET show' do
    get :show, id: @crm_transaction.id, account_id: @account.id
    expect(response).to have_http_status(:success)
  end

  it 'should GET new where matured_by is nil' do
    get :new, account_id: @account.id
    expect(response).to render_template('new')
  end

  it 'should GET edit' do
    get :edit, id: @crm_transaction.id, account_id: @account.id
    expect(response).to have_http_status(:success)
  end

  describe 'POST create' do
    it 'should create a record for crm_transaction' do
      create(:contact)
      @crm_transaction = FactoryGirl.attributes_for(:crm_transaction, lead_id: @lead.id, account_id: @account.id)
      expect{
        post :create, account_id: @account.id, transaction: @crm_transaction
      }.to change(CrmTransaction, :count).by(1)
    end
  end

  describe 'PUT update' do
    it 'should update a record for crm_transaction' do
      new_transaction = FactoryGirl.attributes_for(:crm_transaction, transaction_type: 'cheque', micr_code: '019123')
      put :update, account_id: @account.id, id: @crm_transaction.id, transaction: new_transaction
      expect(assigns(:transaction).transaction_type).to eq(new_transaction[:transaction_type])
    end

    it 'should render edit if record is not saved' do
      new_transaction = FactoryGirl.attributes_for(:crm_transaction, transaction_time: nil)
      put :update, account_id: @account.id, id: @crm_transaction.id, transaction: new_transaction
      expect(response).to render_template('edit')
    end
  end

  it 'should destroy a record' do
    expect{
      delete :destroy, account_id: @account.id, id: @crm_transaction.id
    }.to change(CrmTransaction, :count).by(-1)
  end

  it 'should generate pdf invoice' do
    get :invoice, account_id: @account.id, crm_transaction_id: @crm_transaction.id
    expect(response).to render_template('invoice')
  end
end
