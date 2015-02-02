require 'rails_helper'

RSpec.describe ContactsController, :type => :controller do
  before(:each) do
    @user = create(:user)
    sign_in :user, @user

    create(:lead)
    @company = create(:company)

    @contact = create(:contact)
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

  it 'should GET edit with http success' do
    get :edit, company_id: @company.id, id: @contact.id
    expect(response).to have_http_status(:success)
  end
end
