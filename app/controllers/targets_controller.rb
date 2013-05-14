class TargetsController < ApplicationController
    before_filter :authenticate_user!
    filter_access_to :all
    # GET /targets
    # GET /targets.json
    def index
<<<<<<< HEAD
      @company = Company.where(:id => current_user.company_id).first
      @targets = @company.targets.paginate(:page => params[:page], :per_page => 15)
      @team_leaders = TeamLeader.all
      @sales_executives = SalesExecutive.all
      @targets_by_months = @company.targets.where(:target_month => Date.today.month, :target_year => Date.today.year)
=======
        @company = Company.where(:id => current_user.company_id).first
        @targets_by_months = Array.new
        if current_user.account_type == 1
            @targets_by_months = @company.targets.where("MONTH(start_target_date) = ? and YEAR(start_target_date) = ?", Date.today.month, Date.today.year)
        elsif current_user.account_type == 2
            @team_leader = TeamLeader.where(:user_id => current_user.id).first
            @targets_by_months[0] = @team_leader.current_target
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
>>>>>>> 3d7dca4cdaf38d2b61a44133106425084e245af2

        respond_to do |format|
            format.html # index.html.erb
            format.json { render json: @targets }
        end
    end

    # GET /targets/1
    # GET /targets/1.json
    def show
        @target = Target.find(params[:id])

        respond_to do |format|
            format.html # show.html.erb
            format.json { render json: @target }
        end
    end

    # GET /targets/new
    # GET /targets/new.json
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

    # GET /targets/1/edit
    def edit
        @company = Company.where(:id => current_user.company_id).first
        @team_leaders = @company.team_leaders.all
        @sales_executives = @company.sales_executives.all
        @target = Target.find(params[:id])
    end

    # POST /targets
    # POST /targets.json
    def create
        @company = Company.where(:id => current_user.company_id).first
        @target = @company.targets.new(params[:target])
        @team_leaders = @company.team_leaders.all
        @sales_executives = @company.sales_executives.all
        @target.company_id = @company.id
        respond_to do |format|
            if @target.save
                format.html { redirect_to :targets, notice: 'Target was successfully created.' }
                format.json { render json: @target, status: :created, location: @target }
            else
                format.html { render action: "new" }
                format.json { render json: @target.errors, status: :unprocessable_entity }
            end
        end
    end

    # PUT /targets/1
    # PUT /targets/1.json
    def update
        @company = Company.where(:id => current_user.company_id).first
        @target = @company.targets.find(params[:id])

        respond_to do |format|
            if @target.update_attributes(params[:target])
                format.html { redirect_to @target, notice: 'Target was successfully updated.' }
                format.json { head :no_content }
            else
                format.html { render action: "edit" }
                format.json { render json: @target.errors, status: :unprocessable_entity }
            end
        end
    end

    # DELETE /targets/1
    # DELETE /targets/1.json
    def destroy
        @target = Target.find(params[:id])
        @target.destroy

        respond_to do |format|
            format.html { redirect_to targets_url }
            format.json { head :no_content }
        end
    end
end
