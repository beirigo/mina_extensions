# # Modules: Passenger
# Adds tasks for managing Passenger Workers.
#
# ## Usage example
#     require 'mina_extensions/passenger'
#     ...
#
#     task :deploy => :enviroment do
#       deploy do
#         invoke :'sidekiq:quiet'
#         invoke :'git:clone'
#         ...
#
#         to :launch do
#           ...
#           invoke :'passenger:restart'
#         end
#       end
#     end

require 'mina/bundler'
require 'mina/rails'


# ## Settings
# Any and all of these settings can be overriden in your `deploy.rb`.

set_default :passenger_file, "#{deploy_to}/tmp/restart.txt"

namespace :passenger do

  desc "Restarts Passenger"
  task :restart do
  	queue "touch #{passenger_file}"
  end


end