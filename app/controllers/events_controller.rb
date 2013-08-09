class EventsController < ApplicationController
    before_filter :authenticate_user!
    filter_access_to :all

    def index
        @company = current_user.company
        @events = Event.where(:user_id => current_user.id, :company_id => current_user.company_id).paginate(:page => params[:page], :per_page => 15)
        respond_to do |format|
            format.html
            format.xml  { render :xml => @events }
            format.js  { render :json => @events }
        end
    end

    def show
        @event = Event.find(params[:id])

        respond_to do |format|
            format.html # show.html.erb
            format.xml  { render :xml => @event }
            format.js { render :json => @event.to_json }
        end
    end

    def new
        @event = Event.new

        respond_to do |format|
            format.html # new.html.erb
            format.xml  { render :xml => @event }
        end
    end

    def edit
        @event = Event.find(params[:id])
    end

    def create
        @company = Company.where(:id => current_user.company_id).first
        @event = @company.events.new(params[:event])
        @event.user_id = current_user.id
        respond_to do |format|
            if @event.save
                format.html { redirect_to :events, :notice => 'Event was successfully created.' }
                format.xml  { render :xml => @event, :status => :created, :location => @event }
            else
                format.html { render :action => "new" }
                format.xml  { render :xml => @event.errors, :status => :unprocessable_entity }
            end
        end
    end

    def update
        @company = current_user.company
        @event = @company.events.find(params[:id])

        respond_to do |format|
            if @event.update_attributes(params[:event])
                format.html { redirect_to(events_path, :notice => 'Event was successfully updated.') }
                format.xml  { head :ok }
                format.js { head :ok}
            else
                format.html { render :action => "edit" }
                format.xml  { render :xml => @event.errors, :status => :unprocessable_entity }
                format.js  { render :js => @event.errors, :status => :unprocessable_entity }
            end
        end
    end

    def destroy
        @event = Event.find(params[:id])
        @event.destroy

        respond_to do |format|
            format.html { redirect_to(events_url) }
            format.xml  { head :ok }
        end
    end

    def search
        unless params[:q].empty?
            @events = Event.search params[:q], :with => {:company_id => current_user.company_id}
        else
            @events = Event.where(:company_id => current_user.company_id)
        end
        #end
        respond_to do |format|
            format.html
            format.json { head :no_content }
        end
    end

    def create_event
        @event = Event.create(:starts_at =>params[:starts_at], :title => params[:title], :description => params[:description], :user_id => current_user.id, :company_id => current_user.company.id, :lead_id => params[:lead_id], :contact_id => params[:contact_id])

        respond_to do |format|
            format.html{render :nothing => true}
        end
    end
end
