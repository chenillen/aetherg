Gem::Specification.new do |s|
  s.name        = 'aetherg'
  s.version     = '0.3.1'
  s.date        = '2016-12-22'
  s.summary     = "Aetherg (Aether Generator) is a generator of sinatra app."
  s.description = "Aetherg (Aether Generator) is a sinatra based App generator. Light-weight for API service or full-stack Web apps"
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
    "lib/aetherg/version.rb",
    "lib/aetherg.rb",
    "lib/templates",
    "lib/templates/app",
    "lib/templates/app/routes",
    "lib/templates/app/routes/welcome.rb",
    "lib/templates/app/helpers",
    "lib/templates/app/models",
    "lib/templates/application.rb",
    "lib/templates/boot.rb",
    "lib/templates/config",
    "lib/templates/config/database.yml",
    "lib/templates/config/initializer.rb",
    "lib/templates/config/initializers",
    "lib/templates/config/initializers/assets.rb",
    "lib/templates/config/initializers/connection.rb",
    "lib/templates/config/initializers/environment.rb",
    "lib/templates/config/initializers/redis.rb",
    "lib/templates/config/puma.rb",
    "lib/templates/config/redis.yml",
    "lib/templates/config/settings.yml",
    "lib/templates/config.ru",
    "lib/templates/Gemfile",
    "lib/templates/gitignore",
    "lib/templates/Rakefile",
    "lib/templates/README.md"
  ]
  s.require_paths = ["lib"]
  s.bindir = 'bin'
  s.executables = ['aetherg']
  s.add_runtime_dependency('thor', '~> 0.19')
  s.required_ruby_version = '>= 1.9.3'
  s.homepage    =
  'https://github.com/chenillen/aetherg'
  s.license       = 'MIT'
end
