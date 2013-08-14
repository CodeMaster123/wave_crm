require 'test_helper'
require 'declarative_authorization/maintenance'

class LeadsControllerTest < ActionController::TestCase
    include Devise::TestHelpers
    include Authorization::TestHelper

    setup do
        @lead = leads(:one)

        @admin= users(:two)
        sign_in @admin
    end

    test "should get index for admin" do
        get :index, type: "future", id1: 1

        assert_response :success
        assert_not_nil assigns(:leads)
    end

    test "should get index when status is not future,dead or matured for admin" do
        get :index, type: "in queue"

        assert_response :success
        assert_not_nil assigns(:leads)
    end

    test "should get index for team leader" do
        @team_leader = users(:one)
        sign_out @admin
        sign_in @team_leader
        get :index, type: "in queue"

        assert_response :success
        assert_not_nil assigns(:leads)
    end

    test "should get index for team leader when status is future, dead or matured" do
        @team_leader = users(:team_leader)
        sign_out @admin
        sign_in @team_leader
        get :index, type: "future"

        assert_response :success
        assert_not_nil assigns(:leads)
    end

    test "should get index for team leader when status is not future, dead or matured" do
        @team_leader = users(:team_leader)
        sign_out @admin
        sign_in @team_leader
        get :index, type: "in queue"

        assert_response :success
        assert_not_nil assigns(:leads)
    end

    test "should get index for team leader when status is not future, dead or matured and params_sales_executive is not nil" do
        @team_leader = users(:team_leader)
        sign_out @admin
        sign_in @team_leader
        get :index, type: "in queue", sales_executive: true

        assert_response :success
        assert_not_nil assigns(:leads)
    end

    test "should get index for sales executive when status is future, dead or matured" do
        @sales_executive = users(:sales_executive1)
        sign_out @admin
        sign_in @sales_executive
        get :index, type: "future"

        assert_response :success
        assert_not_nil assigns(:leads)
    end

    test "should get index for sales executive when status is not future, dead or matured" do
        @sales_executive = users(:sales_executive1)
        sign_out @admin
        sign_in @sales_executive
        get :index, type: "future"

        assert_response :success
        assert_not_nil assigns(:leads)
    end

    test "should get new" do
        get :new
        assert_response :success
    end

    test "should get edit when contacts is not empty" do
        get :edit, id: @lead
        assert_response :success
    end

    test "should get edit when contacts is empty" do
        get :edit, id: @lead
        @lead.contacts = []
        assert_response :success
    end

    test "should create lead for team leader" do
        @team_leader = users(:team_leader)
        sign_out @admin
        sign_in @team_leader

        assert_difference('Lead.count') do
            post :create, lead: { title: @lead.title, description: @lead.description, leadable_id: @lead.leadable_id, leadable_type: @lead.leadable_type, lead_status: @lead.lead_status, lead_source: @lead.lead_source, company_id: @lead.lead_source}
        end

        assert_redirected_to leads_path
    end

    test "should create lead for sales executive" do
        @sales_executive = users(:sales_executive1)
        sign_out @admin
        sign_in @sales_executive

        assert_difference('Lead.count') do
            post :create, lead: { title: @lead.title, description: @lead.description, leadable_id: @lead.leadable_id, leadable_type: @lead.leadable_type, lead_status: @lead.lead_status, lead_source: @lead.lead_source, company_id: @lead.lead_source}
        end

        assert_redirected_to leads_path
    end

    test "should show lead" do
        get :show, id: @lead
        assert_response :success
    end

    test "should update lead" do
        put :update, id: @lead, lead: { title: @lead.title, description: @lead.description, leadable_id: @lead.leadable_id, leadable_type: @lead.leadable_type}
        assert_redirected_to leads_path
    end

    test "should destroy lead" do
        assert_difference('Lead.count', -1) do
            delete :destroy, id: @lead
        end

        assert_redirected_to leads_path
    end

    test "change lead owner" do
        post :change_owner, leadable_type: "TeamLeader", leadable_id: 1, lead_id: 1
        assert_response :success
    end

    test "postpone lead" do
        post :postpone_lead, opening_date: Date.tomorrow, lead_id: 1
        assert_response :success
    end
end
