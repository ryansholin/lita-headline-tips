Gem::Specification.new do |spec|
  spec.name          = 'lita-headline-tips'
  spec.version       = '0.1.0'
  spec.authors       = ['Ryan Sholin']
  spec.email         = ['ryansholin@gmail.com']
  spec.description   = 'Headline tips, adapted from lita-yoda-quotes by Pierre Rambaud'
  spec.summary       = 'Tip about writing headlines, quickly and easily you can get.'
  spec.homepage      = 'https://github.com/ryansholin/lita-headline-tips'
  spec.license       = 'MIT'
  spec.metadata      = { 'lita_plugin_type' => 'handler' }

  spec.files         = `git ls-files`.split($RS)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'lita', '>= 4.4'

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'pry-byebug'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rack-test'
  spec.add_development_dependency 'rspec', '>= 3.0.0'
  spec.add_development_dependency 'simplecov'
  spec.add_development_dependency 'rubocop', '~>0.30'
end
