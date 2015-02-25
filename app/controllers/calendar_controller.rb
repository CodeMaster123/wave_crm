class CalendarController < ApplicationController
    filter_access_to :all

    def index
        @company = current_user.company
        @contacts = @company.contacts
    end
end
