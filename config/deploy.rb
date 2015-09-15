require 'openteam/capistrano/recipes'

namespace :images do
  desc 'Download public/system, tmp/cache & tmp/index from production'
  task :download do
    transfer :down, "#{shared_path}/system",  'public', :via =>:scp, :recursive =>:true
    transfer :down, "#{shared_path}/cache",   'tmp',    :via =>:scp, :recursive =>:true
    transfer :down, "#{shared_path}/index",   'tmp',    :via =>:scp, :recursive =>:true
  end
end

set :shared_children, fetch(:shared_children) + %w[public/system tmp/cache tmp/index]

set :default_stage, 'production'
