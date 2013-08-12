class TeamLeadersController < ApplicationController
    before_filter :authenticate_user!
    filter_access_to :all
    respond_to :html, :json

    def index
        @team_leaders = current_user.company.team_leaders.all


        respond_with @team_leaders
    end

    def show
        @team_leader = TeamLeader.find(params[:id])

        respond_with @team_leader
    end

    def new
        @team_leader = TeamLeader.new

        respond_with @team_leader
    end

    def edit
        @team_leader = TeamLeader.find(params[:id])

        respond_with @team_leader
    end

    def create
        @team_leader = current_user.company.team_leaders.new(params[:team_leader])

        @team_leader.save
        respond_with @team_leader, :location => team_leaders_path
    end

    def update
        @team_leader = current_user.company.team_leaders.find(params[:id])

        @team_leader.update_attributes(params[:team_leader])
        respond_with @team_leader
    end

    def destroy
        @team_leader = TeamLeader.find(params[:id])
        @team_leader.destroy

        @team_leader.update_attributes(params[:team_leader])
        respond_with @team_leader
    end
end


