#require 'resque/tasks'
#require 'resque_scheduler/tasks'

namespace :resque do
    desc "Setup resque"
    task :setup => :environment do
        ENV['QUEUE'] = '*'
    end
end
