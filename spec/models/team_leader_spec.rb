require 'rails_helper'

RSpec.describe TeamLeader, :type => :model do
  it 'should get current_target' do
    create(:user)
    team_leader = create(:team_leader)
    create(:target)

  end
end
