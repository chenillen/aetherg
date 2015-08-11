module Aetherg
  class Generator < Thor::Group
    include Thor::Actions

    desc "Create a new sinatra application with Aether"
    argument :name, :type => :string, :desc => "What's the name of your application"
    class_option :database, :aliases => "-d", :default => "mysql", :desc => "The type of database to use, sqlite, mysql, postgresql supported"
    class_option :no_database, :type => :boolean, :desc => "Exclude all database configuration files"
    class_option :redis, :type => :boolean, :desc => "Include Redis configuration"

    # Creates instance variables from options passed to Aether

    def setup
      @name = @app_path = name.filename
      options.each do |key, value|
        instance_variable_set "@#{key.to_s}".to_sym, value
      end
    end

    def self.source_root
      File.expand_path(File.join(File.dirname(__FILE__), "..", "templates"))
    end

    # Create empty directories
    def create_empty_directories
      %w{app/assets/images app/assets/javascripts app/assets/stylesheets app/models app/routes app/views config/initializers db/migrate lib log tmp public}.each do |dir|
        empty_directory File.join(@app_path, dir)
      end
    end

     def create_app
       template "application.rb", File.join(@app_path, "application.rb")
     end

     def create_config_with_boot
       template "config.ru", File.join(@app_path, "config.ru")
       template "boot.rb", File.join(@app_path, "boot.rb")
     end

     def create_gemfile
       template "Gemfile", File.join(@app_path, "Gemfile")
     end

     def create_rakefile
       template "Rakefile", File.join(@app_path, "Rakefile")
     end

     def create_readme
       template "README.md", File.join(@app_path, "README.md")
     end

     def create_server_config
       copy_file "config/puma.rb", File.join(@app_path, "config/puma.example.rb")
     end
     #
     def create_db_config
       template("config/database.yml", File.join(@app_path, "config/database.yml")) unless @no_database
     end

     def create_settings_config
       copy_file "config/settings.yml", File.join(@app_path, "config/settings.yml")
     end

     def create_initializers
       template("config/initializers/connection.rb", File.join(@app_path, "config/initializers/connection.rb")) unless @no_database
       template("config/initializers/helpers.rb", File.join(@app_path, "config/initializers/helpers.rb"))
       template("config/initializers/environment.rb", File.join(@app_path, "config/initializers/environment.rb"))
       template("config/initializer.rb", File.join(@app_path, "config/initializer.rb"))
     end

     def create_redis_config_and_initializer
       if @redis
         copy_file("config/redis.yml", File.join(@app_path, "config/redis.yml"))
         template("config/initializers/redis.rb", File.join(@app_path, "config/initializers/redis.rb"))
       end
     end

     def create_gitkeep
       create_file File.join(@app_path, "app", "assets", "images", ".keep")
       create_file File.join(@app_path, "app", "assets", "stylesheets", ".keep")
       create_file File.join(@app_path, "app", "assets", "javascripts", ".keep")
       create_file File.join(@app_path, "app", "models", ".keep")
       create_file File.join(@app_path, "app", "routes", ".keep")
       create_file File.join(@app_path, "app", "views", ".keep")
       create_file File.join(@app_path, "lib", ".keep")
       create_file File.join(@app_path, "db", "migrate", ".keep")
       create_file File.join(@app_path, "public", ".keep")
     end
  end
end
