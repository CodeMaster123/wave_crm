class AccountsController < ApplicationController
    before_filter :authenticate_user!, :fetch_company
    filter_access_to :all

    def index
        if params[:type] == 'existing_accounts'
            @accounts = @company.accounts.where(:is_matured => true)
        else
            @accounts = @company.accounts.where(:is_matured => false)
        end

        render json: @accounts
    end

    def show
        @account = Account.find(params[:id])
        @contacts = @account.contacts
        @transactions = @account.crm_transactions

        render json: @account
    end

    def create

      params[:account] = JSON.parse(params[:account]) if params[:account].class == String
      @account = Account.new(params[:account])
      @account_owner = current_user.company.contacts

      if @account.save
        render nothing: true
      else
        render json: @account.errors
      end
    end

    def update
        @account = Account.find(params[:id])
        @account_owner = current_user.company.contacts

        params[:account] = JSON.parse(params[:account]) if params[:account].class == String

        if @account.update_attributes(params[:account])
          render nothing: true
        else
          render json: @account.errors
        end
    end

    def destroy
        @account = Account.find(params[:id])
        @account.destroy

        render json: '', status: 200
    end

    def search
      @account = Account.search params[:query]
    end
end
