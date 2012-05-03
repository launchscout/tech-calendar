class FeedsController < ApplicationController
  def index
    feed = Feed.new("Cincinnati Web/Tech Drinkup")
    another = Feed.new("The Cincinnati Drupal Meetup Group")
    @feeds = [feed,another]
  end
end
