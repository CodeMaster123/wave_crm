class TargetsController < ApplicationController
    before_filter :authenticate_user!
    filter_access_to :all
    respond_to :html, :json

    def index
        @team_leaders = TeamLeader.all
        @sales_executives = SalesExecutive.all
        @company = current_user.company
        @targets= Array.new

        if current_user.account_type == 1
          @targets = Target.admin_target_list(@company)
        elsif current_user.account_type == 2
            @team_leader = current_user.team_leader
            @targets[0] = @team_leader.current_target
        elsif current_user.account_type == 3
            @targets= current_user.sales_executive.current_target
        end

        respond_with @targets
    end

    def show
        @target = Target.find(params[:id])

        respond_with @target
    end

    def new
        @company = current_user.company
        @target = Target.new

        respond_with @target
    end

    def edit
        @company = current_user.company
        @target = Target.find(params[:id])
    end

    def create
        @company = current_user.company
        @target = @company.targets.new(params[:target])

        @target.save
        respond_with @target, :location => targets_path
    end

    def update
        @company = current_user.company
        @target = @company.targets.find(params[:id])

        @target.update_attributes(params[:target])
        respond_with @target, :location => targets_path
    end

    def destroy
        @target = Target.find(params[:id])
        @target.destroy

        respond_with @target
    end

    def old_target
        @team_leaders = TeamLeader.all
        @sales_executives = SalesExecutive.all
        @company = current_user.company

        if current_user.account_type == 1
            @targets = @company.targets.paginate(:page => params[:page], :per_page => 15).all
        elsif current_user.account_type == 2
            @team_leader = current_user.team_leader
            @targets[0] = @team_leader.current_target
            @i = 1
        end

        respond_with @target
    end
end
