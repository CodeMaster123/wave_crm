class ContactsController < BaseController
    before_filter :authenticate_user!, :fetch_company
    filter_access_to :all
    respond_to :html, :json

    def index
      @contacts = Account.find(params[:account_id]).contacts

      respond_with @contacts
    end

    def show
      @contact = Contact.find(params[:id])

      respond_with @contact
    end

    def edit
      @contact = Contact.find(params[:id])

      respond_with @contact
    end

    def create
      @contact = current_user.company.contacts.new(params[:contact])

      @contact.save
      respond_with @contact, :location => contacts_path
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
      @contacts = @company.contacts.all
      @json = @company.contacts.all.to_gmaps4rails

      respond_with @contacts
    end

    def create_contact
      @contact = current_user.company.contacts.create(:first_name =>params[:first_name], :middle_name => params[:middle_name], :last_name => params[:last_name], :email_id => params[:email_id], :address => params[:address], :mobile_no=> params[:mobile_no], :landline_no => params[:landline_no], :company_id => current_user.id, :contact_relationship => "client", :account_id => params[:account_id])
    end
end
