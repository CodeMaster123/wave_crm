set :stage, :production
set :application, 'c4c'
set :scm, :git
set :repo_url, 'git@github.com:CodeMaster123/wave_crm.git'
set :branch, "master"
set :deploy_via, :remote_cache

server '54.173.83.222', user: 'ubuntu', roles: %w{web app db resque_worker}
set :ssh_options, { :forward_agent => true }
set :use_sudo, false
set :rails_env,"production"
set :deploy_to, '/home/ubuntu/apps/wave_crm'

set :pty, true
set :ssh_options, { :forward_agent => true }

set :rvm_type, :auto
set :rvm_ruby_version, '2.1.0'
set :deploy_via, :remote_cache
#set :linked_files, %w{config/database.yml}
set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system public/uploads}

set :bundle_gemfile, -> { release_path.join('Gemfile') }
set :bundle_dir, -> { shared_path.join('vendor/bundle') }
set :bundle_flags, '--deployment'
set :bundle_without, %w{development test}.join(' ')
set :bundle_binstubs, -> { shared_path.join('bin') }
set :bundle_roles, :all
set :whenever_identifier, ->{ "#{fetch(:application)}_#{fetch(:stage)}" }
