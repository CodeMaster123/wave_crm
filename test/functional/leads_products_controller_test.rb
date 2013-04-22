require 'test_helper'
require 'declarative_authorization/maintenance'

class LeadsProductsControllerTest < ActionController::TestCase
    include Devise::TestHelpers
    include Authorization::TestHelper

    setup do
        @leads_product = leads_products(:one)

        @user = users(:one)
        sign_in @user
    end

    test "should get index" do
        get :index
        assert_response :success
        assert_not_nil assigns(:leads_products)
    end

    test "should get new" do
        get :new
        assert_response :success
    end

    test "should create leads_product" do
        assert_difference('LeadsProduct.count') do
            post :create, leads_product: { lead_id: @leads_product.lead_id, product_id: @leads_product.product_id }
        end

        assert_redirected_to leads_product_path(assigns(:leads_product))
    end

    test "should show leads_product" do
        get :show, id: @leads_product
        assert_response :success
    end

    test "should get edit" do
        get :edit, id: @leads_product
        assert_response :success
    end

    test "should update leads_product" do
        put :update, id: @leads_product, leads_product: { lead_id: @leads_product.lead_id, product_id: @leads_product.product_id }
        assert_redirected_to leads_product_path(assigns(:leads_product))
    end

    test "should destroy leads_product" do
        assert_difference('LeadsProduct.count', -1) do
            delete :destroy, id: @leads_product
        end

        assert_redirected_to leads_products_path
    end
end
