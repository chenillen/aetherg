Gem::Specification.new do |s|
  s.name        = 'aetherg'
  s.version     = '0.1.0'
  s.date        = '2015-08-10'
  s.summary     = "Aetherg (Aether Generator) is aether generator of sinatra app."
  s.description = "Aetherg (Aether Generator) is a sinatra based App generator, let you quickly generate a sinatra app."
  s.authors     = ["Allen Chan"]
  s.email       = 'chenillen@gmail.com'
  s.extra_rdoc_files = [
    "LICENSE",
    "README.md"
  ]
  s.files       = [
    "Gemfile",
    "Gemfile.lock",
    "LICENSE",
    "README.md",
    "VERSION",
    "bin/aetherg",
    "lib/aetherg.rb",
    "lib/aetherg",
    "lib/aetherg/aetherg.rb",
    "lib/aetherg/string.rb",
    "lib/aetherg.rb",
    "lib/templates",
    "lib/templates/app",
    "lib/templates/app/controllers",
    "lib/templates/app/controllers/routes.rb",
    "lib/templates/app/helpers",
    "lib/templates/app/models",
    "lib/templates/application.rb",
    "lib/templates/boot.rb",
    "lib/templates/config",
    "lib/templates/config/database.yml",
    "lib/templates/config/initializer.rb",
    "lib/templates/config/initializers",
    "lib/templates/config/initializers/connection.rb",
    "lib/templates/config/initializers/environment.rb",
    "lib/templates/config/initializers/helpers.rb",
    "lib/templates/config/initializers/redis.rb",
    "lib/templates/config/puma.rb",
    "lib/templates/config/redis.yml",
    "lib/templates/config/settings.yml",
    "lib/templates/config.ru",
    "lib/templates/Gemfile",
    "lib/templates/Guardfile",
    "lib/templates/Rakefile",
    "lib/templates/README.md"
  ]
  s.require_paths = ["lib"]
  s.bindir = 'bin'
  s.homepage    =
    'http://rubygems.org/gems/aetherg'
  s.license       = 'MIT'
end
