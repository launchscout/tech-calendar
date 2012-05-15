class FeedClient

  require 'net/http'

  attr_accessor :uri
 
  def initialize(uri)
    @uri = uri
  end

  def raw 
    Net::HTTP.get(URI(uri))
  end

  def ical
    RiCal.parse_string(raw)
  end

  def name
    ical.first.events.first.summary
  end

end
