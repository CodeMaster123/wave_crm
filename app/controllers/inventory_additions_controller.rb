class InventoryAdditionsController < ApplicationController
    before_filter :authenticate_user!, :fetch_company
    filter_access_to :all
    respond_to :html, :json

    def new
        @inventory_addition = InventoryAddition.new
        @product = Product.find(params[:product_id])
        @products = @company.products

        respond_with @inventory_addition
    end

    def edit
        @inventory_addition = InventoryAddition.find(params[:id])
        @products = @company.products
    end

    def create
        @product = Product.find(params[:product_id])
        @inventory_addition = @product.inventory_additions.new(params[:inventory_addition])

        @inventory_addition.save
        respond_with @inventory_addition, :location => products_path
    end

    def update
        @inventory_addition = InventoryAddition.find(params[:id])
        @products = @company.products
        @inventory_addition.update_difference = params[:inventory_addition][:quantity].to_i - @inventory_addition.quantity
        @inventory_addition.update_attributes(params[:inventory_addition])

        respond_with @inventory_addition, :location => products_path
    end

    def destroy
        @inventory_addition = InventoryAddition.find(params[:id])
        @inventory_addition.destroy

        respond_with @inventory_addition
    end
end
