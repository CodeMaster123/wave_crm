class CompaniesController < ApplicationController
    before_filter :authenticate_user!
    filter_access_to :all
    respond_to :html, :json

    def index
        @companies = Company.all

        respond_with @companies
    end

    def show
        @company = Company.find(params[:id])

        respond_with @company
    end

    def new
        @company = Company.new

        respond_with @company
    end

    def edit
        @company = Company.find(params[:id])
    end

    def create
        @company = Company.new(params[:company])

        @company.save
        respond_with @company
    end

    def update
        @company = Company.find(params[:id])

        @company.update_attributes(params[:company])
        respond_with @company
    end

    def destroy
        @company = Company.find(params[:id])
        @company.destroy

        respond_with @company
    end
end
