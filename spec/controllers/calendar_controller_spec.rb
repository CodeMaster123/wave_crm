require 'rails_helper'

RSpec.describe CalendarController, :type => :controller do

  before(:each) do
    @user = create(:user, account_type: 1)
    sign_in :user, @user
    create(:company)
    create(:contact)
  end

  it 'should GET index' do
    get :index
    expect(response).to have_http_status(:success)
  end

end
