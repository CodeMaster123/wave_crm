require 'rails_helper'

RSpec.describe TeamLeader, :type => :model do
  it 'should get current_target' do
    create(:user)
    team_leader = create(:team_leader)
    target = create(:target)
    team_leader.current_target.should == target
  end
end
