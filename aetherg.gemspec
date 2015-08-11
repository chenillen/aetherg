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
    "lib/aetherg/*.rb",
    "templates/*/*/*.*"
  ]
  s.require_paths = ["lib"]
  s.homepage    =
    'http://rubygems.org/gems/aetherg'
  s.license       = 'MIT'
end
