require 'rails_helper'

RSpec.describe CallLogsController, :type => :controller do

  before(:each) do
    @user = create(:user)
    sign_in :user, @user

    @lead = create(:lead)
    @contact = create(:contact)
    @call_log = create(:call_log)
  end

end

