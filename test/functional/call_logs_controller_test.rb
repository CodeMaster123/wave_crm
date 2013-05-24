require 'test_helper'
require 'declarative_authorization/maintenance'

class CallLogsControllerTest < ActionController::TestCase
    include Devise::TestHelpers
    include Authorization::TestHelper

    setup do
        @call_log = call_logs(:one)

        @user = users(:one)
        sign_in @user
    end

    test "should get index" do
        get :index
        assert_response :success
        assert_not_nil assigns(:call_logs)
    end

    test "should get new" do
        get :new
        assert_response :success
    end

    test "should create call_log" do
        assert_difference('CallLog.count') do
            post :create, call_log: { call_duration: @call_log.call_duration, call_owner_id: @call_log.call_owner_id, call_purpose: @call_log.call_purpose, call_result: @call_log.call_result, call_start_time: @call_log.call_start_time, call_type: @call_log.call_type, subject: @call_log.subject }
        end

        assert_redirected_to call_log_path(assigns(:call_log))
    end

    test "should show call_log" do
        get :show, id: @call_log
        assert_response :success
    end

    test "should get edit" do
        get :edit, id: @call_log
        assert_response :success
    end

    test "should update call_log" do
        put :update, id: @call_log, call_log: { call_duration: @call_log.call_duration, call_owner_id: @call_log.call_owner_id, call_purpose: @call_log.call_purpose, call_result: @call_log.call_result, call_start_time: @call_log.call_start_time, call_type: @call_log.call_type, subject: @call_log.subject }
        assert_redirected_to call_log_path(assigns(:call_log))
    end

    test "should destroy call_log" do
        assert_difference('CallLog.count', -1) do
            delete :destroy, id: @call_log
        end

        assert_redirected_to call_logs_path
    end
end
