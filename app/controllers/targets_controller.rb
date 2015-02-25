class TargetsController < ApplicationController
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
end
