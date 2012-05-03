Feature: Browse feeds
  So that I can browse through feeds

  Scenario: Browsing a list of feeds
    Given a feed named "Cincinnati Web/Tech Drinkup"
    And a feed named "The Cincinnati Drupal Meetup Group"
    When I am on the feeds page
    Then I should see "Cincinnati Web/Tech Drinkup"
    And I should see "The Cincinnati Drupal Meetup Group"

