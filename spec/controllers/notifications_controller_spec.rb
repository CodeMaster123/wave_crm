require 'rails_helper'

RSpec.describe NotificationsController, :type => :controller do
  before(:each) do
    @user = create(:user, account_type: 1)
    create(:company)
  end

  describe 'GET index' do
    it 'should GET index successfully for current type' do
      sign_in :user, @user
      get :index, type: 'current'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET show' do
    it 'should GET show successfully' do
      sign_in :user, @user
      contact = create(:contact)
      get :show, id: contact.notifications.first.id
    end
  end
end
