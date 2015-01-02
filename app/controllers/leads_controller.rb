class LeadsController < ApplicationController
    before_filter :authenticate_user!
    filter_access_to :all
    respond_to :html, :json

    def index
        if current_user.account_type == 1 #Admin
            @company = current_user.company
            if params[:type] == "future" || params[:type] == "dead" || params[:type] == "matured"
                @leads = @company.leads.where("lead_status = '#{params[:type]}'").paginate(:page => params[:page], :per_page => 15).all
            else
                @leads = @company.leads.where("lead_status != 'dead' and lead_status != 'won' and lead_status != 'future' and lead_status != 'matured'").paginate(:page => params[:page], :per_page => 15).all
            end
            unless params[:id1].nil?
                @leads = Lead.paginate(:page => params[:page], :per_page => 15).where(:leadable_id => params[:id1], :leadable_type => "SalesExecutive")
                executive_name = SalesExecutive.find(params[:id1]).user
                @page_title = "Leads by #{executive_name.first_name} #{executive_name.last_name}"
            end
        elsif current_user.account_type  == 2 #Team leader
            if params[:type] == "future" || params[:type] == "dead" || params[:type] == "matured"
                @leads = current_user.team_leader.leads.where("lead_status = '#{params[:type]}'").paginate(:page => params[:page], :per_page => 15)
            else
                if params[:sales_executive].nil?
                    @leads = current_user.team_leader.leads.where("lead_status != 'dead' and lead_status != 'won' and lead_status != 'future' and lead_status != 'matured'").paginate(:page => params[:page], :per_page => 15)
                else
                    session[:sales_executive] = true
                    @leads = SalesExecutive.find(params[:sales_executive]).leads.paginate(:page => params[:page], :per_page => 15)
                end
            end
        elsif current_user.account_type ==3 #Executive
            if params[:type] == "future" || params[:type] == "dead" || params[:type] == "matured"
                @leads = current_user.sales_executive.leads.where("lead_status = '#{params[:type]}'").paginate(:page => params[:page], :per_page => 15)
            else
                @leads = current_user.sales_executive.leads.where("lead_status != 'dead' and lead_status != 'won' != lead_status != 'future'").paginate(:page => params[:page], :per_page => 15)
            end
            @leads = current_user.sales_executive.leads.paginate(:page => params[:page], :per_page => 15)
        end
        @leads = Lead.where("id < 30")

        respond_with @leads
    end

    def show
        @lead = Lead.find(params[:id])
        @company = current_user.company
        @lead_events = @lead.events.all
        @call_logs = @lead.call_logs
        @team_leaders = current_user.company.team_leaders
        @sales_executives = current_user.company.sales_executives

        unless @lead.contacts.empty?
            @lead_notifications = @lead.contacts.first.notifications.order(:updated_at)
        end

        #--- Modal variables for call logs ---
        @call_log = CallLog.new
        @call_owner = @company.sales_executives

        #--- Modal variables for notifications ---
        @notification = Notification.new
        @contacts = @company.contacts.all
        @notifications_contact = @lead.contacts.all

        #--- Modal variables for events ---
        @event = Event.new

        respond_with @lead
    end

    def new
        @company = current_user.company
        @lead = Lead.new
        @lead.contacts.build
        @lead.product_transactions.build
        @lead.build_account
        @team_leaders = @company.team_leaders.all
        @sales_executives = @company.sales_executives.all
        @products = @company.products.all

        respond_with @lead
    end

    def edit
        @company = current_user.company
        @lead = Lead.find(params[:id])
        if @lead.contacts.empty?
            @lead.contacts.build
        end
        @products = @company.products.all
        @team_leaders = @company.team_leaders.all
        @sales_executives = @company.sales_executives.all
    end

    def create
        @company = current_user.company
        @products = @company.products.all
        @team_leaders = @company.team_leaders.all
        @sales_executives = @company.sales_executives.all

        @lead = @company.leads.new(params[:lead])
        if current_user.account_type == 2
            @lead.leadable_id = current_user.team_leader.id
            @lead.leadable_type = "TeamLeader"
        elsif current_user.account_type == 3
            @lead.leadable_id = current_user.sales_executive.id
            @lead.leadable_type = "SalesExecutive"
        end

        @lead.save

        respond_with @lead, :location => leads_path
    end

    def update
        @company = current_user.company
        @team_leaders = @company.team_leaders.all
        @sales_executives = @company.sales_executives.all
        @lead = @company.leads.find(params[:id])

        @lead.update_attributes(params[:lead])
        respond_with @lead, :location => leads_path
    end

    def destroy
        @lead = Lead.find(params[:id])
        @lead.destroy

        respond_with @lead
    end

    def search
        if current_user.account_type == 1
            @leads = Lead.search params[:q] , :with => {:company_id => current_user.company_id}
        elsif current_user.account_type == 2
            @leads = current_user.team_leader.leads.search params[:q], :with => {:company_id => current_user.company_id}
        elsif current_user.account_type == 3
            @leads = current_user.sales_executive.leads.search params[:q], :with => {:company_id => current_user.company_id}
        end

        respond_with @lead
    end

    def change_owner
        Lead.find(params[:lead_id].to_i).update_attributes(:leadable_type => params[:leadable_type], :leadable_id => params[:leadable_id])
    end

    def postpone_lead
        unless params[:opening_date].to_time < Date.today
            @lead = Lead.find(params[:lead_id])
            @lead.update_attributes(:opening_date => params[:opening_date].to_time, :lead_status => "future")
        end
    end
end
