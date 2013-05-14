require 'test_helper'
require 'declarative_authorization/maintenance'

class InventoryAdditionsControllerTest < ActionController::TestCase
    include Devise::TestHelpers
    include Authorization::TestHelper
    setup do
        @inventory_addition = inventory_additions(:one)

        @user = users(:one)
        sign_in @user
    end

    test "should get index" do
        get :index
        assert_response :success
        assert_not_nil assigns(:inventory_additions)
    end

    test "should get new" do
        get :new
        assert_response :success
    end

    test "should create inventory_addition" do
        assert_difference('InventoryAddition.count') do
            post :create, inventory_addition: { addition_date: @inventory_addition.addition_date, product_id: @inventory_addition.product_id, quantity: @inventory_addition.quantity }
        end

        assert_redirected_to inventory_addition_path(assigns(:inventory_addition))
    end

    test "should show inventory_addition" do
        get :show, id: @inventory_addition
        assert_response :success
    end

    test "should get edit" do
        get :edit, id: @inventory_addition
        assert_response :success
    end

    test "should update inventory_addition" do
        put :update, id: @inventory_addition, inventory_addition: { addition_date: @inventory_addition.addition_date, product_id: @inventory_addition.product_id, quantity: @inventory_addition.quantity }
        assert_redirected_to inventory_addition_path(assigns(:inventory_addition))
    end

    test "should destroy inventory_addition" do
        assert_difference('InventoryAddition.count', -1) do
            delete :destroy, id: @inventory_addition
        end

        assert_redirected_to inventory_additions_path
    end
end
