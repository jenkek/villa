Settings.read(Rails.root.join('config', 'settings.yml'))
Settings.resolve!

Rails.application.config.secret_token = Settings.try(:[], 'app').try(:[], 'secret')

Airbrake.configure do |config|
  config.api_key = Settings.try(:[], 'errors').try(:[], 'key')
  config.host    = Settings.try(:[], 'errors').try(:[], 'host')
  config.port    = 80
end if Rails.env.production?
