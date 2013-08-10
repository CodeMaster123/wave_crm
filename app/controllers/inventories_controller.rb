class InventoriesController < ApplicationController
  before_filter :authenticate_user!
  filter_access_to :all
  respond_to :html, :json, :xml


  def index
      @inventories = current_user.company.inventories.all

      respond_with @inventories
  end

  def show
      @inventory = Inventory.find(params[:id])
      @inventory_additions = @inventory.inventory_additions
      @inventory_removal = @inventory.product.product_transactions

      respond_with @inventory
  end

  def new
      @inventory = Inventory.new
      @products = current_user.company.products

      respond_with @inventory
  end

  def edit
      @inventory = Inventory.find(params[:id])
      @products = current_user.company.products
  end

  def create
      @inventory = Inventory.new(params[:inventory])
      @products = current_user.company.products

      @inventory.save
      respond_with @inventory
  end

  def update
      @inventory = Inventory.find(params[:id])
      @products = current_user.company.products

      @inventory.update_attributes(params[:inventory])
      respond_with @inventory
  end

  def destroy
      @inventory = Inventory.find(params[:id])
      @inventory.destroy

      respond_with @inventory
  end
end
