<%- unless @no_views -%>
require File.expand_path('../initializers/assets', __FILE__)
<%- end %>
<%- unless @no_database -%>
require File.expand_path('../initializers/connection', __FILE__)
<%- end -%>
require File.expand_path('../initializers/environment', __FILE__)
<%- if @redis -%>
require File.expand_path('../initializers/redis', __FILE__)
<%- end -%>
