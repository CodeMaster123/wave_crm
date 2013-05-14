class TransactionsController < ApplicationController
    before_filter :authenticate_user!
    filter_access_to :all

    # GET /transactions
    # GET /transactions.json
    def index
        @company = Company.where(:id => current_user.company_id).first
        @transactions = Transaction.all
        @transactions = @company.transactions.paginate(:page => params[:page], :per_page => 15)
        @transaction_fields = current_user.transaction_fields

        respond_to do |format|
            format.html # index.html.erb
            format.json { render json: @transactions }
        end
    end

    # GET /transactions/1
    # GET /transactions/1.json
    def show
        @transaction = Transaction.find(params[:id])

        respond_to do |format|
            format.html # show.html.erb
            format.json { render json: @transaction }
        end
    end

    # GET /transactions/new
    # GET /transactions/new.json
    def new
        @company = Company.where(:id => current_user.company_id).first
        @transaction = Transaction.new
        @contacts = @company.contacts.all
        @transaction_fields = current_user.transaction_fields
        @transaction.contacts.build


        respond_to do |format|
            format.html # new.html.erb
            format.json { render json: @transaction }
        end
    end

    # GET /transactions/1/edit
    def edit
        @company = Company.where(:id => current_user.company_id).first
        @transaction = Transaction.find(params[:id])
        @contacts = @company.contacts.all
        @transaction_fields = current_user.transaction_fields
    end

    # POST /transactions
    # POST /transactions.json
    def create
        @company = Company.where(:id => current_user.company_id).first
        @transaction = @company.transactions.new(params[:transaction])
        @transaction_fields = current_user.transaction_fields
        @transaction.company_id = @company.id
        @contacts = @company.contacts.all

        respond_to do |format|

            if @transaction.save
                @transaction_fields.each do |tf|
                    TransactionFieldValue.create(:transaction_id => @transaction.id,:transaction_field_value => params[tf.field_name], :transaction_field_id => tf.id)
                end

                if current_user.account_type == 1
                    format.html { redirect_to  transactions_path , notice: 'Transaction was successfully created.' }
                elsif current_user.account_type == 2
                    format.html { redirect_to  leads_path , notice: 'Transaction was successfully created.' }
                elsif current_user.account_type == 3
                    format.html { redirect_to  leads_path , notice: 'Transaction was successfully created.' }
                end
            else
                format.html { render action: "new" }
                format.json { render json: @transaction.errors, status: :unprocessable_entity }
            end
        end
    end

    # PUT /transactions/1
    # PUT /transactions/1.json
    def update
        @company = Company.where(:id => current_user.company_id).first
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
                format.html { render action: "edit" }
                format.json { render json: @transaction.errors, status: :unprocessable_entity }
            end
        end
    end

    # DELETE /transactions/1
    # DELETE /transactions/1.json
    def destroy
        @transaction = Transaction.find(params[:id])
        @transaction.destroy

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
            Transaction.create(:amount => params[:amount],:contact_id => params[:contact_id], :micr_code => params[:micr_code], :transaction_time => params[:transaction_time].to_time, :transaction_type => params[:transaction_type], :company_id => @company_id, :matured_by => params[:matured_by], :executive_type => params[:executive_type])
            if Transaction.last.id == @created
                session[:errors] = 'Fill the form carefully'
            else
                Lead.find(params[:id1]).update_attributes(:matured_at => params[:transaction_time])
                redirect_to leads_path, notice: "Lead successfully matured"
            end
        end
        @transaction_fields = current_user.transaction_fields
    end
end
