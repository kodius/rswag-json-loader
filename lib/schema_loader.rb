require "json"

module Schemas
  class Loader
    def initialize(filename)
      @filename = filename
    end

    def load
      JSON.parse(File.read(@filename))
    end
  end
end
