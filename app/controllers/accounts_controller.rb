class AccountsController < ApplicationController
    before_filter :fetch_company
    filter_access_to :all

    def index
        @accounts = @company.accounts

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
      params[:account][:company_id] = current_user.company_id
      @account = Account.new(params[:account])
      @account_owner = current_user.company.contacts

      if @account.save
        render json: @account, status: :created
      else
        render json: @account.errors, status: :unprocessable_entity
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

        render json: @account, head: :no_content
    end

    def search
      @account = Account.search params[:query]
    end
end
