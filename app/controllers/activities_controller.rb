class ActivitiesController < ApplicationController
    before_filter :authenticate_user!
    filter_access_to :all
    respond_to :html, :json

    def index
        @activity = PublicActivity::Activity.where("created_at > '#{Date.today-7.days}' AND (key ilike '%create%' OR key ilike '%update%')").order("created_at desc")
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_activity
        @activity = Activity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def activity_params
        params[:activity]
    end
end
