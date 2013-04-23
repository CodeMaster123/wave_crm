require 'test_helper'
require 'declarative_authorization/maintenance'

class TargetsControllerTest < ActionController::TestCase
    include Devise::TestHelpers
    include Authorization::TestHelper

    setup do
        @target = targets(:one)
        @user = users(:one)
        sign_in @user
    end

    test "should get index" do
        get :index
        assert_response :success
        assert_not_nil assigns(:targets)
    end

    test "should get new" do
        get :new
        assert_response :success
    end

    test "should create target" do
        assert_difference('Target.count') do
            post :create, target: { achived: @target.achived, amount: @target.amount, target_date: @target.target_date, targetable_id: @target.targetable_id, targetable_type: @target.targetable_type }
        end

        assert_redirected_to targets_path
    end

    test "should show target" do
        get :show, id: @target
        assert_response :success
    end

    test "should get edit" do
        get :edit, id: @target
        assert_response :success
    end

    test "should update target" do
        put :update, id: @target, target: { achived: @target.achived, amount: @target.amount, target_date: @target.target_date, targetable_id: @target.targetable_id, targetable_type: @target.targetable_type }
        assert_redirected_to target_path(assigns(:target))
    end

    test "should destroy target" do
        assert_difference('Target.count', -1) do
            delete :destroy, id: @target
        end

        assert_redirected_to targets_path
    end
end
