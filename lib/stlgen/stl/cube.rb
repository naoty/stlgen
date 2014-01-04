require "pathname"
require "erb"

module STLgen
  module STL
    class Cube < Base
      def initialize(attrs = {})
        @width = attrs[:width] || 1
        @length = attrs[:length] || 1
        @height = attrs[:height] || 1
        super(attrs)
      end

      def generate
        template_path = Pathname.new("lib/stlgen/ascii_templates/cube.erb")
        template = ERB.new(template_path.read)
        template.result(binding)
      end
    end
  end
end
