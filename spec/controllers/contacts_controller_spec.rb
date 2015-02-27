require 'rails_helper'

RSpec.describe ContactsController, :type => :controller do
  before(:each) do
    @user = create(:user)
    sign_in :user, @user

    create(:lead)
    @company = create(:company)
    @account = create(:account)
    @contact = create(:contact, company: @company)
  end

  describe 'GET index' do
    it 'should GET index with http success for contacts with records' do
      get :index, company_id: @company.id
      expect(response).to have_http_status(:success)
    end
  end

  it 'should GET show with http success' do
    get :show, company_id: @company.id, id: @contact.id
    expect(response).to have_http_status(:success)
  end

  it 'should POST create method' do
    expect {
      post :create, account_id: @account.id, contact: FactoryGirl.attributes_for(:contact)
    }.to change(Contact, :count).by(1)
  end

  describe 'PUT Update' do
    it 'should update a c record' do
      new_contact = FactoryGirl.attributes_for(:contact)
      put :update, account_id: @account.id, id: @contact.id, contact: new_contact
      expect(assigns(:contact).first_name).to eq(new_contact[:first_name])
    end
  end

end
