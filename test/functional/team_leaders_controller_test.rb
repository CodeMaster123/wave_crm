require 'test_helper'
require 'declarative_authorization/maintenance'

class TeamLeadersControllerTest < ActionController::TestCase
    include Devise::TestHelpers
    include Authorization::TestHelper

  setup do
    @team_leader = team_leaders(:one)
        @user = users(:one)
        sign_in @user
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:team_leaders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create team_leader" do
    assert_difference('TeamLeader.count') do
      post :create, team_leader: { employee_id: @team_leader.employee_id, user_id: @team_leader.user_id}
    end

    assert_redirected_to team_leaders_path
  end

  test "should show team_leader" do
    get :show, id: @team_leader
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @team_leader
    assert_response :success
  end

  test "should update team_leader" do
    put :update, id: @team_leader, team_leader: { employee_id: @team_leader.employee_id, user_id: @team_leader.user_id}
    assert_redirected_to team_leader_path(assigns(:team_leader))
  end

  test "should destroy team_leader" do
    assert_difference('TeamLeader.count', -1) do
      delete :destroy, id: @team_leader
    end

    assert_redirected_to team_leaders_path
  end
end
