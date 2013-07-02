require 'test_helper'

class PartialPaymentsControllerTest < ActionController::TestCase
    include Devise::TestHelpers
    include Authorization::TestHelper

    setup do
        @partial_payment = partial_payments(:one)

        @user = users(:one)
        sign_in @user
    end

    test "should get index" do
        get :index
        assert_response :success
        assert_not_nil assigns(:partial_payments)
    end

    test "should get new" do
        get :new
        assert_response :success
    end

    test "should create partial_payment" do
        assert_difference('PartialPayment.count') do
            post :create, partial_payment: { amount_paid: @partial_payment.amount_paid, transaction_id: @partial_payment.transaction_id }
        end

        assert_redirected_to partial_payment_path(assigns(:partial_payment))
    end

    test "should show partial_payment" do
        get :show, id: @partial_payment
        assert_response :success
    end

    test "should get edit" do
        get :edit, id: @partial_payment
        assert_response :success
    end

    test "should update partial_payment" do
        put :update, id: @partial_payment, partial_payment: { amount_paid: @partial_payment.amount_paid, transaction_id: @partial_payment.transaction_id }
        assert_redirected_to partial_payment_path(assigns(:partial_payment))
    end

    test "should destroy partial_payment" do
        assert_difference('PartialPayment.count', -1) do
            delete :destroy, id: @partial_payment
        end

        assert_redirected_to partial_payments_path
    end
end
