class InventoryAdditionsController < ApplicationController
  # GET /inventory_additions
  # GET /inventory_additions.json
  def index
    @inventory_additions = InventoryAddition.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @inventory_additions }
    end
  end

  # GET /inventory_additions/1
  # GET /inventory_additions/1.json
  def show
    @inventory_addition = InventoryAddition.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @inventory_addition }
    end
  end

  # GET /inventory_additions/new
  # GET /inventory_additions/new.json
  def new
    @inventory_addition = InventoryAddition.new
    @products = Company.find(current_user.company_id).products

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @inventory_addition }
    end
  end

  # GET /inventory_additions/1/edit
  def edit
    @inventory_addition = InventoryAddition.find(params[:id])
    @products = Company.find(current_user.company_id).products
  end

  # POST /inventory_additions
  # POST /inventory_additions.json
  def create
    @inventory_addition = InventoryAddition.new(params[:inventory_addition])
    @products = Company.find(current_user.company_id).products

    respond_to do |format|
      if @inventory_addition.save
          @inventory = Inventory.where(:product_id => @inventory_addition.product_id).first
          @inventory.update_attributes(:quantity => @inventory.quantity + @inventory_addition.quantity)
        format.html { redirect_to @inventory_addition, notice: 'Inventory addition was successfully created.' }
        format.json { render json: @inventory_addition, status: :created, location: @inventory_addition }
      else
        format.html { render action: "new" }
        format.json { render json: @inventory_addition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /inventory_additions/1
  # PUT /inventory_additions/1.json
  def update
    @inventory_addition = InventoryAddition.find(params[:id])
    @products = Company.find(current_user.company_id).products

    respond_to do |format|
        @update_difference = params[:inventory_addition][:quantity].to_i - @inventory_addition.quantity
        if @inventory_addition.update_attributes(params[:inventory_addition])
            @inventory = Inventory.where(:product_id => @inventory_addition.product_id).first
            @inventory.update_attributes(:quantity => (@inventory.quantity + @update_difference))
            format.html { redirect_to @inventory_addition, notice: 'Inventory addition was successfully updated.' }
            format.json { head :no_content }
        else
            format.html { render action: "edit" }
            format.json { render json: @inventory_addition.errors, status: :unprocessable_entity }
        end
    end
  end

  # DELETE /inventory_additions/1
  # DELETE /inventory_additions/1.json
  def destroy
      @inventory_addition = InventoryAddition.find(params[:id])
      @inventory_addition.destroy

      respond_to do |format|
          format.html { redirect_to inventory_additions_url }
          format.json { head :no_content }
      end
  end
end
