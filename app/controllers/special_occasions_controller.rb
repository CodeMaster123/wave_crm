class SpecialOccasionsController < ApplicationController
  def index
    @special_occasions = SpecialOccasion.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @special_occasions }
    end
  end

  def show
    @special_occasion = SpecialOccasion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @special_occasion }
    end
  end

  def new
    @special_occasion = SpecialOccasion.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @special_occasion }
    end
  end

  def edit
    @special_occasion = SpecialOccasion.find(params[:id])
  end

  def create
    @special_occasion = SpecialOccasion.new(params[:special_occasion])

    respond_to do |format|
      if @special_occasion.save
        format.html { redirect_to @special_occasion, notice: 'Special occasion was successfully created.' }
        format.json { render json: @special_occasion, status: :created, location: @special_occasion }
      else
        format.html { render action: "new" }
        format.json { render json: @special_occasion.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @special_occasion = SpecialOccasion.find(params[:id])

    respond_to do |format|
      if @special_occasion.update_attributes(params[:special_occasion])
        format.html { redirect_to @special_occasion, notice: 'Special occasion was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @special_occasion.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @special_occasion = SpecialOccasion.find(params[:id])
    @special_occasion.destroy

    respond_to do |format|
      format.html { redirect_to special_occasions_url }
      format.json { head :no_content }
    end
  end
end
