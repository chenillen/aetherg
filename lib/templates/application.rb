require File.expand_path('../boot', __FILE__)

module <%= @name.camelcase %>
  class Application < Sinatra::Base

    set :root, File.dirname(__FILE__)
    <%- unless @no_views -%>
    set :public_dir, File.expand_path('../public', __FILE__)
    <%- end -%>
    set :raise_errors, true
    set :app_file, __FILE__

    AUTOLOAD_PATHS = ["#{root}/app/*", "#{root}/lib"]

    def self.require_autoload_paths(paths)
      paths.each do |path|
        Dir[File.join(path, "*.rb")].each do |file|
          require file
        end
      end
    end

    def self.initialize!
      settings_file = File.expand_path('../config/settings.yml', __FILE__)

      if File.exist? settings_file
        YAML::load(open(settings_file))[self.environment.to_s]
      else
        raise Errno::ENOENT
      end
    end

  end
end

$app_settings ||= <%= @name.camelcase %>::Application.initialize!
require File.expand_path('../config/initializer', __FILE__)
<%= @name.camelcase %>::Application.require_autoload_paths(<%= @name.camelcase %>::Application::AUTOLOAD_PATHS)
