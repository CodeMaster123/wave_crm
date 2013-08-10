class EventsController < ApplicationController
    before_filter :authenticate_user!
    filter_access_to :all
    respond_to :html, :json, :xml

    def index
        @company = current_user.company
        @events = Event.where(:user_id => current_user.id, :company_id => current_user.company_id).paginate(:page => params[:page], :per_page => 15)
        respond_with @events
    end

    def show
        @event = Event.find(params[:id])

        respond_with @event
    end

    def new
        @event = Event.new

        respond_with @event
    end

    def edit
        @event = Event.find(params[:id])

        respond_with @event
    end

    def create
        @event = current_user.company.events.new(params[:event])
        @event.user_id = current_user.id
        @event.save

        respond_with @event, :location => events_path
    end

    def update
        @event = current_user.company.events.find(params[:id])

        @event.update_attributes(params[:event])
        respond_with @event, :location => events_path
    end

    def destroy
        @event = Event.find(params[:id])
        @event.destroy

        respond_with @event
    end

    def search
        unless params[:q].empty?
            @events = Event.search params[:q], :with => {:company_id => current_user.company_id}
        else
            @events = Event.where(:company_id => current_user.company_id)
        end

        respond_with @events
    end

    def create_event
        @event = Event.create(:starts_at =>params[:starts_at], :title => params[:title], :description => params[:description], :user_id => current_user.id, :company_id => current_user.company.id, :lead_id => params[:lead_id], :contact_id => params[:contact_id])

        respond_with @event
    end
end
