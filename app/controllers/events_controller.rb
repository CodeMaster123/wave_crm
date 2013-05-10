class EventsController < ApplicationController
    before_filter :authenticate_user!
    filter_access_to :all
    layout :choose_layout

    def choose_layout
        if action_name == 'search'
            false
        else
            'application'
        end
    end


    # GET /events
    # GET /events.xml
    def index
        # full_calendar will hit the index method with query parameters
        # 'start' and 'end' in order to filter the results for the
        # appropriate month/week/day.  It should be possiblt to change
        # this to be starts_at and ends_at to match rails conventions.
        # I'll eventually do that to make the demo a little cleaner.
      @company = Company.where(:id => current_user.company_id).first
      @events = Event.scoped
        #@events = @events.after(params['start']) if (params['start'])
        #@events = @events.before(params['end']) if (params['end'])
        @events = Event.where(:user_id => current_user.id, :company_id => current_user.company_id).paginate(:page => params[:page], :per_page => 15)
        respond_to do |format|
            format.html # index.html.erb
            format.xml  { render :xml => @events }
            format.js  { render :json => @events }
        end
    end

    # GET /events/1
    # GET /events/1.xml
    def show
        @event = Event.find(params[:id])

        respond_to do |format|
            format.html # show.html.erb
            format.xml  { render :xml => @event }
            format.js { render :json => @event.to_json }
        end
    end

    # GET /events/new
    # GET /events/new.xml
    def new
        @event = Event.new

        respond_to do |format|
            format.html # new.html.erb
            format.xml  { render :xml => @event }
        end
    end

    # GET /events/1/edit
    def edit
        @event = Event.find(params[:id])
    end

    # POST /events
    # POST /events.xml
    def create
      @company = Company.where(:id => current_user.company_id).first
      @event = @company.events.new(params[:event])
      @event.company_id = @company.id
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

    # PUT /events/1
    # PUT /events/1.xml
    # PUT /events/1.js
    # when we drag an event on the calendar (from day to day on the month view, or stretching
    # it on the week or day view), this method will be called to update the values.
    # viv la REST!
    def update
      @company = Company.where(:id => current_user.company_id).first
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

    # DELETE /events/1
    # DELETE /events/1.xml
    def destroy
        @event = Event.find(params[:id])
        @event.destroy

        respond_to do |format|
            format.html { redirect_to(events_url) }
            format.xml  { head :ok }
        end
    end

    def search
        #if current_user.account_type == 1
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
end
