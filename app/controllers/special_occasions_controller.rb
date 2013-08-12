class SpecialOccasionsController < ApplicationController
    before_filter :authenticate_user!
    filter_access_to :all
    respond_to :html, :json

    def index
        @special_occasions = SpecialOccasion.all

        respond_with @special_occasions
    end

    def show
        @special_occasion = SpecialOccasion.find(params[:id])

        respond_with @special_occasion
    end

    def new
        @special_occasion = SpecialOccasion.new

        respond_with @special_occasion
    end

    def edit
        @special_occasion = SpecialOccasion.find(params[:id])
    end

    def create
        @special_occasion = SpecialOccasion.new(params[:special_occasion])
        @special_occasion.save

        respond_with @special_occasion, :location => special_occasions_path
    end

    def update
        @special_occasion = SpecialOccasion.find(params[:id])
        @special_occasion.update_attributes(params[:special_occasion])

        respond_with @special_occasion, :location => special_occasions_path
    end

    def destroy
        @special_occasion = SpecialOccasion.find(params[:id])
        @special_occasion.destroy

        respond_with @special_occasion
    end
end
