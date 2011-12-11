Feature: See Next Activities
In order to learn new Activities
As a User
I want to see a shortlist of next suggested Activities

Scenario: Discover my first Activities
  Given I never closed an Activity
  When I go to the home page
  Then I should see "Gravity Pull"
  
Scenario: Closed one Activity
  Given I closed Gravity Pull
  When I go to the home page
  Then I should not see "Gravity Pull"
  And I should see "Sleeper"

Scenario: Closed a Few Activities
  Given I closed Man on Trapeze
  And I closed Spirit Bomb
  When I go to the home page
  Then I should see "Double or Nothing"
  And I should see "Superman"
