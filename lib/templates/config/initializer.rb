<%- unless @no_database -%>
require File.expand_path('../initializers/connection', __FILE__)
<%- end -%>
<%- if @redis -%>
require File.expand_path('../initializers/redis', __FILE__)
<%- end -%>
require File.expand_path('../initializers/environment', __FILE__)
require File.expand_path('../initializers/helpers', __FILE__)
