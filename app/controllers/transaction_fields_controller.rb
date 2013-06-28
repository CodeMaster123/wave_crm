class TransactionFieldsController < ApplicationController
  def index
    @transaction_fields = TransactionField.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @transaction_fields }
    end
  end

  def show
    @transaction_field = TransactionField.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @transaction_field }
    end
  end

  def new
    @transaction_field = TransactionField.new
    @users = User.all

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @transaction_field }
    end
  end

  def edit
    @transaction_field = TransactionField.find(params[:id])
    @users = User.all
  end

  def create
    @transaction_field = TransactionField.new(params[:transaction_field])

    respond_to do |format|
      if @transaction_field.save
        format.html { redirect_to @transaction_field, notice: 'Transaction field was successfully created.' }
        format.json { render json: @transaction_field, status: :created, location: @transaction_field }
      else
        format.html { render "new" }
        format.json { render json: @transaction_field.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @transaction_field = TransactionField.find(params[:id])

    respond_to do |format|
      if @transaction_field.update_attributes(params[:transaction_field])
        format.html { redirect_to @transaction_field, notice: 'Transaction field was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render "edit" }
        format.json { render json: @transaction_field.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @transaction_field = TransactionField.find(params[:id])
    @transaction_field.destroy

    respond_to do |format|
      format.html { redirect_to transaction_fields_url }
      format.json { head :no_content }
    end
  end
end
