class ActivitiesController < ApplicationController
    before_filter :authenticate_user!
    filter_access_to :all

    def index
        @activity = PublicActivity::Activity.order("created_at desc")
    end

    def show
    end

    def new
        @activity = Activity.new
    end

    def edit
    end

    def create
        @activity = Activity.new(activity_params)

        respond_to do |format|
            if @activity.save
                format.html { redirect_to @activity, notice: 'Activity was successfully created.' }
                format.json { render action: 'show', status: :created, location: @activity }
            else
                format.html { render action: 'new' }
                format.json { render json: @activity.errors, status: :unprocessable_entity }
            end
        end
    end

    def update
        respond_to do |format|
            if @activity.update(activity_params)
                format.html { redirect_to @activity, notice: 'Activity was successfully updated.' }
                format.json { head :no_content }
            else
                format.html { render action: 'edit' }
                format.json { render json: @activity.errors, status: :unprocessable_entity }
            end
        end
    end

    def destroy
        @activity.destroy
        respond_to do |format|
            format.html { redirect_to activities_url }
            format.json { head :no_content }
        end
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
