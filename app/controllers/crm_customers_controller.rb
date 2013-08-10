class CrmCustomersController < ApplicationController
  before_filter :authenticate_user!
  filter_access_to :all
  respond_to :html, :json

  def index
    @crm_customers = CrmCustomer.all

    respond_with @crm_customers
  end

  def show
      @crm_customer = CrmCustomer.find(params[:id])

      respond_with @crm_customer
  end

  def new
      @crm_customer = CrmCustomer.new
      @crm_customer.build_company

      respond_with @crm_customer
  end

  def edit
      @crm_customer = CrmCustomer.find(params[:id])
  end

  def create
      @crm_customer = CrmCustomer.new(params[:crm_customer])

      @crm_customer.save
      respond_with @crm_customer
  end

  def update
      @crm_customer = CrmCustomer.find(params[:id])

      @crm_customer.update_attributes(params[:crm_customer])
      respond_with @crm_customer
  end

  def destroy
      @crm_customer = CrmCustomer.find(params[:id])
      @crm_customer.destroy

      respond_with @crm_customer
  end
end
