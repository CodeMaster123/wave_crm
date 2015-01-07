require 'resque'
require 'resque/tasks'
require 'resque/scheduler/tasks'

namespace :resque do
    task :setup do
        Resque.redis = 'localhost:6379'
        Resque::Scheduler.dynamic = true
    end
end
