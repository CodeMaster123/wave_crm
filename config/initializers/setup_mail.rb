ActionMailer::Base.smtp_settings = {
    :address              => "smtp.gmail.com",
    :port                 => 587,
    :domain               => "gmail.com",
    :user_name            => "vijaygaikwad1988@gmail.com",
    :password             => "8055508545vijay",
    :authentication       => "login",
    :enable_starttls_auto => true
}
# require 'development_mail_interceptor' #add this line
# ActionMailer::Base.register_interceptor(DevelopmentMailInterceptor) if  Rails.env.development?