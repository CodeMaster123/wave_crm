class LeadsProductsController < ApplicationController
    before_filter :authenticate_user!
    filter_access_to :all

    def index
        @leads_products = LeadsProduct.all

        respond_to do |format|
            format.html # index.html.erb
            format.json { render json: @leads_products }
        end
    end

    def show
        @leads_product = LeadsProduct.find(params[:id])

        respond_to do |format|
            format.html # show.html.erb
            format.json { render json: @leads_product }
        end
    end

    def new
        @leads_product = LeadsProduct.new

        respond_to do |format|
            format.html # new.html.erb
            format.json { render json: @leads_product }
        end
    end

    def edit
        @leads_product = LeadsProduct.find(params[:id])
    end

    def create
        @leads_product = LeadsProduct.new(params[:leads_product])

        respond_to do |format|
            if @leads_product.save
                format.html { redirect_to @leads_product, notice: 'Leads product was successfully created.' }
                format.json { render json: @leads_product, status: :created, location: @leads_product }
            else
                format.html { render "new" }
                format.json { render json: @leads_product.errors, status: :unprocessable_entity }
            end
        end
    end

    def update
        @leads_product = LeadsProduct.find(params[:id])

        respond_to do |format|
            if @leads_product.update_attributes(params[:leads_product])
                format.html { redirect_to @leads_product, notice: 'Leads product was successfully updated.' }
                format.json { head :no_content }
            else
                format.html { render "edit" }
                format.json { render json: @leads_product.errors, status: :unprocessable_entity }
            end
        end
    end

    def destroy
        @leads_product = LeadsProduct.find(params[:id])
        @leads_product.destroy

        respond_to do |format|
            format.html { redirect_to leads_products_url }
            format.json { head :no_content }
        end
    end
end
