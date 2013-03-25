require 'test_helper'

class TeamLeadersControllerTest < ActionController::TestCase
  setup do
    @team_leader = team_leaders(:one)
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
      post :create, team_leader: { employee_id: @team_leader.employee_id, lead_id: @team_leader.lead_id, sales_executive_id: @team_leader.sales_executive_id }
    end

    assert_redirected_to team_leader_path(assigns(:team_leader))
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
    put :update, id: @team_leader, team_leader: { employee_id: @team_leader.employee_id, lead_id: @team_leader.lead_id, sales_executive_id: @team_leader.sales_executive_id }
    assert_redirected_to team_leader_path(assigns(:team_leader))
  end

  test "should destroy team_leader" do
    assert_difference('TeamLeader.count', -1) do
      delete :destroy, id: @team_leader
    end

    assert_redirected_to team_leaders_path
  end
end
