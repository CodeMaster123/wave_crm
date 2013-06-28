class TaggingsController < ApplicationController
  def index
    @taggings = Tagging.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @taggings }
    end
  end

  def show
    @tagging = Tagging.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tagging }
    end
  end

  def new
    @tagging = Tagging.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tagging }
    end
  end

  def edit
    @tagging = Tagging.find(params[:id])
  end

  def create
    @tagging = Tagging.new(params[:tagging])

    respond_to do |format|
      if @tagging.save
        format.html { redirect_to @tagging, notice: 'Tagging was successfully created.' }
        format.json { render json: @tagging, status: :created, location: @tagging }
      else
        format.html { render action: "new" }
        format.json { render json: @tagging.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @tagging = Tagging.find(params[:id])

    respond_to do |format|
      if @tagging.update_attributes(params[:tagging])
        format.html { redirect_to @tagging, notice: 'Tagging was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tagging.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @tagging = Tagging.find(params[:id])
    @tagging.destroy

    respond_to do |format|
      format.html { redirect_to taggings_url }
      format.json { head :no_content }
    end
  end
end
