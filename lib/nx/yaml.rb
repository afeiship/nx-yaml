require "yaml"
require "erb"
require "ostruct"

# https://stackoverflow.com/questions/8954706/render-an-erb-template-with-values-from-a-hash

module Nx
  class ErbalT < OpenStruct
    def render(template)
      ERB.new(template).result(binding)
    end

    def self.render_from_hash(template, hash)
      ErbalT.new(hash).render(template)
    end
  end

  class Yaml
    def self.load(in_path, in_data = nil)
      raw_content = File.read(in_path)
      str = in_data.nil? ? raw_content : ErbalT::render_from_hash(raw_content, in_data)
      YAML::load str
    end
  end
end
