class TargetsController < ApplicationController
    before_filter :authenticate_user!
    filter_access_to :all
    def index

        @targets = Target.all
        @team_leaders = TeamLeader.all
        @sales_executives = SalesExecutive.all
        @company = Company.where(:id => current_user.company_id).first
        @targets_by_months = Array.new
        if current_user.account_type == 1
            if params[:type].nil?
                @targets_by_months = @company.targets.where(:target_month => Date.today.month, :target_year => Date.today.year)
            else
                @targets_by_months = @company.targets.where(:target_month => params[:type].to_i, :target_year => Date.today.year)
            end
        elsif current_user.account_type == 2
            @team_leader = TeamLeader.where(:user_id => current_user.id).first
            @targets_by_months[0] = @team_leader.current_target
            @i = 1
        elsif current_user.account_type == 3
            @targets_by_months = current_user.sales_executive.current_target
        end

        @previous_months = Array.new
        current_month = Date.today.month
        current_year = Date.today.year
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

        respond_to do |format|
            if params[:type].nil?
                format.html # index.html.erb
            else
                format.html{render :nothing => true}
            end
            format.json { render json: @targets }
        end
    end

    def show
        @target = Target.find(params[:id])

        respond_to do |format|
            format.html # show.html.erb
            format.json { render json: @target }
        end
    end

    def new
        @company = Company.where(:id => current_user.company_id).first
        @target = Target.new
        @team_leaders = @company.team_leaders.all
        @sales_executives = @company.sales_executives.all

        respond_to do |format|
            format.html # new.html.erb
            format.json { render json: @target }
        end
    end

    def edit
        @company = Company.where(:id => current_user.company_id).first
        @team_leaders = @company.team_leaders.all
        @sales_executives = @company.sales_executives.all
        @target = Target.find(params[:id])
    end

    def create
        @company = Company.where(:id => current_user.company_id).first
        @target = @company.targets.new(params[:target])
        @team_leaders = @company.team_leaders.all
        @sales_executives = @company.sales_executives.all
        respond_to do |format|
            if @target.save
                format.html { redirect_to :targets, notice: 'Target was successfully created.' }
                format.json { render json: @target, status: :created, location: @target }
            else
                format.html { render "new" }
                format.json { render json: @target.errors, status: :unprocessable_entity }
            end
        end
    end

    def update
        @company = Company.where(:id => current_user.company_id).first
        @target = @company.targets.find(params[:id])

        respond_to do |format|
            if @target.update_attributes(params[:target])
                format.html { redirect_to @target, notice: 'Target was successfully updated.' }
                format.json { head :no_content }
            else
                format.html { render "edit" }
                format.json { render json: @target.errors, status: :unprocessable_entity }
            end
        end
    end

    def destroy
        @target = Target.find(params[:id])
        @target.destroy

        respond_to do |format|
            format.html { redirect_to targets_url }
            format.json { head :no_content }
        end
    end

    def old_target
        @team_leaders = TeamLeader.all
        @sales_executives = SalesExecutive.all
        @company = Company.where(:id => current_user.company_id).first
        if current_user.account_type == 1
            @targets = @company.targets.paginate(:page => params[:page], :per_page => 15).all
        elsif current_user.account_type == 2
            @team_leader = TeamLeader.where(:user_id => current_user.id).first
            @targets[0] = @team_leader.current_target
            @i = 1
            # @team_leader.sales_executives.each do |sales_executive|
            #     if sales_executive.targets.nil?
            #         @targets_by_months[@i] = nil
            #     else
            #         @targets_by_months[@i] = sales_executive.current_target
            #     end
            #     @i = @i+1
            # end
        end
        respond_to do |format|
            format.html # index.html.erb
            format.json { render json: @targets }
        end
    end

end
