require 'test_helper'
require 'declarative_authorization/maintenance'

class NotificationsControllerTest < ActionController::TestCase
    include Devise::TestHelpers
    include Authorization::TestHelper

    setup do
        @notification = notifications(:one)
        @user = users(:one)
        sign_in @user
    end

    test "should get index" do
        get :index, type: "future"
        assert_response :success
        assert_not_nil assigns(:notifications)
    end

    test "should get new" do
        get :new
        assert_response :success
    end

    test "should create notification" do
        assert_difference('Notification.count') do
            post :create, Next_Notification: "", notification: { body: @notification.body, subject: @notification.subject, is_sms: @notification.is_sms, is_email: @notification.is_sms, contact_id: @notification.contact_id, sms_sent: @notification.sms_sent}
        end

        assert_redirected_to notifications_change_path
    end

    test "should show notification" do
        get :show, id: @notification
        assert_response :success
    end

    test "should get edit" do
        get :edit, id: @notification
        assert_response :success
    end

    test "should update notification" do
        put :update, id: @notification, notification: { body: @notification.body, contact_id: @notification.contact_id, sms_sent: @notification.sms_sent }
        assert_redirected_to notification_path(assigns(:notification))
    end

    test "should destroy notification" do
        assert_difference('Notification.count', -1) do
            delete :destroy, id: @notification
        end

        assert_redirected_to notifications_path
    end
end
