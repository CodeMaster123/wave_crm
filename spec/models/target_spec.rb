require 'rails_helper'

RSpec.describe Target, :type => :model do
  it "should return targetable's full name" do
    user = create(:user)
    target = create(:target)

    target.full_name.should == "#{target.user.first_name} #{target.user.last_name}"
  end

  it "should return target's list for admin" do

  end
end
