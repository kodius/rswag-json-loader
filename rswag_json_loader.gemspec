# frozen_string_literal: true

require_relative "lib/rswag_json_loader/version"
$LOAD_PATH.push File.expand_path("lib", __dir__)

Gem::Specification.new do |spec|
  spec.name = "rswag_json_loader"
  spec.version = RswagJsonLoader::VERSION
  spec.authors = ["Matija Munjakovic"]
  spec.email = ["matija@kodius.com"]

  spec.summary = "Rswag JSON schema loader"
  spec.description = "Load JSON schemas into RSwag's Swagger/OpenAPI spec"
  spec.homepage = "https://github.com/kodius/rswag-json-loader"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = spec.homepage + "/releases"

  spec.files = Dir["{lib}/**/*"] + %w[Rakefile]

  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }

  spec.add_dependency "json_schemer", "~> 0.2.18"
  spec.add_dependency "rswag-specs"
end
