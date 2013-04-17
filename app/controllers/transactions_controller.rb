class TransactionsController < ApplicationController
    # GET /transactions
    # GET /transactions.json
    def index
        @transactions = Transaction.all
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
        @transaction = Transaction.new
        @contacts = Contact.all
        @transaction_fields = current_user.transaction_fields

        respond_to do |format|
            format.html # new.html.erb
            format.json { render json: @transaction }
        end
    end

    # GET /transactions/1/edit
    def edit
        @transaction = Transaction.find(params[:id])
        @contacts = Contact.all
        @transaction_fields = current_user.transaction_fields
    end

    # POST /transactions
    # POST /transactions.json
    def create
        @transaction = Transaction.new(params[:transaction])
        @transaction_fields = current_user.transaction_fields

        respond_to do |format|
            if @transaction.save
                format.html { redirect_to @transaction, notice: 'Transaction was successfully created.' }
                format.json { render json: @transaction, status: :created, location: @transaction }

                @transaction_fields.each do |tf|
                    TransactionFieldValue.create(:transaction_id => @transaction.id,:transaction_field_value => params[tf.field_name], :transaction_field_id => tf.id)
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
        @transaction = Transaction.find(params[:id])
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
end
