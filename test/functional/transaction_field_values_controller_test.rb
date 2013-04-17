require 'test_helper'

class TransactionFieldValuesControllerTest < ActionController::TestCase
  setup do
    @transaction_field_value = transaction_field_values(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:transaction_field_values)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create transaction_field_value" do
    assert_difference('TransactionFieldValue.count') do
      post :create, transaction_field_value: { transaction_field_id: @transaction_field_value.transaction_field_id, transaction_field_value: @transaction_field_value.transaction_field_value, transaction_id: @transaction_field_value.transaction_id }
    end

    assert_redirected_to transaction_field_value_path(assigns(:transaction_field_value))
  end

  test "should show transaction_field_value" do
    get :show, id: @transaction_field_value
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @transaction_field_value
    assert_response :success
  end

  test "should update transaction_field_value" do
    put :update, id: @transaction_field_value, transaction_field_value: { transaction_field_id: @transaction_field_value.transaction_field_id, transaction_field_value: @transaction_field_value.transaction_field_value, transaction_id: @transaction_field_value.transaction_id }
    assert_redirected_to transaction_field_value_path(assigns(:transaction_field_value))
  end

  test "should destroy transaction_field_value" do
    assert_difference('TransactionFieldValue.count', -1) do
      delete :destroy, id: @transaction_field_value
    end

    assert_redirected_to transaction_field_values_path
  end
end
