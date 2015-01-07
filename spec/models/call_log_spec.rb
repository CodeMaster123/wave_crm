require 'rails_helper'

RSpec.describe CallLog, :type => :model do
  it 'should return full name of the user' do
    user = create(:user)
    create(:team_leader)
    call_log = create(:call_log)
    call_log.call_by.should == 'vivek varade'
  end
end
