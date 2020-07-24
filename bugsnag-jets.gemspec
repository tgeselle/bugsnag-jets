require_relative 'lib/bugsnag_jets/version'

Gem::Specification.new do |spec|
  spec.name          = "bugsnag-jets"
  spec.version       = BugsnagJets::VERSION
  spec.authors       = ["Thomas Geselle"]
  spec.email         = ["thomas@geselle.fr"]

  spec.summary       = %q{Bugsnag exception report support for Jets}
  spec.homepage      = "https://github.com/tgeselle/bugsnag-jets"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.5.0")

  spec.metadata["homepage_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "bugsnag"
end
