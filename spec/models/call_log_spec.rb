require 'rails_helper'

RSpec.describe CallLog, :type => :model do
  it 'should return full name of the user' do
    user = create(:user)
    call_log = create(:call_log, user: user)
    call_log.call_by.should == 'vivek varade'
  end
end
