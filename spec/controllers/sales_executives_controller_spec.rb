require 'rails_helper'

RSpec.describe SalesExecutivesController, :type => :controller do
  before(:each) do
    @user = create(:user, account_type: 1)

    create(:team_leader)
    create(:sales_executive)
    create(:company)
  end

  it 'should GET index with http success' do
    sign_in :user, @user
    get :index
    expect(response).to have_http_status(:success)
  end

  it 'should GET show with http success' do
    sign_in :user, @user
    get :show, id: 1
    expect(response).to have_http_status(:success)
  end

  it 'should GET new with http success' do
    sign_in :user, @user
    get :new
    expect(response).to have_http_status(:success)
  end

  it 'should GET edit with http success' do
    sign_in :user, @user
    get :edit, id: 1
    expect(response).to have_http_status(:success)
  end
end
