class AccountsController < BaseController
    before_filter :authenticate_user!, :fetch_company
    filter_access_to :all
    respond_to :html, :json

    def index
        if params[:type] == "existing_accounts"
            @accounts = current_user.company.accounts.where(:is_matured => true)
        else
            @accounts = current_user.company.accounts.where(:is_matured => false)
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
        @account = Account.new(JSON.parse(params[:account]))
        @account_owner = current_user.company.contacts

        @account.save
        respond_with @account
    end

    def update
        @account = Account.find(params[:id])
        @account_owner = current_user.company.contacts

        @account.update_attributes(JSON.parse(params[:account]))
        respond_with @account
    end

    def destroy
        @account = Account.find(params[:id])
        @account.destroy

        respond_with @account
    end
end
