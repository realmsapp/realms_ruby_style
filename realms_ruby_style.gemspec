# frozen_string_literal: true

require_relative "lib/realms_ruby_style/version"

Gem::Specification.new do |spec|
  spec.name = "realms_ruby_style"
  spec.version = RealmsRubyStyle::VERSION
  spec.authors = ["Tony Schneider"]
  spec.email = ["tonywok@gmail.com"]

  spec.summary = "portable rubocop config"
  spec.homepage = "https://github.com/realmsapp/realms_ruby_style"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.1.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/realmsapp/realms_ruby_style"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rubocop"
  spec.add_dependency "rubocop-performance"
end
