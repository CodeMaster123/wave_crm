require 'test_helper'
require 'declarative_authorization/maintenance'

class TransactionFieldsControllerTest < ActionController::TestCase
    include Devise::TestHelpers
    include Authorization::TestHelper

    setup do
        @transaction_field = transaction_fields(:one)
        @user = users(:one)
        sign_in @user
    end

    test "should get index" do
        get :index
        assert_response :success
        assert_not_nil assigns(:transaction_fields)
    end

    test "should get new" do
        get :new
        assert_response :success
    end

    test "should create transaction_field" do
        assert_difference('TransactionField.count') do
            post :create, transaction_field: { field_name: @transaction_field.field_name, user_id: @transaction_field.user_id }
        end

        assert_redirected_to transaction_field_path(assigns(:transaction_field))
    end

    test "should show transaction_field" do
        get :show, id: @transaction_field
        assert_response :success
    end

    test "should get edit" do
        get :edit, id: @transaction_field
        assert_response :success
    end

    test "should update transaction_field" do
        put :update, id: @transaction_field, transaction_field: { field_name: @transaction_field.field_name, user_id: @transaction_field.user_id }
        assert_redirected_to transaction_field_path(assigns(:transaction_field))
    end

    test "should destroy transaction_field" do
        assert_difference('TransactionField.count', -1) do
            delete :destroy, id: @transaction_field
        end

        assert_redirected_to transaction_fields_path
    end
end
