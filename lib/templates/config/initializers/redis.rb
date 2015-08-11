class <%= @name.camelcase %>::Application
  # Redis Configuration
  default_redis_file = File.expand_path('../../../config/redis.yml', __FILE__)
  if File.exist? default_redis_file
    redis_settings = YAML::load(open(default_redis_file))
    $REDIS = Redis.new(redis_settings[environment])
  else
    raise Errno::ENOENT
  end
end
