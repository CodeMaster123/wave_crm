class SalesExecutivesController < ApplicationController
    before_filter :authenticate_user!
    filter_access_to :all
    def index
        @company = Company.where(:id => current_user.company_id).first
        if current_user.account_type == 1
            @sales_executives = @company.sales_executives.all
        elsif current_user.account_type == 2
            @sales_executives = User.find(current_user.id).team_leader.sales_executives
        end

        respond_to do |format|
            format.html # index.html.erb
            format.json { render json: @sales_executives }
        end
    end

    def show
        @sales_executive = SalesExecutive.find(params[:id])

        respond_to do |format|
            format.html # show.html.erb
            format.json { render json: @sales_executive }
        end
    end

    def new
        @sales_executive = SalesExecutive.new

        respond_to do |format|
            format.html # new.html.erb
            format.json { render json: @sales_executive }
        end
    end

    def edit
        @sales_executive = SalesExecutive.find(params[:id])
    end

    def create
        @company = Company.where(:id => current_user.company_id).first
        @sales_executive = @company.sales_executives.new(params[:sales_executive])
        @sales_executive.company_id = @company.id

        respond_to do |format|
            if @sales_executive.save
                format.html { redirect_to :sales_executives, notice: 'Sales executive was successfully created.' }
                format.json { render json: @sales_executive, status: :created, location: @sales_executive }
            else
                format.html { render "new" }
                format.json { render json: @sales_executive.errors, status: :unprocessable_entity }
            end
        end
    end

    def update
        @company = Company.where(:id => current_user.company_id).first
        @sales_executive = @company.sales_executives.find(params[:id])

        respond_to do |format|
            if @sales_executive.update_attributes(params[:sales_executive])
                format.html { redirect_to @sales_executive, notice: 'Sales executive was successfully updated.' }
                format.json { head :no_content }
            else
                format.html { render "edit" }
                format.json { render json: @sales_executive.errors, status: :unprocessable_entity }
            end
        end
    end

    def destroy
        @sales_executive = SalesExecutive.find(params[:id])
        @sales_executive.destroy

        respond_to do |format|
            format.html { redirect_to sales_executives_url }
            format.json { head :no_content }
        end
    end
end
