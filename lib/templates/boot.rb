require 'rubygems'
require 'bundler/setup'
# Set up gems listed in the Gemfile.
Bundler.require(:default, <%= @name.camelcase %>::Application.environment)

require 'sinatra/base'
require 'yaml'
