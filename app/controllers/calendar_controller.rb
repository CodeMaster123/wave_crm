class CalendarController < ApplicationController
    before_filter :authenticate_user!
    filter_access_to :all
    def index

    end

end
