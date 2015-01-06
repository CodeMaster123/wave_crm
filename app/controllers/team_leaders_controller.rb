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
end
