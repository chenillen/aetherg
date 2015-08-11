class <%= @name.camelcase %>::Application
  <% unless @no_database -%>
  default_dbconfig_file = File.expand_path('../../../config/database.yml', __FILE__)
  <% if @database != 'mongo' || @database != 'mongodb' -%>
  # ActiveRecord connection
  require 'active_record'
  if File.exist? default_dbconfig_file
    ActiveRecord::Base.configurations = YAML::load(open(default_dbconfig_file))
  else
    raise Errno::ENOENT
  end
  ActiveRecord::Base.establish_connection environment
  <% else -%>
  # MongoID connections
  Mongoid.load!(default_dbconfig_file, environment)
  <% end -%>
  <% end -%>
end
