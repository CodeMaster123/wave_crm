class AccountsController < ApplicationController
    before_filter :authenticate_user!
    filter_access_to :all

    def index
        if params[:type] == "existing_accounts"
        puts "type -----------> #{params[:type]}"
        @accounts = current_user.company.accounts.where(:is_matured => true)
        else
        @accounts = current_user.company.accounts.where(:is_matured => false)
        end

        respond_to do |format|
            format.html # index.html.erb
            format.json { render json: @accounts }
        end
    end

    def show
        @account = Account.find(params[:id])
        @contacts = @account.contacts
        @transactions = @account.transactions
        @transaction_fields = current_user.transaction_fields

        respond_to do |format|
            format.html # show.html.erb
            format.json { render json: @account }
        end
    end

    def new
        @account = Account.new
        @account_owner = current_user.company.contacts

        respond_to do |format|
            format.html # new.html.erb
            format.json { render json: @account }
        end
    end

    def edit
        @account = Account.find(params[:id])
        @account_owner = current_user.company.contacts
    end

    def create
        @account = Account.new(params[:account])
        @account_owner = current_user.company.contacts

        respond_to do |format|
            if @account.save
                format.html { redirect_to @account, notice: 'Account was successfully created.' }
                format.json { render json: @account, status: :created, location: @account }
            else
                format.html { render "new" }
                format.json { render json: @account.errors, status: :unprocessable_entity }
            end
        end
    end

    def update
        @account = Account.find(params[:id])
        @account_owner = current_user.company.contacts

        respond_to do |format|
            if @account.update_attributes(params[:account])
                format.html { redirect_to @account, notice: 'Account was successfully updated.' }
                format.json { head :no_content }
            else
                format.html { render "edit" }
                format.json { render json: @account.errors, status: :unprocessable_entity }
            end
        end
    end

    def destroy
        @account = Account.find(params[:id])
        @account.destroy

        respond_to do |format|
            format.html { redirect_to accounts_url }
            format.json { head :no_content }
        end
    end
end
