require 'spec_helper'

describe "FeedClient" do

  context "it fetches a raw feed" do
    Given(:feed_uri) { "http://www.meetup.com/Cincinnati-Web-Tech-Drinkup/events/ical/Cincinnati+Web-Tech+Drinkup/" }
    Given(:feed_content) { Net::HTTP.get(URI(feed_uri)) }
    When(:feed) { FeedClient.new(feed_uri) }
    Then do 
      VCR.use_cassette('web_tech_drinkup_ical') do
        feed.raw.should == feed_content
      end
    end
  end

  context "it parses a name" do
    Given(:feed_uri) { "http://www.meetup.com/Cincinnati-Web-Tech-Drinkup/events/ical/Cincinnati+Web-Tech+Drinkup/" }
    When(:feed) { FeedClient.new(feed_uri) }
    Then do 
      VCR.use_cassette('web_tech_drinkup_ical') do
        feed.name.should == "Cincinnati Web/Tech Drinkup"
      end
    end
  end
end
