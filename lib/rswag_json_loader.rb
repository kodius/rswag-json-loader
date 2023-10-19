require "json_schemer"
require "helpers/rswag_json_loader_config"
require "schema_loader"

module RswagJsonLoader
  extend RswagJsonLoaderConfig

  define_setting :schema_path, "./spec/requests/api/schemas/json/*.json"
  define_setting :openapi_path, "v1/openapi.json"

  class SchemaHandler
    def self.json_schemas
      schemas = {}

      Dir[RswagJsonLoader.schema_path].each do |json|
        file_name = File.basename(json, ".json")
        humanized = file_name.split("_").map(&:capitalize).join
        schemas[humanized] = Schemas::Loader.new(json).load
      end
      schemas
    end

    def self.setup!
      RSpec.configure do |config|
        config.swagger_docs[RswagJsonLoader.openapi_path][:components][:schemas].merge!(json_schemas)
      end
    end
  end
end
