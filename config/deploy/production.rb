set :application, 'apps_rdev_production'
set :stage, :production
set :rails_env, :production
set :deploy_to, '/home/deploy/apps_rdev_production'

server '104.248.98.23', user: 'deploy', roles: %w{web app db job}