source "https://rubygems.org"

gem 'sinatra'
gem 'http_router'

# Database connection gem
gem 'mysql2'
# gem 'pg' # if using postgresql 

# ORM
gem 'active_record', '~> 4.0.0'
# gem 'mongoid'

group :development do
  # Development gems
  # gem 'ruby-debug19'
end

group :development, :test do
  gem 'rspec'
  gem 'guard-rspec'
  gem 'guard-livereload'
  gem 'terminal-notifier-guard'
  # gem 'database_cleaner'
end

group :production do
  # web app servers
  # gem 'unicorn'
  gem 'rainbows'
  # gem 'puma'
end