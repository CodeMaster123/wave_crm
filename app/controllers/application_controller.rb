class ApplicationController < ActionController::Base
    #protect_from_forgery

    layout :check_controller

    before_filter :set_headers

    #before_filter :authenticate_user!

    before_filter {|c|Authorization.current_user = c.current_user}

    def set_headers
        response.headers['Access-Control-Allow-Origin'] = '*'
        response.headers['Access-Control-Allow-Methods'] = 'POST, PUT, DELETE, GET'
        response.headers['Access-Control-Request-Method'] = '*'
        response.headers['Access-Control-Allow-Headers'] = 'Origin, X-Requested-With, Content-Type, Accept, Authorization'
        response.headers['Accept-Encoding'] = 'Origin, X-Requested-With, Content-Type, Accept, Authorization'
    end

    def handle_options_request
      head(:ok)
    end

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

    #Remove it after implementing ember authentication
    def current_user
      return User.first
    end

    protected
    def fetch_company
      current_user = User.first
      @company = Company.includes(:users).find(current_user.company_id)
    end
end
