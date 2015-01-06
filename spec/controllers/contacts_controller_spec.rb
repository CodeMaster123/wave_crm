require 'rails_helper'

RSpec.describe ContactsController, :type => :controller do
  before(:each) do
    @user = create(:user)

    create(:team_leader)
    create(:lead)
    create(:contact)
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

  it 'should GET edit with http success' do
    sign_in :user, @user
    get :edit, id: 1
    expect(response).to have_http_status(:success)
  end
end
