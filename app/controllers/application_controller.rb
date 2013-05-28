class ApplicationController < ActionController::Base
    protect_from_forgery
    layout :check_controller

    before_filter {|c|Authorization.current_user = c.current_user}

    def check_controller
        if devise_controller?
            "login"
        elsif action_name == 'invoice'
            false
        else
            "application"
        end
    end
end
