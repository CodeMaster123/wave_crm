class TeamLeadersController < ApplicationController
  before_filter :authenticate_user!
  # GET /team_leaders
  # GET /team_leaders.json
  def index
    @team_leaders = TeamLeader.all


    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @team_leaders }
    end
  end

  # GET /team_leaders/1
  # GET /team_leaders/1.json
  def show
    @team_leader = TeamLeader.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @team_leader }
    end
  end

  # GET /team_leaders/new
  # GET /team_leaders/new.json
  def new
    @team_leader = TeamLeader.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @team_leader }
    end
  end

  # GET /team_leaders/1/edit
  def edit
    @team_leader = TeamLeader.find(params[:id])
  end

  # POST /team_leaders
  # POST /team_leaders.json
  def create
    @team_leader = TeamLeader.new(params[:team_leader])

    respond_to do |format|
      if @team_leader.save
        format.html { redirect_to @team_leader, notice: 'Team leader was successfully created.' }
        format.json { render json: @team_leader, status: :created, location: @team_leader }
      else
        format.html { render action: "new" }
        format.json { render json: @team_leader.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /team_leaders/1
  # PUT /team_leaders/1.json
  def update
    @team_leader = TeamLeader.find(params[:id])

    respond_to do |format|
      if @team_leader.update_attributes(params[:team_leader])
        format.html { redirect_to @team_leader, notice: 'Team leader was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @team_leader.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /team_leaders/1
  # DELETE /team_leaders/1.json
  def destroy
    @team_leader = TeamLeader.find(params[:id])
    @team_leader.destroy

    respond_to do |format|
      format.html { redirect_to team_leaders_url }
      format.json { head :no_content }
    end
  end

  def target_forecast
    @all_team_leader = TeamLeader.first
  end
end


