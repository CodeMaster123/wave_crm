class TargetsController < ApplicationController
    before_filter :fetch_company
    filter_access_to :all

    def index
        @targets = current_user.targets_by_account
        render json: @targets
    end

    def show
        @target = Target.find(params[:id])

        render json: @target
    end

    def create
        @target = @company.targets.new(params[:target])

        if @target.save
          render json: @target, status: :created
        else
          render json: @target.errors, status: :unprocessable_entity
        end
    end

    def update
        @target = @company.targets.find(params[:id])

        if @target.update_attributes(params[:target])
          render json: @target, status: :ok
        else
          render json: @target.errors, status: :unprocessable_entity
        end
    end

    def destroy
        @target = Target.find(params[:id])
        @target.destroy

        render json: @target,  head: :no_content
    end
end
