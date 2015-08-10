require 'rubygems'
require 'bundler/setup'

require 'sinatra/base'
require 'yaml'


# Set up gems listed in the Gemfile.
Bundler.require(:default, <%= @name.camelcase %>::Application.environment)
