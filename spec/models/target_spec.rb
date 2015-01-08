require 'rails_helper'

RSpec.describe Target, :type => :model do
  it "should return targetable's full name" do
    user = create(:user)
    create(:team_leader)
    target = create(:target)

    target.full_name.should == "#{user.first_name} #{user.last_name}"
  end

  it "should return target's list for admin" do

  end
end
