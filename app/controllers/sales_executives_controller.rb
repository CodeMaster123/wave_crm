class SalesExecutivesController < ApplicationController
    before_filter :authenticate_user!
    filter_access_to :all
    respond_to :html, :json

    def index
        @company = current_user.company
        if current_user.account_type == 1
            @sales_executives = @company.sales_executives.all
        elsif current_user.account_type == 2
            @sales_executives = User.find(current_user.id).team_leader.sales_executives
        end

        respond_with @sales_executives
    end

    def show
        @sales_executive = SalesExecutive.find(params[:id])

        respond_with @sales_executive
    end

    def new
        @sales_executive = SalesExecutive.new

        respond_with @sales_executive
    end

    def edit
        @sales_executive = SalesExecutive.find(params[:id])

        respond_with @sales_executive
    end

    def create
        @company = current_user.company
        @sales_executive = @company.sales_executives.new(params[:sales_executive])

        @sales_executive.save
        respond_with @sales_executive, :location => sales_executives_path
    end

    def update
        @company = Company.where(:id => current_user.company_id).first
        @sales_executive = @company.sales_executives.find(params[:id])

        @sales_executive.update_attributes(params[:sales_executive])
        respond_with @sales_executive
    end

    def destroy
        @sales_executive = SalesExecutive.find(params[:id])
        @sales_executive.destroy

        respond_with @sales_executive
    end
end
