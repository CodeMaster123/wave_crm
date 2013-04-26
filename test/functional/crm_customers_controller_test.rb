require 'test_helper'

class CrmCustomersControllerTest < ActionController::TestCase
  setup do
    @crm_customer = crm_customers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:crm_customers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create crm_customer" do
    assert_difference('CrmCustomer.count') do
      post :create, crm_customer: { address: @crm_customer.address, amount_paid: @crm_customer.amount_paid, first_name: @crm_customer.first_name, last_name: @crm_customer.last_name, middle_name: @crm_customer.middle_name, subscription_ends: @crm_customer.subscription_ends, subscription_start: @crm_customer.subscription_start }
    end

    assert_redirected_to crm_customer_path(assigns(:crm_customer))
  end

  test "should show crm_customer" do
    get :show, id: @crm_customer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @crm_customer
    assert_response :success
  end

  test "should update crm_customer" do
    put :update, id: @crm_customer, crm_customer: { address: @crm_customer.address, amount_paid: @crm_customer.amount_paid, first_name: @crm_customer.first_name, last_name: @crm_customer.last_name, middle_name: @crm_customer.middle_name, subscription_ends: @crm_customer.subscription_ends, subscription_start: @crm_customer.subscription_start }
    assert_redirected_to crm_customer_path(assigns(:crm_customer))
  end

  test "should destroy crm_customer" do
    assert_difference('CrmCustomer.count', -1) do
      delete :destroy, id: @crm_customer
    end

    assert_redirected_to crm_customers_path
  end
end
