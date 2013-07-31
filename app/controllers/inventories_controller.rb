class InventoriesController < ApplicationController
  before_filter :authenticate_user!
  filter_access_to :all

  def index
    @inventories = current_user.company.inventories.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @inventories }
    end
  end

  def show
    @inventory = Inventory.find(params[:id])
    @inventory_additions = @inventory.inventory_additions
    @inventory_removal = @inventory.product.product_transactions

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @inventory }
    end
  end

  def new
    @inventory = Inventory.new
    @products = Company.find(current_user.company_id).products

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @inventory }
    end
  end

  def edit
    @inventory = Inventory.find(params[:id])
    @products = Company.find(current_user.company_id).products
  end

  def create
    @inventory = Inventory.new(params[:inventory])
    @products = Company.find(current_user.company_id).products

    respond_to do |format|
      if @inventory.save
        format.html { redirect_to @inventory, notice: 'Inventory was successfully created.' }
        format.json { render json: @inventory, status: :created, location: @inventory }
      else
        format.html { render "new" }
        format.json { render json: @inventory.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @inventory = Inventory.find(params[:id])
    @products = Company.find(current_user.company_id).products

    respond_to do |format|
      if @inventory.update_attributes(params[:inventory])
        format.html { redirect_to @inventory, notice: 'Inventory was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render "edit" }
        format.json { render json: @inventory.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @inventory = Inventory.find(params[:id])
    @inventory.destroy

    respond_to do |format|
      format.html { redirect_to inventories_url }
      format.json { head :no_content }
    end
  end
end
