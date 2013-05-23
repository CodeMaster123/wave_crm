class CrmCustomersController < ApplicationController
  before_filter :authenticate_user!
  filter_access_to :all

  def index
    @crm_customers = CrmCustomer.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @crm_customers }
    end
  end

  # GET /crm_customers/1
  # GET /crm_customers/1.json
  def show
    @crm_customer = CrmCustomer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @crm_customer }
    end
  end

  # GET /crm_customers/new
  # GET /crm_customers/new.json
  def new
    @crm_customer = CrmCustomer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @crm_customer }
    end
  end

  # GET /crm_customers/1/edit
  def edit
    @crm_customer = CrmCustomer.find(params[:id])
  end

  # POST /crm_customers
  # POST /crm_customers.json
  def create
    @crm_customer = CrmCustomer.new(params[:crm_customer])

    respond_to do |format|
      if @crm_customer.save
        format.html { redirect_to @crm_customer, notice: 'Crm customer was successfully created.' }
        format.json { render json: @crm_customer, status: :created, location: @crm_customer }
      else
        format.html { render action: "new" }
        format.json { render json: @crm_customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /crm_customers/1
  # PUT /crm_customers/1.json
  def update
    @crm_customer = CrmCustomer.find(params[:id])

    respond_to do |format|
      if @crm_customer.update_attributes(params[:crm_customer])
        format.html { redirect_to @crm_customer, notice: 'Crm customer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @crm_customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /crm_customers/1
  # DELETE /crm_customers/1.json
  def destroy
    @crm_customer = CrmCustomer.find(params[:id])
    @crm_customer.destroy

    respond_to do |format|
      format.html { redirect_to crm_customers_url }
      format.json { head :no_content }
    end
  end
end
