class ContactsController < ApplicationController
    before_filter :authenticate_user!
    filter_access_to :all

    def index
        if current_user.account_type ==1
            if params[:type] == "client"
                @company = Company.where(:id => current_user.company_id).first
                @contacts = @company.contacts.paginate(:page => params[:page], :per_page => 15).where(:contact_relationship => "client")
            elsif params[:type] == "potential_customer"
                @company = Company.where(:id => current_user.company_id).first
                @contacts = @company.contacts.paginate(:page => params[:page], :per_page => 15).where(:contact_relationship => "potential_customer")
            end
        elsif current_user.account_type == 2
            if params[:type] == "client"
                @contacts = Array.new
                User.where(:id => current_user.id).first.team_leader.leads.each do |lead|
                    @contacts += lead.contacts
                    @contacts.paginate(:page => params[:page], :per_page => 15)
                end
            elsif params[:type] == "potential_customer"
                @contacts = Array.new
                User.where(:id => current_user.id).first.team_leader.leads.each do |lead|
                    @contacts += lead.contacts
                    @contacts.paginate(:page => params[:page], :per_page => 15)
                end
            end
        elsif current_user.account_type == 3
            if params[:type] == "client"
                @contacts = Array.new
                User.where(:id => current_user.id).first.sales_executive.leads.each do |lead|
                    @contacts += lead.contacts
                    @contacts.paginate(:page => params[:page], :per_page => 15)
                end
                @contacts.paginate(:page => params[:page], :per_page => 15)
            elsif params[:type] == "potential_customer"
                @contacts = Array.new
                User.where(:id => current_user.id).first.sales_executive.leads.each do |lead|
                    @contacts += lead.contacts
                    @contacts.paginate(:page => params[:page], :per_page => 15)
                end
                @contacts.paginate(:page => params[:page], :per_page => 15)
            end
        end

        respond_to do |format|
            format.html # index.html.erb
            format.json { render json: @contacts }
        end
    end

    def show
        @contact = Contact.find(params[:id])
        @transactions = Transaction.where(:contact_id => params[:id])
        @transaction_fields = current_user.transaction_fields

        respond_to do |format|
            format.html # show.html.erb
            format.json { render json: @contact }
        end
    end

    def new
        @contact = Contact.new

        respond_to do |format|
            format.html # new.html.erb
            format.json { render json: @contact }
        end
    end

    def edit
        @contact = Contact.find(params[:id])
    end

    def create
        @company = current_user.company
        @contact = @company.contacts.new(params[:contact])

        respond_to do |format|
            if @contact.save
                format.html { redirect_to :contacts, notice: 'Contact was successfully created.' }
                format.json { render json: @contact, status: :created, location: @contact }
            else
                format.html { render "new" }
                format.json { render json: @contact.errors, status: :unprocessable_entity }
            end
        end
    end

    def update
        @company = current_user.company
        @contact = @company.contacts.find(params[:id])

        respond_to do |format|
            if @contact.update_attributes(params[:contact])
                format.html { redirect_to @contact, notice: 'Contact was successfully updated.' }
                format.json { head :no_content }
            else
                format.html { render "edit" }
                format.json { render json: @contact.errors, status: :unprocessable_entity }
            end
        end
    end

    def destroy
        @contact = Contact.find(params[:id])
        @contact.destroy

        respond_to do |format|
            format.html { redirect_to contacts_url }
            format.json { head :no_content }
        end
    end

    def search
        if current_user.account_type == 1
            @contacts = Contact.search params[:q], :with => {:company_id => current_user.company_id}
        end

        respond_to do |format|
            format.html
            format.json { head :no_content }
        end
    end

    def map_index
        @company = Company.where(:id => current_user.company_id).first
        @contacts = @company.contacts.all
        @json       = @company.contacts.all.to_gmaps4rails
        respond_to do |format|
            format.html # index.html.erb
            format.json { render json: @contacts }
        end
    end

    def create_contact
        @contact = current_user.company.contact.new(:first_name =>params[:first_name], :middle_name => params[:middle_name], :last_name => params[:last_name], :email_id => params[:email_id], :address => params[:address], :mobile_no=> params[:mobile_no], :landline_no => params[:landline_no], :company_id => current_user.id, :contact_relationship => "client", :account_id => params[:account_id])
        @contact.save
    end
end
