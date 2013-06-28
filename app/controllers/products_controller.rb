class ProductsController < ApplicationController
    before_filter :authenticate_user!
    filter_access_to :all
    def index
      @company = Company.where(:id => current_user.company_id).first
        @products = Product.all
        @products = @company.products.paginate(:page => params[:page], :per_page => 15)

        respond_to do |format|
            format.html # index.html.erb
            format.json { render json: @products }
        end
    end

    def show
        @product = Product.find(params[:id])

        respond_to do |format|
            format.html # show.html.erb
            format.json { render json: @product }
        end
    end

    def new
        @product = Product.new

        respond_to do |format|
            format.html # new.html.erb
            format.json { render json: @product }
        end
    end

    def edit
        @product = Product.find(params[:id])
    end

    def create
        @company = Company.where(:id => current_user.company_id).first
        @product = @company.products.new(params[:product])
        @product.company_id = @company.id
        @product.max_cost = 123

        respond_to do |format|
            if @product.save
                format.html { redirect_to :products, notice: 'Product was successfully created.' }
                format.json { render json: @product, status: :created, location: @product }
            else
                format.html { render action: "new" }
                format.json { render json: @product.errors, status: :unprocessable_entity }
            end
        end
    end

    def update
        @company = Company.where(:id => current_user.company_id).first
        @product = @company.products.find(params[:id])

        respond_to do |format|
            if @product.update_attributes(params[:product])
                format.html { redirect_to @product, notice: 'Product was successfully updated.' }
                format.json { head :no_content }
            else
                format.html { render action: "edit" }
                format.json { render json: @product.errors, status: :unprocessable_entity }
            end
        end
    end

    def destroy
        @product = Product.find(params[:id])
        @product.destroy

        respond_to do |format|
            format.html { redirect_to products_url }
            format.json { head :no_content }
        end
    end
end
