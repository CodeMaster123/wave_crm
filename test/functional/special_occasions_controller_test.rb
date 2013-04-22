require 'test_helper'
require 'declarative_authorization/maintenance'

class SpecialOccasionsControllerTest < ActionController::TestCase
    include Devise::TestHelpers
    include Authorization::TestHelper

    setup do
        @special_occasion = special_occasions(:one)
        @user = users(:one)
        sign_in @user
    end

    test "should get index" do
        get :index
        assert_response :success
        assert_not_nil assigns(:special_occasions)
    end

    test "should get new" do
        get :new
        assert_response :success
    end

    test "should create special_occasion" do
        assert_difference('SpecialOccasion.count') do
            post :create, special_occasion: { body: @special_occasion.body, occasion_date: @special_occasion.occasion_date, title: @special_occasion.title }
        end

        assert_redirected_to special_occasion_path(assigns(:special_occasion))
    end

    test "should show special_occasion" do
        get :show, id: @special_occasion
        assert_response :success
    end

    test "should get edit" do
        get :edit, id: @special_occasion
        assert_response :success
    end

    test "should update special_occasion" do
        put :update, id: @special_occasion, special_occasion: { body: @special_occasion.body, occasion_date: @special_occasion.occasion_date, title: @special_occasion.title }
        assert_redirected_to special_occasion_path(assigns(:special_occasion))
    end

    test "should destroy special_occasion" do
        assert_difference('SpecialOccasion.count', -1) do
            delete :destroy, id: @special_occasion
        end

        assert_redirected_to special_occasions_path
    end
end
