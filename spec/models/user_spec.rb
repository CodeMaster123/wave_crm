require 'rails_helper'

RSpec.describe User, :type => :model do
  before(:each) do
    create(:company)
  end

  describe 'Role Symbols' do
    it 'should get role symbols for admin' do
      user = create(:user, account_type: 1)
      expect(user.role_symbols).to eq([:admin])
    end

    it 'should get role symbols for team_leader' do
      user = create(:user, account_type: 2)
      expect(user.role_symbols).to eq([:team_leader])
    end

    it 'should get role symbols for admin' do
      user = create(:user, account_type: 3)
      expect(user.role_symbols).to eq([:sales_executive])
    end

    it 'should get role symbols for admin' do
      user = create(:user, account_type: 4)
      expect(user.role_symbols).to eq([:superadmin])
    end

  end

  it "should return user's full name" do
    user = create(:user)
    expect(user.full_name).to eq("#{user.first_name} #{user.last_name}")
  end

  it 'should iterate over targets' do
    user1 = create(:user)
    target = create(:target, user: user1)
    user2 = create(:user, email: 'newmail@gmail.com', mobile_no: '8734654589', id: 2)
    target = create(:target, user: user2)

    expect(User.iterate_over_targets User.all).to eq(Target.all)
  end

  it 'should return targets for team leaders' do
    team_leader = create(:user, account_type: 2)
    target = create(:target, user: team_leader)
    sales_executive = create(:user, account_type: 3, email:'sales_executive@gmail.com', mobile_no: '1233212312', team_leader_id: team_leader.id)
    target = create(:target, user: sales_executive)
    expect(team_leader.team_leader_target_list).to eq(Target.all)
  end

  it 'should get sales_executives for team_leader' do
    team_leader = create(:user, account_type: 2)
    sales_executive = create(:user, account_type: 3, email:'sales_executive@gmail.com', mobile_no: '1233212312', team_leader_id: team_leader.id)
    expect(team_leader.sales_executives.to_a).to eq(User.where(team_leader_id: team_leader.id, account_type: 3))
  end
end
