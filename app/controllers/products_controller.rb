class ProductsController < ApplicationController
    before_filter :authenticate_user!
    filter_access_to :all

    def index
        @company = Company.find(current_user.company_id)
        @products = @company.products.paginate(:page => params[:page], :per_page => 15)
    end

    def show
        @product = Product.find(params[:id])
    end

    def new
        @product = Product.new
    end

    def edit
        @product = Product.find(params[:id])
    end

    def create
        @company = current_user.company
        @product = @company.products.new(params[:product])

        respond_to do |format|
            if @product.save
                format.html { redirect_to :products, notice: 'Product was successfully created.' }
            else
                format.html { render "new" }
            end
        end
    end

    def update
        @company = Company.where(:id => current_user.company_id).first
        @product = @company.products.find(params[:id])

        respond_to do |format|
            if @product.update_attributes(params[:product])
                format.html { redirect_to :products, notice: 'Product was successfully updated.' }
            else
                format.html { render "edit" }
            end
        end
    end

    def destroy
        @product = Product.find(params[:id])
        @product.destroy
        redirect_to products_url
    end
end
