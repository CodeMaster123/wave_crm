require 'test_helper'
require 'declarative_authorization/maintenance'

class AccountsControllerTest < ActionController::TestCase
    include Devise::TestHelpers
    include Authorization::TestHelper

    setup do
        @account = accounts(:one)

        @user = users(:one)
        sign_in @user
    end

    test "should get index" do
        get :index
        assert_response :success
        assert_not_nil assigns(:accounts)
    end

    test "should get new" do
        get :new
        assert_response :success
    end

    test "should create account" do
        assert_difference('Account.count') do
            post :create, account: { account_name: @account.account_name, account_owner: @account.account_owner, billing_address: @account.billing_address, number_of_employees: @account.number_of_employees, ownership_type: @account.ownership_type, phone_number: @account.phone_number, shipping_address: @account.shipping_address, website: @account.website }
        end

        assert_redirected_to account_path(assigns(:account))
    end

    test "should show account" do
        get :show, id: @account
        assert_response :success
    end

    test "should get edit" do
        get :edit, id: @account
        assert_response :success
    end

    test "should update account" do
        put :update, id: @account, account: { account_name: @account.account_name, account_owner: @account.account_owner, billing_address: @account.billing_address, number_of_employees: @account.number_of_employees, ownership_type: @account.ownership_type, phone_number: @account.phone_number, shipping_address: @account.shipping_address, website: @account.website }
        assert_redirected_to account_path(assigns(:account))
    end

    test "should destroy account" do
        assert_difference('Account.count', -1) do
            delete :destroy, id: @account
        end

        assert_redirected_to accounts_path
    end
end
