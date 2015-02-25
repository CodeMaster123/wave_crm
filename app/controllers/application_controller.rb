class ApplicationController < ActionController::Base
    protect_from_forgery

    layout :check_controller

    before_filter :authenticate_user!

    before_filter {|c|Authorization.current_user = c.current_user}

    def check_controller
        if devise_controller?
            "login"
        elsif action_name == 'search'
            false
        elsif action_name == 'invoice'
            false
        else
            "application"
        end
    end

    protected
    def fetch_company
      @company = Company.includes(:users).find(current_user.company_id)
    end
end
