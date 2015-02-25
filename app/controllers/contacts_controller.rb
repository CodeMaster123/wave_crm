class ContactsController < ApplicationController
    before_filter :fetch_company
    filter_access_to :all
    respond_to :html, :json

    def index
      if params[:account_id].nil?
        @contacts = @company.contacts.all
      else
        @contacts = Account.find(params[:account_id]).contacts
      end

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
      params[:contact] = JSON.parse(params[:contact]) if params[:contact].class == String
      @contact = @company.contacts.new(params[:contact])
      @contact.account_id = params[:account_id]

      @contact.save
      respond_with @contact, :location => account_contacts_path
    end

    def update
      @contact = current_user.company.contacts.find(params[:id])

      params[:contact] = JSON.parse(params[:contact]) if params[:contact].class == String
      @contact.update_attributes(params[:contact])

      respond_with @contact, :location => {:controller => "contacts", :action => "index", :type => "client"}
    end

    def destroy
      @contact = Contact.find(params[:id]).destroy

      respond_with @contact, :location => {:controller => "contacts", :action => "index", :type => "client"}
    end

    def search
      if current_user.account_type == 1
        @contacts = Contact.search params[:query], :with => {:company_id => current_user.company_id}
      end

      respond_with @contacts
    end
end
