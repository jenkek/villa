require 'openteam/capistrano/recipes'

namespace :images do
  desc 'Upload specialities.csv to production'
  task :upload do
    transfer :up, "public/system", "#{shared_path}/system", :via =>:scp, :recursive =>:true
  end

  desc 'Download specialities.csv from production'
  task :download do
    transfer :down, "#{shared_path}/system", "public/system", :via =>:scp, :recursive =>:true
  end
end

set :shared_children, fetch(:shared_children) + %w[public/system]

set :default_stage, 'production'
