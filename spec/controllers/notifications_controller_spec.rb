require 'rails_helper'

RSpec.describe NotificationsController, :type => :controller do
  before(:each) do
    @user = create(:user, account_type: 1)
    sign_in :user, @user
    @company = create(:company)

    @contact = create(:contact)
    @notification = create(:notification)
  end

  describe 'GET index' do
    it 'should GET index successfully for current type' do
      get :index, type: 'current'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET new' do
    it 'should GET new successfully' do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET edit' do
    it 'should GET edit successfully' do
      get :edit, id: @notification.id
      expect(response).to have_http_status(:success)
    end
  end

  describe 'notification_to_all' do
    it 'should open notifications_to_all page' do
      get :notifications_to_all
      expect(response).to have_http_status(:success)
    end

    it 'should send notifications to all' do
      post :notifications_to_all, body: 'vivek', notification_time: Time.now+2.hours, company_id: @company.id
      expect(response).to have_http_status(:found)
    end
  end

  describe 'POST create' do
    it 'should create a single notification' do
      expect {
      post :create, {notification: {body: 'new notification', notification_time: Time.now+2.hours, company_id: @company.id, subject: 'new subject', contact_id: @contact.id}, next_notification: ''}
      }.to change(Notification, :count).by(1)
    end
  end

  describe 'PUT Update' do
    it 'should update a notification record' do
      new_notification = FactoryGirl.attributes_for(:notification)
      put :update, id: @notification.id, notification: new_notification
      expect(assigns(:notification).body).to eq(new_notification[:body])
    end
  end

  it 'should DELETE destroy' do
    expect {
      delete :destroy, id: @notification.id
    }.to change(Notification, :count).by(-1)
  end

end
