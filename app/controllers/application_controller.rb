class ApplicationController < ActionController::Base
  protect_from_forgery



  layout :check_controller

  def check_controller
    if devise_controller?
      "login"
      puts "vivek"
    else
      puts "varade"
      "application"
    end
  end

end
