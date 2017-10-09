# coding: utf-8
lib = File.expand_path('../lib', __FILE__)

$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ring_buffer/version'

Gem::Specification.new do |spec|
  spec.name          = 'ring_buffer'
  spec.version       = RingBuffer::VERSION
  spec.authors       = ['Étienne Michon']
  spec.email         = ['etienne@scalingo.com']

  spec.summary       = 'RingBuffer provides a simple ring buffer implementation in Ruby'
  spec.description   = 'RingBuffer provides a simple ring buffer implementation in Ruby. A ring
                        buffer is a queue with a maximum capacity. When the capacity exceeds, the
                        first element inserted is removed.'

  spec.homepage      = 'https://github.com/EtienneM/ring_buffer'
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'https://rubygems.org'
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

  spec.add_development_dependency 'bundler', '~> 1.15'
  spec.add_development_dependency 'rake', '~> 12.1'
  spec.add_development_dependency 'rspec', '~> 3.6'
end
