require 'active_record'

ActiveRecord::Base.establish_connection YAML::load(File.open(File.expand_path("../database.yml", __FILE__)))[Aether::Application.env]

ActiveSupport.on_load(:active_record) do
  self.include_root_in_json = false
  self.default_timezone = :local
  self.time_zone_aware_attributes = false
  self.logger = logger
end