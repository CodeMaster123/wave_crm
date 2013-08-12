require 'test_helper'
require 'declarative_authorization/maintenance'

class TransactionsControllerTest < ActionController::TestCase
    include Devise::TestHelpers
    include Authorization::TestHelper

    setup do
        @transaction = transactions(:one)
        @product_transactions = product_transactions(:one)
        @user = users(:one)
        sign_in @user
    end

    test "should get index" do
        get :index
        assert_response :success
        assert_not_nil assigns(:transactions)
    end

    test "should get new" do
        get :new
        assert_response :success
    end

    test "should check if executive can mature a lead" do
        get :new, id1: 1, matured_by: 1, executive_type: 'TeamLeader'
    end

    test "should create transaction" do
        assert_difference('Transaction.count') do
            post :create, transaction: { amount: @transaction.amount, company_id: @transaction.company_id, contact_id: @transaction.contact_id, transaction_time: @transaction.transaction_time, contact_type: @transaction.contact_type, matured_by: @transaction.matured_by, contact_type: @transaction.contact_type, micr_code: @transaction.micr_code, transaction_type: @transaction.transaction_type, account_id: @transaction.account_id, executive_type: @transaction.executive_type}
        end
        assert_redirected_to transactions_path
    end

    test "should show transaction" do
        get :show, id: @transaction
        assert_response :success
    end

    test "should get edit" do
        get :edit, id: @transaction
        assert_response :success
    end

    test "should update transaction" do
        put :update, id: @transaction, transaction: {amount: @transaction.amount, contact_id: @transaction.contact_id, transaction_time: @transaction.transaction_time, contact_type: @transaction.contact_type, matured_by: @transaction.matured_by, contact_type: @transaction.contact_type, micr_code: @transaction.micr_code, transaction_type: @transaction.transaction_type, account_id: @transaction.account_id, executive_type: @transaction.executive_type}
        assert_redirected_to transaction_path(assigns(:transaction))
    end

    test "should destroy transaction" do
        assert_difference('Transaction.count', -1) do
            delete :destroy, id: @transaction
        end

        assert_redirected_to transactions_path
    end

    test "should get invoice method" do
        get :invoice, id: 1
        assert_response :success
    end
end
