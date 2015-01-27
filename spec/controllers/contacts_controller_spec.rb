require 'rails_helper'

RSpec.describe ContactsController, :type => :controller do
  before(:each) do
    @user = create(:user)
    sign_in :user, @user

    create(:lead)
    create(:company)

    @contact = create(:contact)
  end

  describe 'GET index' do
    it 'should GET index with http success for contacts with records' do
      get :index, type: 'contact'
      expect(response).to have_http_status(:success)
    end

    it 'should GET index with for potential customers with records' do
      get :index, type: 'potential_customer'
      expect(response).to have_http_status(:success)
    end
  end

  it 'should GET show with http success' do
    get :show, id: @contact.id
    expect(response).to have_http_status(:success)
  end

  it 'should GET edit with http success' do
    get :edit, id: @contact.id
    expect(response).to have_http_status(:success)
  end
end
