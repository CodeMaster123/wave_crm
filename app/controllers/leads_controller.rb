class LeadsController < ApplicationController
    before_filter :authenticate_user!, :fetch_company
    before_filter :fetch_sales_employee_records, except: [:index, :destroy, :search, :postpone_lead, :change_owner]
    filter_access_to :all
    respond_to :html, :json

    def home

    end

    def index
        if current_user.account_type == 1 #Admin
            @leads = @company.leads
        elsif current_user.account_type  == 2 #Team leader
            @leads = current_user.leads
        elsif current_user.account_type ==3 #Executive
            @leads = current_user.leads
        end

        respond_with @leads
    end

    def show
        @lead = Lead.includes(:call_logs =>[:contact, :user], :product_transactions => [:product]).find(params[:id])

        contact_ids = @lead.contacts.map{|contact|contact.id}
        @meetings = Event.where(contact_id: contact_ids).includes(:user, :contact)
        @future_meetings = @meetings.where("starts_at > '#{Time.now}'")
        @previous_meetings = @meetings.where("starts_at < '#{Time.now}'")

        @notifications = Notification.where(contact_id: contact_ids)

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
