class ContactsController < ApplicationController
    before_filter :fetch_company
    filter_access_to :all

    def index
      if params[:account_id].nil?
        @contacts = @company.contacts.all
      else
        @contacts = Account.find(params[:account_id]).contacts
      end

      render json: @contacts
    end

    def show
      @contact = Contact.find(params[:id])

      render json: @contact
    end

    def create
      params[:contact] = JSON.parse(params[:contact]) if params[:contact].class == String
      @contact = @company.contacts.new(params[:contact])
      @contact.account_id = params[:account_id]

      if @contact.save
        render nothing: true
      else
        render json: @contact.errors
      end
    end

    def update
      @contact = current_user.company.contacts.find(params[:id])

      params[:contact] = JSON.parse(params[:contact]) if params[:contact].class == String

      if @contact.update_attributes(params[:product])
        render nothing: true, status: 200
      else
        render json: @contact.errors
      end
    end

    def destroy
      @contact = Contact.find(params[:id]).destroy

    end

    def search
      if current_user.account_type == 1
        @contacts = Contact.search params[:query], :with => {:company_id => current_user.company_id}
      end

    end
end
