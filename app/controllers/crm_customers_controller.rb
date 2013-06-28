#Pull this file
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

  def show
    @crm_customer = CrmCustomer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @crm_customer }
    end
  end

  def new
    @crm_customer = CrmCustomer.new
    @crm_customer.build_company

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @crm_customer }
    end
  end

  def edit
    @crm_customer = CrmCustomer.find(params[:id])
  end

  def create
    @crm_customer = CrmCustomer.new(params[:crm_customer])

    respond_to do |format|
      if @crm_customer.save
        format.html { redirect_to @crm_customer, notice: 'Crm customer was successfully created.' }
        format.json { render json: @crm_customer, status: :created, location: @crm_customer }
      else
        format.html { render "new" }
        format.json { render json: @crm_customer.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @crm_customer = CrmCustomer.find(params[:id])

    respond_to do |format|
      if @crm_customer.update_attributes(params[:crm_customer])
        format.html { redirect_to @crm_customer, notice: 'Crm customer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render "edit" }
        format.json { render json: @crm_customer.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @crm_customer = CrmCustomer.find(params[:id])
    @crm_customer.destroy

    respond_to do |format|
      format.html { redirect_to crm_customers_url }
      format.json { head :no_content }
    end
  end
end
