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
            if params[:type].nil?
                @targets= @company.targets.where(:target_month => Date.today.month, :target_year => Date.today.year)
            else
                @targets= @company.targets.where(:target_month => params[:type].to_i, :target_year => Date.today.year)
            end
        elsif current_user.account_type == 2
            @team_leader = current_user.team_leader
            @targets[0] = @team_leader.current_target
        elsif current_user.account_type == 3
            @targets= current_user.sales_executive.current_target
        end

        @previous_months = Array.new
        current_month = Date.today.month
        current_year = Date.today.month
        i = 0
        (1..12).each do
            @previous_months[i] = [current_month, current_year]
            current_month -=1
            if current_month == 0
                current_month = 12
                current_year -= 1
            end
            i += 1

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
        @team_leaders = @company.team_leaders
        @sales_executives = @company.sales_executives

        respond_with @target
    end

    def edit
        @company = current_user.company
        @team_leaders = @company.team_leaders
        @sales_executives = @company.sales_executives
        @target = Target.find(params[:id])
    end

    def create
        @company = current_user.company
        @target = @company.targets.new(params[:target])
        @team_leaders = @company.team_leaders
        @sales_executives = @company.sales_executives

        @target.save
        respond_with @target
    end

    def update
        @company = Company.where(:id => current_user.company_id).first
        @target = @company.targets.find(params[:id])
        @team_leaders = @company.team_leaders
        @sales_executives = @company.sales_executives

        @target.update_attributes(params[:target])
        respond_with @target
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
