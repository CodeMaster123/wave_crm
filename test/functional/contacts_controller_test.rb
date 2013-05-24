require 'test_helper'
require 'declarative_authorization/maintenance'

class ContactsControllerTest < ActionController::TestCase
    include Devise::TestHelpers
    include Authorization::TestHelper
    setup do
        @contact = contacts(:one)

        @user = users(:one)
        sign_in @user
    end

    test "should get index" do
        get :index, :type => "client"
        assert_response :success
        assert_not_nil assigns(:contacts)
    end

    test "should get new" do
        get :new
        assert_response :success
    end

    test "should create contact" do
        assert_difference('Contact.count') do
            post :create, contact: { address: @contact.address, first_name: @contact.first_name, landline_no: @contact.landline_no, last_name: @contact.last_name, latitude: @contact.latitude, longitude: @contact.longitude, middle_name: @contact.middle_name, mobile_no: @contact.mobile_no}
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
        put :update, id: @contact, contact: { address: @contact.address, first_name: @contact.first_name, landline_no: @contact.landline_no, last_name: @contact.last_name, latitude: @contact.latitude, longitude: @contact.longitude, middle_name: @contact.middle_name, mobile_no: @contact.mobile_no}
        assert_redirected_to contact_path(assigns(:contact))
    end

    test "should destroy contact" do
        assert_difference('Contact.count', -1) do
            delete :destroy, id: @contact
        end

        assert_redirected_to contacts_path
    end
end
