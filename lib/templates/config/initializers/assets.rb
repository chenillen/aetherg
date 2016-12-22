class <%= @name.camelcase %>::Application

  register Sinatra::AssetPack

  # configuration with compass
  set :sass, Compass.sass_engine_options
  set :sass, { :load_paths => sass[:load_paths] + [ "#{root}/app/assets/stylesheets" ] }
  set :scss, sass

  # Config assets paths
  # with sass, uglify support
  # Also supports coffeescript
  # assets do
  #   serve '/js',    from: 'app/assets/javascripts'
  #   serve '/css',   from: 'app/assets/stylesheets'
  #   serve '/fonts', from: 'app/assets/fonts'
  #   serve '/images', from: 'app/assets/images'
  #
  #   js :application, [
  #     '/js/jquery.js',
  #     '/js/util.js',
  #     '/js/*.js'
  #   ]
  #
  #   css :application, [
  #     '/css/application.css'
  #   ]
  #
  #   js_compression :uglify
  #   css_compression :sass
  #
  #   expires 86400*365, :public
  # end

end
