require 'test_helper'
require 'declarative_authorization/maintenance'

class ContactsControllerTest < ActionController::TestCase
    include Devise::TestHelpers
    include Authorization::TestHelper
    setup do
        @contact = contacts(:one)

        @admin = users(:one)
        sign_in @admin
    end

    test "should get index of clients for admin account" do
        get :index, :type => "client"
        assert_response :success
        assert_not_nil assigns(:contacts)
    end

    test "should get index of potential customers for admin account" do
        get :index, :type => "potential_customer"
        assert_response :success
        assert_not_nil assigns(:contacts)
    end

    test "should get index of clients for team leader account" do
        @team_leader = users(:team_leader)
        sign_out @admin
        sign_in @team_leader

        get :index, :type => "client"
        assert_response :success
        assert_not_nil assigns(:contacts)
    end

    test "should get index of potential customers for team leader account" do
        @team_leader = users(:team_leader)
        sign_out @admin
        sign_in @team_leader

        get :index, :type => "potential_customer"
        assert_response :success
        assert_not_nil assigns(:contacts)
    end

    test "should get index of clients for sales executive account" do
        @sales_executive = users(:sales_executive1)
        sign_out @admin
        sign_in @sales_executive

        get :index, :type => "client"
        assert_response :success
        assert_not_nil assigns(:contacts)
    end

    test "should get index of potential customers for sales executive account" do
        @sales_executive = users(:sales_executive1)
        sign_out @admin
        sign_in @sales_executive

        get :index, :type => "potential_customer"
        assert_response :success
        assert_not_nil assigns(:contacts)
    end

    test "should create contact" do
        assert_difference('Contact.count') do
            post :create, contact: { address: @contact.address, first_name: @contact.first_name, landline_no: @contact.landline_no, last_name: @contact.last_name, latitude: @contact.latitude, longitude: @contact.longitude, middle_name: @contact.middle_name, mobile_no: @contact.mobile_no, contact_relationship: @contact.contact_relationship}
        end

        assert_redirected_to contacts_path
    end

    test "should show contact" do
        get :show, id: @contact
        assert_response :success
    end

    test "should get edit" do
        get :edit, id: @contact
        assert_response :success
    end

    test "should update contact" do
        @company = companies(:one)
        put :update, format: 'html', id: @contact, contact: { address: @contact.address, first_name: @contact.first_name, landline_no: @contact.landline_no, last_name: @contact.last_name, latitude: @contact.latitude, longitude: @contact.longitude, middle_name: @contact.middle_name, mobile_no: @contact.mobile_no,contact_relationship: @contact.contact_relationship}
        assert_redirected_to :controller => "contacts", :action => "index", :type => "client"
    end

    test "should destroy contact" do
        assert_difference('Contact.count', -1) do
            delete :destroy, id: @contact
        end

        assert_redirected_to :controller => "contacts", :action => "index", :type => "client"
    end
end
