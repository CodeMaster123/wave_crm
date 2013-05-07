class NotificationSettingsController < ApplicationController
  # GET /notification_settings
  # GET /notification_settings.json
  def index
    @notification_settings = NotificationSetting.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @notification_settings }
    end
  end

  # GET /notification_settings/1
  # GET /notification_settings/1.json
  def show
    @notification_setting = NotificationSetting.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @notification_setting }
    end
  end

  # GET /notification_settings/new
  # GET /notification_settings/new.json
  def new
    @notification_setting = NotificationSetting.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @notification_setting }
    end
  end

  # GET /notification_settings/1/edit
  def edit
      @notification_setting = NotificationSetting.find(params[:id])
      puts "vivekkkkkkkkkkkkkkkk #{params[:id]} kkkkkkk"
      @notification_setting = NotificationSetting.find(params[:id])
      @notification_setting.update_attributes(:notification_flag => false)

      respond_to do |format|
          format.json
      end
  end

  # POST /notification_settings
  # POST /notification_settings.json
  def create
      @notification_setting = NotificationSetting.new(params[:notification_setting])

      respond_to do |format|
          if @notification_setting.save
              format.html { redirect_to @notification_setting, notice: 'Notification setting was successfully created.' }
              format.json { render json: @notification_setting, status: :created, location: @notification_setting }
          else
              format.html { render action: "new" }
              format.json { render json: @notification_setting.errors, status: :unprocessable_entity }
          end
      end
  end

  # PUT /notification_settings/1
  # PUT /notification_settings/1.json
  def update
      @notification_setting = NotificationSetting.find(params[:id])

      respond_to do |format|
          if @notification_setting.update_attributes(params[:notification_setting])
              format.html { redirect_to @notification_setting, notice: 'Notification setting was successfully updated.' }
              format.json { head :no_content }
          else
              format.html { render action: "edit" }
              format.json { render json: @notification_setting.errors, status: :unprocessable_entity }
          end
      end
  end

  # DELETE /notification_settings/1
  # DELETE /notification_settings/1.json
  def destroy
      @notification_setting = NotificationSetting.find(params[:id])
      @notification_setting.destroy

      respond_to do |format|
          format.html { redirect_to notification_settings_url }
          format.json { head :no_content }
      end
  end
end
