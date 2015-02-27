class ProductsController < ApplicationController
    before_filter :fetch_company
    filter_access_to :all

    def index
        @company = Company.find(current_user.company_id)
        @products = @company.products.all

        render json: @products
    end

    def show
        @product = Product.find(params[:id])

        render json: @product
    end

    def create
        @company = current_user.company
        @product = @company.products.new(params[:product])

        if @product.save
          render nothing: true
        else
          render json: @product.errors
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
      render json: '', status: 200
    end
end
