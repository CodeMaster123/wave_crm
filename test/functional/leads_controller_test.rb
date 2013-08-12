require 'test_helper'
require 'declarative_authorization/maintenance'

class LeadsControllerTest < ActionController::TestCase
    include Devise::TestHelpers
    include Authorization::TestHelper

    setup do
        @lead = leads(:one)

        @user = users(:two)
        sign_in @user
    end

    test "should get index" do
        get :index, type: "future"

        assert_response :success
        assert_not_nil assigns(:leads)
    end

    test "should get new" do
        get :new
        assert_response :success
    end

    test "should get edit" do
        get :edit, id: @lead
        assert_response :success
    end

    test "should create lead" do
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
