class <%= @name.camelcase %>::Application
  register Sprockets::Helpers

  set :sprockets, Sprockets::Environment.new
  set :assets_prefix, '/assets'
  set :digest_assets, true

  configure do
    # append assets paths
    sprockets.append_path "app/assets/stylesheets"
    sprockets.append_path "app/assets/javascripts"
    sprockets.append_path "app/assets/images"
    # Other assets path, you can add below
    # sprockets.append_path "app/assets/fonts"

    # compress assets
    sprockets.js_compressor  = :uglify
    sprockets.css_compressor = :scss

    # Configure Sprockets::Helpers (if necessary)
    Sprockets::Helpers.configure do |config|
      config.environment = sprockets
      config.prefix      = assets_prefix
      config.digest      = digest_assets
      config.public_path = public_folder

      # Force to debug mode in development mode
      # Debug mode automatically sets
      # expand = true, digest = false, manifest = false
      config.debug       = true if development?
    end
  end

  helpers do
  include Sprockets::Helpers

    # Alternative method for telling Sprockets::Helpers which
    # Sprockets environment to use.
    # def assets_environment
    #   settings.sprockets
    # end

    # Use:
    # stylesheet_path 'application'
    # javascript_path 'application'
    # as style and js path generator
  end

  # get assets
  get "/assets/*" do
    # if you changed assets_prefix, you need change it here
    env["PATH_INFO"].sub!("/assets", "")
    settings.sprockets.call(env)
  end

end
