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
        #assert_not_nil assigns(:targets)
    end

    test "should get new" do
        get :new
        assert_response :success
    end

    test "should create target" do
        @new_target = {:achived => 5000, :amount => 10000, :target_month => 2, :target_year => 2013, :targetable_id => 1, :targetable_type => "TeamLeader", :company_id =>1}
        assert_difference('Target.count') do
          post :create, target: @new_target
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
      put :update, id: @target, target: { achived: @target.achived, amount: @target.amount, target_month: @target.target_month, target_year: @target.target_year, targetable_id: @target.targetable_id, targetable_type: @target.targetable_type, company_id: @target.company_id }
        assert_redirected_to target_path(assigns(:target))
    end

    test "should destroy target" do
        assert_difference('Target.count', -1) do
            delete :destroy, id: @target
        end

        assert_redirected_to targets_path
    end
end
