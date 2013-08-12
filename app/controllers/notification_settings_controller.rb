class NotificationSettingsController < ApplicationController
    before_filter :authenticate_user!
    filter_access_to :all
    respond_to :html, :json

    def index
        @notification_settings = NotificationSetting.all

        respond_with @notification_settings
    end

    def show
        @notification_setting = NotificationSetting.find(params[:id])

        respond_with @notification_setting
    end

    def new
        @notification_setting = NotificationSetting.new

        respond_with @notification_setting
    end

    def edit
        @notification_setting = NotificationSetting.find(params[:id])
        @notification_setting = NotificationSetting.find(params[:id])
        @notification_setting.update_attributes(:notification_flag => false)

        respond_with @notification_setting
    end

    def create
        @notification_setting = NotificationSetting.new(params[:notification_setting])

        @notification_setting.save
        respond_with @notification_setting
    end

    def update
        @notification_setting = NotificationSetting.find(params[:id])

        @notification_setting.update_attributes(params[:notification_setting])
        respond_with @notification_setting
    end

    def destroy
        @notification_setting = NotificationSetting.find(params[:id])
        @notification_setting.destroy

        respond_with @notification_setting
    end
end
