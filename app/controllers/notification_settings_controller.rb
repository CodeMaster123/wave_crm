class NotificationSettingsController < ApplicationController
    before_filter :authenticate_user!
    filter_access_to :all

    def index
        @notification_settings = NotificationSetting.all

        respond_to do |format|
            format.html # index.html.erb
            format.json { render json: @notification_settings }
        end
    end

    def show
        @notification_setting = NotificationSetting.find(params[:id])

        respond_to do |format|
            format.html # show.html.erb
            format.json { render json: @notification_setting }
        end
    end

    def new
        @notification_setting = NotificationSetting.new

        respond_to do |format|
            format.html # new.html.erb
            format.json { render json: @notification_setting }
        end
    end

    def edit
        @notification_setting = NotificationSetting.find(params[:id])
        @notification_setting = NotificationSetting.find(params[:id])
        @notification_setting.update_attributes(:notification_flag => false)

        respond_to do |format|
            format.json
        end
    end

    def create
        @notification_setting = NotificationSetting.new(params[:notification_setting])

        respond_to do |format|
            if @notification_setting.save
                format.html { redirect_to @notification_setting, notice: 'Notification setting was successfully created.' }
                format.json { render json: @notification_setting, status: :created, location: @notification_setting }
            else
                format.html { render "new" }
                format.json { render json: @notification_setting.errors, status: :unprocessable_entity }
            end
        end
    end

    def update
        @notification_setting = NotificationSetting.find(params[:id])

        respond_to do |format|
            if @notification_setting.update_attributes(params[:notification_setting])
                format.html { redirect_to @notification_setting, notice: 'Notification setting was successfully updated.' }
                format.json { head :no_content }
            else
                format.html { render "edit" }
                format.json { render json: @notification_setting.errors, status: :unprocessable_entity }
            end
        end
    end

    def destroy
        @notification_setting = NotificationSetting.find(params[:id])
        @notification_setting.destroy

        respond_to do |format|
            format.html { redirect_to notification_settings_url }
            format.json { head :no_content }
        end
    end
end
