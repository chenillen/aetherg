class <%= @name.camelcase %>::Application
  <%- unless @no_views -%>
  before do
    content_type 'text/html'
  end
  <%- else -%>
  before do
    content_type 'application/vnd.api+json'
  end
  <%- end -%>

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

    <%- unless @no_views -%>
    # set CSRF
    use Rack::Session::Cookie, key: '_<%= @name %>.session', secret: $app_settings['csrf_token']
    use Rack::Csrf, :raise => true
    <%- end %>

    <%- unless @no_views -%>
    # set layouts
    set :erb, :layout => :'layouts/application', :escape_html => true
    <%- end -%>
  end

end
