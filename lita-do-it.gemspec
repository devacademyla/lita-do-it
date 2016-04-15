Gem::Specification.new do |spec|
  spec.name          = 'lita-do-it'
  spec.version       = '0.1.0'
  spec.authors       = ['Daniel Gallegos']
  spec.email         = ['daniel@tacowolf.net']
  spec.description   = 'A Lita plugin for motivating your team.'
  spec.summary       = 'Motivate your team to DO IT.'
  spec.homepage      = 'https://devacademy.la'
  spec.license       = 'MIT'
  spec.metadata      = { 'lita_plugin_type' => 'handler' }

  spec.files         = `git ls-files`.split($INPUT_RECORD_SEPARATOR)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'lita', '>= 4.7'

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'pry-byebug'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rack-test'
  spec.add_development_dependency 'rspec', '>= 3.0.0'
  spec.add_development_dependency 'simplecov'
end
