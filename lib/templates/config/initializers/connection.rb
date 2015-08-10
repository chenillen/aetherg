<% unless @no_database -%>
default_dbconfig_file = File.expand_path('../database.yml', __FILE__)
<% if @database != 'mongo' || @database != 'mongodb' -%>
# ActiveRecord connection
if File.exist? default_dbconfig_file
  ActiveRecord::Base.configurations = YAML::load(open(default_dbconfig_file))
else
  raise Errno::ENOENT
end
ActiveRecord::Base.establish_connection ENV['RACK_ENV']
<% else -%>
# MongoID connections
Mongoid.load!(default_dbconfig_file, ENV['RACK_ENV'])
<% end -%>
<% end -%>
