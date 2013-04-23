require 'test_helper'
require 'declarative_authorization/maintenance'

class ProductsControllerTest < ActionController::TestCase
    include Devise::TestHelpers
    include Authorization::TestHelper

    setup do
        @product = products(:one)
        @user = users(:one)
        sign_in @user
    end

    test "should get index" do
        get :index
        assert_response :success
        assert_not_nil assigns(:products)
    end

    test "should get new" do
        get :new
        assert_response :success
    end

    test "should create product" do
        assert_difference('Product.count') do
            post :create, product: { description: @product.description, max_cost: @product.max_cost, min_cost: @product.min_cost, name: @product.name }
        end

        assert_redirected_to products_path
    end

    test "should show product" do
        get :show, id: @product
        assert_response :success
    end

    test "should get edit" do
        get :edit, id: @product
        assert_response :success
    end

    test "should update product" do
        put :update, id: @product, product: { description: @product.description, max_cost: @product.max_cost, min_cost: @product.min_cost, name: @product.name }
        assert_redirected_to product_path(assigns(:product))
    end

    test "should destroy product" do
        assert_difference('Product.count', -1) do
            delete :destroy, id: @product
        end

        assert_redirected_to products_path
    end
end
