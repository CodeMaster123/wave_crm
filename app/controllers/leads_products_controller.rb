class LeadsProductsController < ApplicationController
    before_filter :authenticate_user!
    filter_access_to :all
    respond_to :html, :json, :xml

    def index
        @leads_products = LeadsProduct.all

        respond_with @leads_products
    end

    def show
        @leads_product = LeadsProduct.find(params[:id])

        respond_with @leads_product
    end

    def new
        @leads_product = LeadsProduct.new

        respond_with @leads_product
    end

    def edit
        @leads_product = LeadsProduct.find(params[:id])
    end

    def create
        @leads_product = LeadsProduct.new(params[:leads_product])

        @leads_product.save
        respond_with @leads_product
    end

    def update
        @leads_product = LeadsProduct.find(params[:id])

        @leads_product.update_attributes(params[:leads_product])
        respond_with @leads_product
    end

    def destroy
        @leads_product = LeadsProduct.find(params[:id])
        @leads_product.destroy

        respond_with @leads_product
    end
end
