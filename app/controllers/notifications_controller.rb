class NotificationsController < ApplicationController
    before_filter :authenticate_user!
    filter_access_to :all
    respond_to :html, :json

    def index
        if current_user.account_type == 1
            if params[:type].empty?
                @notifications = current_user.company.notifications.paginate(:page => params[:page], :per_page => 15)
            else
                @notifications = Notification.notifications_by_type(current_user.company_id, params[:type])
            end
        end

        respond_with @notifications
    end

    def show
        @notification = Notification.find(params[:id])

        respond_with @notification
    end

    def new
        @company = current_user.company
        @notification = Notification.new
        @contacts = @company.contacts.all

        respond_with @notification
    end

    def edit
        @company = current_user.company
        @notification = Notification.find(params[:id])
        @contacts = @company.contacts.all
    end

    def create
        @company = current_user.company
        @notification = @company.notifications.new(params[:notification])
        @contacts = @company.contacts.all

        unless params[:next_notification].empty?
            @notification2 = @company.notifications.new(params[:notification])
            @notification2.notification_time = @notification2.notification_time + params[:next_notification].to_i.month
        end

        @notification.user_id = current_user.id
        @notification.next_notification = params[:next_notification]
        @notification.save

        unless params[:next_notification].empty? == true
            @notification2.user_id = current_user.id
            @notification2.next_notification = params[:next_notification]
            @notification2.save
        end

        respond_with @notification
    end

    def update
        @company = Company.where(:id => current_user.company_id).first
        @notification = @company.notifications.find(params[:id])
        @contacts = @company.contacts.all

        @notification.update_attributes(params[:notification])
        respond_with @notification
    end

    def destroy
        @notification = Notification.find(params[:id])
        @notification.destroy

        respond_with @notification
    end

    def search
        if current_user.account_type == 1
            unless params[:q].empty?
                @notifications = Notification.search params[:q], :with => {:company_id => current_user.company_id}
            else
                @notifications = Notification.all
            end
        end

        respond_with @notification
    end

    def notifications_to_all
        if request.get?
            @notification = Notification.new
        elsif request.post?
            @contacts = current_user.company.contacts.each do |contact|
                Notification.create(:contact_id => contact.id, :body => params[:body], :notification_time => params[:notification_time], :company_id => current_user.company_id)
            end
            redirect_to :notifications, notice: 'Notifications created for all contacts.'
        end
    end

    def create_notification
        @notification = current_user.company.notifications.create(:is_email => 0, :is_sms => 0, :contact_id =>params[:contact_id], :subject => params[:subject], :body => params[:body], :notification_time => params[:notification_time], :is_email => params[:is_email], :is_sms => params[:is_sms])
    end
end
