require 'rubygems'
require 'bundler/setup'
# Set up gems listed in the Gemfile.
Bundler.require(:default, ENV['RACK_ENV'] || 'development')

require 'sinatra/base'
require 'yaml'
