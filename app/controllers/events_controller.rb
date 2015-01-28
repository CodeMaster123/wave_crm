class EventsController < ApplicationController
    before_filter :authenticate_user!, :fetch_company
    filter_access_to :all
    respond_to :html, :json, :xml

    def index
        @events = current_user.events
        respond_with @events
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
        @event = @company.events.new(JSON.parse(params[:event]))
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
end
