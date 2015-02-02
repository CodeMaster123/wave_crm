require 'rails_helper'

RSpec.describe NotificationsController, :type => :controller do
  before(:each) do
    @user = create(:user, account_type: 1)
    create(:company)

    create(:contact)
    @notification = create(:notification)
  end

  describe 'GET index' do
    it 'should GET index successfully for current type' do
      sign_in :user, @user
      get :index, type: 'current'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET new' do
    it 'should GET new successfully' do
      sign_in :user, @user
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET edit' do
    it 'should GET edit successfully' do
      sign_in :user, @user
      get :edit, id: 1
      expect(response).to have_http_status(:success)
    end
  end

  describe 'notification_to_all' do
    it 'should open notifications_to_all page' do
      sign_in :user, @user
      get :notifications_to_all
      expect(response).to have_http_status(:success)
    end

    it 'should send notifications to all' do
      sign_in :user, @user
      post :notifications_to_all, body: 'vivek', notification_time: Time.now+2.hours, company_id:1
      expect(response).to have_http_status(:found)
    end
  end

  describe 'POST create' do
    it 'should create a single notification' do
      sign_in :user, @user
      expect {
      post :create, {notification: {body: 'new notification', notification_time: Time.now+2.hours, company_id: 1, subject: 'new subject', contact_id:1}, next_notification: ''}
      }.to change(Notification, :count).by(1)
    end
  end
end
