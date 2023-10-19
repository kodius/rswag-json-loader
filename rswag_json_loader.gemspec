# frozen_string_literal: true

require_relative "lib/rswag_json_loader/version"

Gem::Specification.new do |spec|
  spec.name = "rswag_json_loader"
  spec.version = RswagJsonLoader::VERSION
  spec.authors = ["Matija Munjakovic"]
  spec.email = ["matija@kodius.com"]

  spec.summary = "Rswag JSON schema loader"
  spec.description = "Load JSON schemas into RSwag's Swagger/OpenAPI spec"
  spec.homepage = "https://github.com/kodius/rswag_json_loader"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = spec.homepage + "/releases"

  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "json_schemer", "~> 0.2.18"
  spec.add_dependency "rswag-specs", "~> 2.6.0"
end
