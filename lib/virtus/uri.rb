require 'uri'
require 'virtus'

class Uri < Virtus::Attribute

  def coerce(value)
    URI(value) if value
  end

end
