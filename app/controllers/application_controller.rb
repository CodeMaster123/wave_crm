class ApplicationController < ActionController::Base
    protect_from_forgery
    layout :check_controller

    before_filter {|c|Authorization.current_user = c.current_user}

    def check_controller
        if devise_controller?
            "login"
        else
            "application"
        end
    end
end
