require 'spec_helper'

describe Feed do
  context "is named" do
    Given(:name) { "Cincinnati Web/Tech Drinkup" }
    Given(:feed) { Feed.new( :name => name)}
    Then { feed.name.should == name }
  end
end
