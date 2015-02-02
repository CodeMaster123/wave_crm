require 'rails_helper'

RSpec.describe EventsController, :type => :controller do
  before(:each) do
    @user = create(:user, account_type: 1)
    sign_in :user, @user
    create(:company)
  end

  it 'should GET index' do
    get :index
    expect(response).to have_http_status(:success)
  end

  it 'should GET new' do
    get :new
    expect(response).to have_http_status(:success)
  end

  it 'should GET edit' do
    create(:event)
    get :edit, id: 1
    expect(response).to have_http_status(:success)
  end

  it 'should destroy a record' do
    event = create(:event)
    delete :destroy, id: event.id
    expect(response).to have_http_status(:found)
  end

  describe 'PUT Update' do
    it 'should update a event record' do
      event = create(:event)
      new_event = FactoryGirl.attributes_for(:event, title: 'Meeting with ramesh pawar')
      put :update, id: event.id, event: new_event
      expect(assigns(:event).title).to eq(new_event[:title])
    end
  end

end
