require 'test_helper'
require 'declarative_authorization/maintenance'

class TransactionsControllerTest < ActionController::TestCase
    include Devise::TestHelpers
    include Authorization::TestHelper

    setup do
        @transaction = transactions(:one)
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

   # test "should create transaction" do
   #     @product_transactions = product_transactions(:one)
   #     @product_transactions = @product_transactions.attributes
   #     @product_transactions.delete('id')
   #     @product_transactions.delete('created_at')
   #     @product_transactions.delete('updated_at')
   #     @product_transactions.delete('transaction_id')
   #     puts "aaaaaaaaaaa #{@product_transactions}"
   #     assert_difference('Transaction.count') do
   #         post :create, transaction: { amount: @transaction.amount, contact_id: @transaction.contact_id, transaction_time: @transaction.transaction_time, matured_by: @transaction.matured_by, contact_type: 1 , product_transactions_attributes: @product_transactions}
   #     end
   #     assert_redirected_to transactions_path
   # end

    test "should show transaction" do
        get :show, id: @transaction
        assert_response :success
    end

    test "should get edit" do
        get :edit, id: @transaction
        assert_response :success
    end

 #   test "should update transaction" do
 #       put :update, id: @transaction, transaction: { amount: @transaction.amount, contact_id: @transaction.contact_id, transaction_time: @transaction.transaction_time }
 #       assert_redirected_to transaction_path(assigns(:transaction))
 #   end

    test "should destroy transaction" do
        assert_difference('Transaction.count', -1) do
            delete :destroy, id: @transaction
        end

        assert_redirected_to transactions_path
    end
end
