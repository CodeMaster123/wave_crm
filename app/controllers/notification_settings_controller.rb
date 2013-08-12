class NotificationSettingsController < ApplicationController
    before_filter :authenticate_user!
    filter_access_to :all
    respond_to :html, :json

    def edit
        @notification_setting = NotificationSetting.find(params[:id])
        @notification_setting.update_attributes(:notification_flag => false)

        respond_with @notification_setting
    end

    def update
        @notification_setting = NotificationSetting.find(params[:id])

        @notification_setting.update_attributes(params[:notification_setting])
        respond_with @notification_setting
    end
end
