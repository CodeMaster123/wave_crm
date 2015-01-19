class LeadsController < ApplicationController
    before_filter :authenticate_user!, :fetch_company
    before_filter :fetch_sales_employee_records, except: [:index, :destroy, :search, :postpone_lead, :change_owner]
    filter_access_to :all
    respond_to :html, :json

    def index
        if current_user.account_type == 1 #Admin
            if params[:type] == "future" || params[:type] == "dead" || params[:type] == "matured"
                @leads = @company.leads.where("lead_status = '#{params[:type]}'")
            else
                @leads = @company.leads.where("lead_status != 'dead' and lead_status != 'won' and lead_status != 'future' and lead_status != 'matured'")
            end
            unless params[:id1].nil?
                @leads = Lead.where(:leadable_id => params[:id1], :leadable_type => "SalesExecutive")
                executive_name = SalesExecutive.find(params[:id1]).user
                @page_title = "Leads by #{executive_name.first_name} #{executive_name.last_name}"
            end
        elsif current_user.account_type  == 2 #Team leader
            if params[:type] == "future" || params[:type] == "dead" || params[:type] == "matured"
                @leads = current_user.leads.where("lead_status = '#{params[:type]}'")
            else
                if params[:sales_executive].nil?
                    @leads = current_user.leads.where("lead_status != 'dead' and lead_status != 'won' and lead_status != 'future' and lead_status != 'matured'")
                else
                    session[:sales_executive] = true
                    @leads = SalesExecutive.find(params[:sales_executive]).leads
                end
            end
        elsif current_user.account_type ==3 #Executive
            if params[:type] == "future" || params[:type] == "dead" || params[:type] == "matured"
                @leads = current_user.leads.where("lead_status = '#{params[:type]}'")
            else
                @leads = current_user.leads.where("lead_status != 'dead' and lead_status != 'won' != lead_status != 'future'")
            end
        end

        respond_with @leads
    end

    def show
        @lead = Lead.find(params[:id])
        @lead_events = @lead.events.all
        @call_logs = @lead.call_logs

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
        @lead = Lead.new
        @lead.contacts.build
        @lead.product_transactions.build
        @lead.build_account
        @products = @company.products

        respond_with @lead
    end

    def edit
        @lead = Lead.find(params[:id])
        if @lead.contacts.empty?
            @lead.contacts.build
        end
        @products = @company.products
    end

    def create
        @products = @company.products

        @lead = @company.leads.new(params[:lead])
         @lead.user_id = current_user.id

        @lead.save

        respond_with @lead, :location => leads_path
    end

    def update
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

    def fetch_sales_employee_records
        @team_leaders = @company.team_leaders
        @sales_executives = @company.sales_executives
    end
end
