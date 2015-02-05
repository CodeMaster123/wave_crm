class AccountsController < BaseController
    before_filter :authenticate_user!, :fetch_company
    filter_access_to :all
    respond_to :html, :json

    def index
        if params[:type] == 'existing_accounts'
            @accounts = @company.accounts.where(:is_matured => true)
        elsif params[:type] == 'potential_accounts'
            @accounts = @company.accounts.where(:is_matured => false)
        end

        respond_with @accounts
    end

    def show
        @account = Account.find(params[:id])
        @contacts = @account.contacts
        @transactions = @account.transactions

        respond_with @account
    end

    def new
        @account = Account.new
        @account_owner = current_user.company.contacts

        respond_with @account
    end

    def edit
        @account = Account.find(params[:id])
        @account_owner = current_user.company.contacts
    end

    def create

      params[:account] = JSON.parse(params[:account]) if params[:account].class == String
      @account = Account.new(params[:account])
      @account_owner = current_user.company.contacts

      @account.save
      respond_with @account
    end

    def update
        @account = Account.find(params[:id])
        @account_owner = current_user.company.contacts

        params[:account] = JSON.parse(params[:account]) if params[:account].class == String
        @account.update_attributes(params[:account])

        respond_with @account                 
    end

    def destroy
        @account = Account.find(params[:id])
        @account.destroy

        respond_with @account
    end

    def search
      @account = Account.search params[:query]

      respond_with @account
    end
end
