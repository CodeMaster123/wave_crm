class PartialPaymentsController < ApplicationController
  # GET /partial_payments
  # GET /partial_payments.json
  def index
    @partial_payments = PartialPayment.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @partial_payments }
    end
  end

  # GET /partial_payments/1
  # GET /partial_payments/1.json
  def show
    @partial_payment = PartialPayment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @partial_payment }
    end
  end

  # GET /partial_payments/new
  # GET /partial_payments/new.json
  def new
    @partial_payment = PartialPayment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @partial_payment }
    end
  end

  # GET /partial_payments/1/edit
  def edit
    @partial_payment = PartialPayment.find(params[:id])
  end

  # POST /partial_payments
  # POST /partial_payments.json
  def create
    @partial_payment = PartialPayment.new(params[:partial_payment])

    respond_to do |format|
      if @partial_payment.save
        format.html { redirect_to @partial_payment, notice: 'Partial payment was successfully created.' }
        format.json { render json: @partial_payment, status: :created, location: @partial_payment }
      else
        format.html { render action: "new" }
        format.json { render json: @partial_payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /partial_payments/1
  # PUT /partial_payments/1.json
  def update
    @partial_payment = PartialPayment.find(params[:id])

    respond_to do |format|
      if @partial_payment.update_attributes(params[:partial_payment])
        format.html { redirect_to @partial_payment, notice: 'Partial payment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @partial_payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /partial_payments/1
  # DELETE /partial_payments/1.json
  def destroy
    @partial_payment = PartialPayment.find(params[:id])
    @partial_payment.destroy

    respond_to do |format|
      format.html { redirect_to partial_payments_url }
      format.json { head :no_content }
    end
  end
end
