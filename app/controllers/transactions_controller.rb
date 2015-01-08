class TransactionsController < ApplicationController
    before_filter :authenticate_user!
    filter_access_to :all

    def index
        @company = current_user.company
        @transactions = @company.transactions.paginate(:page => params[:page], :per_page => 15)
    end

    def show
        @transaction = Transaction.find(params[:id])

        respond_to do |format|
            format.html # show.html.erb
            format.pdf {render false } # show.html.erb
        end
    end

    def new
      @company = current_user.company
        if params[:matured_by].nil?
            @transaction = Transaction.new
            @transaction.product_transactions.build
        else
          @lead = Lead.find(params[:id1])
          @transaction = current_user.company.transactions.build
          @lead.product_transactions.each do |pt|
            @transaction.product_transactions.new(:price => pt.price, :quantity => pt.quantity, :product_id => pt.product_id, :lead_id => pt.lead_id)
          end
          @transaction.account = @lead.account
          #@transaction.product_transactions.build
        end

        @transaction.partial_payments.build
        @transaction.contacts.build

        @products = current_user.company.products
        @contacts = current_user.company.contacts.all
        @accounts = current_user.company.accounts
    end

    def edit
      @transaction = Transaction.find(params[:id])
      @company = current_user.company
    end

    def create
      @company = current_user.company
      @accounts = @company.accounts
      @products = @company.products
      @transaction = @company.transactions.new(params[:transaction])
      @contacts = @company.contacts.all

      if @transaction.save
        @transaction.account.lead.update_attributes(:matured => true, :matured_at => Date.today)
        @transaction.account.update_attributes(:is_matured => true)

        if current_user.account_type == 1
          redirect_to  transactions_path , notice: 'Transaction was successfully created.'
        else 
          redirect_to  leads_path , notice: 'Transaction was successfully created.'
        end
      else
        render "new"
      end
    end

    def update
      @company = current_user.company
      @products = @company.products
      @transaction = @company.transactions.find(params[:id])

      respond_to do |format|
        if @transaction.update_attributes(params[:transaction])
          redirect_to transactions_path, notice: 'Transaction was successfully updated.'
        else
          render "edit"
        end
      end
    end

    def destroy
      @transaction = Transaction.find(params[:id]).destroy

        redirect_to transactions_url
    end

    def invoice
      @company = current_user.company
      @transaction = Transaction.find(params[:id])
      @product_transactions = @transaction.product_transactions
    end

    def get_partial_payments
      @partial_transactions = Transaction.find(params[:transaction_id]).partial_payments

      respond_to do |format|
        format.json { render json: @partial_transactions}
      end
    end
end
