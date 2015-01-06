require 'rails_helper'

RSpec.describe LeadsController, :type => :controller do
  before(:each) do
    @user = create(:user)

    create(:team_leader)
    create(:lead)
    create(:company)
  end

  it 'returns GET index http success for team leader' do
    sign_in :user, @user
    get :index
    expect(response).to have_http_status(:success)
  end

  it 'returns GET new http success' do
    sign_in :user, @user
    get :new
    expect(response).to have_http_status(:success)
  end

  it 'should GET show with http success' do
    sign_in :user, @user
    get :show, id: 1
    expect(response).to have_http_status(:success)
  end

  it 'should create a lead' do
  end

  it 'should GET edit with http success' do
    #sign_in :user, @user
    #get :edit, id: 1
    #expect(response).to have_http_status(:success)
  end

  it 'should destroy a lead' do
    sign_in :user, @user
    delete :destroy, id: 1
    expect(response).to have_http_status(:found)
  end

  it 'should postpone the lead' do
    sign_in :user, @user
    get :postpone_lead, opening_date: Date.today+10.days, lead_id: 1
    expect(response).to have_http_status(:success)
  end
end
