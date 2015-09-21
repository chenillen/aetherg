class <%= @name.camelcase %>::Application
  before do
    content_type 'text/html'
  end

  set :sessions, true
  set :views, Proc.new { File.join(root, "/app/views") }

  configure do
    enable :logging
    enable :static_cache_control
    file = File.new("#{root}/log/#{environment.to_s}.log", 'a+')

    <%- unless @no_database || @database == 'mongodb' || @database == 'mongo' -%>
    ActiveRecord::Base.logger = Logger.new(file)
    <%- end -%>

    file.sync = true
    use Rack::CommonLogger, file

    # set CSRF
    # use Rack::Session::Cookie, secret: $app_settings["csrf_token"]
    # use Rack::Csrf, :raise => true

    # set layouts
    set :erb, :layout => :'layouts/application', :escape_html => true
  end

end
