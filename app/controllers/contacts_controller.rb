class ContactsController < ApplicationController
    before_filter :authenticate_user!
    filter_access_to :all
    respond_to :html, :json

    def index
        @company = Company.where(:id => current_user.company_id).first

        if current_user.account_type ==1
            if params[:type] == "client"
                @contacts = @company.contacts.paginate(:page => params[:page], :per_page => 15).where(:contact_relationship => "client")
            elsif params[:type] == "potential_customer"
                @contacts = @company.contacts.paginate(:page => params[:page], :per_page => 15).where(:contact_relationship => "potential_customer")
            end
        elsif current_user.account_type == 2
            if params[:type] == "client"
                @contacts = Array.new
                User.where(:id => current_user.id).first.team_leader.leads.each do |lead|
                    @contacts += lead.contacts
                end
            elsif params[:type] == "potential_customer"
                @contacts = Array.new
                User.where(:id => current_user.id).first.team_leader.leads.each do |lead|
                    @contacts += lead.contacts
                end
            end
        elsif current_user.account_type == 3
            if params[:type] == "client"
                @contacts = Array.new
                User.where(:id => current_user.id).first.sales_executive.leads.each do |lead|
                    @contacts += lead.contacts
                end
            elsif params[:type] == "potential_customer"
                @contacts = Array.new
                User.where(:id => current_user.id).first.sales_executive.leads.each do |lead|
                    @contacts += lead.contacts
                end
            end
        end
                @contacts.paginate(:page => params[:page], :per_page => 15)

        respond_with @contacts
    end

    def show
        @contact = Contact.find(params[:id])
        @transactions = Transaction.where(:contact_id => params[:id])

        respond_with @contact
    end

    def new
        @contact = Contact.new

        respond_with @contact
    end

    def edit
        @contact = Contact.find(params[:id])

        respond_with @contact
    end

    def create
        @contact = current_user.company.contacts.new(params[:contact])

        @contact.save
        respond_with @contact
    end

    def update
        @contact = current_user.company.contacts.find(params[:id])

        @contact.update_attributes(params[:contact])
        respond_with @contact, :location => {:controller => "contacts", :action => "index", :type => "client"}
    end

    def destroy
        @contact = Contact.find(params[:id]).destroy

        respond_with @contact, :location => {:controller => "contacts", :action => "index", :type => "client"}
    end

    def search
        if current_user.account_type == 1
            @contacts = Contact.search params[:q], :with => {:company_id => current_user.company_id}
        end

        respond_with @contacts
    end

    def map_index
        @company = current_user.company
        @contacts = @company.contacts.all
        @json = @company.contacts.all.to_gmaps4rails

        respond_with @contacts
    end

    def create_contact
        @contact = current_user.company.contact.create(:first_name =>params[:first_name], :middle_name => params[:middle_name], :last_name => params[:last_name], :email_id => params[:email_id], :address => params[:address], :mobile_no=> params[:mobile_no], :landline_no => params[:landline_no], :company_id => current_user.id, :contact_relationship => "client", :account_id => params[:account_id])
    end
end
