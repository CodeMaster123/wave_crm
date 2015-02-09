require 'rails_helper'

RSpec.describe CompaniesController, :type => :controller do

  before(:each) do
    @user = create(:user, account_type: 4)
    sign_in :user, @user
    @company = create(:company)
  end

  it 'should GET index' do
    get :index
    expect(response).to have_http_status(:success)
  end

  it 'should GET show' do
    get :show, id: @company.id
    expect(response).to have_http_status(:success)
  end

  it 'should GET new' do
    get :new
    expect(response).to have_http_status(:success)
  end

  it 'should GET edit' do
    get :edit, id: @company.id
    expect(response).to have_http_status(:success)
  end

  it 'should destroy a record' do
    expect{
      delete :destroy, id: @company.id
    }.to change(Company, :count).by(-1)
  end

  describe 'create method' do
    it 'should create a company record' do
      company = FactoryGirl.attributes_for(:company, id: 200)
      expect {
        post :create, company: company
      }.to change(Company, :count).by(1)
    end
  end

  describe 'PUT update' do
    it 'should update a record for company' do
      new_company = FactoryGirl.attributes_for(:company)
      put :update, id: @company.id, company: new_company
      expect(assigns(:company).company_name).to eq(new_company[:company_name])
    end
  end

end
