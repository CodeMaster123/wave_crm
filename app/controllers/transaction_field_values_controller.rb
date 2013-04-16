class TransactionFieldValuesController < ApplicationController
  # GET /transaction_field_values
  # GET /transaction_field_values.json
  def index
    @transaction_field_values = TransactionFieldValue.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @transaction_field_values }
    end
  end

  # GET /transaction_field_values/1
  # GET /transaction_field_values/1.json
  def show
    @transaction_field_value = TransactionFieldValue.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @transaction_field_value }
    end
  end

  # GET /transaction_field_values/new
  # GET /transaction_field_values/new.json
  def new
    @transaction_field_value = TransactionFieldValue.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @transaction_field_value }
    end
  end

  # GET /transaction_field_values/1/edit
  def edit
    @transaction_field_value = TransactionFieldValue.find(params[:id])
  end

  # POST /transaction_field_values
  # POST /transaction_field_values.json
  def create
    @transaction_field_value = TransactionFieldValue.new(params[:transaction_field_value])

    respond_to do |format|
      if @transaction_field_value.save
        format.html { redirect_to @transaction_field_value, notice: 'Transaction field value was successfully created.' }
        format.json { render json: @transaction_field_value, status: :created, location: @transaction_field_value }
      else
        format.html { render action: "new" }
        format.json { render json: @transaction_field_value.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /transaction_field_values/1
  # PUT /transaction_field_values/1.json
  def update
    @transaction_field_value = TransactionFieldValue.find(params[:id])

    respond_to do |format|
      if @transaction_field_value.update_attributes(params[:transaction_field_value])
        format.html { redirect_to @transaction_field_value, notice: 'Transaction field value was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @transaction_field_value.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /transaction_field_values/1
  # DELETE /transaction_field_values/1.json
  def destroy
    @transaction_field_value = TransactionFieldValue.find(params[:id])
    @transaction_field_value.destroy

    respond_to do |format|
      format.html { redirect_to transaction_field_values_url }
      format.json { head :no_content }
    end
  end
end
