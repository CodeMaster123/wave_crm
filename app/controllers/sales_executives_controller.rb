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
end
