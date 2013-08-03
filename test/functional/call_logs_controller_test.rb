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

    test "should create call_log" do
        assert_difference('CallLog.count') do
            post :create, call_log: { call_duration: @call_log.call_duration, call_owner_id: @call_log.call_owner_id, call_purpose: @call_log.call_purpose, call_result: @call_log.call_result, call_start_time: @call_log.call_start_time, call_type: @call_log.call_type, subject: @call_log.subject, contact_id: @call_log.contact_id }
        end

        assert_redirected_to call_log_path(assigns(:call_log))
    end
end
