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


    test "should show user" do
        get :show, id: @user
        assert_response :success
    end

    test "should get edit" do
        get :edit, id: @user
        assert_response :success
    end

    test "should create user" do
    end
    test "should update user" do
    end
end
