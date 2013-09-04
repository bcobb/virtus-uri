require 'uri'
require 'virtus'

module Virtus
  class URI < Attribute::Object
    primitive ::URI

    def coerce(value)
      URI(value)
    end
  end
end
