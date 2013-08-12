require 'test_helper'
require 'declarative_authorization/maintenance'

class UsersControllerTest < ActionController::TestCase
    include Devise::TestHelpers
    include Authorization::TestHelper

    setup do
        @user = users(:two)

        @user_sign_in = users(:one)
        sign_in @user_sign_in
    end

    test "should get index" do
        get :index
        assert_response :success
        assert_not_nil assigns(:users)
    end

    test "should get new" do
        get :new
        assert_response :success
    end

    test "should create user" do
        assert_difference('User.count') do
            post :create, user: {first_name: @user.first_name, last_name: @user.last_name, address: @user.address, mobile_no: @user.mobile_no, email: @user.email, account_type: @user.account_type, company_id: @user.company_id}
        end
    end

    test "should show user" do
        get :show, id: @user
        assert_response :success
    end

    test "should get edit" do
        get :edit, id: @user
        assert_response :success
    end

    test "should update user" do
        put :update , user: {first_name: @user.first_name, last_name: @user.last_name, address: @user.address, mobile_no: @user.mobile_no, email: @user.email, account_type: @user.account_type, company_id: @user.company_id}
        assert_redirected_to users_path
    end
end
