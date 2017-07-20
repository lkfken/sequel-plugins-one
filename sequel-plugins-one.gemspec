# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sequel/plugins/one/version'

Gem::Specification.new do |spec|
  spec.name          = "sequel-plugins-one"
  spec.version       = Sequel::Plugins::One::VERSION
  spec.authors       = ["Kenneth Leung"]
  spec.email         = ["kenneth@leungs.us"]

  spec.summary       = %q{This plugin return 1 row if the dataset contains only 1 row; raise an exception otherwise.}
  spec.description   = %q{This plugin return 1 row if the dataset contains only 1 row; raise an exception otherwise.}
  spec.homepage      = "https://github.com/lkfken/sequel-plugins-one"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'https://github.com/lkfken/sequel-plugins-one'
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_dependency 'sequel'
end
