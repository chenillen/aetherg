source "http://ruby.taobao.org" 
# source "https://rubygems.org" # Use rubygems if you're not in China

gem 'sinatra', '~> 1.4.4'

# Database connection gem
gem 'mysql2'
# gem 'pg' # if using postgresql 

# ORM
gem 'activerecord', '~> 4.0.0'
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