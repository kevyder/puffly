# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'puffly/version'

Gem::Specification.new do |spec|
  spec.name          = 'puffly'
  spec.version       = Puffly::VERSION
  spec.authors       = ["Kevin Rodr\u00EDguez"]
  spec.email         = ['kyrodriguez97@gmail.com']

  spec.summary       = 'Cute flash messages for your ruby on rails application.'
  spec.description   = 'Cute flash messages for your ruby on rails application.'
  spec.homepage      = 'https://github.com/kevyder/puffly'
  spec.license       = 'MIT'

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'https://rubygems.pkg.github.com/kevyder'
  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
      'public gem pushes.'
  end

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  # development dependencies
  spec.add_development_dependency 'bundler', '~> 1.13'
  spec.add_development_dependency 'coffee-rails', '~> 4.2'
  spec.add_development_dependency 'rails', '~> 4.0'
  spec.add_development_dependency 'rake', '~> 12.3'
  spec.add_development_dependency 'sass', '~> 3.4'
end
