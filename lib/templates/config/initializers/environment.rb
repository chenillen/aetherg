class <%= @name.camelcase %>::Application
  before do
    content_type 'text/html'
  end

  <%- unless @no_views -%>
  set :views, Proc.new { File.join(root, "/app/views") }
  <%- end -%>

  configure do
    enable :logging
    <%- unless @no_views -%>
    enable :static_cache_control
    <%- end -%>
    file = File.new("#{root}/log/#{environment.to_s}.log", 'a+')

    <%- unless @no_database || @database == 'mongodb' || @database == 'mongo' -%>
    ActiveRecord::Base.logger = Logger.new(file)
    <%- end -%>

    file.sync = true
    use Rack::CommonLogger, file

    # set CSRF

    <%- unless @no_views -%>
    use Rack::Session::Cookie, key: _<%= @name %>.session, secret: $app_settings["csrf_token"]
    use Rack::Csrf, :raise => true
    <%- end %>

    <%- unless @no_views -%>
    # set layouts
    set :erb, :layout => :'layouts/application', :escape_html => true
    <%- end -%>
  end

end
