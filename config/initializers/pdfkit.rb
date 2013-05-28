PDFKit.configure do |config|
    # if Rails.env == 'production'
    #     puts "production"
    #     config.wkhtmltopdf = "/home/ubuntu/.rvm/gems/ruby-1.9.3-p429/bin/wkhtmltopdf" #Path to your wkhtmltppdf installation directory
    #     #config.root_url = "http://0.0.0.0:3000" # Use only if your external hostname is unavailable on the server.
    # elsif Rails.env == 'development'
    #     puts "development"
    config.wkhtmltopdf = "/usr/bin/wkhtmltopdf"#"/home/vivek/.rvm/gems/ruby-1.9.3-p429/bin/wkhtmltopdf" #Path to your wkhtmltppdf installation directory
    config.root_url = "http://0.0.0.0:3000" # Use only if your external hostname is unavailable on the server.
    # end
end
