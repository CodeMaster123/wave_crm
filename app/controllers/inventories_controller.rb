class InventoriesController < ApplicationController
  before_filter :authenticate_user!
  filter_access_to :all
  respond_to :html, :json


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

  def destroy
      @inventory = Inventory.find(params[:id])
      @inventory.destroy

      respond_with @inventory
  end
end
