class TeamLeadersController < ApplicationController
    before_filter :authenticate_user!
    filter_access_to :all
    def index
      @company = Company.where(:id => current_user.company_id).first
      @team_leaders = @company.team_leaders.all


        respond_to do |format|
            format.html # index.html.erb
            format.json { render json: @team_leaders }
        end
    end

    def show
        @team_leader = TeamLeader.find(params[:id])

        respond_to do |format|
            format.html # show.html.erb
            format.json { render json: @team_leader }
        end
    end

    def new
        @team_leader = TeamLeader.new

        respond_to do |format|
            format.html # new.html.erb
            format.json { render json: @team_leader }
        end
    end

    def edit
        @team_leader = TeamLeader.find(params[:id])
    end

    def create
        @company = Company.where(:id => current_user.company_id).first
        @team_leader = @company.team_leaders.new(params[:team_leader])

        respond_to do |format|
            if @team_leader.save
                format.html { redirect_to :team_leaders, notice: 'Team leader was successfully created.' }
                format.json { render json: @team_leader, status: :created, location: @team_leader }
            else
                format.html { render action: "new" }
                format.json { render json: @team_leader.errors, status: :unprocessable_entity }
            end
        end
    end

    def update
        @company = Company.where(:id => current_user.company_id).first
        @team_leader = @company.team_leaders.find(params[:id])

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

    def destroy
        @team_leader = TeamLeader.find(params[:id])
        @team_leader.destroy

        respond_to do |format|
            format.html { redirect_to team_leaders_url }
            format.json { head :no_content }
        end
    end
end


