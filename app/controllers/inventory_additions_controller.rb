class InventoryAdditionsController < ApplicationController
    before_filter :authenticate_user!, :fetch_company
    filter_access_to :all
    respond_to :html, :json

    def index
        @inventory_additions = InventoryAddition.all

        respond_with @inventory_additions
    end

    def show
        @inventory_addition = InventoryAddition.find(params[:id])

        respond_with @inventory_addition
    end

    def new
        @inventory_addition = InventoryAddition.new
        @products = current_user.company.products

        respond_with @inventory_addition
    end

    def edit
        @inventory_addition = InventoryAddition.find(params[:id])
        @products = Company.find(current_user.company_id).products
    end

    def create
        @inventory = Inventory.find(params[:inventory_addition][:product_id])
        @products = current_user.company.products
        @inventory_addition = @inventory.inventory_additions.new(params[:inventory_addition])

        @inventory_addition.save
        respond_with @inventory_addition, :location => inventories_path
    end

    def update
        @inventory_addition = InventoryAddition.find(params[:id])
        @products = current_user.company.products
        @inventory_addition.update_difference = params[:inventory_addition][:quantity].to_i - @inventory_addition.quantity
        @inventory_addition.update_attributes(params[:inventory_addition])

        respond_with @inventory_addition, :location => inventories_path
    end

    def destroy
        @inventory_addition = InventoryAddition.find(params[:id])
        @inventory_addition.destroy

        respond_with @inventory_addition
    end
end
