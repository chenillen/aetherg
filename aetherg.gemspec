Gem::Specification.new do |s|
  s.name        = 'aetherg'
  s.version     = '0.5.0'
  s.date        = '2017-04-20'
  s.summary     = "Aetherg (Aether Generator) is a generator of sinatra app."
  s.description = "Aetherg (Aether Generator) is a sinatra based App generator. Light-weight for API service or full-stack Web apps"
  s.authors     = ["Allen Chan"]
  s.email       = 'chenillen@gmail.com'
  s.extra_rdoc_files = [
    "LICENSE",
    "README.md"
  ]
  s.files       = Dir['**/*'].keep_if { |file| File.file?(file) }
  s.require_paths = ["lib"]
  s.bindir = 'bin'
  s.executables = ['aetherg']
  s.add_runtime_dependency('thor', '~> 0.19')
  s.required_ruby_version = '>= 1.9.3'
  s.homepage    = 'https://github.com/chenillen/aetherg'
  s.license       = 'MIT'
end
