class TransactionsController < ApplicationController
    before_filter :authenticate_user!
    filter_access_to :all

    def index
        @company = current_user.company
        @transactions = @company.transactions.paginate(:page => params[:page], :per_page => 15)
        @transaction_fields = current_user.transaction_fields

        respond_to do |format|
            format.html # index.html.erb
            format.json { render json: @transactions }
        end
    end

    def show
        @transaction = Transaction.find(params[:id])
        @product_transactions = @transaction.product_transactions
        @partial_payments = @transaction.partial_payments.all

        respond_to do |format|
            format.html # show.html.erb
            format.pdf {render false } # show.html.erb
            format.json { render json: @transaction }
        end
    end

    def new
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
        @transaction_fields = current_user.transaction_fields

        @products = current_user.company.products
        @contacts = current_user.company.contacts.all
        @accounts = current_user.company.accounts

        respond_to do |format|
          format.html # new.html.erb
          format.json { render json: @transaction }
        end
    end

    def edit
      @transaction = Transaction.find(params[:id])

      @company = current_user.company
      @accounts = @company.accounts
      @products = @company.products
      @contacts = @company.contacts.all
      @transaction_fields = current_user.transaction_fields
    end

    def create
      @company = current_user.company
      @accounts = @company.accounts
      @products = @company.products
      @transaction = @company.transactions.new(params[:transaction])
      @transaction_fields = current_user.transaction_fields
      @transaction.company_id = @company.id
      @contacts = @company.contacts.all

      respond_to do |format|

        if @transaction.save
          @transaction_fields.each do |tf|
            TransactionFieldValue.create(:transaction_id => @transaction.id,:transaction_field_value => params[tf.field_name], :transaction_field_id => tf.id)
          end
          @transaction.account.lead.update_attributes(:matured => true, :matured_at => Date.today)
          @transaction.account.update_attributes(:is_matured => true)

          if current_user.account_type == 1
            format.html { redirect_to  transactions_path , notice: 'Transaction was successfully created.' }
          else 
            format.html { redirect_to  leads_path , notice: 'Transaction was successfully created.' }
          end
        else
          format.html { render "new" }
          format.json { render json: @transaction.errors, status: :unprocessable_entity }
        end
      end
    end

    def update
      @company = current_user.company
      @products = @company.products
      @transaction = @company.transactions.find(params[:id])
      @transaction_fields = current_user.transaction_fields

      respond_to do |format|
        if @transaction.update_attributes(params[:transaction])
          format.html { redirect_to @transaction, notice: 'Transaction was successfully updated.' }
          format.json { head :no_content }

          @transaction_fields.each do |tf|
            @transaction_field_value = TransactionFieldValue.where(:transaction_field_id => tf.id, :transaction_id => @transaction.id).first
            @transaction_field_value.update_attributes(:transaction_id => @transaction.id,:transaction_field_value => params[tf.field_name], :transaction_field_id => tf.id)
          end
        else
          format.html { render "edit" }
          format.json { render json: @transaction.errors, status: :unprocessable_entity }
        end
      end
    end

    def destroy
      @transaction = Transaction.find(params[:id]).destroy

      respond_to do |format|
        format.html { redirect_to transactions_url }
        format.json { head :no_content }
      end
    end

    def mature
      if request.post?
        if params[:executive_type] == "TeamLeader"
          @company_id = TeamLeader.find(params[:matured_by].to_i).company_id
        else
          @company_id = SalesExecutive.find(params[:matured_by].to_i).company_id
        end

        @created = Transaction.last.id
        Transaction.create(:amount => params[:amount],:contact_id => params[:contact_id], :micr_code => params[:micr_code], :transaction_time => params[:transaction_time].to_time, :transaction_type => params[:transaction_type], :company_id => @company_id, :matured_by => params[:matured_by], :executive_type => params[:executive_type].to_s)
        if Transaction.last.id == @created
          session[:errors] = 'Fill the form carefully'
        else
          Lead.find(params[:id1]).update_attributes(:matured_at => params[:transaction_time])
          redirect_to leads_path, notice: "Lead successfully matured"
        end
      end
      @transaction_fields = current_user.transaction_fields
    end

    def invoice
      @company = current_user.company
      @transaction = Transaction.find(params[:id])
      @product_transactions = @transaction.product_transactions
      respond_to do |format|
        format.html
      end
    end

    def get_partial_payments
      @partial_transactions = Transaction.find(params[:transaction_id]).partial_payments

      respond_to do |format|
        format.json { render json: @partial_transactions}
      end
    end
end
