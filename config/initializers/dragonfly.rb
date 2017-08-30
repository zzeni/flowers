require 'dragonfly'

# Configure
Dragonfly.app.configure do
  plugin :imagemagick

  secret "9898f0322859eb56c0a6d2a7b62fef70ad3db1cda941b97d939eaa7c6fbeb8d5"

  url_format "/media/:job/:name"

  datastore :file,
    root_path: Rails.root.join('public/system/dragonfly', Rails.env),
    server_root: Rails.root.join('public')
end

# Logger
Dragonfly.logger = Rails.logger

# Mount as middleware
Rails.application.middleware.use Dragonfly::Middleware

# Add model functionality
if defined?(ActiveRecord::Base)
  ActiveRecord::Base.extend Dragonfly::Model
  ActiveRecord::Base.extend Dragonfly::Model::Validations
end
