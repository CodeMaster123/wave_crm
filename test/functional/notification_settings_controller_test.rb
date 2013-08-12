require 'test_helper'
require 'declarative_authorization/maintenance'

class NotificationSettingsControllerTest < ActionController::TestCase
    include Devise::TestHelpers
    include Authorization::TestHelper

    setup do
        @notification_setting = notification_settings(:one)
        @user = users(:one)
        sign_in @user
    end

    test "should update create notification_setting" do
    end
end
