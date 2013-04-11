class FollowUpsController < ApplicationController
  before_filter :authenticate_user!
  filter_resource_access
  # GET /follow_ups
  # GET /follow_ups.json
  def index
    @follow_ups = FollowUp.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @follow_ups }
    end
  end

  # GET /follow_ups/1
  # GET /follow_ups/1.json
  def show
    @follow_up = FollowUp.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @follow_up }
    end
  end

  # GET /follow_ups/new
  # GET /follow_ups/new.json
  def new
    @follow_up = FollowUp.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @follow_up }
    end
  end

  # GET /follow_ups/1/edit
  def edit
    @follow_up = FollowUp.find(params[:id])
  end

  # POST /follow_ups
  # POST /follow_ups.json
  def create
    @follow_up = FollowUp.new(params[:follow_up])

    respond_to do |format|
      if @follow_up.save
        format.html { redirect_to :controller => 'leads', :action => 'index', notice: 'Follow up was successfully created.' }
        format.json { render json: @follow_up, status: :created, location: @follow_up }
      else
        format.html { render action: "new" }
        format.json { render json: @follow_up.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /follow_ups/1
  # PUT /follow_ups/1.json
  def update
    @follow_up = FollowUp.find(params[:id])

    respond_to do |format|
      if @follow_up.update_attributes(params[:follow_up])
        format.html { redirect_to @follow_up, notice: 'Follow up was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @follow_up.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /follow_ups/1
  # DELETE /follow_ups/1.json
  def destroy
    @follow_up = FollowUp.find(params[:id])
    @follow_up.destroy

    respond_to do |format|
      format.html { redirect_to follow_ups_url }
      format.json { head :no_content }
    end
  end

  def follow_ups_list
    puts "id->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>..#{ params[:id]}"
    @follow_up =  Lead.where(:id => params[:id]).first.follow_ups


  end

end
