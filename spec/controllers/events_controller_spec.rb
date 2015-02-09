require 'rails_helper'

RSpec.describe EventsController, :type => :controller do
  before(:each) do
    @user = create(:user, account_type: 1)
    sign_in :user, @user
    @company = create(:company)
    @event = create(:event, company: @company)
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
    get :edit, id: @event.id
    expect(response).to have_http_status(:success)
  end

  it 'should destroy a record' do
    delete :destroy, id: @event.id
    expect(response).to have_http_status(:found)
  end

  describe 'PUT Update' do
    it 'should update a event record' do
      new_event = FactoryGirl.attributes_for(:event, title: 'Meeting with ramesh pawar', company: @company)
      put :update, id: @event.id, event: new_event
      expect(assigns(:event).title).to eq(new_event[:title])
    end
  end

  it 'should POST create method' do
    expect {
      post :create, event: FactoryGirl.attributes_for(:event, company: @company)
    }.to change(Event, :count).by(1)
  end

end
