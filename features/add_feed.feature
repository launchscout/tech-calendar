Feature: Add a Feed
  So that I can add feed to the list

  Scenario: Adding a feed
    Given I am on the feeds page
    When I fill in "Feed URI" with "http://www.meetup.com/Cincinnati-Web-Tech-Drinkup/events/ical/Cincinnati+Web-Tech+Drinkup/"
    And I click "Add" 
    Then I should see "Cincinnati Web/Tech Drinkup"
