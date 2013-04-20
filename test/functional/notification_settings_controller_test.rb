require 'test_helper'

class NotificationSettingsControllerTest < ActionController::TestCase
  setup do
    @notification_setting = notification_settings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:notification_settings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create notification_setting" do
    assert_difference('NotificationSetting.count') do
      post :create, notification_setting: { notification_flag: @notification_setting.notification_flag, user_id: @notification_setting.user_id }
    end

    assert_redirected_to notification_setting_path(assigns(:notification_setting))
  end

  test "should show notification_setting" do
    get :show, id: @notification_setting
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @notification_setting
    assert_response :success
  end

  test "should update notification_setting" do
    put :update, id: @notification_setting, notification_setting: { notification_flag: @notification_setting.notification_flag, user_id: @notification_setting.user_id }
    assert_redirected_to notification_setting_path(assigns(:notification_setting))
  end

  test "should destroy notification_setting" do
    assert_difference('NotificationSetting.count', -1) do
      delete :destroy, id: @notification_setting
    end

    assert_redirected_to notification_settings_path
  end
end
