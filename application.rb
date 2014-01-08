require 'sinatra/base'

module Aether
  class Application < Sinatra::Base
    def self.root(path = nil)
      @_root ||= File.expand_path(File.dirname(__FILE__))
      path ? File.join(@_root, path.to_s) : @_root
    end

    def self.env
      @_env ||= ENV['RACK_ENV'] || 'development'
    end
    
    # Initialize the application
    def self.initialize!
    end
  end
end

require './config/initializers'


# Preload application classes
Dir['./app/**/*.rb'].each {|f| require f}

