class TargetsController < BaseController
    before_filter :authenticate_user!, :fetch_company
    filter_access_to :all
    respond_to :html, :json

    def index
        @targets = current_user.targets_by_account

        respond_with @targets
    end

    def show
        @target = Target.find(params[:id])

        respond_with @target
    end

    def new
        @target = Target.new

        respond_with @target
    end

    def edit
        @target = Target.find(params[:id])
    end

    def create
        @target = @company.targets.new(params[:target])

        @target.save
        respond_with @target, :location => targets_path
    end

    def update
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
        if current_user.account_type == 1
            @targets = @company.targets.all
        elsif current_user.account_type == 2
            @team_leader = current_user.team_leader
            @targets[0] = @team_leader.current_target
            @i = 1
        end

        respond_with @target
    end
end
