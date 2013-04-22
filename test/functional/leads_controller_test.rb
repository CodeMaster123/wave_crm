require 'test_helper'
require 'declarative_authorization/maintenance'

class LeadsControllerTest < ActionController::TestCase
    include Devise::TestHelpers
    include Authorization::TestHelper

    setup do
        @lead = leads(:one)

        @user = users(:one)
        sign_in @user
    end

    test "should get index" do
        get :index
        assert_response :success
        assert_not_nil assigns(:leads)
    end

    test "should get new" do
        get :new
        assert_response :success
    end

    test "should create lead" do
        assert_difference('Lead.count') do
            post :create, lead: { contact_id: @lead.contact_id, description: @lead.description, executive_id: @lead.executive_id, lead_by: @lead.lead_by, title: @lead.title }
        end

        assert_redirected_to lead_path(assigns(:lead))
    end

    test "should show lead" do
        get :show, id: @lead
        assert_response :success
    end

    test "should get edit" do
        get :edit, id: @lead
        assert_response :success
    end

    test "should update lead" do
        put :update, id: @lead, lead: { contact_id: @lead.contact_id, description: @lead.description, executive_id: @lead.executive_id, lead_by: @lead.lead_by, title: @lead.title }
        assert_redirected_to lead_path(assigns(:lead))
    end

    test "should destroy lead" do
        assert_difference('Lead.count', -1) do
            delete :destroy, id: @lead
        end

        assert_redirected_to leads_path
    end
end
