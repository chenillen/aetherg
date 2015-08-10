require 'logger'

# initialize log
Dir.mkdir('log') unless File.exist?('log')

class ::Logger; alias_method :write, :<<; end

case Aether::Application.env
when "production"
  logger = ::Logger.new("../log/production.log")
  logger.level = ::Logger::WARN
when "development"
  logger = ::Logger.new(STDOUT)
  logger.level = ::Logger::DEBUG
else
  logger = ::Logger.new("/dev/null")
end

# database connection
require File.expand_path("../connection", __FILE__)

# TODO setup public and assets folder

