Gem::Specification.new do |s|
  s.name        = 'aether'
  s.version     = '0.1.0'
  s.date        = '2015-08-10'
  s.summary     = "Aether is a generator of sinatra app."
  s.description = "Aether is a sinatra based App generator, let you quickly generate a sinatra app."
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
    "bin/aether",
    "lib/aether.rb"
  ]
  s.require_paths = ["lib"]
  s.homepage    =
    'http://rubygems.org/gems/aether'
  s.license       = 'MIT'
end
