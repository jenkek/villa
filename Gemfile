source 'https://rubygems.org'

group :assets do
  gem 'coffee-rails', '~> 3.2.1'
  gem 'compass-rails'
  gem 'jquery-rails'
  gem 'sass-rails',   '~> 3.2.3'
  gem 'turbo-sprockets-rails3'
  gem 'uglifier', '>= 1.0.3'
end

group :default do
  gem 'airbrake'
  gem 'rails', '~> 3.2.16'
  gem 'pg'
  gem 'configliere'

  # Refinery CMS
  gem 'refinerycms', '~> 2.0.0'
  gem 'refinerycms-i18n', '~> 2.0.0'
  gem 'refinerycms-inquiries', '~> 2.0.0'
  gem 'refinerycms-page-images', '~> 2.0.0'

  # Refinery CMS dependencies
  gem 'globalize3', '0.3.0'
end

group :development do
  gem 'brakeman', :require => false
  gem 'capistrano-db-tasks', :git => 'git://github.com/sgruhier/capistrano-db-tasks', :ref => '396cbbf', :require => false
  gem 'capistrano-unicorn', '~> 0.1.10', :require => false
  gem 'openteam-capistrano', :require => false
end

group :production do
  gem 'unicorn'
end

group :test do
  gem 'sqlite3'
end
