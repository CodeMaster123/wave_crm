Resque::Server.use(Rack::Auth::Basic) do |username, password|
    password == 'admin123'
end
