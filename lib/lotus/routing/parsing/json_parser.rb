require 'rack/utils/okjson'

module Lotus
  module Routing
    module Parsing
      class JsonParser < Parser
        def mime_types
          ['application/json']
        end

        def parse(body)
          Rack::Utils::OkJson.decode(body)
        end
      end
    end
  end
end
