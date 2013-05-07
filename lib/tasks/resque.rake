require 'resque/tasks'
require 'resque_scheduler/tasks'

namespace :resque do
    desc "Setup resque"
    task :setup => :environment do
     #   require 'resque'
     #   require 'resque_scheduler'
     #   require 'resque/scheduler'

     #   Resque::Scheduler.dynamic = true

     #   Resque.schedule = YAML.load_file('your_resque_schedule.yml')
    end
end
