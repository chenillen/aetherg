# requires
require 'rubygems'
require "bundler"

# require application
require File.expand_path("../application", __FILE__)


# Set up gems listed in the Gemfile.
Bundler.require(:default, Aether::Application.env)