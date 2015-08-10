# Redis Configuration
redis_settings = File.expand_path('../config/database.yml', __FILE__)
REDIS = Redis.new(redis_settings[ENV['RACK_ENV']])
