require 'rails_helper'

RSpec.describe LeadsController, :type => :controller do
  before(:each) do
    @user = create(:user)
    sign_in :user, @user

    @lead = create(:lead)
    create(:company)
  end

  it 'returns GET index http success for team leader' do
    get :index, format: :json
    expect(response).to have_http_status(:success)
  end

  it 'returns GET new http success' do
    get :new
    expect(response).to have_http_status(:success)
  end

  it 'should GET show with http success' do
    get :show, id: @lead.id
    expect(response).to have_http_status(:success)
  end

  it 'should create a lead' do
  end

  it 'should GET edit with http success' do
    #get :edit, id: @lead.id
    #expect(response).to have_http_status(:success)
  end

  it 'should destroy a lead' do
    delete :destroy, id: @lead.id
    expect(response).to have_http_status(:found)
  end

  it 'should postpone the lead' do
    get :postpone_lead, opening_date: Date.today+10.days, lead_id: 1
    expect(response).to have_http_status(:success)
  end
end
